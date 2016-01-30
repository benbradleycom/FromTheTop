local win = am.window{
	title = "hi",
	width = 400,
	height = 300,
	clear_color = vec4(1, 0, 0.5, 1)
}

function render_panel_typing(word, aspect_ratio, animation_state)
	local shadow_offset = 0.02 -- temp?
	local background_color = vec4(0.7, 0.7, 0.7, 1)
	local shadow_color     = vec4(0.2, 0.2, 0.2, 1)

	local local_root = am.scale(1)
	local word_chars_shown = 0
	local cursor = true
	local user_text = ""
	function local_root:get_word()
		return word
	end
	function local_root:update_text()
		self"text".text = word:sub(0, word_chars_shown)
		if (user_text ~= "") then self"text".text = user_text end
		if cursor then 
			self"text".text = self"text".text .. "_" 
		else
			self"text".text = self"text".text .. " "
		end
	end
	function local_root:set_word_chars_to_show(n)
		if n >= 0 and n <= #word then
			word_chars_shown = n
		end
		self:update_text()
	end
	function local_root:set_cursor(v)
		cursor = v;
		self:update_text()
	end
	function local_root:get_user_text()
		return user_text
	end
	function local_root:set_user_text(v)
		user_text = v
		self:update_text()
	end
    function local_root:lost()
        return (word:sub(0, #user_text) ~= user_text);
    end
    function local_root:won()
        return (not self:lost() and #word == #user_text);
    end

	return local_root ^ am.translate(-0.5, -0.5) ^ am.group{
		am.rect(shadow_offset,-shadow_offset,1 + shadow_offset,1 - shadow_offset, shadow_color),
		am.rect(0,0,1,1, background_color),
		am.translate(0.5, 0.5) ^ am.scale(1/400, 1/300) ^ am.text("_", vec4(0.9, 0.9, 0.9, 1)),
	}
end

function play_intro()
	return coroutine.create(function()
		local node = coroutine.yield()

		-- Type out word
		for i=1, #node.word do
			am.wait(am.delay(0.5))
			node.word_chars_to_show = i
		end
		am.wait(am.delay(0.5))
		node.cursor = false

		-- Show word for a bit
		am.wait(am.delay(2))

		-- Clear ready for input
		node.word_chars_to_show = 0
		node.cursor = true
	end)
end

function user_input()
	return function(node)
		for i,letter in ipairs({"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"}) do
			if win:key_pressed(letter) then
				node.user_text = node.user_text .. letter
                return node:lost() or node:won()
			end
		end
	end
end

function win_or_lose()
    return function(node)
        if node:won() then
            log("YOU WON");
        elseif node:lost() then
            log("YOU LOST");
        else
            log("Internal error");
        end
        return true
    end
end

function exit()
    return function()
        win:close()
    end
end

win.scene = am.group() ^ {
	am.scale(400, 300) ^ am.scale(0.8)
	^ render_panel_typing("dog", 0.5, 0):tag"typing_panel":action(
		am.series{
			play_intro(),
			user_input(),
            win_or_lose(),
            exit()
		}
	)
}

--[[
		am.loop(function(node)
		return am.series{
			am.tween(1, { scale = vec3(0.9, 0.9, 0.9) }), 
			am.tween(1, { scale = vec3(1.0, 1.0, 1.0) }),
		}
	end))
}
]]
