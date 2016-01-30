local win = am.window{
	title = "hi",
	width = 400,
	height = 300,
	clear_color = vec4(1, 0, 0.5, 1)
}

function unlock_panel(pattern, show_hint)
	local shadow_offset = 0.02 -- temp?
	local background_color = vec4(0.7, 0.7, 0.7, 1)
	local shadow_color     = vec4(0.2, 0.2, 0.2, 1)
    grid_def = { dx = 0.15, dy = 0.15, size_x = 4, size_y = 4 }

    local local_root = am.scale(1)

    local hint_nodes = am.scale(1)
    local hint_xys = {}
    function local_root:add_hint_node(xy)
        -- add circle around node
        hint_nodes:append(unlock_make_node_circle(grid_def, xy))
        -- add line between nodes
        if #hint_xys > 0 then
            hint_nodes:prepend(unlock_make_node_line(grid_def, hint_xys[#hint_xys], xy))
        end
        -- record xy coords
        hint_xys[#hint_xys + 1] = xy
    end

    local user_nodes = am.scale(1)
    local user_xys = {}
    function local_root:add_user_node(xy)
        -- bail if this node has already been added
        for i, existing_xy in ipairs(user_xys) do
            if table.tostring(xy) == table.tostring(existing_xy) then
                return
            end
        end
        -- add circle around node
        user_nodes:append(unlock_make_node_circle(grid_def, xy))
        -- add line between nodes
        if #user_xys > 0 then
            user_nodes:prepend(unlock_make_node_line(grid_def, user_xys[#user_xys], xy))
        end
        -- record xy coords
        user_xys[#user_xys + 1] = xy
    end

    function local_root:clear_hint()
        hint_nodes:remove_all()
        for i=1, #hint_xys do
            table.remove(hint_xys, i)
        end
    end
    function local_root:get_grid_def()
        return grid_def
    end
    function local_root:get_pattern()
        return pattern
    end
    function local_root:lost()
        for i, xy in ipairs(user_xys) do
            if i > #pattern or table.tostring(pattern[i]) ~= table.tostring(xy) then
                return true
            end
        end
        return false
    end
    function local_root:won()
        return (not self:lost() and #user_xys == #pattern);
    end

    -- Behaviour
    local actions = {}
    if show_hint then actions[#actions+1] = unlock_play_hint(); end
    actions[#actions+1] = am.parallel{
        unlock_clear_hint(),
        unlock_user_input(),
    }
    local_root:tag"unlock_panel":action(am.series(actions))

	return local_root ^ {
        am.translate(-0.5, -0.5) ^ {
    		am.rect(shadow_offset,-shadow_offset,1 + shadow_offset,1 - shadow_offset, shadow_color),
            am.rect(0,0,1,1, background_color),
        },
        hint_nodes,
        user_nodes,
        unlock_make_grid(grid_def),
	}
end

function unlock_node_xy_to_local_xy(grid_def, node_xy)
    local dx = grid_def.dx
    local dy = grid_def.dy
    local start_x = -dx * (grid_def.size_x - 1) / 2
    local start_y = -dy * (grid_def.size_y - 1) / 2

    local local_xy = vec2(
        start_x + node_xy[1] * dx,
        start_y + node_xy[2] * dy
    )
    return local_xy
end

function unlock_make_node_line(grid_def, xy1, xy2)
    xy1 = unlock_node_xy_to_local_xy(grid_def, xy1)
    xy2 = unlock_node_xy_to_local_xy(grid_def, xy2)
    local thickness = 0.02
    local line_direction = xy2 - xy1
    local line_length = math.length(line_direction)
    local line_angle_in_radians = math.atan2(line_direction.y, line_direction.x)
    return am.translate((xy1 + xy2) / 2)
        ^ am.rotate(line_angle_in_radians)
        ^ am.translate(-line_length / 2, -thickness / 2)
        ^ am.rect(0, 0, line_length, thickness, vec4(0.2, 0.2, 0.2, 1))
end

function unlock_make_node_circle(grid_def, xy)
    local bg_col = vec4(0.7, 0.7, 0.7, 1)
    local fg_col = vec4(0.2, 0.2, 0.2, 1)
    local pos = unlock_node_xy_to_local_xy(grid_def, xy)
    return am.group() ^ { 
        am.circle(pos, 0.05, fg_col),
        am.circle(pos, 0.04, bg_col) 
    }
end

function unlock_make_grid(grid_def)
    local dots = {}
    local dot_colour= vec4(0,0,0,1)
    local dot_size = 0.01
    local dx = grid_def.dx
    local dy = grid_def.dy

    for x=0, (grid_def.size_x - 1) do
        for y=0, (grid_def.size_y - 1) do
            local dot_pos = unlock_node_xy_to_local_xy(grid_def, {x, y})
            dots[#dots + 1] = am.circle(dot_pos, dot_size, dot_colour)
        end
    end

    return am.scale(1) ^ dots
end

function unlock_play_hint()
    return coroutine.create(function()
        local panel_node = coroutine.yield()
        for i=1, #panel_node.pattern do
            panel_node:add_hint_node(panel_node.pattern[i])
            am.wait(am.delay(0.25))
        end
    end)
end

function unlock_clear_hint()
    return am.series{
        am.delay(1),
        function(panel_node)
            panel_node:clear_hint()
        end
    }
end

function unlock_user_input()
    return function(panel_node)
        if win:mouse_down("left") or win:mouse_down("right") then
            panel_node:clear_hint()
            local window_mousepos = win:mouse_position()
            -- hack in the transformation into the panel coordinate space
            local mousepos = vec2(
                (1/0.8) * window_mousepos.x / 400,
                (1/0.8) * window_mousepos.y / 300
            )
            local hit_radius = 0.05
            local grid_def = panel_node.grid_def
            for x=0, (grid_def.size_x - 1) do
                for y=0, (grid_def.size_y - 1) do
                    local pos = unlock_node_xy_to_local_xy(panel_node.grid_def, {x, y})
                    if math.length(pos - mousepos) < hit_radius then
                        panel_node:add_user_node({x, y})
                    end
                end
            end
        end
        return panel_node:lost() or panel_node:won()
    end
end

function win_or_lose()
    return function(scene_node)
        local node = scene_node"unlock_panel"
        if node:won() then
            log("YOU WON");
            return true
        elseif node:lost() then
            log("YOU LOST");
            return true
        end
        return false
    end
end

function exit()
    return function()
        win:close()
    end
end

-- Create scene
win.scene = am.group() ^ {
    am.scale(4) ^ am.sprite("temp_background2.png"),
    am.scale(400, 300) ^ am.scale(0.8)
    ^ unlock_panel({{0,0}, {1,1}, {1,2}, {1,3}, {2,3}, {3,3}, {3,2}}, true)
}

win.scene:action(
    am.series{
        win_or_lose(),
        exit(),
    }
)

