local plr = game.Players.LocalPlayer
if plr then
    plr.CameraMinZoomDistance = 0
    plr.CameraMaxZoomDistance = 125

    if plr.CameraMode == Enum.CameraMode.LockFirstPerson then
        plr.CameraMode = Enum.CameraMode.Classic
    else
        print("Camera is already unlocked")
    end

    if plr.DevEnableMouseLock == false then
        plr.DevEnableMouseLock = true
    else
        print("ShiftLock is already Enabled")
    end
end
