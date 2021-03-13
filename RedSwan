wait(0.1)
print("hey")
workspace.CurrentCamera.CameraType = Enum.CameraType.Scriptable
workspace.CurrentCamera.CFrame = workspace.CameraA.CFrame
game.StarterGui.Sound:Play()
game:GetService("RunService").RenderStepped:Connect(function()
local boom = game.StarterGui.Sound.PlaybackLoudness / 175
workspace.Part.PointLight.Brightness = boom * 1.25
end)
