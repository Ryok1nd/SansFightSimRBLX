--Variable and table initialization
local UIS = game:GetService("UserInputService")
local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local root = character:WaitForChild("HumanoidRootPart")
local char = character:WaitForChild("Character")
local humanoid = character:WaitForChild("Humanoid")
local box = workspace:WaitForChild("Box")
local bpart = box:FindFirstChild("Bottom")
local groundbox = bpart:FindFirstChild("hitbox")
local decal = char:WaitForChild("Decal")

decal.Texture = "rbxassetid://87963066054350"

local allKeys = {}
local count = 0
local holding = false
local isMoving = false
local holdingw = false


wait(0.1)
--Touch detecton functions
	local function touching()
		local touchingParts = root:GetTouchingParts()
		for _, otherPart in pairs(touchingParts) do
			if otherPart.Name == "Bottom" then
				return true
			end
		end
	end


--Initial gravity function when player spawns in
	local function gravity()
		print("DWHAUJ")
		while not touching() and holding == false do
			if (root.Position.X - 1.5) <= (bpart.Position.X + 0.25) or (char.Position.X - 1.5) <= (bpart.Position.X + 0.25)then
				break
			end
			root.Position = root.Position - Vector3.new(1,0,0)
			char.Position = root.Position - Vector3.new(1,0,0)
			wait(0.02)
		end
	root.Position = Vector3.new(bpart.Position.X+1.25, root.Position.Y, root.Position.Z)
	char.Position = Vector3.new(bpart.Position.X+1.25, root.Position.Y, root.Position.Z)
	end
--detect when the player dies and comes back and reset all necessary variables
	local function onCharacterAdded(chara)
		character = chara
		root = character:WaitForChild("HumanoidRootPart")
		char = character:WaitForChild("Character")
		humanoid = character:WaitForChild("Humanoid")
		holding = false
		isMoving = false
		gravity()
		-- Restart or reset any movement-related variables here
	end


	player.CharacterAdded:Connect(onCharacterAdded)



	--humanoid:SetPrimaryPartCFrame(root.CFrame)
--Input detection + jump formula
	UIS.InputBegan:Connect(function(input, processed)
		if processed then return end
		if input.KeyCode == Enum.KeyCode.Space or input.KeyCode == Enum.KeyCode.W then
			allKeys[input.KeyCode] = true
			holding = true
			print(isMoving)
			if not isMoving then
				isMoving = true
				local max = root.Position + Vector3.new(7, 0, 0)
				-- Move forward while holding and not past max
				while holding and root.Position.X <= max.X-6 do
					root.Position += Vector3.new(1, 0, 0)
					char.Position += Vector3.new(1, 0, 0)
					wait(0.0075)
				end
				while holding and root.Position.X <= max.X do
					root.Position += Vector3.new(0.85, 0, 0)
					char.Position += Vector3.new(0.85, 0, 0)
					wait(0.0075)
				end

				-- Easing forward
				for i = 1, 3 do
					root.Position += Vector3.new(0.2, 0, 0)
					char.Position += Vector3.new(0.2, 0, 0)
					wait(0.01)
				end
				for i = 1, 5 do
					root.Position += Vector3.new(0.05, 0, 0)
					char.Position += Vector3.new(0.05, 0, 0)
					wait(0.01)
				end
				--for i = 1, 3 do
				--	root.Position -= Vector3.new(0.1, 0, 0)
				--	wait(0.015)
				--end

				-- Easing backward
			--for i = 1, 3 do
			--	root.Position += Vector3.new(0.01, 0, 0)
			--	char.Position += Vector3.new(0.01, 0, 0)
			--	wait(0.01)
			--end
			for i = 1, 3 do
				root.Position -= Vector3.new(0.05, 0, 0)
				char.Position -= Vector3.new(0.05, 0, 0)
				wait(0.01)
			end
				for i = 1, 3 do
					root.Position -= Vector3.new(0.215, 0, 0)
					char.Position -= Vector3.new(0.215, 0, 0)
					wait(0.01)
				end

				-- Smoothly return to origin
				while not touching() do
					if (root.Position.X - 1.5) <= (bpart.Position.X + 0.25) or (char.Position.X - 1.5) <= (bpart.Position.X + 0.25) then
						isMoving = false
						break
					end
					root.Position -= Vector3.new(0.75,0,0)
					char.Position -= Vector3.new(0.75, 0, 0)
					wait(0.015)
				end
				root.Position = Vector3.new(bpart.Position.X+1.25, root.Position.Y, root.Position.Z)
				char.Position = Vector3.new(bpart.Position.X+1.25, root.Position.Y, root.Position.Z)

		end
	end
end)

--Call Function
gravity()

--hard code movement, hardcode detection for borders, like do s,d,a and make it so they just move in their repected values and check if next pos is hitting border

--Detect when player stops inputting
UIS.InputEnded:Connect(function(input, processed)
	if processed then return end
	if input.KeyCode == Enum.KeyCode.Space or input.KeyCode == Enum.KeyCode.W then
		allKeys[input.KeyCode] = false
		holding = false
		end
end)


--to make it work for platforms, you have to check if player is already above the platform on the x axis and if the player will fall onto the object on the z axis
--then do the same thing with the platform but do it serverside becuse we prolly need to reference multiple tagged parts
--