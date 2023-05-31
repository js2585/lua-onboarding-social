local Packages = script:FindFirstAncestor("Packages")
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect

return function()
	--[[describe("addition", function()
		describe("WHEN 2 + 2", function()
			beforeAll(function(context)
				context.result = 2 + 2
			end)

			it("SHOULD equal 4", function(context)
				expect(context.result).toEqual(4)
			end)
		end)

		describe("WHEN 2 + -2", function()
			beforeAll(function(context)
				context.result = 2 + -2
			end)

			it("SHOULD equal 0", function(context)
				fail("TODO: Finish this expression!")
			end)
		end)
	end)

	describe("subtraction", function()
		-- TODO: Finish this as well!
	end)]]
end
