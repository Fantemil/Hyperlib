local LP = game:GetService'Players'.LocalPlayer
local Players = game:GetService'Workspace'.Players[LP.Name]
local Tool = Players:FindFirstChildOfClass'Tool'.Name

LP.Character[Tool].SkillKey:Destroy()