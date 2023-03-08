if not funcs then
loadstring(game:HttpGet("https://raw.githubusercontent.com/exceptional0/scr/main/funcs.lua"))()
end

do
funcs.runs:Set3dRenderingEnabled(false)
local oldpiv=getchar():GetPivot()
local rm=game:GetService("Workspace").Rooms
local wanted={"wires","metal","gunpowder"}
for n,x in pairs(rm:GetChildren()) do
getchar():PivotTo(x:GetPivot())
task.wait(.25)
local tb=x:GetDescendants()
if #tb > 0 then
for i,v in pairs(tb) do
local rem=v:IsA("Model") and v.Parent and v.Parent.Parent and v.Parent.Parent.Name:lower():match("scrap") and v:FindFirstChild("Remote",true)
if rem and table.find(wanted,v.Name:lower()) then
getchar():PivotTo(v:GetPivot())
task.wait(.1)

for i =1, 3 do
if rem then
rem:FireServer()
task.wait()
end
end

end
end
--getchar():PivotTo(oldpiv)
task.wait(1)
else
--getchar():PivotTo(oldpiv)
task.wait(.2)
end
end
getchar():PivotTo(oldpiv)
funcs.runs:Set3dRenderingEnabled(true)
end