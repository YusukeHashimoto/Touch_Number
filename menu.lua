local storyboard = require("storyboard")
local scene = storyboard.newScene()

local widget = require "widget"

local playBtn

local function onPlayBtnRelease()

   storyboard.gotoScene("game", "fade", 500)

   return true
end

playBtn = widget.newButton{
   label = "Play"
   width = 154, height = 40,
   onRelease = onPlayRelease
}
