--!strict
_G.__DEV__ = true

local projectRoot = script:FindFirstAncestor("LuaOnboardingSocial")
local Packages = projectRoot.Parent
local Roact = require(Packages.Roact)
local UIBlox = require(Packages.UIBlox)
UIBlox.init()

local AppStyleProvider = UIBlox.App.Style.AppStyleProvider

local styleTable = {
	Default = {
		themeName = "Light",
		fontName = "Gotham",
	},
	Light = {
		themeName = "Light",
		fontName = "Gotham",
	},
	Dark = {
		themeName = "Dark",
		fontName = "Gotham",
	},
}

return {
	name = "LuaOnboarding",
	storyRoot = projectRoot,
	roact = Roact,
	mapStory = function(story)
		return function(storyProps)
			return Roact.createElement(AppStyleProvider, {
				style = storyProps and styleTable[storyProps.theme] or styleTable.Default,
			}, {
				story = Roact.createElement(story),
			})
		end
	end,
}
