-- zapdos vfx reach
reach = 7 -- increase or decrease with this

lp=game:service'Players'.LocalPlayer
pl=lp.Character
e=0
ring={}

Part = function(x,y,z,color,tr,cc,an,parent)
local p = Instance.new('Part',parent)
p.formFactor = 'Custom'
p.Size = Vector3.new(x,y,z)
p.BrickColor = BrickColor.new(color)
p.CanCollide = cc
p.Transparency = tr
p.Anchored = an
p.TopSurface,p.BottomSurface = 0,0
p.Material="Neon"
return p
end

Weld = function(p0,p1,x,y,z,rx,ry,rz,par)
p0.Position = p1.Position
local w = Instance.new('Motor',par or p0)
w.Part0 = p0
w.Part1 = p1
w.C1 = CFrame.new(x,y,z)*CFrame.Angles(rx,ry,rz)
return w
end

findHumanoid = function(where)
if where and where:IsA("Model") then
for i,v in pairs(where:GetChildren()) do
  if v:IsA("Humanoid") then return v end
end
end
end

Lightning = function(Start,End,Times,Offset,Color,Thickness)
local magz = (Start - End).magnitude local curpos = Start local trz = {-Offset,Offset}
for i=1,Times do
local li = Instance.new("Part",workspace) li.TopSurface =0 li.BottomSurface = 0 li.Anchored = true  li.Transparency = 0 li.BrickColor = Color li.Material="Neon"
li.formFactor = "Custom" li.CanCollide = false li.Size = Vector3.new(Thickness,Thickness,magz/Times) local ofz = Vector3.new(trz[math.random(1,2)],trz[math.random(1,2)],trz[math.random(1,2)])
local trolpos = CFrame.new(curpos,End)*CFrame.new(0,0,magz/Times).p+ofz
if Times == i then
local magz2 = (curpos - End).magnitude li.Size = Vector3.new(Thickness,Thickness,magz2)
li.CFrame = CFrame.new(curpos,End)*CFrame.new(0,0,-magz2/2)
else
li.CFrame = CFrame.new(curpos,trolpos)*CFrame.new(0,0,magz/Times/2)
end
curpos = li.CFrame*CFrame.new(0,0,magz/Times/2).p
Spawn(function() for i=1,10 do wait() li.Transparency = li.Transparency+.1 end li:Destroy() end)
end
end

function zapdos()
   mod=Instance.new("Model",pl)
   mainp=Part(1,1,1,"",1,false,false,mod)
   mainw=Weld(mainp,pl['Torso'],0,0,0,0,0,0,mainp)
   
   for i=1,360,24 do
    local p=Part(.1,.1,2.5,'',.9,false,false,mod)
    table.insert(ring,p)
    local w=Weld(p,mainp,0,0,0,0,0,0,p)
    w.C1=CFrame.new(0,0,0)*CFrame.Angles(math.rad(i),0,0)*CFrame.new(0,6,0);
   end
   
   for i=1,360,24 do
    local p=Part(.1,.1,2.5,'',.9,false,false,mod)
    table.insert(ring,p)
    local w=Weld(p,mainp,0,0,0,0,0,0,p)
    w.C1=CFrame.new(0,0,0)*CFrame.Angles(0,math.rad(i),0)*CFrame.new(6,0,0);
   end
   
   Spawn(function()
    while wait() do
    e=e+1
    for i,v in pairs(workspace:children()) do
    if v:IsA("Model") and findHumanoid(v) then
       local sword = pl:FindFirstChildOfClass("Tool")
      if v:findFirstChild("Head") and v:findFirstChild("Torso") and sword then
    if (v:findFirstChild("Torso").Position - pl.Torso.Position).magnitude < reach and v.Name ~= pl.Name then
    Lightning(v.Torso.Position,pl['Torso'].Position,math.random(5,10),math.random(-2.5,2.5),BrickColor.random(),0.35)
    firetouchinterest(sword.Handle, v.Torso, 1)
    firetouchinterest(sword.Handle, v.Torso, 0)
    spawn(function()
      for i=1,10 do wait(.01)
    for o=1,#ring do
    ring[o].Transparency=i/10-.1
    end
    end
    end)
    end
    end
    end
    end
    mainw.C1=CFrame.new()*CFrame.Angles(math.rad(e),-math.rad(e),math.rad(e))
    end
   end)
end

zapdos()