-- Made by GameOverAgain :>

-- // Main Variables
local suf = "/e";
local plrs = game:GetService("Players");
local lplr = plrs.LocalPlayer;
local UIS = game:GetService("UserInputService");
local mouse = lplr:GetMouse();
local currentarg;
local currentbool;
local Message;

-- // Remotes 
local HumanDamage = game:GetService("Workspace").Events.HumanDamage;
local EyeCut = game:GetService("Workspace").ServerEvents.EyeCut;
local SuperHeal = game:GetService("Workspace").ServerEvents.ActivateSuperHeal;






function FindPlayer(player)
 for i, v in pairs(plrs:GetPlayers()) do
  if v.Name:lower() == player:lower() or v.Name:lower():find(player:lower()) then
   return v;
  end
 end
end

function cmd(arg, bool)
 if bool == true then
  currentarg, currentbool = arg, bool;
  if Message:sub(1, #arg + 4) == suf .. " " .. arg .. " " then
   return true;
  else
   return false;
  end
 elseif bool == nil then
  currentarg, currentbool = arg, bool;
  if Message:sub(1, #arg + 4) == suf .. " " .. arg then
   return true;
  else
   return false;
  end
 end
end


function getsubint()
 if currentbool == true then
  return  #(suf .. " " .. currentarg .. " ") + 1;
 end
end





local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(o, ...)
 local packed = {
  ...
 };
 local remotename = tostring(o);
 local method = getnamecallmethod();
 local HumanCheck = (method == "FireServer" and remotename == "TitanDamage");
 local TitanCheck = (method == "FireServer" and remotename == "ShifterDamage");

 if HumanCheck  then
  packed[2] = 100000000;
  return old(o, unpack(packed));
 elseif TitanCheck  then
  packed[2] = 500;
  return old(o, unpack(packed));
 end

 return old(o, ...);
end)


function checkkey(input, firstkey, secondkey)
 if secondkey then
  local firstcheck = (input.KeyCode == Enum.KeyCode[firstkey] and UIS:IsKeyDown(Enum.KeyCode[secondkey]));
  local secondcheck = (input.KeyCode == Enum.KeyCode[secondkey] and UIS:IsKeyDown(Enum.KeyCode[firstkey]));
  if (firstcheck or secondcheck)  then
   return true;
  end
 elseif (firstkey and not secondkey) then
  if (input.KeyCode == Enum.KeyCode[firstkey]) then
   return true;
  end
 end
end

UIS.InputBegan:Connect(function(input, o)
 if not o then
  if checkkey(input, "LeftAlt") then
   for i, v in pairs(plrs:GetChildren()) do
    if (v ~= lplr and v.Character:FindFirstChild("HumanoidRootPart") and lplr:DistanceFromCharacter(v.Character.HumanoidRootPart.Position) < 100) then
     HumanDamage:FireServer(v.Character.Humanoid, 10000, "heckoff");
    end
   end
  elseif checkkey(input, "RightAlt") then
   fireclickdetector(workspace.Gear["Advanced gear"].Head.ClickDetector);
  elseif checkkey(input, "LeftControl", "F") then
   local target = mouse.Target;
   if target.Parent:FindFirstChild("Humanoid") then
    lplr.Character:FindFirstChild("SpecialEvents").CartGrab:FireServer(lplr.Character, target.Parent.PrimaryPart);
   end
  elseif checkkey(input, "LeftControl", "V") then
   lplr.Character:FindFirstChild("SpecialEvents").CartDrop:FireServer(lplr.Character);
  elseif checkkey(input, "LeftControl", "E") then
   lplr.Character:FindFirstChild("SpecialEvents").CartEat:FireServer(lplr.Character);
  elseif checkkey(input, "LeftControl", "X") then
   local target = mouse.Target;
   if target.Parent:FindFirstChild("Humanoid") then
    lplr.Character:FindFirstChild("SpecialEvents").Cling:FireServer(lplr.Character, target.Parent.PrimaryPart);
   end
  elseif checkkey(input, "LeftControl", "B") then
   lplr.Character:FindFirstChild("SpecialEvents").Bite:FireServer(lplr.Character);
  elseif checkkey(input, "LeftControl", "C") then
   local old = game:GetService("Players").Furaawa.data.tp.Value

   lplr.PlayerGui.Titan.Customize["Ti5"]:FireServer()

   lplr.Backpack.Shift.ShiftEvents.MakeHColossalShift:FireServer(lplr, lplr.Character, "heckoff")
   lplr.Backpack.Shift.ShiftEvents.MakeHColossalTitan:FireServer(lplr, lplr.Character, "heckoff")

   lplr.PlayerGui.Titan.Customize["Ti"..old]:FireServer()
  end
 end
end)

 
spawn(function()
 while wait() do
  pcall(function()
   if shared.titan then
    lplr.Backpack.Shift.db.Value = 0
   end
  end)
 end
end)



lplr.Chatted:connect(function(mes)
 Message = mes;
 if cmd("grab", true) then

  lplr.Character:FindFirstChild("SpecialEvents").CartGrab:FireServer(lplr.Character, FindPlayer(mes:lower():sub(getsubint())).Character.PrimaryPart);

 elseif cmd("drop") then

  lplr.Character:FindFirstChild("SpecialEvents").CartDrop:FireServer(lplr.Character);

 elseif cmd("eat") then

  lplr.Character:FindFirstChild("SpecialEvents").CartEat:FireServer(lplr.Character);

 end

end)


lplr.PlayerGui.ChildAdded:Connect(function(child)
 if child.Name:match("Blinded") then
  child:Destroy();
 end
end)






local old = wait;
old = hookfunction(wait, function(arg)
 local waits = (arg == 30);
 local script = (tostring(getcallingscript()):match("Shifter Controls") and not checkcaller());
 local check = (waits and script);
 if (check) then
  return 0;
 end
 return old(arg);
end)



local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local w = library:CreateWindow("AOT");

local b = w:CreateFolder("Shit");



b:Toggle("Inf Transforming", function(bool)
 shared.titan = bool;
end)


b:Button("Spike", function()
 lplr.data.st.Value = 7;
end)


b:Button("HealS", function()
 SuperHeal:FireServer(lplr.Character);
end)