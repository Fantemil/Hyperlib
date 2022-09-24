local plr = game.Players.LocalPlayer

game.Players.PlayerAdded:Connect(function(hit)
if hit:IsInGroup(5683059) then
  plr:Kick("BIG Game Staff Just Joined Ur Game And Automatically Kick You Out!")
end
end)

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()

local Window = Library.CreateLib("Wedner Hub", "RJTheme3")

local Tab = Window:NewTab("Player")

local Section = Tab:NewSection("Player")

Section:NewSlider("Walkspeed", "Speed", 500, 0, function(s) -- 500 (Макс. значение) | 0 (Мин. значение)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
Section:NewSlider("Jumppower", "Jump", 500, 0, function(g) -- 500 (Макс. значение) | 0 (Мин. значение)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = g
end)


Section:NewButton("Infinity Jump ", "tp", function()
   
 local Player = game:GetService'Players'.LocalPlayer;
 local UIS = game:GetService'UserInputService';

 _G.JumpHeight = 50;
 
 function Action(Object, Function) if Object ~= nil then Function(Object); end end
 UIS.InputBegan:connect(function(UserInput)
  if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Space then
   Action(Player.Character.Humanoid, function(self)
    if self:GetState() == Enum.HumanoidStateType.Jumping or self:GetState() == Enum.HumanoidStateType.Freefall then
     Action(self.Parent.HumanoidRootPart, function(self)
      self.Velocity = Vector3.new(0, _G.JumpHeight, 0);
     end)
    end
   end)
  end
 end)
end)



local Tab = Window:NewTab("Misc")

local Section = Tab:NewSection("Misc")





Section:NewButton("Anti Cheat Bypass", "water", function()
    game:GetService("Workspace").Map.AntiHack:remove()
end)

Section:NewButton("Fullbright", "water", function()
   
pcall(function()
 local lighting = game:GetService("Lighting");
 lighting.Ambient = Color3.fromRGB(255, 255, 255);
 lighting.Brightness = 1;
 lighting.FogEnd = 1e10;
 for i, v in pairs(lighting:GetDescendants()) do
  if v:IsA("BloomEffect") or v:IsA("BlurEffect") or v:IsA("ColorCorrectionEffect") or v:IsA("SunRaysEffect") then
   v.Enabled = false;
  end;
 end;
 lighting.Changed:Connect(function()
  lighting.Ambient = Color3.fromRGB(255, 255, 255);
  lighting.Brightness = 1;
  lighting.FogEnd = 1e10;
 end);
 spawn(function()
  local character = game:GetService("Players").LocalPlayer.Character;
  while wait() do
   repeat wait() until character ~= nil;
   if not character.HumanoidRootPart:FindFirstChildWhichIsA("PointLight") then
    local headlight = Instance.new("PointLight", character.HumanoidRootPart);
    headlight.Brightness = 1;
    headlight.Range = 60;
   end;
  end;
 end);
end)
end)


Section:NewButton("ESP", "esp", function()
   local lPlayer = game.Players.LocalPlayer;
local lTeam = lPlayer.TeamColor;
local mode = 1;
local speed = .7; -- CFrame interpolation every second.
local aimToggle = false;
local enemyColor = BrickColor.Green();
local friendlyColor = BrickColor.Yellow();

function onKeyPress(inputObject, gameProcessedEvent)
 if inputObject.KeyCode == Enum.KeyCode.RightAlt then
  if aimToggle == false then
   --aimToggle = true;
  else
   --aimToggle = false;
  end
 end
 if inputObject.KeyCode == Enum.KeyCode.RightControl then
  if mode == 1 then
   mode = 0;
   for i,v in pairs(game.Players:GetChildren()) do
    if v ~= lPlayer then
     if game.Workspace:FindFirstChild(v.Name) ~= nil then
      if v.Character:FindFirstChild("Torso") ~= nil then
       v.Character.Torso.eP.Frame.Visible = false;
      end
      for t,x in pairs(v.Character:GetChildren()) do
       if x.ClassName == "Part" then
        if v.Character:FindFirstChild("Head") ~= nil then
         if v.Character.Head:FindFirstChild("1") ~= nil then
          for l=1,6 do
           x:FindFirstChild(l).Frame.Visible = true;
          end
         end
        end
       end
      end
     end
    end
   end
  elseif mode == 0 then
   mode = 1;
   for i,v in pairs(game.Players:GetChildren()) do
    if v ~= lPlayer then
     if game.Workspace:FindFirstChild(v.Name) ~= nil then
      if v.Character:FindFirstChild("Torso") ~= nil then
       v.Character.Torso.eP.Frame.Visible = true;
      end
      for t,x in pairs(v.Character:GetChildren()) do
       if x.ClassName == "Part" then
        if v.Character:FindFirstChild("Head") ~= nil then
         if v.Character.Head:FindFirstChild("1") ~= nil then
          for l=1,6 do
           x:FindFirstChild(l).Frame.Visible = false;
          end
         end
        end
       end
      end
     end
    end
   end
  end
 end
end
 
game:GetService("UserInputService").InputBegan:connect(onKeyPress)

local function ClosestPlayer(point)
 local OnTarget = false;
 local CurDis = nil;
 local CurPlayer = nil;
 for i,v in pairs(game.Players:GetChildren()) do
  if v ~= lPlayer then
   if CurDis == nil then
    CurDis = v:DistanceFromCharacter(lPlayer.Character.Torso.Position);
    CurPlayer = v;
   else
    if v:DistanceFromCharacter(lPlayer.Character.Torso.Position) < CurDis then
     CurDis = v:DistanceFromCharacter(lPlayer.Character.Torso.Position);
     CurPlayer = v;
    end
   end
  end
 end
 while aimToggle == true do
  for i = 0, 1, .01 do
   game.Workspace.CurrentCamera.CFrame = CFrame.new(Vector3.new(game.Workspace.CurrentCamera.CFrame.X,game.Workspace.CurrentCamera.CFrame.Y,game.Workspace.CurrentCamera.CFrame.Z), CurPlayer.Character.Torso.Position);
  end
 end
end

while true do
 for i,v in pairs(game.Players:GetChildren()) do
  local vChar = game.Workspace:WaitForChild(v.Name);
  if vChar.Torso:FindFirstChild("eP") == nil and v ~= lPlayer then
   local fLayer = Instance.new("BillboardGui");
   fLayer.Name = "eP";
   fLayer.Size = UDim2.new(8,0,8,0);
   fLayer.SizeOffset = Vector2.new(.5,-.55);
   fLayer.LightInfluence = 0;
   fLayer.AlwaysOnTop = true;
   fLayer.Adornee = vChar:WaitForChild("Torso");
   fLayer.Parent = vChar.Torso;
   local sLayer = Instance.new("Frame");
   sLayer.BackgroundTransparency = .5;
   sLayer.AnchorPoint = Vector2.new(.5,.5);
   if v.TeamColor == lTeam then
    sLayer.BackgroundColor = BrickColor.Blue();
   else
    sLayer.BackgroundColor = BrickColor.Red();
   end
   sLayer.BorderSizePixel = 0;
   sLayer.Size = UDim2.new(.5,0,.7,0);
   sLayer.Parent = fLayer;
   if mode == 0 then
    sLayer.Visible = false;
   end
   local fhLayer = Instance.new("BillboardGui");
   fhLayer.Name = "ePh";
   fhLayer.Size = UDim2.new(8,0,8,0);
   fhLayer.SizeOffset = Vector2.new(.25,-.13);
   fhLayer.LightInfluence = 0;
   fhLayer.AlwaysOnTop = true;
   fhLayer.Adornee = vChar:WaitForChild("Torso");
   fhLayer.Parent = vChar.Torso;
   local health = Instance.new("Frame");
   health.AnchorPoint = Vector2.new(0,.5);
   health.Name = "health";
   health.BorderSizePixel = 0;
   health.BackgroundColor3 = Color3.fromRGB(255,0,0);
   health.Size = UDim2.new((v.Character.Humanoid.Health/v.Character.Humanoid.MaxHealth)/2,0,.05,0);
   health.Parent = fhLayer;
   local fnLayer = Instance.new("BillboardGui");
   fnLayer.Name = "ePn";
   fnLayer.Size = UDim2.new(8,0,8,0);
   fnLayer.SizeOffset = Vector2.new(.25,0);
   fnLayer.LightInfluence = 0;
   fnLayer.AlwaysOnTop = true;
   fnLayer.Adornee = vChar:WaitForChild("Torso");
   fnLayer.Parent = vChar.Torso;
   local name = Instance.new("TextLabel");
   name.AnchorPoint = Vector2.new(0,.5);
   name.Name = "txtlabel";
   name.BorderSizePixel = 0;
   name.BackgroundTransparency = 1;
   name.Size = UDim2.new(.5,0,.05,0);
   name.Position = UDim2.new(0,0,0,0);
   name.TextScaled = true;
   name.Text = v.Name;
   name.TextColor3 = Color3.fromRGB(sLayer.BackgroundColor.r,sLayer.BackgroundColor.g,sLayer.BackgroundColor.b);
   name.Parent = fnLayer;
   for x,t in pairs(vChar:GetChildren()) do
    if t.ClassName == "Part" then
     for l = 1, 6 do
      local headLayer = Instance.new("SurfaceGui");
      headLayer.Name = l;
      headLayer.LightInfluence = 0;
      headLayer.AlwaysOnTop = true;
      headLayer.Adornee = vChar:WaitForChild(t.Name);
      headLayer.Parent = t;
      if l==1 then
       headLayer.Face = "Front";
      elseif l==2 then
       headLayer.Face = "Right";
      elseif l==3 then
       headLayer.Face = "Left";
      elseif l==4 then
       headLayer.Face = "Back";
      elseif l==5 then
       headLayer.Face = "Top";
      elseif l==6 then
       headLayer.Face = "Bottom";
      end
      local xLayer = Instance.new("Frame");
      xLayer.BackgroundTransparency = .5;
      xLayer.AnchorPoint = Vector2.new(0,0);
      if v.TeamColor == lTeam then
       xLayer.BackgroundColor = BrickColor.Blue();
      else
       xLayer.BackgroundColor = BrickColor.Red();
      end
      xLayer.BorderSizePixel = 0;
      xLayer.Size = UDim2.new(1,0,1,0);
      xLayer.Parent = headLayer;
      if mode == 1 then
       xLayer.Visible = false;
      end
     end
    end
   end
  else
   if v ~= lPlayer then
    v.Character.Torso.ePh.health.Size = UDim2.new((v.Character.Humanoid.Health/v.Character.Humanoid.MaxHealth)/2,0,.05,0);
   end
  end
 end
 wait(.3);
end
end)




Section:NewButton("Autofarm V2", "Autofarm", function()
    function youuglyaf()
  local cunt = game.Players.LocalPlayer.Character.HumanoidRootPart
  local griddy = CFrame.new(-611, 841, -1587)
  cunt.CFrame = griddy
  wait()
  outtapocket = Instance.new('Part', game.Workspace)
  outtapocket.Name = "outtapocket"
  outtapocket.Size = Vector3.new(6,.1,6)
  outtapocket.Color = Color3.fromRGB(0,0,0)
  outtapocket.Anchored = true
  outtapocket.Transparency = 0
  outtapocket.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,-3.05,0)
end

function atm()
  local cunt = game.Players.LocalPlayer.Character.HumanoidRootPart
  local griddy = CFrame.new(-611, 841, -1587)
  cunt.CFrame = griddy
end

youuglyaf()
wait()
while task.wait(1000000) do
atm()
end
end)


local Tab = Window:NewTab("Teleports")

local Section = Tab:NewSection("Teleports")

Section:NewButton("The central point", "tp", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-551.928223, 29.833744, -1087.36218, -0.332768977, 4.20666417e-08, -0.943008363, 9.78674848e-08, 1, 1.00734816e-08, 0.943008363, -8.89377176e-08, -0.332768977)
end)



local Tab = Window:NewTab("Credits")

local Section = Tab:NewSection("Credits")
Section:NewLabel("Created by Focstor#9922")

Section:NewLabel("Discord: https://discord.gg/zg3FaqBXtd ")