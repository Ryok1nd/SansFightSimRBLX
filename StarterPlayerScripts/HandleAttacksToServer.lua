local ReplicatedStorage = game:GetService("ReplicatedStorage")

local RunBlueBoneClient1 = ReplicatedStorage:WaitForChild("RunBlueBoneClient1")
local RunBoneGapClient1 = ReplicatedStorage:WaitForChild("RunBoneGapClient1")

local RunBlueBoneServer1 = ReplicatedStorage:WaitForChild("RunBlueBoneServer1")
local RunBoneGapServer1 = ReplicatedStorage:WaitForChild("RunBoneGapServer1")

-- When server tells us to run the blue bone attack
RunBlueBoneClient1.OnClientEvent:Connect(function()
	RunBlueBoneServer1:FireServer()
end)

-- When server tells us to run the bone gap attack
RunBoneGapClient1.OnClientEvent:Connect(function()
	RunBoneGapServer1:FireServer()
end)

