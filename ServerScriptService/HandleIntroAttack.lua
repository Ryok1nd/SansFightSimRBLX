local ReplicatedStorage = game:GetService("ReplicatedStorage")
local StartSansIntroAttack = ReplicatedStorage:WaitForChild("StartSansIntro")
local StartSansBlueBone1 = ReplicatedStorage:WaitForChild("StartSansBlueBone1")
local StartSansBoneGap1 = ReplicatedStorage:WaitForChild("StartSansBoneGap1")
local RunIntroClient = ReplicatedStorage:WaitForChild("RunIntroClient")
local RunBlueBoneClient1 = ReplicatedStorage:WaitForChild("RunBlueBoneClient1")
local RunBoneGapClient1 = ReplicatedStorage:WaitForChild("RunBoneGapClient1")

StartSansIntroAttack.OnServerEvent:Connect(function(player)
	print(player.Name .. " triggered Sans intro attack")

	-- Tell client to run the animation
	RunIntroClient:FireClient(player)
end)

StartSansBlueBone1.OnServerEvent:Connect(function(player)
	print(player.Name .. " triggered Sans blue bone1 attack")

	-- Tell client to run the animation
	RunBlueBoneClient1:FireClient(player)
end)

StartSansBoneGap1.OnServerEvent:Connect(function(player)
	print(player.Name .. " triggered Sans bone gap1 attack")

	-- Tell client to run the animation
	RunBoneGapClient1:FireClient(player)
end)
