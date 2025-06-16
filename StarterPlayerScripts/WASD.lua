--Variable and table Initialization
local UIS = game:GetService("UserInputService")
local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local root = character:WaitForChild("HumanoidRootPart")
local char = character:WaitForChild("Character")
--local hrp = character:WaitForChild("HumanoidRootPart")
local humanoid = character:WaitForChild("Humanoid")
local box = workspace:WaitForChild("Box")
local Lpart = box:FindFirstChild("Left")
local Rpart = box:FindFirstChild("Right")
local Tpart = box:FindFirstChild("Top")
local Bpart = box:FindFirstChild("Bottom")
local module = require(game.ReplicatedStorage.IsBlue)
local decal = char:WaitForChild("Decal")


local allKeys = {}
local count = 0
local holding = false
local isMoving = false
local grounded = false
local holdingw = false
local iftouch = false
local blue = false


local scriptToControl = script.Parent:WaitForChild("Jump")

scriptToControl.Disabled = true

--ui:Destroy()

--Detect when touching certain sides
local function touching(side)
	local touchingParts = root:GetTouchingParts()
	for _, otherPart in pairs(touchingParts) do
		if otherPart.Name == "Left" and side == "left" then
			return true
		elseif otherPart.Name == "Right" and side == "right" then
			return true
		elseif otherPart.Name == "Top" and side == "top" then
			return true
		elseif otherPart.Name == "Bottom" and side == "bottom" then
			return true
		end
	end
end


--Reset varia
local function onCharacterAdded(chara)
	character = chara
	root = character:WaitForChild("HumanoidRootPart")
	char = character:WaitForChild("Character")
	humanoid = character:WaitForChild("Humanoid")
	holding = false
	isMoving = false
	iftouch = false
	-- Restart or reset any movement-related variables here
end


player.CharacterAdded:Connect(onCharacterAdded)

local RunService = game:GetService("RunService")
local UIS = game:GetService("UserInputService")

local keysPressed = {}

UIS.InputBegan:Connect(function(input, processed)
	if processed then return end
	if input.UserInputType == Enum.UserInputType.Keyboard then
		keysPressed[input.KeyCode] = true
	end
end)

UIS.InputEnded:Connect(function(input, processed)
	if processed then return end
	if input.UserInputType == Enum.UserInputType.Keyboard then
		keysPressed[input.KeyCode] = false
	end
end)

RunService.Heartbeat:Connect(function()
	if keysPressed[Enum.KeyCode.A] then
		if not touching("left") then
			if not ((root.CFrame.Z -0.25) <= (Lpart.CFrame.Z + 1)) then
				root.CFrame = root.CFrame + Vector3.new(0, 0, -0.25) -- adjust to your direction logic
			end
		end
	end
	if keysPressed[Enum.KeyCode.D] then
		if not touching("right") then
			if (root.CFrame.Z +0.25) <= (Rpart.CFrame.Z - 1) then
				root.CFrame = root.CFrame + Vector3.new(0, 0, 0.25)
			end
		end
	end
	if not module.isBlue then
		decal.Texture = "rbxassetid://86028069764983"
		if keysPressed[Enum.KeyCode.W] or keysPressed[Enum.KeyCode.Space] then
			if not touching("top") then
				if (root.CFrame.X +0.25) <= (Tpart.CFrame.X - 1) then
					root.CFrame = root.CFrame + Vector3.new(0.25, 0, 0)
				end
			end
		end
		if keysPressed[Enum.KeyCode.S] then
			if not touching("bottom") then
				if not ((root.CFrame.X - 0.25) <= (Bpart.CFrame.X + 1)) then
					root.CFrame = root.CFrame + Vector3.new(-0.25, 0, 0)
				end
			end
		end
	end
	-- Similarly add W, S if needed
end)




----hard code movement, hardcode detection for borders, like do s,d,a and make it so they just move in their repected values and check if next pos is hitting border

--UIS.InputEnded:Connect(function(input, processed)
--	if processed then return end
--	if input.KeyCode == Enum.KeyCode.A or input.KeyCode == Enum.KeyCode.D then
--		allKeys[input.KeyCode] = false
--		holding = false
--	end
--end)
----do what we did forr the jumps but make it for player wasd, also for now just have a variable that will represent the module we
----prob have to use that just disables the w and s keys for now. just make it if true so make it not work foever