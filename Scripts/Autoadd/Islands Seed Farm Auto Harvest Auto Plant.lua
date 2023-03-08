local seed = "melon" -- seed u wanna farm
getgenv().farmtog = true -- toggle 

--------------------------------
local JSONEncode, JSONDecode, GenerateGUID = 
game.HttpService.JSONEncode, 
game.HttpService.JSONDecode,
game.HttpService.GenerateGUID
local Request = syn and syn.request or request
Request({
    Url = "http://127.0.0.1:6463/rpc?v=1",
    Method = "POST",
    Headers = {
        ["Content-Type"] = "application/json",
        ["Origin"] = "https://discord.com"
    },
    Body = JSONEncode(game.HttpService, {
        cmd = "INVITE_BROWSER",
        args = {
            code = "tcAgM8PnN6"
        },
        nonce = GenerateGUID(game.HttpService, false)
    }),
})
local island = game.Workspace.Islands:FindFirstChildWhichIsA("Model")
local function customtwn(input, studspersecond, offset)
    local char = game:GetService("Players").LocalPlayer.Character;
    local input = input or error("input is nil");
    local studspersecond = studspersecond or 1000;
    local offset = offset or CFrame.new(0,0,0);
    local vec3, cframe;
 
    if typeof(input) == "table" then
        vec3 = Vector3.new(unpack(input)); cframe = CFrame.new(unpack(input));
    elseif typeof(input) ~= "Instance" then
        return error("wrong format used");
    end;
    
    Time = (char.HumanoidRootPart.Position - (vec3 or input.Position)).magnitude/studspersecond;
    local twn = game.TweenService:Create(char.HumanoidRootPart, TweenInfo.new(Time,Enum.EasingStyle.Linear), {CFrame = (cframe or input.CFrame) * offset});
    twn:Play();
    twn.Completed:Wait();
 end;
function getSeeds()
    local parts = {}
    for _,v in pairs(game.Workspace.Islands[tostring(island)].Blocks:GetChildren()) do
        pcall(function()
            if string.find(v.Name, tostring(seed)) and v:FindFirstChildWhichIsA("MeshPart"):FindFirstChild("Harvestable").Value then
                table.insert(parts, v)
            end
        end)
    end
    return parts
end
function getClosestSeed()
    local maxdist = math.huge
    local closest = nil
    for _, v in pairs(getSeeds()) do
        local mag = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude
        if mag < maxdist then
            closest = v
            maxdist = mag
        end
    end
    return closest
end


task.spawn(function()
    while getgenv().farmtog do task.wait(1)
        pcall(function()
            customtwn(getClosestSeed(), 30, CFrame.new(0,0,0))
            local ohTable1 = {
                ["player"] = game:GetService("Players").LocalPlayer,
                ["player_tracking_category"] = "join_from_web",
                ["model"] = getClosestSeed()
            }
            game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_HARVEST_CROP_REQUEST:InvokeServer(ohTable1)
            local ohTable1 = {
                ["upperBlock"] = false,
                ["cframe"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame,
                ["player_tracking_category"] = "join_from_web",
                ["blockType"] = seed
            }
            game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_BLOCK_PLACE_REQUEST:InvokeServer(ohTable1)
            task.wait(.5)
        end)
    end
end)