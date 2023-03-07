local doActionFuncs = {}
local player = game:GetService("Players").LocalPlayer

for _, v in next, getgc() do
   if getinfo(v).name == "doAction" and getfenv(v).script.Name == "StylezHairdresser" then
       doActionFuncs[#doActionFuncs + 1] = v
   end
end

local styles, colors = getupvalue(doActionFuncs[1], 6), getupvalue(doActionFuncs[1], 8)
function getStyle(styleName)
   for i, v in next, styles do
       if v.Name == styleName then
           return i
       end
   end
end

function getColor(colorName)
   for i, v in next, colors do
       if v.Name == colorName then
           return i
       end
   end
end

function doOrder()
   for _, v in next, doActionFuncs do
       local workstation = getupvalue(v, 2)
       local npc = workstation.Occupied.Value
       if workstation.InUse.Value == player and npc then
           local head = npc:WaitForChild("Head")
           head:WaitForChild("ChatBubble")
           task.wait(0.1)
           if npc and npc:FindFirstChild("Order") and npc.Order.Style.Value ~= nil then
               setupvalue(v, 7, { getStyle(npc.Order.Style.Value), getColor(npc.Order.Color.Value) })
               task.wait(0.1)
               v("Done")
           end
       end
   end
end

repeat
   doOrder()
   task.wait(0.1)
until nil