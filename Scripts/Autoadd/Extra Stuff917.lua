-- more features will be added soon
local success,err = pcall(function()
getgenv().deletewhendupefound = true
local localplr = game.Players.LocalPlayer
local mult = 3
local built = false
local colorbool = true
local stopped = false
local on = true
local highlight = Instance.new("Highlight")
highlight.Parent = game.CoreGui
local lib = loadstring(game:HttpGet("https://pastebin.com/raw/A2Wf3WVh"))()
lib.makelib("The Chosen One EXTRAS (BY 2AREYOUMENTAL110)")
local buildtab = lib.maketab("build")
local tooltab = lib.maketab("tools")
local scripttab = lib.maketab("more scripts")
function snap(pos)
    print(pos)
    --pos = Vector3.new(math.round(pos.X/mult)*mult,math.round(pos.Y/mult)*mult,math.round(pos.Z/mult)*mult)
    print("newpos",pos)
    return pos
end
local childcube = nil -- yeah its reversed
local blocks = {}
local cubechild = workspace.Cubes[localplr.Name].ChildAdded:Connect(function(child)
    childcube = child
    blocks[child.Position] = child
    built = true
end)
for i,child in pairs(workspace.Cubes[localplr.Name]:GetChildren()) do
    blocks[child.Position] = child
end
function getclosesttopos(pos)
	local closest = nil
	for i,v in pairs(blocks) do
  		if v and v.Parent then
    		if closest == nil then
      			closest = {(i - pos).Magnitude,v,i}
      		elseif closest and (i - pos).Magnitude < closest[1] then
      			closest = {(i - pos).Magnitude,v,i}
      		end
    	else
    		blocks[i] = nil
    	end
  	end
	return closest[2],closest[3]
end
local colors = {}
colors["tan"] = Color3.fromRGB(188,155,93)
colors["pink"] = Color3.fromRGB(255,0,255)
colors["dark pink"] = Color3.fromRGB(160,0,160)
local buildingexec = nil
function buildblock(pos,texture,color)
    task.wait(0.001)
    local success,err = pcall(function()
        localplr.Character:FindFirstChildWhichIsA("Tool").Parent = localplr.Backpack
    end)
    pcall(function()
        localplr.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
        localplr.Character.HumanoidRootPart.CFrame = CFrame.new(pos + Vector3.new(0,6,0))
        localplr.Backpack.Build.Parent = localplr.Character
    end)
    local oldpos = pos
    pos = snap(pos)
    local args = {
        [1] = pos,
        [2] = Enum.NormalId.Top,
        [3] = workspace.Trrain.Chunk.Mesh,
        [4] = color or nil,
        [5] = texture or "Smooth"
    }
    built = false
    localplr.Backpack.Events:FireServer(unpack(args))
    childcube = nil
    repeat task.wait() localplr.Backpack.Events:FireServer(unpack(args)) pcall(function() localplr.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0) localplr.Character.HumanoidRootPart.CFrame = CFrame.new(pos + Vector3.new(0,6,0)) end) until (built == true and childcube) or stopped == true built = false
    if color ~= nil and (localplr.Backpack:FindFirstChild("Paint") or localplr.Character:FindFirstChild("Paint")) and colorbool then
        print("yay color")
        local success,err = pcall(function()
            localplr.Character:FindFirstChildWhichIsA("Tool").Parent = localplr.Backpack
        end)
        task.wait()
        local success,err = pcall(function()
            localplr.Backpack.Paint.Parent = localplr.Character
        end)
        local success,err = pcall(function()
            localplr.PlayerGui.PaintGUI.Color.Value = color
        end)
        pcall(function()
            localplr.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
            localplr.Character.HumanoidRootPart.CFrame = CFrame.new(pos + Vector3.new(0,6,0))
        end)
        local args = {
            [1] = childcube.Position+Vector3.new(1,0,0),
            [2] = Enum.NormalId.Top,
            [3] = childcube,
            [4] = color,
            [5] = "Smooth"
        }
        local oldcolor = childcube.Color
        highlight.Adornee = childcube
        repeat task.wait() localplr.Backpack.Events:FireServer(unpack(args)) pcall(function() localplr.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0) localplr.Character.HumanoidRootPart.CFrame = CFrame.new(pos + Vector3.new(0,6,0)) end) until childcube.Color ~= oldcolor or stopped == true
    end
end
lib.makebutton("Stop Building",buildtab,function()
    stopped = true
end)
lib.maketoggle("Add Color",buildtab,function(bool)
    colorbool = bool
end)
lib.makebutton("Build D***",buildtab,function()
    built = true
    stopped = false
    local stopbuild = false
    if buildingexec then
        buildingexec()
    end
    buildingexec = function()
    	stopbuild = true
        buildingexec = nil
    end
    local cfr = localplr.Character.HumanoidRootPart.CFrame
    local pos = cfr.Position
    local blocks = { -- yes, this is the whole thing, go ahead, skid it.
      {0,0,0,0,2,2,3,2,2,0,0,0,0},
      {0,0,0,2,2,2,3,2,2,2,0,0,0},
      {0,0,2,2,2,2,2,2,2,2,2,0,0},
      {0,0,1,1,1,1,1,1,1,1,1,0,0},
      {0,0,1,1,1,1,1,1,1,1,1,0,0},
      {0,0,1,1,1,1,1,1,1,1,1,0,0},
      {0,0,1,1,1,1,1,1,1,1,1,0,0},
      {0,0,1,1,1,1,1,1,1,1,1,0,0},
      {0,0,0,1,1,1,1,1,1,1,0,0,0},
      {0,0,0,0,1,1,1,1,1,0,0,0,0},
      {0,0,1,1,1,1,1,1,1,1,1,0,0},
      {0,1,1,1,1,1,1,1,1,1,1,1,0},
      {1,1,1,1,1,1,1,1,1,1,1,1,1},
      {1,1,1,1,1,1,1,1,1,1,1,1,1},
      {1,1,1,1,1,1,1,1,1,1,1,1,1},
      {0,1,1,1,1,1,0,1,1,1,1,1,0},
      {0,0,1,1,1,0,0,0,1,1,1,0,0}
    }
    local blockamt = #blocks
    for i,v in pairs(blocks) do
        for i2,v2 in pairs(v) do
            if stopped or stopbuild then
                return
            end
        	local colornum = nil
        	if v2 == 1 then
          		colornum = colors["tan"]
          	elseif v2 == 2 then
          		colornum = colors["pink"]
          	elseif v2 == 3 then
          		colornum = colors["dark pink"]
          	end
        	if v2 ~= 0 then
        		buildblock(Vector3.new(i2*mult-21,(blockamt-i)*mult,0)+pos,nil,colornum)
          	end
        end
    end
    stopped = false
end)
lib.maketextbox("Build Cube (enter size)",buildtab,function(txt)
    built = true
    stopped = false
    local stopbuild = false
    if buildingexec then
        buildingexec()
    end
    buildingexec = function()
    	stopbuild = true
        buildingexec = nil
    end
    local num = tonumber(txt)
    local cfr = localplr.Character.HumanoidRootPart.CFrame
    local pos = cfr.Position
    local blocks = {}
    for i=1, num do
        for i2=1, num do
            for i3=1, num do
                if not stopped then
                    table.insert(blocks,pos+Vector3.new(i*mult,i2*mult,i3*mult))
                end
            end
        end
    end
    for i,v in pairs(blocks) do
        if stopped or stopbuild then
            return
        end
        buildblock(v,Color3.fromRGB(255,0,0))
    end
    stopped = false
end)
local spamming = nil
lib.maketoggle("Spam Equipped Tool",tooltab,function(bool)
    if bool then
        spamming = true
        print(spamming)
    else
        spamming = nil
    end
end)
local onrender = game:GetService("RunService").RenderStepped:Connect(function()
    if spamming and on then
        localplr.Character:FindFirstChildWhichIsA("Tool"):Activate()
    end
end)
local nologbtn = nil
nologbtn = lib.makebutton("Execute No Chat Logger Script",scripttab,function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AnthonyIsntHere/anthonysrepository/main/scripts/AntiChatLogger.lua"))()
    nologbtn:Destroy() -- SELF DESTRUCT!!!
end)
lib.makebutton("Execute Fling All Script",scripttab,function()
    if loadfile ~= nil and writefile ~= nil and readfile ~= nil then
        local cache = nil
        local success,err = pcall(function()
            cache = readfile("CachedFlingAll.txt")
        end)
        if not cache then
            cache = game:HttpGet("https://rawscripts.net/raw/Universal-Script-FLING-ALL-SCRIPT-17590")
            writefile("CachedFlingAll.txt",cache)
        end
        loadstring(cache)()
    else
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-FLING-ALL-SCRIPT-17590"))()
    end
end)
lib.ondestroyedfunc = function()
    on = false
    stopped = true
    built = true
	cubechild:Disconnect()
	onrender:Disconnect()
    highlight:Destroy()
end
end)
print(success,err)