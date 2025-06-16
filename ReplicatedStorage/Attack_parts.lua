local parts = {}

-- Player
local player = game.Players.LocalPlayer
local playerScripts = player:WaitForChild("PlayerScripts")
parts.red = playerScripts:WaitForChild("WASD")
parts.blue = playerScripts:WaitForChild("Jump")

local character = player.Character or player.CharacterAdded:Wait()
parts.character = character
parts.rootPart = character:WaitForChild("HumanoidRootPart")
parts.char = character:WaitForChild("Character")

-- PlayerBox
local box = workspace:WaitForChild("Box")
parts.Lpart = box:FindFirstChild("Left")
parts.Rpart = box:FindFirstChild("Right")
parts.Tpart = box:FindFirstChild("Top")
parts.Bpart = box:FindFirstChild("Bottom")

-- SansIntro
parts.waveBone = workspace:WaitForChild("Wave_Bone")
parts.FirstBone = workspace:WaitForChild("First_Bbone")
parts.Hash = workspace:WaitForChild("Hash")
parts.X = workspace:WaitForChild("X")
parts.BigBeam = workspace:WaitForChild("Big_Beam")

-- BoneGap1
parts.Bgap1 = workspace:WaitForChild("BoneGap1")
return parts
