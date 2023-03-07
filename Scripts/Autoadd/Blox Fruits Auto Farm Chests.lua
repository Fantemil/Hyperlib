_G.Type ="all" -- 1, 2, 3, or all
_G.Maxtime = 60 --max amount of time collecting a single chest
_G.DivisonAmount = 150 -- i would keep it at this as its not detected, lower = slower, higher = faster 
local ts = game:GetService("TweenService")
local plr = game.Players.LocalPlayer
local function char()
    return plr.Character
end
local amounts = {
    ["Attempted"] = 0,
    ["Completed"] = 0,
    ["Failed"] = 0,
    ["ToFar"] = 0
}

for i,v in pairs(game.Workspace:GetChildren()) do
    local plrmoney = plr.Data.Beli.Value
    if (_G.Type == "all" and string.find(v.Name,"Chest")) or (_G.Type == 1 and string.find(v.Name,"Chest1")) or (_G.Type == 2 and string.find(v.Name,"Chest2")) or (_G.Type == 3 and string.find(v.Name,"Chest3")) then
        local dist = (char().HumanoidRootPart.Position - v.Position).Magnitude/_G.DivisonAmount
        amounts["Attempted"] = amounts["Attempted"]+1
        if dist < _G.Maxtime then
        local twe = ts:Create(char().HumanoidRootPart,TweenInfo.new(dist,Enum.EasingStyle.Linear),{CFrame = v.CFrame}):Play()
        print("attempting",v:GetFullName(),"distance is",dist)
        wait(dist)
        firetouchinterest(char().Head,v,0)
        if plr.Data.Beli.Value == plrmoney then
            amounts["Failed"] = amounts["Failed"]+1
        else
            amounts["Completed"] = amounts["Completed"]+1
        end
        else
            print("ignoring",v:GetFullName(),"distance to far("..dist..")")
            amounts["ToFar"] = amounts["ToFar"]+1
        end
    end
end

for i,v in pairs(amounts) do
    print(i,v)
end
print('failed could be inaccurate!!')