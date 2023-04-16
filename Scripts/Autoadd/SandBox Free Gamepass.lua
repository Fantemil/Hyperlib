local i_want = 'NUKE' -- the item (cAsE SenSitIve)
local scrollingFrame = game:GetService("Players").LocalPlayer.PlayerGui.MainUI.Right.Materials.BackBorder.ScrollingFrame
game:GetService("Players").LocalPlayer.PlayerGui.MainUI.ChangeMaterial:Fire(i_want, scrollingFrame[i_want])