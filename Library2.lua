local Blur = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Rain-Design/Public/main/Blur')))()
local UserInput = game:GetService('UserInputService')
local library = {}

function library:CreateWindow(Info)
    Info.ToggleKey = Info.ToggleKey or Enum.KeyCode.F4

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ScreenGui"
screenGui.Parent = game:GetService("CoreGui")

local mainFrame = Instance.new("Frame")
mainFrame.Name = "MainFrame"
mainFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
mainFrame.BackgroundTransparency = 1
mainFrame.Position = UDim2.fromScale(0.376, 0.26)
mainFrame.Size = UDim2.fromOffset(394, 319)
mainFrame.Parent = screenGui

local shadow = Instance.new("ImageLabel")
shadow.Name = "shadow"
shadow.Image = "rbxassetid://9313765853"
shadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
shadow.ScaleType = Enum.ScaleType.Slice
shadow.SliceCenter = Rect.new(45, 45, 45, 45)
shadow.SliceScale = 0.70
shadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
shadow.BackgroundTransparency = 1
shadow.Position = UDim2.fromScale(-0.0381, -0.0564)
shadow.Size = UDim2.fromOffset(433, 361)
shadow.ZIndex = -1
shadow.Parent = mainFrame

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
    
    dragify(mainFrame)

local uICorner = Instance.new("UICorner")
uICorner.Name = "UICorner"
uICorner.CornerRadius = UDim.new(0, 4)
uICorner.Parent = mainFrame

local tabFrame = Instance.new("Frame")
tabFrame.Name = "TabFrame"
tabFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 21)
tabFrame.BackgroundTransparency = 0.2
tabFrame.BorderSizePixel = 0
tabFrame.Position = UDim2.fromScale(-0.000263, -0.000188)
tabFrame.Size = UDim2.fromOffset(107, 319)

local uICorner1 = Instance.new("UICorner")
uICorner1.Name = "UICorner"
uICorner1.CornerRadius = UDim.new(0, 4)
uICorner1.Parent = tabFrame

local frame = Instance.new("Frame")
frame.Name = "Frame"
frame.BackgroundColor3 = Color3.fromRGB(20, 20, 21)
frame.BorderColor3 = Color3.fromRGB(39, 42, 48)
frame.BorderSizePixel = 0
frame.Position = UDim2.fromScale(0.932, 0)
frame.Size = UDim2.fromOffset(8, 319)
frame.Parent = tabFrame



local scrollingFrame = Instance.new("ScrollingFrame")
scrollingFrame.Name = "ScrollingFrame"
scrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
scrollingFrame.CanvasSize = UDim2.new()
scrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(138, 138, 138)
scrollingFrame.ScrollBarThickness = 0
scrollingFrame.Active = true
scrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
scrollingFrame.BackgroundTransparency = 1
scrollingFrame.BorderSizePixel = 0
scrollingFrame.Position = UDim2.fromScale(0, 0.132)
scrollingFrame.Size = UDim2.fromOffset(100, 277)

local uIListLayout = Instance.new("UIListLayout")
uIListLayout.Name = "UIListLayout"
uIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
uIListLayout.Parent = scrollingFrame

local textLabel1 = Instance.new("TextLabel")
textLabel1.Name = "TextLabel"
textLabel1.Font = Enum.Font.JosefinSans
textLabel1.Text = "Fall"
textLabel1.TextColor3 = Color3.fromRGB(255, 255, 255)
textLabel1.TextSize = 22
textLabel1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
textLabel1.BackgroundTransparency = 1
textLabel1.Position = UDim2.fromScale(0, 0.0251)
textLabel1.Size = UDim2.fromOffset(100, 34)
textLabel1.Parent = tabFrame

tabFrame.Parent = mainFrame

local insidewindow = {}

function insidewindow:CreateTab(Info)
    Info.Name = Info.Name or "New Tab"
    Info.Icon = Info.Icon or "rbxassetid://7733656100"
    
local tabButton = Instance.new("Frame")
tabButton.Name = "TabButton"
tabButton.BackgroundColor3 = Color3.fromRGB(108, 92, 218)
tabButton.BackgroundTransparency = 1
tabButton.BorderSizePixel = 0
tabButton.Size = UDim2.fromOffset(100, 26)

local textLabel = Instance.new("TextLabel")
textLabel.Name = "TextLabel"
textLabel.Font = Enum.Font.GothamBlack
textLabel.LineHeight = 0.9
textLabel.RichText = true
textLabel.Text = Info.Name
textLabel.TextColor3 = Color3.fromRGB(152, 152, 152)
textLabel.TextSize = 11
textLabel.TextXAlignment = Enum.TextXAlignment.Left
textLabel.BackgroundColor3 = Color3.fromRGB(161, 161, 161)
textLabel.BackgroundTransparency = 1
textLabel.BorderSizePixel = 0
textLabel.Position = UDim2.fromScale(0.3, 0)
textLabel.Size = UDim2.fromOffset(69, 26)
textLabel.Parent = tabButton

local imageLabel = Instance.new("ImageLabel")
imageLabel.Name = "ImageLabel"
imageLabel.Image = Info.Icon
imageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
imageLabel.BackgroundTransparency = 1
imageLabel.Position = UDim2.fromScale(0.07, 0.212)
imageLabel.ImageColor3 = Color3.fromRGB(152, 152, 152)
imageLabel.Size = UDim2.fromOffset(17, 17)
imageLabel.Parent = tabButton

local textButton = Instance.new("TextButton")
textButton.Name = "TextButton"
textButton.Font = Enum.Font.SourceSans
textButton.Text = ""
textButton.TextColor3 = Color3.fromRGB(0, 0, 0)
textButton.TextSize = 14
textButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
textButton.BackgroundTransparency = 1
textButton.Size = UDim2.fromOffset(100, 26)
textButton.Parent = tabButton

tabButton.Parent = scrollingFrame

scrollingFrame.Parent = tabFrame

local itemsFrame = Instance.new("Frame")
itemsFrame.Name = "ItemsFrame"
itemsFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 21)
itemsFrame.BorderSizePixel = 0
itemsFrame.Position = UDim2.fromScale(0.268, -6.54e-05)
itemsFrame.Size = UDim2.fromOffset(289, 319)

local uICorner2 = Instance.new("UICorner")
uICorner2.Name = "UICorner"
uICorner2.CornerRadius = UDim.new(0, 4)
uICorner2.Parent = itemsFrame

local scrollingFrame1 = Instance.new("ScrollingFrame")
scrollingFrame1.Name = "ScrollingFrame"
scrollingFrame1.AutomaticCanvasSize = Enum.AutomaticSize.Y
scrollingFrame1.CanvasSize = UDim2.new()
scrollingFrame1.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
scrollingFrame1.ScrollBarThickness = 0
scrollingFrame1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
scrollingFrame1.BackgroundTransparency = 1
scrollingFrame1.BorderSizePixel = 0
scrollingFrame1.Position = UDim2.fromScale(-0.0198, 0)
scrollingFrame1.Size = UDim2.fromOffset(294, 319)

local uIListLayout1 = Instance.new("UIListLayout")
uIListLayout1.Name = "UIListLayout"
uIListLayout1.Padding = UDim.new(0, 5)
uIListLayout1.SortOrder = Enum.SortOrder.LayoutOrder
uIListLayout1.Parent = scrollingFrame1

local uIPadding = Instance.new("UIPadding")
uIPadding.Name = "UIPadding"
uIPadding.PaddingLeft = UDim.new(0, 6)
uIPadding.PaddingTop = UDim.new(0, 5)
uIPadding.Parent = scrollingFrame1

scrollingFrame1.Parent = itemsFrame

itemsFrame.Parent = mainFrame

textButton.MouseButton1Click:Connect(function()
			for i,v in next,mainFrame:GetChildren() do
				if v.Name == "ItemsFrame" then
					v.Visible = false
				end
			end
			itemsFrame.Visible = true
			for i,v in next, scrollingFrame:GetChildren() do
				if v.Name == "TabButton" then
					v.Transparency = 1
					v.TextLabel.TextColor3 = Color3.fromRGB(152, 152, 152)
				    v.ImageLabel.ImageColor3 = Color3.fromRGB(152,152,152)
				end
			end
			tabButton.Transparency = 0
			tabButton.TextLabel.TextColor3 = Color3.fromRGB(255,255,255)
			imageLabel.ImageColor3 = Color3.fromRGB(255, 255, 255)
end)
	
	local insidetab = {}
	
	function insidetab:Show()
			for i,v in next,mainFrame:GetChildren() do
				if v.Name == "ItemsFrame" then
					v.Visible = false
				end
			end
			itemsFrame.Visible = true
			tabButton.Transparency = 0
			tabButton.TextLabel.TextColor3 = Color3.fromRGB(255,255,255)
			imageLabel.ImageColor3 = Color3.fromRGB(255, 255, 255)
		end
	
	function insidetab:CreateLabel(Info)
	    Info.Text = Info.Text or "New Label"
	    Info.Color = Info.Color or Color3.fromRGB(255,255,255)
	    
	    local label = Instance.new("Frame")
label.Name = "Label"
label.BackgroundColor3 = Color3.fromRGB(28, 28, 30)
label.BorderSizePixel = 0
label.Size = UDim2.fromOffset(283, 28)

local uICorner3 = Instance.new("UICorner")
uICorner3.Name = "UICorner"
uICorner3.CornerRadius = UDim.new(0, 3)
uICorner3.Parent = label

local labelText = Instance.new("TextLabel")
labelText.Name = "LabelText"
labelText.Font = Enum.Font.GothamBold
labelText.Text = Info.Text
labelText.TextColor3 = Info.Color
labelText.TextSize = 12
labelText.TextXAlignment = Enum.TextXAlignment.Left
labelText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
labelText.BackgroundTransparency = 1
labelText.Position = UDim2.fromScale(0.0323, 0)
labelText.Size = UDim2.fromOffset(273, 28)
labelText.Parent = label

label.Parent = scrollingFrame1
	end

function insidetab:CreateButton(Info)
    Info.Text = Info.Text or "New Button"
    Info.Callback = Info.Callback or function() end
    
    local button = Instance.new("Frame")
button.Name = "Button"
button.BackgroundColor3 = Color3.fromRGB(28, 28, 30)
button.BorderSizePixel = 0
button.Size = UDim2.fromOffset(283, 28)

local uICorner4 = Instance.new("UICorner")
uICorner4.Name = "UICorner"
uICorner4.CornerRadius = UDim.new(0, 3)
uICorner4.Parent = button

local buttonText = Instance.new("TextLabel")
buttonText.Name = "ButtonText"
buttonText.Font = Enum.Font.GothamBold
buttonText.Text = Info.Text
buttonText.TextColor3 = Color3.fromRGB(235, 235, 235)
buttonText.TextSize = 12
buttonText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
buttonText.BackgroundTransparency = 1
buttonText.Position = UDim2.fromScale(0.00606, 0)
buttonText.Size = UDim2.fromOffset(281, 28)
buttonText.Parent = button

local buttonIcon = Instance.new("ImageLabel")
buttonIcon.Name = "ButtonIcon"
buttonIcon.Image = "http://www.roblox.com/asset/?id=6034837797"
buttonIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
buttonIcon.BackgroundTransparency = 1
buttonIcon.Position = UDim2.fromScale(0.915, 0.179)
buttonIcon.Size = UDim2.fromOffset(17, 17)
buttonIcon.Parent = button

local textButton1 = Instance.new("TextButton")
textButton1.Name = "TextButton"
textButton1.Font = Enum.Font.SourceSans
textButton1.Text = ""
textButton1.TextColor3 = Color3.fromRGB(0, 0, 0)
textButton1.TextSize = 14
textButton1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
textButton1.BackgroundTransparency = 1
textButton1.Position = UDim2.fromScale(0.00606, 0)
textButton1.Size = UDim2.fromOffset(280, 29)
textButton1.Parent = button

button.Parent = scrollingFrame1

textButton1.InputBegan:Connect(function(Input)
				if Input.UserInputType == Enum.UserInputType.MouseButton1 then
					pcall(Info.Callback)
				end
			end)
end

function insidetab:CreateSwitch(Info)
    Info.Text = Info.Text or "New Switch"
    Info.Callback = Info.Callback or function() end
    
local normal_Switch = Instance.new("Frame")
normal_Switch.Name = "Normal Switch"
normal_Switch.BackgroundColor3 = Color3.fromRGB(28, 28, 30)
normal_Switch.BorderSizePixel = 0
normal_Switch.Size = UDim2.fromOffset(283, 28)
normal_Switch.Parent = scrollingFrame1

local uICorner = Instance.new("UICorner")
uICorner.Name = "UICorner"
uICorner.CornerRadius = UDim.new(0, 3)
uICorner.Parent = normal_Switch

local normalSwitchText = Instance.new("TextLabel")
normalSwitchText.Name = "NormalSwitchText"
normalSwitchText.Font = Enum.Font.GothamBold
normalSwitchText.Text = Info.Text
normalSwitchText.TextColor3 = Color3.fromRGB(235, 235, 235)
normalSwitchText.TextSize = 12
normalSwitchText.TextXAlignment = Enum.TextXAlignment.Left
normalSwitchText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
normalSwitchText.BackgroundTransparency = 1
normalSwitchText.Position = UDim2.fromScale(0.0323, 0)
normalSwitchText.Size = UDim2.fromOffset(273, 28)
normalSwitchText.Parent = normal_Switch

local framemain = Instance.new("Frame")
framemain.Name = "Frame"
framemain.BackgroundColor3 = Color3.fromRGB(20, 20, 21)
framemain.BorderSizePixel = 0
framemain.Position = UDim2.fromScale(0.845, 0.286)
framemain.Size = UDim2.fromOffset(31, 14)

local uICorner1 = Instance.new("UICorner")
uICorner1.Name = "UICorner"
uICorner1.CornerRadius = UDim.new(0, 100)
uICorner1.Parent = framemain

local innerframe = Instance.new("Frame")
innerframe.Name = "Frame"
innerframe.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
innerframe.Position = UDim2.fromScale(0.08, 0.112)
innerframe.Size = UDim2.fromOffset(10, 10)

local uICorner2 = Instance.new("UICorner")
uICorner2.Name = "UICorner"
uICorner2.CornerRadius = UDim.new(100, 100)
uICorner2.Parent = innerframe

innerframe.Parent = framemain

framemain.Parent = normal_Switch

local sliderButton = Instance.new("TextButton")
sliderButton.Name = "SliderButton"
sliderButton.Font = Enum.Font.SourceSans
sliderButton.Text = ""
sliderButton.TextColor3 = Color3.fromRGB(0, 0, 0)
sliderButton.TextSize = 14
sliderButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
sliderButton.BackgroundTransparency = 1
sliderButton.Position = UDim2.fromScale(0.845, 0.393)
sliderButton.Size = UDim2.fromOffset(31, 11)
sliderButton.Parent = normal_Switch

local enabled = false
			sliderButton.InputBegan:Connect(function(Input)
				if Input.UserInputType == Enum.UserInputType.MouseButton1 then
					enabled = not enabled
					pcall(Info.Callback,enabled)
					if enabled then
                        local color1tween = game:GetService("TweenService"):Create(framemain, TweenInfo.new(.2), {BackgroundColor3 = Color3.fromRGB(108, 92, 218)})
						local positiontween = game:GetService("TweenService"):Create(innerframe, TweenInfo.new(.12), {Position = UDim2.new(0.628, 0,0.112, 0)})
						positiontween:Play()
                        color1tween:Play()
					else
                        local color1tween = game:GetService("TweenService"):Create(framemain, TweenInfo.new(.2), {BackgroundColor3 = Color3.fromRGB(20, 20, 21)})
						local positiontween = game:GetService("TweenService"):Create(innerframe, TweenInfo.new(.12), {Position = UDim2.new(0.08, 0,0.112, 0)})
						positiontween:Play()
                        color1tween:Play()
					end
				end
			end)

end

return insidetab
end

Blur:BindFrame(mainFrame,{Transparency = 0.6, Material = Enum.Material.Glass, Color = Color3.fromRGB(13, 13, 13)})

local visible = true
UserInput.InputBegan:Connect(function(input)
if input.KeyCode == Info.ToggleKey then
visible = not visible
screenGui.Enabled = not screenGui.Enabled
if visible then
Blur:BindFrame(mainFrame,{Transparency = 0.6, Material = Enum.Material.Glass, Color = Color3.fromRGB(13, 13, 13)})
else
Blur:UnbindFrame(mainFrame)
end
end
end)
return insidewindow
end
return library
