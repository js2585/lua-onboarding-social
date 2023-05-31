--!strict
local Packages = script:FindFirstAncestor("Packages")
local Roact = require(Packages.Roact)

local Layout = require(script.Parent)

return function()
	return Roact.createElement(Layout)
end
