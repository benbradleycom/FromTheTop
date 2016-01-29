local red = vec4(1, 0, 0, 1)
local blue = vec4(0, 0, 1, 1)
local yellow = vec4(1, 1, 0, 1)

local win = am.window{
    title = "Hi",
    width = 1200,
    height = 800,
    clear_color = vec4(0.3),
}

-------------------------------------------------------
-- blocks
-------------------------------------------------------
blocks =
{
	count = 0;
}

--------
function blocks.MakeEmpty()
	for b=1, blocks.count do
		blocks[b] = nil;
	end
end

--------
function blocks.AddOne()
	blocks.count = blocks.count + 1
	blocks[blocks.count] =
	{
		-- here we define the block table parameters
		-- we'll give them all default values rather than nil
		scale = vec2(1,1);
		position = vec2( win.width, win.height ) * 0.5;
	}
end

-------------------------------------------------------
-- win scene
-------------------------------------------------------
win.scene =
    am.group()
    ^
	{
	
        am.translate(0, -25)
        ^ am.rect(-50, -50, 50, 50, yellow)
    }

win.scene:action(function(scene)

end)




