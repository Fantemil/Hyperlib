local char = game:GetService("Players").LocalPlayer.Character

function isthere(folder)
   local a ={}
for i,v in pairs(workspace:GetChildren()) do
   if v:IsA("Folder") and v.Name == folder then
       table.insert(a, v)
       end
end
if#a==0 then
   return false
   else
       return true
       end
end

local Filter1
if isthere("Filter") == false then
  local Filter = Instance.new("Folder", workspace)
  Filter.Name = "Filter"
  Filter1 = Filter
else
  Filter1 = workspace:WaitForChild("Filter")
end

local Map1
if isthere("Map") == false then
  local Map = Instance.new("Folder", workspace)
  Map.Name = "Map"
  Map1 = Map
else
  Map1 = workspace:WaitForChild("Map")
end

local ActivePlayers1
if isthere("ActivePlayers") == false then
  local ActivePlayers = Instance.new("Folder", workspace)
  ActivePlayers.Name = "ActivePlayers"
  ActivePlayers1 = ActivePlayers
else
  ActivePlayers1 = workspace:WaitForChild("ActivePlayers")
end



Grips = {
Up = CFrame.new(0, 0, -1.70000005, 0, 0, 1, 1, 0, 0, 0, 1, 0),
Out = CFrame.new(0, 0, -1.70000005, 0, 1, 0, 1, -0, 0, 0, 0, -1)
};

-------- coroutine ---
coroutine.wrap(function()

while task.wait(1) do
for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
    if v:IsA("Humanoid") and v.Parent:IsA("Model") then
          v.Parent.Parent = workspace.ActivePlayers      
   end
 end
end

end)()



-----------

--------- FUNCTIONS -------------------

function FindBestAngle(p1, p2, p3)
local v1 = RaycastParams.new();
v1.FilterType = Enum.RaycastFilterType.Blacklist;
v1.FilterDescendantsInstances = { p1, workspace.Filter, p3, table.unpack(p2.Humanoid:GetAccessories()), workspace.Map };
local v2 = {};
table.insert(v2, { workspace:Raycast(p1["Right Arm"].Position, p1.PrimaryPart.CFrame.LookVector * 10, v1), 0 });
table.insert(v2, { workspace:Raycast(p1["Right Arm"].Position, (p1.PrimaryPart.CFrame * CFrame.Angles(0, -0.017453292519943295, 0)).LookVector.Unit * 10, v1), -1 });
table.insert(v2, { workspace:Raycast(p1["Right Arm"].Position, (p1.PrimaryPart.CFrame * CFrame.Angles(0, 0.017453292519943295, 0)).LookVector.Unit * 10, v1), 1 });
table.insert(v2, { workspace:Raycast(p1["Right Arm"].Position, (p1.PrimaryPart.CFrame * CFrame.Angles(0, 0.03490658503988659, 0)).LookVector.Unit * 10, v1), 2 });
table.insert(v2, { workspace:Raycast(p1["Right Arm"].Position, (p1.PrimaryPart.CFrame * CFrame.Angles(0, -0.03490658503988659, 0)).LookVector.Unit * 10, v1), -2 });
workspace.Filter:ClearAllChildren();
local v3 = math.huge;
local v4 = 0;
for v5, v6 in pairs(v2) do
if v6[1] then
local l__Magnitude__7 = (p1["Right Arm"].Position - v6[1].Position).Magnitude;
if l__Magnitude__7 < v3 then
v3 = l__Magnitude__7;
v4 = v6[2];
local l__Position__8 = v6.Position;
end;
end;
end;
return v4;
end;



function GetClosestPart(p7, p8)
local v7 = nil;
local v8 = math.huge;
for v9, v10 in pairs(p8:GetChildren()) do
if v10:IsA("BasePart") then
local v11 = Vector3.new(0, 0, 0);
if v10.Name == "Right Arm" then
v11 = p8.PrimaryPart.CFrame.LookVector * 3;
end;
local l__Magnitude__12 = (p7 - (v10.Position + v11)).Magnitude;
if l__Magnitude__12 < v8 then
v8 = l__Magnitude__12;
v7 = v10;
end;
end;
end;
return v7;
end

function GetDistance(p5, p6)
return (p5.PrimaryPart.Position - p6.PrimaryPart.Position).Magnitude;
end

function GetClosestEnemy(p4)
local v2 = nil;
local v3 = math.huge;
for v4, v5 in pairs(workspace.ActivePlayers:GetChildren()) do
if v5 ~= p4 then
local l__Magnitude__6 = (v5.PrimaryPart.Position - p4.PrimaryPart.Position).Magnitude;
if l__Magnitude__6 < v3 then
v3 = l__Magnitude__6;
v2 = v5;
end;
end;
end;
return v2;
end


function GetRetreatDirection(p9, p10, p11)
local v13 = p9.PrimaryPart.Position - p10.PrimaryPart.Position;
local v14 = RaycastParams.new();
v14.FilterType = Enum.RaycastFilterType.Blacklist;
v14.FilterDescendantsInstances = { workspace.ActivePlayers };
local v15 = -135;
local v16 = 0;
local v17 = nil;
for v18 = 1, 10 do
local v19 = workspace:Raycast(p9.PrimaryPart.Position, (CFrame.lookAt(p9.PrimaryPart.Position, p9.PrimaryPart.Position + v13) * CFrame.Angles(0, math.rad(v15), 0)).LookVector * p11, v14);
if v19 then
local l__Magnitude__20 = (v19.Position - p10.PrimaryPart.Position).Magnitude;
if v16 < l__Magnitude__20 then
v17 = v19.Position;
v16 = l__Magnitude__20;
end;
end;
v15 = v15 + 27;
end;
return v17;
end

function SideCast(p12)
local v21 = RaycastParams.new();
v21.FilterType = Enum.RaycastFilterType.Blacklist;
v21.FilterDescendantsInstances = { workspace.ActivePlayers };
local v22 = 0;
for v23 = 1, 10 do
local v24 = workspace:Raycast(p12.PrimaryPart.Position, (p12.PrimaryPart.CFrame * CFrame.Angles(0, math.rad(v22), 0)).LookVector * 8, v21);
v22 = v22 + 36;
if v24 then
return v24;
end;
end;
end

----------------------- AI CODE

function Ai(p1)
local l__Humanoid__7 = p1.Humanoid;
local l__PrimaryPart__8 = p1.PrimaryPart;
local v9 = p1:FindFirstChildOfClass("Tool");
if not v9 then
while true do
v9 = p1:FindFirstChildOfClass("Tool");
wait();
if v9 then
break;
end;
end;
end;
local v10 = 0;
local v11 = 0;
local v12 = 0;
local v13 = false;
while p1.PrimaryPart and l__Humanoid__7.Health > 0  do
v10 = v10 + game:GetService("RunService").RenderStepped:Wait();
local v14 = GetClosestEnemy(p1);
if v14 and v14.Humanoid.Health > 0 then
local v15 = GetClosestPart(v9.Handle.Position, v14);
local v16 = v14:FindFirstChildOfClass("Tool");
local v17 = false;
if v16 and v16.Grip == Grips.Out then
if v13 == false then
v12 = v10;
end;
v13 = true;
end;
if v9.Grip ~= Grips.Out then
v17 = true;
end;
local v18 = v14.Humanoid.Health < p1.Humanoid.Health;
local l__Position__19 = p1.PrimaryPart.Position;
local l__Position__20 = v14.PrimaryPart.Position;
local v21 = math.sqrt((l__Position__19.X - l__Position__20.X) ^ 2 + (l__Position__19.Z - l__Position__20.Z) ^ 2);
local v22 = GetDistance(p1, v14);
local v23 = math.abs(v14.PrimaryPart.Position.Y - p1.PrimaryPart.Position.Y) < 3;
local l__Position__24 = v14.PrimaryPart.Position;
if v13 and v17 and v23 and v22 > 6 and v16 then
local l__Position__25 = l__PrimaryPart__8.Position;
local v26 = v16.Handle.Position + v14.PrimaryPart.CFrame.LookVector * v16.Handle.Size.Y * 2.2;
p1:SetPrimaryPartCFrame(CFrame.lookAt(l__Position__25, v26 - Vector3.new(0, v26.Y - l__Position__25.Y, 0)) * CFrame.Angles(0, 0.30543261909900765, 0));
else
if v9.Parent ~= p1 then
p1:EquipTool(v9)
end;
v9.Parent = p1;
p1:SetPrimaryPartCFrame(CFrame.lookAt(l__PrimaryPart__8.Position, v15.Position - Vector3.new(0, v15.Position.Y - l__PrimaryPart__8.Position.Y, 0)) * CFrame.Angles(0, 0.30543261909900765, 0));
local v27 = 0;
local v28 = v27;
for v29 = 1, 10 do
v27 = v27 + FindBestAngle(p1, v14, v16);
if v28 == v27 then
if v18 then
local v30 = v27 + math.random(-10, 10);
else
v30 = v27 + math.random(-2, 2);
end;
p1:SetPrimaryPartCFrame(CFrame.lookAt(l__PrimaryPart__8.Position, v15.Position - Vector3.new(0, v15.Position.Y - l__PrimaryPart__8.Position.Y, 0)) * CFrame.Angles(0, math.rad(17.5 + v30), 0));
break;
end;
v28 = v27;
p1:SetPrimaryPartCFrame(CFrame.lookAt(l__PrimaryPart__8.Position, v15.Position - Vector3.new(0, v15.Position.Y - l__PrimaryPart__8.Position.Y, 0)) * CFrame.Angles(0, math.rad(17.5 + v27), 0));
end;
end;
local v31 = ((p1.PrimaryPart.Position - v14.PrimaryPart.Position).Unit - v14.Humanoid.MoveDirection).Magnitude < 1;
if v13 then
local v32 = 8;
else
v32 = 7;
end;
if v31 then
local v33 = 2;
else
v33 = 0;
end;
local v34 = v32 + v33;
if v9.Enabled and v9.Grip == Grips.Up then
v11 = v10;
end;
if v16 and not v16.Enabled and v10 - v12 > 0.1 and not (v10 - v12 < 0.2) and v10 - v11 > 0.05 then
v34 = v34 - 2;
end;
if v10 - v11 > 0.5 then
v34 = v34 + 2;
end;
if v21 < 15 then
v9:Activate();
end;
if v22 > 8 and p1.Humanoid.Health < v14.Humanoid.Health then
v34 = v34 + 10;
end;
local v35 = -v14.PrimaryPart.CFrame.RightVector;
if v18 and v23 then
v35 = v35 * 3;
v34 = 2;
end;
if SideCast(v14) or v9.Grip == Grips.Up then
v35 = Vector3.new(0, 0, 0);
end;
local v36 = l__Position__24 - (l__Position__24 - l__PrimaryPart__8.Position).Unit * v34 + v35;
if v18 then

end;
if v22 < v34 then
if GetRetreatDirection(p1, v14, 10) and v31 then
l__Humanoid__7:MoveTo((GetRetreatDirection(p1, v14, 100)));
else
l__Humanoid__7:MoveTo(v36);
end;
else
l__Humanoid__7:MoveTo(v36);
end;
end;
end;
end;

------------------------

Ai(char)