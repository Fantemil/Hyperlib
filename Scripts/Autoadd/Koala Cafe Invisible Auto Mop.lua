local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(
   function()
       vu:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
       wait(1)
       vu:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
   end
)
spawn(
   function()
       while task.wait(0.4) do
           pcall(
               function()
                   for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                       if v.name == "Mop" then
                           v.Parent = game.Players.LocalPlayer.Character
                       end
                   end
               end
           )
       end
   end
)
spawn(
   function()
       while task.wait() do
           pcall(
               function()
                   local player = game:GetService("Players").LocalPlayer
                   local checkMop
                   for i, v in pairs(getgc()) do
                       if
                           type(v) == "function" and islclosure(v) and not is_synapse_function(v) and
                               getinfo(v).name == "checkMop"
                        then
                           local a = rawget(getfenv(v), "script")
                           if typeof(a) == "Instance" and a == player.PlayerScripts["LoadClientModules Mop Emote"].Mop then
                               checkMop = v
                           end
                       end
                   end

                   for i, v in pairs(game.Workspace["Spill Assets"].Spills:GetChildren()) do
                       if v:IsA("BasePart") then
                           syn.secure_call(checkMop, player.PlayerScripts.ChatScript, v.Position)
                       end
                   end
               end
           )
       end
   end
)
spawn(
   function()
       while task.wait() do
           pcall(
               function()
                   Clone = game:GetService("Players").LocalPlayer.Character.LowerTorso.Root:Clone()
                   game:GetService("Players").LocalPlayer.Character.LowerTorso:Destroy()
                   Clone.Parent = game:GetService("Players").LocalPlayer.Character
               end
           )
       end
   end
)
spawn(
   function()
       while task.wait() do
           pcall(
               function()
                   for i, v in pairs(game.Workspace["Spill Assets"].Spills:GetChildren()) do
                       if v.Name == "Spill" then
                           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position)
                           wait(.50)
                       end
                   end
               end
           )
       end
   end
)
spawn(
   function()
       while task.wait() do
           pcall(
               function()
                   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                       game:GetService("Workspace").SantaXPPoints.PointsStar.CFrame
               end
           )
       end
   end
)