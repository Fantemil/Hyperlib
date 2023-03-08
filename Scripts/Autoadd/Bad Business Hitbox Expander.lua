--Made By The3Bakers#4565
--Discord https://discord.gg/yBEzKHB3Qr
_G.HitBoxPart="Head"--All,LeftHand,Abdomen,RightLeg,Hips,RightFoot,LeftArm,LeftForearm,RightForearm,RightForeleg,RightHand,Chest,RightArm,Neck,Head,LeftForeleg,LeftLeg,LeftFoot
_G.HitBoxSize=25--0-50
_G.HitBoxColor=Color3.fromRGB(255,0,0)
_G.HitBoxTransparency=0--0-1 (0 visible 1 invisible)
_G.HitBoxMaterial="SmoothPlastic"--Plastic,Wood,Slate,Concrete,CorrodedMetal,DiamondPlaye,Foil,Grass,Ice,Marble,Granite,Brick,Pebble,Sand,Fabric,SmoothPlastic,Metal,WoodPlanks,Cobblestone,Neon,Glass,ForceField


if _G.HITBOXSEXLOADED then return end--allow settings to change but not allow double execute
_G.HITBOXSEXLOADED="sex 2 O_O"
local ClientTeam=""--used for later
local PlayerTable=getupvalue(require(game.ReplicatedStorage.TS).Characters.GetCharacter,1)--some shit that gets player character
for _,v in pairs(game.Teams:GetChildren())do
    for _,c in pairs(v.Players:GetChildren())do
        if c.Name==game.Players.LocalPlayer.Name then
            ClientTeam=v.Name--get current client team because fuck u i do it this way
            break
        end
    end
end
local GetEnemys=function()--get enemys 
    local a={}
    for _,v in pairs(game.Teams:GetChildren())do
        if v.Name~=ClientTeam then
            for _,c in pairs(v.Players:GetChildren())do
                if PlayerTable[c.Value]then
                    if PlayerTable[c.Value].Parent==game.Workspace.Characters then
                        if PlayerTable[c.Value]:FindFirstChild("Root")then
                            if not PlayerTable[c.Value].Root.ShieldEmitter.Enabled then
                                a[c.Value]=PlayerTable[c.Value]
                            end
                        end
                    end
                end
            end
        end
    end
    return a
end
game.RunService.RenderStepped:Connect(function()--every frame it executes this
    for _,v in pairs(game.Teams:GetChildren())do--to update client team
        for _,c in pairs(v.Players:GetChildren())do
            if c.Name==game.Players.LocalPlayer.Name then
                ClientTeam=v.Name
                break
            end
        end
    end
    for _,v in pairs(GetEnemys())do
        for _,v2 in pairs(v.Hitbox:GetChildren())do
            v2.Name=v2.WeldConstraint.Part0.Name--this is a shitty method and i could probly make it less detectable but im in a rush
        end
    end
    for _,v in pairs(GetEnemys())do--apply hitboxes to all enemys
  if _G.HitBoxPart=="All"then
   for _,v2 in pairs(v.Hitbox:GetChildren())do
    local part=v2
    local a=Instance.new("Part")
    a.Size=Vector3.new(_G.HitBoxSize,_G.HitBoxSize,_G.HitBoxSize)
    a.Color=_G.HitBoxColor
    a.CanCollide=false
    a.Anchored=true
    a.CFrame=part.CFrame
    a.Name="EXPAND_THIGH"
    a.Material=_G.HitBoxMaterial
    a.Transparency=_G.HitBoxTransparency
    a.CFrame=part.CFrame
    a.Parent=part
    coroutine.wrap(function()
     game.RunService.RenderStepped:Wait()
     a:Destroy()--destroy after the frame is done
    end)()
   end
  else
   local part=v.Hitbox[_G.HitBoxPart]
   local a=Instance.new("Part")
   a.Size=Vector3.new(_G.HitBoxSize,_G.HitBoxSize,_G.HitBoxSize)
   a.Color=_G.HitBoxColor
   a.CanCollide=false
   a.Anchored=true
   a.CFrame=part.CFrame
   a.Name="EXPAND_THIGH"
   a.Material=_G.HitBoxMaterial
   a.Transparency=_G.HitBoxTransparency
   a.CFrame=part.CFrame
   a.Parent=part
   coroutine.wrap(function()
    game.RunService.RenderStepped:Wait()
    a:Destroy()--destroy after the frame is done
   end)()
  end
    end
end)

local mt=getrawmetatable(game)--old method but still works
local oldNamecall=mt.__namecall
local oldIndex=mt.__index
setreadonly(mt,false)
mt.__namecall=newcclosure(function(...)
 local args={...}
 if 
 tostring(getnamecallmethod())=="FireServer"and 
 tostring(args[1])=="Projectiles"and 
 args[2]=="__Hit"then
        if args[5].Name=="EXPAND_THIGH"then
            args[4]=args[5].Parent.Position--if it detects that the bullet hit our part(hitbox expansion part) it will correct positioning and part because the part is only clientsidded
            args[5]=args[5].Parent
        end
 end
 return oldNamecall(unpack(args))
end)