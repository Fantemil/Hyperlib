wait(1)local a=loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()local b=loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()b:Notify({Title="Fentanyl Private",Description="Loaded"},{OutlineColor=Color3.fromRGB(80,80,80),Time=5,Type="default"})local c=game:GetService("Workspace")local d=game:GetService("RunService")local e=game:GetService("UserInputService")local f=game:GetService("Players")local g=f.LocalPlayer;local h=g.Character;local i=h:FindFirstChild("HumanoidRootPart")local j=h:FindFirstChild("Humanoid")local k=g:GetMouse()local l=c.CurrentCamera;local m=g.TeamColor;local n=false;local o=false;local p=true;local q=.187;local r=Vector3.new(0,.1,0)_G.TeamCheck=false;_G.AimPart="HumanoidRootPart"_G.Sensitivity=0;_G.CircleSides=64;_G.CircleColor=Color3.fromRGB(255,0,130)_G.CircleTransparency=0;_G.CircleRadius=200;_G.CircleFilled=true;_G.CircleVisible=true;_G.CircleThickness=1;local s=Drawing.new("Circle")s.Position=Vector2.new(l.ViewportSize.X/2,l.ViewportSize.Y/2)s.Radius=_G.CircleRadius;s.Filled=_G.CircleFilled;s.Color=_G.CircleColor;s.Visible=_G.CircleVisible;s.Transparency=_G.CircleTransparency;s.NumSides=_G.CircleSides;s.Thickness=_G.CircleThickness;local function t()e.MouseBehavior=Enum.MouseBehavior.LockCenter end;local function u()n=false;o=false;p=false;e.MouseBehavior=Enum.MouseBehavior.Default end;function FindNearestPlayer()local v=math.huge;local w=nil;for x,y in pairs(f:GetPlayers())do if y~=g and y.Character:FindFirstChild("Humanoid")and y.Character:FindFirstChild("Humanoid").Health>0 and y.Character:FindFirstChild("HumanoidRootPart")and y then local z=y.Character;local A,B=l:WorldToViewportPoint(z[_G.AimPart].Position)if B then local C=(Vector2.new(k.X,k.Y)-Vector2.new(A.X,A.Y)).Magnitude;if C<v and C<s.Radius then v=C;w=z end end end end;return w end;e.InputBegan:Connect(function(D)if D.UserInputType==Enum.UserInputType.MouseButton2 then n=true;o=true;p=true;if o then local E=FindNearestPlayer()while n do task.wait(.000001)if p and E~=nil then local F=E.HumanoidRootPart.CFrame+E.HumanoidRootPart.Velocity*q+r;l.CFrame=CFrame.lookAt(l.CFrame.Position,F.Position)t()end end end end end)e.InputEnded:Connect(function(D)if D.UserInputType==Enum.UserInputType.MouseButton2 then u()end end)
