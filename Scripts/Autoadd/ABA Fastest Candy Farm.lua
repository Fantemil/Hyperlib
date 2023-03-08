setfflag("HumanoidParallelRemoveNoPhysics", "False")
setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")

local get_service = game.GetService
local fire_server = Instance.new("RemoteEvent").FireServer

local players = get_service(game, "Players")
local client = players.LocalPlayer

local run_service = get_service(game, "RunService")
local heart_beat = run_service.Heartbeat

local server_traits = client.Backpack.ServerTraits
local afk_remote = server_traits:WaitForChild("AFK", 11)

local thrown_path = workspace.Thrown
local collecting_candy = false

local function on_character_added(character)
    if character ~= nil and character.Humanoid ~= nil and character.FakeHead ~= nil and character.TeamMarker ~= nil then
        character.FakeHead:Destroy()
        character.TeamMarker:Destroy()

        for _, v in next, character:GetChildren() do
            if v ~= nil and v:IsA("Model") and v.Name ~= "Morph" then
                v:Destroy()
            end
        end
    end
end

fire_server(afk_remote, true)

if client.Character ~= nil and client.Character.HumanoidRootPart ~= nil then
    on_character_added(client.Character)

    client.CharacterAdded:connect(on_character_added)
    client.Character.HumanoidRootPart.CFrame = CFrame.new(0, 1000, 0)
end

heart_beat:connect(function()
    if client.Character ~= nil and client.Character.HumanoidRootPart ~= nil and client.Character.Humanoid ~= nil then
        client.Character.Humanoid:ChangeState(11)

        for _, v in next, thrown_path:GetChildren() do
            if v ~= nil and v:IsA("BasePart") and v.Name == "Candy" and v:FindFirstChild("TouchInterest") then
                collecting_candy = true
                client.Character.HumanoidRootPart.CFrame = v.CFrame
               
                firetouchinterest(client.Character.HumanoidRootPart, v, 0)
                task.wait()
                firetouchinterest(client.Character.HumanoidRootPart, v, 1)
               
                collecting_candy = false
            end
        end

        if not collecting_candy then
            client.Character.HumanoidRootPart.CFrame = CFrame.new(0, 1000, 0)
        end
    end
end)