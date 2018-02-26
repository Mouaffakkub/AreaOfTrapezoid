-----------------------------------------------------------------------------------------
--
-- Created by: Mouaffak Koubeisy
-- Created on: Feb 26th 2018
-- This code takes the length of three sides from the user and calculates area
-----------------------------------------------------------------------------------------
local baseOfTrapezoidTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 200, 450, 75 )
baseOfTrapezoidTextField.id = "length textField"

local sideOfTrapezoidTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 300, 450, 75 )
sideOfTrapezoidTextField.id = "length textField"

local heightOfTrapezoidTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 400, 450, 75 )
heightOfTrapezoidTextField.id = "length textField"

local areaOfTrapezoidTextField = display.newText( "Answer", display.contentCenterX, display.contentCenterY - 200, native.systemFont, 75 )
areaOfTrapezoidTextField.id = "area textField"
areaOfTrapezoidTextField:setFillColor( 1, 1, 1 )

local calculateButton = display.newImageRect( "./assets/sprites/enterButton.jpg", 406, 157 )
calculateButton.x = display.contentCenterX
calculateButton.y = display.contentCenterY
calculateButton.id = "calculate button"
 
local function calculateButtonTouch( event )
    -- this function calculates the area of a Trapezoid given the length of one of its sides
 
    local baseOfTrapezoid
    local areaOfTrapezoid
    local sideOfTrapezoid
    local heightOfTrapezoid

    baseOfTrapezoid = baseOfTrapezoidTextField.text
    sideOfTrapezoid = sideOfTrapezoidTextField.text
    heightOfTrapezoid = heightOfTrapezoidTextField.text
    areaOfTrapezoid = ((baseOfTrapezoid + sideOfTrapezoid)/2) * heightOfTrapezoid
    -- print( areaOfTrapezoid )
    areaOfTrapezoidTextField.text = "The area is " .. areaOfTrapezoid

    return true
end

calculateButton:addEventListener( "touch", calculateButtonTouch )