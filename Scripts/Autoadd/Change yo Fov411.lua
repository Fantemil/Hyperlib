local varsglobal = {
    visuals = {
        FovChanger = true, 
        FovAdd = 120,
        OldFov = workspace.CurrentCamera.FieldOfView,
        ZoomAmt = 0,
        FovZoom = false,
    },
}

local function updateFOV()
    if varsglobal.visuals.FovChanger then
        workspace.CurrentCamera.FieldOfView = varsglobal.visuals.OldFov + varsglobal.visuals.FovAdd
    else
        workspace.CurrentCamera.FieldOfView = varsglobal.visuals.OldFov
    end
end
game:GetService("RunService").RenderStepped:Connect(updateFOV)