--!strict
local Packages = script:FindFirstAncestor("Packages")
local Roact = require(Packages.Roact)

local Title = require(script.Parent)

return function()
	return Roact.createElement(Title, {
		text = "A Custom Title",
	})
end
