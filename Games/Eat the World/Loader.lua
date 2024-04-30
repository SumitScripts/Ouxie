--[[
its fully open source and no im not sorry for my trash luau skills
also for people this was made by Skire (x6x_0)

OUXIE DISCORD SERVER: https://discord.gg/6a3rAf9r8k

 .d88888b.                    d8b               888 
d88P" "Y88b                   Y8P               888 
888     888                                     888 
888     888 888  888 888  888 888  .d88b.       888 
888     888 888  888 `Y8bd8P' 888 d8P  Y8b      888 
888     888 888  888   X88K   888 88888888      Y8P 
Y88b. .d88P Y88b 888 .d8""8b. 888 Y8b.           "  
 "Y88888P"   "Y88888 888  888 888  "Y8888       888 


888b     d888               888               888888b.                     
8888b   d8888               888               888  "88b                    
88888b.d88888               888               888  .88P                    
888Y88888P888  8888b.   .d88888  .d88b.       8888888K.  888  888      d8b 
888 Y888P 888     "88b d88" 888 d8P  Y8b      888  "Y88b 888  888      Y8P 
888  Y8P  888 .d888888 888  888 88888888      888    888 888  888          
888   "   888 888  888 Y88b 888 Y8b.          888   d88P Y88b 888      d8b 
888       888 "Y888888  "Y88888  "Y8888       8888888P"   "Y88888      Y8P 
                                                              888          
                                                         Y8b d88P          
                                                          "Y88P"           

 .d8888b.  888      d8b                                                
d88P  Y88b 888      Y8P                                                
Y88b.      888                                                         
 "Y888b.   888  888 888 888d888 .d88b.                                 
    "Y88b. 888 .88P 888 888P"  d8P  Y8b                                
      "888 888888K  888 888    88888888      888888                    
Y88b  d88P 888 "88b 888 888    Y8b.                                    
 "Y8888P"  888  888 888 888     "Y8888                                 
                                                                       
                                                                       
                                                                       
  .d88           .d8888b.                    .d8888b.  88b.        888 
 d88P"          d88P  Y88b                  d88P  Y88b "Y88b       888 
d88P            888                         888    888   Y88b      888 
888    888  888 888d888b.  888  888         888    888    888      888 
888    `Y8bd8P' 888P "Y88b `Y8bd8P'         888    888    888      888 
Y88b     X88K   888    888   X88K           888    888   d88P      Y8P 
 Y88b. .d8""8b. Y88b  d88P .d8""8b.         Y88b  d88P .d88P        "  
  "Y88 888  888  "Y8888P"  888  888 88888888 "Y8888P"  88P"        888 
                                                                       
                                                                                                    
]]

local Players = game:GetService("Players")
local player = Players.LocalPlayer

getgenv().auto_grab = false
getgenv().auto_eat = false
getgenv().auto_egg = false
getgenv().auto_cube = false
getgenv().no_stun = false
getgenv().auto_sell = false
getgenv().amount = 100
getgenv().spin = false
getgenv().speed = 2

local function getRoot(char)
    local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
    return rootPart
end

local function sell()
    repeat
        local size = player.leaderstats.Size
        game:GetService("Players").LocalPlayer.Character.Events.Sell:FireServer()
        getgenv().auto_eat = true
        getgenv().auto_grab = true
        wait()
    until size.Value <= 10
    getgenv().auto_eat = true
    getgenv().auto_grab = true
    return true
end

local function spin(speed, bool)
    if bool then
        local spinSpeed = 2
        if speed then
            spinSpeed = speed
        end
        for i,v in pairs(getRoot(player.Character):GetChildren()) do
            if v.Name == "Spinning" then
                v:Destroy()
            end
        end
        local Spin = Instance.new("BodyAngularVelocity")
        Spin.Name = "Spinning"
        Spin.Parent = getRoot(player.Character)
        Spin.MaxTorque = Vector3.new(0, math.huge, 0)
        Spin.AngularVelocity = Vector3.new(0,spinSpeed,0)
    else
        for i,v in pairs(getRoot(player.Character):GetChildren()) do
            if v.Name == "Spinning" then
                v:Destroy()
            end
        end
    end
    getgenv().spin = bool
end

local function auto(option, bool)
    if option == "eat" then
        getgenv().auto_eat = bool
        while auto_eat do
            game:GetService("Players").LocalPlayer.Character.Events.Eat:FireServer()
            wait(.1)
        end
    elseif option == "grab" then
        getgenv().auto_grab = bool
        while auto_grab do
            local path = player.PlayerGui.ScreenGui.MapCountdown.Clock
            if path.Text == "0:00" or path.text == "0:01" then wait(10) else
                local args = {
                    [1] = false,
                    [2] = false
                }
                game:GetService("Players").LocalPlayer.Character.Events.Grab:FireServer(unpack(args))
            end
            wait(.1)
        end
    elseif option == "cube" then
        getgenv().auto_cube = bool
        while auto_cube do
            for i,v in pairs(game.Workspace:GetChildren()) do
                if v.Name == "Cube" or v.Name == "cube" then
                    if v.Owner.Value == player.Name or v.Owner.Value == player.DisplayName then
                        v.CFrame = player.Character.HumanoidRootPart.CFrame
                    end
                end
            end
            wait(.1)
        end
    elseif option == "egg" then
        getgenv().auto_egg = bool
        while auto_egg do
            for i,v in pairs(game.Workspace.Eggs:GetChildren()) do
                if v.Parent == game.Workspace.Eggs then
                    if v.Owner.Value == player.Name or v.Owner.Value == player.DisplayName or v.Owner.Value == "" then
                        v.CFrame = player.Character.HumanoidRootPart.CFrame
                    end
                end
            end
            wait(.1)
        end
    elseif option == "stun" then
        getgenv().no_stun = bool
        while no_stun do
            local args = {
                [1] = player.Character
            }
            game:GetService("ReplicatedStorage").Events.unRagdoll:FireServer(unpack(args))
            wait(.1)
        end
    elseif option == "sell" then
        getgenv().auto_sell = bool
        while auto_sell do
            local size = player.leaderstats.Size
            if size.Value >= tonumber(getgenv().amount) then
                getgenv().auto_eat = false
                getgenv().auto_grab = false
                local se = sell()
                if se == true then
                    getgenv().auto_eat = true
                    getgenv().auto_grab = true
                else
                    getgenv().auto_eat = true
                    getgenv().auto_grab = true
                end
                wait(0.1)
            end
            wait(.1)
        end
    end
end

local ui = loadstring(game:HttpGet("https://raw.githubusercontent.com/SkireScripts/Ouxie/main/Assets/Ouxie%20UI.lua"))()
ui:Window({
    Name = "Ouxie / Eat The World";
    Size = UDim2.new(0,350,0,370)
})

local home = ui:NewTab({
    TabName = "Main";
    IconId = "7072706318";
})
local misc = ui:NewTab({
    TabName = "Misc";
    IconId = "7072706318";
})
local sell = ui:NewTab({
    TabName = "Auto Sell";
    IconId = "7072706318";
})


sell:Input({
    Name = "Amount";
    Default = "1000";
    Callback = function()
        getgenv().amount = tonumber(value)
    end;
})

sell:Toggle({
    Name = "Auto Sell";
    Callback = function()
        auto("sell", bool)
    end;
})


misc:Toggle({
    Name = "Auto Cubes";
    Callback = function()
        auto("cube", bool)
    end;
})

misc:Toggle({
    "Auto Eggs";
    Callback = function()
        auto("egg", bool)
    end;
})

misc:Toggle({
    Name = "Auto unragdoll";
    Callback = function()
        auto("stun", bool)
    end;
})

misc:Button({
    Name = "Anti Afk";
    Callback = function()
        local GC = getconnections or get_signal_cons
    	if GC then
    		for i,v in pairs(GC(Players.LocalPlayer.Idled)) do
    			if v["Disable"] then
    				v["Disable"](v)
    			elseif v["Disconnect"] then
    				v["Disconnect"](v)                                                                                                                                                      
    			end
    		end
    	else
    		Players.LocalPlayer.Idled:Connect(function()
    			local VirtualUser = game:GetService("VirtualUser")
    			VirtualUser:CaptureController()
    			VirtualUser:ClickButton2(Vector2.new())
    		end)
    	end
    end
})

home:Toggle({
    Name = "Auto Grab";
    Callback = function()
        auto("grab", bool)
    end;
})

home:Toggle({
    Name = "Auto Eat";
    Callback = function()
        auto("eat", bool)
    end;
})

home:Input({
    Name = "Spin Speed";
    Default = "2";
    Callback = function()
        getgenv().speed = tonumber(value)
    end;
})

home:Toggle({
    Name = "Spin";
    Callback = function()
        spin(tonumber(getgenv().speed), bool)
    end;
})
