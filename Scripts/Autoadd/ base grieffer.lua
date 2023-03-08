if not funcs then
loadstring(game:HttpGet("https://raw.githubusercontent.com/6yNuiC9/scr/main/funcs.lua"))()
end
local lastset={}
getgenv().stupidgrief=not getgenv().stupidgrief
while getgenv().stupidgrief and getchar():FindFirstChild('System') and getchar().System:FindFirstChild('Action') do
local chc,chz=getchar():GetBoundingBox()
local rem=getchar().System.Action
chz*=6
local around=workspace:GetPartBoundsInBox(chc,chz)
for i,v in pairs(around) do
local md=v:FindFirstAncestorOfClass('Model')
if md and md.Parent and md.Parent.Name=='Items' and rem and not table.find(lastset,v) then
task.spawn(rem.InvokeServer,rem,"Pickup",{["Model"] = md})
task.wait()
task.spawn(rem.InvokeServer,rem,"Drop",{["EndCFrame"] = getchar():GetPivot()*CFrame.new(-6,-5,0),["CameraCFrame"] = getchar():GetPivot(),["ThrowPower"] = 10})
end
end
lastset=around
around=nil
chc,chz=nil,nil
task.wait()
end
lastset=nil