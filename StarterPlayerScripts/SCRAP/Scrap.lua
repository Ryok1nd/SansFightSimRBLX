--local player = game:GetService("Players").LocalPlayer
--local character = player.Character or player.CharacterAdded:Wait()
--local root = character:WaitForChild("HumanoidRootPart")

--local box = workspace:WaitForChild("Box")
--local bpart = box:FindFirstChild("Bottom")
--local groundbox = bpart:FindFirstChild("hitbox")
--local UserInputService = game:GetService("UserInputService")

--local gravity = -5
--local jumpvel = 20
--local pvel = 0

--local jumping = false
--local jumpPower = 25
--local touch = false

--local function touching()
--	local touchingParts = root:GetTouchingParts()
--	for _, otherPart in pairs(touchingParts) do
--		if otherPart.Name == "Bottom" then
--			return true
--		end
--	end
--end

--local function grounded()
--	root.Touched:connect(function(hit)
--		if hit.Name == groundbox then
--			return true
--		end
--	end)
--end

--local holding = false

----check user input
--UserInputService.InputBegan:Connect(function(input, gpe)
--	if not gpe and input.KeyCode == Enum.KeyCode.Space then
--		holding = true
--	end
--end)

--UserInputService.InputEnded:Connect(function(input, gpe)
--	if not gpe and input.KeyCode == Enum.KeyCode.Space then
--		holding = false
--	end
--end)


--local velocity = Instance.new("BodyVelocity")
--velocity.Velocity = Vector3.new(0, 0, 0)

--velocity.Parent = root
--local count = 0
--local countg =0

--local function gravity()
--	repeat
--		velocity.Velocity = velocity.Velocity + Vector3.new(gravity, 0, 0)
--		gravity -= countg
--		countg += 1
--		wait(0.05)
--	until grounded()
--	countg = 0
--end

--game:GetService("UserInputService").InputBegan:Connect(function(input, gpe)
--	if gpe or jumping or input.KeyCode ~= Enum.KeyCode.Space then return end
--	if touching() then-- Wait until player is touching "Bottom" again before allowing another jump\
--		while holding do
			
		
--		--repeat
--			velocity.Velocity = velocity.Velocity + Vector3.new(jumpvel, 0, 0)
--			if count >= 2 and count <= 6 then
--				print("ding")
--				jumpvel -= 0.5
--			elseif count >= 6 and count<=10 then
--				print("dinga")
--				jumpvel -= 2
--			elseif count >= 10 then
--				print("dingaling")
--				jumpvel -= 5
--			end
--			print("di")
--			print(jumpvel)
--			wait(0.05)
--			count += 1
--		end
--		--until not_press
--		gravity()
--		count = 0

--		--jumping = false
--	end
--end)

----if not holding then
----	gravity()
----end