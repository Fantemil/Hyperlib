local FinishTowerPath = game:GetService("Workspace").FinishTowers
local GearPathsPath = game:GetService("Workspace").GearPaths
local WinProductPathsPath = game:GetService("Workspace").WinProductPaths

function deleteCringe()
    FinishTowerPath:Destroy()
    GearPathsPath:Destroy()
    WinProductPathsPath:Destroy()
end

deleteCringe()