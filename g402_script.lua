-- Profile settings for G402
-- =========================

-- Use these parameters to assign keyboard-keys to mouse buttons G3,G4,G5,G7,G8
-- Type in your in-game key bindings to select which signs should be mapped to a mouse button.
-- Also type in what key you're using to cast a sign.
-- E.g. the default key mappings for Igni and Quen, which are "5" and "6" as well as "q" for casting.
sign1 = "3";        -- G8
sign2 = "4";        -- G7
sign3 = "5";        -- G5
sign4 = "6";        -- G4
sign5 = "7";        -- G6
cast = "q";


function OnEvent(event, arg)

-- Check if mouse button G8 is pressed
	if event == "MOUSE_BUTTON_PRESSED" and arg == 8 then
		mbG8_pressed = true
	
	elseif event == "MOUSE_BUTTON_RELEASED" and arg == 8 then
		mbG8_pressed = false
		ReleaseKey(cast);
		ReleaseKey(sign1);
	end

-- Check if mouse button G7 is pressed
	if event == "MOUSE_BUTTON_PRESSED" and arg == 7 then
		mbG7_pressed = true
	
	elseif event == "MOUSE_BUTTON_RELEASED" and arg == 7 then
		mbG7_pressed = false
		ReleaseKey(cast);
		ReleaseKey(sign2);
	end

-- Check if mouse button G5 is pressed
	if event == "MOUSE_BUTTON_PRESSED" and arg == 5 then
		mbG5_pressed = true
	
	elseif event == "MOUSE_BUTTON_RELEASED" and arg == 5 then
		mbG5_pressed = false
		ReleaseKey(cast);
		ReleaseKey(sign3);
	end

-- Check if mouse button G4 is pressed
	if event == "MOUSE_BUTTON_PRESSED" and arg == 4 then
		mbG4_pressed = true
	
	elseif event == "MOUSE_BUTTON_RELEASED" and arg == 4 then
		mbG4_pressed = false
		ReleaseKey(cast);
		ReleaseKey(sign4);
	end

-- Check if mouse button G3 is pressed
	if event == "MOUSE_BUTTON_PRESSED" and arg == 6 then
		mbG6_pressed = true
	
	elseif event == "MOUSE_BUTTON_RELEASED" and arg == 6 then
		mbG6_pressed = false
		ReleaseKey(cast);
		ReleaseKey(sign5);
	end

-- Action for mouse Button G8: Sign1
	if mbG8_pressed then
			PressKey(sign1);
			PressKey(cast);	
	end

-- Action for mouse Button G7: Sign2
	if mbG7_pressed then
			PressKey(sign2);
			PressKey(cast);	
	end

-- Action for mouse Button G5: Sign3
	if mbG5_pressed then
			PressKey(sign3);
			PressKey(cast);	
	end

-- Action for mouse Button G4: Sign4
	if mbG4_pressed then
			PressKey(sign4);
			PressKey(cast);	
	end

-- Action for mouse Button G6: Sign5
	if mbG6_pressed then
			PressKey(sign5);
			PressKey(cast);	
	end

end