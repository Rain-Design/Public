local Library = {}

local TweenService = game:GetService("TweenService")

local NotifLib = Instance.new("ScreenGui")
NotifLib.Name = "NotifLib"
NotifLib.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
NotifLib.Parent = game.CoreGui

local NotifHolder = Instance.new("Frame")
NotifHolder.Name = "NotifHolder"
NotifHolder.AnchorPoint = Vector2.new(.5, .5)
NotifHolder.Size = UDim2.new(0.996, 0, .99, 0)
NotifHolder.BackgroundTransparency = 1
NotifHolder.Position = UDim2.new(0.498, 0,0.5, 0)
NotifHolder.BorderSizePixel = 0
NotifHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NotifHolder.Parent = NotifLib

local UIListLayout = Instance.new("UIListLayout")
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 6)
UIListLayout.Parent = NotifHolder

function Library:Notify(Text,Timer,StrokeProperties,CornerProperties)
	Text = Text or "Notification."
	Timer = Timer or 1
	StrokeProperties = StrokeProperties or {}
	CornerProperties = CornerProperties or {}

	local Frame = Instance.new("Frame")
	Frame.Size = UDim2.new(0, 1, 0, 29)
	Frame.Position = UDim2.new(0.8922601, 0, 0.9641975, 0)
	Frame.BackgroundColor3 = Color3.fromRGB(29, 31, 37)
	Frame.Parent = NotifHolder

	local UICorner = Instance.new("UICorner")
	UICorner.CornerRadius = UDim.new(0, 6)
	UICorner.Parent = Frame

	local UIStroke = Instance.new("UIStroke")
	UIStroke.Color = Color3.fromRGB(228, 95, 119)
	UIStroke.Parent = Frame

	local TextLabel = Instance.new("TextLabel")
	TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
	TextLabel.Size = UDim2.new(0, 1, 0, 29)
	TextLabel.BackgroundTransparency = 1
	TextLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.FontSize = Enum.FontSize.Size14
	TextLabel.TextSize = 13
	TextLabel.TextColor3 = Color3.fromRGB(222, 222, 222)
	TextLabel.Text = Text
	TextLabel.Font = Enum.Font.GothamMedium
	TextLabel.Parent = Frame

	Frame.Size = UDim2.new(0,(TextLabel.TextBounds.X + 25),0,29)
	TextLabel.Size = UDim2.new(0,TextLabel.TextBounds.X,0,29)

	coroutine.wrap(function()
		if #StrokeProperties > 0 then
			for strokeprop, strokeval in next,StrokeProperties do
				UIStroke[strokeprop] = strokeval
			end
		end

		if #CornerProperties > 0 then
			for cornerprop, cornerprop in next,CornerProperties do
				UICorner[cornerprop] = cornerprop
			end
		end
		
		task.wait(Timer)
		TextLabel.Text = ""
		local finishtween = TweenService:Create(Frame,TweenInfo.new(.3,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,0,false,0),{Size = UDim2.new(0,0,0,29)})
		finishtween:Play()
		finishtween.Completed:Connect(function()
			Frame:Remove()
		end)
	end)()
end

return Library
