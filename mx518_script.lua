-- Profile settings for MX518
-- ==========================

-- Use these parameters to assign keyboard-keys to mouse buttons 4,5,6,7,8
-- Type in your in-game key bindings to select which signs should be mapped to a mouse button.
-- Also type in what key you're using to cast a sign.
-- E.g. the default key mappings for Igni and Quen, which are "5" and "6" as well as "q" for casting.
sign1 = "6";		-- MB4, backward
sign2 = "5";		-- MB5, forward
sign3 = "7";		-- MB6, reset dpi
sign4 = "3";		-- MB7, +
sign5 = "4";		-- MB8, -
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

-- Check if mouse button 6 (reset dpi) is pressed
	if event == "MOUSE_BUTTON_PRESSED" and arg == 6 then
		mb6_pressed = true
	
	elseif event == "MOUSE_BUTTON_RELEASED" and arg == 6 then
		mb6_pressed = false
		ReleaseKey(cast);
		ReleaseKey(sign3);
	end

-- Check if mouse button 7 (+) is pressed
	if event == "MOUSE_BUTTON_PRESSED" and arg == 7 then
		mb7_pressed = true
	
	elseif event == "MOUSE_BUTTON_RELEASED" and arg == 7 then
		mb7_pressed = false
		ReleaseKey(cast);
		ReleaseKey(sign4);
	end

-- Check if mouse button 8 (-) is pressed
	if event == "MOUSE_BUTTON_PRESSED" and arg == 8 then
		mb8_pressed = true
	
	elseif event == "MOUSE_BUTTON_RELEASED" and arg == 8 then
		mb8_pressed = false
		ReleaseKey(cast);
		ReleaseKey(sign5);
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

-- Action for mouse Button 6: Sign3
	if mb6_pressed then
			PressKey(sign3);
			PressKey(cast);	
	end

-- Action for mouse Button 7: Sign4
	if mb7_pressed then
			PressKey(sign4);
			PressKey(cast);	
	end

-- Action for mouse Button 8: Sign5
	if mb8_pressed then
			PressKey(sign5);
			PressKey(cast);	
	end

end