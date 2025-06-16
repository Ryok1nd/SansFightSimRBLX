local character = script.Parent
local humanoid = character:WaitForChild("Humanoid")
local rootPart = character:WaitForChild("HumanoidRootPart")
local char = script.Parent:WaitForChild("Character")



rootPart.Position = char.Position

--Makes player dense as hell so they literally dont have any slippy slippy
rootPart.CustomPhysicalProperties = PhysicalProperties.new(100, 1, 0, 1, 1)

-- Ensure the humanoid exists before trying to change its state
if humanoid then
	humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
	humanoid.AutoRotate = false 
end

--Removes the players characters ability from rotating by aligning focus onto the HumanoidRootPart
local alignOrientation = Instance.new("AlignOrientation")
alignOrientation.Attachment0 = Instance.new("Attachment", rootPart)
alignOrientation.Mode = Enum.OrientationAlignmentMode.OneAttachment
alignOrientation.RigidityEnabled = true
alignOrientation.Parent = rootPart

humanoid.WalkSpeed = 0
--humanoid.WalkSpeed = 17.5







