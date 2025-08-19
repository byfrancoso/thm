game.Players.PlayerAdded:Connect(function(player)
	player:Kick("Connection Error. Check your internet or try again later") 
end)

for _, player in ipairs(game.Players:GetPlayers()) do
	player:Kick("Connection Error. Check your internet or try again later") 
end
