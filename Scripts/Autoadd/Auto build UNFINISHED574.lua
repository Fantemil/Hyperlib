getgenv().deletewhendupefound = true
local localplr = game.Players.LocalPlayer
local lib = loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Lib-18698"))()
lib.makelib("Minecraft Hacks")
local main = lib.maketab("Main")

function snapint(int,addnum)
    int = math.round(int/4)*4
    local intval = 2
    if math.abs(int) > int then
        intval = -2
    end
    int = int + (addnum or intval)
    return int
end
function snap(pos)
    return Vector3.new(snapint(pos.X),snapint(pos.Y,-1),snapint(pos.Z))
end
              
local blockrem = game:GetService("ReplicatedStorage").PlaceBlock
local deleterem = game:GetService("ReplicatedStorage").BreakBlock

lib.makelabel("If you dont snap blocks then only roblox players can see it",main)
local snapbool = false
lib.maketoggle("Snap Blocks",main,function(bool)
    snapbool = bool
end)
local pb = false
lib.maketoggle("Place blocks at location",main,function(bool)
    pb = bool
    while pb do
        task.wait()
        if localplr.Character then
            local pos = localplr.Character:GetPivot().Position
            blockrem:InvokeServer((snapbool and snap(pos)) or pos)
        end
    end
end)
local pbu = false
lib.maketoggle("Place blocks under location",main,function(bool)
    pbu = bool
    while pbu do
        task.wait()
        if localplr.Character then
            local pos = localplr.Character:GetPivot().Position - Vector3.new(0,4,0)
            blockrem:InvokeServer((snapbool and snap(pos)) or pos)
        end
    end
end)
local offset = Vector3.new(0,0,0)
lib.maketextbox("Set Offset",main,function(txt)
    local sp1 = string.split(txt,",")
    local sp2 = string.split(txt," ")
    local sp
    if #sp1 > 0 then
        sp = sp1
    elseif #sp2 > 0 then
        sp = sp2
    end
    local offsetv3 = {}
    local num = 0
    for i,v in pairs(sp) do
        local success,err = pcall(function()
            local s = tonumber(v)
        end)
        if success and num <= 3 then
            num = num + 1
            offsetv3[num] = tonumber(v)
        end
    end
    if num >= 3 then
        offset = Vector3.new(offsetv3[1],offsetv3[2],offsetv3[3])
        offset = offset * 4
    end
end)
local pbo = false
lib.maketoggle("Place blocks offsetted from location",main,function(bool)
    pbo = bool
    while pbo do
        task.wait()
        if localplr.Character then
            local pos = localplr.Character:GetPivot().Position + offset
            blockrem:InvokeServer((snapbool and snap(pos)) or pos)
        end
    end
end)
local pbm = false
lib.maketoggle("Place blocks multiplied from location",main,function(bool)
    pbm = bool
    while pbm do   
        task.wait()
        if localplr.Character then
            local pos = (localplr.Character:GetPivot() * CFrame.new(offset)).Position
            blockrem:InvokeServer((snapbool and snap(pos)) or pos)
        end
    end
end)
lib.ondestroyedfunc = function()
    pb = false
    pbu = false
    pbo = false
    pbm = false
end