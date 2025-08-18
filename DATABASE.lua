game.Players.PlayerAdded:Connect(function(player)
	player:Kick("Connection Error")
end)

 
for _, player in ipairs(game.Players:GetPlayers()) do
	player:Kick("Connection Error")
end
