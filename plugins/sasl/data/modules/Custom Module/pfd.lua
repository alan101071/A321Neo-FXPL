-- size = { 190, 190 }
size = { 970, 540 }

defineProperty("alt_hold", globalPropertyf("sim/cockpit2/autopilot/altitude_dial_ft"))          --We get the altitude to hold
defineProperty("altitude", globalPropertyf("sim/cockpit2/gauges/indicators/altitude_ft_pilot")) --We get the altiltude we are now


local font1=sasl.gl.loadFont("fonts/B612Mono-Regular.ttf") -- from now on (in this script) we use the font1 to tell what font we want to use. Of course we can use multiple fonts and name them as we like
clRed = {1.0, 0.0, 0.0, 1.0}
clAirbusMain= { 0, 0.125, 0.357, 0.5}


function draw()
  sasl.gl.drawRectangle(0, 0, 970 , 540 , clAirbusMain)
  sasl.gl.drawText(font1, size[1]/2, size[2]/2, "PFD", 72, false, false, TEXT_ALIGN_CENTER, clRed)
-- local alt=get(altitude)
-- 	if alt <= get(alt_hold) - 500 or alt >= get(alt_hold) + 500 then -- If we are 500 ft below the target altitude of 500 ft above
-- 		sasl.gl.drawTextI(font1, 100, 0, string.format("%d", get(alt_hold)),  TEXT_ALIGN_CENTER, clRed) --Draw the text in red color since we are away from our target altitude
-- 	else
-- 		sasl.gl.drawTextI(font1, 100, 0, string.format("%d", get(alt_hold)),  TEXT_ALIGN_CENTER, clRed) --Draw the text in green color since we are capturing the target altitude
-- 	end
end
