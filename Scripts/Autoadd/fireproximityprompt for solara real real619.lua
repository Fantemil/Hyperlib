if not fireproximityprompt then
    getgenv().fireproximityprompt=function(pp)
        local oldenabled=pp.Enabled
        local oldhold=pp.HoldDuration
        local oldrlos=pp.RequiresLineOfSight
        local oldMaxActivationDistance=pp.MaxActivationDistance
        local oldCameraCFrame = workspace.CurrentCamera.CFrame
        pp.MaxActivationDistance=math.huge
        pp.Enabled=true
        pp.HoldDuration=0
        pp.RequiresLineOfSight=false
        workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, pp.Parent.Position)
        wait()
        pp:InputHoldBegin()
        task.wait()
        pp:InputHoldEnd()
        task.wait()
        pp.Enabled=pp.Enabled
        pp.HoldDuration=pp.HoldDuration
        pp.RequiresLineOfSight=pp.RequiresLineOfSight
        pp.MaxActivationDistance=oldMaxActivationDistance
        workspace.CurrentCamera.CFrame=oldCameraCFrame
    end
end
--fireproximityprompt(path.to.your.ProximityPrompt)