local camera = workspace.CurrentCamera
local fpart = workspace:WaitForChild("FixedPos")

camera.CameraType = "Scriptable"

local z = 1600

camera.CFrame = CFrame.new(Vector3.new(7.097, z, -3.24), fpart.Position)
camera.CameraSubject = fpart
camera.FieldOfView = 2.25