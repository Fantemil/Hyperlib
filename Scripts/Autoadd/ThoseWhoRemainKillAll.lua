-- this shit aint work anymore so ignore.
while true do
end

local _=("")
local _______=_.reverse
local __=_.len
local ___=_.sub
local function _(_)
return _..""
end
local ______=debug.getupvalue
local ____=next;
local ________="lm"
local ____________=require(game.ReplicatedStorage.Nevermore)
local ___________=require(game.Players.LocalPlayer.PlayerScripts.Client.Bullets)
local _____=game.Players.LocalPlayer.PlayerScripts.Client.Projectiles
local _____=require(_____)
local __________=getfenv(_____.Update).getEffectPoints
while true do
for ____,_________ in ____,workspace.Entities.Infected:GetChildren()do
pcall(function()
local ____=nil;
local _=_______(_(____________:GetTime()*1+1337));
local _______=___(_,__(_)-5,__(_)-3)..___(_,1,__(_)-10)..___(_,__(_)-2,__(_))..___(_,__(_)-9,__(_)-6);
____="";
for _=1,__(_______)do
local _=___(_______,_,_);
local __=_;
if ______(_____[________],1)[_]then
__=______(_____[________],1)[_];
end;
____=____..__;
end;
local __,_,__=workspace:FindPartOnRayWithWhitelist(Ray.new(_________.HumanoidRootPart.Position,Vector3.new(0,-1,0)*1000),___________.GetServProjColCache(),true);
game.ReplicatedStorage.RE:FireServer("GenerateAreaEffect",{
En=____,
Name="Molotov",
MidPoint=_,
Points=__________(_,5,3.5)
})
end)
task.wait()
end
task.wait()
end