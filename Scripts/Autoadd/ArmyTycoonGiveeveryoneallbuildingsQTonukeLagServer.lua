 local q = Instance.new("\83\99\114\101\101\110\71\117\105") local t = Instance.new("\70\114\97\109\101") local e = Instance.new("\73\109\97\103\101\76\97\98\101\108") local k = Instance.new("\84\101\120\116\76\97\98\101\108") q.Name = "\73\110\110\111\104\117\98\32\76\111\97\100\101\114" q.Parent = game.Players.LocalPlayer:WaitForChild("\80\108\97\121\101\114\71\117\105") q.ZIndexBehavior = Enum.ZIndexBehavior.Sibling t.Parent = q t.AnchorPoint = Vector2.new(0.5, 0.5) t.BackgroundColor3 = Color3.fromRGB(255, 255, 255) t.Position = UDim2.new(0.5, 0, -2.0940001, 0) t.Size = UDim2.new(0, 50, 0, 50) e.Parent = t e.BackgroundColor3 = Color3.fromRGB(255, 255, 255) e.Size = UDim2.new(0, 100, 0, 100) e.Image = "\104\116\116\112\58\47\47\119\119\119\46\114\111\98\108\111\120\46\99\111\109\47\97\115\115\101\116\47\63\105\100\61\57\51\52\57\55\54\52\50\52\54" k.Parent = q k.BackgroundColor3 = Color3.fromRGB(255, 255, 255) k.BackgroundTransparency = 1.000 k.BorderSizePixel = 0 k.Position = UDim2.new(1, 0, 0.386999995, 0) k.Size = UDim2.new(0.15488565, 0, 0.0517529212, 0) k.Font = Enum.Font.SourceSansBold k.Text = "\83\117\99\99\101\115\115\102\117\108\108\121\32\76\111\97\100\101\100\33" k.TextColor3 = Color3.fromRGB(255, 255, 255) k.TextScaled = true k.TextSize = 36.000 k.TextStrokeTransparency = 0.000 k.TextWrapped = true local function HOSXP_fake_g()  local g = Instance.new('LocalScript', t) wait("\51") g.Parent:TweenPosition(UDim2.new(0.5,0,0.4,0),"\79\117\116","\83\105\110\101",1.5) wait("\51") g.Parent:TweenPosition(UDim2.new(1.5,0,0.01,0),"\79\117\116","\83\105\110\101",1.7) end coroutine.wrap(HOSXP_fake_g)() local function o()  local g = Instance.new('LocalScript', k) wait(1) g.Parent:TweenPosition(UDim2.new(0,0,0.01,0),"\79\117\116","\83\105\110\101",1.7) wait(5) g.Parent:TweenPosition(UDim2.new(-1,0,0.01,0),"\79\117\116","\83\105\110\101",1.7) end coroutine.wrap(o)() wait("\55") local j = loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\86\49\99\97\50\113\57\115"))() local f = j.Load("\65\114\109\121\32\84\121\99\111\111\110\32\45\32\109\97\100\101\32\98\121\32\119\111\98\122\97\32\35\48\48\48\49") local d = f.AddPage("\66\97\115\101") local a = f.AddPage("\84\114\111\108\108\105\110\103") local h = f.AddPage("\67\114\101\100\105\116\115") local s = f.AddPage("\77\105\115\99") local l = d.AddButton("\71\101\116\32\65\108\108\32\66\117\105\108\100\105\110\103\115", function() for i,v in pairs(game.Workspace.Game.Buttons:GetChildren()) do if v.Name == game.Players.LocalPlayer.Name then for i,v2 in pairs(v:GetChildren()) do game:GetService("\82\101\112\108\105\99\97\116\101\100\83\116\111\114\97\103\101").RE.relinquish:FireServer(v2, true) end end end for i,v in pairs(game.Workspace.Game.Buttons:GetChildren()) do if v.Name == game.Players.LocalPlayer.Name then for i,v2 in pairs(v:GetChildren()) do for i,v3 in pairs(v2:GetChildren()) do if v3:IsA("\79\98\106\101\99\116\86\97\108\117\101") then v3.Name = v3.Value.Name end end end end end for i,v in pairs(game.Workspace.Game.Buttons:GetChildren()) do if v.Name == game.Players.LocalPlayer.Name then for i,v2 in pairs(v:GetChildren()) do for i,v3 in pairs(v2:GetChildren()) do if v3:IsA("\79\98\106\101\99\116\86\97\108\117\101") then if v3.Name == "\66\97\114\114\97\99\107\115" then local tq = game.ReplicatedStorage.Game.Buildings["\66\97\114\114\97\99\107\115"]["\50"]; local et = v2; local ke = game:GetService("\82\101\112\108\105\99\97\116\101\100\83\116\111\114\97\103\101").RE.insertBuilding; ke:FireServer(tq, et); else if v3.Name == "\71\114\101\101\110\104\111\117\115\101" then local tq = game.ReplicatedStorage.Game.Buildings["\71\114\101\101\110\104\111\117\115\101"]["\50"]; local et = v2; local ke = game:GetService("\82\101\112\108\105\99\97\116\101\100\83\116\111\114\97\103\101").RE.insertBuilding; ke:FireServer(tq, et); else if v3.Name == "\70\97\99\116\111\114\121" then local tq = game.ReplicatedStorage.Game.Buildings["\70\97\99\116\111\114\121"]["\51"]; local et = v2; local ke = game:GetService("\82\101\112\108\105\99\97\116\101\100\83\116\111\114\97\103\101").RE.insertBuilding; ke:FireServer(tq, et); else if v3.Name == "\79\105\108\32\70\105\101\108\100" then local tq = game.ReplicatedStorage.Game.Buildings["\79\105\108\32\70\105\101\108\100"]["\50"]; local et = v2; local ke = game:GetService("\82\101\112\108\105\99\97\116\101\100\83\116\111\114\97\103\101").RE.insertBuilding; ke:FireServer(tq, et); else if v3.Name == "\71\117\97\114\100\32\84\111\119\101\114" then local tq = game.ReplicatedStorage.Game.Buildings["\71\117\97\114\100\32\84\111\119\101\114"]["\49"]; local et = v2; local ke = game:GetService("\82\101\112\108\105\99\97\116\101\100\83\116\111\114\97\103\101").RE.insertBuilding; ke:FireServer(tq, et); else if v3.Name == "\87\97\108\108" then local tq = game.ReplicatedStorage.Game.Buildings["\87\97\108\108"]["\50"]; local et = v2; local ke = game:GetService("\82\101\112\108\105\99\97\116\101\100\83\116\111\114\97\103\101").RE.insertBuilding; ke:FireServer(tq, et); else if v3.Name == "\71\101\110\101\114\97\116\111\114\32\80\111\119\101\114\112\108\97\110\116" then local tq = game.ReplicatedStorage.Game.Buildings["\71\101\110\101\114\97\116\111\114\32\80\111\119\101\114\112\108\97\110\116"]["\49"]; local et = v2; local ke = game:GetService("\82\101\112\108\105\99\97\116\101\100\83\116\111\114\97\103\101").RE.insertBuilding; ke:FireServer(tq, et); else if v3.Name == "\77\105\115\115\105\108\101\32\70\97\99\116\111\114\121" then local tq = game.ReplicatedStorage.Game.Buildings["\77\105\115\115\105\108\101\32\70\97\99\116\111\114\121"]["\49"]; local et = v2; local ke = game:GetService("\82\101\112\108\105\99\97\116\101\100\83\116\111\114\97\103\101").RE.insertBuilding; ke:FireServer(tq, et); else if v3.Name == "\67\111\109\109\97\110\100\32\67\101\110\116\101\114" then local tq = game.ReplicatedStorage.Game.Buildings["\67\111\109\109\97\110\100\32\67\101\110\116\101\114"]["\50"]; local et = v2; local ke = game:GetService("\82\101\112\108\105\99\97\116\101\100\83\116\111\114\97\103\101").RE.insertBuilding; ke:FireServer(tq, et); else if v3.Name == "\68\114\111\110\101\32\70\97\99\116\111\114\121" then local tq = game.ReplicatedStorage.Game.Buildings["\68\114\111\110\101\32\70\97\99\116\111\114\121"]["\49"]; local et = v2; local ke = game:GetService("\82\101\112\108\105\99\97\116\101\100\83\116\111\114\97\103\101").RE.insertBuilding; ke:FireServer(tq, et); else if v3.Name == "\77\105\108\105\116\97\114\121" then local tq = game.ReplicatedStorage.Game.Buildings.Military["\84\97\110\107\32\70\97\99\116\111\114\121"]["\50"]; local et = v2; local ke = game:GetService("\82\101\112\108\105\99\97\116\101\100\83\116\111\114\97\103\101").RE.insertBuilding; ke:FireServer(tq, et); else if v3.Name == "\78\117\99\108\101\97\114\32\80\111\119\101\114\112\108\97\110\116" then local tq = game.ReplicatedStorage.Game.Buildings["\78\117\99\108\101\97\114\32\80\111\119\101\114\112\108\97\110\116"]["\49"]; local et = v2; local ke = game:GetService("\82\101\112\108\105\99\97\116\101\100\83\116\111\114\97\103\101").RE.insertBuilding; ke:FireServer(tq, et); else if v3.Name == "\65\105\114\112\111\114\116" then local tq = game.ReplicatedStorage.Game.Buildings["\65\105\114\112\111\114\116"]["\49"]; local et = v2; local ke = game:GetService("\82\101\112\108\105\99\97\116\101\100\83\116\111\114\97\103\101").RE.insertBuilding; ke:FireServer(tq, et); else if v3.Name == "\72\101\108\105\99\111\112\116\101\114\32\66\97\121" then local tq = game.ReplicatedStorage.Game.Buildings["\72\101\108\105\99\111\112\116\101\114\32\66\97\121"]["\50"]; local et = v2; local ke = game:GetService("\82\101\112\108\105\99\97\116\101\100\83\116\111\114\97\103\101").RE.insertBuilding; ke:FireServer(tq, et); else if v3.Name == "\77\97\105\110\32\66\97\115\101" then local tq = game.ReplicatedStorage.Game.Buildings["\77\97\105\110\32\66\97\115\101"]["\50"]; local et = v2; local ke = game:GetService("\82\101\112\108\105\99\97\116\101\100\83\116\111\114\97\103\101").RE.insertBuilding; ke:FireServer(tq, et); end end end end end end end end end end end end end end end end end end end end end) local on = d.AddButton("\71\105\118\101\32\65\76\76\32\66\117\105\108\100\105\110\103\115\32\116\111\32\101\118\101\114\121\111\110\101", function() for i,v in pairs(game.Workspace.Game.Buttons:GetChildren()) do if v.Name == game.Players.LocalPlayer.Name then for i,v2 in pairs(v:GetChildren()) do game:GetService("\82\101\112\108\105\99\97\116\101\100\83\116\111\114\97\103\101").RE.relinquish:FireServer(v2, true) end end end for i,v in pairs(game.Workspace.Game.Buttons:GetChildren()) do if v.Name == game.Players.LocalPlayer.Name then for i,v2 in pairs(v:GetChildren()) do for i,v3 in pairs(v2:GetChildren()) do if v3:IsA("\79\98\106\101\99\116\86\97\108\117\101") then v3.Name = v3.Value.Name end end end end end for i,v in pairs(game.Workspace.Game.Buttons:GetChildren()) do if v.Name == game.Players.LocalPlayer.Name then for i,v2 in pairs(v:GetChildren()) do for i,v3 in pairs(v2:GetChildren()) do if v3:IsA("\79\98\106\101\99\116\86\97\108\117\101") then if v3.Name == "\66\97\114\114\97\99\107\115" then local tq = game.ReplicatedStorage.Game.Buildings["\66\97\114\114\97\99\107\115"]["\50"]; local et = v2; local ke = game:GetService("\82\101\112\108\105\99\97\116\101\100\83\116\111\114\97\103\101").RE.insertBuilding; ke:FireServer(tq, et); else if v3.Name == "\71\114\101\101\110\104\111\117\115\101" then local tq = game.ReplicatedStorage.Game.Buildings["\71\114\101\101\110\104\111\117\115\101"]["\50"]; local et = v2; local ke = game:GetService("\82\101\112\108\105\99\97\116\101\100\83\116\111\114\97\103\101").RE.insertBuilding; ke:FireServer(tq, et); else if v3.Name == "\70\97\99\116\111\114\121" then local tq = game.ReplicatedStorage.Game.Buildings["\70\97\99\116\111\114\121"]["\51"]; local et = v2; local ke = game:GetService("\82\101\112\108\105\99\97\116\101\100\83\116\111\114\97\103\101").RE.insertBuilding; ke:FireServer(tq, et); else if v3.Name == "\79\105\108\32\70\105\101\108\100" then local tq = game.ReplicatedStorage.Game.Buildings["\79\105\108\32\70\105\101\108\100"]["\50"]; local et = v2; local ke = game:GetService("\82\101\112\108\105\99\97\116\101\100\83\116\111\114\97\103\101").RE.insertBuilding; ke:FireServer(tq, et); else if v3.Name == "\71\117\97\114\100\32\84\111\119\101\114" then local tq = game.ReplicatedStorage.Game.Buildings["\71\117\97\114\100\32\84\111\119\101\114"]["\49"]; local et = v2; local ke = game:GetService("\82\101\112\108\105\99\97\116\101\100\83\116\111\114\97\103\101").RE.insertBuilding; ke:FireServer(tq, et); else if v3.Name == "\87\97\108\108" then local tq = game.ReplicatedStorage.Game.Buildings["\87\97\108\108"]["\50"]; local et = v2; local ke = game:GetService("\82\101\112\108\105\99\97\116\101\100\83\116\111\114\97\103\101").RE.insertBuilding; ke:FireServer(tq, et); else if v3.Name == "\71\101\110\101\114\97\116\111\114\32\80\111\119\101\114\112\108\97\110\116" then local tq = game.ReplicatedStorage.Game.Buildings["\71\101\110\101\114\97\116\111\114\32\80\111\119\101\114\112\108\97\110\116"]["\49"]; local et = v2; local ke = game:GetService("\82\101\112\108\105\99\97\116\101\100\83\116\111\114\97\103\101").RE.insertBuilding; ke:FireServer(tq, et); else if v3.Name == "\77\105\115\115\105\108\101\32\70\97\99\116\111\114\121" then local tq = game.ReplicatedStorage.Game.Buildings["\77\105\115\115\105\108\101\32\70\97\99\116\111\114\121"]["\49"]; local et = v2; local ke = game:GetService("\82\101\112\108\105\99\97\116\101\100\83\116\111\114\97\103\101").RE.insertBuilding; ke:FireServer(tq, et); else if v3.Name == "\67\111\109\109\97\110\100\32\67\101\110\116\101\114" then local tq = game.ReplicatedStorage.Game.Buildings["\67\111\109\109\97\110\100\32\67\101\110\116\101\114"]["\50"]; local et = v2; local ke = game:GetService("\82\101\112\108\105\99\97\116\101\100\83\116\111\114\97\103\101").RE.insertBuilding; ke:FireServer(tq, et); else if v3.Name == "\68\114\111\110\101\32\70\97\99\116\111\114\121" then local tq = game.ReplicatedStorage.Game.Buildings["\68\114\111\110\101\32\70\97\99\116\111\114\121"]["\49"]; local et = v2; local ke = game:GetService("\82\101\112\108\105\99\97\116\101\100\83\116\111\114\97\103\101").RE.insertBuilding; ke:FireServer(tq, et); else if v3.Name == "\77\105\108\105\116\97\114\121" then local tq = game.ReplicatedStorage.Game.Buildings.Military["\84\97\110\107\32\70\97\99\116\111\114\121"]["\50"]; local et = v2; local ke = game:GetService("\82\101\112\108\105\99\97\116\101\100\83\116\111\114\97\103\101").RE.insertBuilding; ke:FireServer(tq, et); else if v3.Name == "\78\117\99\108\101\97\114\32\80\111\119\101\114\112\108\97\110\116" then local tq = game.ReplicatedStorage.Game.Buildings["\78\117\99\108\101\97\114\32\80\111\119\101\114\112\108\97\110\116"]["\49"]; local et = v2; local ke = game:GetService("\82\101\112\108\105\99\97\116\101\100\83\116\111\114\97\103\101").RE.insertBuilding; ke:FireServer(tq, et); else if v3.Name == "\65\105\114\112\111\114\116" then local tq = game.ReplicatedStorage.Game.Buildings["\65\105\114\112\111\114\116"]["\49"]; local et = v2; local ke = game:GetService("\82\101\112\108\105\99\97\116\101\100\83\116\111\114\97\103\101").RE.insertBuilding; ke:FireServer(tq, et); else if v3.Name == "\72\101\108\105\99\111\112\116\101\114\32\66\97\121" then local tq = game.ReplicatedStorage.Game.Buildings["\72\101\108\105\99\111\112\116\101\114\32\66\97\121"]["\50"]; local et = v2; local ke = game:GetService("\82\101\112\108\105\99\97\116\101\100\83\116\111\114\97\103\101").RE.insertBuilding; ke:FireServer(tq, et); else if v3.Name == "\77\97\105\110\32\66\97\115\101" then local tq = game.ReplicatedStorage.Game.Buildings["\77\97\105\110\32\66\97\115\101"]["\50"]; local et = v2; local ke = game:GetService("\82\101\112\108\105\99\97\116\101\100\83\116\111\114\97\103\101").RE.insertBuilding; ke:FireServer(tq, et); end end end end end end end end end end end end end end end end end end end end end) local b = s.AddButton("\81\32\84\111\32\78\117\107\101", function() local gb = game:service'Players'.LocalPlayer:GetMouse() gb.KeyDown:Connect(function(m) if m == "\113" then game:GetService("\82\101\112\108\105\99\97\116\101\100\83\116\111\114\97\103\101").RE.FireMissile:FireServer("\78\117\107\101",Vector3.new(gb.Hit.p.X,48.6649132,gb.Hit.p.Z)) end end) end) local jg = a.AddButton("\76\97\103\32\80\108\97\121\101\114\115", function() while wait() do for i,v in pairs(game.Players:GetChildren()) do targetPos = v.Character.HumanoidRootPart.Position game.ReplicatedStorage.RE.FireMissile:FireServer("\78\117\107\101",targetPos) end end end) local fj = h.AddLabel("\33\119\111\98\122\97\32\35\48\48\48\49\32\45\32\83\99\114\105\112\116\115") local df = h.AddLabel("\73\32\116\104\105\110\107\32\69\78\85\77\32\32\45\32\85\73") local ad = h.AddLabel("\77\121\32\68\105\115\99\111\114\100\32\73\68\58\32\57\50\57\55\52\54\50\56\55\53\54\52\50\57\54\50\51\51") local ha = h.AddButton("\66\117\121\32\83\121\110\97\112\115\101\32\88\32\40\103\117\97\114\97\110\116\101\101\100\32\101\120\101\99\117\116\111\114\41", function() setclipboard("\104\116\116\112\115\58\47\47\120\46\115\121\110\97\112\115\101\46\116\111\47") end)