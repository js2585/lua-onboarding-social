--!strict
--[[
	A basic example of a Functional component.
]]

local Packages = script:FindFirstAncestor("Packages")
local Roact = require(Packages.Roact)
local UIBlox = require(Packages.UIBlox)

local HeaderBar = UIBlox.App.Bar.HeaderBar

return function(props)
	return Roact.createElement(HeaderBar, {
		title = props.text or "props.text",
	})
end
