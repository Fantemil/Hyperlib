local a=game:GetService"Workspace".PJobDesks;local b=game:GetService"RunService"local function c()for d,e in pairs(a:GetChildren())do if e.Temp:FindFirstChild"Paper"then local f=e.Temp.Paper.S.OFF.Text;if f=="Theft"or f=="Murder"or f=="Breaking In"then fireclickdetector(e.A.C)else fireclickdetector(e.B.C)end end end end;local function g()for d,e in pairs(a:GetChildren())do if not e.Temp:FindFirstChild"Paper"then fireclickdetector(e.Print.C)end end end;local function h()g()c()end;local i={["HeaderWidth"]=200,["AccentColor"]=Color3.new(1,1,1)}local j=loadstring(game:HttpGet"https://gitlab.com/0x45.xyz/droplib/-/raw/master/drop-minified.lua")():Init(i,game.CoreGui)local k=j:CreateCategory"Farms"k:CreateSwitch("Toggle Police Farm",function(l)if l then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(1.0382753899e3,23.4580841,-2.53975903e3)b:BindToRenderStep("policeFarm",1,h)else b:UnbindFromRenderStep"policeFarm"end end,false)