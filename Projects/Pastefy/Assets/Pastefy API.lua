local request = http_request or request or (syn and syn.request) or (fluxus and fluxus.request) or (http and http.request)
local base = "https://pastefy.app/api/v2"

local paste = {}

-- Create paste
function paste:Paste(Title, Content)
    local pste = request({
        Url = base.."/paste",
        Method = "POST",
        Headers = {
            ["authorization"] = "Bearer Null",
            ["content-type"] = "application/json"
        },
        Body = game:GetService("HttpService"):JSONEncode({
            content = Content,
            title = Title,
            visibility = "UNLISTED",
            encrypted = false,
            type = "PASTE"
        })
    })
    local response = game:GetService("HttpService"):JSONDecode(pste.Body)
    if response.success then
        local paste_id = tostring(response.paste.id)
        local output_link = "https://pastefy.app/"..paste_id
        return output_link
    end
end

-- Get Trending
function paste:Trending(Page, Page_size)
    local pste = request({
        Url = base.."/public-pastes/latest",
        Method = "GET",
        Headers = {
            ["authorization"] = "Bearer Null",
            ["content-type"] = "application/json"
        },
        Body = game:GetService("HttpService"):JSONEncode({
            page = Page,
            page_size = Page_size
        })
    })
    local response = game:GetService("HttpService"):JSONEncode(pste.Body)
    if response then
        --print(response)
        local scripts = game:GetService("HttpService"):JSONDecode(game:GetService("HttpService"):JSONEncode({response})) scripts = game:GetService("HttpService"):JSONDecode(scripts[1]) scripts = game:GetService("HttpService"):JSONDecode(scripts)
        return scripts
    end
end

return paste
