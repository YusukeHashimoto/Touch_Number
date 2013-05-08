local physics = require("physics")

-- ï«ÇçÏê¨
local walls = {
   display.newRect(-10, 0, 10, display.contentHeight), -- ç∂
   display.newRect(0, -10, display.contentWidth, 0), -- è„
   display.newRect(display.contentWidth-10, 0, 0, display.contentHeight), -- âE
   display.newRect(0, display.contentHeight-10, display.contentWidth, 30) -- â∫
}

n = 1

function buttonFunc(event)
   print("tap")
   if i == 1 then
      event.target:removeSelf()
   end
end

local nextLabel = display.newText("NEXT:", 200, display.contentHeight-10, native.systemFont, 30)
nextLabel:setTextColor(0, 0, 0)
nextNum = "" .. n
local nextNum = display.newText(n, 295, 470, native.systemFont, 30)
nextNum:setTextColor(255, 0, 0)

 local function onTimeEvent( event )
    print( "Call onTimeEvent" )
    elapsedTime = elapsedTime + 1
    --time = display.newText(elapsedTime, 50, 50, native.systemFont, 50)
 end

function func1(event)
   if n == 1 then
      event.target:removeSelf()
      n = n + 1
      nextNum.text = n
   end
end

function func2(event)
   if n == 2 then
      event.target:removeSelf()
      n = n + 1
      nextNum.text = n
   end
end

function func3(event)
   if n == 3 then
      event.target:removeSelf()
      n = n + 1
      nextNum.text = n
   end
end

function func4(event)
   if n == 4 then
      event.target:removeSelf()
      n = n + 1
      nextNum.text = n
   end
end

function func5(event)
   if n == 5 then
      event.target:removeSelf()
      n = n + 1
      nextNum.text = n
   end
end

function func6(event)
   if n == 6 then
      event.target:removeSelf()
      n = n + 1
      nextNum.text = n
   end
end

function func7(event)
   if n == 7 then
      event.target:removeSelf()
      n = n + 1
      nextNum.text = n
   end
end
function func8(event)
   if n == 8 then
      event.target:removeSelf()
      n = n + 1
      nextNum.text = n
   end
end
function func9(event)
   if n == 9 then
      event.target:removeSelf()
      n = n + 1
      nextNum.text = n
   end
end
function func10(event)
   if n == 10 then
      event.target:removeSelf()
      --n = n + 1
      --nextNum.text = n
      st = display.newText("TIME:", 40, 50, native.systemFont, 50)
      time = display.newText(elapsedTime, 180, 50, native.systemFont, 50)
      clear = display.newText("GAME CLEAR!", 5, 200, native.systemFont, 45)
   end
end

local num1 = display.newText("1", 50, 20, native.systemFont, 80)
num1:addEventListener("tap", func1)

local num2 = display.newText("2", 51, 20, native.systemFont, 80)
num2:addEventListener("tap", func2)

local num3 = display.newText("3", 52, 20, native.systemFont, 80)
num3:addEventListener("tap", func3)

local num4 = display.newText("4", 53, 20, native.systemFont, 80)
num4:addEventListener("tap", func4)

local num5 = display.newText("5", 54, 20, native.systemFont, 80)
num5:addEventListener("tap", func5)

local num6 = display.newText("6", 54, 20, native.systemFont, 80)
num6:addEventListener("tap", func6)

local num7 = display.newText("7", 54, 20, native.systemFont, 80)
num7:addEventListener("tap", func7)

local num8 = display.newText("8", 54, 20, native.systemFont, 80)
num8:addEventListener("tap", func8)

local num9 = display.newText("9", 54, 20, native.systemFont, 80)
num9:addEventListener("tap", func9)

local num10 = display.newText("10", 54, 20, native.systemFont, 80)
num10:addEventListener("tap", func10)

physics.start()

local myFilterA = {categoryBits = 1, maskBits = 7}
local myFilterB = {categoryBits = 2, maskBits = 3}

for index, wall in pairs(walls) do
   physics.addBody(wall, "static", {filter = myFilterA})
end

physics.addBody(num1, {bounce = 1.0, radius = 30, filter = myFilterB})
physics.addBody(num2, {bounce = 1.0, radius = 30, filter = myFilterB})
physics.addBody(num3, {bounce = 1.0, radius = 30, filter = myFilterB})
physics.addBody(num4, {bounce = 1.0, radius = 30, filter = myFilterB})
physics.addBody(num5, {bounce = 1.0, radius = 30, filter = myFilterB})
physics.addBody(num6, {bounce = 1.0, radius = 30, filter = myFilterB})
physics.addBody(num7, {bounce = 1.0, radius = 30, filter = myFilterB})
physics.addBody(num8, {bounce = 1.0, radius = 30, filter = myFilterB})
physics.addBody(num9, {bounce = 1.0, radius = 30, filter = myFilterB})
physics.addBody(num10, {bounce = 1.0, radius = 30, filter = myFilterB})

local startTime
elapsedTime = 0
startTime = system.getTimer()
 
 timer.performWithDelay(1000, onTimeEvent, 0 )

