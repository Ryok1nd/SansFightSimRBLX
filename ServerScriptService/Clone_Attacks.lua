local TweenService = game:GetService("TweenService")
local CollectionService = game:GetService("CollectionService")
local RE = game.ReplicatedStorage:WaitForChild("StarterPlayerBlue")
local isblue = require(game.ReplicatedStorage.IsBlue)

local tweeninfobg1 = TweenInfo.new(2, Enum.EasingStyle.Linear)
local tweeninfobb1= TweenInfo.new(1.85, Enum.EasingStyle.Linear)

local RunBlueBoneClient1 = game.ReplicatedStorage:WaitForChild("RunBlueBoneClient1")
local RunBoneGapClient1 = game.ReplicatedStorage:WaitForChild("RunBoneGapClient1")

local RunBlueBoneServer1 = game.ReplicatedStorage:WaitForChild("RunBlueBoneServer1")
local RunBoneGapServer1 = game.ReplicatedStorage:WaitForChild("RunBoneGapServer1")



RE.OnServerEvent:Connect(function(player)
	local jumpRE = game.ReplicatedStorage:WaitForChild("Jump")
	jumpRE:FireClient(player)
	isblue.isBlue = true
	-- Find player character and parts
	local character = player.Character
	if not character then return end
	
	local root = character:WaitForChild("HumanoidRootPart")
	local box = workspace:WaitForChild("Box")
	local Lpart = box:FindFirstChild("Left")
	local Rpart = box:FindFirstChild("Right")
	local Tpart = box:FindFirstChild("Top")
	local Bpart = box:FindFirstChild("Bottom")
	local waveBone = workspace:WaitForChild("Wave_Bone")
	local Bgap1 = workspace:WaitForChild("BoneGap1")
	local bluebone1 = workspace:WaitForChild("BlueBone1")
	local littleB1 = workspace:WaitForChild("LittleBone1")
	local char = character:WaitForChild("Character")
	root.Position = Vector3.new(Lpart.Position.X, 0, Bpart.Position.Z-7.225)
	char.Position = root.Position
	
	local function onCharacterAdded(chara)
		character = chara
		root = character:WaitForChild("HumanoidRootPart")
		char = character:WaitForChild("Character")
		root.Position = Vector3.new(Lpart.Position.X, 0, Bpart.Position.Z-7.225)
		char.Position = root.Position
		-- Restart or reset any movement-related variables here
	end
	player.CharacterAdded:Connect(onCharacterAdded)
	-- Position player
	--local charPosition = Vector3.new(Lpart.Position.X - 8.25, 0, Tpart.Position.Z)
	--character:PivotTo(CFrame.new(charPosition))
	--root.Position = charPosition
	local function runBoneGap1()
		-- Set arena size
		Tpart.Size = Vector3.new(46, 1, 0.5)
		Bpart.Size = Vector3.new(46, 1, 0.5)
		Lpart.Position -= Vector3.new(0, 0, 14)
		Rpart.Position += Vector3.new(0, 0, 14)
		waveBone.Position -= Vector3.new(0, 0, 14)
		isblue.isBlue = true
		wait(1)
		local cloneFolder = Instance.new("Folder")
		cloneFolder.Name = "BoneClones"
		cloneFolder.Parent = workspace
		for i = 1, 8 do
			local clone1 = Bgap1:Clone()
			local clone2 = Bgap1:Clone()
			
			clone1.Parent = workspace:WaitForChild("BoneClones")
			clone2.Parent = workspace:WaitForChild("BoneClones")
			clone1.Position = Vector3.new(Lpart.Position.X, 0, Bpart.Position.Z + 24)
			clone2.Position = Vector3.new(Lpart.Position.X, 0, Bpart.Position.Z - 24)

			CollectionService:AddTag(clone1, "NormalHit")
			CollectionService:AddTag(clone2, "NormalHit")

			local goal1 = {Position = Vector3.new(Lpart.Position.X, 0, Bpart.Position.Z - 24)}
			local goal2 = {Position = Vector3.new(Lpart.Position.X, 0, Bpart.Position.Z + 24)}

			TweenService:Create(clone1, tweeninfobg1, goal1):Play()
			TweenService:Create(clone2, tweeninfobg1, goal2):Play()
			wait(0.75)
		end
		wait(2.1)
		for _, clone in ipairs(workspace:WaitForChild("BoneClones"):GetChildren()) do
			clone:Destroy()
		end
	end
	local function runBlueBone1()
		Tpart.Size = Vector3.new(46, 1, 0.5)
		Bpart.Size = Vector3.new(46, 1, 0.5)
		Lpart.Position -= Vector3.new(0, 0, 14)
		Rpart.Position += Vector3.new(0, 0, 14)
		waveBone.Position -= Vector3.new(0, 0, 14)
		isblue.isBlue = true
		wait(5)
		local cloneFolder = Instance.new("Folder")
		cloneFolder.Name = "BoneClones"
		cloneFolder.Parent = workspace
		for i = 1, 6 do
			local clone1 = littleB1:Clone()
			local clone2 = bluebone1:Clone()
			clone1.Parent = workspace:WaitForChild("BoneClones")
			clone2.Parent = workspace:WaitForChild("BoneClones")
			CollectionService:AddTag(clone1, "NormalHit")
			CollectionService:AddTag(clone2, "BlueHit")
			if i >3 then
				wait(0.9)
				clone1.Position = Vector3.new(Lpart.Position.X - 7, 0, Bpart.Position.Z + 24)
				clone2.Position = Vector3.new(Lpart.Position.X - 1.5, 0, Bpart.Position.Z + 37)
				local goal1 = {Position = Vector3.new(Lpart.Position.X- 7, 0, Bpart.Position.Z - 37)}
				local goal2 = {Position = Vector3.new(Lpart.Position.X- 1.5, 0, Bpart.Position.Z - 24)}
				TweenService:Create(clone1, tweeninfobb1, goal1):Play()
				TweenService:Create(clone2, tweeninfobb1, goal2):Play()
			else
			clone1.Position = Vector3.new(Lpart.Position.X - 7, 0, Bpart.Position.Z - 35)
			clone2.Position = Vector3.new(Lpart.Position.X - 1.5, 0, Bpart.Position.Z - 24)
			
			
			local goal1 = {Position = Vector3.new(Lpart.Position.X- 7, 0, Bpart.Position.Z + 24)}
			local goal2 = {Position = Vector3.new(Lpart.Position.X- 1.5, 0, Bpart.Position.Z + 35)}
			TweenService:Create(clone1, tweeninfobb1, goal1):Play()
			TweenService:Create(clone2, tweeninfobb1, goal2):Play()
			wait(0.9)
			end
		end
	wait(1.85)
	for _, clone in ipairs(workspace:WaitForChild("BoneClones"):GetChildren()) do
		clone:Destroy()
	end
	end
	
	RunBlueBoneServer1.OnServerEvent:Connect(function()
		runBlueBone1()
	end)

	RunBoneGapServer1.OnServerEvent:Connect(function()
		runBoneGap1()
	end)


	
end)





