local CollectionService = game:GetService("CollectionService")
local damaging = false 

function connectDamageEvents(part)
	part.Touched:Connect(function(hit)
		local h = hit.Parent:FindFirstChild("Humanoid")
		if h and not damaging then
			damaging = true
			repeat
				h:TakeDamage(1.5)
				wait(0.001)
			until not part:IsDescendantOf(game) or not h or h.Health <= 0 or not damaging
		end
	end)

	part.TouchEnded:Connect(function()
		damaging = false
	end)
end

-- Connect for already existing parts with the tag
for _, part in ipairs(CollectionService:GetTagged("NormalHit")) do
	connectDamageEvents(part)
end

-- Connect for future added parts with the tag
CollectionService:GetInstanceAddedSignal("NormalHit"):Connect(function(part)
	connectDamageEvents(part)
end)

