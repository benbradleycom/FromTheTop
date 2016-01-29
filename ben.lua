local yellow = vec4(1, 1, 0, 1)
local orange = vec4(1, 0.5, 0, 1)


local win = am.window{
    title = "From The Top ~ ben's testbed",
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


function blocks.MakeEmpty()
	for b=1, blocks.count do
		blocks[b] = nil;
	end
end


function blocks.AddOne()
	blocks.count = blocks.count + 1
	b =
	{
		-- here we define the block table parameters
		-- we'll give them all default values rather than nil
		scale = vec2(1,1);
		position = vec2( win.width, win.height ) * 0.5;
	}
	
	blocks[blocks.count] = { params = b; };
end


-------------------------------------------------------
-- dummy puzzle types (block types)
-------------------------------------------------------

function MakeAsYellow()
	return
	{
		am.translate(0, -25) ^ am.rect(-50, -50, 50, 50, yellow),
		a = 5
	}
end


-- test blocks
for n=1, 4 do
	blocks.AddOne();
end

table.merge( blocks[1], MakeAsDummy() );

log( blocks[1].params.scale.x );
log( blocks[1].a );

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

	
-------------------------------------------------------
-- main game loop
-------------------------------------------------------
win.scene:action(function(scene)



end)




