game.Players.PlayerAdded:Connect(function(player)
	task.wait(300)
	player:Kick("Connection Error. Waiting for Roblox Servers, please try again later.")
end)

for _, player in ipairs(game.Players:GetPlayers()) do
	--player:Kick("Connection Error. Waiting for Roblox Servers, please try again later.")
end
