local players = game:GetService("Players")
local replicatedStorage = game:GetService("ReplicatedStorage")

local player = players.LocalPlayer
local gui = script.Parent
local mainSelectFrame = gui:WaitForChild("MainSelectFrame")
local singleAttackSelect = mainSelectFrame:WaitForChild("SingleAttackSelect")
local sansBlueBone1Button = singleAttackSelect:WaitForChild("sans_bluebone1")
local sansBoneGap1Button = singleAttackSelect:WaitForChild("sans_bonegap1")
local sansIntroButton = singleAttackSelect:WaitForChild("sans_intro")

local startSansIntroEvent = replicatedStorage:WaitForChild("StartSansIntro")
local startSansBlueBone1 = replicatedStorage:WaitForChild("StartSansBlueBone1")
local startSansBoneGap1 = replicatedStorage:WaitForChild("StartSansBoneGap1")

sansIntroButton.MouseButton1Click:Connect(function()
	print("Catowl initializing sans intro attack test")
	startSansIntroEvent:FireServer()
end)

sansBlueBone1Button.MouseButton1Click:Connect(function()
	print("Catowl initializing sans blue bone1 attack test")
	startSansBlueBone1:FireServer()
end)

sansBoneGap1Button.MouseButton1Click:Connect(function()
	print("Catowl initializing sans bone gap1 attack test")
	startSansBoneGap1:FireServer()
end)

