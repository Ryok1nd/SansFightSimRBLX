--local part = workspace:WaitForChild("BlueTest")
--local damaging = false
--local UIS = game:GetService("UserInputService")
--local keysPressed = {}
--local touching = false
--local holding = false
--local player = game:GetService("Players").LocalPlayer


--local function onCharacterAdded()
--	keysPressed = {}
--	holding = false
--	touching = false
--	damaging = false
--	-- Restart or reset any movement-related variables here
--end

--player.CharacterAdded:Connect(onCharacterAdded)


--local RunService = game:GetService("RunService")

----UIS.InputBegan:Connect(function(input, processed)
----	if processed then return end
----	if input.UserInputType == Enum.UserInputType.Keyboard then
----		keysPressed[input.KeyCode] = true
----		holding = true
----		print(holding)
----	end
----end)



--UIS.InputBegan:Connect(function(input, processed)
--	if processed then return end
--	--print("poo")
--	keysPressed[input.KeyCode] = true
--	holding = true
--	if input.KeyCode == Enum.KeyCode.Space or input.KeyCode == Enum.KeyCode.W or input.KeyCode == Enum.KeyCode.A or input.KeyCode == Enum.KeyCode.S or input.KeyCode == Enum.KeyCode.D then
		
--		--print(holding)
--		while holding do
--			--print("hold")
--			if touching then
--				--print("touch")
--				local h = lastHit and lastHit.Parent:FindFirstChild("Humanoid")
--				if h and not damaging then
--					damaging = true
--					repeat
--						h:TakeDamage(2)
--						--print("damage")
--						wait(0.01)
--					until not part:IsDescendantOf(game) or not h or h.Health <= 0 or not damaging or keysPressed[input.KeyCode] == false
--					damaging = false
--					keysPressed[input.KeyCode] = false
--				end
--			end
--			wait(0.001)
--		end
--	end
--end)

--part.Touched:Connect(function(hit)
--	touching = true
--	lastHit = hit
--	--print("rah")
--end)

--part.TouchEnded:Connect(function()
--	touching = false
--	damaging = false
--end)

--UIS.InputEnded:Connect(function(input, processed)
--	if processed then return end
--	if input.UserInputType == Enum.UserInputType.Keyboard then
--		keysPressed[input.KeyCode] = false
--		holding = false
--	end
--end)


----part2.Touched:Connect(function(hit)
----	local h = hit.Parent:FindFirstChild("Humanoid")
----	if h and not damaging2 then
----		damaging2 = true
----		repeat
----			h:TakeDamage(1)
----			wait(0.01)
----		until not part2:IsDescendantOf(game) or not h or h.Health <= 0 or not damaging
----	end
----end)

----part2.TouchEnded:Connect(function()
----	damaging2 = false
----end)