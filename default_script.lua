-- Default profile settings for mice with thumb buttons
-- ====================================================

-- Use these parameters to assign keyboard-keys to mouse buttons 4,5
-- Type in your in-game key bindings to select which signs should be mapped to a mouse button.
-- Also type in what key you're using to cast a sign.
-- E.g. the default key mappings for Igni and Quen, which are "5" and "6" as well as "q" for casting.
sign1 = "6";        -- MB4, backward
sign2 = "5";        -- MB5, forward
cast = "q";


function OnEvent(event, arg)

-- Check if mouse button 4 (backward) is pressed
	if event == "MOUSE_BUTTON_PRESSED" and arg == 4 then
		mb4_pressed = true
	
	elseif event == "MOUSE_BUTTON_RELEASED" and arg == 4 then
		mb4_pressed = false
		ReleaseKey(cast);
		ReleaseKey(sign1);
	end

-- Check if mouse button 5 (forward) is pressed
	if event == "MOUSE_BUTTON_PRESSED" and arg == 5 then
		mb5_pressed = true
	
	elseif event == "MOUSE_BUTTON_RELEASED" and arg == 5 then
		mb5_pressed = false
		ReleaseKey(cast);
		ReleaseKey(sign2);
	end

-- Action for mouse Button 4: Sign1
	if mb4_pressed then
			PressKey(sign1);
			PressKey(cast);	
	end

-- Action for mouse Button 5: Sign2
	if mb5_pressed then
			PressKey(sign2);
			PressKey(cast);	
	end

end