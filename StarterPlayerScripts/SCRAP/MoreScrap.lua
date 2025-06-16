--local UIS = game:GetService("UserInputService")
--local player = game:GetService("Players").LocalPlayer
--local character = player.Character or player.CharacterAdded:Wait()
--local root = character:WaitForChild("Character")
----local hrp = character:WaitForChild("HumanoidRootPart")
--local humanoid = character:WaitForChild("Humanoid")
--local box = workspace:WaitForChild("Box")
--local bpart = box:FindFirstChild("Bottom")
--local groundbox = bpart:FindFirstChild("hitbox")

----local origin = root.Position
--local maxh = bpart.Position + Vector3.new(10, 0, 0)

--local allKeys = {}
--local count = 0
--local holding = false
--local isMoving = false
--local grounded = false

--local function touching()
--	local touchingParts = root:GetTouchingParts()
--	for _, otherPart in pairs(touchingParts) do
--		if otherPart.Name == "Bottom" then
--			return true
--		end
--	end
--end
--local function gravity()
--	while not touching() and holding == false do
--		if (root.Position.X - 1.5) <= (bpart.Position.X + 0.25) then
--			root.Position = Vector3.new(bpart.Position.X+1, root.Position.Y, root.Position.Z)
--			break
--		end
--		root.Position = root.Position - Vector3.new(1,0,0)
--		wait(0.02)
--	end
--end

--local function onCharacterAdded(char)
--	holding = false
--    character = char
--    root = character:WaitForChild("Character")
--	humanoid = character:WaitForChild("Humanoid")
--	gravity()
    
--    -- Restart or reset any movement-related variables here
--end

--player.CharacterAdded:Connect(onCharacterAdded)




----humanoid:SetPrimaryPartCFrame(root.CFrame)

--UIS.InputBegan:Connect(function(input, processed)
--	if processed then return end
--	if input.KeyCode == Enum.KeyCode.Space then
--		allKeys[input.KeyCode] = true
--		holding = true

--		if not isMoving then
--			isMoving = true
--			local max = root.Position + Vector3.new(7, 0, 0)
--			-- Move forward while holding and not past max
--			while holding and root.Position.X <= max.X do
--				root.Position += Vector3.new(0.75, 0, 0)
--				wait(0.015)
--			end

--			-- Easing forward
--			for i = 1, 3 do
--				root.Position += Vector3.new(0.2, 0, 0)
--				wait(0.01)
--			end
--			for i = 1, 3 do
--				root.Position += Vector3.new(0.075, 0, 0)
--				wait(0.01)
--			end
--			--for i = 1, 3 do
--			--	root.Position -= Vector3.new(0.1, 0, 0)
--			--	wait(0.015)
--			--end

--			-- Easing backward
--			for i = 1, 3 do
--				root.Position -= Vector3.new(0.225, 0, 0)
--				wait(0.01)
--			end

--			-- Smoothly return to origin
--			while not touching() do
--				if (root.Position.X - 1.5) <= (bpart.Position.X + 0.25) then
--					break
--				end
--				root.Position -= Vector3.new(0.75,0,0)
--				wait(0.015)
--			end
--			root.Position = Vector3.new(bpart.Position.X+1, root.Position.Y, root.Position.Z)

--			isMoving = false
--		end
--	end
--end)

--gravity()



--UIS.InputEnded:Connect(function(input, processed)
--	if processed then return end
--	if input.KeyCode == Enum.KeyCode.Space then
--		allKeys[input.KeyCode] = false
--		holding = false
--	end
--end)
