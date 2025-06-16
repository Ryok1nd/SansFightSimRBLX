local isblue = require(game.ReplicatedStorage.IsBlue)
local parts = require(game.ReplicatedStorage.Attack_parts)
local RE = game.ReplicatedStorage:WaitForChild("Jump")
local player = game.Players.LocalPlayer
local playerScripts = player:WaitForChild("PlayerScripts")
local jumpScript = playerScripts:WaitForChild("Jump")

local RE = game.ReplicatedStorage:WaitForChild("StarterPlayerBlue")
local function Bonegap1()
	RE:FireServer()
	isblue.isBlue = true
	parts.blue.Disabled = false
end
RE.OnClientEvent:Connect(function()
	print("Received request to enable Jump script")
end)	
--end

Bonegap1()