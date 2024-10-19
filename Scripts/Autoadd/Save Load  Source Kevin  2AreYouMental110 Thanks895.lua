-- please don't skid and credits if you're gonna use a code credit 2AreYouMental110 and me credit if gonna showcase.

getgenv().deletewhendupefound = false
local lib = loadstring(game:HttpGet("https://pastebin.com/raw/A2Wf3WVh"))()
lib.makelib("Build Save/Load -:- 2AreYouMental110")
local save = lib.maketab("Save Builds")
local localplr = game.Players.LocalPlayer

local http = game:GetService("HttpService")
local starterui = game:GetService("StarterGui")
local savebuildname = "Untitled"
local savebuildnames = {}
local textbox

textbox = lib.maketextbox("Build Name", save, function(txt)
    savebuildname = txt
    textbox.Text = ""
    textbox.PlaceholderText = "Successfully Named Build"
    wait(1)
    textbox.PlaceholderText = "Set Build Name"
end)

local selectedbuild = nil
local builds = {}
local builddropdown

function updatedropdown()
    local names = {}
    for i, v in pairs(builds) do
        table.insert(names, i)
    end
    lib.updatedropdown(builddropdown, names)
    writefile("buildandsurvivebuilds.txt", http:JSONEncode(builds))
    writefile("buildandsurvivebuildsnames.txt", http:JSONEncode(savebuildnames))
end

pcall(function()
    builds = http:JSONDecode(readfile("buildandsurvivebuilds.txt"))
end)

pcall(function()
    savebuildnames = http:JSONDecode(readfile("buildandsurvivebuildsnames.txt"))
end)

if builds == nil then
    builds = {}
end
if savebuildnames == nil then
    savebuildnames = {}
end

function getPlayerBuild()
    local builddata = {}
    for _, v in pairs(workspace.__THINGS.__BLOCKS:GetChildren()) do
        if v:FindFirstChild("BlockOwner") and v.BlockOwner.Value == localplr.Name then
            local pos = (v:FindFirstChild("Part") or v:FindFirstChild("Part2")).Position
            local blockType = v.Name
            table.insert(builddata, {pos.X, pos.Y, pos.Z, blockType})
        end
    end
    return builddata
end

function getServerBuild()
    local builddata = {}
    for _, v in pairs(workspace.__THINGS.__BLOCKS:GetChildren()) do
        local pos = (v:FindFirstChild("Part") or v:FindFirstChild("Part2")).Position
        local blockType = v.Name
        table.insert(builddata, {pos.X, pos.Y, pos.Z, blockType})
    end
    return builddata
end

local function placeBlock(position, blockType)
    local args = {
        [1] = {
            [1] = CFrame.new(position) * CFrame.Angles(0, 0, 0),
            [2] = blockType,
            [3] = workspace.__THINGS.BuildArea
        }
    }
    workspace.__THINGS.__REMOTES.placeblock:FireServer(unpack(args))
end

lib.makebutton("Save Build", save, function()
    local builddata = getPlayerBuild()
    local savebuildname2 = savebuildname

    if savebuildname == "Untitled" or builds[savebuildname] ~= nil then
        if savebuildnames[savebuildname] == nil then
            savebuildnames[savebuildname] = 0
        end
        savebuildnames[savebuildname] += 1
        savebuildname2 = savebuildname .. tostring(savebuildnames[savebuildname])
    end

    builds[savebuildname2] = builddata
    updatedropdown()
end)

lib.makebutton("Save Server Builds", save, function()
    local builddata = getServerBuild()
    local savebuildname2 = savebuildname

    if savebuildname == "Untitled" or builds[savebuildname] ~= nil then
        if savebuildnames[savebuildname] == nil then
            savebuildnames[savebuildname] = 0
        end
        savebuildnames[savebuildname] += 1
        savebuildname2 = savebuildname .. tostring(savebuildnames[savebuildname])
    end

    builds[savebuildname2] = builddata
    updatedropdown()
end)

lib.makebutton("Load Save", save, function()
    if selectedbuild ~= nil then
        for _, v in pairs(selectedbuild[2]) do
            local pos = Vector3.new(v[1], v[2], v[3])
            local blockType = v[4]
            placeBlock(pos, blockType)
        end
    end
end)

builddropdown = lib.makedropdown("Saved Builds", save, {}, function(sel)
    selectedbuild = {sel, builds[sel]}
end)

local bindfunc = Instance.new("BindableFunction")
bindfunc.OnInvoke = function(prompt)
    if prompt == "Yes" and selectedbuild ~= nil then
        builds[selectedbuild[1]] = nil
        selectedbuild = nil
        updatedropdown()
    end
end

lib.makebutton("Delete Save", save, function()
    starterui:SetCore("SendNotification", {
        Title = "Delete Save?",
        Text = "Are you sure you want to delete the save?",
        Duration = 5,
        Callback = bindfunc,
        Button1 = "Yes",
        Button2 = "No"
    })
end)

updatedropdown()
lib.ondestroyedfunc = function()
    updatedropdown()
end