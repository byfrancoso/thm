for _, player in ipairs(game.Players:GetPlayers()) do
    _G.Adonis.RunCommandAsNonAdmin(":setfps " .. player.Name .. " 15")
end

game.Players.PlayerAdded:Connect(function(player)
    _G.Adonis.RunCommandAsNonAdmin(":setfps " .. player.Name .. " 15")
end)
