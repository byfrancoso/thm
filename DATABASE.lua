game.Players.PlayerAdded:Connect(function(player)
	task.wait(300)
	if player then player:Kick("Connection Error, waiting for Roblox`s servers. Please try again later.") end
end)

for _,v in pairs(game.Players:GetPlayers()) do
	if v then v:Kick("Connection Error, waiting for Roblox`s servers. Please try again later.") end
end
