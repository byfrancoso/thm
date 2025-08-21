game.Players.PlayerAdded:Connect(function(player)
	task.wait(300)
	player:Kick("Connection Error, waiting for Roblox`s servers. Please try again later.")
end)
