local passkit = require("plugin.passkit")
local widget = require("widget")
local bg = display.newRect( display.contentCenterX, display.contentCenterY, display.actualContentWidth, display.actualContentHeight )
local title = display.newText( "Pass Kit", display.contentCenterX, 40, native.systemFont, 18 )
title:setFillColor( 0 )

local passkitPath = system.pathForFile("testPass.pkpass")
local addPass = widget.newButton( {
	onRelease = function ( e )
		passkit.add(passkitPath, function (e)
    		print(e.status)
		end)
	end,
	label = "Add Pass",
	x= display.contentCenterX,
	y= display.contentCenterY,
} )

