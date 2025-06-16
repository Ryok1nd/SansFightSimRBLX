local RE = game.ReplicatedStorage.Input
local CollectionService = game:GetService("CollectionService")
local Players = game:GetService("Players")
local keysPressed = {}
local holding = false
local touching = false
local damaging = false
local humanoid

RE.OnServerEvent:Connect(function(player, keyCode, data)
	--print("Received input from:", player.Name)

	local character = player.Character
	if character then
		humanoid = character:FindFirstChild("Humanoid")
	end

	-- Input Ended
	if data and data.IsEnd then
		--print(player.Name .. " released key: " .. keyCode.Name)
		keysPressed[keyCode.Name] = false
		holding = false
		return
	end

	-- Input Began
	if #player:GetChildren() < 4 then
		local Folder = Instance.new("Folder")
		Folder.Name = "Folder"
		Folder.Parent = player

		local StrValue = Instance.new("StringValue")
		StrValue.Parent = Folder
	end

	--print(keyCode.Name)
	keysPressed[keyCode.Name] = true
	holding = true

	for _, part in ipairs(CollectionService:GetTagged("Blue_hit")) do
		--print(part)
		if keyCode == Enum.KeyCode.Space or keyCode == Enum.KeyCode.W or keyCode == Enum.KeyCode.A or keyCode == Enum.KeyCode.S or keyCode == Enum.KeyCode.D then
			--print("DWAHUJIDW")
			while holding do
				--print("uiyoio")
				if touching then
					--print("333")
					if not damaging then
						damaging = true
						repeat
							humanoid:TakeDamage(2.5)
							wait(0.001)
						until not part:IsDescendantOf(game) or not humanoid or humanoid.Health <= 0 or not damaging or not keysPressed[keyCode.Name]
						damaging = false
						keysPressed[keyCode.Name] = false
					end
				end
				wait(0.001)
			end
		end
		
		part.Touched:Connect(function(hit)
			touching = true
			--print("rah")
		end)
		part.TouchEnded:Connect(function()
			touching = false
			damaging = false
		end)

	end
end)
