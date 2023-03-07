_G.WhoDonated = "Victim Name here" -- who donated robux
_G.HowMuchRobux = 10000 -- how much robux u want to dono
_G.WhoGotRobux = "Victim Name Here" -- what person gets robux
_G.WhoDonatedID = "1"
_G.WhoGotRobuxID = 1
_G.Anone = false
_G.InGame = true
local boothname = "BasicBooth"










local booth = game:GetService("Workspace").BoothModels[boothname].Base
function comma(amount)
 local formatted = amount
 while true do  
  formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
  if (k==0) then
   break
  end
 end
 return formatted
end
if game.Players:FindFirstChild(_G.WhoDonated) then
    game:GetService("Players"):FindFirstChild(_G.WhoDonated).leaderstats.Donated.Value = game:GetService("Players"):FindFirstChild(_G.WhoDonated).leaderstats.Donated.Value + _G.HowMuchRobux
    if game.Players:FindFirstChild(_G.WhoGotRobux) then
    game:GetService("Players"):FindFirstChild(_G.WhoGotRobux).leaderstats.Raised.Value = game:GetService("Players"):FindFirstChild(_G.WhoGotRobux).leaderstats.Raised.Value + _G.HowMuchRobux
end
end


function globalmessage()
game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage", {
            Text = "[GLOBAL]: @".._G.WhoDonated.." dropped "..comma(_G.HowMuchRobux).." Robux to @".._G.WhoGotRobux.."!!",
            Color = Color3.fromRGB(0, 230, 255),
            Font = Enum.Font.GothamBold,
            TextSize = 18,
        })
end

function nukemessage()
game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage", {
            Text = "[GLOBAL]: @".._G.WhoDonated.." dropped a "..comma(_G.HowMuchRobux).." Robux nuke to @".._G.WhoGotRobux.."!!!",
            Color = Color3.fromRGB(255, 0, 230),
            Font = Enum.Font.GothamBold,
            TextSize = 18,
        })
end

if _G.Anone == true then
    _G.WhoDonated = "Anone "..math.random(1000,9999)..""
    _G.WhoDonatedID = "1" -- the id of the person that will appear on the 1mil effect
else
end

function hammernuke()
game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage", {
            Text = "[GLOBAL]: @".._G.WhoDonated.." just gave "..comma(_G.HowMuchRobux).." ROBUX to @".._G.WhoGotRobux.."!?!?",
            Color = Color3.fromRGB(255, 0, 100),
            Font = Enum.Font.GothamBold,
            TextSize = 18,
        })
end
function ingamenukemessage()
game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage", {
            Text = "".._G.WhoDonated.." dropped "..comma(_G.HowMuchRobux).." Robux to ".._G.WhoGotRobux.."!!!",
            Color = Color3.fromRGB(255, 0, 230),
            Font = Enum.Font.GothamBold,
            TextSize = 18,
        })
end



function ingamehammernuke()
game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage", {
            Text = "".._G.WhoDonated.." just gave "..comma(_G.HowMuchRobux).." ROBUX to ".._G.WhoGotRobux.."!?!?",
            Color = Color3.fromRGB(255, 0, 100),
            Font = Enum.Font.GothamBold,
            TextSize = 18,
        })
end
    
--
function normalmessage()
game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage", {
            Text = _G.WhoDonated.." tipped "..comma(_G.HowMuchRobux).. " Robux to ".._G.WhoGotRobux,
            Color = Color3.fromRGB(8, 255, 36),
            Font = Enum.Font.GothamBold,
            TextSize = 18,
        })
end



local NumberWithCommas = _G.HowMuchRobux

if NumberWithCommas < 999 then
    normalmessage()
print("Ã°ÂÂÂ° ".._G.WhoDonated.." tipped "..comma(_G.HowMuchRobux).." Robux to ".._G.WhoGotRobux)
    elseif NumberWithCommas > 999999 then
print("[GLOBAL]: Ã°ÂÂÂ° ".._G.WhoDonated.." tipped "..comma(_G.HowMuchRobux).." Robux to ".._G.WhoGotRobux)
if _G.InGame == true then
local Noobie = game:GetObjects("rbxassetid://10147737587")[1]
Noobie.Parent = booth
local Noobie = game:GetObjects("rbxassetid://10147737587")[1]
Noobie.Parent = booth
local Noobie = game:GetObjects("rbxassetid://10147737587")[1]
Noobie.Parent = booth
local Noobie = game:GetObjects("rbxassetid://10147737587")[1]
Noobie.Parent = booth
local Noobie = game:GetObjects("rbxassetid://10147737587")[1]
Noobie.Parent = booth
local Noobie = game:GetObjects("rbxassetid://10147737587")[1]
Noobie.Parent = booth
local Noobie = game:GetObjects("rbxassetid://10147737587")[1]
Noobie.Parent = booth
local Noobie = game:GetObjects("rbxassetid://10147737587")[1]
Noobie.Parent = booth
local Noobie = game:GetObjects("rbxassetid://10147737587")[1]
Noobie.Parent = booth
local Noobie = game:GetObjects("rbxassetid://10147737587")[1]
Noobie.Parent = booth
local Noobie = game:GetObjects("rbxassetid://10147737587")[1]
Noobie.Parent = booth
local Noobie = game:GetObjects("rbxassetid://10147737587")[1]
Noobie.Parent = booth

local level5 = game:GetObjects("rbxassetid://10147461869")[1]
level5.Parent = booth
level5.Playing = true
ingamehammernuke()
wait(5)
else
end
local Noobie = game:GetObjects("rbxassetid://10147737587")[1]
Noobie.Parent = game:GetService("Workspace").Map.Boards.LiveDonations.Top
local Noobie = game:GetObjects("rbxassetid://10147737587")[1]
Noobie.Parent = game:GetService("Workspace").Map.Boards.LiveDonations.Top
local Noobie = game:GetObjects("rbxassetid://10147737587")[1]
Noobie.Parent = game:GetService("Workspace").Map.Boards.LiveDonations.Top
local Noobie = game:GetObjects("rbxassetid://10147737587")[1]
Noobie.Parent = game:GetService("Workspace").Map.Boards.LiveDonations.Top
local Noobie = game:GetObjects("rbxassetid://10147737587")[1]
Noobie.Parent = game:GetService("Workspace").Map.Boards.LiveDonations.Top
local Noobie = game:GetObjects("rbxassetid://10147737587")[1]
Noobie.Parent = game:GetService("Workspace").Map.Boards.LiveDonations.Top
local Noobie = game:GetObjects("rbxassetid://10147737587")[1]
Noobie.Parent = game:GetService("Workspace").Map.Boards.LiveDonations.Top
local Noobie = game:GetObjects("rbxassetid://10147737587")[1]
Noobie.Parent = game:GetService("Workspace").Map.Boards.LiveDonations.Top
local Noobie = game:GetObjects("rbxassetid://10147737587")[1]
Noobie.Parent = game:GetService("Workspace").Map.Boards.LiveDonations.Top
local Noobie = game:GetObjects("rbxassetid://10147737587")[1]
Noobie.Parent = game:GetService("Workspace").Map.Boards.LiveDonations.Top

local level5 = game:GetObjects("rbxassetid://10147461869")[1]
level5.Parent = game:GetService("Workspace").Map.Boards.LiveDonations.Top
level5.Playing = true
hammernuke()
local Abbreviations = {
    "";
    "K";
    "M";
    "B";
    "T";
}

local function AbbreviateNumber(Number)
    for i = 1, #Abbreviations do
        if Number < 10 ^ (i * 3) then
            if Abbreviations[i] == "Ã¢ÂÂ" then
                return "Ã¢ÂÂ"
                else
                    return math.floor(Number / ((10 ^ ((i-1) * 3)) / 100)) / (100) .. Abbreviations[i]
            end
        elseif tostring(Number) == "inf" then
                return "Ã¢ÂÂ"
                end
        end
    end

local board = game:GetService("Players").LocalPlayer.PlayerGui.MapUIContainer.MapUI.LiveDonations.Leaderboard
local Icon = game:GetObjects("rbxassetid://11522959284")[1]
Icon.Parent = board
Icon.TextDonated.idkWhatIstHIS.Text.Text = AbbreviateNumber(_G.HowMuchRobux)
Icon.WhoDonated.Text.Text = "@".._G.WhoDonated
Icon.WhoGotRobux.Text.Text = "@".._G.WhoGotRobux
Icon.WhoGotRobux.Image.Image = "rbxthumb://type=AvatarHeadShot&id=".._G.WhoGotRobuxID.."&w=150&h=150"
Icon.WhoDonated.Image.Image = "rbxthumb://type=AvatarHeadShot&id=".._G.WhoDonatedID.."&w=150&h=150"
Icon.IdkWhatIsThis.E:TweenSize(
 UDim2.new(0, 0, 1, 0),
 Enum.EasingDirection.InOut,
 Enum.EasingStyle.Linear,
 250
)
    wait(3)
local l__ReplicatedStorage__1 = game:GetService("ReplicatedStorage");
local l__Players__2 = game:GetService("Players");
local l__Debris__3 = game:GetService("Debris");
local l__RunService__4 = game:GetService("RunService");
local l__TweenService__1 = game:GetService("TweenService");
local function u2(p1, p2)
 p1.Speed = NumberRange.new(p1.Speed.Min * p2, p1.Speed.Max * p2);
 p1.Acceleration = p1.Acceleration * p2;
 local l__Keypoints__5 = p1.Size.Keypoints;
 local v6 = {};
 for v7 = 1, #l__Keypoints__5 do
  table.insert(v6, NumberSequenceKeypoint.new(l__Keypoints__5[v7].Time, l__Keypoints__5[v7].Value * p2, l__Keypoints__5[v7].Envelope * p2));
 end;
 p1.Size = NumberSequence.new(v6);
end;
local u3 = Vector3.new(42, 0, 101);
local function u4(p3, p4)
 local v8 = game.Players:GetHumanoidDescriptionFromUserId(p3);
 v8.DepthScale = v8.DepthScale * 53;
 v8.HeadScale = v8.HeadScale * 53;
 v8.HeightScale = v8.HeightScale * 53;
 v8.WidthScale = v8.WidthScale * 53;
 p4.Humanoid:ApplyDescription(v8);
 for v9, v10 in pairs(p4:GetDescendants()) do
  if (v10:IsA("BasePart") or v10:IsA("Decal")) and v10.Name ~= "HumanoidRootPart" then
   v10.Transparency = 0.55;
  end;
 end;
end;
local function u5(p5, p6, p7)
 l__TweenService__1:Create(p5, p6, p7):Play();
end;
local u6 = math.random(-180, 180);
local function u7(p8)
 p8 = tostring(p8);
 return p8:reverse():gsub("%d%d%d", "%1,"):reverse():gsub("^,", "");
end;
local u8 = require(game.Players.LocalPlayer.PlayerGui.ScreenGui.SmiteAnimation.CameraShaker);
wait(1);
(function(p9, p10, p11, p12)
 local v11 = game.ReplicatedStorage.Templates.RobuxHammerGiant:Clone();
 local l__DiamondHammer__12 = v11.DiamondHammer;
 for v13, v14 in pairs(v11:GetDescendants()) do
  if (v14:IsA("BasePart") or v14:IsA("Decal")) and v14.Name ~= "HumanoidRootPart" and (v14:IsDescendantOf(l__DiamondHammer__12) == false or v14:IsDescendantOf(v11.Objects) == false) then
   v14.Transparency = 1;
  end;
 end;
 local l__CurrentCamera__9 = workspace.CurrentCamera;

 u2(l__DiamondHammer__12.Handle.MainDiamondCenter.Shockwave, 60);
 u2(l__DiamondHammer__12.Handle.MainDiamondCenter.ChargeGlow, 50);
 u2(l__DiamondHammer__12.Handle.MainDiamondCenter.ChargeRays, 50);
 l__DiamondHammer__12.Handle.Transparency = 1;
 l__DiamondHammer__12.Handle.Diamonds.Transparency = 1;
 l__DiamondHammer__12.Handle.CanCollide = false;
 v11.Parent = workspace;
 u2(l__DiamondHammer__12.Handle.BaseFrontOffset.Shockwave, 10);
 local v15 = v11.Objects.Meteor:Clone();
 local v16 = v11.Objects.FloorAmbiance:Clone();
 local v17 = v11.Objects.Ambiance:Clone();
 local v18 = v11.Objects.ImpactVisuals:Clone();
 local v19 = v11.Objects.Portal:Clone();
 v11.Objects:Destroy();
 local l__Sounds__20 = v11.Sounds;
 l__Sounds__20.Parent = workspace;
 l__Sounds__20.Name = "1MDonationEffect_Sounds";
 local v21 = v11.Humanoid.Animator:LoadAnimation(v11.Animations.Giant_MainAnimation);
 print("playtime");
 v21.Priority = Enum.AnimationPriority.Action;
 v21:Play();
 local v22 = Instance.new("ColorCorrectionEffect");
 v22.Enabled = true;
 v22.Name = "SmiteColorCorrection";
 v22.Parent = game.Lighting;
 local v23 = Instance.new("BloomEffect");
 v23.Enabled = true;
 v23.Name = "SmiteBloom";
 v23.Size = 20;
 v23.Threshold = 0.1;
 v23.Intensity = -1;
 v23.Parent = game.Lighting;
 v11.PrimaryPart = v11.FloorLevel;
 v11:SetPrimaryPartCFrame(CFrame.new(u3.X, u3.Y, u3.Z));
 v11:SetPrimaryPartCFrame(v11.FloorLevel.CFrame:ToWorldSpace(CFrame.Angles(0, math.rad(math.random(-180, 180)), math.rad(0))));
 v11:SetPrimaryPartCFrame(v11.FloorLevel.CFrame:ToWorldSpace(CFrame.new(25, 0, 365)));
 v11.PrimaryPart = v11.HumanoidRootPart;
 local v24 = v19:Clone();
 v19.PortalAmbiance.Volume = 0;
 v19.PortalAmbiance.PlaybackSpeed = 0;
 v24.CFrame = v11.FloorLevel.CFrame;
 v24.Parent = workspace;
 v11.FloorLevel:Destroy();
 local l__LeftEyeAttachment__25 = v11.Head.LeftEyeAttachment;
 local l__RightEyeAttachment__26 = v11.Head.RightEyeAttachment;
 l__LeftEyeAttachment__25.Parent = nil;
 l__RightEyeAttachment__26.Parent = nil;
 l__DiamondHammer__12.Parent = nil;
 local v27, v28 = pcall(function()
  u4(p12, v11);
  v11.Humanoid.BodyDepthScale.Value = 50;
  v11.Humanoid.HeadScale.Value = 50;
  v11.Humanoid.BodyHeightScale.Value = 50;
  v11.Humanoid.BodyWidthScale.Value = 50;
 end);
 if v27 == false then
  warn("Unable to set giant's apperance to donator (" .. p9 .. ")  (" .. v28 .. ")");
 end;
 
    local CameraShaker = require(game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.SmiteAnimation.CameraShaker)
local camara = game.Workspace.CurrentCamera
local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
camara.CFrame = camara.CFrame * shakeCf
end)
camShake:Start()

camShake:ShakeOnce(2.5, 4.5, 2.5, 7)
 l__DiamondHammer__12.Parent = v11;
 l__DiamondHammer__12.Weld.Attachment0 = v11.RightHand.RightGripAttachment;
 l__LeftEyeAttachment__25.Parent = v11.Head;
 l__RightEyeAttachment__26.Parent = v11.Head;
 l__LeftEyeAttachment__25.Position = Vector3.new(-6, 11, -32);
 l__RightEyeAttachment__26.Position = Vector3.new(6, 11, -32);
 l__Sounds__20.Summon:Play();
 v24.Transparency = 0;
 v24.Sparks.Enabled = true;
 v24.Appearance.Enabled = true;
 u5(v24.Sparks, TweenInfo.new(6, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {
  Rate = 150
 });
 u5(v24.Appearance, TweenInfo.new(6, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {
  Rate = 200
 });
 u5(v24, TweenInfo.new(6, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {
  Size = Vector3.new(400, 1, 400)
 });
 u5(v24.OuterLightBeam, TweenInfo.new(6, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {
  Width0 = 400, 
  Width1 = 600
 });
 u5(v24.InnerLightBeam, TweenInfo.new(6, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {
  Width0 = 200, 
  Width1 = 300
 });
 level5.Playing = false
 v24.PortalAmbiance.Playing = true;
 v24.PortalOpen1:Play();
 v24.PortalOpen2:Play();
 u5(v24.PortalAmbiance, TweenInfo.new(3, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {
  Volume = 1.5, 
  PlaybackSpeed = 1.25
 });
 local u10 = true;
 local u11 = 0.5;
 spawn(function()
  while u10 == true do
   wait(u11);
   spawn(function()
    local v29 = math.random(100, 400) / 100;
    local v30 = math.random(250, 400) / 100;
    local v31 = math.random(500, 750);
    local v32 = v15:Clone();
    v32.Parent = workspace;
    v32.Transparency = 1;
    v32.Position = u3 + Vector3.new(math.random(-750, 750), 0, math.random(-750, 750));
    v32.Size = v32.Size * v29;
    v32.CFrame = v32.CFrame:ToWorldSpace(CFrame.Angles(math.rad(math.random(-10, 10)), math.rad(u6), math.rad(30)));
    v32.Position = v32.Position + v32.CFrame.UpVector * v31;
    for v33, v34 in pairs(v32:GetDescendants()) do
     if v34:IsA("ParticleEmitter") then
      u2(v34, v29);
      if string.find(v34.Name, "Meteor_") ~= nil then
       v34.Enabled = true;
      end;
     end;
    end;
    v32.Glow.Range = v32.Glow.Range * v29;
    v32.Glow.Enabled = true;
    v32.Trail0.Position = v32.Trail0.Position * (v29 / 2);
    v32.Trail1.Position = v32.Trail1.Position * (v29 / 2);
    v32.Trail.Enabled = true;
    v32.Whoosh.Volume = 0;
    v32.Whoosh.TimePosition = math.random(0, v32.Whoosh.TimeLength);
    v32.Whoosh.PlaybackSpeed = 1.5 - v29 * 0.15;
    v32.Impact.PlaybackSpeed = 1.5 - v29 * 0.15;
    v32.Whoosh.Playing = true;
    u5(v32, TweenInfo.new(v30, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0, false, 0), {
     Position = v32.Position + v32.CFrame.UpVector * -v31, 
     Orientation = Vector3.new(math.random(-180, 180) * 3, math.random(-180, 180) * 3, math.random(-180, 180) * 3)
    });
    u5(v32, TweenInfo.new(v30 * 0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {
     Transparency = 0
    });
    u5(v32.Whoosh, TweenInfo.new(v30 * 0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {
     Volume = 1
    });
    wait(v30);
    v32.Transparency = 1;
    v32.Orientation = Vector3.new(0, 0, 0);
    v32.Glow.Range = v32.Glow.Range * 1.5;
    v32.Glow.Brightness = v32.Glow.Brightness * 3;
    u5(v32.Glow, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.In, 0, false, 0), {
     Brightness = 0, 
     Range = v32.Glow.Range / 2
    });
    for v35, v36 in pairs(v32:GetDescendants()) do
     if v36:IsA("ParticleEmitter") then
      if string.find(v36.Name, "Meteor_") ~= nil then
       v36.Enabled = false;
      end;
      if string.find(v36.Name, "Explosion_") ~= nil then
       v36:Emit(v36:GetAttribute("EmitCount"));
      end;
     end;
    end;
    v32.Trail.Enabled = false;
    v32.Whoosh.Playing = false;
    v32.Impact:Play();
    wait(3);
    v32:Destroy();
   end);  
  end;
 end);
 local v37 = v16:Clone();
 v37.Position = u3 + Vector3.new(0, -0.5, 0);
 v37.Parent = workspace;
 u5(v37, TweenInfo.new(10, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {
  Size = Vector3.new(2048, 1, 2048)
 });
 local v38 = v17:Clone();
 v38.Position = u3 + Vector3.new(0, 0, 0);
 v38.Size = Vector3.new(1000, 1000, 1000);
 v38.CFrame = v38.CFrame:ToWorldSpace(CFrame.Angles(math.rad(0), math.rad(u6), math.rad(30)));
 v38.Position = v38.Position + v38.CFrame.UpVector * 600;
 v38.Parent = workspace;
 spawn(function()
  for v39, v40 in pairs(v37:GetChildren()) do
   if v40:IsA("ParticleEmitter") then
    u2(v40, 1.25);
    v40.Enabled = true;
   end;
  end;
  for v41, v42 in pairs(v38:GetChildren()) do
   if v42:IsA("ParticleEmitter") then
    u2(v42, 1.75);
    v42.Enabled = true;
   end;
  end;
  u5(l__Sounds__20.FireLoop, TweenInfo.new(30, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {
   Volume = 0, 
   PlaybackSpeed = 0.5
  });
  for v43, v44 in pairs(v37:GetChildren()) do
   if v44:IsA("ParticleEmitter") then
    u5(v44, TweenInfo.new(60, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {
     Rate = 0
    });
   end;
  end;
  for v45, v46 in pairs(v38:GetChildren()) do
   if v46:IsA("ParticleEmitter") then
    u5(v46, TweenInfo.new(30, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {
     Rate = 0
    });
   end;
  end;
  wait(60);
  v37.Size = Vector3.new(0, 0, 0);
  v38.Size = Vector3.new(0, 0, 0);
  wait(30);
  v37:Destroy();
  v38:Destroy();
 end);
 u5(v22, TweenInfo.new(10, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {
  TintColor = Color3.fromRGB(128, 200, 255), 
  Brightness = 0.25, 
  Saturation = 0.1, 
  Contrast = 0.25
 });
 u5(v23, TweenInfo.new(10, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {
  Intensity = -0.85
 });
 local function v47(p14)
  local v48 = NumberSequence.new({ NumberSequenceKeypoint.new(0, p14), NumberSequenceKeypoint.new(1, 1) });
  for v49, v50 in pairs(l__DiamondHammer__12.Effects.Beams:GetChildren()) do
   if v50:IsA("Beam") and string.find(v50.Name, "FlameEffect") ~= nil then
    v50.Enabled = true;
    v50.Transparency = v48;
   end;
  end;
 end;
 local v51 = v11.Values.Hammer_FlameEffectTransparency.Changed:Connect(v47);
 v47(1);
 
 v21:GetMarkerReachedSignal("Eye lense flare"):Connect(function(p15)
  print("Animation event: Eye lense flare");
         u5(v24.PortalAmbiance, TweenInfo.new(3, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {
  Volume = 0, 
  PlaybackSpeed = 0
 });
 print("Animation event: PortalAmbience Sound")
  u5(v24.Sparks, TweenInfo.new(3, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0, false, 0), {
   Rate = 0
  });
  u5(v24.Appearance, TweenInfo.new(3, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0, false, 0), {
   Rate = 0
  });
  u5(v24, TweenInfo.new(3, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0, false, 0), {
   Size = Vector3.new(0, 1, 0)
  });
  u5(v24.OuterLightBeam, TweenInfo.new(3, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0, false, 0), {
   Width0 = 0, 
   Width1 = 0
  });
  u5(v24.InnerLightBeam, TweenInfo.new(3, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0, false, 0), {
   Width0 = 0, 
   Width1 = 0
  });
  l__Sounds__20.LenseFlareEyes.Volume = 0.55
  l__Sounds__20.LenseFlareEyes:Play();
  v11.Head.LeftEyeAttachment.Flare.Enabled = true;
  v11.Head.LeftEyeAttachment.FlareFlash:Emit(1);
  v11.Head.RightEyeAttachment.Flare.Enabled = true;
  v11.Head.RightEyeAttachment.FlareFlash:Emit(1);
 end);
   for v74, v75 in pairs(v11:GetDescendants()) do
   if (v75:IsA("BasePart") or v75:IsA("Decal")) and v75.Name ~= "HumanoidRootPart" and v75:IsDescendantOf(l__DiamondHammer__12) == false then
    u5(v75, TweenInfo.new(5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {
     Transparency = 0
    });
   end;
  end;
 wait(10.6)
 print("Animation event: HammerAppear ");
 l__DiamondHammer__12.Handle.AppearSound.Playing = true;
 l__DiamondHammer__12.Handle.AppearSound.Volume = 0;
 l__DiamondHammer__12.Handle.AppearSound.PlaybackSpeed = 0.80;
 u5(l__DiamondHammer__12.Handle.AppearSound, TweenInfo.new(1.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, true, 0), {
  Volume = 2
 });
 u5(l__DiamondHammer__12.Handle.AppearSound, TweenInfo.new(3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, 0, false, 0), {
  PlaybackSpeed = 1.5
 });
 l__DiamondHammer__12.Handle.HammerBaseOutline.Sparkles.Enabled = true;
 l__DiamondHammer__12.Handle.HammerBaseOutline.Appearance.Enabled = true;
 l__DiamondHammer__12.Handle.HammerHandleBase.Appearance.Enabled = true;
 u5(l__DiamondHammer__12.Handle.HammerBaseOutline.Sparkles, TweenInfo.new(3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, 0, false, 0), {
  Rate = 25
 });
 u5(l__DiamondHammer__12.Handle.HammerBaseOutline.Appearance, TweenInfo.new(1.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, true, 0), {
  Rate = 200
 });
 u5(l__DiamondHammer__12.Handle.HammerHandleBase.Appearance, TweenInfo.new(1.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, true, 0), {
  Rate = 100
 });
 l__DiamondHammer__12.Handle.Diamonds.Transparency = 1;
 u5(l__DiamondHammer__12.Handle, TweenInfo.new(3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, 0, false, 0), {
  Transparency = 0
 });
 u5(l__DiamondHammer__12.Handle.Diamonds, TweenInfo.new(3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, 0, false, 0), {
  Transparency = 0
 });
 wait(2.45)
 print("Animation event: ChargeSwing");
 l__DiamondHammer__12.Handle.ChargeSound1:Play();
 l__DiamondHammer__12.Handle.ChargeSound2:Play();
 l__DiamondHammer__12.Handle.ChargeSound3:Play();
 l__DiamondHammer__12.Handle.MainChargeSound:Play();
 for v54, v55 in pairs(l__DiamondHammer__12.Handle:GetChildren()) do
  if v55:IsA("Attachment") and string.find(v55.Name, "DiamondCenter") ~= nil then
   v55.Flare.Enabled = true;
  end;
 end;
 l__DiamondHammer__12.Handle.MainDiamondCenter.Shockwave:Emit(1);
 l__DiamondHammer__12.Handle.MainDiamondCenter.ChargeGlow.Enabled = true;
 l__DiamondHammer__12.Handle.MainDiamondCenter.ChargeRays.Enabled = true;
 u5(l__DiamondHammer__12.Handle.MainDiamondCenter.ChargeRays, TweenInfo.new(4, Enum.EasingStyle.Quad, Enum.EasingDirection.In, 0, false, 0), {
  TimeScale = 1
 });
 u5(l__DiamondHammer__12.Handle.MainDiamondCenter.ChargeGlow, TweenInfo.new(4, Enum.EasingStyle.Quad, Enum.EasingDirection.In, 0, false, 0), {
  TimeScale = 1
 });
 wait(5.3);
 booth:ClearAllChildren()
 print("Animation event: SwingStart");
 l__DiamondHammer__12.Handle.ChargeEndSound:Play();
 l__DiamondHammer__12.Handle.MainDiamondCenter.Shockwave:Emit(3);
 l__DiamondHammer__12.Handle.MainDiamondCenter.ChargeGlow.Enabled = false;
 l__DiamondHammer__12.Handle.MainDiamondCenter.ChargeRays.Enabled = false;
 u5(l__DiamondHammer__12.Handle.MainChargeSound, TweenInfo.new(4, Enum.EasingStyle.Quart, Enum.EasingDirection.In, 0, false, 0), {
  Volume = 0.25
 });
 l__DiamondHammer__12.Handle.BaseCenter.Wind.Volume = 0;
 l__DiamondHammer__12.Handle.BaseCenter.Wind.PlaybackSpeed = 0.5;
 l__DiamondHammer__12.Handle.BaseCenter.Wind.Playing = true;
 u5(l__DiamondHammer__12.Handle.BaseCenter.Wind, TweenInfo.new(3.5, Enum.EasingStyle.Quart, Enum.EasingDirection.In, 0, false, 0), {
  Volume = 5, 
  PlaybackSpeed = 2.5
 });
 u5(v11.Values.Hammer_FlameEffectTransparency, TweenInfo.new(4, Enum.EasingStyle.Quart, Enum.EasingDirection.In, 0, false, 0), {
  Value = 0
 });
 l__DiamondHammer__12.Handle.HammerBase.Flames.Enabled = true;
 l__DiamondHammer__12.Handle.BaseFrontOffset.Shockwave.Enabled = true;
 u5(l__DiamondHammer__12.Handle.HammerBase.Flames, TweenInfo.new(2.5, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0, false, 0), {
  Rate = 100
 });
 u5(l__DiamondHammer__12.Handle.BaseFrontOffset.Shockwave, TweenInfo.new(3, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0, false, 0), {
  Rate = 15
 });
 for v56, v57 in pairs(l__DiamondHammer__12.Effects.Trails:GetChildren()) do
  v57.Enabled = true;
 end;
 wait(3.95);
 print("Animation event: SwingEnd");
 game:GetService("Workspace").Map.Boards.LiveDonations.Top:ClearAllChildren()
  local CameraShaker = require(game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.SmiteAnimation.CameraShaker)
local camara = game.Workspace.CurrentCamera
local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
camara.CFrame = camara.CFrame * shakeCf
end)
camShake:Start()

camShake:ShakeOnce(6, 6, 0.25, 5)
 u11 = 0.25;
 l__DiamondHammer__12.Handle.MainChargeSound:Stop();
 l__Sounds__20.Rumble:Play();
 v23.Intensity = 0.75;
 v23.Threshold = 0.05;
 v22.Contrast = 0;
 v24:Destroy()
 u5(v23, TweenInfo.new(10, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {
  Intensity = -0.9, 
  Threshold = 0.1
 });
 u5(v22, TweenInfo.new(10, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {
  Contrast = 0.25
 });
 u5(v11.Values.Hammer_FlameEffectTransparency, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {
  Value = 1
 });
 l__DiamondHammer__12.Handle.BaseFrontOffset.Shockwave.Enabled = false;
 u5(l__DiamondHammer__12.Handle.HammerBase.Flames, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {
  Rate = 0
 });
 for v58, v59 in pairs(l__DiamondHammer__12.Effects.Trails:GetChildren()) do
  v59.Enabled = false;
 end;
 l__DiamondHammer__12.Handle.BaseCenter.Wind.Playing = false;
 for v60, v61 in pairs(l__DiamondHammer__12.Handle.BaseCenter:GetChildren()) do
  if v61:IsA("Sound") and string.find(v61.Name, "Impact_") ~= nil then
   v61:Play();
  end;
 end;
 for v62, v63 in pairs(l__DiamondHammer__12.Handle:GetChildren()) do
  if v63:IsA("Attachment") and string.find(v63.Name, "DiamondCenter") ~= nil then
   v63.Flare.Enabled = false;
  end;
 end;
 local v64 = v18:Clone();
 v64.Position = u3;
 v64.Parent = workspace;
 u2(v64.EmitPoint.Impact_FractalBurst, 10);
 u2(v64.EmitPoint.Impact_RaysBurst, 25);
 u2(v64.EmitPoint.Impact_Shockwave, 30);
 u2(v64.EmitPoint.Impact_Spark1, 10);
 u2(v64.EmitPoint.Impact_Spark2, 10);
 u2(v64.EmitPoint.Impact_Spark3, 10);
 u2(v64.EmitPoint.Impact_SparkleExplosion, 10);
 u2(v64.EmitPoint.SparkleExplosion, 7.5);
 u2(v64.EmitPoint.Sparks, 5);
 for v65, v66 in pairs(v64.EmitPoint:GetChildren()) do
  if v66:IsA("ParticleEmitter") and string.find(v66.Name, "Impact_") ~= nil then
   v66:Emit(v66:GetAttribute("EmitCount"));
  end;
 end;
 v64.ApplauseLoop.Playing = true;
 v64.ChimeLoop.Playing = true;
 v64.CoinsLoop.Playing = true;
 local l__Frame__67 = v64.BillboardGuiAnimation.Frame;
 l__Frame__67.TopText.Visible = true;
 l__Frame__67.BottomText.Visible = true;
 l__Frame__67.TopText.Text = string.upper(p9) .. "";
 l__Frame__67.MiddleText.Text = u7(p11);
 l__Frame__67.BottomText.Text = "" .. string.upper(p10);
 l__Frame__67.RobuxLogo.Size = UDim2.fromScale(0, 0);
 l__Frame__67.RobuxLogo.Rotation = -180;
 l__Frame__67.Star.Size = UDim2.fromScale(0, 0);
 l__Frame__67.BottomText.Size = UDim2.fromScale(0, 0);
 l__Frame__67.BottomText.Position = UDim2.fromScale(0.5, 0.5);
 l__Frame__67.MiddleText.Size = UDim2.fromScale(0, 0);
 l__Frame__67.TopText.Position = UDim2.fromScale(0.5, 0.5);
 l__Frame__67.TopText.Size = UDim2.fromScale(0, 0);
 l__Frame__67.Parent.Enabled = true;
 u5(v64, TweenInfo.new(10, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {
  Position = u3 + Vector3.new(0, 400, 0)
 });
 u5(l__Frame__67.RobuxLogo, TweenInfo.new(10, Enum.EasingStyle.Elastic, Enum.EasingDirection.Out, 0, false, 0), {
  Size = UDim2.fromScale(1, 1)
 });
 u5(l__Frame__67.RobuxLogo, TweenInfo.new(15, Enum.EasingStyle.Elastic, Enum.EasingDirection.Out, 0, false, 0), {
  Rotation = 0
 });
 u5(l__Frame__67.Star, TweenInfo.new(5, Enum.EasingStyle.Elastic, Enum.EasingDirection.Out, 0, false, 0), {
  Size = UDim2.fromScale(1.5, 1.5)
 });
 u5(l__Frame__67.Star, TweenInfo.new(15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {
  Rotation = 360
 });
 u5(l__Frame__67.BottomText, TweenInfo.new(5, Enum.EasingStyle.Elastic, Enum.EasingDirection.Out, 0, false, 0.6), {
  Size = UDim2.fromScale(1.5, 0.1), 
  Position = UDim2.fromScale(0.5, 0.59)
 });
 u5(l__Frame__67.MiddleText, TweenInfo.new(5, Enum.EasingStyle.Elastic, Enum.EasingDirection.Out, 0, false, 0.4), {
  Size = UDim2.fromScale(1, 1)
 });
 u5(l__Frame__67.TopText, TweenInfo.new(5, Enum.EasingStyle.Elastic, Enum.EasingDirection.Out, 0, false, 0.2), {
  Size = UDim2.fromScale(1.5, 0.1), 
  Position = UDim2.fromScale(0.5, 0.41)
 });
 u5(l__Frame__67.Star, TweenInfo.new(10, Enum.EasingStyle.Quad, Enum.EasingDirection.In, 0, false, 5), {
  ImageTransparency = 1, 
  ImageColor3 = Color3.fromRGB(0, 255, 255)
 });
 v64.EmitPoint.Sparks.Enabled = true;
 v64.EmitPoint.SparkleExplosion.Enabled = true;
 u5(v64.EmitPoint.Sparks, TweenInfo.new(45, Enum.EasingStyle.Quint, Enum.EasingDirection.In, 0, false, 0), {
  Rate = 0
 });
 u5(v64.EmitPoint.SparkleExplosion, TweenInfo.new(45, Enum.EasingStyle.Quint, Enum.EasingDirection.In, 0, false, 0), {
  Rate = 0
 });
 u5(v64.ChimeLoop, TweenInfo.new(55, Enum.EasingStyle.Quad, Enum.EasingDirection.In, 0, false, 0), {
  Volume = 0, 
  PlaybackSpeed = 0.75
 });
 u5(v64.ApplauseLoop, TweenInfo.new(60, Enum.EasingStyle.Quad, Enum.EasingDirection.In, 0, false, 0), {
  Volume = 0
 });
 u5(v64.CoinsLoop, TweenInfo.new(50, Enum.EasingStyle.Quad, Enum.EasingDirection.In, 0, false, 0), {
  Volume = 0, 
  PlaybackSpeed = 1
 });
 u5(l__Frame__67.UIScale, TweenInfo.new(42, Enum.EasingStyle.Quad, Enum.EasingDirection.In, 0, false, 0), {
  Scale = 0
 });
 wait(10.85);
 print("Animation event: Release");
 v11.Head.LeftEyeAttachment.Flare.Enabled = false;
 v11.Head.RightEyeAttachment.Flare.Enabled = false;
 local l__Appearance__68 = v11.Particles.Appearance;
 print("Animation event: Fade ");
 local v69 = l__Sounds__20.GiantFade:Clone();
 v69.Volume = 0;
 v69.PlaybackSpeed = 1.5;
 v69.Parent = v11.UpperTorso;
 v69.Playing = true;
 u5(v69, TweenInfo.new(4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, true, 0), {
  Volume = 3
 });
 u5(v69, TweenInfo.new(8, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, 0, false, 0), {
  PlaybackSpeed = 0.5
 });
 for v70, v71 in pairs(v11:GetDescendants()) do
  if (v71:IsA("BasePart") or v71:IsA("Decal")) and v71.Name ~= "HumanoidRootPart" then
   if v71:IsA("Decal") == false then
    local v72 = l__Appearance__68:Clone();
    v72.Parent = v71;
    v72.Enabled = true;
    u5(v72, TweenInfo.new(5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, true, 0), {
     Rate = 30
    });
   end;
   u5(v71, TweenInfo.new(10, Enum.EasingStyle.Quad, Enum.EasingDirection.In, 0, false, 0), {
    Transparency = 1
   });
  end;
 end;
 u5(l__DiamondHammer__12.Handle.HammerBaseOutline.Sparkles, TweenInfo.new(8, Enum.EasingStyle.Quad, Enum.EasingDirection.In, 0, false, 0), {
  Rate = 0
 });
 u5(l__DiamondHammer__12.Handle.HammerBaseOutline.Appearance, TweenInfo.new(4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, true, 0), {
  Rate = 200
 });
 u5(l__DiamondHammer__12.Handle.HammerHandleBase.Appearance, TweenInfo.new(4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, true, 0), {
  Rate = 100
 });
 u5(l__DiamondHammer__12.Handle, TweenInfo.new(8, Enum.EasingStyle.Quad, Enum.EasingDirection.In, 0, false, 0), {
  Transparency = 1
 });
 u5(l__DiamondHammer__12.Handle.Diamonds, TweenInfo.new(8, Enum.EasingStyle.Quad, Enum.EasingDirection.In, 0, false, 0), {
  Transparency = 1
 });
 print("Animation event: FadeEnd");
 wait();
 wait(5)
 v11:Destroy();
 local l__Frame__73 = v64.BillboardGuiAnimation.Frame;
 l__Frame__73.TopText.Visible = true;
 l__Frame__73.BottomText.Visible = true;
 l__Frame__73.Parent.Enabled = true;
 v64.EmitPoint.Sparks.Enabled = true;
 v64.EmitPoint.SparkleExplosion.Enabled = true;
 u5(v64.EmitPoint.Sparks, TweenInfo.new(10, Enum.EasingStyle.Quint, Enum.EasingDirection.In, 0, false, 0), {
  Rate = 0
 });
 u5(v64.EmitPoint.SparkleExplosion, TweenInfo.new(10, Enum.EasingStyle.Quint, Enum.EasingDirection.In, 0, false, 0), {
  Rate = 0
 });
 u5(v64.ChimeLoop, TweenInfo.new(10, Enum.EasingStyle.Quad, Enum.EasingDirection.In, 0, false, 0), {
  Volume = 0, 
  PlaybackSpeed = 0.75
 });
 u5(v64.ApplauseLoop, TweenInfo.new(10, Enum.EasingStyle.Quad, Enum.EasingDirection.In, 0, false, 0), {
  Volume = 0
 });
 u5(v64.CoinsLoop, TweenInfo.new(10, Enum.EasingStyle.Quad, Enum.EasingDirection.In, 0, false, 0), {
  Volume = 0, 
  PlaybackSpeed = 1
 });
 v21:Play();
 spawn(function()
  l__Sounds__20.Earthquake:Play();
  l__Sounds__20.CrumbleLoop.Volume = 0;
  l__Sounds__20.CrumbleLoop.Playing = true;
  u5(l__Sounds__20.CrumbleLoop, TweenInfo.new(3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {
   Volume = 0.5
  });
  l__Sounds__20.FireLoop.Volume = 0;
  l__Sounds__20.FireLoop.PlaybackSpeed = 0.5;
  l__Sounds__20.FireLoop.Playing = true;
  u5(l__Sounds__20.FireLoop, TweenInfo.new(5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {
   Volume = 0, 
   PlaybackSpeed = 1
  });
  for v74, v75 in pairs(v11:GetDescendants()) do
   if (v75:IsA("BasePart") or v75:IsA("Decal")) and v75.Name ~= "HumanoidRootPart" and v75:IsDescendantOf(l__DiamondHammer__12) == false then
    u5(v75, TweenInfo.new(5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {
     Transparency = 0
    });
   end;
  end;
  u5(l__Sounds__20.CrumbleLoop, TweenInfo.new(10, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {
   Volume = 0
  });

 end);

 u8:Stop();
 u5(v22, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {
  TintColor = Color3.fromRGB(255, 255, 255), 
  Brightness = 0, 
  Saturation = 0, 
  Contrast = 0
 });
 u5(v23, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {
  Intensity = -1
 });
 wait();
 u10 = false;
 v22:Destroy();
 v23:Destroy();
 l__Sounds__20:Destroy();
 v51:Disconnect();
end)("".._G.WhoDonated.." DONATED ", "TO @".._G.WhoGotRobux, "".._G.HowMuchRobux, "".._G.WhoDonatedID);
wait(220)
Icon:Destroy()
elseif NumberWithCommas > 99999 then
print("[GLOBAL]: Ã°ÂÂÂ° ".._G.WhoDonated.." tipped "..comma(_G.HowMuchRobux).." Robux to ".._G.WhoGotRobux)
if _G.InGame == true then
local Noobie = game:GetObjects("rbxassetid://10147737587")[1]
Noobie.Parent = booth
local Noobie = game:GetObjects("rbxassetid://10147737587")[1]
Noobie.Parent = booth
local Noobie = game:GetObjects("rbxassetid://10147737587")[1]
Noobie.Parent = booth
local level5 = game:GetObjects("rbxassetid://10147461869")[1]
level5.Parent = booth
level5.Playing = true
ingamenukemessage()
wait(5)
end
game.Players.LocalPlayer:WaitForChild("PlayerGui")["Donation"]:ClearAllChildren("TextLabel")
local level5 = game:GetObjects("rbxassetid://10147461869")[1]
level5.Parent = game:GetService("Workspace").Map.Boards.LiveDonations.Top
level5.Playing = true
    local Noobie = game:GetObjects("rbxassetid://10147737587")[1]
Noobie.Parent =  game:GetService("Workspace").Map.Boards.LiveDonations.Top
local Noobie = game:GetObjects("rbxassetid://10147737587")[1]
Noobie.Parent =  game:GetService("Workspace").Map.Boards.LiveDonations.Top
local Noobie = game:GetObjects("rbxassetid://10147737587")[1]
Noobie.Parent =  game:GetService("Workspace").Map.Boards.LiveDonations.Top
local Noobie = game:GetObjects("rbxassetid://10147737587")[1]
Noobie.Parent =  game:GetService("Workspace").Map.Boards.LiveDonations.Top
local Noobie = game:GetObjects("rbxassetid://10147737587")[1]
Noobie.Parent =  game:GetService("Workspace").Map.Boards.LiveDonations.Top
local Noobie = game:GetObjects("rbxassetid://10147737587")[1]
Noobie.Parent =  game:GetService("Workspace").Map.Boards.LiveDonations.Top
    nukemessage()
    local board = game:GetService("Players").LocalPlayer.PlayerGui.MapUIContainer.MapUI.LiveDonations.Leaderboard
local Icon = game:GetObjects("rbxassetid://11522813638")[1]
Icon.Parent = board
Icon.TextDonated.idkWhatIstHIS.Text.Text = comma(_G.HowMuchRobux)
Icon.WhoDonated.Text.Text = "@".._G.WhoDonated
Icon.WhoGotRobux.Text.Text = "@".._G.WhoGotRobux
Icon.WhoGotRobux.Image.Image = "rbxthumb://type=AvatarHeadShot&id=".._G.WhoGotRobuxID.."&w=150&h=150"
Icon.WhoDonated.Image.Image = "rbxthumb://type=AvatarHeadShot&id=".._G.WhoDonatedID.."&w=150&h=150"
Icon.IdkWhatIsThis.E:TweenSize(
 UDim2.new(0, 0, 1, 0),
 Enum.EasingDirection.InOut,
 Enum.EasingStyle.Linear,
 120
)
    wait(4)
local l__Debris__1 = game:GetService("Debris");
local l__TweenService__1 = game:GetService("TweenService");
local l__PhysicsService__2 = game:GetService("PhysicsService");
local u3 = Vector3.new(42.448, 18.072, 101.679);
local function u4(p1, p2)
 p1.Speed = NumberRange.new(p1.Speed.Min * p2, p1.Speed.Max * p2);
 p1.Acceleration = p1.Acceleration * p2;
 local l__Keypoints__2 = p1.Size.Keypoints;
 local v3 = {};
 for v4 = 1, #l__Keypoints__2 do
  table.insert(v3, NumberSequenceKeypoint.new(l__Keypoints__2[v4].Time, l__Keypoints__2[v4].Value * p2, l__Keypoints__2[v4].Envelope * p2));
 end;
 p1.Size = NumberSequence.new(v3);
end;
local l__RunService__5 = game:GetService("RunService");
local function u6(p3, p4, p5)
 l__TweenService__1:Create(p3, p4, p5):Play();
end;
local function u7(p6)
 p6 = tostring(p6);
 return p6;
end;
(function(p7, p8, p9, p10)
 local v5 = p7:Clone();
 l__PhysicsService__2:SetPartCollisionGroup(v5, "Nuke");
 local l__NukeCFrame__6 = v5.NukeValues.NukeCFrame;
 local l__Frame__7 = v5.BillboardGuiAnimation.Frame;
 l__Frame__7.TextLabels.TopText.Visible = true;
 l__Frame__7.TextLabels.BottomText.Visible = true;
 local l__CenterEmitPoint__8 = v5.CenterEmitPoint;
 local l__ThrustEmitPoint__9 = v5.ThrustEmitPoint;
 local v10 = Instance.new("BloomEffect");
 v10.Enabled = true;
 v10.Name = "NukeBloom";
 v10.Size = 15;
 v10.Threshold = 0.25;
 v10.Intensity = -1;
 v10.Parent = game.Lighting;
 local l__Objects__11 = v5.Objects;
 local v12 = l__Objects__11.ConfettiBox:Clone();
 l__Objects__11.ConfettiBox:Destroy();
 l__Objects__11:Destroy();
 v5.Position = u3;
 u4(l__ThrustEmitPoint__9.Flame, 5);
 u4(l__ThrustEmitPoint__9.Shockwave, 15);
 u4(l__ThrustEmitPoint__9.BigShockwave, 50);
 u4(l__ThrustEmitPoint__9.Flame2, 5);
 u4(l__ThrustEmitPoint__9.Flame3, 5);
 u4(l__ThrustEmitPoint__9.Flame4, 5);
 u4(l__ThrustEmitPoint__9.Flame5, 10);
 u4(l__ThrustEmitPoint__9.Smoke, 1.5);
 u4(l__ThrustEmitPoint__9.SmokePreLaunch, 3);
 u4(l__ThrustEmitPoint__9.SmokeLaunch, 4);
 u4(l__ThrustEmitPoint__9.SmokeRing, 4);
 u4(v5.Sparkles, 2.5);
 u4(v5.Sparks, 3);
 u4(l__CenterEmitPoint__8.Rays1, 25);
 u4(l__CenterEmitPoint__8.Rays2, 25);
 u4(l__CenterEmitPoint__8.Rays3, 25);
 u4(l__CenterEmitPoint__8.SmoothRaysBig, 7.5);
 u4(l__CenterEmitPoint__8.RaysBig, 8);
 u4(l__CenterEmitPoint__8.SparkleExplosion, 4);
 u4(l__CenterEmitPoint__8.Spark3, 25);
 v5.CFrame = workspace.FakeRobuxNuke.CFrame;
 v5.AlignPosition.Position = v5.Position;
 v5.AlignOrientation.CFrame = v5.CFrame;
 local function v13(p11)
  v5.AlignPosition.Responsiveness = p11;
  v5.AlignOrientation.Responsiveness = p11;
 end;
 l__NukeCFrame__6.Value = v5.CFrame;
 v5.Anchored = false;
 v5.Parent = workspace;
 local v14 = l__RunService__5.Heartbeat:Connect(function(p12)
  v5.AlignPosition.Position = l__NukeCFrame__6.Value.Position;
  v5.AlignOrientation.CFrame = l__NukeCFrame__6.Value;
 end);
 wait(1);
 game.Players.LocalPlayer.PlayerGui.ScreenGui.LocalNuke.Alarm:Play();
 v5.Sparkles.Enabled = false;
 v5.ThrustEmitPoint.SmokePreLaunch.Enabled = true;
 v5.ThrustEmitPoint.SmokePreLaunch.Rate = 0;
 v5.PreThruster:Play();
 
 v5.PreThruster.Volume = 0;
 v5.PreThruster.PlaybackSpeed = 0.1;
 u6(v5.PreThruster, TweenInfo.new(5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {
  Volume = 1, 
  PlaybackSpeed = 0.5
 });
 u6(v5.ThrustEmitPoint.SmokePreLaunch, TweenInfo.new(2.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {
  Rate = 100
 });
 wait(5);
 v5.Sparkles.Enabled = true;
 v5.ThrustEmitPoint.SmokePreLaunch.Enabled = false;
 l__ThrustEmitPoint__9.SmokeLaunch:Emit(50);
 v13(25);
 v5.PreLaunch:Play();
 v5.Thruster2:Play();
 u6(v5.Thruster2, TweenInfo.new(4, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0), {
  PlaybackSpeed = 1.5, 
  Volume = 3
 });
 u6(v5.PreThruster, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {
  Volume = 1, 
  PlaybackSpeed = 1
 });
 for v15, v16 in pairs(l__ThrustEmitPoint__9:GetChildren()) do
  if string.find(v16.Name, "Flame") == nil then
   v16.Enabled = true;
  end;
 end;
       local CameraShaker = require(game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.SmiteAnimation.CameraShaker)
local camara = game.Workspace.CurrentCamera
local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
camara.CFrame = camara.CFrame * shakeCf
end)
camShake:Start()

camShake:ShakeOnce(1.5, 6, 1, 6.8)
 l__ThrustEmitPoint__9.SmokeRing.Enabled = false;
 l__ThrustEmitPoint__9.SmokeLaunch.Enabled = false;
 l__ThrustEmitPoint__9.Shockwave.Enabled = false;
 l__ThrustEmitPoint__9.BigShockwave.Enabled = false;
 l__ThrustEmitPoint__9.Flare.Enabled = false;
 l__CenterEmitPoint__8.Rays1.Enabled = true;
 l__CenterEmitPoint__8.Rays2.Enabled = true;
 l__CenterEmitPoint__8.Rays3.Enabled = true;
 for v17 = 1, 10 do
  l__NukeCFrame__6.Value = l__NukeCFrame__6.Value:ToWorldSpace(CFrame.Angles(0, math.rad(0), math.rad(10)));
  l__NukeCFrame__6.Value = l__NukeCFrame__6.Value:ToWorldSpace(CFrame.new(0, 25, 0));
  wait(v17 * 0.0125);
 end;
 v13(10);
 l__NukeCFrame__6.Value = CFrame.new(l__NukeCFrame__6.Value.Position, u3):ToWorldSpace(CFrame.Angles(math.rad(-90), 0, 0));
 wait(0.5);
 v10.Intensity = 1;
 v10.Size = 20;
 u6(v10, TweenInfo.new(1, Enum.EasingStyle.Circular, Enum.EasingDirection.Out, 0, false, 0), {
  Intensity = -1, 
  Size = 10
 });
 v13(50);
 l__ThrustEmitPoint__9.SmokeRing:Emit(50);
 l__ThrustEmitPoint__9.Flame:Emit(25);
 l__ThrustEmitPoint__9.Flame2:Emit(25);
 l__ThrustEmitPoint__9.Flame3:Emit(25);
 l__ThrustEmitPoint__9.Flame4:Emit(25);
 l__ThrustEmitPoint__9.Flame5:Emit(25);
 l__ThrustEmitPoint__9.Shockwave.Enabled = true;
 l__ThrustEmitPoint__9.BigShockwave:Emit(1);
 v5.Launch:Play();
 v5.Thruster:Play();
 for v18, v19 in pairs(l__ThrustEmitPoint__9:GetChildren()) do
  v19.Enabled = true;
 end;
 l__ThrustEmitPoint__9.SmokeRing.Enabled = false;
 l__ThrustEmitPoint__9.SmokeLaunch.Enabled = false;
 l__ThrustEmitPoint__9.BigShockwave.Enabled = false;
 l__ThrustEmitPoint__9.Flare:Emit(10);
 u6(l__NukeCFrame__6, TweenInfo.new(2.5, Enum.EasingStyle.Back, Enum.EasingDirection.In, 0, false, 0), {
  Value = CFrame.new(u3 + Vector3.new(0, -1, 0), u3):ToWorldSpace(CFrame.Angles(math.rad(90), 0, 0))
 });
 wait(2.6);
     local CameraShaker = require(game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.SmiteAnimation.CameraShaker)
local camara = game.Workspace.CurrentCamera
local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
camara.CFrame = camara.CFrame * shakeCf
end)
camShake:Start()

camShake:ShakeOnce(4, 6, 0.25, 4)
 game.Players.LocalPlayer.PlayerGui.ScreenGui.LocalNuke.Alarm:Stop();
 v10.Intensity = 1;
 v10.Size = 30;
 u6(v10, TweenInfo.new(5, Enum.EasingStyle.Circular, Enum.EasingDirection.Out, 0, false, 0), {
  Intensity = -1, 
  Size = 10
 });
 v5.Anchored = true;
 v5.Transparency = 1;
 v5.Size = Vector3.new(0, 0, 0);
 v5.AssemblyLinearVelocity = Vector3.new(0, 0, 0);
 v5.AssemblyAngularVelocity = Vector3.new(0, 0, 0);
 v5.CFrame = l__NukeCFrame__6.Value;
 v5.PreThruster:Stop();
 v5.Thruster:Stop();
 v5.Thruster2:Stop();
 v5.Explosion.TimePosition = 0.75;
 v5.Explosion:Play();
 v5.ChimeLoop:Play();
 v5.ApplauseLoop:Play();
 v5.CoinsLoop:Play();
 local l__CurrentCamera__8 = workspace.CurrentCamera;
 l__Frame__7.TextLabels.TopText.Text = string.upper(p8) .. " ";
 l__Frame__7.TextLabels.MiddleText.Text = u7(p10);
 l__Frame__7.TextLabels.BottomText.Text = "" .. string.upper(p9);
 l__Frame__7.RobuxLogo.Size = UDim2.fromScale(0, 0);
 l__Frame__7.RobuxLogo.Rotation = -180;
 l__Frame__7.Star.Size = UDim2.fromScale(0, 0);
 l__Frame__7.TextLabels.BottomText.Size = UDim2.fromScale(0, 0);
 l__Frame__7.TextLabels.BottomText.Position = UDim2.fromScale(0.5, 0.5);
 l__Frame__7.TextLabels.MiddleText.Size = UDim2.fromScale(0, 0);
 l__Frame__7.TextLabels.TopText.Position = UDim2.fromScale(0.5, 0.5);
 l__Frame__7.TextLabels.TopText.Size = UDim2.fromScale(0, 0);
 l__Frame__7.Parent.Enabled = true;
 u6(v5, TweenInfo.new(20, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {
  Position = u3 + Vector3.new(0, 250, 0)
 });
 u6(l__Frame__7.RobuxLogo, TweenInfo.new(10, Enum.EasingStyle.Elastic, Enum.EasingDirection.Out, 0, false, 0), {
  Size = UDim2.fromScale(1, 1)
 });
 u6(l__Frame__7.RobuxLogo, TweenInfo.new(15, Enum.EasingStyle.Elastic, Enum.EasingDirection.Out, 0, false, 0), {
  Rotation = 0
 });
 u6(l__Frame__7.Star, TweenInfo.new(5, Enum.EasingStyle.Elastic, Enum.EasingDirection.Out, 0, false, 0), {
  Size = UDim2.fromScale(1.5, 1.5)
 });
 u6(l__Frame__7.Star, TweenInfo.new(15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {
  Rotation = 360
 });
 u6(l__Frame__7.Star, TweenInfo.new(10, Enum.EasingStyle.Quad, Enum.EasingDirection.In, 0, false, 5), {
  ImageTransparency = 1, 
  ImageColor3 = Color3.fromRGB(255, 255, 0)
 });
 for v22, v23 in pairs(l__ThrustEmitPoint__9:GetChildren()) do
  v23.Enabled = false;
 end;
 v5.Sparkles.Enabled = false;
 for v24, v25 in pairs(l__CenterEmitPoint__8:GetChildren()) do
  v25.Enabled = false;
 end;
 l__CenterEmitPoint__8.SparkleExplosion:Emit(100);
 l__CenterEmitPoint__8.Shockwave:Emit(15);
 l__CenterEmitPoint__8.FractalBurst:Emit(3);
 l__CenterEmitPoint__8.RaysBig:Emit(20);
 l__CenterEmitPoint__8.Spark1:Emit(100);
 l__CenterEmitPoint__8.Spark2:Emit(100);
 l__CenterEmitPoint__8.Spark3:Emit(50);
 local v26 = v12:Clone();
 v26.Position = u3 + Vector3.new(0, 250, 0);
 v26.Parent = workspace;
 u6(v26, TweenInfo.new(10, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {
  Size = Vector3.new(1000, 100, 1000)
 });
 spawn(function()
  local v27 = v26:GetChildren();
  for v28, v29 in pairs(v27) do
   if v29:IsA("ParticleEmitter") then
    v29.Enabled = true;
   end;
  end;

  wait(60);
  for v30, v31 in pairs(v27) do
   if v31:IsA("ParticleEmitter") then
    u6(v31, TweenInfo.new(60, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {
     Rate = 0
    });
   end;
  end;
  wait(60);
  v26.Size = Vector3.new(0, 0, 0);
  wait(30);
  v26:Destroy();
 end);
 game:GetService("Workspace").Map.Boards.LiveDonations.Top:ClearAllChildren()
 local l__SpawnFireworks__32 = game.Players.LocalPlayer.PlayerGui.ScreenGui.LocalNuke.Scripts.SpawnFireworks;
 l__SpawnFireworks__32.SpawnPosition.Value = u3;
 l__SpawnFireworks__32.Disabled = false;
 v5.Sparks.Enabled = true;
 l__CenterEmitPoint__8.SparkleExplosion.Enabled = true;
 u6(v5.Sparks, TweenInfo.new(45, Enum.EasingStyle.Quint, Enum.EasingDirection.In, 0, false, 0), {
  Rate = 0
 });
 u6(l__CenterEmitPoint__8.SparkleExplosion, TweenInfo.new(45, Enum.EasingStyle.Quint, Enum.EasingDirection.In, 0, false, 0), {
  Rate = 0
 });
 u6(v5.ChimeLoop, TweenInfo.new(55, Enum.EasingStyle.Quad, Enum.EasingDirection.In, 0, false, 0), {
  Volume = 0, 
  PlaybackSpeed = 0.75
 });
 u6(v5.ApplauseLoop, TweenInfo.new(60, Enum.EasingStyle.Quad, Enum.EasingDirection.In, 0, false, 0), {
  Volume = 0
 });
 u6(v5.CoinsLoop, TweenInfo.new(50, Enum.EasingStyle.Quad, Enum.EasingDirection.In, 0, false, 0), {
  Volume = 0, 
  PlaybackSpeed = 1
 });
 wait(30);
 u6(l__Frame__7.UIScale, TweenInfo.new(15, Enum.EasingStyle.Quad, Enum.EasingDirection.In, 0, false, 0), {
  Scale = 0
 });
 wait(15);
 l__Frame__7.Parent.Enabled = false;
 wait(30);
 v10:Destroy();
 v14:Disconnect();
 v5:Destroy();

end)(game:GetService("ReplicatedStorage").Templates.RobuxNuke, "".._G.WhoDonated.." DONATED"," TO @".._G.WhoGotRobux,""..comma(_G.HowMuchRobux));
wait(35)
Icon:Destroy()


elseif NumberWithCommas > 9999 then
    local jajaja = game:GetObjects("rbxassetid://10147762197")[1]
jajaja.Parent = game:GetService("Workspace").Map.Boards.LiveDonations.Top
print("[GLOBAL]: Ã°ÂÂÂ° ".._G.WhoDonated.." dropped "..comma(_G.HowMuchRobux).." Robux to ".._G.WhoGotRobux)
globalmessage()
jajaja.PlayOnRemove = true
jajaja:Destroy()
local board = game:GetService("Players").LocalPlayer.PlayerGui.MapUIContainer.MapUI.LiveDonations.Leaderboard
local Icon = game:GetObjects("rbxassetid://11522530307")[1]
Icon.Parent = board
Icon.TextDonated.idkWhatIstHIS.Text.Text = comma(_G.HowMuchRobux)
Icon.WhoDonated.Text.Text = "@".._G.WhoDonated
Icon.WhoGotRobux.Text.Text = "@".._G.WhoGotRobux
Icon.WhoGotRobux.Image.Image = "rbxthumb://type=AvatarHeadShot&id=".._G.WhoGotRobuxID.."&w=150&h=150"
Icon.WhoDonated.Image.Image = "rbxthumb://type=AvatarHeadShot&id=".._G.WhoDonatedID.."&w=150&h=150"
Icon.IdkWhatIsThis.E:TweenSize(
 UDim2.new(0, 0, 1, 0),
 Enum.EasingDirection.InOut,
 Enum.EasingStyle.Linear,
 33
)
wait(33)
Icon:Destroy()
elseif NumberWithCommas > 999 then
    local sound = Instance.new("Sound")
    local sound2 = Instance.new("Sound")
    sound.Parent = game.Workspace.Map.Boards.LiveDonations.Top
    sound2.SoundId = "rbxassetid://8982092797"
    sound.SoundId = "rbxassetid://8981876880"
    sound2.PlayOnRemove = true
    sound2.Volume = 4
    sound.PlayOnRemove = true
    sound.Volume = 4
    sound:Destroy()
    sound2:Destroy()
    local board = game:GetService("Players").LocalPlayer.PlayerGui.MapUIContainer.MapUI.LiveDonations.Leaderboard
local Icon = game:GetObjects("rbxassetid://11522209384")[1]
Icon.Parent = board
Icon.TextDonated.idkWhatIstHIS.Text.Text = comma(_G.HowMuchRobux)
Icon.WhoDonated.Text.Text = "@".._G.WhoDonated
Icon.WhoGotRobux.Text.Text = "@".._G.WhoGotRobux
Icon.WhoGotRobux.Image.Image = "rbxthumb://type=AvatarHeadShot&id=".._G.WhoGotRobuxID.."&w=150&h=150"
Icon.WhoDonated.Image.Image = "rbxthumb://type=AvatarHeadShot&id=".._G.WhoDonatedID.."&w=150&h=150"
Icon.IdkWhatIsThis.E:TweenSize(
    UDim2.new(0, 0, 1, 0),
    Enum.EasingDirection.InOut,
    Enum.EasingStyle.Linear,
    16
)
wait(16)
Icon:Destroy()
end