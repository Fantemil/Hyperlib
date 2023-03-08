---CLAN GAMES/UNIVERSAL
---Ceresian:
 ---Controls:
 ---  - Page Up: Save Config
  ---  - Page Down: Load Config
---  - Home: Toggle Menu
 ---  - End: Unload
 ---   - Keypad Eight: Up
 ---   - Keypad Two: Down
  ---  - Keypad Four: Cycle Left
 ---   - Keypad Six: Cycle Right
 --- Features:
 --- Aimbot:
  ---  - Toggle
  ---  - Sensitivity (Lower = Less Snap)
  ---  - FOV
  ---  - Deadzone (Circle inside FOV where aimbot will not move)
   --- - Deadzone FOV
  ---  - Hitbox (Head, Torso, Closest)
  ---  - Teamkill
  ---  - Dead Check
 ---   - Visible Check
  ---  - Invisible Check
  ---  - Forcefield Check
  ---  - Non-Sticky Aim
   --- - Targetting Method (Mouse, Distance, Health)
  ---  - Don't Lock when Right Clicking
  ---  - Cursor Calibration Key
 --- Triggerbot:
  ---  - Toggle
 ---   - Teamkill
 ---   - Invisible Check
 ---   - Dead Check
 ---   - Forcefield Check
  ---  - Delay
  ---  - Duration
 --- ESP:
 ---   - Toggle
 ---   - Box
  ---  - Health
  ---  - Name
  ---  - Hide Team
  ---Exploits:
  ---  - Packet Choke
 ---   - Spinbot
 ---   - Catboy
  ---  - Click TP
  ---  - Fly
 ---Ceresian: CLAN GAMES/UNIVERSAL
local ReplicatedStorage = game:GetService("ReplicatedStorage") -- Services
local UserInputService = game:GetService("UserInputService")
local NetworkClient = game:GetService("NetworkClient")
local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")
local RunService = game:GetService("RunService")
local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")

local localPlayer = Players.LocalPlayer -- Locals
local mouse = localPlayer:GetMouse()

local functions = {
    ["HttpGet"] = game.HttpGet,
    ["FindFirstAncestor"] = game.FindFirstAncestor ,
    ["FindFirstAncestorOfClass"] = game.FindFirstAncestorOfClass,
    ["FindFirstAncestorWhichIsA"] = game.FindFirstAncestorWhichIsA,
    ["FindFirstChild"] = game.FindFirstChild,
    ["FindFirstChildOfClass"] = game.FindFirstChildOfClass,
    ["FindFirstChildWhichIsA"] = game.FindFirstChildWhichIsA,
    ["FindFirstDescendant"] = game.FindFirstDescendant,
    ["IsAncestorOf"] = game.IsAncestorOf,
    ["IsDescendantOf"] = game.IsDescendantOf,
    ["isA"] = game.IsA,
    ["wrap"] = coroutine.wrap,
    ["insert"] = table.insert,
    ["remove"] = table.remove,
    ["find"] = table.find,
    ["GetMouseLocation"] = UserInputService.GetMouseLocation,
    ["GetFocusedTextBox"] = UserInputService.GetFocusedTextBox,
    ["IsKeyDown"] = UserInputService.IsKeyDown,
    ["GetPlayers"] = Players.GetPlayers,
    ["type"] = type,
    ["tostring"] = tostring,
    ["sfind"] = string.find,
    ["sin"] = math.sin,
    ["cos"] = math.cos,
    ["rad"] = math.rad,
    ["floor"] = math.floor,
    ["abs"] = math.abs,
    ["huge"] = math.huge,
    ["clamp"] = math.clamp,
    ["nRay"] = Ray.new ,
    ["nRayParams"] = RaycastParams.new,
    ["nCFrame"] = CFrame.new,
    ["nVector3"] = Vector3.new,
    ["nVector2"] = Vector2.new,
    ["nColor3"] = Color3.new,
    ["nAngles"] = CFrame.Angles,
    ["nRGB"] = Color3.fromRGB,
    ["nHSV"] = Color3.fromHSV,
    ["nInstance"] = Instance.new,
    ["nDrawing"] = Drawing.new,
    ["setmetatable"] = setmetatable,
    ["next"] = next,
    ["ipairs"] = ipairs,
    ["wait"] = wait,
    ["rawget"] = rawget,
}

local constants = {
    ["9e9"] = 9e9,
    ["5000"] = 5000,
    ["1000"] = 1000,
    ["360"] = 360,
    ["320"] = 320,
    ["255"] = 255,
    ["252"] = 252,
    ["144"] = 144,
    ["95"] = 95,
    ["70"] = 70,
    ["20"] = 20,
    ["15"] = 15,
    ["13"] = 13,
    ["10"] = 10,
    ["8"] = 8,
    ["6"] = 6,
    ["5"] = 5,
    ["4"] = 4,
    ["2"] = 2,
    ["1"] = 1,
    [".75"] = .75,
    [".5"] = .5,
    [".3"] = .3,
    [".1"] = .1,
    ["0"] = 0,
    ["true"] = true,
    ["false"] = false,
    ["nil"] = nil,
}

local UserInputService = game:GetService("UserInputService") -- Services
local HttpService = game:GetService("HttpService")
local Workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")

local insert = table.insert -- Cache
local remove = table.remove
local find = table.find
local nVector2 = Vector2.new
local nRGB = Color3.fromRGB
local nDrawing = Drawing.new

local screenSize = nVector2(Workspace.CurrentCamera.ViewportSize.X, Workspace.CurrentCamera.ViewportSize.Y) -- Screen
local screenCenter = nVector2(Workspace.CurrentCamera.ViewportSize.X/2, Workspace.CurrentCamera.ViewportSize.Y/2)

local frameworkHook
local framework = {
    connections = {},
    flags = {},
    esp = {},
    labels = {},
    theme = {
        font = Drawing.Fonts.Plex,
        fontSize = 13
    },
    menu = {
        open = true,
        offset = -120,
        bindingKey = false,
        currentItem = nil,
        keybinds = {},
        list = {},
        drawings = {},
        hiddenDrawings = {},
    }
}

setmetatable(framework, {
    __call = function(self, key, args)
        if key == "draw" then
            local i = nDrawing(args.class)
            for prop, val in next, args.properties do
                i[prop] = val
            end
            if not args.hidden then
                insert(self.menu.drawings, i)
            else
                insert(self.menu.hiddenDrawings, i)
            end 
            return i
        elseif key == "deepCopy" then
            local function deepCopy(tbl)
                local copy = {}
                for k, v in pairs(tbl) do
                    if type(v) == "table" then
                        v = deepCopy(v)
                    end
                    copy[k] = v
                end
                return copy
            end
            return deepCopy(args.tbl)
        elseif key == "doesDrawingExist" then
            if args.drawing then
                if rawget(args.drawing, '__OBJECT_EXISTS') then
                    return true
                else
                    return false
                end
            else
                return err("No Drawing Specified [1]")
            end
        elseif key == "udim" then -- (type, xScale, xOffset, yScale, yOffset, relativeFrom)
            if args.type == "size" then
                local x
                local y
                if args.relativeFrom then
                    x = args.xScale*args.relativeFrom.Size.X+args.xOffset
                    y = args.yScale*args.relativeFrom.Size.Y+args.yOffset
                else
                    x = args.xScale*screenSize.X+args.xOffset
                    y = args.yScale*screenSize.Y+args.yOffset
                end
                return nVector2(x,y)
            elseif args.type == "position" then
                local x
                local y

                if args.relativeFrom then
                    if find(args.relativeFrom, "Font") then
                        x = args.relativeFrom.Position.X + args.xScale * args.relativeFrom.Size.X + args.xOffset
                        y = args.relativeFrom.Position.y + args.yScale * args.relativeFrom.Size.y + args.yOffset
                    else
                        x = args.relativeFrom.Position.x + args.xOffset
                        y = args.relativeFrom.Position.y + args.yOffset
                    end
                else
                    x = args.xScale * screenSize.X + args.xOffset
                    y = args.yScale * screenSize.Y + args.yOffset
                end
                return nVector2(x,y)
            else
                return "Non Valid Argument [1]"
            end
        elseif key == "createConnection" then -- (name, connection, callback)
            if not self.connections[args.name] then
                self.connections[args.name] = args.connection:Connect(args.callback)
                return self.connections[args.name]
            end
        elseif key == "destroyConnection" then -- (name)
            if self.connections[args.name] then
                self.connections[args.name]:Disconnect()
                self.connections[args.name] = nil
            end
        elseif key == "saveConfig" then
            local copy = self("deepCopy", {tbl = self.flags})
         writefile("Config.YUKIHOOK", HttpService:JSONEncode(copy))
        elseif key == "loadConfig" then
            local decodedData = HttpService:JSONDecode(readfile("Config.YUKIHOOK"))
            for i,v in next, decodedData do
                self.flags[i] = v
            end
            for i,v in next, self.menu.list do
                v:refresh()
            end
        elseif key == "unload" then
            for i,v in next, framework.connections do
                v:Disconnect()
                framework.connections[i] = nil
            end

            for i,v in next, framework.esp do
                if type(v) == 'table' and v.Destroy then
                    v.Destroy()
                    framework.esp[i] = nil
                end
            end

            for i,v in next, framework.menu.drawings do
                if type(v) == 'table' and rawget(v, '__OBJECT_EXISTS') then
                    v:Remove()
                    framework.menu.drawings[i] = nil
                end
            end

            for i,v in next, framework.menu.hiddenDrawings do
                if type(v) == 'table' and rawget(v, '__OBJECT_EXISTS') then
                    v:Remove()
                    framework.menu.hiddenDrawings[i] = nil
                end
            end
        end
    end
})

function framework:createWindow(args)
    local window = {name = args.name or "TORGBOT"}

    window.textShadow = self("draw", {class = "Text", properties = {
        Text = window.name,
        Font = self.theme.font,
        Size = self.theme.fontSize,
        Position = framework("udim", {type = "position", xScale = 0, xOffset = 6, yScale = 0, yOffset = 320}),
        Visible = self.menu.open,
        Transparency = 1,
        Color = nRGB(0,0,0)
    }})

    window.text = self("draw", {class = "Text", properties = {
        Text = window.name,
        Font = self.theme.font,
        Size = self.theme.fontSize,
        Position = framework("udim", {type = "position", xScale = 0, xOffset = -1, yScale = 0, yOffset = -1, relativeFrom = window.textShadow}),
        Visible = self.menu.open,
        Transparency = 1,
        Color = nRGB(255,255,255)
    }})
    
    self.menu.offset += 15

    function window:selectItem(args)
        if framework.menu.currentItem then
            if framework.menu.currentItem.type == "label" then
                framework.menu.currentItem:setText(framework.menu.currentItem.text)
                framework.menu.currentItem:hover(false)
            elseif framework.menu.currentItem.type == "toggle" then
                framework.menu.currentItem:setText(framework.menu.currentItem.text.. " <"..tostring(framework.menu.currentItem.value)..">")
                framework.menu.currentItem:hover(false)
            elseif framework.menu.currentItem.type == "int" then
                framework.menu.currentItem:setText(framework.menu.currentItem.text.. " <"..tostring(framework.menu.currentItem.value)..">")
                framework.menu.currentItem:hover(false)
            elseif framework.menu.currentItem.type == "keybind" then
                framework.menu.currentItem:setText(framework.menu.currentItem.text.. " <"..tostring(framework.menu.currentItem.key)..">")
                framework.menu.currentItem:hover(false)
            elseif framework.menu.currentItem.type == "list" then
                framework.menu.currentItem:setText(framework.menu.currentItem.text.. " <"..tostring(framework.menu.currentItem.value)..">")
                framework.menu.currentItem:hover(false)
            end
        end
        framework.menu.currentItem = args.item
        if framework.menu.currentItem.type == "label" then
            framework.menu.currentItem:setText(framework.menu.currentItem.text.." <")
            framework.menu.currentItem:hover(true)
        elseif framework.menu.currentItem.type == "toggle" then
            framework.menu.currentItem:setText(framework.menu.currentItem.text.. " <"..tostring(framework.menu.currentItem.value).."> <")
            framework.menu.currentItem:hover(true)
        elseif framework.menu.currentItem.type == "int" then
            framework.menu.currentItem:setText(framework.menu.currentItem.text.. " <"..tostring(framework.menu.currentItem.value).."> <")
            framework.menu.currentItem:hover(true)
        elseif framework.menu.currentItem.type == "keybind" then
            framework.menu.currentItem:setText(framework.menu.currentItem.text.. " <"..tostring(framework.menu.currentItem.key).."> <")
            framework.menu.currentItem:hover(true)
        elseif framework.menu.currentItem.type == "list" then
            framework.menu.currentItem:setText(framework.menu.currentItem.text.. " <"..tostring(framework.menu.currentItem.value).."> <")
            framework.menu.currentItem:hover(true)
        end

    end

    function window:createLabel(args)
        local item = {text = args.text or "", drawings = {}, type = args.type or "label"}

        item.drawings.textShadow = framework("draw", {class = "Text", properties = {
            Text = item.text,
            Font = framework.theme.font,
            Size = framework.theme.fontSize,
            Position = framework("udim", {type = "position", xScale = 0, xOffset = 0, yScale = 0, yOffset = framework.menu.offset, relativeFrom = window.textShadow}),
            Visible = framework.menu.open,
            Transparency = 1,
            Color = nRGB(0,0,0)
        }})
    
        item.drawings.text = framework("draw", {class = "Text", properties = {
            Text = item.text,
            Font = framework.theme.font,
            Size = framework.theme.fontSize,
            Position = framework("udim", {type = "position", xScale = 0, xOffset = -1, yScale = 0, yOffset = -1, relativeFrom = item.drawings.textShadow}),
            Visible = framework.menu.open,
            Transparency = 1,
            Color = nRGB(255,255,255)
        }})

        function item:setText(text)
            item.drawings.textShadow.Text = text
            item.drawings.text.Text = text
        end

        function item:hover(bool)
            if bool then
                item.drawings.text.Color = nRGB(2,144,252)
            else
                item.drawings.text.Color = nRGB(255,255,255)    
            end
        end

        framework.menu.offset += 15 

        if #framework.menu.list == 0 then
            window:selectItem({item = item})
        end
        
        insert(framework.menu.list, item)
        return item
    end

    function window:createInt(args)
        local item = {text = args.text or "", drawings = {}, type = args.type or "int", flag = args.flag or "",  precision = args.offset or 1, value = args.default or 0, callback = args.callback or function() end}

        item.drawings.textShadow = framework("draw", {class = "Text", properties = {
            Text = item.text.. " <"..tostring(item.value)..">",
            Font = framework.theme.font,
            Size = framework.theme.fontSize,
            Position = framework("udim", {type = "position", xScale = 0, xOffset = 0, yScale = 0, yOffset = framework.menu.offset, relativeFrom = window.textShadow}),
            Visible = framework.menu.open,
            Transparency = 1,
            Color = nRGB(0,0,0)
        }})
    
        item.drawings.text = framework("draw", {class = "Text", properties = {
            Text = item.text.. " <"..item.value..">",
            Font = framework.theme.font,
            Size = framework.theme.fontSize,
            Position = framework("udim", {type = "position", xScale = 0, xOffset = -1, yScale = 0, yOffset = -1, relativeFrom = item.drawings.textShadow}),
            Visible = framework.menu.open,
            Transparency = 1,
            Color = nRGB(255,255,255)
        }})

        function item:offset(args)
            item.value += args.offset
            item.drawings.textShadow.Text = item.text.. " <"..item.value.."> <"
            item.drawings.text.Text = item.text.. " <"..item.value.."> <"
            framework.flags[item.flag] = item.value
            item.callback(item.value)
        end
        framework.flags[item.flag] = item.value
        item.callback(item.value)

        function item:setText(text)
            item.drawings.textShadow.Text = text
            item.drawings.text.Text = text
        end

        function item:hover(bool)
            if bool then
                item.drawings.text.Color = nRGB(2,144,252)
            else
                item.drawings.text.Color = nRGB(255,255,255)    
            end
        end

        function item:refresh()
            item.value = framework.flags[item.flag]
            item.drawings.textShadow.Text = item.text.. " <"..tostring(item.value)..">"
            item.drawings.text.Text = item.text.. " <"..tostring(item.value)..">"
            item.callback(item.value)
            if framework.menu.currentItem == item then
                item.drawings.textShadow.Text = item.text.. " <"..tostring(item.value).."> <"
                item.drawings.text.Text = item.text.. " <"..tostring(item.value).."> <"
                item:hover(true)
            end
        end
        
        framework.menu.offset += 15

        if #framework.menu.list == 0 then
            window:selectItem({item = item})
        end
        
        insert(framework.menu.list, item)
        return item
    end

    function window:createToggle(args)
        local item = {text = args.text or "", drawings = {}, type = args.type or "toggle", flag = args.flag or "", value = args.default or false, callback = args.callback or function() end}

        item.drawings.textShadow = framework("draw", {class = "Text", properties = {
            Text = item.text.. " <"..tostring(item.value)..">",
            Font = framework.theme.font,
            Size = framework.theme.fontSize,
            Position = framework("udim", {type = "position", xScale = 0, xOffset = 0, yScale = 0, yOffset = framework.menu.offset, relativeFrom = window.textShadow}),
            Visible = framework.menu.open,
            Transparency = 1,
            Color = nRGB(0,0,0)
        }})
    
        item.drawings.text = framework("draw", {class = "Text", properties = {
            Text = item.text.. " <"..tostring(item.value)..">",
            Font = framework.theme.font,
            Size = framework.theme.fontSize,
            Position = framework("udim", {type = "position", xScale = 0, xOffset = -1, yScale = 0, yOffset = -1, relativeFrom = item.drawings.textShadow}),
            Visible = framework.menu.open,
            Transparency = 1,
            Color = nRGB(255,255,255)
        }})

        function item:toggle()
            item.value = not item.value
            item.drawings.textShadow.Text = item.text.. " <"..tostring(item.value).."> <"
            item.drawings.text.Text = item.text.. " <"..(tostring(item.value)).."> <"
            framework.flags[item.flag] = item.value
            item.callback(item.value)
        end
        framework.flags[item.flag] = item.value
        item.callback(item.value)

        function item:setText(text)
            item.drawings.textShadow.Text = text
            item.drawings.text.Text = text
        end

        function item:hover(bool)
            if bool then
                item.drawings.text.Color = nRGB(2,144,252)
            else
                item.drawings.text.Color = nRGB(255,255,255)    
            end
        end

        function item:refresh()
            item.value = framework.flags[item.flag]
            item.drawings.textShadow.Text = item.text.. " <"..tostring(item.value)..">"
            item.drawings.text.Text = item.text.. " <"..tostring(item.value)..">"
            item.callback(item.value)
            if framework.menu.currentItem == item then
                item.drawings.textShadow.Text = item.text.. " <"..tostring(item.value).."> <"
                item.drawings.text.Text = item.text.. " <"..tostring(item.value).."> <"
                item:hover(true)
            end
        end

        framework.menu.offset += 15

        if #framework.menu.list == 0 then
            window:selectItem({item = item})
        end
        
        insert(framework.menu.list, item)
        return item
    end

    function window:createList(args)
        local item = {text = args.text or "", drawings = {}, type = args.type or "list", value = args.default or "none", flag = args.flag or "", list = args.list or {}, callback = args.callback or function() end}

        item.drawings.textShadow = framework("draw", {class = "Text", properties = {
            Text = item.text.. " <"..item.value..">",
            Font = framework.theme.font,
            Size = framework.theme.fontSize,
            Position = framework("udim", {type = "position", xScale = 0, xOffset = 0, yScale = 0, yOffset = framework.menu.offset, relativeFrom = window.textShadow}),
            Visible = framework.menu.open,
            Transparency = 1,
            Color = nRGB(0,0,0)
        }})
    
        item.drawings.text = framework("draw", {class = "Text", properties = {
            Text = item.text.. " <"..item.value..">",
            Font = framework.theme.font,
            Size = framework.theme.fontSize,
            Position = framework("udim", {type = "position", xScale = 0, xOffset = -1, yScale = 0, yOffset = -1, relativeFrom = item.drawings.textShadow}),
            Visible = framework.menu.open,
            Transparency = 1,
            Color = nRGB(255,255,255)
        }})

        function item:selectOption(option)
            item.value = option
            item.drawings.textShadow.Text = item.text.. " <"..item.value.."> <"
            item.drawings.text.Text = item.text.. " <"..item.value.."> <"
            framework.flags[item.flag] = item.value
            item.callback(item.value)
        end
        framework.flags[item.flag] = item.value
        item.callback(item.value)

        function item:setText(text)
            item.drawings.textShadow.Text = text
            item.drawings.text.Text = text
        end

        function item:hover(bool)
            if bool then
                item.drawings.text.Color = nRGB(2,144,252)
            else
                item.drawings.text.Color = nRGB(255,255,255)    
            end
        end

        function item:refresh()
            item.value = framework.flags[item.flag]
            item.drawings.textShadow.Text = item.text.. " <"..tostring(item.value)..">"
            item.drawings.text.Text = item.text.. " <"..tostring(item.value)..">"
            item.callback(item.value)
            if framework.menu.currentItem == item then
                item.drawings.textShadow.Text = item.text.. " <"..tostring(item.value).."> <"
                item.drawings.text.Text = item.text.. " <"..tostring(item.value).."> <"
                item:hover(true)
            end
        end

        framework.menu.offset += 15

        if #framework.menu.list == 0 then
            window:selectItem({item = item})
        end
        
        insert(framework.menu.list, item)
        return item
    end

    function window:createKeybind(args)
        local item = 
        {
        text = args.text or "",
        key = args.defaultKey.Name or "unbound",
        track = args.trackType or "Toggle",
        state = false,
        drawings = {},
        type = args.type or "keybind",
        callback = args.callback or function() end,
        flag = args.flag or ""
        }

        item.drawings.textShadow = framework("draw", {class = "Text", properties = {
            Text = item.text.. " <"..tostring(item.key)..">",
            Font = framework.theme.font,
            Size = framework.theme.fontSize,
            Position = framework("udim", {type = "position", xScale = 0, xOffset = 0, yScale = 0, yOffset = framework.menu.offset, relativeFrom = window.textShadow}),
            Visible = framework.menu.open,
            Transparency = 1,
            Color = nRGB(0,0,0)
        }})
    
        item.drawings.text = framework("draw", {class = "Text", properties = {
            Text = item.text.. " <"..tostring(item.key)..">",
            Font = framework.theme.font,
            Size = framework.theme.fontSize,
            Position = framework("udim", {type = "position", xScale = 0, xOffset = -1, yScale = 0, yOffset = -1, relativeFrom = item.drawings.textShadow}),
            Visible = framework.menu.open,
            Transparency = 1,
            Color = nRGB(255,255,255)
        }})

        function item:setKey(Input)
            if Input then
                item.key = Input.KeyCode.Name ~= "Unknown" and Input.KeyCode.Name or Input.UserInputType.Name
                item.drawings.textShadow.Text = item.text.. " <"..tostring(item.key).."> <"
                item.drawings.text.Text = item.text.. " <"..tostring(item.key).."> <"
                framework.flags[item.flag][1] = item.key
            else
                item.key = "unbound"
                item.state = false
                item.drawings.textShadow.Text = item.text.. " <unbound> <"
                item.drawings.text.Text = item.text.. " <unbound> <"
                framework.flags[item.flag][1] = item.key
            end
        end

        function item:setText(text)
            item.drawings.textShadow.Text = text
            item.drawings.text.Text = text
        end

        function item:hover(bool)
            if bool then
                item.drawings.text.Color = nRGB(2,144,252)
            else
                item.drawings.text.Color = nRGB(255,255,255)    
            end
        end

        function item:refresh()
            item.key = framework.flags[item.flag][1]
            item.state = framework.flags[item.flag][2]
            item.drawings.textShadow.Text = item.text.. " <"..tostring(item.key)..">"
            item.drawings.text.Text = item.text.. " <"..tostring(item.key)..">"
            item:hover(false)
            if framework.menu.currentItem == item then
                item.drawings.textShadow.Text = item.text.. " <"..tostring(item.key).."> <"
                item.drawings.text.Text = item.text.. " <"..tostring(item.key).."> <"
                item:hover(true)
            end
        end

        framework.menu.offset += 15

        if #framework.menu.list == 0 then
            window:selectItem({item = item})
        end

        framework.flags[item.flag] = {item.key, item.state}

        insert(framework.menu.keybinds, item)
        insert(framework.menu.list, item)
        return item
    end

    self("createConnection", {connection = UserInputService.InputBegan, name = "MenuInputBegan", callback = function(Input)
        if self.menu.bindingKey then
            self.menu.bindingKey = false
            if Input.KeyCode.Name ~= "Unknown" and Input.KeyCode.Name:upper() or Input.UserInputType.Name:upper() then
                if Input.KeyCode.Name == "Delete" then
                    self.menu.currentItem:setKey()
                else
                    self.menu.currentItem:setKey(Input)
                end
            end
        else
            if Input.KeyCode == Enum.KeyCode.Home then
                for i,v in next, self.menu.drawings do
                    if type(v) == 'table' and rawget(v, '__OBJECT_EXISTS') then
                        v.Visible = not v.Visible
                    end
                end
                self.menu.open = not self.menu.open
            elseif Input.KeyCode == Enum.KeyCode.End then
                self("unload")
            elseif Input.KeyCode == Enum.KeyCode.PageUp then
                self("saveConfig")
            elseif Input.KeyCode == Enum.KeyCode.PageDown then
                self("loadConfig")
            else
                if self.menu.open then
                    if Input.KeyCode == Enum.KeyCode.KeypadEight then
                        local indexCurrent = find(framework.menu.list, framework.menu.currentItem)
                        if indexCurrent then
                            if framework.menu.list[indexCurrent-1] ~= nil then
                                window:selectItem({item = framework.menu.list[indexCurrent-1]})
                            else
                                window:selectItem({item = framework.menu.list[#framework.menu.list]})
                            end
                        end
                    end
                    if Input.KeyCode == Enum.KeyCode.KeypadTwo then
                        local indexCurrent = find(framework.menu.list, framework.menu.currentItem)
                        if indexCurrent then
                            if framework.menu.list[indexCurrent+1] ~= nil then
                                window:selectItem({item = framework.menu.list[indexCurrent+1]})
                            else
                                window:selectItem({item = framework.menu.list[1]})
                            end
                        end
                    end
                    if Input.KeyCode == Enum.KeyCode.KeypadSix then
                        if self.menu.currentItem.type ~= "label" then
                            if self.menu.currentItem.type == "int" then
                                self.menu.currentItem:offset({offset = self.menu.currentItem.precision})
                            end
                            if self.menu.currentItem.type == "toggle" then
                                self.menu.currentItem:toggle()
                            end
                            if self.menu.currentItem.type == "list" then
                                local indexCurrent = find(self.menu.currentItem.list, self.menu.currentItem.value)
                                if indexCurrent then
                                    if self.menu.currentItem.list[indexCurrent+1] ~= nil then
                                        self.menu.currentItem:selectOption(self.menu.currentItem.list[indexCurrent+1])
                                    end
                                end
                            end
                            if self.menu.currentItem.type == "keybind" then
                                self.menu.currentItem:setText(self.menu.currentItem.text.." <...> <")
                               self.menu.bindingKey = true
                            end
                        end
                    end 
                    if Input.KeyCode == Enum.KeyCode.KeypadFour then
                        if self.menu.currentItem.type ~= "label" then
                            if self.menu.currentItem.type == "int" then
                                self.menu.currentItem:offset({offset = -self.menu.currentItem.precision})
                            end
                            if self.menu.currentItem.type == "toggle" then
                                self.menu.currentItem:toggle()
                            end
                            if self.menu.currentItem.type == "list" then
                                local indexCurrent = find(self.menu.currentItem.list, self.menu.currentItem.value)
                                if indexCurrent then
                                    if self.menu.currentItem.list[indexCurrent-1] ~= nil then
                                        self.menu.currentItem:selectOption(self.menu.currentItem.list[indexCurrent-1])
                                    end
                                end
                            end
                            if self.menu.currentItem.type == "keybind" then
                                self.menu.currentItem:setText(self.menu.currentItem.text.." <...> <")
                               self.menu.bindingKey = true
                            end
                        end
                    end
                end
                for i,v in next, self.menu.keybinds do
                    if v.key ~= "unbound" then 
                        if string.find(v.key, "Mouse") then
                            if Input.UserInputType == Enum.UserInputType[v.key] then
                                if v.track == "Hold" then
                                    v.state = true
                                    self.flags[v.flag][2] = true
                                    v.callback(v)
                                elseif v.track == "Toggle" then
                                    v.state = not v.state
                                    v.callback(v)
                                end
                            end
                        else
                            if Input.KeyCode == Enum.KeyCode[v.key] then
                                if v.track == "Hold" then
                                    v.state = true
                                    self.flags[v.flag][2] = true
                                    v.callback(v)
                                elseif v.track == "Toggle" then
                                    v.state = not v.state
                                    v.callback(v)
                                end
                            end
                        end
                    end
                end
            end
        end
    end})

    self("createConnection", {connection = UserInputService.InputEnded, name = "MenuInputEnded", callback = function(Input)
        for i,v in next, self.menu.keybinds do
            if v.key ~= "unbound" then
                if string.find(v.key, "Mouse") then
                    if Input.UserInputType == Enum.UserInputType[v.key] then
                        if v.track == "Hold" then
                            v.state = false
                            self.flags[v.flag][2] = false
                            v.callback(v)
                        end
                    end
                else
                    if Input.KeyCode == Enum.KeyCode[v.key] then
                        if v.track == "Hold" then
                            v.state = false
                            self.flags[v.flag][2] = false
                            v.callback(v)
                        end
                    end
                end
            end
        end
    end})

    return window
end

function framework:createScreenLabel(args)
    local screenLabel = {text = args.text or "Screen Label", position = args.position or functions["nVector2"](95,constants["15"]), drawings = {}}

    screenLabel.drawings.labelShadow = framework("draw", {hidden = constants["true"], class = "Text", properties = {
        Text = screenLabel.text,
        Font = framework.theme.font,
        Size = framework.theme.fontSize,
        Position = framework("udim", {type = "position", xScale = constants["0"], xOffset = screenLabel.position.X+constants["1"], yScale = constants["0"], yOffset = screenLabel.position.Y+constants["1"]}),
        Visible = constants["true"],
        Transparency = constants["1"],
        Color = functions["nRGB"](constants["0"],constants["0"],constants["0"])
    }})

    screenLabel.drawings.label = framework("draw", {hidden = constants["true"], class = "Text", properties = {
        Text = screenLabel.text,
        Font = framework.theme.font,
        Size = framework.theme.fontSize,
        Position = framework("udim", {type = "position", xScale = constants["0"], xOffset = screenLabel.position.X, yScale = constants["0"], yOffset = screenLabel.position.Y}),
        Visible = constants["true"],
        Transparency = constants["1"],
        Color = functions["nRGB"](constants["255"],constants["255"],constants["255"])
    }})
    
    function screenLabel:changeText(text)
        screenLabel.text = text
        screenLabel.drawings.labelShadow.Text = text
        screenLabel.drawings.label.Text = text
    end

    functions["insert"](self.labels, screenLabel)
    return screenLabel
end

local client = {
    target = constants["nil"],
    targetHitPart = constants["nil"],
    packetVisualizer = constants["nil"],
    offsetVisualizer = constants["nil"],
    cursorOffset = functions["nVector2"](constants["0"],constants["0"]),
    Spin = constants["0"],
}

local fovCircle = framework("draw", {class = "Circle", hidden = constants["true"], properties = {
    Filled = constants["true"],
    Transparency = constants[".3"],
    Color = functions["nColor3"](constants["1"],constants["1"],constants["1"]),
}})

local deadZoneCircle = framework("draw", {class = "Circle", hidden = constants["true"], properties = {
    Filled = constants["true"],
    Transparency = constants[".1"],
    Color = functions["nColor3"](constants["0"],constants["0"],constants["0"]),
}})

function client.rotateYaw(CFRAME)
    local x, y, z = CFRAME:ToOrientation()
    return functions["nCFrame"](CFRAME.Position) * functions["nAngles"](constants["0"],y,constants["0"])
end

function client.floor(val)
    return functions["nVector2"](functions["floor"](val.X),functions["floor"](val.Y))
end

function client.returnCamera()
    return workspace.CurrentCamera
end

function client.returnBoundingBox(chr)
    if functions["FindFirstChild"](chr, "HumanoidRootPart") then
        local cf = chr.HumanoidRootPart.CFrame
        local cameraCFrame = client.returnCamera().CFrame
        local size = chr.HumanoidRootPart.Size + functions["nVector3"](constants["1"],4,constants["1"])

        local left, lvis = client.returnCamera().WorldToViewportPoint(client.returnCamera(),cf.p+(cameraCFrame.RightVector*-size.z))
        local right, rvis = client.returnCamera().WorldToViewportPoint(client.returnCamera(),cf.p+(cameraCFrame.RightVector*size.z))
        local top, tvis = client.returnCamera().WorldToViewportPoint(client.returnCamera(),cf.p+(cameraCFrame.UpVector*size.y)/constants["2"])
        local bottom, bvis = client.returnCamera().WorldToViewportPoint(client.returnCamera(),cf.p+(cameraCFrame.UpVector*-size.y)/constants["2"])

        if not lvis and not rvis and not tvis and not bvis then 
            return 
        end

        local width = functions["floor"](functions["abs"](left.x - right.x))
        local height = functions["floor"](functions["abs"](top.y - bottom.y))

        local pos = client.returnCamera().WorldToViewportPoint(client.returnCamera(),cf.Position)
        local size = functions["nVector2"](width, height)
        size = client.floor(size)

        return client.floor(functions["nVector2"](pos.x-(size.x/constants["2"]), pos.y-(size.y/constants["2"]))), size
    end
end

function client.catBoy(plr)
    local cosmetic = game:GetObjects("rbxassetid://6931306290")[constants["1"]]
    local catboyed = functions["nInstance"]("StringValue")
    catboyed.Name = "catboyed"
    cosmetic.Parent = ReplicatedStorage
    catboyed.Parent = plr.Character

    if plr.Character and functions["FindFirstChild"](plr.Character, "HumanoidRootPart") then
        for i,v in functions["next"], plr.Character:GetChildren() do
            if v:IsA("Accoutrement") then
                v.Handle.Transparency = constants["1"]
            elseif v:IsA("Shirt") then
                v.ShirtTemplate = "rbxassetid://6660070716"
            elseif v:IsA("Pants") then
                v.PantsTemplate = "rbxassetid://6660072921"
                v.Color3 = functions["nColor3"](constants["0"],constants["0"],constants["0"])
            end
        end
    end

    local ears = cosmetic.Ears:Clone()
    local hair = cosmetic.Hair:Clone()
    local earWeld = functions["nInstance"]("Weld",ears)
    local hairWeld = functions["nInstance"]("Weld",hair)
    ears.Parent = plr.Character
    hair.Parent = plr.Character

    earWeld.Part0 = ears.Handle
    hairWeld.Part0 = hair.Handle
    earWeld.Part1 = plr.Character.Head
    hairWeld.Part1 = plr.Character.Head

    earWeld.C0 = functions["nCFrame"](constants["0"],-constants[".75"],constants["0"])
    hairWeld.C0 = functions["nCFrame"](constants["0"],-constants[".3"],constants["0"])
end

function client.calculateTarget(method, hitPart)
    local MaxDist, Target = functions["huge"]
    local aimAt = hitPart
    local TheirPos, Dist
    if method == "Mouse" then
        for _,V in functions["next"], functions["GetPlayers"](Players) do
            if V ~= localPlayer then 
                if V.Team ~= localPlayer.Team or framework.flags["aimbotTeamkill"] then
                    if V.Character then
                        if functions["FindFirstChild"](V.Character, "Head") then
                            if functions["FindFirstChild"](V.Character, "Torso") or functions["FindFirstChild"](V.Character, "UpperTorso") then
                                local Torso = functions["FindFirstChild"](V.Character, "Torso") or functions["FindFirstChild"](V.Character, "UpperTorso")
                                if (functions["FindFirstChildOfClass"](V.Character, "Humanoid") and functions["FindFirstChildOfClass"](V.Character, "Humanoid").Health > constants["0"] and framework.flags["aimbotDead"])  or not framework.flags["aimbotDead"] then 
                                    if (Torso.Transparency ~= constants["1"] and framework.flags["aimbotInvisible"])  or not framework.flags["aimbotInvisible"] then 
                                        if (not functions["FindFirstChildOfClass"](V.Character, "ForceField") and framework.flags["aimbotForcefield"]) or not framework.flags["aimbotForcefield"] then 
                                            if aimAt == "Closest" then
                                                local mousePoint = functions["GetMouseLocation"](UserInputService)
                                                local headPoint = client.returnCamera().WorldToViewportPoint(client.returnCamera(),V.Character.Head.Position)
                                                local torsoPoint = client.returnCamera().WorldToViewportPoint(client.returnCamera(), Torso.Position)
                                                local headMag = (functions["nVector2"](headPoint.X, headPoint.Y) - functions["nVector2"](mousePoint.X, mousePoint.Y)).Magnitude
                                                local torsoMag = (functions["nVector2"](torsoPoint.X, torsoPoint.Y) - functions["nVector2"](mousePoint.X, mousePoint.Y)).Magnitude
                                                aimAt = headMag < torsoMag and "Head" or functions["tostring"](Torso)
                                            end
                                            if aimAt == "Torso" then
                                                if functions["tostring"](Torso) == "UpperTorso" then
                                                    aimAt = "UpperTorso"
                                                end
                                            end

                                            local Pos, Vis = client.returnCamera().WorldToViewportPoint(client.returnCamera(), V.Character[aimAt].Position)
                                            if Vis then
                                                TheirPos = functions["nVector2"](Pos.X, Pos.Y)
                                                Dist = (TheirPos - fovCircle.Position).Magnitude
                                                if (Dist < framework.flags["fovRadius"] and not framework.flags["aimbotIgnoreFOV"] or framework.flags["aimbotIgnoreFOV"]) and (Dist > framework.flags["deadZoneFOV"] and framework.flags["deadZone"] or not framework.flags["deadZone"]) then
                                                    if not localPlayer.Character then
                                                        break
                                                    end
                                                    if not functions["FindFirstChild"](localPlayer.Character, "Head") then
                                                        break
                                                    end
                                                    local Params = functions["nRayParams"]({FilterDescendantsInstances = {client.returnCamera(), localPlayer.Character}, FilterType = Enum.RaycastFilterType.Blacklist, IgnoreWater = constants["true"]})
                                                    local Result = Workspace.Raycast(Workspace, localPlayer.Character.Head.Position,(V.Character[aimAt].Position - localPlayer.Character.Head.Position).unit*constants["5000"], Params)
                                                    if (Result and Result.Instance and functions["IsDescendantOf"](Result.Instance, V.Character) and framework.flags["aimbotVisible"]) or not framework.flags["aimbotVisible"]  then
                                                        if Dist < MaxDist then
                                                            MaxDist = Dist
                                                            Target = V
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                        if framework.flags["masterAimbot"] and framework.flags["aimKey"][constants["2"]] and ((not client.isMouseButtonDown(Enum.UserInputType.MouseButton2) and framework.flags["aimbotNoLock"]) or not framework.flags["aimbotNoLock"]) then
                                            client.target = Target
                                            client.targetHitPart = aimAt
                                        else
                                            client.target = constants["nil"]
                                            client.targetHitPart = constants["nil"]
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    if method == "Distance" then
        for _,V in functions["next"], functions["GetPlayers"](Players) do
            if V ~= localPlayer then 
                if V.Team ~= localPlayer.Team or framework.flags["aimbotTeamkill"] then
                    if V.Character then
                        if functions["FindFirstChild"](V.Character, "Head") then
                            if functions["FindFirstChild"](V.Character, "Torso") or functions["FindFirstChild"](V.Character, "UpperTorso") then
                                local Torso = functions["FindFirstChild"](V.Character, "Torso") or functions["FindFirstChild"](V.Character, "UpperTorso")
                                if (functions["FindFirstChildOfClass"](V.Character, "Humanoid") and functions["FindFirstChildOfClass"](V.Character, "Humanoid").Health > constants["0"] and framework.flags["aimbotDead"])  or not framework.flags["aimbotDead"] then 
                                    if (Torso.Transparency ~= constants["1"] and framework.flags["aimbotInvisible"])  or not framework.flags["aimbotInvisible"] then 
                                        if (not functions["FindFirstChildOfClass"](V.Character, "ForceField") and framework.flags["aimbotForcefield"]) or not framework.flags["aimbotForcefield"] then 
                                            if aimAt == "Closest" then
                                                local mousePoint = functions["GetMouseLocation"](UserInputService)
                                                local headPoint = client.returnCamera().WorldToViewportPoint(client.returnCamera(),V.Character.Head.Position)
                                                local torsoPoint = client.returnCamera().WorldToViewportPoint(client.returnCamera(), Torso.Position)
                                                local headMag = (functions["nVector2"](headPoint.X, headPoint.Y) - functions["nVector2"](mousePoint.X, mousePoint.Y)).Magnitude
                                                local torsoMag = (functions["nVector2"](torsoPoint.X, torsoPoint.Y) - functions["nVector2"](mousePoint.X, mousePoint.Y)).Magnitude
                                                aimAt = headMag < torsoMag and "Head" or functions["tostring"](Torso)
                                            end
                                            if aimAt == "Torso" then
                                                if functions["tostring"](Torso) == "UpperTorso" then
                                                    aimAt = "UpperTorso"
                                                end
                                            end

                                            local Pos, Vis = client.returnCamera().WorldToViewportPoint(client.returnCamera(), V.Character[aimAt].Position)
                                            if Vis then
                                                TheirPos = functions["nVector2"](Pos.X, Pos.Y)
                                                Dist = localPlayer.DistanceFromCharacter(localPlayer, V.Character[aimAt].Position)
                                                local Mag = (TheirPos - fovCircle.Position).Magnitude
                                                if (Mag < framework.flags["fovRadius"] and not framework.flags["aimbotIgnoreFOV"] or framework.flags["aimbotIgnoreFOV"]) and (Mag > framework.flags["deadZoneFOV"] and framework.flags["deadZone"] or not framework.flags["deadZone"]) then
                                                    if not localPlayer.Character then
                                                        break
                                                    end
                                                    if not functions["FindFirstChild"](localPlayer.Character, "Head") then
                                                        break
                                                    end
                                                    local Params = functions["nRayParams"]({FilterDescendantsInstances = {client.returnCamera(), localPlayer.Character}, FilterType = Enum.RaycastFilterType.Blacklist, IgnoreWater = constants["true"]})
                                                    local Result = Workspace.Raycast(Workspace, localPlayer.Character.Head.Position,(V.Character[aimAt].Position - localPlayer.Character.Head.Position).unit*constants["5000"], Params)
                                                    if (Result and Result.Instance and functions["IsDescendantOf"](Result.Instance, V.Character) and framework.flags["aimbotVisible"]) or not framework.flags["aimbotVisible"]  then
                                                        if Dist < MaxDist then
                                                            MaxDist = Dist
                                                            Target = V
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                        if framework.flags["masterAimbot"] and framework.flags["aimKey"][constants["2"]] and ((not client.isMouseButtonDown(Enum.UserInputType.MouseButton2) and framework.flags["aimbotNoLock"]) or not framework.flags["aimbotNoLock"]) then
                                            client.target = Target
                                            client.targetHitPart = aimAt
                                        else
                                            client.target = constants["nil"]
                                            client.targetHitPart = constants["nil"]
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    if method == "Health" then
        for _,V in functions["next"], functions["GetPlayers"](Players) do
            if V ~= localPlayer then 
                if V.Team ~= localPlayer.Team or framework.flags["aimbotTeamkill"] then
                    if V.Character then
                        if functions["FindFirstChild"](V.Character, "Head") then
                            if functions["FindFirstChild"](V.Character, "Torso") or functions["FindFirstChild"](V.Character, "UpperTorso") then
                                local Torso = functions["FindFirstChild"](V.Character, "Torso") or functions["FindFirstChild"](V.Character, "UpperTorso")
                                if (functions["FindFirstChildOfClass"](V.Character, "Humanoid") and functions["FindFirstChildOfClass"](V.Character, "Humanoid").Health > constants["0"] and framework.flags["aimbotDead"])  or not framework.flags["aimbotDead"] then 
                                    if (Torso.Transparency ~= constants["1"] and framework.flags["aimbotInvisible"])  or not framework.flags["aimbotInvisible"] then 
                                        if (not functions["FindFirstChildOfClass"](V.Character, "ForceField") and framework.flags["aimbotForcefield"]) or not framework.flags["aimbotForcefield"] then 
                                            if aimAt == "Closest" then
                                                local mousePoint = functions["GetMouseLocation"](UserInputService)
                                                local headPoint = client.returnCamera().WorldToViewportPoint(client.returnCamera(),V.Character.Head.Position)
                                                local torsoPoint = client.returnCamera().WorldToViewportPoint(client.returnCamera(), Torso.Position)
                                                local headMag = (functions["nVector2"](headPoint.X, headPoint.Y) - functions["nVector2"](mousePoint.X, mousePoint.Y)).Magnitude
                                                local torsoMag = (functions["nVector2"](torsoPoint.X, torsoPoint.Y) - functions["nVector2"](mousePoint.X, mousePoint.Y)).Magnitude
                                                aimAt = headMag < torsoMag and "Head" or functions["tostring"](Torso)
                                            end
                                            if aimAt == "Torso" then
                                                if functions["tostring"](Torso) == "UpperTorso" then
                                                    aimAt = "UpperTorso"
                                                end
                                            end

                                            local Pos, Vis = client.returnCamera().WorldToViewportPoint(client.returnCamera(), V.Character[aimAt].Position)
                                            if Vis then
                                                TheirPos = functions["nVector2"](Pos.X, Pos.Y)
                                                Dist = functions["FindFirstChildOfClass"](V.Character, "Humanoid").Health
                                                local Mag = (TheirPos - fovCircle.Position).Magnitude
                                                if (Mag < framework.flags["fovRadius"] and not framework.flags["aimbotIgnoreFOV"] or framework.flags["aimbotIgnoreFOV"]) and (Mag > framework.flags["deadZoneFOV"] and framework.flags["deadZone"] or not framework.flags["deadZone"]) then
                                                    if not localPlayer.Character then
                                                        break
                                                    end
                                                    if not functions["FindFirstChild"](localPlayer.Character, "Head") then
                                                        break
                                                    end
                                                    local Params = functions["nRayParams"]({FilterDescendantsInstances = {client.returnCamera(), localPlayer.Character}, FilterType = Enum.RaycastFilterType.Blacklist, IgnoreWater = constants["true"]})
                                                    local Result = Workspace.Raycast(Workspace, localPlayer.Character.Head.Position,(V.Character[aimAt].Position - localPlayer.Character.Head.Position).unit*constants["5000"], Params)
                                                    if (Result and Result.Instance and functions["IsDescendantOf"](Result.Instance, V.Character) and framework.flags["aimbotVisible"]) or not framework.flags["aimbotVisible"]  then
                                                        if Dist < MaxDist then
                                                            MaxDist = Dist
                                                            Target = V
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                        if framework.flags["masterAimbot"] and framework.flags["aimKey"][constants["2"]] and ((not client.isMouseButtonDown(Enum.UserInputType.MouseButton2) and framework.flags["aimbotNoLock"]) or not framework.flags["aimbotNoLock"]) then
                                            client.target = Target
                                            client.targetHitPart = aimAt
                                        else
                                            client.target = constants["nil"]
                                            client.targetHitPart = constants["nil"]
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end

function client.renderCircle(Point, Radius)
    local Circle = {}

    local points = {}
    local lines = {}

    function Circle.Destroy()
        Circle.Stepped:Disconnect()
        for i,v in functions["ipairs"](lines) do
            if functions["rawget"](v, "__OBJECT_EXISTS") then
                v:Remove()
            end
        end
        for i,v in functions["ipairs"](points) do
            points[i] = constants["nil"]
        end
    end

    local ixAxis = Point.X
    local iyAxis = Point.Y
    local izAxis = Point.Z

    for i = constants["0"], constants['360'], constants["10"] do
        local xOffset = ixAxis + Radius * functions["cos"](functions["rad"](i))
        local zOffset = izAxis + Radius * functions["sin"](functions["rad"](i))
        local Result = functions["nVector3"](xOffset, iyAxis, zOffset)

        functions["insert"](points, Result)
    end

    for _,v in functions["ipairs"](points) do
        local line = framework("draw", {hidden = constants["true"], class = "Line", properties = {
            Visible = constants["true"],
            Transparency = constants["1"],
            Color = functions["nColor3"](constants["1"],constants["1"],constants["1"]),
            Thickness = constants["1"],
        }})
        functions["insert"](lines, line)
    end

    Circle.Stepped = RunService.RenderStepped:Connect(function()
        local xAxis = Point.X
        local yAxis = Point.Y
        local zAxis = Point.Z

        for i,v in functions["ipairs"](points) do
            points[i] = constants["nil"]
        end

        for i = constants["0"], constants['360'], constants["10"] do
            local xOffset = xAxis + Radius * functions["cos"](functions["rad"](i))
            local zOffset = zAxis + Radius * functions["sin"](functions["rad"](i))
            local Result = functions["nVector3"](xOffset, yAxis, zOffset)
    
            functions["insert"](points, Result)
        end

        for i,v in functions["ipairs"](lines) do
            local nextPoint = points[i+constants["1"]]
            if nextPoint ~= constants["nil"] then
                local currentPointPosition,isCurrentVisible = client.returnCamera().WorldToViewportPoint(client.returnCamera(),points[i])
                local nextPointPosition,isNextVisible = client.returnCamera().WorldToViewportPoint(client.returnCamera(),nextPoint)
                if not isCurrentVisible and not isNextVisible then
                    if functions["rawget"](v, "__OBJECT_EXISTS") then
                        v.Visible = constants["false"]
                    end
                else
                    if functions["rawget"](v, "__OBJECT_EXISTS") then
                        v.Visible = constants["true"]
                        v.From = functions["nVector2"](currentPointPosition.X,currentPointPosition.Y)
                        v.To = functions["nVector2"](nextPointPosition.X,nextPointPosition.Y)
                    end
                end
            end
        end
    end)
    return Circle
end

function client.isMouseButtonDown(inputType)
 for _,button in pairs(UserInputService:GetMouseButtonsPressed()) do
  if button.UserInputType == inputType then
   return constants["true"]
  end
 end
 return constants["false"]
end

function client.drawPlayerESP(requestedPlayer)
    local ESP = {name = requestedPlayer.Name, drawings = {}}

    ESP.drawings.inline = framework("draw", {hidden = constants["true"], class = "Square", properties = {
        Transparency = constants["1"],
        Thickness = constants["1"],
        Color = functions["nRGB"](constants["0"], constants["0"], constants["0"]),
    }})
    
    ESP.drawings.box = framework("draw", {hidden = constants["true"], class = "Square", properties = {
        Transparency = constants["1"],
        Thickness = constants["1"],
        Color = functions["nRGB"](constants["255"], constants["255"], constants["255"]),
    }})

    ESP.drawings.outline = framework("draw", {hidden = constants["true"], class = "Square", properties = {
        Transparency = constants["1"],
        Thickness = constants["1"],
        Color = functions["nRGB"](constants["0"], constants["0"], constants["0"]),
    }})

    ESP.drawings.healthBar = framework("draw", {hidden = constants["true"], class = "Square", properties = {
        Transparency = constants["1"],
        Thickness = constants["1"],
        Filled = constants["true"],
        Color = functions["nRGB"](constants["0"], constants["0"], constants["0"]),
    }})

    ESP.drawings.healthBarColor = framework("draw", {hidden = constants["true"], class = "Square", properties = {
        Transparency = constants["1"],
        Thickness = constants["1"],
        Filled = constants["true"],
        Color = functions["nRGB"](constants["0"], constants["255"], constants["0"]),
    }})

    ESP.drawings.nameShadow = framework("draw", {hidden = constants["true"], class = "Text", properties = {
        Transparency = constants["1"],
        Color = functions["nColor3"](constants["0"],constants["0"],constants["0"]),
        Text = ESP.name,
        Center = constants["true"],
        Font = framework.theme.font,
        Size = framework.theme.fontSize,
    }})

    ESP.drawings.name = framework("draw", {hidden = constants["true"], class = "Text", properties = {
        Transparency = constants["1"],
        Color = functions["nColor3"](constants["255"],constants["255"],constants["255"]),
        Text = ESP.name,
        Center = constants["true"],
        Font = framework.theme.font,
        Size = framework.theme.fontSize,
    }})

    ESP.drawings.healthTextShadow = framework("draw", {hidden = constants["true"], class = "Text", properties = {
        Transparency = constants["1"],
        Color = functions["nColor3"](constants["0"],constants["0"],constants["0"]),
        Text = ESP.name,
        Center = constants["true"],
        Font = framework.theme.font,
        Size = framework.theme.fontSize,
    }})

    ESP.drawings.healthText = framework("draw", {hidden = constants["true"], class = "Text", properties = {
        Transparency = constants["1"],
        Color = functions["nColor3"](constants["255"],constants["255"],constants["255"]),
        Text = ESP.name,
        Center = constants["true"],
        Font = framework.theme.font,
        Size = framework.theme.fontSize,
    }})

    function ESP.Destroy()
        ESP.Stepped:Disconnect()
        for i,v in functions["next"], ESP.drawings do
            if functions["type"](v) == 'table' and functions["rawget"](v, '__OBJECT_EXISTS') then
                v.Remove()
            end
        end
    end

    ESP.Stepped = RunService.RenderStepped:Connect(function()
        if not requestedPlayer then
            ESP.Destroy()
            return
        end

        if not (requestedPlayer.Character and functions["FindFirstChildOfClass"](requestedPlayer.Character, "Humanoid") and functions["FindFirstChildOfClass"](requestedPlayer.Character, "Humanoid").Health > constants["0"]) then  
            for i,v in functions["next"], ESP.drawings do
                if functions["rawget"](v, "__OBJECT_EXISTS") then
                    v.Visible = constants["false"]
                end
            end
            return
        end

        local pos, size = client.returnBoundingBox(requestedPlayer.Character)
        if pos then
            local boxvis = size.x+size.y > constants["8"]
            if functions["rawget"](ESP.drawings.name, '__OBJECT_EXISTS') and functions["rawget"](ESP.drawings.nameShadow, '__OBJECT_EXISTS') and functions["rawget"](ESP.drawings.box, '__OBJECT_EXISTS') and functions["rawget"](ESP.drawings.outline, '__OBJECT_EXISTS') and functions["rawget"](ESP.drawings.healthBar, '__OBJECT_EXISTS') and functions["rawget"](ESP.drawings.healthBarColor, '__OBJECT_EXISTS') and functions["rawget"](ESP.drawings.healthTextShadow, '__OBJECT_EXISTS') and functions["rawget"](ESP.drawings.healthText, '__OBJECT_EXISTS') then
                ESP.drawings.name.Visible = (framework.flags["masterESP"] and framework.flags["nameESP"]) and (framework.flags["teamESP"] and requestedPlayer.Team ~= localPlayer.Team or not framework.flags["teamESP"])
                ESP.drawings.nameShadow.Visible = (framework.flags["masterESP"] and framework.flags["nameESP"]) and (framework.flags["teamESP"] and requestedPlayer.Team ~= localPlayer.Team or not framework.flags["teamESP"])
                ESP.drawings.box.Visible = boxvis and (framework.flags["masterESP"] and framework.flags["boxESP"]) and (framework.flags["teamESP"] and requestedPlayer.Team ~= localPlayer.Team or not framework.flags["teamESP"])
                ESP.drawings.outline.Visible = boxvis and (framework.flags["masterESP"] and framework.flags["boxESP"]) and (framework.flags["teamESP"] and requestedPlayer.Team ~= localPlayer.Team or not framework.flags["teamESP"])
                ESP.drawings.inline.Visible = boxvis and (framework.flags["masterESP"] and framework.flags["boxESP"]) and (framework.flags["teamESP"] and requestedPlayer.Team ~= localPlayer.Team or not framework.flags["teamESP"])
                ESP.drawings.healthBar.Visible = boxvis and (framework.flags["masterESP"] and framework.flags["healthESP"]) and (framework.flags["teamESP"] and requestedPlayer.Team ~= localPlayer.Team or not framework.flags["teamESP"])
                ESP.drawings.healthBarColor.Visible = boxvis and (framework.flags["masterESP"] and framework.flags["healthESP"]) and (framework.flags["teamESP"] and requestedPlayer.Team ~= localPlayer.Team or not framework.flags["teamESP"])
                ESP.drawings.healthTextShadow.Visible = boxvis and functions["FindFirstChildOfClass"](requestedPlayer.Character, "Humanoid").Health < functions["FindFirstChildOfClass"](requestedPlayer.Character, "Humanoid").MaxHealth and (framework.flags["masterESP"] and framework.flags["healthESP"]) and (framework.flags["teamESP"] and requestedPlayer.Team ~= localPlayer.Team or not framework.flags["teamESP"])
                ESP.drawings.healthText.Visible = boxvis and functions["FindFirstChildOfClass"](requestedPlayer.Character, "Humanoid").Health < functions["FindFirstChildOfClass"](requestedPlayer.Character, "Humanoid").MaxHealth and (framework.flags["masterESP"] and framework.flags["healthESP"]) and (framework.flags["teamESP"] and requestedPlayer.Team ~= localPlayer.Team or not framework.flags["teamESP"])

                ESP.drawings.box.Size = size
                ESP.drawings.box.Position = pos
                ESP.drawings.outline.Size = size+functions["nVector2"](constants["2"],constants["2"])
                ESP.drawings.outline.Position = pos-functions["nVector2"](constants["1"], constants["1"])
                ESP.drawings.inline.Size = size-functions["nVector2"](constants["2"],constants["2"])
                ESP.drawings.inline.Position = pos+functions["nVector2"](constants["1"], constants["1"])
                ESP.drawings.name.Position = pos+functions["nVector2"](size.x/constants["2"], -constants["20"])
                ESP.drawings.nameShadow.Position = ESP.drawings.name.Position + functions["nVector2"](constants["1"],constants["1"])

                ESP.drawings.box.Color = client.target == requestedPlayer and functions["nRGB"](constants["255"],constants["0"],constants["0"]) or functions["nRGB"](constants["255"],constants["255"],constants["255"])
                ESP.drawings.name.Color = client.target == requestedPlayer and functions["nRGB"](constants["255"],constants["0"],constants["0"]) or functions["nRGB"](constants["255"],constants["255"],constants["255"])
                ESP.drawings.healthText.Color = client.target == requestedPlayer and functions["nRGB"](constants["255"],constants["0"],constants["0"]) or functions["nRGB"](constants["255"],constants["255"],constants["255"])

                ESP.drawings.healthBar.Size = functions["nVector2"](constants["4"], size.y+constants["2"])
                ESP.drawings.healthBar.Position = functions["nVector2"](ESP.drawings.box.Position.x-constants["6"], ESP.drawings.outline.Position.y)
                ESP.drawings.healthBarColor.Size = functions["nVector2"](ESP.drawings.healthBar.Size.x-constants["2"], (ESP.drawings.healthBar.Size.y-constants["2"])*(requestedPlayer.Character:FindFirstChildOfClass("Humanoid").Health/requestedPlayer.Character:FindFirstChildOfClass("Humanoid").MaxHealth))
                ESP.drawings.healthBarColor.Position = (ESP.drawings.healthBar.Position+functions["nVector2"](constants["1"], ESP.drawings.healthBar.Size.y-constants["1"]))-functions["nVector2"](constants["0"], ESP.drawings.healthBarColor.Size.y)
                if ESP.drawings.healthText.Visible then
                    ESP.drawings.healthText.Position = ESP.drawings.healthBarColor.Position-functions["nVector2"](constants["0"], ESP.drawings.healthText.Size/constants["2"])
                    ESP.drawings.healthText.Text = functions["tostring"](functions["floor"](functions["FindFirstChildOfClass"](requestedPlayer.Character, "Humanoid").Health))
                    ESP.drawings.healthTextShadow.Position = ESP.drawings.healthText.Position + functions["nVector2"](constants["1"],constants["1"])
                    ESP.drawings.healthTextShadow.Text = functions["tostring"](functions["floor"](functions["FindFirstChildOfClass"](requestedPlayer.Character, "Humanoid").Health))
                end
            end
        else
            for i,v in functions["next"], ESP.drawings do
                if functions["rawget"](v, "__OBJECT_EXISTS") then
                    v.Visible = constants["false"]
                end
            end
        end
    end)

    framework.esp[ESP.name] = ESP
end

local window = framework:createWindow({name = ""})

local aimbotToggle = window:createToggle({text = "Aimbot", flag = "masterAimbot"})
local aimKey = window:createKeybind({text = "AimKey", defaultKey = Enum.UserInputType.MouseButton1, trackType = "Hold", flag = "aimKey", callback = function(tbl)
    if tbl.state then
        if framework.flags["aimbotSticky"] then
            repeat 
                client.calculateTarget(framework.flags["aimbotMethod"], framework.flags["hitPart"])
                RunService.Heartbeat:Wait()
            until client.target
        end
    else
        client.target = constants["nil"]
        client.targetHitPart = constants["nil"]
    end
end})
local fovSlider = window:createInt({text = "FOV", default = constants["100"], offset = constants["10"], flag = "fovRadius"})
local sensitivitySlider = window:createInt({text = "Sensitivity", default = constants["1"], offset = constants[".1"], flag = "aimbotSensitivity"})
local smoothnessSlider = window:createInt({text = "Smoothness", default = constants["1"], offset = constants["1"], flag = "aimbotSmoothness"})
local fovToggle = window:createToggle({text = "Show FOV", default = constants["true"], flag = "showFOV"})
local deadzoneToggle = window:createToggle({text = "Dead Zone", flag = "deadZone"})
local deadzonefovSlider = window:createInt({text = "Dead Zone FOV", default = constants["20"], offset = constants["10"], flag = "deadZoneFOV"})
local deadzonefovToggle = window:createToggle({text = "Show Dead Zone", default = constants["true"], flag = "showDeadZone"})
local hitPartList = window:createList({text = "Hitbox", default = "Head", list = {"Head", "Torso", "Closest"}, flag = "hitPart"})
local deadToggle = window:createToggle({text = "Dead Check", default = constants["true"], flag = "aimbotDead"})
local teamkillToggle = window:createToggle({text = "Teamkill", flag = "aimbotTeamkill"})
local forcefieldToggle = window:createToggle({text = "ForceField Check", flag = "aimbotForcefield"})
local InvisToggle = window:createToggle({text = "Invisible Check", default = constants["false"], flag = "aimbotInvisible"})
local visibleToggle = window:createToggle({text = "Visible Check", flag = "aimbotVisible"})
local nonStickyToggle = window:createToggle({text = "Non-Sticky Aim", flag = "aimbotSticky"})
local ignoreFOVToggle = window:createToggle({text = "Ignore FOV", flag = "aimbotIgnoreFOV"})
local methodList = window:createList({text = "Method", default = "Mouse", list = {"Mouse", "Distance", "Health"}, flag = "aimbotMethod"})
local dontLockToggle = window:createToggle({text = "Don't Lock when Right Click", flag = "aimbotNoLock"})
local cursorCalibrationKey = window:createKeybind({text = "Cursor Calibration Key", defaultKey = Enum.KeyCode.F1, flag = "cursorCalibrationKey", callback = function(tbl)
    if not tbl.state then
        local mousePosition = functions["GetMouseLocation"](UserInputService)
        if functions["type"](client.offsetVisualizer) == 'table' and functions["rawget"](client.offsetVisualizer, '__OBJECT_EXISTS') then
            client.offsetVisualizer:Remove()
            client.offsetVisualizer = constants["nil"]
        end
        client.cursorOffset = functions["nVector2"](screenCenter.X-mousePosition.X,screenCenter.Y-mousePosition.Y)
    else
        client.offsetVisualizer = framework("draw", {class = "Circle", hidden = constants["true"], properties = {
            Transparency = constants[".5"],
            Radius = constants["10"],
            Color = functions["nRGB"](constants["255"], constants["0"], constants["0"]),
            Filled = constants["true"],
            Visible = constants["true"],
            Position = screenCenter
        }})
    end
end})

local triggerbotToggle = window:createToggle({text = "Triggerbot", flag = "masterTriggerbot"})
local delaySlider = window:createInt({text = "Delay", offset = constants["10"], flag = "triggerbotDelay"})
local durationSlider = window:createInt({text = "Duration", offset = constants["10"], flag = "triggerbotDuration"})
local triggerTeamKillToggle = window:createToggle({text = "Teamkill", flag = "triggerbotTeamkill"})
local triggerDeadCheckToggle = window:createToggle({text = "Dead Check", flag = "triggerbotDead"})
local triggerDeadCheckToggle = window:createToggle({text = "Forcefield Check", flag = "triggerbotForcefield"})
local triggerInvisToggle = window:createToggle({text = "Invisible Check", default = constants["true"], flag = "triggerbotInvisible"})
local triggerKey = window:createKeybind({text = "TriggerKey", defaultKey = Enum.KeyCode.LeftAlt, trackType = "Hold", flag = "triggerKey"})

local espToggle = window:createToggle({text = "ESP", flag = "masterESP"})
local boxToggle = window:createToggle({text = "Boxes", flag = "boxESP"})
local healthToggle = window:createToggle({text = "Health", flag = "healthESP"})
local nameToggle = window:createToggle({text = "Name", flag = "nameESP"})
local hideTeamToggle = window:createToggle({text = "Hide Team", flag = "teamESP"})

local catBoyKey = window:createKeybind({text = "Catboy", defaultKey = Enum.KeyCode.F2, flag = "catBoyKey", callback = function()
    for _,v in functions["next"], functions["GetPlayers"](Players) do
        if v.Character and functions["FindFirstChild"](v.Character, "HumanoidRootPart") then
            if not functions["FindFirstChild"](v.Character, "catboyed") then
                client.catBoy(v)
            end
        end
    end
end})
local packetChokeOnKey = window:createKeybind({text = "Packet Choke", defaultKey = Enum.KeyCode.LeftControl, flag = "packetChokeKey", callback = function(tbl) -- Exploits
    if tbl.state then
        if localPlayer.Character and functions["FindFirstChild"](localPlayer.Character, "HumanoidRootPart") then
            NetworkClient:SetOutgoingKBPSLimit(constants["1"])
            client.packetVisualizer = client.renderCircle(functions["FindFirstChild"](localPlayer.Character, "HumanoidRootPart").Position, constants["5"])
        end
    else
        if client.packetVisualizer then
            NetworkClient:SetOutgoingKBPSLimit(constants["9e9"])
            client.packetVisualizer.Destroy()
            client.packetVisualizer = constants["nil"]
        end 
    end
end})
local clickTpOnKey = window:createKeybind({text = "Click Tp", defaultKey = Enum.KeyCode.F3, flag = "tpKey", callback = function(tbl) -- Exploits
    if localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart") and mouse.Hit then
        localPlayer.Character.HumanoidRootPart.CFrame = functions["nCFrame"](mouse.Hit.p.X, mouse.Hit.p.Y, mouse.Hit.p.Z)
    end
end})
local flyToggle = window:createToggle({text = "Fly", flag = "Fly"})
local flySlider = window:createInt({text = "Speed", default = constants["70"], offset = constants["10"], flag = "flySpeed"})
local spinbotToggle = window:createToggle({text = "Spinbot", flag = "Spinbot"})

framework("createConnection", {name = "aimbotStepped", connection = RunService.Heartbeat, callback = function()
    local mousePosition = functions["GetMouseLocation"](UserInputService)
    fovCircle.Radius = framework.flags["fovRadius"]
    fovCircle.Visible = framework.flags["showFOV"]
    fovCircle.Position = mousePosition + client.cursorOffset
    deadZoneCircle.Radius = framework.flags["deadZoneFOV"]
    deadZoneCircle.Visible = framework.flags["showDeadZone"] and framework.flags["deadZone"]
    deadZoneCircle.Position = mousePosition + client.cursorOffset
    if framework.flags["aimbotSticky"] and client.target and client.targetHitPart and client.target.Character then
        if client.target == localPlayer then 
            return 
        end
        if client.target.TeamColor == localPlayer.TeamColor and not framework.flags["aimbotTeamkill"] then
            return
        end
        if not functions["FindFirstChild"](client.target.Character, "Head") then
            return 
        end
        if not functions["FindFirstChild"](client.target.Character, "Torso") and not functions["FindFirstChild"](client.target.Character, "UpperTorso") then
            return 
        end
        local Torso = functions["FindFirstChild"](client.target.Character, "Torso") or functions["FindFirstChild"](client.target.Character, "UpperTorso")
        if Torso.Transparency == constants["1"] and framework.flags["aimbotInvisible"] then 
            return 
        end
        if functions["FindFirstChildOfClass"](client.target.Character, "Humanoid") and functions["FindFirstChildOfClass"](client.target.Character, "Humanoid").Health <= constants["0"] and framework.flags["aimbotDead"] then 
            return 
        end
        if functions["FindFirstChildOfClass"](client.target.Character, "ForceField") and framework.flags["aimbotForcefield"] then 
            return 
        end
        local Pos, Vis = client.returnCamera().WorldToViewportPoint(client.returnCamera(), client.target.Character[client.targetHitPart].Position)
        if not Vis then
            return
        end
        if not localPlayer.Character then
            return
        end
        if not functions["FindFirstChild"](localPlayer.Character, "Head") then
            return
        end
        if client.isMouseButtonDown(Enum.UserInputType.MouseButton2) and framework.flags["aimbotNoLock"] then
            return
        end
        local Params = functions["nRayParams"]({FilterDescendantsInstances = {client.returnCamera(), localPlayer.Character}, FilterType = Enum.RaycastFilterType.Blacklist, IgnoreWater = constants["true"]})
        local Result = Workspace.Raycast(Workspace, localPlayer.Character.Head.Position, (client.target.Character[client.targetHitPart].Position - localPlayer.Character.Head.Position).unit*constants["5000"], Params)
        if (not Result.Instance or not functions["IsDescendantOf"](Result.Instance, client.target.Character)) and framework.flags["aimbotVisible"] then
            return
        end
        local TheirPos = functions["nVector2"](Pos.X, Pos.Y)
        local Mag = (TheirPos - fovCircle.Position).Magnitude
        if (Mag <= framework.flags["fovRadius"] and not framework.flags["aimbotIgnoreFOV"] or framework.flags["aimbotIgnoreFOV"]) then
            if (Mag >= framework.flags["deadZoneFOV"] and framework.flags["deadZone"] or not framework.flags["deadZone"]) then
                mousemoverel(((Pos.X - fovCircle.Position.X)*framework.flags["aimbotSensitivity"])/framework.flags["aimbotSmoothness"], ((Pos.Y - fovCircle.Position.Y)*framework.flags["aimbotSensitivity"])/framework.flags["aimbotSmoothness"])
            end
        end
    else
        client.calculateTarget(framework.flags["aimbotMethod"], framework.flags["hitPart"])
        if client.target then
            local Pos, Vis = client.returnCamera().WorldToViewportPoint(client.returnCamera(), client.target.Character[client.targetHitPart].Position)
            mousemoverel(((Pos.X - fovCircle.Position.X)* framework.flags["aimbotSensitivity"])/framework.flags["aimbotSmoothness"], ((Pos.Y - fovCircle.Position.Y)*framework.flags["aimbotSensitivity"])/framework.flags["aimbotSmoothness"])
        end
    end
end})

framework("createConnection", {name = "triggerbotStepped", connection = RunService.Heartbeat, callback = function()
    if framework.flags["masterTriggerbot"] and framework.flags["triggerKey"][constants["2"]] then
        local unitRay = client.returnCamera().ViewportPointToRay(client.returnCamera(), fovCircle.Position.X, fovCircle.Position.Y)
        local Params = functions["nRayParams"]({FilterDescendantsInstances = {client.returnCamera(), localPlayer.Character}, FilterType = Enum.RaycastFilterType.Blacklist, IgnoreWater = constants["true"]})
        local Result = Workspace.Raycast(Workspace, unitRay.Origin, unitRay.Direction * constants["5000"], Params)
        if Result then
            for _,V in functions["next"], functions["GetPlayers"](Players) do
                if V == localPlayer then 
                    continue 
                end
                if V.Team == localPlayer.Team and not framework.flags["triggerbotTeamkill"] then
                    continue
                end
                if not V.Character then 
                    continue 
                end
                if functions["FindFirstChildOfClass"](V.Character, "Humanoid") and functions["FindFirstChildOfClass"](V.Character, "Humanoid").Health <= constants["0"] and framework.flags["triggerbotDead"] then 
                    continue 
                end
                if not functions["FindFirstChild"](V.Character, "Torso") and not functions["FindFirstChild"](V.Character, "UpperTorso") then
                    continue 
                end
                local Torso = functions["FindFirstChild"](V.Character, "Torso") or functions["FindFirstChild"](V.Character, "UpperTorso")
                if Torso.Transparency == constants["1"] and framework.flags["triggerbotInvisible"] then 
                    continue 
                end
                if functions["FindFirstChildOfClass"](V.Character, "ForceField") and framework.flags["triggerbotForcefield"] then 
                    continue 
                end
                if functions["IsDescendantOf"](Result.Instance, V.Character) then
                    if framework.flags["triggerbotDelay"] > constants["0"] then 
                        functions["wait"](framework.flags["triggerbotDelay"]/constants["1000"]) 
                    end
                     mouse1press()
                     wait(framework.flags["triggerbotDuration"])
                     mouse1release()
                 end
            end
        end
    end
end})

framework("createConnection", {name = "movementStepped", connection = RunService.Heartbeat, callback = function()
    if localPlayer.Character and functions["FindFirstChild"](localPlayer.Character, "HumanoidRootPart") and functions["FindFirstChildOfClass"](localPlayer.Character, "Humanoid") then
        local camCFrame = client.returnCamera().CFrame
        local humanoid = functions["FindFirstChildOfClass"](localPlayer.Character, "Humanoid")
        local rootPart = functions["FindFirstChild"](localPlayer.Character, "HumanoidRootPart")
        if framework.flags["Fly"] then
            if not functions["GetFocusedTextBox"](UserInputService) then
                local eVector = functions["nVector3"]()
                local rVector, lVector, uVector = camCFrame.RightVector, camCFrame.LookVector, camCFrame.UpVector
                if functions["IsKeyDown"](UserInputService, "W") then
                    eVector = eVector + lVector
                end
                if functions["IsKeyDown"](UserInputService, "S") then
                    eVector = eVector - lVector
                end
                if functions["IsKeyDown"](UserInputService, "D") then
                    eVector = eVector + rVector
                end
                if functions["IsKeyDown"](UserInputService, "A") then
                    eVector = eVector - rVector
                end
                if functions["IsKeyDown"](UserInputService, "Space") then
                    eVector = eVector + uVector
                end
                if functions["IsKeyDown"](UserInputService, "LeftShift") then
                    eVector = eVector - uVector
                end
                if eVector.Unit.X == eVector.Unit.X then
                    rootPart.AssemblyLinearVelocity  = eVector.Unit * framework.flags["flySpeed"]
                end
                rootPart.Anchored = eVector == functions["nVector3"]()
            end
        else
            rootPart.Anchored = constants["false"]
        end
        if framework.flags["Spinbot"] then
            client.Spin = functions["clamp"](client.Spin + constants["10"], constants["0"], constants["360"])
            if client.Spin == constants["360"] then 
                client.Spin = constants["0"]
            end
            humanoid.AutoRotate = constants["false"]
            local Angle = constants["0"]
            Angle = Angle + functions["rad"](client.Spin)
            local CFramePos = functions["nCFrame"](rootPart.Position) * functions["nAngles"](constants["0"], Angle, constants["0"])
            rootPart.CFrame = client.rotateYaw(CFramePos)
        else
            humanoid.AutoRotate = constants["true"]
        end
    end
end})

for _,v in functions["next"], functions["GetPlayers"](Players) do
    if v ~= constants["nil"] and v ~= localPlayer then
        client.drawPlayerESP(v)
    end
end

framework("createConnection", {name = "ConfigPlayerAdded", connection = Players.PlayerAdded, callback = function(Player)
    if Player ~= constants["nil"] and Player ~= localPlayer then
        client.drawPlayerESP(Player)
    end
end})