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

getgenv().auto = false
getgenv().ability_spam = false
function set()
    while true do
        if auto then
            local ball = game.Workspace:WaitForChild("Ball")
            game:GetService("ReplicatedStorage").Remotes.BlockEvent:FireServer(ball, ball.CFrame)
        else break
        end
    wait()
    end
end
function ability()
    while true do
        if ability_spam then
            game:GetService("ReplicatedStorage").Remotes.AbilityEvent:FireServer()
        else break
        end
        wait()
    end
end
local ouxie = loadstring(game:HttpGet("https://raw.githubusercontent.com/SkireScripts/Ouxie/main/Assets/Ouxie%20UI.lua"))()
ouxie:Window({
    Name = "Ouxie / Blade Soccer";
    Size = UDim2.new(0,350,0,370)
})
local tab1 = ouxie:NewTab({
    TabName = "Basic";
    IconId = "rbxassetid://7072706318";
})
tab1:Toggle({
    Name = "INF block range";
    Callback = function(bool)
        getgenv().auto = bool
        set()
    end;
})


local tab2 = ouxie:NewTab({
    TabName = "Misc";
    IconId = "rbxassetid://7072706318";
})
tab2:Toggle({
    Name = "Spam Ability (no cd)";
    Callback = function(bool)
        getgenv().ability_spam = bool
        ability()
    end;
})
