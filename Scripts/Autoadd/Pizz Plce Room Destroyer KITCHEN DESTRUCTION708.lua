_G.cookroomfucker = true -- change to false and re execute if you wanna turn it off 
local lp = game:GetService("Players").LocalPlayer
local remote
local ffc = game.FindFirstChild

do
    local reg = (getreg or debug.getregistry)()
	for i=1,#reg do
		local f = reg[i]
		if type(f)=="table" and rawget(f,"FireServer") and rawget(f,"BindEvents") then
			remote = f
		end
	end
end

function moveThing(bmd, location)
    remote:FireServer("UpdateProperty", bmd, "CFrame", location)
    wait()
    remote:FireServer("SquishDough", bmd)
end

-- cook room fucker main script

for i,v in pairs(workspace.AllSupplyBoxes:GetChildren()) do
    v.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
end
wait()


spawn(function()
    while _G.cookroomfucker and wait() do
        spawn(function()
            for i,v in pairs(workspace.AllDough:GetChildren()) do
                moveThing(v, CFrame.new(Random.new():NextNumber(22.6,51.6),Random.new():NextNumber(3.6,14.6),Random.new():NextNumber(55.5,70.5)))
            end
        end)
        spawn(function()
            for i,v in pairs(workspace.AllMountainDew:GetChildren()) do
                moveThing(v, CFrame.new(Random.new():NextNumber(22.6,51.6),Random.new():NextNumber(3.6,14.6),Random.new():NextNumber(55.5,70.5)))
            end
        end)
        spawn(function()
            for i,v in pairs(workspace.BoxingRoom:GetChildren()) do
                moveThing(v, CFrame.new(Random.new():NextNumber(22.6,51.6),Random.new():NextNumber(3.6,14.6),Random.new():NextNumber(55.5,70.5)))
            end
        end)
        spawn(function()
            for i,v in pairs(workspace.AllBox:GetChildren()) do
                moveThing(v, CFrame.new(Random.new():NextNumber(22.6,51.6),Random.new():NextNumber(3.6,14.6),Random.new():NextNumber(55.5,70.5)))
            end
        end)
        spawn(function()
            for i,v in pairs(workspace.AllSupplyBoxes:GetChildren()) do
                moveThing(v, CFrame.new(Random.new():NextNumber(22.6,51.6),Random.new():NextNumber(3.6,14.6),Random.new():NextNumber(55.5,70.5)))
            end
        end)
    end
end)

spawn(function()
    while _G.cookroomfucker and wait() do
        for i,v in pairs(game:GetService("Workspace").Ovens:GetChildren()) do
            v.Door.ClickDetector.Detector:FireServer()
            wait(.15)
        end
    end
end)