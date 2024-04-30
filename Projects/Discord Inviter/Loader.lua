--[[
The discord inviter [v1.0.2]

log:
[4/2424] fixed png icons not showing for guilds
[4/18/24] Recoded the whole thing.
[4/18/24] ADDED GIF SUPPORT ON SERVER ICON!!!!!
[4/16/24] added animation.
[4/16/24] there are no animations right now and ive just finshed making and testing it

github source: https://github.com/SkireScripts/Ouxie/
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

-- services:
local HttpService = game:GetService("HttpService")
local TweenService = game:GetService("TweenService")
local CoreGui = game:GetService("CoreGui")
local ui = loadstring(game:HttpGet("https://raw.githubusercontent.com/SkireScripts/Ouxie/main/Projects/Discord%20Inviter/Assets/PromptUI.lua"))()

-- functions:
local function getInviteCode(sInvite)
	for i = #sInvite, 1, -1 do
		local char = sInvite:sub(i, i)
		if char == "/" then
			return sInvite:sub(i + 1, #sInvite)
		end
	end
	return sInvite
end

local function getInviteData(sInvite)
	local success, result = pcall(function()
		return HttpService:JSONDecode(request({
			Url = "https://ptb.discord.com/api/invites/".. getInviteCode(sInvite),
			Method = "GET"
		}).Body)
	end)
	if not success then
		warn("Failed to get invite data:\n".. result)
		return
	end
	return success, result
end

local discord = {}

function discord:invite(link, name, call)
    -- load invite prompt
    local prompt = ui:load(name, call)

    -- load animation functions:
    local anims = loadstring(game:HttpGet("https://raw.githubusercontent.com/SkireScripts/Ouxie/main/Projects/Discord%20Inviter/Assets/Animations.lua"))()

    -- load some more:
    anims:intro(prompt)
    prompt.GUI.Holder.Join.ImageButton.MouseButton1Click:Connect(function()
        setclipboard(link)
        anims:outro(prompt)
        prompt.GUI:Destroy()
		call()
    end)
    prompt.Nevermind.MouseButton1Click:Connect(function()
        anims:outro(prompt)
        prompt.GUI:Destroy()
    end)

    -- load data (guild name, guild icons, writefiles/makefolders):
    if not isfolder("DiscordInviter") then
        makefolder("DiscordInviter")
    end
    local success, result = getInviteData(link)
    local vanity = getInviteCode(link)
    local stats = {
        guildid = result.guild.id,
        guildicon = result.guild.icon
    }
    local url = "https://img.gs/ffbnwhxcvb/format=h264/"..tostring(("https://cdn.discordapp.com/icons/%s/%s.gif"):format(stats.guildid, stats.guildicon))
    local extension
    local success, result = pcall(function()
        game:HttpGet(url)
    end)
    if success then
        extension = "mp4"
        prompt.VideoFrame.Visible = true
    else
        extension = "png"
        prompt.VideoFrame.Visible = false
        prompt.ImageIcon.Visible = true
        url = tostring(("https://cdn.discordapp.com/icons/%s/%s.png"):format(stats.guildid, stats.guildicon))
    end
    local fileName = "DiscordInviter/DiscordIcon." .. extension

    -- set icon:
    local success, imageData = pcall(function()
        return game:HttpGet(url)
    end)

    if success then
        writefile(fileName, imageData)
        if extension == "mp4" then
            prompt.VideoFrame.Video = getcustomasset(fileName)
        else
            prompt.ImageIcon.Image = getcustomasset(fileName)
        end
    else
        warn("error geting icon")
    end
end

return discord
