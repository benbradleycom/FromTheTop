
-- bring: hdmi cable, snacks, water bottle, pad, pen

local yellow = vec4(1, 1, 0, 1)
local orange = vec4(1, 0.5, 0, 1)

local win = am.window{
    title = "From The Top ~ ben's testbed",
    width = 1200,
    height = 800,
    clear_color = vec4(0.3),
}

-------------------------------------------------------
-- panels global array
-------------------------------------------------------
panels =
{
	count = 0;
}

PanelState =
{
	docked = 1,
	animOn = 2,
	teaching = 3,
	active = 4,
	animOff = 5,
}


function panels.MakeEmpty()
	for b=1, panels.count do
		panels[b] = nil
	end
end


function panels.AddOne()
	panels.count = panels.count + 1
	b =
	{
		-- here we define the panel table parameters
		-- we'll give them all default values rather than nil
		scale = vec2(1,1);
		position = vec2( win.width, win.height ) * 0.5;
		state = docked
	}
	
	panels[panels.count] = { params = b }
end


-------------------------------------------------------
-- dummy puzzle types (panel types)
-------------------------------------------------------

function MakeAsYellow()
	return
	{
		node = am.translate(0, -25) ^ am.rect(-50, -50, 50, 50, yellow),
		yellow = true
	}
end

function MakeAsOrange()
	return
	{
		node = am.translate(-40, -50) ^ am.rect(-50, -50, 50, 50, orange),
		orange = true
	}
end

-- test panels
for n=1, 4 do
	panels.AddOne()
end

table.merge( panels[1], MakeAsYellow() )
table.merge( panels[2], MakeAsOrange() ) --todo: make as random (by default?)
table.merge( panels[3], MakeAsOrange() )
table.merge( panels[4], MakeAsYellow() )

--log( panels[1].params.scale.x )
--log( panels[1].node )

-------------------------------------------------------
-- win scene
-------------------------------------------------------
panelmap = {}
for pm=1, panels.count do
	panelmap[pm] = panels[pm].node
end
win.scene = am.group() ^ panelmap

-------------------------------------------------------
-- main game loop
-------------------------------------------------------
win.scene:action(function(scene)



end)




