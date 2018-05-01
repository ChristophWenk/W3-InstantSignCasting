-- Profile settings for G600
-- =========================

-- Use these parameters to assign keyboard-keys to mouse buttons G9,G10,G11,G12,G13
-- Type in your in-game key bindings to select which signs should be mapped to a mouse button.
-- Also type in what key you're using to cast a sign.
-- E.g. the default key mappings for Igni and Quen, which are "5" and "6" as well as "q" for casting.
sign1 = "3";        -- G9
sign2 = "4";        -- G10
sign3 = "5";        -- G11
sign4 = "6";        -- G12
sign5 = "7";        -- G13
cast = "q";


function OnEvent(event, arg)

-- Check if mouse button G9 is pressed
	if event == "MOUSE_BUTTON_PRESSED" and arg == 9 then
		mbG9_pressed = true
	
	elseif event == "MOUSE_BUTTON_RELEASED" and arg == 9 then
		mbG9_pressed = false
		ReleaseKey(cast);
		ReleaseKey(sign1);
	end

-- Check if mouse button G10 is pressed
	if event == "MOUSE_BUTTON_PRESSED" and arg == 10 then
		mbG10_pressed = true
	
	elseif event == "MOUSE_BUTTON_RELEASED" and arg == 10 then
		mbG10_pressed = false
		ReleaseKey(cast);
		ReleaseKey(sign2);
	end

-- Check if mouse button G11 is pressed
	if event == "MOUSE_BUTTON_PRESSED" and arg == 11 then
		mbG11_pressed = true
	
	elseif event == "MOUSE_BUTTON_RELEASED" and arg == 11 then
		mbG11_pressed = false
		ReleaseKey(cast);
		ReleaseKey(sign3);
	end

-- Check if mouse button G12 is pressed
	if event == "MOUSE_BUTTON_PRESSED" and arg == 12 then
		mbG12_pressed = true
	
	elseif event == "MOUSE_BUTTON_RELEASED" and arg == 12 then
		mbG12_pressed = false
		ReleaseKey(cast);
		ReleaseKey(sign4);
	end

-- Check if mouse button G13 is pressed
	if event == "MOUSE_BUTTON_PRESSED" and arg == 13 then
		mbG13_pressed = true
	
	elseif event == "MOUSE_BUTTON_RELEASED" and arg == 13 then
		mbG13_pressed = false
		ReleaseKey(cast);
		ReleaseKey(sign5);
	end

-- Action for mouse Button G9: Sign1
	if mbG9_pressed then
			PressKey(sign1);
			PressKey(cast);	
	end

-- Action for mouse Button G10: Sign2
	if mbG10_pressed then
			PressKey(sign2);
			PressKey(cast);	
	end

-- Action for mouse Button G11: Sign3
	if mbG11_pressed then
			PressKey(sign3);
			PressKey(cast);	
	end

-- Action for mouse Button G12: Sign4
	if mbG12_pressed then
			PressKey(sign4);
			PressKey(cast);	
	end

-- Action for mouse Button G13: Sign5
	if mbG13_pressed then
			PressKey(sign5);
			PressKey(cast);	
	end

end