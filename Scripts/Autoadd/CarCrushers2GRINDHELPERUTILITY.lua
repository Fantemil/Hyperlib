local vehicleInfo = game:GetService("ReplicatedStorage").VehicleInformation
local lP = game.Players.LocalPlayer
local lodash = loadstring(game:HttpGet("https://raw.githubusercontent.com/PissMan420/lua-lodash/master/lodash.lua"), 'lodash')()
local rF = game:GetService("ReplicatedStorage").rF
local rE = game:GetService("ReplicatedStorage").rE
-- Setup a caching system
shared.cache = nil
if not shared.cache then
    shared.cache = {}
    ---@type Vehicle[]
    shared.cache.vehicles = {}
end
local Roact = getrenv().require(game:GetService("CorePackages").Packages["_Index"]["roblox_roact"].roact)


---@class Vehicle @This class serve as a way to represent a vehicle in the game.
---@field public vipOnly boolean
---@field public name string  @The path of the vehicle.
---@field public displayName string  @The display name of the vehicle.
---@field public parts number @The count of part of the vehicle.
---@field public value number @The value of the vehicle when fully destroyed.
---@field public groupOnly boolean @If the vehicle is only available to car crusher group members.
---@field public token number @The token required to own the vehicle.
---@field public price number @The price of the vehicle.
---@field public optimizeEarning boolean @Turn this true to maximize the profit made by destroying the vehicle.
---@field public image string @The image id of the car
---@meta __tostring @Returns the name of the vehicle.
local Vehicle = { groupOnly = false, name = "", vipOnly = false, parts = 0, value = 0, price = 0, token = 0, displayName = "", image = "" }

---Creates a new vehicle object.
---@param path string The relative path to the vehicle information.
---@return Vehicle
function Vehicle.new(path)
    local vehicle = setmetatable({}, { __index = Vehicle })
    vehicle.name = path
    local displayname 
    repeat 
        displayName = vehicleInfo[path]:FindFirstChild('Name').Value
        if not displayName then
            displayName = vehicleInfo[path]['Name']['Value']
        end
    until displayName ~= nil
    vehicle.displayName = displayName
    vehicle.vipOnly = vehicleInfo[path].VipOnly.Value
    vehicle.parts = vehicleInfo[path].Parts.Value
    vehicle.value = vehicleInfo[path].Value.Value
    vehicle.groupOnly = vehicleInfo[path].GroupOnly.Value
    vehicle.price = vehicleInfo[path].Price.Value
    vehicle.token = vehicleInfo[path].Tier.Value
    vehicle.image = ""
    repeat 
        vehicle.image = vehicleInfo[path]:FindFirstChild('ImageID').Value
        if not vehicle.image then
            vehicle.image = vehicleInfo[path]["ImageID"].Value
        end
    until vehicle.image ~= ""
    return vehicle
end

---Check if the player can use the vehicle.
---The player can use a vip only vehicle if he own the vip gamepaas (gampass id: 2465866)
---The player can use a group only vehicle if he's or she's in the car crusher group (group id: 2726951)
---The player can use enough money if he has enough money.
---The player can use a vehicle if he has enough token but enough money.
---The player cannot use a vehicle if the player spawn timer value is not 0.
---@param player Player|nil @The player to check. If nil, the player will be the local player.
---@return boolean, string @True if the player can use the vehicle. The second return value is the reason why the player cannot use the vehicle.
function Vehicle:canUse(player)
    player = player or game.Players.LocalPlayer
    if self.vipOnly and not player.Passes.VIP.Value then
        return false, "You don't have the vip gamepass."
    end
    local gs = game:GetService("GroupService")
    local playerGroups = gs:GetGroupsAsync(player.UserId)
    if self.groupOnly and lodash.find(playerGroups, function (key) if key == 2726951 then return true else return false end end) == nil then
        return false, "You are not in the car crusher fan group."
    end

    if player.Money.Value < self.price then
        return false, "You don't have enough money."
    end
    if self.token > player.leaderstats.Tokens.Value then
        return false, "You don't have enough token."
    end
    if player.SpawnTimer.Value ~= 0 then
        local fmt = "You can spawn a vehicle in %d seconds. Please wait."
        return false, string.format(fmt, player.SpawnTimer.Value)
    end
    return true, "Spawning..."
end

---Spawn a vehicle firing the remote `game:GetService("ReplicatedStorage").rF.InsertCar` event using the vehicle name
function Vehicle:spawn()
    if not self:canUse() then
        return self:canUse()
    end
    if self.optimizeEarning then
        local material = ''
        if lP.Passes.Neon.Value then
            material = 'Neon'
        elseif lP.Passes.Silver.Value then
            material = 'Silver'
        elseif lP.Passes.Gold.Value then
            material = 'Gold'
        elseif lP.Passes.Platinum.Value then
            material = 'Platinum'
        else
            warn("You don't have any material pass, you will not earn money when you destroy this vehicle")
        end

        local ohTable1 = {
            ["BodyPaint"] = {
                ["Paint"] = {
                    ["Material"] = material == '' and nil or material,
                }
            },
            ["Scraps"] = lP.Scraps.Value
        }

        rE.SaveCustoms:FireServer(ohTable1, self.name)
    end
    -- spawn the vehicle
    rF.SpawnVehicle:InvokeServer(self.name)
end

local function map(array, iteratee)
    local result = {}
    for i, v in ipairs(array) do
        result[i] = iteratee(v)
    end
    return result
end

local function findBy(array, iteratee)
    for i, v in ipairs(array) do
        if iteratee(v) then
            return v
        end
    end
    return nil
end

local function sortBy(array, iteratee)
    local result = {}
    for i, v in ipairs(array) do
        result[i] = v
    end
    table.sort(result, function (a, b)
        return iteratee(a) < iteratee(b)
    end)
    return result
end

local function dedupe(array, key)
    local result = {}
    for i, v in ipairs(array) do
        if not findBy(result, function (value) return value[key] == v[key] end) then
            table.insert(result, v)
        end
    end
    return result
end

---Return an table an table containing an array of vehicle objects containing the most part that are availaible to use.
---@param count number @The number of vehicle to return.
---@return Vehicle[] @The array of vehicle objects.
local function getVehicleWithMostParts(count)
    if #shared.cache.vehicles == 0 then
        shared.cache.vehicles = map(vehicleInfo:GetChildren(), function (key) return Vehicle.new(key.Name) end)
    end
    local result = lodash.filter(shared.cache.vehicles, function (key) return key:canUse() end)
    result = sortBy(result, function (key) return key.parts end)
    result = lodash.reverse(result)
    result = lodash.take(result, count)
    return result
end

---Populate an array containing the car that can earn the most money.
---@param count number @The number of vehicle to return.
---@return Vehicle[] @The array of vehicle objects.
local function getVehicleWithMostMoney(count)
    if #shared.cache.vehicles == 0 then
        shared.cache.vehicles = map(vehicleInfo:GetChildren(), function (key) return Vehicle.new(key.Name) end)
    end
    local result = lodash.filter(shared.cache.vehicles, function (key) return key:canUse() end)
    result = sortBy(result, function (key) return key.value end)
    result = lodash.reverse(result)
    result = lodash.take(result, count)
    return result
end


---@alias ButtonType '"primary"'|'"secondary"'|'"danger"'|'"success"'|'"warning"'|'"info"'|'"light"'|'"dark"'

local VehicleItem = Roact.Component:extend("VehicleItem")
function VehicleItem:init()
    self:setState({
        isHovered = false,
        bText = "Spawn",
    })
end

function VehicleItem:render() 
    ---@type boolean @Whether the vehicle is hovered or not.
    local isHovered = self.state.isHovered
    ---@type Vehicle @The vehicle object.
    local vehicle = self.props.vehicle
    local bText = self.state.bText

    return Roact.createElement("Frame", {
        Size = UDim2.fromScale(1, 0.3),
        BackgroundTransparency = 1,
        BackgroundColor3 = Color3.fromHex("#fff"),
        BorderSizePixel = 3
    }, {
        image = Roact.createElement("ImageLabel", {
            Size = UDim2.fromScale(0.3,1),
            Position = UDim2.fromScale(0, 0.5),
            AnchorPoint = Vector2.new(0, 0.5),
            Image = ("rbxassetid://%d"):format(vehicle.image),
            BackgroundTransparency = 1,
            ScaleType = "Crop"
        }),
        ["car name"] = Roact.createElement("TextLabel", {
            Size = UDim2.fromScale(0.6, 0.2),
            AnchorPoint = Vector2.new(0, 0),
            BackgroundTransparency = 1,
            Position = UDim2.fromScale(0.3, 0.05),
            TextSize = 16,
            Text = vehicle.displayName,
            Font =  Enum.Font.GothamBold
        }),
        value = Roact.createElement("TextLabel", {
            Size = UDim2.fromScale(0.6, 0.2),
            AnchorPoint = Vector2.new(0,0),
            BackgroundTransparency = 0,
            Position = UDim2.fromScale(0.3, 0.22),
            TextSize = 14,
            Font = Enum.Font.Gotham,
            RichText = true,
            Text = ("<b>Value:</b> %d ðµ "):format(vehicle.value),
            BackgroundTransparency = 1
        }),
        parts = Roact.createElement("TextLabel", {
            Size = UDim2.fromScale(0.6, 0.2),
            AnchorPoint = Vector2.new(0,0),
            BackgroundTransparency = 1,
            Position = UDim2.fromScale(0.3, 0.36),
            Font = "Gotham",
            RichText = true,
            TextSize = 14,
            Text = ("<b>Parts:</b> %d"):format(vehicle.parts)
        }),
        spawnCar = Roact.createElement("TextButton", {
            Size = UDim2.fromScale(0.4, 0.2),
            AnchorPoint = Vector2.new(0.5, 1),
            Position = UDim2.fromScale(0.6, 0.8),
            BorderSizePixel = 2,
            BackgroundColor3 = Color3.fromHex("#0aaa2c"),
            Font = "GothamBold",
            TextSize = 16,
            Text = bText,
            TextScaled = true,
            [Roact.Event.Activated] = function ()
                local canUse, reason = vehicle:canUse()
                if not canUse then
                    self:setState({ bText = reason })
                    wait(2.2)
                    self:setState({bText = "Spawn"})
                else
                    vehicle:spawn()
                end
            end
        })
    })
end

local MAX_CAR_COUNT = 5
local app = Roact.Component:extend("App")

function app:init()
    self:setState({
        currentView = "",
        optimizeEarning = false,
        transparency = 0.5,
        mostPartButtonTransperency = 0.5,
        mostValueButtonTransperency = 0.5,
        ---@type Vehicle[]
        vehicles = {},
        mostPartTxt = "Most Part",
        mostValueTxt = "Most Value",
    })
end

function app:render()
    local currentView = self.state.currentView
    local optimizeEarning = self.state.optimizeEarning
    local transparency = self.state.transparency
    local mostPartButtonTransperency = self.state.mostPartButtonTransperency
    local mostValueButtonTransperency = self.state.mostValueButtonTransperency
    ---@type Vehicle[]
    local vehicles = self.state.vehicles
    local mostPartTxt = self.state.mostPartTxt
    local mostValueTxt = self.state.mostValueTxt

    return Roact.createElement("ScreenGui", {}, {
        MainFrame = Roact.createElement("Frame", {
             Position = UDim2.fromScale(0, 0.6),
            Size = UDim2.fromScale(0.291, 0.363) - UDim2.fromScale(0.05, 0.05),
            BackgroundColor3 = Color3.fromHex("#E1E1E1"),
            Transparency = transparency,
            BorderSizePixel = 0,
            AnchorPoint = Vector2.new(0, 0.5),
        }, {
            layout = Roact.createElement("UIListLayout", {
                FillDirection = Enum.FillDirection.Vertical,
                SortOrder = Enum.SortOrder.LayoutOrder,
            }),
            title = Roact.createElement("TextLabel", {
                Text = "Car crusher grinding helper",
                TextSize = 30,
                TextXAlignment = Enum.TextXAlignment.Center,
                TextYAlignment = Enum.TextYAlignment.Center,
                Font = "Highway",
                BackgroundTransparency = transparency - 0.1,
                Size = UDim2.fromScale(1, 0.1),
                TextColor3 = Color3.fromHex("#FFF"),
                TextScaled = true,
                BackgroundColor3 = Color3.fromHex('#9370db'),
                LayoutOrder = 1,
            }),
            buttonRow = Roact.createElement("Frame", {
                Size = UDim2.fromScale(1, 0.1),
                BackgroundTransparency = transparency + 0.1,
                BackgroundColor3 = Color3.fromHex("#EEE"),
                LayoutOrder = 3
            }, {
                layout = Roact.createElement("UIListLayout", {
                    FillDirection = Enum.FillDirection.Horizontal,
                    HorizontalAlignment = Enum.HorizontalAlignment.Center,
                    VerticalAlignment = Enum.VerticalAlignment.Center,
                    Padding = UDim.new(0, 20),
                    SortOrder = 'LayoutOrder'
                }),
                -- button to go to the vehicle list of the most part
                Roact.createElement("TextButton", {
                    Text = mostPartTxt,
                    TextSize = 20,
                    TextXAlignment = Enum.TextXAlignment.Center,
                    TextYAlignment = Enum.TextYAlignment.Center,
                    Font = Enum.Font.Gotham,
                    BackgroundTransparency = currentView == "MostPart" and 0.1 or mostPartButtonTransperency,
                    Size = UDim2.fromScale(0.3, 1),
                    TextColor3 = Color3.fromHex("#FFF"),
                    TextScaled = true,
                    BorderSizePixel = 2,
                    BackgroundColor3 = Color3.fromHex('#935fff'),
                    [Roact.Event.Activated] = function ()
                        self:setState({
                            currentView = "MostPart",
                            optimizeEarning = false,
                            transparency = 0.5,
                            mostPartTxt = "Hold on, loading...",
                        })
                        -- fetch the vehicle with most part
                        vehicles = getVehicleWithMostParts(MAX_CAR_COUNT)
                        self:setState({
                            vehicles = vehicles,
                            mostPartTxt = "Most part",
                        })
                    end,
                    [Roact.Event.MouseEnter] = function ()
                        self:setState({
                            mostPartButtonTransperency = 0.2
                        })
                    end,
                    [Roact.Event.MouseLeave] = function ()
                        self:setState({
                            mostPartButtonTransperency = 0.5
                        })
                    end,
                }),
                -- button to go to the vehicle list of the most value
                Roact.createElement("TextButton", {
                    Text = mostValueTxt,
                    TextSize = 20,
                    TextXAlignment = Enum.TextXAlignment.Center,
                    TextYAlignment = Enum.TextYAlignment.Center,
                    Font = Enum.Font.Gotham,
                    BackgroundTransparency = currentView == "MostValue" and 0.1 or mostValueButtonTransperency,
                    Size = UDim2.fromScale(0.3, 1),
                    TextColor3 = Color3.fromHex("#FFF"),
                    TextScaled = true,
                    BorderSizePixel = 2,
                    BackgroundColor3 = Color3.fromHex('#935fff'),
                    [Roact.Event.Activated] = function ()
                        self:setState({
                            currentView = "MostValue",
                            mostValueTxt = "Hold on, loading...",
                        })
                        -- fetch the vehicle with most value
                        local carwithmostvalue = getVehicleWithMostMoney(MAX_CAR_COUNT)
                        self:setState({
                            vehicles = carwithmostvalue,
                            mostValueTxt = "Most value",
                        })
                    end,
                    [Roact.Event.MouseEnter] = function ()
                        self:setState({
                            mostValueButtonTransperency = 0.2
                        })
                    end,
                    [Roact.Event.MouseLeave] = function ()
                        self:setState({
                            mostValueButtonTransperency = 0.5
                        })
                    end
                }),
                -- toggle button that toggle the optimization of earning money. if it's turned on, the vehicle list will be modified and the button will turn into a green color to indicate that it's on.
                Roact.createElement("TextButton", {
                    Text = "Optimize earning",
                    TextSize = 20,
                    TextXAlignment = Enum.TextXAlignment.Center,
                    TextYAlignment = Enum.TextYAlignment.Center,
                    Font = Enum.Font.Gotham,
                    BackgroundTransparency = 0.5,
                    Size = UDim2.fromScale(0.28, 1),
                    TextColor3 = optimizeEarning == false and Color3.fromHex("#FFF") or Color3.fromHex("#000"),
                    TextScaled = true,
                    BorderSizePixel = 2,
                    BackgroundColor3 = optimizeEarning == false and Color3.fromHex('#cc0000') or Color3.fromHex('#00cc00'),
                    [Roact.Event.Activated] = function ()
                        self:setState({
                            optimizeEarning = not optimizeEarning,
                        })
                    end,
                })
            }),
            -- the vehicle lista
            vlist = Roact.createElement("ScrollingFrame", {
                Size = UDim2.fromScale(1, 0.8),
                Position = UDim2.fromScale(0, 0.1),
                BackgroundTransparency = transparency,
                BorderSizePixel = 0,
                ScrollingDirection = Enum.ScrollingDirection.Y,
                AutomaticCanvasSize = 'Y',
                LayoutOrder = 2
            }, {
                Roact.createElement("UIListLayout", {
                    FillDirection = Enum.FillDirection.Vertical,
                    VerticalAlignment = Enum.VerticalAlignment.Top,
                    HorizontalAlignment = Enum.HorizontalAlignment.Center,
                    Padding = UDim.new(0, 20),
                }),
                Roact.createFragment(map(vehicles, function (key)
                    return Roact.createElement(VehicleItem, { vehicle = key })
                end))
            })
        })
    })
end

function app:didUpdate(prevProps, prevState)
    local diff = lodash.difference(prevState.vehicles, self.state.vehicles)
    print('Diff length: ' .. #diff)
    if self.state.optimizeEarning ~= prevState.optimizeEarning or #diff > 0 then
        self:setState({
            vehicles = map(self.state.vehicles, function (key) key.optimizeEarning = self.optimizeEarning return key end),
        })
    end
end


-- rewrite the ui using roact 
local handle = Roact.mount(Roact.createElement(app), game.CoreGui, "Main")