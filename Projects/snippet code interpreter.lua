--[[snippets code interpreter
	before you go after me, it runs snippets not full fucking code, so its useless
	also couldnt find a better free limitless api
]]
local request = http_request or request or (syn and syn.request) or (fluxus and fluxus.request) or (http and http.request)
local exec = {}
function exec.run(config)
    local run_code = request({
        Url = "https://glot.io/run/"..config.language.."?version="..config.version,
        Method = "POST",
        Headers = {
            ["content-type"] = "application/json"
        },
        Body = game:GetService("HttpService"):JSONEncode({
            files = {
                [1] = {
                    name = "penis",
                    content = game:GetService("HttpService"):JSONEncode(config.source)
                }
            },
            stdin = "",
            command = config.command
        })
    })

    local response = game:GetService("HttpService"):JSONDecode(run_code.Body)

    if response["stdout"] ~= nil then
		return response.stdout
    else
        warn(run_code.Body)
        return ""
    end
end
return exec
