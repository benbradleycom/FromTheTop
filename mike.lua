function render_panel_typing(aspect_ratio, animation_state)
	local shadow_offset = 0.02 -- temp?
	local background_color = vec4(0.7, 0.7, 0.7, 1)
	local shadow_color     = vec4(0.2, 0.2, 0.2, 1)

	return am.scale(1) ^ am.group{
		am.rect(shadow_offset,-shadow_offset,1 + shadow_offset,1 - shadow_offset, shadow_color),
		am.rect(0,0,1,1, background_color),
		am.translate(0.5, 0.5) ^ am.scale(1/400, 1/300) ^ am.text("dog", vec4(0.9, 0.9, 0.9, 1)),
	}
end

local win = am.window{
	title = "hi",
	width = 400,
	height = 300,
	clear_color = vec4(1, 0, 0.5, 1)
}
win.scene = am.group() ^ {
	am.scale(400, 300) ^ am.scale(0.8) ^ am.translate(-0.5, -0.5)
	^ render_panel_typing(0.5, 0):action(am.loop(function(node)
		return am.series{
			am.tween(1, { scale = vec3(0.9, 0.9, 0.9) }), 
			am.tween(1, { scale = vec3(1.0, 1.0, 1.0) }),
		}
	end))
}
