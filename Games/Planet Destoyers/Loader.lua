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

local players = game:GetService("Players")
local plr = players.LocalPlayer

getgenv().orbs = false
getgenv().level = false
getgenv().egg = false
getgenv().amount_eggs = "single"
getgenv().selected_egg = "Basic"

getgenv().tycoon = "1"

for i,v in pairs(workspace.Scripts.Islands:GetDescendants()) do
    if v.Name == "Owner" or v.Name == "owner" then
        if v.Value == plr.Name or v.Value == plr.DisplayName or v.Value == plr then
            getgenv().tycoon = tostring(v.Parent.Name)
        end
    end
end

local eggs = {}

for i,v in pairs(game:GetService("ReplicatedStorage").Assets.Capsules:GetChildren()) do
    table.insert(eggs, v.Name)
end

local function open(type, amount)
    local args = {
        [1] = type,
        [2] = amount
    }
    
    game:GetService("ReplicatedStorage").Packages.Knit.Services.CapsuleService.RF.OpenCapsule:InvokeServer(unpack(args))
end

local function auto_egg(Bool, type, amount)
    getgenv().egg = Bool
    while egg do 
        wait()
        open(type, amount)
    end
end

local function auto_level(Bool)
    getgenv().level = Bool
    while level do
        wait()
        game:GetService("ReplicatedStorage").Packages.Knit.Services.IslandService.RF.nextLevel:InvokeServer()
    end
end

local function auto_orbs(Bool)
    getgenv().orbs = Bool
    while orbs do 
        wait()
        for i,v in pairs(workspace.Scripts.Islands[tycoon].Debris.Orbs.Storage:GetChildren()) do
            local args = {
                [1] = {
                    [1] = v.Name
                }
            }
            
            game:GetService("ReplicatedStorage").Packages.Knit.Services.OrbService.RE.collectOrbs:FireServer(unpack(args))
            v:Destroy()
        end
    end
end

local ui = loadstring(game:HttpGet("https://raw.githubusercontent.com/SkireScripts/Ouxie/main/Ouxie%20UI.lua"))()
ui:Window({
    Name = "Ouxie / Planet Destroyer";
    Size = UDim2.new(0,350,0,370);
})

local home = ui:NewTab({
    TabName = "Main";
    IconId = "7072706318";
})

home:Input({
    Name = "Your Tycoon: "..tycoon;
    Default = tycoon
    Callback = function()
        getgenv().tycoon = tostring(value)
    end;
})

home:Toggle({
    Name = "Auto Collect Orbs";
    Callback, function()
        auto_orbs(bool)
    end;
})

home:Toggle({
    Name = "Auto Level";
    Callback = function()
        auto_level(bool)
    end;
})

home:Dropdown({
    Name = "Egg >";
    Options = eggs;
    Callback = function()
    getgenv().selected_egg = selected
end)

home:Input({
    Name = "Amount of eggs";
    Default = "single";
    Callback function()
        str = tostring(value:lower())
        if str == "1" then
            getgenv().amount_eggs = "single"
        elseif str == "2" then
            getgenv().amount_eggs = "double"
        elseif str == "3" then
            getgenv().amount_eggs = "triple"
        else
            getgenv().amount_eggs = str
        end
    end
})

home:Toggle({
    Name = "Auto Open Egg [1]";
    CallBack = function()
        auto_egg(bool, selected_egg, amount_eggs)
    end;
})
