local library = {}
local TweenService = game:GetService("TweenService")

function library:CreateWindow(Info)
Info.Name = Info.Name or "New Window" 
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("ImageLabel")
local TabButtonContainer = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")
local Gradient = Instance.new("ImageLabel")
local UIGradient = Instance.new("UIGradient")
local TextButton = Instance.new("TextButton")
local Frame_3 = Instance.new("ImageLabel")
local UIPadding = Instance.new("UIPadding")
local TextLabel_2 = Instance.new("TextLabel")
local Gradient_2 = Instance.new("ImageLabel")
local UIGradient_2 = Instance.new("UIGradient")
local TextButton_2 = Instance.new("TextButton")
local Divider = Instance.new("Frame")
local Close = Instance.new("Frame")
local Divider_2 = Instance.new("Frame")
local TextLabel_3 = Instance.new("TextLabel")
local TextButton_3 = Instance.new("TextButton")
local ContainerBackground = Instance.new("ImageLabel")
local UIListLayout = Instance.new("UIListLayout")
local DescriptionLabel = Instance.new("Frame")
local UIPadding_2 = Instance.new("UIPadding")
local Toggle = Instance.new("Frame")
local TextLabel_6 = Instance.new("TextLabel")
local Frame_4 = Instance.new("ImageLabel")
local CheckIcon = Instance.new("ImageLabel")
local TextButton_5 = Instance.new("TextButton")
local Toggle_2 = Instance.new("Frame")
local TextLabel_7 = Instance.new("TextLabel")
local Frame_5 = Instance.new("ImageLabel")
local CheckIcon_2 = Instance.new("ImageLabel")
local TextButton_6 = Instance.new("TextButton")
local TextLabel_8 = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game:GetService("CoreGui")

Frame.Name = "Frame"
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.Position = UDim2.new(0.418260336, 0, 0.299386501, 0)
Frame.Size = UDim2.new(0, 459, 0, 326)
Frame.ClipsDescendants = true
Frame.Image = "rbxassetid://3570695787"
Frame.ImageColor3 = Color3.fromRGB(22, 24, 25)
Frame.ScaleType = Enum.ScaleType.Slice
Frame.SliceCenter = Rect.new(100, 100, 100, 100)
Frame.SliceScale = 0.040

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
    
    dragify(Frame)


TabButtonContainer.Name = "TabButtonContainer"
TabButtonContainer.Parent = Frame
TabButtonContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TabButtonContainer.BackgroundTransparency = 1.000
TabButtonContainer.Position = UDim2.new(0.0149253728, 0, 0.113496929, 0)
TabButtonContainer.Size = UDim2.new(0, 162, 0, 282)
TabButtonContainer.Image = "rbxassetid://3570695787"
TabButtonContainer.ImageColor3 = Color3.fromRGB(31, 35, 38) -- Color3.fromRGB(39, 39, 39)
TabButtonContainer.ScaleType = Enum.ScaleType.Slice
TabButtonContainer.SliceCenter = Rect.new(100, 100, 100, 100)
TabButtonContainer.SliceScale = 0.030


Divider.Name = "Divider"
Divider.Parent = Frame
Divider.BackgroundColor3 = Color3.fromRGB(31, 35, 38)
Divider.BorderSizePixel = 0
Divider.Position = UDim2.new(0, 0, 0.0858895704, 0)
Divider.Size = UDim2.new(0, 459, 0, 2)

Close.Name = "Close"
Close.Parent = Frame
Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Close.BackgroundTransparency = 1.000
Close.BorderSizePixel = 0
Close.Size = UDim2.new(0, 36, 0, 28)

Divider_2.Name = "Divider"
Divider_2.Parent = Close
Divider_2.BackgroundColor3 = Color3.fromRGB(31, 35, 38)
Divider_2.BorderSizePixel = 0
Divider_2.Position = UDim2.new(1, 0, 0, 0)
Divider_2.Size = UDim2.new(0, 2, 0, 28)

TextLabel_3.Parent = Close
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.Size = UDim2.new(0, 36, 0, 28)
TextLabel_3.Font = Enum.Font.Cartoon
TextLabel_3.Text = "<"
TextLabel_3.TextColor3 = Color3.fromRGB(221, 222, 233)
TextLabel_3.TextSize = 20.000

TextButton_3.Parent = TextLabel_3
TextButton_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_3.BackgroundTransparency = 1.000
TextButton_3.Size = UDim2.new(0, 38, 0, 30)
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = ""
TextButton_3.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.TextSize = 14.000

TextLabel_8.Parent = Frame
TextLabel_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_8.BackgroundTransparency = 1.000
TextLabel_8.Position = UDim2.new(0.113289759, 0, 0, 0)
TextLabel_8.Size = UDim2.new(0, 43, 0, 28)
TextLabel_8.Font = Enum.Font.GothamBold
TextLabel_8.Text = Info.Name
TextLabel_8.TextXAlignment = "Left"
TextLabel_8.TextColor3 = Color3.fromRGB(221, 222, 233)
TextLabel_8.TextSize = 14.000

local visible = true
TextButton_3.InputBegan:Connect(function(Input)
    if Input.UserInputType == Enum.UserInputType.MouseButton1 then
        if visible then
            visible = false
            for i,v in pairs(Frame:GetChildren()) do
                v.Visible = false
            end
            Close.Visible = true
            TextLabel_8.Visible = true
            local tween = game:GetService("TweenService"):Create(Frame, TweenInfo.new(.3), {Size = UDim2.new(0,459,0,30)})
            tween:Play()
            tween.Completed:Wait()
        else
            visible = true
            for i,v in pairs(Frame:GetChildren()) do
                v.Visible = true
                end
            local tween = game:GetService("TweenService"):Create(Frame, TweenInfo.new(.3), {Size = UDim2.new(0,459,0,326)})
            tween:Play()
            tween.Completed:Wait()
        end
    end
end)

ContainerBackground.Name = "ContainerBackground"
ContainerBackground.Parent = Frame
ContainerBackground.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ContainerBackground.BackgroundTransparency = 1.000
ContainerBackground.BorderSizePixel = 0
ContainerBackground.Position = UDim2.new(0.383442253, 0, 0.113496929, 0)
ContainerBackground.Size = UDim2.new(0, 276, 0, 282)
ContainerBackground.Image = "rbxassetid://3570695787"
ContainerBackground.ImageColor3 = Color3.fromRGB(31, 35, 38)
ContainerBackground.ScaleType = Enum.ScaleType.Slice
ContainerBackground.SliceCenter = Rect.new(100, 100, 100, 100)
ContainerBackground.SliceScale = 0.030

UIListLayout.Parent = TabButtonContainer
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 3)

UIPadding.Parent = TabButtonContainer
UIPadding.PaddingLeft = UDim.new(0, 4)
UIPadding.PaddingTop = UDim.new(0, 6)

local InsideWindow = {}

function InsideWindow:CreateTab(Info)
Info.Name = Info.Name or "New Tab"

local InsideTab = {}

local TabContainer = Instance.new("ScrollingFrame")
local TabButton = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")
local Gradient = Instance.new("ImageLabel")
local UIListLayout_2 = Instance.new("UIListLayout")
local UIPadding_2 = Instance.new("UIPadding")
local UIGradient = Instance.new("UIGradient")
local TextButton = Instance.new("TextButton")

TabButton.Name = "Frame"
TabButton.Parent = TabButtonContainer
TabButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TabButton.BackgroundTransparency = 1.000
TabButton.Size = UDim2.new(0, 151, 0, 29)
TabButton.Image = "rbxassetid://3570695787"
TabButton.ImageColor3 = Color3.fromRGB(22, 24, 25)
TabButton.ScaleType = Enum.ScaleType.Slice
TabButton.SliceCenter = Rect.new(100, 100, 100, 100)
TabButton.SliceScale = 0.040

TextLabel.Parent = TabButton
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.121212184, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 132, 0, 29)
TextLabel.ZIndex = 2
TextLabel.Font = Enum.Font.GothamBold
TextLabel.Text = Info.Name
TextLabel.TextColor3 = Color3.fromRGB(100, 100, 100) -- Color3.fromRGB(248, 145, 11)
TextLabel.TextSize = 13.000
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

Gradient.Name = "Gradient"
Gradient.Parent = TabButton
Gradient.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Gradient.BackgroundTransparency = 1.000
Gradient.Size = UDim2.new(0, 151, 0, 29)
Gradient.Image = "rbxassetid://3570695787"
Gradient.Visible = false -- true
Gradient.ScaleType = Enum.ScaleType.Slice
Gradient.SliceCenter = Rect.new(100, 100, 100, 100)
Gradient.SliceScale = 0.040

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(38, 95, 139)), ColorSequenceKeypoint.new(0.31, Color3.fromRGB(37, 89, 129)), ColorSequenceKeypoint.new(0.99, Color3.fromRGB(31, 40, 47)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(31, 35, 38))}
UIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.40), NumberSequenceKeypoint.new(1.00, 0.40)}
UIGradient.Parent = Gradient

TextButton.Parent = TabButton
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 1.000
TextButton.Size = UDim2.new(0, 150, 0, 29)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = ""
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 14.000

TabContainer.Name = "TabContainer"
TabContainer.Parent = Frame
TabContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TabContainer.BackgroundTransparency = 1.000
TabContainer.BorderSizePixel = 0
TabContainer.Position = UDim2.new(0.409586042, 0, 0.131901845, 0)
TabContainer.Visible = false
TabContainer.Size = UDim2.new(0, 255, 0, 269)
TabContainer.CanvasSize = UDim2.new(0,0,0,0)
TabContainer.AutomaticCanvasSize = "X"
TabContainer.ScrollBarThickness = 6
TabContainer.ScrollBarImageColor3 = Color3.fromRGB(22, 24, 25)
TabContainer.VerticalScrollBarInset = Enum.ScrollBarInset.ScrollBar

UIListLayout_2.Parent = TabContainer
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_2.Padding = UDim.new(0, 3)



UIPadding_2.Parent = TabContainer

TabButton.TextButton.MouseButton1Click:Connect(function()
    for i,v in next,Frame:GetChildren() do
    if v.Name == "TabContainer" then
    v.Visible = false
    end
    end
    for i,t in next, TabButtonContainer:GetChildren() do
    if t.ClassName == "ImageLabel" then
    t.TextLabel.TextColor3 = Color3.fromRGB(100,100,100)
    t.Gradient.Visible = false
    end
    Gradient.Visible = true
    TabButton.TextLabel.TextColor3 = Color3.fromRGB(66, 141, 229)
    --TabButton.Gradient.Visible = true
    end
    TabContainer.Visible = true
end)

function InsideTab:Show()
    for i,v in next,Frame:GetChildren() do
        if v.Name == "TabContainer" then
            v.Visible = false
        end
    end
    TabContainer.Visible = true
    Gradient.Visible = true
    TabButton.TextLabel.TextColor3 = Color3.fromRGB(66, 141, 229)
end

function InsideTab:CreateNotificationContainer(Info)
Info.Description = string.upper(Info.Description) or "NOTIFICATIONS"

local NotificationConsole = Instance.new("Frame")
local TextLabelDesc = Instance.new("TextLabel")
local Console = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local UIPaddingNotif = Instance.new("UIPadding")

NotificationConsole.Name = "NotificationConsole"
NotificationConsole.Parent = TabContainer
NotificationConsole.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NotificationConsole.BackgroundTransparency = 1.000
NotificationConsole.Position = UDim2.new(0, 0, 0.460966557, 0)
NotificationConsole.Size = UDim2.new(0, 245, 0, 132)

TextLabelDesc.Parent = NotificationConsole
TextLabelDesc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabelDesc.BackgroundTransparency = 1.000
TextLabelDesc.Size = UDim2.new(0, 245, 0, 20)
TextLabelDesc.Font = Enum.Font.GothamBold
TextLabelDesc.Text = Info.Description
TextLabelDesc.TextColor3 = Color3.fromRGB(100, 100, 100)
TextLabelDesc.TextSize = 12.000
TextLabelDesc.TextXAlignment = Enum.TextXAlignment.Left

Console.Name = "Console"
Console.Parent = NotificationConsole
Console.Active = true
Console.BackgroundColor3 = Color3.fromRGB(22, 24, 25)
Console.BorderSizePixel = 0
Console.Position = UDim2.new(0, 0, 0.154755354, 0)
Console.AutomaticCanvasSize = "Y"
Console.ScrollBarThickness = 6
Console.ScrollBarImageColor3 = Color3.fromRGB(32, 32, 32)
Console.Size = UDim2.new(0, 245, 0, 109)
Console.CanvasSize = UDim2.new(0, 0, 0, 0)

UIListLayout.Parent = Console
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder


UIPaddingNotif.Parent = Console
UIPaddingNotif.PaddingLeft = UDim.new(0, 5)

local InsideNotificationConsole = {}

function InsideNotificationConsole:Notification(Info)
    Info.Text = Info.Text or "New Notification"
Info.Color = Info.Color or Color3.fromRGB(255, 255, 255)
    local TextLabelNotif = Instance.new("TextLabel")

TextLabelNotif.Parent = Console
TextLabelNotif.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabelNotif.BackgroundTransparency = 1.000
TextLabelNotif.Position = UDim2.new(0, 0, 2.79977769e-07, 0)
TextLabelNotif.Size = UDim2.new(0, 242, 0, 20)
TextLabelNotif.Font = Enum.Font.GothamBold
TextLabelNotif.Text = Info.Text
TextLabelNotif.TextColor3 = Info.Color
TextLabelNotif.TextSize = 13.000
TextLabelNotif.TextXAlignment = Enum.TextXAlignment.Left
end

return InsideNotificationConsole
end

function InsideTab:CreateDescription(Info)
    Info.Text = string.upper(Info.Text) or "DESCRIPTION"
    local DescriptionLabel = Instance.new("Frame")
    local TextLabel_4 = Instance.new("TextLabel")

DescriptionLabel.Name = "DescriptionLabel"
DescriptionLabel.Parent = TabContainer
DescriptionLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DescriptionLabel.BackgroundTransparency = 1.000
DescriptionLabel.Size = UDim2.new(0, 255, 0, 20)

TextLabel_4.Parent = DescriptionLabel
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.Size = UDim2.new(0, 255, 0, 20)
TextLabel_4.Font = Enum.Font.GothamBold
TextLabel_4.Text = string.upper(Info.Text)
TextLabel_4.TextColor3 = Color3.fromRGB(100, 100, 100)
TextLabel_4.TextSize = 12.000
TextLabel_4.TextXAlignment = Enum.TextXAlignment.Left
end

function InsideTab:CreateLabel(Info)
    Info.Color = Info.Color or Color3.fromRGB(221, 222, 233)

    local Label = Instance.new("Frame")
    local TextLabel_5 = Instance.new("TextLabel")

Label.Name = "Label"
Label.Parent = TabContainer
Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Label.BackgroundTransparency = 1.000
Label.Position = UDim2.new(0, 0, 0.0855018571, 0)
Label.Size = UDim2.new(0, 245, 0, 20)
    
TextLabel_5.Parent = Label
TextLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.BackgroundTransparency = 1.000
TextLabel_5.Size = UDim2.new(0, 245, 0, 20)
TextLabel_5.Font = Enum.Font.GothamBold
TextLabel_5.Text = Info.Text
TextLabel_5.TextColor3 = Info.Color
TextLabel_5.TextSize = 13.000
TextLabel_5.TextXAlignment = Enum.TextXAlignment.Left
end

function InsideTab:CreateButton(Info)
Info.Text = Info.Text or "New Button"
Info.Callback = Info.Callback or function() end

local Button = Instance.new("ImageLabel")
local TextButton_4 = Instance.new("TextButton")

Button.Name = "Button"
Button.Parent = TabContainer
Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button.BackgroundTransparency = 1.000
Button.Size = UDim2.new(0, 151, 0, 29)
Button.Image = "rbxassetid://3570695787"
Button.ImageColor3 = Color3.fromRGB(22, 24, 25)
Button.ScaleType = Enum.ScaleType.Slice
Button.SliceCenter = Rect.new(100, 100, 100, 100)
Button.SliceScale = 0.040

TextButton_4.Parent = Button
TextButton_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_4.BackgroundTransparency = 1.000
TextButton_4.Size = UDim2.new(0, 151, 0, 29)
TextButton_4.Font = Enum.Font.GothamBold
TextButton_4.Text = Info.Text
TextButton_4.TextColor3 = Color3.fromRGB(221, 222, 233)
TextButton_4.TextSize = 13.000
TextButton_4.TextWrapped = true

TextButton_4.InputBegan:Connect(function(Input)
    if Input.UserInputType == Enum.UserInputType.MouseButton1 then
        pcall(Info.Callback)
    end
end)
end


function InsideTab:CreateToggle(Info)
Info.Text = Info.Text or "New Toggle"
Info.Callback = Info.Callback or function() end

    local Toggle = Instance.new("Frame")
    local TextLabel_6 = Instance.new("TextLabel")
    local Frame_4 = Instance.new("ImageLabel")
    local CheckIcon = Instance.new("ImageLabel")
    local TextButton_5 = Instance.new("TextButton")

    Toggle.Name = "Toggle"
Toggle.Parent = TabContainer
Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Toggle.BackgroundTransparency = 1.000
Toggle.Position = UDim2.new(0, 0, 0.289962828, 0)
Toggle.Size = UDim2.new(0, 241, 0, 20)

TextLabel_6.Parent = Toggle
TextLabel_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_6.BackgroundTransparency = 1.000
TextLabel_6.Position = UDim2.new(0.0912863091, 0, 0, 0)
TextLabel_6.Size = UDim2.new(0, 233, 0, 15)
TextLabel_6.Font = Enum.Font.GothamBold
TextLabel_6.Text = Info.Text
TextLabel_6.TextColor3 = Color3.fromRGB(221, 222, 233)
TextLabel_6.TextSize = 13.000
TextLabel_6.TextXAlignment = Enum.TextXAlignment.Left

Frame_4.Name = "Frame"
Frame_4.Parent = Toggle
Frame_4.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
Frame_4.BackgroundTransparency = 1.000
Frame_4.Size = UDim2.new(0, 15, 0, 15)
Frame_4.Image = "rbxassetid://3570695787"
Frame_4.ImageColor3 = Color3.fromRGB(22, 24, 25) -- Color3.fromRGB(248, 145, 11)
Frame_4.ScaleType = Enum.ScaleType.Slice
Frame_4.SliceCenter = Rect.new(100, 100, 100, 100)
Frame_4.SliceScale = 0.030

CheckIcon.Name = "CheckIcon"
CheckIcon.Parent = Toggle
CheckIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CheckIcon.BackgroundTransparency = 1.000
CheckIcon.Size = UDim2.new(0, 15, 0, 15)
CheckIcon.Visible = false -- true
CheckIcon.Image = "rbxassetid://7733715400"

TextButton_5.Parent = Toggle
TextButton_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_5.BackgroundTransparency = 1.000
TextButton_5.Size = UDim2.new(0, 15, 0, 15)
TextButton_5.Font = Enum.Font.SourceSans
TextButton_5.Text = ""
TextButton_5.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_5.TextSize = 14.000

local enabled = false
TextButton_5.InputBegan:Connect(function(Input)
    if Input.UserInputType == Enum.UserInputType.MouseButton1 then
        enabled = not enabled
        pcall(Info.Callback,enabled)
        if enabled then
            CheckIcon.Visible = true
            local tween = game:GetService("TweenService"):Create(Frame_4, TweenInfo.new(.12), {ImageColor3 = Color3.fromRGB(66, 141, 229)})
            tween:Play()
            tween.Completed:Wait()
        else
            CheckIcon.Visible = false
            local tween = game:GetService("TweenService"):Create(Frame_4, TweenInfo.new(.12), {ImageColor3 = Color3.fromRGB(22, 24, 25)})
            tween:Play()
            tween.Completed:Wait()
        end
    end
end)

TextButton_5.MouseEnter:Connect(function()
    if not enabled then
    local tween = game:GetService("TweenService"):Create(Frame_4, TweenInfo.new(.05), {ImageColor3 = Color3.fromRGB(38,83,134)})
    tween:Play()
    tween.Completed:Wait()
    end
end)

TextButton_5.MouseLeave:Connect(function()
    if not enabled then
    local tween = game:GetService("TweenService"):Create(Frame_4, TweenInfo.new(.05), {ImageColor3 = Color3.fromRGB(22, 24, 25)})
    tween:Play()
    tween.Completed:Wait()
    end
end)

end
return InsideTab
end
return InsideWindow
end
return library
