local library = {}

if Colorless then
	game:GetService("CoreGui").Colorless:Remove()
end
	
getgenv().Colorless = true

local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("ImageLabel")

ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.Name = "Colorless"

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
MainFrame.SliceScale = 0.070

function dragify(Frame)
    dragToggle = nil
    dragSpeed = .05
    dragInput = nil
    dragStart = nil
    dragPos = nil
    
    function updateInput(input)
    Delta = input.Position - dragStart
    Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
    game:GetService("TweenService"):Create(Frame, TweenInfo.new(dragSpeed), {Position = Position}):Play()
    end
    
    Frame.InputBegan:Connect(function(input)
    if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
    dragToggle = true
    dragStart = input.Position
    startPos = Frame.Position
    input.Changed:Connect(function()
    if (input.UserInputState == Enum.UserInputState.End) then
    dragToggle = false
    end
    end)
    end
    end)
    
    Frame.InputChanged:Connect(function(input)
    if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
    dragInput = input
    end
    end)
    
    game:GetService("UserInputService").InputChanged:Connect(function(input)
    if (input == dragInput and dragToggle) then
    updateInput(input)
    end
    end)
    end
    
    dragify(MainFrame)

function library:CreateWindow(Info)
	Info.Name = Info.Name or "Window"
	
	local insidewindow = {}
	
	local TabButtonContainer = Instance.new("ImageLabel")
	local TabUIPadding = Instance.new("UIPadding")
	local TabScrollingFrame = Instance.new("ScrollingFrame")
	local TabUIListLayout = Instance.new("UIListLayout")
	local Topbar = Instance.new("ImageLabel")
	local Colorless = Instance.new("TextLabel")
	local Divider1 = Instance.new("Frame")
	
	Topbar.Name = "Topbar"
	Topbar.Parent = MainFrame
	Topbar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	Topbar.BackgroundTransparency = 1.000
	Topbar.Size = UDim2.new(0, 422, 0, 42)
	Topbar.Image = "rbxassetid://3570695787"
	Topbar.ImageColor3 = Color3.fromRGB(24,24,24)
	Topbar.ScaleType = Enum.ScaleType.Slice
	Topbar.SliceCenter = Rect.new(100, 100, 100, 100)
	Topbar.SliceScale = 0.070

	Colorless.Name = "Colorless"
	Colorless.Parent = Topbar
	Colorless.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Colorless.BackgroundTransparency = 1.000
	Colorless.Position = UDim2.new(0.0411765203, 0, 0, 0)
	Colorless.Size = UDim2.new(0, 73, 0, 42)
	Colorless.Font = Enum.Font.GothamBlack
	Colorless.Text = Info.Name
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
	TabButtonContainer.SliceScale = 0.070

	Divider1.Parent = TabButtonContainer
	Divider1.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
	Divider1.BorderSizePixel = 0
	Divider1.Position = UDim2.new(0.993945181, 0, 0, 0)
	Divider1.Size = UDim2.new(0, 3, 0, 310)

	TabScrollingFrame.Name = "TabScrollingFrame"
	TabScrollingFrame.Parent = TabButtonContainer
	TabScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TabScrollingFrame.BackgroundTransparency = 1.000
	TabScrollingFrame.Position = UDim2.new(0, 0, 0, 0)
	TabScrollingFrame.Selectable = false
	TabScrollingFrame.Size = UDim2.new(0, 109, 0, 307)
	TabScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
	TabScrollingFrame.ScrollBarThickness = 4

	TabUIPadding.Parent = TabScrollingFrame
	TabUIPadding.PaddingTop = UDim.new(0, 6)

	TabUIListLayout.Name = "TabUIListLayout"
	TabUIListLayout.Parent = TabScrollingFrame
	TabUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	TabUIListLayout.Padding = UDim.new(0, 4)
	
	function insidewindow:CreateTab(Info)
		Info.Name = Info.Name or "Tab"
		Info.Icon = Info.Icon or "rbxassetid://7072717697"
		
		local insidetab = {}
		
		local TabButton = Instance.new("Frame")
		local TabTextLabel = Instance.new("TextLabel")
		local TabTextButton = Instance.new("TextButton")
		local ImageLabel = Instance.new("ImageLabel")
		local ItemContainer = Instance.new("ScrollingFrame")
		local ItemContainterUIListLayout = Instance.new("UIListLayout")
		local ItemContainterUIPadding = Instance.new("UIPadding")
		
		TabButton.Name = "TabButton"
		TabButton.Parent = TabScrollingFrame
		TabButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TabButton.BackgroundTransparency = 1.000
		TabButton.Size = UDim2.new(0, 109, 0, 20)

		TabTextLabel.Name = "TabTextLabel"
		TabTextLabel.Parent = TabButton
		TabTextLabel.BackgroundColor3 = Color3.fromRGB(167, 167, 167)
		TabTextLabel.BackgroundTransparency = 1.000
		TabTextLabel.Position = UDim2.new(0.315046102, 0, 0.0444458015, 0)
		TabTextLabel.Size = UDim2.new(0, 68, 0, 19)
		TabTextLabel.Font = Enum.Font.GothamBold
		TabTextLabel.Text = Info.Name
		TabTextLabel.TextColor3 = Color3.fromRGB(131, 131, 131)
		TabTextLabel.TextSize = 11.000
		TabTextLabel.TextXAlignment = Enum.TextXAlignment.Left

		TabTextButton.Name = "TabTextButton"
		TabTextButton.Parent = TabButton
		TabTextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TabTextButton.BackgroundTransparency = 1.000
		TabTextButton.Position = UDim2.new(0.349999994, 0, 0, 0)
		TabTextButton.Size = UDim2.new(0, 74, 0, 19)
		TabTextButton.Font = Enum.Font.SourceSans
		TabTextButton.Text = ""
		TabTextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
		TabTextButton.TextSize = 14.000

		ImageLabel.Parent = TabButton
		ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ImageLabel.BackgroundTransparency = 1.000
		ImageLabel.Position = UDim2.new(0.0942201912, 0, 0, 0)
		ImageLabel.Size = UDim2.new(0, 17, 0, 17)
		ImageLabel.Image = Info.Icon
		
		ItemContainer.Name = "ItemContainer"
		ItemContainer.Parent = MainFrame
		ItemContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ItemContainer.BackgroundTransparency = 1.000
		ItemContainer.BorderSizePixel = 0
		ItemContainer.Position = UDim2.new(0.258293837, 0, 0.119, 0)
		ItemContainer.Size = UDim2.new(0, 313, 0, 309)
		ItemContainer.CanvasSize = UDim2.new(0, 0, 0, 0)
		ItemContainer.ScrollBarThickness = 0
		
		ItemContainterUIListLayout.Name = "ItemContainterUIListLayout"
		ItemContainterUIListLayout.Parent = ItemContainer
		ItemContainterUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

		ItemContainterUIPadding.Name = "ItemContainterUIPadding"
		ItemContainterUIPadding.Parent = ItemContainer
		ItemContainterUIPadding.PaddingLeft = UDim.new(0, 6)
		
		TabTextButton.MouseButton1Click:Connect(function()
			for i,v in next,MainFrame:GetChildren() do
				if v.Name == "ItemContainer" then
					v.Visible = false
				end
			end
			for i,t in next, TabScrollingFrame:GetChildren() do
				if t.Name == "TabButton" then
					t.TabTextLabel.TextColor3 = Color3.fromRGB(131, 131, 131)
					ImageLabel.ImageColor3 = Color3.fromRGB(131,131,131)
				end
				ImageLabel.ImageColor3 = Color3.fromRGB(223,223,223)
				local texttween = game:GetService("TweenService"):Create(TabTextLabel, TweenInfo.new(.2), {TextColor3 = Color3.fromRGB(223,223,223)})
				texttween:Play()
			end
			ItemContainer.Visible = true
		end)

		function insidetab:Show()
			for i,v in next,MainFrame:GetChildren() do
				if v.Name == "ItemContainer" then
					v.Visible = false
				end
			end
			ItemContainer.Visible = true
			local showtween = game:GetService("TweenService"):Create(TabTextLabel, TweenInfo.new(.2), {TextColor3 = Color3.fromRGB(223,223,223)})
			ImageLabel.ImageColor3 = Color3.fromRGB(223,223,223)
			showtween:Play()
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
			ButtonTextLabel.Text = Info.Text
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
			
			ButtonTextButton.InputBegan:Connect(function(Input)
				if Input.UserInputType == Enum.UserInputType.MouseButton1 then
					pcall(Info.Callback)
				end
			end)
		end
		
		function insidetab:CreateSwitch(Info)
			Info.Text = Info.Text or "Switch"
			Info.Callback = Info.Callback or function() end
			
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
			
			local enabled = false
			SwitchButton.InputBegan:Connect(function(Input)
				if Input.UserInputType == Enum.UserInputType.MouseButton1 then
					enabled = not enabled
					pcall(Info.Callback,enabled)
					if enabled then
                        local colortween = game:GetService("TweenService"):Create(SwitchInnerButton, TweenInfo.new(.12), {ImageColor3 = Color3.fromRGB(14, 171, 255)})
						local positiontween = game:GetService("TweenService"):Create(SwitchInnerButton, TweenInfo.new(.12), {Position = UDim2.new(0.553, 0,0, 0)}) -- {-0.033, 0},{0, 0}
						positiontween:Play()
                        colortween:Play()
					else
                        local colortween = game:GetService("TweenService"):Create(SwitchInnerButton, TweenInfo.new(.12), {ImageColor3 = Color3.fromRGB(223,223,223)})
						local positiontween = game:GetService("TweenService"):Create(SwitchInnerButton, TweenInfo.new(.12), {Position = UDim2.new(-0.033, 0,0, 0)})
						positiontween:Play()
                        colortween:Play()
					end
				end
			end)
			
			function insideswitch:Set(Bool)
                Bool = Bool or false

                enabled = Bool
                pcall(Info.Callback,enabled)
					if enabled then
						local colortween = game:GetService("TweenService"):Create(SwitchInnerButton, TweenInfo.new(.12), {ImageColor3 = Color3.fromRGB(14, 171, 255)})
						local positiontween = game:GetService("TweenService"):Create(SwitchInnerButton, TweenInfo.new(.12), {Position = UDim2.new(0.553, 0,0, 0)}) -- {-0.033, 0},{0, 0}
						positiontween:Play()
                        colortween:Play()
					else
						local colortween = game:GetService("TweenService"):Create(SwitchInnerButton, TweenInfo.new(.12), {ImageColor3 = Color3.fromRGB(223,223,223)})
						local positiontween = game:GetService("TweenService"):Create(SwitchInnerButton, TweenInfo.new(.12), {Position = UDim2.new(-0.033, 0,0, 0)})
						positiontween:Play()
                        colortween:Play()
					end
			end
			
			return insideswitch
		end
		
        function insidetab:CreateDropdown(Info)
            Info.Text = Info.Text or "Dropdown"
            Info.Callback = Info.Callback or function() end

            local insidedropdown = {}

            local Dropdown = Instance.new("ImageLabel")
            local DropdownTextLabel = Instance.new("TextLabel")
            local DropdownImageLabel = Instance.new("ImageLabel")
            local DropdownImageButton = Instance.new("TextButton")
            local DropdownContainer = Instance.new("ImageLabel")
			local DropdownScrollingFrame = Instance.new("ScrollingFrame")
            local DropdownUIListLayout = Instance.new("UIListLayout")

            Dropdown.Name = "Dropdown"
            Dropdown.Parent = ItemContainer
            Dropdown.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
            Dropdown.BackgroundTransparency = 1.000
            Dropdown.Position = UDim2.new(0, 0, 0.25, 0)
            Dropdown.Size = UDim2.new(0, 307, 0, 25)
            Dropdown.Image = "rbxassetid://3570695787"
            Dropdown.ImageColor3 = Color3.fromRGB(22, 22, 22)
            Dropdown.ScaleType = Enum.ScaleType.Slice
            Dropdown.SliceCenter = Rect.new(100, 100, 100, 100)
            Dropdown.SliceScale = 0.030

            DropdownTextLabel.Name = "DropdownTextLabel"
            DropdownTextLabel.Parent = Dropdown
            DropdownTextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DropdownTextLabel.BackgroundTransparency = 1.000
            DropdownTextLabel.Position = UDim2.new(0.043650873, 0, 0, 0)
            DropdownTextLabel.Size = UDim2.new(0, 292, 0, 25)
            DropdownTextLabel.Font = Enum.Font.GothamBold
            DropdownTextLabel.Text = Info.Text
            DropdownTextLabel.TextColor3 = Color3.fromRGB(223, 223, 223)
            DropdownTextLabel.TextSize = 12.000
            DropdownTextLabel.TextXAlignment = Enum.TextXAlignment.Left

            DropdownImageLabel.Name = "DropdownImageLabel"
            DropdownImageLabel.Parent = Dropdown
            DropdownImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DropdownImageLabel.BackgroundTransparency = 1.000
            DropdownImageLabel.Position = UDim2.new(0.898876429, 0, 0.200000003, 0)
            DropdownImageLabel.Selectable = true
            DropdownImageLabel.Size = UDim2.new(0, 14, 0, 14)
            DropdownImageLabel.Image = "rbxassetid://7072706703"

            DropdownImageButton.Name = "DropdownImageButton"
            DropdownImageButton.Parent = DropdownImageLabel
            DropdownImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DropdownImageButton.BackgroundTransparency = 1.000
            DropdownImageButton.Size = UDim2.new(0, 14, 0, 14)
            DropdownImageButton.Font = Enum.Font.SourceSans
            DropdownImageButton.Text = ""
            DropdownImageButton.TextColor3 = Color3.fromRGB(0, 0, 0)
            DropdownImageButton.TextSize = 14.000

            DropdownContainer.Name = "DropdownContainer"
            DropdownContainer.Parent = Dropdown
            DropdownContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DropdownContainer.BackgroundTransparency = 1.000
            DropdownContainer.Position = UDim2.new(0, 0, 1, 0)
            DropdownContainer.Size = UDim2.new(0, 307, 0, 0) -- UDim2.new(0, 307, 0, 25)
            DropdownContainer.ZIndex = 3
            DropdownContainer.Image = "rbxassetid://3570695787"
            DropdownContainer.ImageColor3 = Color3.fromRGB(22, 22, 22)
            DropdownContainer.ScaleType = Enum.ScaleType.Slice
            DropdownContainer.SliceCenter = Rect.new(100, 100, 100, 100)
            DropdownContainer.SliceScale = 0.030

			DropdownScrollingFrame.Parent = DropdownContainer
			DropdownScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropdownScrollingFrame.BackgroundTransparency = 1.000
			DropdownScrollingFrame.Size = UDim2.new(0, 307, 0, 0)
			DropdownScrollingFrame.ZIndex = 3
			DropdownScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
			DropdownScrollingFrame.BorderSizePixel = 0
			DropdownScrollingFrame.AutomaticCanvasSize = "Y"
			DropdownScrollingFrame.ScrollBarThickness = 4
			DropdownScrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(14, 171, 255)
			DropdownScrollingFrame.VerticalScrollBarInset = Enum.ScrollBarInset.ScrollBar

            DropdownUIListLayout.Name = "DropdownUIListLayout"
            DropdownUIListLayout.Parent = DropdownScrollingFrame
            DropdownUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

			local SizeY = 0

            local opened = false
			DropdownImageButton.InputBegan:Connect(function(Input)
				if Input.UserInputType == Enum.UserInputType.MouseButton1 then
					opened = not opened
					if opened then
						for i,v in pairs(DropdownScrollingFrame:GetChildren()) do
							if v.Name == "DropdownButton" then
								v.Visible = true
							end
						end
                        local rotationtween = game:GetService("TweenService"):Create(DropdownImageLabel, TweenInfo.new(.12), {Rotation = -90})
						local sizetween = game:GetService("TweenService"):Create(DropdownContainer, TweenInfo.new(.09), {Size = UDim2.new(0, 307, 0, SizeY)})
						rotationtween:Play()
                        sizetween:Play()
					else
						for i,v in pairs(DropdownScrollingFrame:GetChildren()) do
							if v.Name == "DropdownButton" then
								v.Visible = false
							end
						end
                        local rotationtween = game:GetService("TweenService"):Create(DropdownImageLabel, TweenInfo.new(.12), {Rotation = 0})
						local sizetween = game:GetService("TweenService"):Create(DropdownContainer, TweenInfo.new(.09), {Size = UDim2.new(0, 307, 0, 0)})
						rotationtween:Play()
                        sizetween:Play()
					end
				end
			end)

            function insidedropdown:Add(text)
                text = text or "Dropdown Button"
				
				if SizeY < 100 then
				SizeY = SizeY + 25
				DropdownScrollingFrame.Size = UDim2.new(0, 307, 0, SizeY)
				end
            
				local DropdownButton = Instance.new("TextButton")

                DropdownButton.Name = "DropdownButton"
                DropdownButton.Parent = DropdownScrollingFrame
                DropdownButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                DropdownButton.BackgroundTransparency = 1.000
                DropdownButton.Size = UDim2.new(0, 307, 0, 25)
                DropdownButton.ZIndex = 3
                DropdownButton.Font = Enum.Font.GothamBold
				DropdownButton.Visible = false
                DropdownButton.Text = text
                DropdownButton.TextColor3 = Color3.fromRGB(223, 223, 223)
                DropdownButton.TextSize = 11.000

                DropdownButton.MouseEnter:Connect(function()
                    local tween = game:GetService("TweenService"):Create(DropdownButton, TweenInfo.new(.12), {TextColor3 = Color3.fromRGB(14, 171, 255)})
                    tween:Play()
                    tween.Completed:Wait()
                end)

                DropdownButton.MouseLeave:Connect(function()
                    local tween = game:GetService("TweenService"):Create(DropdownButton, TweenInfo.new(.12), {TextColor3 = Color3.fromRGB(223, 223, 223)})
                    tween:Play()
                    tween.Completed:Wait()
                end)

                DropdownButton.InputBegan:Connect(function(Input)
                    if Input.UserInputType == Enum.UserInputType.MouseButton1 then
						for i,v in pairs(DropdownScrollingFrame:GetChildren()) do
							if v.Name == "DropdownButton" then
								v.Visible = false
							end
						end
                        opened = false
						DropdownTextLabel.Text = text
                        local rotationtween = game:GetService("TweenService"):Create(DropdownImageLabel, TweenInfo.new(.12), {Rotation = 0})
						local sizetween = game:GetService("TweenService"):Create(DropdownContainer, TweenInfo.new(.09), {Size = UDim2.new(0, 307, 0, 0)})
						sizetween:Play()
                        rotationtween:Play()
                        pcall(Info.Callback,text)
                    end
                end)
            end

			function insidedropdown:Clear()
				for i,v in pairs(DropdownScrollingFrame:GetChildren()) do
					if v.Name == "DropdownButton" then
						v:Destroy()
			    	end
					DropdownScrollingFrame.Size = UDim2.new(0, 307, 0, 0)
				end
			end

            return insidedropdown
        end
		
		return insidetab
	end
	return insidewindow
end
return library
