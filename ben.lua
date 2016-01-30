
local yellow = vec4(1, 1, 0, 1)
local orange = vec4(1, 0.5, 0, 1)
local pink = vec4(1,0,0.5,1)

local win = am.window{
    title = "From The Top ~ ben's testbed",
    width = 1200,
    height = 800,
    clear_color = vec4(0.3),
}

-------------------------------------------------------
-- panels global array
-------------------------------------------------------
panels = { count = 0, nodeTable = {} }

function PanelScaleControl(node)
	node.scale = node.pscale
end

function PanelPosControl(node)
	node.translate = vec3(0,100,0)
end

PanelState =
{
	docked = 1,
	animOn = 2,
	teaching = 3,
	active = 4,
	animOff = 5,
}

PanelActivity =
{
	-- array of default table contents
	{ -- word
		node = am.scale(1):action(PanelScaleControl)
			^ am.translate(0, -25):action(PanelPosControl)
			^ am.rect(-50, -50, 50, 50, yellow),
		text = "dog",
		pscale = vec3(15,5,1),
	},
	{ -- pattern
		node = am.scale(1)
			^ am.translate(-40, -50)
			^ am.rect(-50, -50, 50, 50, orange),
		dots = 4,
	},
	{ -- drums
		node = am.scale(1)
			^ am.translate(40, -30)
			^ am.rect(-50, -50, 50, 50, pink),
		snare = true,
	},
	
	-- enum to array
	word = 1,
	pattern = 2,
	drums = 3,
	--
	count = 3,
}

wordpanel = PanelActivity[1]
function wordpanel.node:get_pscale()
	return wordpanel.pscale
end


function panels.MakeEmpty()
	for b=1, panels.count do
		panels[b] = nil
	end
	panels.nodeTable = nil
end


function panels.AddOne(activity)
	
	if( activity == nil or activity > PanelActivity.count ) then
		activity = math.random(1,PanelActivity.count)
	end
	
	local p = 
	{	-- here we define the panel table parameters
		-- these are used to communicate from the panel to the game level
		-- we'll give them all default values rather than nil
		scale = vec3(3,5,1),
		position = vec2( win.width, win.height ) * 0.5,
		state = PanelState.docked,
		activity = activity
	}
	
	table.merge( p, PanelActivity[activity] )
	
	-- last of all, add p into the table and the node to the scene table
	panels.count = panels.count + 1
	panels[panels.count] = p
	panels.nodeTable[panels.count] = p.node
end


-------------------------------------------------------
-- dummy puzzle types (panel types)
-------------------------------------------------------

-- test panels
for n=1, 6 do
	panels.AddOne()
end

win.scene = am.group() ^ panels.nodeTable

-------------------------------------------------------
-- main game loop
-------------------------------------------------------
win.scene:action(function(scene)

	

end)




