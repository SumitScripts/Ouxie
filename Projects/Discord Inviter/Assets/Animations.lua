-- dont mind VERY bad code (if you cant read it)
local TweenService = game:GetService("TweenService")
local anims = {}

function anims:intro(holder)
    local prompt = holder
    local frame = holder.GUI.Holder
    local function intro()    
        frame.Visible = false
        TweenService:Create(frame.UIStroke, TweenInfo.new(0, Enum.EasingStyle.Quint), { Thickness = 0 }):Play()
        TweenService:Create(frame, TweenInfo.new(0, Enum.EasingStyle.Quint), { Size = UDim2.new(0,70,0,90), BackgroundTransparency = 1 }):Play()
        TweenService:Create(frame.UICorner, TweenInfo.new(0, Enum.EasingStyle.Quint), { CornerRadius = UDim.new(0, 8) }):Play()
        TweenService:Create(frame.Join.UIStroke, TweenInfo.new(0, Enum.EasingStyle.Quint), { Thickness = 0 }):Play()
        TweenService:Create(frame.Join, TweenInfo.new(0, Enum.EasingStyle.Quint), { BackgroundTransparency = 1 }):Play()
        TweenService:Create(frame.Join.ServerLabel, TweenInfo.new(0, Enum.EasingStyle.Quint), { BackgroundTransparency = 1, TextTransparency = 1 }):Play()
        TweenService:Create(frame.Join.ImageButton, TweenInfo.new(0, Enum.EasingStyle.Quint), { BackgroundTransparency = 1, ImageTransparency = 1 }):Play()
        TweenService:Create(frame.Nevermind, TweenInfo.new(0, Enum.EasingStyle.Quint), { BackgroundTransparency = 1 }):Play()
        TweenService:Create(frame.Nevermind.Label, TweenInfo.new(0, Enum.EasingStyle.Quint), { BackgroundTransparency = 1, TextTransparency = 1 }):Play()
        TweenService:Create(frame.Nevermind.ImageButton, TweenInfo.new(0, Enum.EasingStyle.Quint), { BackgroundTransparency = 1, ImageTransparency = 1 }):Play()
        TweenService:Create(frame.ServerImage.UIStroke, TweenInfo.new(0, Enum.EasingStyle.Quint), { Thickness = 0 }):Play()
        TweenService:Create(frame.ServerImage, TweenInfo.new(0, Enum.EasingStyle.Quint), { BackgroundTransparency = 1 }):Play()
        TweenService:Create(frame.ServerImage.Icon2, TweenInfo.new(0, Enum.EasingStyle.Quint), { BackgroundTransparency = 1, ImageTransparency = 1 }):Play()
        prompt.VideoFrame.Visible = false
        TweenService:Create(frame.ServerName, TweenInfo.new(0, Enum.EasingStyle.Quint), { BackgroundTransparency = 1 }):Play()
        TweenService:Create(frame.ServerName.InvMSG, TweenInfo.new(0, Enum.EasingStyle.Quint), { BackgroundTransparency = 1, TextTransparency = 1 }):Play()
        TweenService:Create(frame.ServerName.ServerLabel, TweenInfo.new(0, Enum.EasingStyle.Quint), { BackgroundTransparency = 1, TextTransparency = 1 }):Play()
        wait()
        frame.Visible = true
        prompt.VideoFrame.Visible = true
        TweenService:Create(frame.UIStroke, TweenInfo.new(1, Enum.EasingStyle.Quint), { Thickness = 2 }):Play()
        task.wait(1)
        TweenService:Create(frame, TweenInfo.new(1, Enum.EasingStyle.Quint), { Size = UDim2.new(0, 230,0, 250), BackgroundTransparency = 0 }):Play()
        TweenService:Create(frame.UICorner, TweenInfo.new(1, Enum.EasingStyle.Quint), { CornerRadius = UDim.new(0, 8) }):Play()
        task.wait(1)
        TweenService:Create(frame.Join.UIStroke, TweenInfo.new(1, Enum.EasingStyle.Quint), { Thickness = 2 }):Play()
        TweenService:Create(frame.Join, TweenInfo.new(1, Enum.EasingStyle.Quint), { BackgroundTransparency = 0 }):Play()
        TweenService:Create(frame.Join.ServerLabel, TweenInfo.new(1, Enum.EasingStyle.Quint), { BackgroundTransparency = 1, TextTransparency = 0 }):Play()
        TweenService:Create(frame.Join.ImageButton, TweenInfo.new(1, Enum.EasingStyle.Quint), { BackgroundTransparency = 1, ImageTransparency = 1 }):Play()
        task.wait(0.1)
        TweenService:Create(frame.Nevermind, TweenInfo.new(1, Enum.EasingStyle.Quint), { BackgroundTransparency = 1 }):Play()
        TweenService:Create(frame.Nevermind.Label, TweenInfo.new(1, Enum.EasingStyle.Quint), { BackgroundTransparency = 1, TextTransparency = 0 }):Play()
        TweenService:Create(frame.Nevermind.ImageButton, TweenInfo.new(1, Enum.EasingStyle.Quint), { BackgroundTransparency = 1, ImageTransparency = 1 }):Play()
        task.wait(0.1)
        TweenService:Create(frame.ServerImage.UIStroke, TweenInfo.new(1, Enum.EasingStyle.Quint), { Thickness = 2 }):Play()
        TweenService:Create(frame.ServerImage, TweenInfo.new(1, Enum.EasingStyle.Quint), { BackgroundTransparency = 0 }):Play()
        TweenService:Create(frame.ServerImage.Icon2, TweenInfo.new(1, Enum.EasingStyle.Quint), { BackgroundTransparency = 1, ImageTransparency = 0 }):Play()
        prompt.VideoFrame.Visible = true
        task.wait(0.1)
        TweenService:Create(frame.ServerName, TweenInfo.new(1, Enum.EasingStyle.Quint), { BackgroundTransparency = 1 }):Play()
        TweenService:Create(frame.ServerName.InvMSG, TweenInfo.new(1, Enum.EasingStyle.Quint), { BackgroundTransparency = 1, TextTransparency = 0 }):Play()
        TweenService:Create(frame.ServerName.ServerLabel, TweenInfo.new(1, Enum.EasingStyle.Quint), { BackgroundTransparency = 1, TextTransparency = 0 }):Play()
    end
    intro()
end

function anims:outro(holder)
    local prompt = holder
    local frame = holder.GUI.Holder
    local function outro()
        TweenService:Create(frame.ServerName.ServerLabel, TweenInfo.new(1, Enum.EasingStyle.Quint), { BackgroundTransparency = 1, TextTransparency = 1 }):Play()
        TweenService:Create(frame.ServerName.InvMSG, TweenInfo.new(1, Enum.EasingStyle.Quint), { BackgroundTransparency = 1, TextTransparency = 1 }):Play()
        TweenService:Create(frame.ServerName, TweenInfo.new(1, Enum.EasingStyle.Quint), { BackgroundTransparency = 1 }):Play()
        task.wait(0.1)
        prompt.VideoFrame.Visible = false
        TweenService:Create(frame.ServerImage.Icon2, TweenInfo.new(1, Enum.EasingStyle.Quint), { BackgroundTransparency = 1, ImageTransparency = 1 }):Play()
        TweenService:Create(frame.ServerImage, TweenInfo.new(1, Enum.EasingStyle.Quint), { BackgroundTransparency = 1 }):Play()
        TweenService:Create(frame.ServerImage.UIStroke, TweenInfo.new(1, Enum.EasingStyle.Quint), { Thickness = 0 }):Play()
        task.wait(0.1)
        TweenService:Create(frame.Nevermind.ImageButton, TweenInfo.new(1, Enum.EasingStyle.Quint), { BackgroundTransparency = 1, ImageTransparency = 1 }):Play()
        TweenService:Create(frame.Nevermind.Label, TweenInfo.new(1, Enum.EasingStyle.Quint), { BackgroundTransparency = 1, TextTransparency = 1 }):Play()
        TweenService:Create(frame.Nevermind, TweenInfo.new(1, Enum.EasingStyle.Quint), { BackgroundTransparency = 1 }):Play()
        task.wait(0.1)
        TweenService:Create(frame.Join.ImageButton, TweenInfo.new(1, Enum.EasingStyle.Quint), { BackgroundTransparency = 1, ImageTransparency = 1 }):Play()
        TweenService:Create(frame.Join.ServerLabel, TweenInfo.new(1, Enum.EasingStyle.Quint), { BackgroundTransparency = 1, TextTransparency = 1 }):Play()
        TweenService:Create(frame.Join, TweenInfo.new(1, Enum.EasingStyle.Quint), { BackgroundTransparency = 1 }):Play()
        TweenService:Create(frame.Join.UIStroke, TweenInfo.new(1, Enum.EasingStyle.Quint), { Thickness = 0 }):Play()
        task.wait(0.7)
        TweenService:Create(frame.UICorner, TweenInfo.new(1, Enum.EasingStyle.Quint), { CornerRadius = UDim.new(0, 8) }):Play()
        TweenService:Create(frame, TweenInfo.new(1, Enum.EasingStyle.Quint), { Size = UDim2.new(0, 70, 0, 80), BackgroundTransparency = 1 }):Play()
        TweenService:Create(frame.UIStroke, TweenInfo.new(1, Enum.EasingStyle.Quint), { Thickness = 0 }):Play()
        task.wait(0.9)
        frame.Visible = false
    end
    outro()
end

return anims
