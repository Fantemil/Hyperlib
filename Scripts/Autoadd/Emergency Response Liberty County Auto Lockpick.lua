-- auto lockpick

local a,b,c,d=game.Players.LocalPlayer.PlayerGui.GameMenus.Lockpick,{}for e,f in next,getgc(true)do if type(f)=="table"and rawget(f,getrenv()._G.InteractionObjects[1].Purpose.Value)then f.HouseRobbery_Steal.Distance=100 elseif type(f)=="function"and getinfo(f).source:find("Handler")and getinfo(f).nups==5 then c=f end end;while task.wait()do if getupvalue(c,1)and getupvalue(c,1)[2].parent.name=="DoorHandle"then d=nil end;a=game.Players.LocalPlayer.PlayerGui:FindFirstChild("GameMenus"):FindFirstChild("Lockpick")if a and a.Visible then for e,f in next,a.Pick:GetChildren()do if f.name~="RedLine"then if not b[f.name]then b[f.name]={t=time(),p=f.AbsolutePosition}continue end;if time()~=b[f.name].t and((f.AbsolutePosition-b[f.name].p)/(time()-b[f.name].t)).magnitude~=0 then if not d then d=true;task.wait(game.Players.LocalPlayer:GetNetworkPing()+.5)end;if math.abs(f.Center.AbsolutePosition.y-a.Pick.RedLine.Center.AbsolutePosition.y)<5 then mouse1click()end end;b[f.name].t=time()b[f.name].p=f.AbsolutePosition end end end;if#workspace.HouseRobbery:GetChildren()>0 and getupvalue(c,1)and getupvalue(c,1)[2].parent and getupvalue(c,1)[2].parent.name=="Bill"then getupvalue(c,1)[1].Execute(getupvalue(c,1)[2],game.Players.LocalPlayer)end end