return function()
	describe("WHEN called", function()
		beforeAll(function(context)
			context.startApp = require(script.Parent.startApp)
		end)

		it("SHOULD NEVER throw", function(context)
			context.startApp()
		end)
	end)
end
