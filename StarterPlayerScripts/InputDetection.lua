-- LocalScript (in StarterPlayerScripts)
local RE = game.ReplicatedStorage.Input
local UIS = game:GetService("UserInputService")
UIS.InputBegan:Connect(function(input, processed)
	RE:FireServer(input.KeyCode, {IsEnd = false})
end)
UIS.InputEnded:Connect(function(input, processed)
	RE:FireServer(input.KeyCode, {IsEnd = true})
end)