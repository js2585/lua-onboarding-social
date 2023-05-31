--!strict

--[[
	A basic example of a Stateful component. The component does not leverage any lifecycle methods
	unique to Stateful components, but it does leverage the `defaultProps` field instead.

	Many of our older components are written as Stateful components, but a Functional component
	would also work out well here instead.
]]

local Packages = script:FindFirstAncestor("Packages")
local Roact = require(Packages.Roact)
local UIBlox = require(Packages.UIBlox)
local withStyle = UIBlox.Style.withStyle

local UI = script:FindFirstAncestor("UI")
local Title = require(UI.Title)

local BAR_HEIGHT = 32

local ScreenLayout = Roact.PureComponent:extend("ScreenLayout")
ScreenLayout.defaultProps = {
	title = "My App",
}

function ScreenLayout:render()
	local props = self.props

	return withStyle(function(style)
		return Roact.createFragment({
			layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),

			title = Roact.createElement(Title, {
				barHeight = BAR_HEIGHT,
				text = props.title,
			}),

			body = Roact.createElement("Frame", {
				BackgroundColor3 = style.Theme.BackgroundMuted.Color,
				BorderSizePixel = 0,
				Size = UDim2.new(UDim.new(1, 0), UDim.new(1, -BAR_HEIGHT)),
			}, {
				layout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),

				padding = Roact.createElement("UIPadding", {
					PaddingTop = UDim.new(0, 24),
					PaddingBottom = UDim.new(0, 24),
					PaddingLeft = UDim.new(0, 12),
					PaddingRight = UDim.new(0, 12),
				}),
			}),
		})
	end)
end

return ScreenLayout
