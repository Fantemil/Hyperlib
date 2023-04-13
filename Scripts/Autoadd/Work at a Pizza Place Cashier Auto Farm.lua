-- local EventHandler = filtergc("function", {Name = "GetEventHandler"}, true)
-- no filtergc LOL!
local EventHandler

for i,v in pairs(getgc()) do
    if typeof(v) == "function" and islclosure(v) and not is_synapse_function(v) and debug.getinfo(v).name == "GetEventHandler" then
        print('found')
        EventHandler = v
    end
end

local Table2 = getupvalue(EventHandler, 1)

for i,v in pairs(Table2) do
    if v.Remote then
        v.Remote.Name = i
    end
end

local LocalPlayer = game.Players.LocalPlayer
local Events = game:GetService("ReplicatedStorage"):WaitForChild("Communication"):WaitForChild("Events")

local function FindChildByIndexSequence(Parent, IndexSequence)
    local CurrentChild = Parent
    for _, Index in ipairs(IndexSequence) do
        CurrentChild = CurrentChild:FindFirstChild(tostring(Index))
        if not CurrentChild then
            return nil
        end
    end
    return CurrentChild
end

local function WalkToPoint(TargetPoint)
    local Humanoid = LocalPlayer.Character:FindFirstChild("Humanoid")
    if Humanoid then
        Humanoid:MoveTo(TargetPoint)
    end

    return function()
        repeat wait() Humanoid:MoveTo(TargetPoint) until (LocalPlayer.Character.HumanoidRootPart.Position * Vector3.new(1,0,1) - TargetPoint * Vector3.new(1,0,1)).Magnitude < 2
    end
end

local function TeleportToJob(Name)
    local args = {
        [1] = "TeleportToJob",
        [2] = Name
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("PlayerChannel"):FireServer(unpack(args))    
end

for i,v in pairs(getconnections(workspace.Main.GivePaycheck.OnClientEvent)) do
    v:Disable()
end

local function ClaimPaycheck()
    workspace:WaitForChild("Main"):WaitForChild("GivePaycheck"):FireServer("Paycheck", false)
end

local MainClass = {}

MainClass.CharacterAddedConnections = {}

function MainClass:Init(HideOtherCharacters)
    if HideOtherCharacters then
        for _, Player in next, game.Players:GetPlayers() do
            if Player ~= LocalPlayer then
                Player.Character.Parent = nil
                local CharacterConnection
                CharacterConnection = Player.CharacterAdded:Connect(function(Character)
                    wait(0.1)
                    Character.Parent = nil
                end)
                self.CharacterAddedConnections[Player] = CharacterConnection
            end
        end
        game.Players.PlayerAdded:Connect(function(Player)
            if Player ~= LocalPlayer then
                local CharacterConnection
                CharacterConnection = Player.CharacterAdded:Connect(function(Character)
                    wait(0.1)
                    Character.Parent = nil
                end)
                self.CharacterAddedConnections[Player] = CharacterConnection
            end
        end)
        game.Players.PlayerRemoving:Connect(function(Player)
            local Connection = self.CharacterAddedConnections[Player]
            if Connection then
                Connection:Disconnect()
                self.CharacterAddedConnections[Player] = nil
            end
        end)
        workspace.Main.GivePaycheck.OnClientEvent:Connect(ClaimPaycheck)
    end
end

local CashierClass = {}

CashierClass.Timeout = 10
CashierClass.Registers = {workspace.Register1, workspace.Register2, workspace.Register3}

function CashierClass:GetCustomers()
    local ValidCustomers = {}

    for _,Customer in next, workspace.Customers:GetChildren() do
        local InUse = FindChildByIndexSequence(Customer, {"Head", "InUse"})
        if InUse and InUse.Value == false and Customer:FindFirstChild("Torso") and (Customer.Torso.Velocity.Magnitude < 1 or math.round(Customer.Torso.Velocity.Z) == -15) and (Customer.HumanoidRootPart.Position - self:GetRegisterFromCustomer(Customer).Screen.Position).Magnitude < 22 and not Customer:GetAttribute("AlreadyHandled") then
            table.insert(ValidCustomers, Customer)
        end
    end

    return ValidCustomers
end

function CashierClass:GetRegisterFromCustomer(Customer)
    local BestRegister, BestDistance = nil, math.huge
    for _, Register in next, self.Registers do
        if Customer:FindFirstChild("HumanoidRootPart") and (Customer.HumanoidRootPart.Position - Register.Screen.Position).Magnitude < BestDistance then
            BestDistance = (Customer.HumanoidRootPart.Position - Register.Screen.Position).Magnitude
            BestRegister = Register
        end
    end

    return BestRegister
end

function CashierClass:GetClosestValidCustomer()
    local Customers = CashierClass:GetCustomers()

    local BestCustomer, BestDistance = nil, math.huge
    for _, Customer in next, Customers do
        if Customer:FindFirstChild("HumanoidRootPart") and LocalPlayer:DistanceFromCharacter(Customer.HumanoidRootPart.Position) < BestDistance then
            BestDistance = LocalPlayer:DistanceFromCharacter(Customer.HumanoidRootPart.Position)
            BestCustomer = Customer
        end
    end

    return BestCustomer
end

CashierClass.OrderConnection = workspace.GameService.RecivedCustomerOrder.OnClientEvent

function CashierClass:HandleCustomerDialog(Customer, Register)
    if FindChildByIndexSequence(Customer, {"Head", "DialogSimple", "Correct"}) and not CashierClass:IsInUse(Customer) then
        workspace:WaitForChild("Dialog"):FireServer("ClickedBubble", Customer.Head)
        workspace:WaitForChild("Dialog"):FireServer("ResponseSelected", Customer.Head.DialogSimple.Correct, Customer.Head)

        local OrderString
        local ClientOrderConnection

        ClientOrderConnection = self.OrderConnection:Connect(function(Order, ...)
            OrderString = Order
            ClientOrderConnection:Disconnect()
        end)

        local TimeTaken = 0

        repeat task.wait(0.1) TimeTaken += 0.1 until OrderString or TimeTaken >= self.Timeout

        if TimeTaken >= self.Timeout then
            return
        end

        Events.OrderComplete:FireServer(Customer, OrderString, Register)
        Customer:SetAttribute("AlreadyHandled", true)
        
        print("Done handling dialog!")
    end
end

function CashierClass:CustomerHasVisibleBubble(Customer)
    local Head = Customer:FindFirstChild("Head")
    local IsVisible = false
    for i,v in pairs(LocalPlayer.PlayerGui.CustomerBubbles:GetChildren()) do
        if v.Adornee == Head and v.Enabled == true then
            IsVisible = true
        end
    end
    if Customer.Head.SimpleDialogBillboard.Enabled == true then
        return false
    end
    return IsVisible
end

function CashierClass:IsInUse(Customer)
    return FindChildByIndexSequence(Customer, {"Head", "InUse"}).Value and not CashierClass:CustomerHasVisibleBubble(Customer)
end

local CashierCoroutine = coroutine.create(function()
    while wait(1) do
        print("Loop start")
        if LocalPlayer.Team ~= game:GetService("Teams").Cashier then
            TeleportToJob("Cashier")
        end

        print('Getting closest customer')
        local ClosestCustomer = CashierClass:GetClosestValidCustomer()
        if ClosestCustomer then
            print('Getting register')
            local TargetRegister = CashierClass:GetRegisterFromCustomer(ClosestCustomer)
            if TargetRegister then
                print('Yielding for walking to finish')
                WalkToPoint(TargetRegister.Border.Position + (-TargetRegister.Border.CFrame.LookVector).Unit * 5)()
                LocalPlayer.Character:PivotTo(CFrame.new(LocalPlayer.Character.HumanoidRootPart.Position, ClosestCustomer.HumanoidRootPart.Position))
                if CashierClass:IsInUse(ClosestCustomer) then
                    continue
                end
                print('Done yielding.')
                CashierClass:HandleCustomerDialog(ClosestCustomer, TargetRegister)
                print("Done order!")
            end
        end
    end
end)

coroutine.resume(CashierCoroutine)
MainClass:Init(true)