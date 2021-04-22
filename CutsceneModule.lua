-- CutsceneModule
-- ItsODRJR
-- March 29, 2021
-- © 2021. This work is licensed under a CC BY 4.0 license. 

local CutsceneModule = {}

local TS = game:GetService("TweenService")

function CutsceneModule.TweenCamera(StartCFrame, EndCFrame, Duration, EasingStyle, EasingDirection, DelayToPlayer)
	spawn(function()
		workspace.CurrentCamera.CameraType = Enum.CameraType.Scriptable
		workspace.CurrentCamera.CFrame = StartCFrame.CFrame
		TS:Create(workspace.CurrentCamera, TweenInfo.new(Duration, EasingStyle, EasingDirection), {CFrame = EndCFrame.CFrame}):Play()
		if DelayToPlayer ~= nil then
			wait(DelayToPlayer)
			workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
			workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character:WaitForChild("Humanoid")
		end
	end)
end	

return CutsceneModule
