local run
 run = game:GetService("RunService").RenderStepped:connect(function()
    for i=1,5 do
function getNil(name,class) for _,v in pairs(getnilinstances())do if v.ClassName==class and v.Name==name then return v;end end end

local args = {
   [1] = "collected",
   [2] = getNil("c14", "Part")
}

game:GetService("ReplicatedStorage").collectedCustardEvent:FireServer(unpack(args))
end
end)