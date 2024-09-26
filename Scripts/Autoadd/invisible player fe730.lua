if _G.a then for _,b in pairs(_G.a) do b:Disconnect() end _G.a=nil end

local c repeat task.wait() until game.Players.LocalPlayer c=game.Players.LocalPlayer

local d,e,f,g=c:GetMouse(),c.Character or c.CharacterAdded:Wait(),nil,nil
repeat f=e:FindFirstChildOfClass("Humanoid") until f
repeat g=e:FindFirstChild("HumanoidRootPart") until g

local h,i=false,{}
for _,j in pairs(e:GetDescendants()) do if j:IsA("BasePart") and j.Transparency==0 then i[#i+1]=j end end

local k={nil,nil}
k[1]=d.KeyDown:Connect(function(l)
    if l=="g" then
        h=not h
        for _,m in pairs(i) do m.Transparency=m.Transparency==0 and 0.5 or 0 end
    end
end)

k[2]=game:GetService("RunService").Heartbeat:Connect(function()
    if h then
        local n,o=g.CFrame,f.CameraOffset
        local p=n*CFrame.new(0,-200000,0)
        f.CameraOffset,g.CFrame=p:ToObjectSpace(CFrame.new(n.Position)).Position,p
        game:GetService("RunService").RenderStepped:Wait()
        f.CameraOffset,g.CFrame=o,n
    end
end)

_G.a=k