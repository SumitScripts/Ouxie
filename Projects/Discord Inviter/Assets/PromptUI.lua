local HttpService = game:GetService("HttpService")
local TweenService = game:GetService("TweenService")
local CoreGui = game:GetService("CoreGui")

if CoreGui:FindFirstChild("DiscordInv") then
    CoreGui.DiscordInv:Destroy()
end

local ui = {}

function ui:load(name, call)
    local ServerName = Instance.new("Frame")
    local InvMSG = Instance.new("TextLabel")
    local UITextSizeConstraint_3 = Instance.new("UITextSizeConstraint")
    local ServerLabel_2 = Instance.new("TextLabel")
    local UITextSizeConstraint_4 = Instance.new("UITextSizeConstraint")
    local UIPadding_2 = Instance.new("UIPadding")
    local Join = Instance.new("Frame")
    local UIStroke_2 = Instance.new("UIStroke")
    local UICorner_2 = Instance.new("UICorner")
    local ServerLabel = Instance.new("TextLabel")
    local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
    local UIPadding = Instance.new("UIPadding")
    local ImageButton = Instance.new("ImageButton")
    local ServerImage = Instance.new("Frame")
    local UICorner_3 = Instance.new("UICorner")
    local UIStroke_3 = Instance.new("UIStroke")
    local Icon = Instance.new("VideoFrame")
    local UICorner_99 = Instance.new("UICorner")
    local Icon2 = Instance.new("ImageLabel")
    local Trans = Instance.new("UIGradient")
    local UICorner_98 = Instance.new("UICorner")
    local DiscordInv = Instance.new("ScreenGui")
    local Holder = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local UIStroke = Instance.new("UIStroke")
    local Nevermind = Instance.new("Frame")
    local Label = Instance.new("TextLabel")
    local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
    local ImageButton_2 = Instance.new("ImageButton")

    DiscordInv.Name = "DiscordInv"
    DiscordInv.Parent = CoreGui
    DiscordInv.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    DiscordInv.ResetOnSpawn = false
    DiscordInv.IgnoreGuiInset = true

    Holder.Name = "Holder"
    Holder.Parent = DiscordInv
    Holder.AnchorPoint = Vector2.new(0.5, 0.5)
    Holder.BackgroundColor3 = Color3.fromRGB(49, 51, 56)
    Holder.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Holder.BorderSizePixel = 0
    Holder.Visible = false
    Holder.Position = UDim2.new(0.5, 0, 0.5, 0)
    Holder.Size = UDim2.new(0, 230, 0, 250)
    Holder.ZIndex = 999999999

    UICorner.CornerRadius = UDim.new(0, 5)
    UICorner.Parent = Holder

    UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    UIStroke.Color = Color3.fromRGB(69, 72, 79)
    UIStroke.Thickness = 2
    UIStroke.Parent = Holder

    Nevermind.Name = "Nevermind"
    Nevermind.Parent = Holder
    Nevermind.BackgroundColor3 = Color3.fromRGB(119, 133, 204)
    Nevermind.BackgroundTransparency = 1.000
    Nevermind.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Nevermind.BorderSizePixel = 0
    Nevermind.Position = UDim2.new(0.0478260852, 0, 0.875999987, 0)
    Nevermind.Size = UDim2.new(0, 208, 0, 22)
    Nevermind.ZIndex = 999999999

    Label.Name = "Label"
    Label.Parent = Nevermind
    Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Label.BackgroundTransparency = 1.000
    Label.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Label.BorderSizePixel = 0
    Label.Size = UDim2.new(1, 0, 1, 0)
    Label.ZIndex = 999999999
    Label.Font = Enum.Font.GothamMedium
    Label.Text = "No, Thanks"
    Label.TextColor3 = Color3.fromRGB(135, 136, 138)
    Label.TextScaled = true
    Label.TextSize = 11.000
    Label.TextWrapped = true

    UITextSizeConstraint_2.Parent = Label
    UITextSizeConstraint_2.MaxTextSize = 11

    ImageButton_2.Parent = Nevermind
    ImageButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ImageButton_2.BackgroundTransparency = 1.000
    ImageButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ImageButton_2.BorderSizePixel = 0
    ImageButton_2.Size = UDim2.new(1, 0, 1, 0)
    ImageButton_2.ZIndex = 999999999
    ImageButton_2.MouseButton1Click:Connect(function()
        call()
    end)

    ServerImage.Name = "ServerImage"
    ServerImage.Parent = Holder
    ServerImage.BackgroundColor3 = Color3.fromRGB(49, 51, 56)
    ServerImage.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ServerImage.BorderSizePixel = 0
    ServerImage.ClipsDescendants = true
    ServerImage.Position = UDim2.new(0.356521726, 0, 0.0680000037, 0)
    ServerImage.Size = UDim2.new(0, 65, 0, 65)
    ServerImage.ZIndex = 999999999

    UICorner_3.CornerRadius = UDim.new(1, 0)
    UICorner_3.Parent = ServerImage

    UIStroke_3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    UIStroke_3.Color = Color3.fromRGB(69, 72, 79)
    UIStroke_3.Thickness = 2
    UIStroke_3.Parent = ServerImage

    Icon.Name = "Icon"
    Icon.Parent = ServerImage
    Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Icon.BackgroundTransparency = 1.000
    Icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Icon.ClipsDescendants = true
    Icon.Playing = true
    Icon.Looped = true
    Icon.BorderSizePixel = 0
    Icon.Size = UDim2.new(1, 0, 1, 0)
    Icon.ZIndex = 999999999
    Icon.Visible = false

    Trans.Name = "Trans"
    Trans.Parent = Icon

    UICorner_99.CornerRadius = UDim.new(1, 0)
    UICorner_99.Parent = Icon

    Icon2.Name = "Icon2"
    Icon2.Parent = ServerImage
    Icon2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Icon2.BackgroundTransparency = 1.000
    Icon2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Icon2.ClipsDescendants = true
    Icon2.BorderSizePixel = 0
    Icon2.Size = UDim2.new(1, 0, 1, 0)
    Icon2.ZIndex = 999999999
    Icon2.Visible = false

    UICorner_98.CornerRadius = UDim.new(1, 0)
    UICorner_98.Parent = Icon2

    Join.Name = "Join"
    Join.Parent = Holder
    Join.BackgroundColor3 = Color3.fromRGB(119, 133, 204)
    Join.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Join.BorderSizePixel = 0
    Join.Position = UDim2.new(0.0478260852, 0, 0.691999972, 0)
    Join.Size = UDim2.new(0, 208, 0, 35)
    Join.ZIndex = 999999999

    UIStroke_2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    UIStroke_2.Color = Color3.fromRGB(73, 82, 125)
    UIStroke_2.Thickness = 2
    UIStroke_2.Parent = Join

    UICorner_2.CornerRadius = UDim.new(0, 3)
    UICorner_2.Parent = Join

    ServerLabel.Name = "ServerLabel"
    ServerLabel.Parent = Join
    ServerLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ServerLabel.BackgroundTransparency = 1.000
    ServerLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ServerLabel.BorderSizePixel = 0
    ServerLabel.Size = UDim2.new(1, 0, 1, 0)
    ServerLabel.ZIndex = 999999999
    ServerLabel.Text = "Join <b>"..tostring(name).."</b>"
    ServerLabel.RichText = true
    ServerLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    ServerLabel.TextScaled = true
    ServerLabel.TextSize = 20.000
    ServerLabel.TextWrapped = true

    UITextSizeConstraint.Parent = ServerLabel
    UITextSizeConstraint.MaxTextSize = 11

    UIPadding.Parent = ServerLabel
    UIPadding.PaddingBottom = UDim.new(0, 3)
    UIPadding.PaddingLeft = UDim.new(0, 3)
    UIPadding.PaddingRight = UDim.new(0, 3)
    UIPadding.PaddingTop = UDim.new(0, 3)

    ImageButton.Parent = Join
    ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ImageButton.BackgroundTransparency = 1.000
    ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ImageButton.BorderSizePixel = 0
    ImageButton.Size = UDim2.new(1, 0, 1, 0)
    ImageButton.ZIndex = 999999999

    ServerName.Name = "ServerName"
    ServerName.Parent = Holder
    ServerName.BackgroundColor3 = Color3.fromRGB(119, 133, 204)
    ServerName.BackgroundTransparency = 1.000
    ServerName.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ServerName.BorderSizePixel = 0
    ServerName.Position = UDim2.new(0.0434782617, 0, 0.39199999, 0)
    ServerName.Size = UDim2.new(0, 208, 0, 53)
    ServerName.ZIndex = 999999999

    InvMSG.Name = "InvMSG"
    InvMSG.Parent = ServerName
    InvMSG.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    InvMSG.BackgroundTransparency = 1.000
    InvMSG.BorderColor3 = Color3.fromRGB(0, 0, 0)
    InvMSG.BorderSizePixel = 0
    InvMSG.Position = UDim2.new(0, 0, -0.104477614, 0)
    InvMSG.Size = UDim2.new(1, 0, 0.417910457, 0)
    InvMSG.ZIndex = 999999999
    InvMSG.Font = Enum.Font.GothamMedium
    InvMSG.Text = "You've been invited to join"
    InvMSG.TextColor3 = Color3.fromRGB(151, 156, 162)
    InvMSG.TextScaled = true
    InvMSG.TextSize = 13.000
    InvMSG.TextWrapped = true

    UITextSizeConstraint_3.Parent = InvMSG
    UITextSizeConstraint_3.MaxTextSize = 11

    ServerLabel_2.Name = "ServerLabel"
    ServerLabel_2.Parent = ServerName
    ServerLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ServerLabel_2.BackgroundTransparency = 1.000
    ServerLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ServerLabel_2.BorderSizePixel = 0
    ServerLabel_2.Position = UDim2.new(0, 0, 0.313432813, 0)
    ServerLabel_2.Size = UDim2.new(1, 0, 0.686567187, 0)
    ServerLabel_2.ZIndex = 999999999
    ServerLabel_2.Text = "<b>"..tostring(name).."</b>"
    ServerLabel_2.RichText = true
    ServerLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
    ServerLabel_2.TextScaled = true
    ServerLabel_2.TextSize = 20.000
    ServerLabel_2.TextWrapped = true
    ServerLabel_2.TextYAlignment = Enum.TextYAlignment.Top

    UITextSizeConstraint_4.Parent = ServerLabel_2
    UITextSizeConstraint_4.MaxTextSize = 17

    UIPadding_2.Parent = ServerLabel_2
    UIPadding_2.PaddingBottom = UDim.new(0, 3)
    UIPadding_2.PaddingLeft = UDim.new(0, 3)
    UIPadding_2.PaddingRight = UDim.new(0, 3)
    UIPadding_2.PaddingTop = UDim.new(0, 3)

    local elements = {
        ["ImageIcon"] = Icon2,
        ["VideoFrame"] = Icon,
        ["ServerLabel"] = ServerLabel,
        ["Nevermind"] = ImageButton_2,
        ["GUI"] = DiscordInv
    }
    return elements
end

return ui
