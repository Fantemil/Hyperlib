local player = game:GetService('Players').LocalPlayer
lplr = player
local character = player.Character
player.CharacterAdded:Connect(function(c)
    character = c
end)
local part=Instance.new("Part")
part.Name="Head"
OldNameCall = hookmetamethod(game, "__namecall", newcclosure(function(...)
 if not checkcaller() then
  local Self,Key = ...
  local NamecallMethod = getnamecallmethod()
  if NamecallMethod == "IsStudio" then
   printconsole(("[%s] InStudio checked (Namecall)"):format(os.date('%X')),0,255,0)
   return true
  end
  if NamecallMethod == "GetDescendants" and Self == character then
   local sanitary = {}
   for i, v in ipairs(character.GetChildren(character)) do
    if v.IsA(v, 'BasePart') then
     for a=1,18 do
      table.insert(sanitary, v)
     end
    end
   end
   return sanitary
  end
  if NamecallMethod == "FindFirstChild" and Self == character and Key~="Humanoid" and Key~="Head" then
   --print(Self,...)
   local sanitary = {}
   for i, v in ipairs(character.GetChildren(character)) do
    table.insert(sanitary, part)
    if v.IsA(v, 'BasePart') then
     for a=1,18 do
      table.insert(sanitary, v)
     end
    end
   end
   return sanitary
  end
  if NamecallMethod == "InvokeServer" then
   print("Grabbed",Self,Key)
   printconsole(("[%s] Spoofed InvokeServer MOS (Namecall)"):format(os.date('%X')),0,255,0)
   task.wait(99999999)
   return nil
  end
 end
    return OldNameCall(...)
end))
printconsole(("[%s] Wrapped! "):format(os.date('%X')),0,255,0)
spawn(function()
    local fuckroot = root
    spawn(function()
        while task.wait() do
            pcall(function()
                local root = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                if fuckroot.Position.Y>1 and fuckroot.Position.Y<30 then
                    root.Position = fuckroot.Position
                end
    game:GetService("ReplicatedStorage"):FindForChild("AEComFunc"):Destroy()
            end)
        end
    end)
    while wait() do
        pcall(function()
            if game.Players.LocalPlayer.Character.HumanoidRootPart.Transparency~=1 then
                for i,v in pairs(game:GetService("Players"):GetChildren()) do
                    if game.Players.LocalPlayer.Character.HumanoidRootPart.Transparency~=1 then
                        if v ~= game:GetService("Players").LocalPlayer then
                            pcall(function()
                                if v.Character.Humanoid.Sit == true then
                                    wait(.4)
                                    spawn(function()
                                        if v.Character:WaitForChild("HumanoidRootPart",0.01) then
                                            fuckroot = v.Character.HumanoidRootPart
                                        end
                                    end)
                                end
                            end)
                        end
                    end
                end
                for i,v in pairs(workspace.SpawnedCars:GetChildren()) do
                    pcall(function()
                        fuckroot = v.Chassis.FloorPanel
                        wait(.2)
                    end)
                end
            end
        end)
    end
end)
local name=game.Players.LocalPlayer.Name
while true do
    for i,v in next,workspace.SpawnedCars:GetChildren() do
        local x,y=pcall(function()
            if v.Name:sub(1,#name)~=name then
                for i,v in next,v:GetDescendants() do
                    pcall(function()
                        v.CanTouch=false
                        v.CanCollide=false
                    end)
                end
            end
        end)
        wait()
        if not x then
            print(y)
        end
    end
    for i,v in next,game.Players:GetPlayers() do
        local x,y=pcall(function()
            if v.Name~=name then
                for i,v in next,v.Character:GetDescendants() do
                    pcall(function()
                        v.CanTouch=false
                        v.CanCollide=false
                    end)
                end
            end
        end)
        wait()
        if not x then
            print(y)
        end
    end
    wait(5)
end