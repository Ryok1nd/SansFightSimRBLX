local red = script.Parent:WaitForChild("WASD")
local blue = script.Parent:WaitForChild("Jump")
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local rootPart = character:WaitForChild("HumanoidRootPart")
local char = character:WaitForChild("Character")
local box = workspace:WaitForChild("Box")
local Lpart = box:FindFirstChild("Left")
local Rpart = box:FindFirstChild("Right")
local Tpart = box:FindFirstChild("Top")
local Bpart = box:FindFirstChild("Bottom")
local waveBone = workspace:WaitForChild("Wave_Bone")
local FirstBone = workspace:WaitForChild("First_Bbone")
local Hash= workspace:WaitForChild("Hash")
local X = workspace:WaitForChild("X")
local BigBeam = workspace:WaitForChild("Big_Beam")
local module = require(game.ReplicatedStorage.IsBlue)

local RunIntroClient = game.ReplicatedStorage:WaitForChild("RunIntroClient")

--char.Position = Vector3.new(Lpart.Position.X, 0, Tpart.Position.Z)
--rootPart.Position = char.Position


local function sans_intro()
	wait(2.5)
	red.Disabled = true
	blue.Disabled = true
	module.isBlue = true
	
	char.Position = Vector3.new(Lpart.Position.X, 0, Tpart.Position.Z)
	rootPart.Position = Vector3.new(Lpart.Position.X, 0, Tpart.Position.Z)
	FirstBone.Position = Vector3.new(Bpart.Position.X - 8.25, 0, Bpart.Position.Z)
	waveBone.Position = Vector3.new(Lpart.Position.X, 0, Lpart.Position.Z-25.25)
	

	wait(0.25)

	for i = 1, 3 do
		char.Position += Vector3.new(-1, 0, 0)
		rootPart.Position += Vector3.new(-1, 0, 0)
		wait(0.01)
	end
	for i = 1, 2 do
		char.Position += Vector3.new(-2, 0, 0)
		rootPart.Position += Vector3.new(-2, 0, 0)
		wait(0.01)
	end
		char.Position += Vector3.new(-1.25, 0, 0)
		rootPart.Position += Vector3.new(-1.25, 0, 0)
	module.isBlue = true
	red.Disabled = false
	wait(0.25)
	blue.Disabled = false
	wait(0.125)
	FirstBone.Position = Vector3.new(Bpart.Position.X -3.75, 0, Bpart.Position.Z)
	for i = 1, 2 do
		FirstBone.Position += Vector3.new(0.75, 0, 0)
		wait(0.025)
	end
	for i = 1, 2 do
		FirstBone.Position += Vector3.new(1.75, 0, 0)
		wait(0.025)
	end
	for i = 1, 2 do
		FirstBone.Position += Vector3.new(0.25, 0, 0)
		wait(0.001)
	end
	wait(0.5)
	blue.Disabled = true
	module.isBlue = false
	local count = 0
	wait(0.3)
	for i = 1, 56 do
		waveBone.Position += Vector3.new(0, 0, 1.25)
		count += 1
		
		if count >= 17 and count <= 26 then
			FirstBone.Position -= Vector3.new(0.75, 0, 0)
		end
		wait(0.03)
	end
	
	wait(0.15)
	Hash.Position = Vector3.new(Lpart.Position.X, 0, Tpart.Position.Z)
	wait(0.5)
	Hash.Position = Vector3.new(Lpart.Position.X+40, 0, Tpart.Position.Z)
	wait(0.4)
	X.Position = Vector3.new(Lpart.Position.X, 0, Tpart.Position.Z)
	wait(0.4)
	X.Position = Vector3.new(Lpart.Position.X+40, 0, Tpart.Position.Z)
	wait(0.4)
	Hash.Position = Vector3.new(Lpart.Position.X, 0, Tpart.Position.Z)
	wait(0.4)
	Hash.Position = Vector3.new(Lpart.Position.X+40, 0, Tpart.Position.Z)
	wait(0.75)
	BigBeam.Position = Vector3.new(Lpart.Position.X, 0, Tpart.Position.Z)
	wait(1)
	BigBeam.Position = Vector3.new(Lpart.Position.X+40, 0, Tpart.Position.Z)
end

--sans_intro()

RunIntroClient.OnClientEvent:Connect(function()
	sans_intro()
end)



