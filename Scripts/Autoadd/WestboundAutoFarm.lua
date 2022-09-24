-- // Services
local Workspace = game:GetService('Workspace')
local ReplicatedStorage = game:GetService('ReplicatedStorage')
local Players = game:GetService('Players')
local RunService = game:GetService('RunService')

-- // Player
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character
local HumanoidRootPart = Character.HumanoidRootPart
local States = LocalPlayer:FindFirstChild('States')
local Stats = LocalPlayer:FindFirstChild('Stats')

-- // Remotes
local GeneralEvents = ReplicatedStorage:FindFirstChild('GeneralEvents')
local RobRemote = GeneralEvents:FindFirstChild('Rob')
local ChangeCharacter = Character:FindFirstChild('ChangeCharacter')
local LassoEvent = GeneralEvents:FindFirstChild('LassoEvents')

-- // Paths
local ChestFolder = Workspace:FindFirstChild('ChestFolder')
local Lassod = States:FindFirstChild('Lassod')
local Hogtied = States:FindFirstChild('Hogtied')
local BagLevel = Stats:FindFirstChild('BagSizeLevel'):FindFirstChild('CurrentAmount')
local BagAmount = States:FindFirstChild('Bag')

-- // Locations
local Camp = CFrame.new(1636.62537, 104.349976, -1736.184)

-- // Status
local CashRegisterFinished = false
local BankFinished = false

-- // Functions
local function TeleportToCamp()
    HumanoidRootPart.CFrame = Camp
end

local function Godmode()
    ChangeCharacter:FireServer('Damage', 0/0)
end

local function AntiAFK()
    for _, Connection in next, getconnections(LocalPlayer.Idled) do
        Connection:Disable()
    end
end

local function HideName()
    Character:FindFirstChild('Head'):FindFirstChild('NameTag'):Destroy()
end

local function CashRegisterFarm()
    for _, Item in next, Workspace:GetChildren() do
        if BagAmount.Value == BagLevel.Value then 
            TeleportToCamp()
            CashRegisterFinished = true
            break
        elseif Item:IsA('Model') and Item.Name == 'CashRegister' then
            HumanoidRootPart.CFrame = Item:FindFirstChild('Open').CFrame
            RobRemote:FireServer('Register', {['Part'] = Item:FindFirstChild('Union'), ['OpenPart'] = Item:FindFirstChild('Open'), ['ActiveValue'] = Item:FindFirstChild('Active'), ['Active'] = true})
        end
    end    
    CashRegisterFinished = true
end

local function BankFarm()
    for _, Item in next, Workspace:GetChildren() do
        if BagAmount.Value == BagLevel.Value then 
            TeleportToCamp()
            BankFinished = true
            break
        elseif Item:IsA('Model') and Item.Name == 'Safe' and Item:FindFirstChild('Amount').Value > 0 then
            if Item:FindFirstChild('Open').Value == true then
                HumanoidRootPart.CFrame = Item:FindFirstChild('Safe').CFrame
                RobRemote:FireServer('Safe', Item)
            elseif Item:FindFirstChild('Open').Value == false then
                HumanoidRootPart.CFrame = Item:FindFirstChild('Safe').CFrame
                Item:FindFirstChild('OpenSafe'):FireServer('Completed')
                RobRemote:FireServer('Safe', Item)
            end
        end
    end
    BankFinished = true
end

-- // Main
Godmode()
HideName()
AntiAFK()
RunService.RenderStepped:Connect(function()
    coroutine.wrap(BankFarm)()
    coroutine.wrap(CashRegisterFarm)()
    repeat task.wait() until CashRegisterFinished == true and BankFarmFinished == true
end)