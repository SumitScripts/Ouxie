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
                                                                                                                     
                                                                                                                     
                                                                                                                     
888                            888                       8888888         d888        .d8888b.       .d8888b. 8888888 
888                            888                       888            d8888       d88P  Y88b     d88P  Y88b    888 
888                            888                       888              888       888    888     888    888    888 
888      .d88b.   8888b.   .d88888  .d88b.  888d888      888    888  888  888       888    888     888    888    888 
888     d88""88b     "88b d88" 888 d8P  Y8b 888P"        888    888  888  888       888    888     888    888    888 
888     888  888 .d888888 888  888 88888888 888          888    Y88  88P  888       888    888     888    888    888 
888     Y88..88P 888  888 Y88b 888 Y8b.     888          888     Y8bd8P   888   d8b Y88b  d88P d8b Y88b  d88P    888 
88888888 "Y88P"  "Y888888  "Y88888  "Y8888  888          8888888  Y88P  8888888 Y8P  "Y8888P"  Y8P  "Y8888P" 8888888 
                                                                                                                     
                                                                                                                     
                                                                                                                     
                            888               888                                                                    
                            888               888                                                                    
                            888               888                                                                    
88888b.d88b.   8888b.   .d88888  .d88b.       88888b.  888  888      d8b                                             
888 "888 "88b     "88b d88" 888 d8P  Y8b      888 "88b 888  888      Y8P                                             
888  888  888 .d888888 888  888 88888888      888  888 888  888                                                      
888  888  888 888  888 Y88b 888 Y8b.          888 d88P Y88b 888      d8b                                             
888  888  888 "Y888888  "Y88888  "Y8888       88888P"   "Y88888      Y8P                                             
                                                            888                                                      
                                                       Y8b d88P                                                      
                                                        "Y88P"                                                       
         888      d8b                                                                                                
         888      Y8P                                                                                                
         888                                                                                                         
.d8888b  888  888 888 888d888 .d88b.                                                                                 
88K      888 .88P 888 888P"  d8P  Y8b                                                                                
"Y8888b. 888888K  888 888    88888888      888888                                                                    
     X88 888 "88b 888 888    Y8b.                                                                                    
 88888P' 888  888 888 888     "Y8888                                                                                 
                                                                                                                     
                                                                                                                     
                                                                                                                     
  .d88           .d8888b.                    .d8888b.  88b.        888                                               
 d88P"          d88P  Y88b                  d88P  Y88b "Y88b       888                                               
d88P            888                         888    888   Y88b      888                                               
888    888  888 888d888b.  888  888         888    888    888      888                                               
888    `Y8bd8P' 888P "Y88b `Y8bd8P'         888    888    888      888                                               
Y88b     X88K   888    888   X88K           888    888   d88P      Y8P                                               
 Y88b. .d8""8b. Y88b  d88P .d8""8b.         Y88b  d88P .d88P        "                                                
  "Y88 888  888  "Y8888P"  888  888 88888888 "Y8888P"  88P"        888                                               

]]

local ouxie = loadstring(game:HttpGet("https://raw.githubusercontent.com/SkireScripts/Ouxie/main/Ouxie%20UI.lua"))()
ouxie:Window({
    Name = "Ouxie / Gun Ball";
    Size = UDim2.new(0,350,0,370);
})
local tab1 = ouxie:NewTab({
    TabName = "Main";
    IconId = "rbxassetid://7072706318";
})
tab1:Toggle({
    Name = "Auto Block (100%)";
    Callback = function(bool)
        getgenv().auto_block = bool
        local function auto()
            while true do
                if auto_block then
                    game:GetService("ReplicatedStorage").RemoteEvent:FireServer({
                        ["name"] = "defense",
                        ["origin"] = "balltargets"
                    },{})
                else break
                end
                wait()
            end
        end
        auto()
    end;
})
tab1:Input({
    Name = "Quest (needs to be completed)";
    Defualt = "1/2/3";
    Callback = function(raw)
        getgenv().quest = tonumber(raw)
        print(quest)
    end
})
tab1:Toggle({
    Name = "INF Gems";
    Callback = function(bool)
        getgenv().inf_gems = bool
        local function auto()
            while true do
                if inf_gems then
                    local ohTable1 = {
                        ["name"] = "redeem",
                        ["origin"] = "quests"
                    }
                    local ohTable2 = {
                        [1] = getgenv().quest
                    }

                    game:GetService("ReplicatedStorage").RemoteEvent:FireServer(ohTable1, ohTable2)
                    game:GetService("ReplicatedStorage").RemoteEvent:FireServer(ohTable1, ohTable2)
                    game:GetService("ReplicatedStorage").RemoteEvent:FireServer(ohTable1, ohTable2)
                else break
                end
                wait()
            end
        end
        auto()
    end;
})
