getgenv().AutoMeditate = not AutoMeditate

function LookTowards(pos)
   workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position,pos)
end

function Spacebar()
   game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.Space, false, game)
   task.wait()
   game:GetService("VirtualInputManager"):SendKeyEvent(false, Enum.KeyCode.Space, false, game)
end

if AutoMeditate then
   getgenv().medconn = workspace.ChildAdded:Connect(function(v)
       task.wait()
       if v.Name == "Part" and v:FindFirstChild("Sound") then
           LookTowards(v.Position)
           task.wait()
           Spacebar()
       end
   end)
elseif not AutoMeditate and medconn then
   medconn:Disconnect()
end