local library = {}

local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("ImageLabel")
local Dropdown = Instance.new("ImageLabel")
local DropdownTextLabel = Instance.new("TextLabel")
local DropdownImageLabel = Instance.new("ImageLabel")
local DropdownImageButton = Instance.new("TextButton")
local DropdownContainer = Instance.new("ImageLabel")
local DropdownUIListLayout = Instance.new("UIListLayout")
local DropdownButton = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(223, 223, 223)
MainFrame.BackgroundTransparency = 1.000
MainFrame.ClipsDescendants = true
MainFrame.Position = UDim2.new(0.396658421, 0, 0.249079749, 0)
MainFrame.Size = UDim2.new(0, 422, 0, 352)
MainFrame.Image = "rbxassetid://3570695787"
MainFrame.ImageColor3 = Color3.fromRGB(19, 19, 19)
MainFrame.ScaleType = Enum.ScaleType.Slice
MainFrame.SliceCenter = Rect.new(100, 100, 100, 100)
MainFrame.SliceScale = 0.030

function library:CreateWindow()
	local insidewindow = {}
	
	local TabButtonContainer = Instance.new("ImageLabel")
	local TabScrollingFrame = Instance.new("ScrollingFrame")
	local TabUIListLayout = Instance.new("UIListLayout")
	local Topbar = Instance.new("ImageLabel")
	local Colorless = Instance.new("TextLabel")
	
	Topbar.Name = "Topbar"
	Topbar.Parent = MainFrame
	Topbar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	Topbar.BackgroundTransparency = 1.000
	Topbar.Size = UDim2.new(0, 422, 0, 42)
	Topbar.Image = "rbxassetid://3570695787"
	Topbar.ImageColor3 = Color3.fromRGB(30, 30, 30)
	Topbar.ScaleType = Enum.ScaleType.Slice
	Topbar.SliceCenter = Rect.new(100, 100, 100, 100)
	Topbar.SliceScale = 0.030

	Colorless.Name = "Colorless"
	Colorless.Parent = Topbar
	Colorless.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Colorless.BackgroundTransparency = 1.000
	Colorless.Position = UDim2.new(0.0411765203, 0, 0, 0)
	Colorless.Size = UDim2.new(0, 73, 0, 42)
	Colorless.Font = Enum.Font.GothamBlack
	Colorless.Text = "Colorless"
	Colorless.TextColor3 = Color3.fromRGB(223, 223, 223)
	Colorless.TextSize = 14.000
	Colorless.TextXAlignment = Enum.TextXAlignment.Left

	TabButtonContainer.Name = "TabButtonContainer"
	TabButtonContainer.Parent = MainFrame
	TabButtonContainer.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
	TabButtonContainer.BackgroundTransparency = 1.000
	TabButtonContainer.Position = UDim2.new(0, 0, 0.11931818, 0)
	TabButtonContainer.Size = UDim2.new(0, 109, 0, 310)
	TabButtonContainer.Image = "rbxassetid://3570695787"
	TabButtonContainer.ImageColor3 = Color3.fromRGB(22, 22, 22)
	TabButtonContainer.ScaleType = Enum.ScaleType.Slice
	TabButtonContainer.SliceCenter = Rect.new(100, 100, 100, 100)
	TabButtonContainer.SliceScale = 0.030

	TabScrollingFrame.Name = "TabScrollingFrame"
	TabScrollingFrame.Parent = TabButtonContainer
	TabScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TabScrollingFrame.BackgroundTransparency = 1.000
	TabScrollingFrame.Position = UDim2.new(0, 0, 0.0228013564, 0)
	TabScrollingFrame.Selectable = false
	TabScrollingFrame.Size = UDim2.new(0, 109, 0, 300)
	TabScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
	TabScrollingFrame.ScrollBarThickness = 4

	TabUIListLayout.Name = "TabUIListLayout"
	TabUIListLayout.Parent = TabScrollingFrame
	TabUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	TabUIListLayout.Padding = UDim.new(0, 1)
	
	function insidewindow:CreateTab(Info)
		Info.Name = Info.Name or "Tab"
		
		local insidetab = {}
		
		local TabButton = Instance.new("Frame")
		local TabTextLabel = Instance.new("TextLabel")
		local TabTextButton = Instance.new("TextButton")
		local SelectedTab = Instance.new("Frame")
		local ItemContainer = Instance.new("ScrollingFrame")
		local ItemContainterUIListLayout = Instance.new("UIListLayout")
		local ItemContainterUIPadding = Instance.new("UIPadding")
		
		TabButton.Name = "TabButton"
		TabButton.Parent = TabScrollingFrame
		TabButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TabButton.BackgroundTransparency = 1.000
		TabButton.Size = UDim2.new(0, 100, 0, 33)

		TabTextLabel.Name = "TabTextLabel"
		TabTextLabel.Parent = TabButton
		TabTextLabel.BackgroundColor3 = Color3.fromRGB(167, 167, 167)
		TabTextLabel.BackgroundTransparency = 1.000
		TabTextLabel.Position = UDim2.new(0.0900000036, 0, 0.0444446914, 0)
		TabTextLabel.Size = UDim2.new(0, 100, 0, 20)
		TabTextLabel.Font = Enum.Font.GothamBold
		TabTextLabel.Text = Info.Name
		TabTextLabel.TextColor3 = Color3.fromRGB(131, 131, 131)
		TabTextLabel.TextSize = 11.000
		TabTextLabel.TextXAlignment = Enum.TextXAlignment.Left

		TabTextButton.Name = "TabTextButton"
		TabTextButton.Parent = TabButton
		TabTextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TabTextButton.BackgroundTransparency = 1.000
		TabTextButton.Size = UDim2.new(0, 109, 0, 19)
		TabTextButton.Font = Enum.Font.SourceSans
		TabTextButton.Text = ""
		TabTextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
		TabTextButton.TextSize = 14.000

		SelectedTab.Name = "SelectedTab"
		SelectedTab.Parent = TabButton
		SelectedTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		SelectedTab.BorderSizePixel = 0
		SelectedTab.Position = UDim2.new(0, 0, 0.181890219, 0)
		SelectedTab.Size = UDim2.new(0, 2, 0, 14)
		SelectedTab.Visible = false
		
		ItemContainer.Name = "ItemContainer"
		ItemContainer.Parent = MainFrame
		ItemContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ItemContainer.BackgroundTransparency = 1.000
		ItemContainer.BorderSizePixel = 0
		ItemContainer.Position = UDim2.new(0.258293837, 0, 0.145344734, 0)
		ItemContainer.Size = UDim2.new(0, 313, 0, 300)
		ItemContainer.CanvasSize = UDim2.new(0, 0, 0, 0)
		ItemContainer.ScrollBarThickness = 0
		
		ItemContainterUIListLayout.Name = "ItemContainterUIListLayout"
		ItemContainterUIListLayout.Parent = ItemContainer
		ItemContainterUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

		ItemContainterUIPadding.Name = "ItemContainterUIPadding"
		ItemContainterUIPadding.Parent = ItemContainer
		ItemContainterUIPadding.PaddingLeft = UDim.new(0, 6)
		
		TabButton.TextButton.MouseButton1Click:Connect(function()
			for i,v in next,MainFrame:GetChildren() do
				if v.Name == "ItemContainer" then
					v.Visible = false
				end
			end
			for i,t in next, TabButtonContainer:GetChildren() do
				if t.Name == "TabButton" then
					t.TabTextLabel.TextColor3 = Color3.fromRGB(131, 131, 131)
					t.SelectedTab.Visible = false
				end
				SelectedTab.Visible = true
				local tween = game:GetService("TweenService"):Create(TabTextLabel, TweenInfo.new(.2), {TextColor3 = Color3.fromRGB(223, 223, 223)})
				tween:Play()
				tween.Completed:Wait()
			end
			ItemContainer.Visible = true
		end)

		function insidetab:Show()
			for i,v in next,MainFrame:GetChildren() do
				if v.Name == "TabContainer" then
					v.Visible = false
				end
			end
			ItemContainer.Visible = true
			SelectedTab.Visible = true
			local tween = game:GetService("TweenService"):Create(TabTextLabel, TweenInfo.new(.2), {TextColor3 = Color3.fromRGB(223, 223, 223)})
			tween:Play()
			tween.Completed:Wait()
		end
		
		function insidetab:CreateLabel(Info)
			Info.Text = Info.Text or "Label"
			Info.Color = Info.Color or Color3.fromRGB(223, 223, 223)
			
			local insidelabel = {}
			
			local Label = Instance.new("ImageLabel")
			local LabelTextLabel = Instance.new("TextLabel")
			
			Label.Name = "Label"
			Label.Parent = ItemContainer
			Label.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
			Label.BackgroundTransparency = 1.000
			Label.Size = UDim2.new(0, 307, 0, 25)
			Label.Image = "rbxassetid://3570695787"
			Label.ImageColor3 = Color3.fromRGB(22, 22, 22)
			Label.ScaleType = Enum.ScaleType.Slice
			Label.SliceCenter = Rect.new(100, 100, 100, 100)
			Label.SliceScale = 0.030

			LabelTextLabel.Name = "LabelTextLabel"
			LabelTextLabel.Parent = Label
			LabelTextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			LabelTextLabel.BackgroundTransparency = 1.000
			LabelTextLabel.Position = UDim2.new(0.043650873, 0, 0, 0)
			LabelTextLabel.Size = UDim2.new(0, 293, 0, 25)
			LabelTextLabel.Font = Enum.Font.GothamBold
			LabelTextLabel.Text = Info.Text
			LabelTextLabel.TextColor3 = Info.Color
			LabelTextLabel.TextSize = 12.000
			LabelTextLabel.TextXAlignment = Enum.TextXAlignment.Left
			
			function insidelabel:Set(Info)
				Info.Text = Info.Text or "Label"
				Info.Color = Info.Color or Color3.fromRGB(223, 223, 223)
				
				LabelTextLabel.Text = Info.Text
				LabelTextLabel.TextColor3 = Info.Color
			end
			return insidelabel
		end
		
		function insidetab:CreateButton(Info)
			Info.Text = Info.Text or "Button"
			Info.Callback = Info.Callback or function() end
			
			local Button = Instance.new("ImageLabel")
			local ButtonTextLabel = Instance.new("TextLabel")
			local ButtonTextButton = Instance.new("TextButton")
			local ClickIcon = Instance.new("ImageLabel")
			
			Button.Name = "Button"
			Button.Parent = ItemContainer
			Button.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
			Button.BackgroundTransparency = 1.000
			Button.BorderSizePixel = 0
			Button.Position = UDim2.new(0, 0, 0.0833333358, 0)
			Button.Size = UDim2.new(0, 307, 0, 25)
			Button.Image = "rbxassetid://3570695787"
			Button.ImageColor3 = Color3.fromRGB(22, 22, 22)
			Button.ScaleType = Enum.ScaleType.Slice
			Button.SliceCenter = Rect.new(100, 100, 100, 100)
			Button.SliceScale = 0.030

			ButtonTextLabel.Name = "ButtonTextLabel"
			ButtonTextLabel.Parent = Button
			ButtonTextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ButtonTextLabel.BackgroundTransparency = 1.000
			ButtonTextLabel.Size = UDim2.new(0, 307, 0, 25)
			ButtonTextLabel.ZIndex = 2
			ButtonTextLabel.Font = Enum.Font.GothamBold
			ButtonTextLabel.Text = "Click Here"
			ButtonTextLabel.TextColor3 = Color3.fromRGB(223, 223, 223)
			ButtonTextLabel.TextSize = 12.000

			ButtonTextButton.Name = "ButtonTextButton"
			ButtonTextButton.Parent = Button
			ButtonTextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ButtonTextButton.BackgroundTransparency = 1.000
			ButtonTextButton.Size = UDim2.new(0, 307, 0, 25)
			ButtonTextButton.Font = Enum.Font.SourceSans
			ButtonTextButton.Text = ""
			ButtonTextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
			ButtonTextButton.TextSize = 14.000

			ClickIcon.Name = "ClickIcon"
			ClickIcon.Parent = Button
			ClickIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ClickIcon.BackgroundTransparency = 1.000
			ClickIcon.Position = UDim2.new(0.898999989, 0, 0.189999998, 0)
			ClickIcon.Size = UDim2.new(0, 14, 0, 14)
			ClickIcon.Image = "rbxassetid://7734010405"
		end
		
		function insidetab:CreateSwitch(Info)
			Info.Text = Info.Text or "Switch"
			
			local insideswitch = {}
			
			local Switch = Instance.new("ImageLabel")
			local SwitchTextLabel = Instance.new("TextLabel")
			local SwitchFrame = Instance.new("ImageLabel")
			local SwitchInnerButton = Instance.new("ImageLabel")
			local SwitchButton = Instance.new("TextButton")
			
			Switch.Name = "Switch"
			Switch.Parent = ItemContainer
			Switch.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
			Switch.BackgroundTransparency = 1.000
			Switch.Position = UDim2.new(0, 0, 0.166666672, 0)
			Switch.Size = UDim2.new(0, 307, 0, 25)
			Switch.Image = "rbxassetid://3570695787"
			Switch.ImageColor3 = Color3.fromRGB(22, 22, 22)
			Switch.ScaleType = Enum.ScaleType.Slice
			Switch.SliceCenter = Rect.new(100, 100, 100, 100)
			Switch.SliceScale = 0.030

			SwitchTextLabel.Name = "SwitchTextLabel"
			SwitchTextLabel.Parent = Switch
			SwitchTextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SwitchTextLabel.BackgroundTransparency = 1.000
			SwitchTextLabel.Position = UDim2.new(0.043650873, 0, 0, 0)
			SwitchTextLabel.Size = UDim2.new(0, 292, 0, 25)
			SwitchTextLabel.Font = Enum.Font.GothamBold
			SwitchTextLabel.Text = Info.Text
			SwitchTextLabel.TextColor3 = Color3.fromRGB(223, 223, 223)
			SwitchTextLabel.TextSize = 12.000
			SwitchTextLabel.TextXAlignment = Enum.TextXAlignment.Left

			SwitchFrame.Name = "SwitchFrame"
			SwitchFrame.Parent = Switch
			SwitchFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SwitchFrame.BackgroundTransparency = 1.000
			SwitchFrame.Position = UDim2.new(0.868913829, 0, 0.239999995, 0)
			SwitchFrame.Size = UDim2.new(0, 29, 0, 12)
			SwitchFrame.Image = "rbxassetid://3570695787"
			SwitchFrame.ImageColor3 = Color3.fromRGB(30, 30, 30)
			SwitchFrame.ScaleType = Enum.ScaleType.Slice
			SwitchFrame.SliceCenter = Rect.new(100, 100, 100, 100)

			SwitchInnerButton.Name = "SwitchInnerButton"
			SwitchInnerButton.Parent = SwitchFrame
			SwitchInnerButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SwitchInnerButton.BackgroundTransparency = 1.000
			SwitchInnerButton.Position = UDim2.new(-0.0333462358, 0, 0, 0)
			SwitchInnerButton.Size = UDim2.new(0, 12, 0, 12)
			SwitchInnerButton.Image = "rbxassetid://3570695787"
			SwitchInnerButton.ImageColor3 = Color3.fromRGB(223, 223, 223)
			SwitchInnerButton.ScaleType = Enum.ScaleType.Slice
			SwitchInnerButton.SliceCenter = Rect.new(100, 100, 100, 100)

			SwitchButton.Name = "SwitchButton"
			SwitchButton.Parent = SwitchFrame
			SwitchButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SwitchButton.BackgroundTransparency = 1.000
			SwitchButton.Size = UDim2.new(0, 29, 0, 12)
			SwitchButton.Font = Enum.Font.SourceSans
			SwitchButton.Text = ""
			SwitchButton.TextColor3 = Color3.fromRGB(0, 0, 0)
			SwitchButton.TextSize = 14.000
			
			function insideswitch:Set(Info)
				Info.Text = Info.Text
			end
			
			return insideswitch
		end
		
		return insidetab
	end
	return insidewindow
end
return library