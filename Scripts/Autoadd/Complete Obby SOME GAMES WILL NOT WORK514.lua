local success,err = pcall(function()
getgenv().deletewhendupefound = true
local lib = loadstring(game:HttpGet("https://pastebin.com/raw/A2Wf3WVh"))()
lib.makelib("Universal Complete Obby (By 2AreYouMental110)")
local maintab = lib.maketab("Main")
local checkpointparent = nil
local tpto = false
local tpwait = 0
local stopplz = false
lib.makebutton("STOP!!",maintab,function()
    stopplz = true
end)
lib.maketoggle("Teleport To Checkpoint",maintab,function(bool)
    tpto = bool
end)
lib.maketextbox("Wait TP",maintab,function(amt)
    tpwait = tonumber(amt)
end)
lib.maketextbox("Enter Amount of Checkpoints",maintab,function(amt)
	local amt = tonumber(amt)
    local amtcheckpoints = 0
    local definetlycheckpoints = nil
    local likelyastage = nil
    for i,v in pairs(workspace:GetDescendants()) do
        if checkpointparent ~= nil then continue end
    	if typeof(tonumber(v.Name)) == "number" then
            amtcheckpoints = 1
            for i2,v2 in pairs(v.Parent:GetChildren()) do
              	if typeof(tonumber(v2.Name)) == "number" then
                	amtcheckpoints += 1
                end
            end
            if amtcheckpoints >= amt then
                print("yayyyy")
              	if v.Parent.Name:lower() == "stage" or v.Parent.Name:lower() == "stages" or v.Parent.Name:lower() == "level" or v.Parent.Name:lower() == "levels" or v.Parent.Name:lower() == "obby" or v.Parent.Name:lower() == "obbies" or v.Parent.Name:lower() == "obbys" then
                	likelyastage = v.Parent
                else
                	checkpointparent = v.Parent
                end
                if v.Parent.Name:lower() == "checkpoint" or v.Parent.Name:lower() == "checkpoints" then
                    definetlycheckpoints = v.Parent
                end
            end
        end
    end
    if checkpointparent ~= nil or likelyastage ~= nil then
        if checkpointparent == nil and likelyastage ~= nil then
            checkpointparent = likelyastage
        end
        if definetlycheckpoints ~= nil then
            checkpointparent = definetlycheckpoints
        end
        lib.makebutton("Complete Obby",maintab,function()
            stopplz = false
			for i=1,amtcheckpoints do
                if stopplz then continue end
                if tpwait > 0 then
                	task.wait(tpwait)
                end
                local checkpoint = checkpointparent:FindFirstChild(tostring(i))
                local hrp = game.Players.LocalPlayer.Character.HumanoidRootPart
                if tpto and checkpoint then
                  	if checkpoint:IsA("Model") then
                    	hrp.CFrame = checkpoint:GetPivot()
                    elseif checkpoint:IsA("BasePart") then
                    	hrp.CFrame = checkpoint.CFrame
                    end
                end
                if checkpoint and checkpoint:FindFirstChild("TouchInterest",true) then
                  	firetouchinterest(hrp,checkpoint:FindFirstChild("TouchInterest",true).Parent,0)
                end
            end
            stopplz = false
        end)
    else
        lib.makelabel("Failed!",maintab)
    end
end)
lib.ondestroyedfunc = function()
    stopplz = true
end
end)
print(success,err)