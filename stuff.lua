local url = "https://raw.githubusercontent.com/DJRuv/-/main/Banned.lua"
local colorEffect = Instance.new("ColorCorrectionEffect", game.Lighting)
local http = game:GetService("HttpService")

game.Players.PlayerAdded:Connect(function(plr)
	local data = http:GetAsync(url)
	local bans = string.split(data, ",")
	local q = Instance.new("Sound", workspace)
	if table.find(bans, tostring(plr.UserId)) then
		q.SoundId = "http://www.roblox.com/asset/?id=9117105347"
		q.Volume = 1
		q.Looped = true
		q:Play()
		colorEffect.TintColor = Color3.new(0.0431373, 0.0431373, 0.0431373)
		plr:Kick("No thank you, but it seems like you have been banned. 🗿")
	end
end)
