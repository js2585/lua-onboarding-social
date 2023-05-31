local Packages = script:FindFirstAncestor("Packages")

return function()
	beforeAll(function(context)
		context.Roact = require(Packages.Roact)
	end)
end
