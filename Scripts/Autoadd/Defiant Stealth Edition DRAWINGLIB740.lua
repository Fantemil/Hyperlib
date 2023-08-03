local utility = loadstring(game:HttpGet('https://raw.githubusercontent.com/JayGitCuh/Jay/main/roblox/drawinglibstuff.lua', true))()

local tween = loadstring(game:HttpGet("https://raw.githubusercontent.com/JayGitCuh/Jay/main/roblox/customtweenvozoid.lua"))()

local allowedcharacters = {}
local shiftcharacters = {
    ["1"] = "!",
    ["2"] = "@",
    ["3"] = "#",
    ["4"] = "$",
    ["5"] = "%",
    ["6"] = "^",
    ["7"] = "&",
    ["8"] = "*",
    ["9"] = "(",
    ["0"] = ")",
    ["-"] = "_",
    ["="] = "+",
    ["["] = "{",
    ["\\"] = "|",
    [","] = ":",
    ["'"] = "\"",
    [","] = "<",
    ["."] = ">",
    ["/"] = "?",
    ["`"] = "~"
}

for i = 32, 126 do
    table.insert(allowedcharacters, utf8.char(i))
end

local players = game:GetService("Players")
local uis = game:GetService("UserInputService")
local runservice = game:GetService("RunService")
local tweenservice = game:GetService("TweenService")
local marketplaceservice = game:GetService("MarketplaceService")
local textservice = game:GetService("TextService")
local coregui = game:GetService("CoreGui")
local httpservice = game:GetService("HttpService")

local library = { 
	flags = { },
	items = { },
    options = 0,
}

local function MakeDraggable(ClickObject, Object)
	local Dragging = nil
	local DragInput = nil
	local DragStart = nil
	local StartPosition = nil

	ClickObject.InputBegan:Connect(function(Input)
		if
			Input.UserInputType == Enum.UserInputType.MouseButton1
			or Input.UserInputType == Enum.UserInputType.Touch
		then
			Dragging = true
			DragStart = Input.Position
			StartPosition = Object.Position

			Input.Changed:Connect(function()
				if Input.UserInputState == Enum.UserInputState.End then
					Dragging = false
				end
			end)
		end
	end)

	ClickObject.InputChanged:Connect(function(Input)
		if
			Input.UserInputType == Enum.UserInputType.MouseMovement
			or Input.UserInputType == Enum.UserInputType.Touch
		then
			DragInput = Input
		end
	end)

	game:GetService("UserInputService").InputChanged:Connect(function(Input)
		if Input == DragInput and Dragging then
			local Delta = Input.Position - DragStart
			Object.Position = UDim2.new(
				StartPosition.X.Scale,
				StartPosition.X.Offset + Delta.X,
				StartPosition.Y.Scale,
				StartPosition.Y.Offset + Delta.Y
			)
		end
	end)
end

function library:Init(menuname, version)

    local players = game:GetService("Players")
    local uis = game:GetService("UserInputService")
    local runservice = game:GetService("RunService")
    local tweenservice = game:GetService("TweenService")
    local marketplaceservice = game:GetService("MarketplaceService")
    local textservice = game:GetService("TextService")
    local coregui = game:GetService("CoreGui")
    local httpservice = game:GetService("HttpService")

    local player = players.LocalPlayer
    local mouse = player:GetMouse()
    local camera = game.Workspace.CurrentCamera

    local background = utility.create("Square", {
        Position = UDim2.new(0,700,0,100),
        Size = Vector2.new(500, 40), -- 600
        Thickness = 2,
        Color = Color3.fromRGB(0,0,0),
        Filled = true,
        Transparency = 0.5,
    })

    local toggle = true

    local tabcontainerslot = utility.create("Square", {
        Position = Vector2.new(0,0),
        Size = Vector2.new(500, 40), -- 600
        Thickness = 2,
        Color = Color3.fromRGB(0,0,0),
        Filled = true,
        Transparency = 0,
        Parent = background,
    })

    local tabsize = utility.create("Square", {
        Visible = true,
        Position = Vector2.new(0, 44),
        Size = Vector2.new(500, 22 * library.options), -- pixels offset from .Position
        Thickness = 2,
        Color = Color3.fromRGB(26, 26, 26),
        Filled = true,
        Transparency = 0.5,
        ZIndex = 2,
        Parent = background
    })

    function library:UpdateSize(size)
        --tabsize.Size = size
        tween.new(tabsize, TweenInfo.new(0.2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Size = size}):Play()
    end

    local topbar = utility.create("Square", {
        Position = Vector2.new(1, 0),
        Size = Vector2.new(498, 22), -- 600
        Thickness = 2,
        Color = Color3.fromRGB(255,0,0),
        Filled = false,
        Transparency = 1,
        Parent = background
    })

    local topheader = utility.create("Square", {
        Position = UDim2.new(0,0,0, 0),
        Size = Vector2.new(500, 22), -- pixels offset from .Position
        Thickness = 2,
        Color = Color3.fromRGB(26, 26, 26),
        Filled = true,
        Transparency = 1,
        Parent = background
    })

    MakeDraggable(topheader, background)

    local menutext = utility.create("Text", {
        Text = menuname,
        Color = Color3.new(1, 1, 1), -- white text
        OutlineColor = Color3.new(0, 0, 0), -- black outline
        Center = false, -- center text
        Outline = true,
        Position = Vector2.new(10, 1),
        Size = 18, --font size
        Font = 3,
        Transparency = 0.9,
        Parent = background
    })

    local versiontext = utility.create("Text", {
        Text = version,
        Color = Color3.new(1, 1, 1), -- white text
        OutlineColor = Color3.new(0, 0, 0), -- black outline
        Center = true, -- center text
        Outline = true,
        Position = Vector2.new(470, 1),
        Size = 18, --font size
        Font = 3,
        Transparency = 0.9,
        Parent = background
    })

    local tabbuttoncontainer = utility.create("Square", {
        Position = Vector2.new(0, 25),
        Size = Vector2.new(500, 19), -- pixels offset from .Position
        Thickness = 2,
        Color = Color3.fromRGB(26, 26, 26),
        Filled = true,
        Transparency = 1,
        Parent = background
    })

    local scrollbarstuff = utility.create("Square", {
        Position = Vector2.new(0, 25),
        Size = Vector2.new(500, 19), -- pixels offset from .Position
        Thickness = 2,
        Color = Color3.fromRGB(26, 26, 26),
        Filled = true,
        Transparency = 1,
        Parent = background
    })

    local currentpos

    local tabscrollbar = utility.create("Square", {
        Position = UDim2.new(0,0,0, 0),
        Size = Vector2.new(85, 19),
        Thickness = 2,
        Color = Color3.fromRGB(255,0,0),
        Filled = true,
        Transparency = 1,
        ZIndex = 5,
        Parent = scrollbarstuff
    })

    function library:updateScrollbar(pos)
        tween.new(tabscrollbar, TweenInfo.new(0.2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = pos}):Play()
    end

    local tabcount = 0
    local insideLibrary = {}

    function insideLibrary:ResetPos()
        background.Position = UDim2.new(0,700,0,100)
    end

    function insideLibrary:ToggleUI()
        if toggle == false then
            toggle = true
            background.Visible = true
        else
            toggle = false
            background.Visible = false
        end
    end

    function insideLibrary:OpenClose(bool, animated)
        --background.Visible = bool

        library:UpdateSize(Vector2.new(500, 22 * library.options))

        if animated then
            if bool == true then
                background.Visible = bool
                tween.new(background, TweenInfo.new(0.2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = UDim2.new(0,700,0,100)}):Play()
            else
                tween.new(background, TweenInfo.new(0.2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = UDim2.new(0,700,0,1000)}):Play()
                wait()
                background.Visible = bool
            end
        else
            background.Visible = bool
        end
    end

    function insideLibrary:addTab(tabname)
        tabcount = tabcount + 1
        local insideTab = {}
        local tabbutton = utility.create("Square", {
            Position = UDim2.new(#tabbuttoncontainer:GetChildren() / 6.02, 0, 0, 0),
            Size = Vector2.new(85, 19),
            Thickness = 2,
            Color = Color3.fromRGB(26, 26, 26),
            Filled = true,
            Transparency = 1,
            ZIndex = 4,
            Parent = tabbuttoncontainer
        })

        local tabtext = utility.create("Text", {
            Text = tabname,
            Color = Color3.new(1, 1, 1), -- white text
            OutlineColor = Color3.new(0, 0, 0), -- black outline
            Center = true, -- center text
            Outline = true,
            Position = utility.getcenter(85 / 8, 15),
            Size = 15, --font size
            Font = 3,
            Transparency = 0.9,
            ZIndex = 6,
            Parent = tabbutton
        })

        local tabcontainer = utility.create("Square", {
            Visible = false,
            Position = Vector2.new(0, 44),
            Size = Vector2.new(500, 19), -- pixels offset from .Position
            Thickness = 2,
            Color = Color3.fromRGB(26, 26, 26),
            Filled = true,
            Transparency = 0,
            ZIndex = 2,
            Parent = tabcontainerslot
        })

        tabcontainer:AddListLayout(0)



        if tabcount == 1 then
            --tabbutton.Color = Color3.fromRGB(255,0,0)
            tabcontainer.Visible = true
            library:updateScrollbar(tabbutton.Position)

            library:UpdateSize(Vector2.new(500, 22 * #tabcontainer:GetChildren()))
        else
            tabcontainer.Visible = false
            tabbutton.Color = Color3.fromRGB(26, 26, 26)
        end

        tabbutton.MouseButton1Click:Connect(function()
            for i, v in next, tabcontainerslot:GetChildren() do
                v.Visible = false
            end
            library:updateScrollbar(tabbutton.Position)
            tabcontainer.Visible = true

            library:UpdateSize(Vector2.new(500, 22 * #tabcontainer:GetChildren()))
        end)

        function insideTab:addButton(text, callback)
            --optioncount = optioncount + 1
            local button = utility.create("Square", {
                Position = Vector2.new(0, 0),
                Size = Vector2.new(500, 22), -- pixels offset from .Position
                Thickness = 2,
                Color = Color3.fromRGB(26, 26, 26),
                Filled = true,
                Transparency = 0,
                ZIndex = 4,
                Parent = tabcontainer
            })

            button.MouseButton1Click:Connect(function()
                pcall(callback)
            end)

            local buttontext = utility.create("Text", {
                Text = text,
                Color = Color3.new(1, 1, 1), -- white text
                OutlineColor = Color3.new(0, 0, 0), -- black outline
                Center = false, -- center text
                Outline = true,
                Position = Vector2.new(10,0),
                Size = 15, --font size
                Font = 3,
                Transparency = 0.9,
                ZIndex = 5,
                Parent = button
            })

            if tabscrollbar.Position == tabbutton.Position then
                library:UpdateSize(Vector2.new(500, 22 * #tabcontainer:GetChildren()))
            end

        end

        function insideTab:addCheckbox(text, default, callback, flag)
            local toggle = { }
            toggle.text = text or ""
            toggle.default = default or false
            toggle.callback = callback or function(value) end
            toggle.flag = flag or text or ""

            toggle.value = toggle.default

            toggle.bg = utility.create("Square", {
                Position = Vector2.new(0, 0),
                Size = Vector2.new(500, 22), -- pixels offset from .Position
                Thickness = 2,
                Color = Color3.fromRGB(26, 26, 26),
                Filled = true,
                Transparency = 0,
                ZIndex = 4,
                Parent = tabcontainer
            })

            toggle.buttontext = utility.create("Text", {
                Text = text,
                Color = Color3.new(1, 1, 1), -- white text
                OutlineColor = Color3.new(0, 0, 0), -- black outline
                Center = false, -- center text
                Outline = true,
                Position = Vector2.new(10,0),
                Size = 15, --font size
                Font = 3,
                Transparency = 0.9,
                ZIndex = 5,
                Parent = toggle.bg
            })

            toggle.buttonoutline = utility.create("Square", {
                Position = UDim2.new(0,479, 0,4),
                Size = UDim2.new(0,11, 0,11), -- pixels offset from .Position
                Thickness = 3,
                Color = Color3.fromRGB(26, 26, 26),
                Filled = false,
                Transparency = 1,
                ZIndex = 4,
                Parent = toggle.bg
            })

            toggle.button = utility.create("Square", {
                Position = Vector2.new(479, 4),
                Size = Vector2.new(11, 11), -- pixels offset from .Position
                Thickness = 0,
                Color = Color3.fromRGB(26, 26, 26),
                Filled = true,
                Transparency = 1,
                ZIndex = 4,
                Parent = toggle.bg
            })

            if toggle.flag and toggle.flag ~= "" then
                library.flags[toggle.flag] = toggle.default or false
            end

            function toggle:Set(value)
                if value then
                    --toggle.button.Color = Color3.fromRGB(255, 0, 0)
                    tween.new(toggle.button, TweenInfo.new(0.2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Color = Color3.fromRGB(255, 0, 0)}):Play()
                else
                    tween.new(toggle.button, TweenInfo.new(0.2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Color = Color3.fromRGB(26, 26, 26)}):Play()
                    --toggle.button.Color = Color3.fromRGB(26, 26, 26)
                end

                toggle.value = value
                if toggle.flag and toggle.flag ~= "" then
                    library.flags[toggle.flag] = toggle.value
                end
                pcall(toggle.callback, value)
            end

            function toggle:Get() 
                return toggle.value
            end

            toggle:Set(toggle.default)

            toggle.buttonoutline.MouseEnter:Connect(function()
                toggle.buttonoutline.Color = Color3.fromRGB(255, 255, 255)
            end)
        
            toggle.buttonoutline.MouseLeave:Connect(function()
                toggle.buttonoutline.Color = Color3.fromRGB(26, 26, 26)
            end)
        
            toggle.button.MouseButton1Click:Connect(function()
                if toggle:Get() == true then
                    toggle:Set(false)
                else
                    toggle:Set(true)
                end
            end)

            function toggle:addKeybind(default, flag)
                local keybind = { }

                keybind.default = default or "None"
                keybind.value = keybind.default
                keybind.flag = flag or ( (toggle.text or "") .. tostring(#toggle.items:GetChildren()))

                keybind.button = utility.create("Square", {
                    Position = Vector2.new(420, 0),
                    Size = Vector2.new(50, 15), -- pixels offset from .Position
                    Thickness = 0,
                    Color = Color3.fromRGB(26, 26, 26),
                    Filled = true,
                    Transparency = 0,
                    ZIndex = 4,
                    Parent = toggle.bg
                })

                keybind.buttonoutline = utility.create("Square", {
                    Position = Vector2.new(420, 0),
                    Size = Vector2.new(50, 15), -- pixels offset from .Position
                    Thickness = 1,
                    Color = Color3.fromRGB(26, 26, 26),
                    Filled = false,
                    Transparency = 0,
                    ZIndex = 4,
                    Parent = toggle.bg
                })

                keybind.KeybindLabel = utility.create("Text", {
                    Text = "[...]",
                    Color = Color3.new(1, 1, 1), -- white text
                    OutlineColor = Color3.new(0, 0, 0), -- black outline
                    Center = false, -- center text
                    Outline = true,
                    Position = Vector2.new(0,0),
                    Size = 15, --font size
                    Font = 3,
                    Transparency = 0.9,
                    ZIndex = 5,
                    Parent = keybind.button
                })

                keybind.buttonoutline.MouseEnter:Connect(function()
                    keybind.buttonoutline.Color = Color3.fromRGB(255, 255, 255)
                end)
            
                keybind.buttonoutline.MouseLeave:Connect(function()
                    keybind.buttonoutline.Color = Color3.fromRGB(26, 26, 26)
                end)

                if keybind.flag and keybind.flag ~= "" then
                    library.flags[keybind.flag] = keybind.default
                end
                
                local shorter_keycodes = {
                    ["LeftShift"] = "LSHIFT",
                    ["RightShift"] = "RSHIFT",
                    ["LeftControl"] = "LCTRL",
                    ["RightControl"] = "RCTRL",
                    ["LeftAlt"] = "LALT",
                    ["RightAlt"] = "RALT"
                }

                function keybind:Set(value)
                    if value == "None" then
                        keybind.value = value
                        keybind.KeybindLabel.Text = " " .. value .. " "

                        
                        if keybind.flag and keybind.flag ~= "" then
                            library.flags[keybind.flag] = value
                        end
                        pcall(keybind.newkeycallback, value)
                    end

                    keybind.value = value
                    keybind.KeybindLabel.Text = " " .. (shorter_keycodes[value.Name or value] or (value.Name or value)) .. " "

                    
                    if keybind.flag and keybind.flag ~= "" then
                        library.flags[keybind.flag] = value
                    end
                    pcall(keybind.newkeycallback, value)
                end

                keybind:Set(keybind.default or "[...]")

                function keybind:Get()
                    return keybind.value
                end

                keybind.button.MouseButton1Click:Connect(function()
                    keybind.KeybindLabel.Text = "[...]"
                    game:GetService"UserInputService".InputBegan:Connect(function(input, gameProcessed)
                        if not gameProcessed then
                            if keybind.KeybindLabel.Text == "[...]" then
                                --keybind.KeybindLabel.TextColor3 = Color3.fromRGB(136, 136, 136)
                                if input.UserInputType == Enum.UserInputType.Keyboard then
                                    keybind:Set(input.KeyCode)
                                else
                                    keybind:Set("None")
                                end
                            else
                                if keybind.value ~= "None" and input.KeyCode == keybind.value then
                                    if toggle.button.Color == Color3.fromRGB(255,0,0) then
                                        toggle:Set(false)
                                    else
                                        toggle:Set(true)
                                    end
                                end
                            end
                        end
                    end)
                end)
            end

            if tabscrollbar.Position == tabbutton.Position then
                library:UpdateSize(Vector2.new(500, 22 * #tabcontainer:GetChildren()))
            end
            table.insert(library.items, toggle)
            return toggle
        end

        function insideTab:addKeybind(text,default,newkeycallback,callback,flag)
            local keybind = { }

            keybind.text = text or ""
            keybind.default = default or "None"
            keybind.callback = callback or function() end
            keybind.newkeycallback = newkeycallback or function() end
            keybind.flag = flag or text or ""

            keybind.value = keybind.default

            keybind.namelabel = utility.create("Square", {
                Position = Vector2.new(0, 0),
                Size = Vector2.new(500, 22), -- pixels offset from .Position
                Thickness = 1,
                Color = Color3.fromRGB(26, 26, 26),
                Filled = true,
                Transparency = 0,
                ZIndex = 4,
                Parent = tabcontainer
            })

            keybind.buttontext = utility.create("Text", {
                Text = text,
                Color = Color3.new(1, 1, 1), -- white text
                OutlineColor = Color3.new(0, 0, 0), -- black outline
                Center = false, -- center text
                Outline = true,
                Position = Vector2.new(10,0),
                Size = 15, --font size
                Font = 3,
                Transparency = 0.9,
                ZIndex = 5,
                Parent = keybind.namelabel
            })

            keybind.button = utility.create("Square", {
                Position = Vector2.new(441, 0),
                Size = Vector2.new(50, 15), -- pixels offset from .Position
                Thickness = 0,
                Color = Color3.fromRGB(26, 26, 26),
                Filled = true,
                Transparency = 1,
                ZIndex = 4,
                Parent = keybind.namelabel
            })

            keybind.buttonoutline = utility.create("Square", {
                Position = Vector2.new(441, 0),
                Size = Vector2.new(50, 15), -- pixels offset from .Position
                Thickness = 1,
                Color = Color3.fromRGB(26, 26, 26),
                Filled = false,
                Transparency = 1,
                ZIndex = 4,
                Parent = keybind.namelabel
            })

            keybind.KeybindLabel = utility.create("Text", {
                Text = "[...]",
                Color = Color3.new(1, 1, 1), -- white text
                OutlineColor = Color3.new(0, 0, 0), -- black outline
                Center = false, -- center text
                Outline = true,
                Position = Vector2.new(0,0),
                Size = 15, --font size
                Font = 3,
                Transparency = 0.9,
                ZIndex = 5,
                Parent = keybind.button
            })

            keybind.buttonoutline.MouseEnter:Connect(function()
                keybind.buttonoutline.Color = Color3.fromRGB(255, 255, 255)
            end)
        
            keybind.buttonoutline.MouseLeave:Connect(function()
                keybind.buttonoutline.Color = Color3.fromRGB(26, 26, 26)
            end)

            if keybind.flag and keybind.flag ~= "" then
                library.flags[keybind.flag] = keybind.default
            end

            local shorter_keycodes = {
                ["LeftShift"] = "LSHIFT",
                ["RightShift"] = "RSHIFT",
                ["LeftControl"] = "LCTRL",
                ["RightControl"] = "RCTRL",
                ["LeftAlt"] = "LALT",
                ["RightAlt"] = "RALT"
            }

            function keybind:Set(value)
                if value == "None" then
                    keybind.value = value
                    keybind.KeybindLabel.Text = " " .. value .. " "

                    
                    if keybind.flag and keybind.flag ~= "" then
                        library.flags[keybind.flag] = value
                    end
                    pcall(keybind.newkeycallback, value)
                end

                keybind.value = value
                keybind.KeybindLabel.Text = " " .. (shorter_keycodes[value.Name or value] or (value.Name or value)) .. " "

                
                if keybind.flag and keybind.flag ~= "" then
                    library.flags[keybind.flag] = value
                end
                pcall(keybind.newkeycallback, value)
            end
            keybind:Set(keybind.default or "[...]")

            function keybind:Get()
                return keybind.value
            end

            keybind.button.MouseButton1Click:Connect(function()
                keybind.KeybindLabel.Text = "[...]"
                game:GetService"UserInputService".InputBegan:Connect(function(input, gameProcessed)
                    if not gameProcessed then
                        if keybind.KeybindLabel.Text == "[...]" then
                            --keybind.KeybindLabel.TextColor3 = Color3.fromRGB(136, 136, 136)
                            if input.UserInputType == Enum.UserInputType.Keyboard then
                                keybind:Set(input.KeyCode)
                            else
                                keybind:Set("None")
                            end
                        else
                            if keybind.value ~= "None" and input.KeyCode == keybind.value then
                                pcall(keybind.callback)
                            end
                        end
                    end
                end)
            end)

            if tabscrollbar.Position == tabbutton.Position then
                library.options = library.options + 1
                library:UpdateSize(Vector2.new(500, 22 * #tabcontainer:GetChildren()))
            end

            table.insert(library.items, keybind)
            return keybind
        end

        function insideTab:addSlider(text, min, default, max, decimals, callback, flag)
            local slider = { }
            slider.text = text or ""
            slider.callback = callback or function(value) end
            slider.min = min or 0
            slider.max = max or 100
            slider.decimals = decimals or 1
            slider.default = default or slider.min
            slider.flag = flag or text or ""

            slider.value = slider.default
            local dragging = false

            slider.namelabel = utility.create("Square", {
                Position = Vector2.new(0, 0),
                Size = Vector2.new(500, 22), -- pixels offset from .Position
                Thickness = 1,
                Color = Color3.fromRGB(26, 26, 26),
                Filled = true,
                Transparency = 0,
                ZIndex = 4,
                Parent = tabcontainer
            })

            slider.buttontext = utility.create("Text", {
                Text = text,
                Color = Color3.new(1, 1, 1), -- white text
                OutlineColor = Color3.new(0, 0, 0), -- black outline
                Center = false, -- center text
                Outline = true,
                Position = Vector2.new(10,0),
                Size = 15, --font size
                Font = 3,
                Transparency = 0.9,
                ZIndex = 5,
                Parent = slider.namelabel
            })

            slider.SliderButton = utility.create("Square", {
                Position = UDim2.new(0,380, 0,0),
                Size = UDim2.new(0,111,0, 15), -- pixels offset from .Position
                Thickness = 0,
                Color = Color3.fromRGB(26, 26, 26),
                Filled = true,
                Transparency = 1,
                ZIndex = 4,
                Parent = slider.namelabel
            })

            slider.buttonoutline = utility.create("Square", {
                Position = UDim2.new(0,380, 0,0),
                Size = UDim2.new(0,111,0, 15),-- pixels offset from .Position
                Thickness = 1,
                Color = Color3.fromRGB(26, 26, 26),
                Filled = false,
                Transparency = 1,
                ZIndex = 4,
                Parent = slider.namelabel
            })

            slider.SliderNameLabel = utility.create("Text", {
                Text = "N/A",
                Color = Color3.new(1, 1, 1), -- white text
                OutlineColor = Color3.new(0, 0, 0), -- black outline
                Center = false, -- center text
                Outline = true,
                Position = Vector2.new(5,0),
                Size = 15, --font size
                Font = 3,
                Transparency = 0.9,
                ZIndex = 5,
                Parent = slider.SliderButton
            })

            slider.buttonoutline.MouseEnter:Connect(function()
                slider.buttonoutline.Color = Color3.fromRGB(255, 255, 255)
            end)
        
            slider.buttonoutline.MouseLeave:Connect(function()
                slider.buttonoutline.Color = Color3.fromRGB(26, 26, 26)
            end)

            
            if slider.flag and slider.flag ~= "" then
                library.flags[slider.flag] = slider.default or slider.min or 0
            end

            function slider:Get()
                return slider.value
            end

            function slider:Set(value)
                slider.value = math.clamp(math.round(value * slider.decimals) / slider.decimals, slider.min, slider.max)
                local percent = 1 - ((slider.max - slider.value) / (slider.max - slider.min))
                if slider.flag and slider.flag ~= "" then
                    library.flags[slider.flag] = slider.value
                end
                tween.new(slider.SliderButton, TweenInfo.new(0.1, Enum.EasingStyle.Sine, Enum.EasingDirection.In), {Size = UDim2.fromOffset(percent * slider.buttonoutline.AbsoluteSize.X, slider.SliderButton.AbsoluteSize.Y)}):Play()
                slider.SliderNameLabel.Text = tostring(slider.value)
                pcall(slider.callback, slider.value)
            end
            slider:Set(slider.default)

            function slider:Refresh()
                local dwMouse = camera:WorldToViewportPoint(mouse.Hit.p)
                local percent = math.clamp(dwMouse.X - slider.SliderNameLabel.AbsolutePosition.X, 0, slider.buttonoutline.AbsoluteSize.X) / slider.buttonoutline.AbsoluteSize.X
                local value = math.floor((slider.min + (slider.max - slider.min) * percent) * slider.decimals) / slider.decimals
                value = math.clamp(value, slider.min, slider.max)
                slider:Set(value)
            end

            slider.buttonoutline.InputBegan:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    dragging = true
                    slider:Refresh()
                end
            end)

            slider.buttonoutline.InputEnded:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    dragging = false
                end
            end)

            game:GetService"UserInputService".InputChanged:Connect(function(input)
                if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
                    slider:Refresh()
                end
            end)

            if tabscrollbar.Position == tabbutton.Position then
                library:UpdateSize(Vector2.new(500, 22 * #tabcontainer:GetChildren()))
            end

            
            table.insert(library.items, slider)
            return slider
        end
        return insideTab
    end
    return insideLibrary
end

function library:OverlayInit(side)
    local overlay = {}
    if side == "left" then
        local listbg = utility.create("Square", {
            Position = UDim2.new(0, 40, 0, 40),
            Size = Vector2.new(250, 0), -- 600
            Thickness = 2,
            Color = Color3.fromRGB(0,0,0),
            Filled = true,
            ZIndex = 10,
            Transparency = 0,
        })

        function overlay:addSection()
            local section = {}
            local sectionbg = utility.create("Square", {
                Position = UDim2.new(0, 1, 0, 0),
                Size = UDim2.new(0,500,0,0), -- 600
                Thickness = 2,
                Color = Color3.fromRGB(0,0,0),
                Filled = true,
                ZIndex = 10,
                Transparency = 0,
                Parent = listbg,
            })

            function section:OpenClose(bool)
                listbg.Visible = bool
            end

            function section:addLabel(text, size)
                local label = {}
                local size = size or 250
                local background = utility.create("Square", {
                    Position = UDim2.new(0, 0, 0, 18 * #sectionbg:GetChildren()),
                    Size = UDim2.new(0,size,0,18), -- 600
                    Thickness = 0,
                    Color = Color3.fromRGB(26, 26, 26),
                    Filled = true,
                    ZIndex = 10,
                    Transparency = 1,
                    Parent = sectionbg,
                })

                local backgroundoutline = utility.create("Square", {
                    Position = UDim2.new(0, 0, 0, -1),
                    Size = UDim2.new(0,size,0,20), -- 600
                    Thickness = 1,
                    Color = Color3.fromRGB(255,0,0),
                    Filled = false,
                    ZIndex = 9,
                    Transparency = 1,
                    Parent = background,
                })

                local menutext = utility.create("Text", {
                    Text = text,
                    Color = Color3.new(1, 1, 1), -- white text
                    OutlineColor = Color3.new(0, 0, 0), -- black outline
                    Center = false, -- center text
                    Outline = true,
                    Position = UDim2.new(0,10,0,0),
                    Size = 18, --font size
                    Font = 3,
                    ZIndex = 10,
                    Transparency = 0.9,
                    Parent = background
                })

                function label:OpenClose(bool)
                    background.Visible = bool
                end

                return label
            end
            return section
        end
    elseif side == "right" then
        local listbg = utility.create("Square", {
            Position = UDim2.new(0.9, 0, 0, 40),
            Size = Vector2.new(250, 0), -- 600
            Thickness = 2,
            Color = Color3.fromRGB(0,0,0),
            Filled = true,
            ZIndex = 10,
            Transparency = 0,
        })

        function overlay:addSection()
            local section = {}
            local sectionbg = utility.create("Square", {
                Position = UDim2.new(0, 1, 0, 0),
                Size = UDim2.new(0,500,0,0), -- 600
                Thickness = 2,
                Color = Color3.fromRGB(0,0,0),
                Filled = true,
                ZIndex = 10,
                Transparency = 0,
                Parent = listbg,
            })

            function section:addLabel(text, size)
                local label = {}
                local size = size or 250
                local background = utility.create("Square", {
                    Position = UDim2.new(0, 0, 0, 18 * #sectionbg:GetChildren()),
                    Size = UDim2.new(0,size,0,18), -- 600
                    Thickness = 0,
                    Color = Color3.fromRGB(26, 26, 26),
                    Filled = true,
                    ZIndex = 10,
                    Transparency = 1,
                    Parent = sectionbg,
                })

                local backgroundoutline = utility.create("Square", {
                    Position = UDim2.new(0, 0, 0, -1),
                    Size = UDim2.new(0,size,0,20), -- 600
                    Thickness = 1,
                    Color = Color3.fromRGB(255,0,0),
                    Filled = false,
                    ZIndex = 9,
                    Transparency = 1,
                    Parent = background,
                })

                local menutext = utility.create("Text", {
                    Text = text,
                    Color = Color3.new(1, 1, 1), -- white text
                    OutlineColor = Color3.new(0, 0, 0), -- black outline
                    Center = false, -- center text
                    Outline = true,
                    Position = UDim2.new(0,10,0,0),
                    Size = 18, --font size
                    Font = 3,
                    ZIndex = 10,
                    Transparency = 0.9,
                    Parent = background
                })
                function label:OpenClose(bool)
                    background.Visible = bool
                end
                return label
            end
            return section
        end
    end
    return overlay
end

local UIS = game:GetService("UserInputService")
local dwRunservice = game:GetService("RunService")
local dwUserinputservice = game:GetService("UserInputService")
local dwLocalPlayer = game.Players.LocalPlayer
local dwMouse = dwLocalPlayer:GetMouse()
local dwWorkspace = game:GetService("Workspace")
local dwCamera = dwWorkspace.CurrentCamera
local dwWorldToView = dwCamera.worldToViewportPoint
local dwPlayers = game:GetService("Players")

local Init = library:Init("defiant.stealth", "v0.1b")
local Overlay = library:OverlayInit("left")
local menuname = Overlay:addSection()
menuname:addLabel("defiant.stealth", 146)

local menuVisible = true
Init:OpenClose(menuVisible, false)

local aimbotTab = Init:addTab("Aimbot")
local visualTab = Init:addTab("Visuals")
local configTab = Init:addTab("Config")

aimbotTab:addCheckbox("Aimbot", false, function()
end, "aimbot")

aimbotTab:addCheckbox("Show FOV", false, function()
end, "aimbotfov")

aimbotTab:addCheckbox("Team Check", false, function()
end, "aimbotteam")

aimbotTab:addCheckbox("Hit Check", false, function()
end, "aimbothitcheck")

aimbotTab:addSlider("Smoothness", 3, 3, 20, 100, function(t)
end, "aimbotsmoothness")

aimbotTab:addSlider("FOV Size", 65, 65, 300, 10, function()
end, "aimbotradius")

aimbotTab:addSlider("FOV Circles", 3, 35, 35, 1, function()
end, "aimbotfovcircles")

aimbotTab:addSlider("FOV Transparency", 0, 0.3, 1, 100, function()
end, "aimbotfovtrans")

visualTab:addCheckbox("Toggle ESP", false, function(t)
end, "esptoggle")

local showteamesp = visualTab:addCheckbox("Show Team", true, function(t)
end, "espshowteam")
showteamesp:Set(true)

visualTab:addCheckbox("Name", false, function(t)
end, "espnames")

visualTab:addCheckbox("Distance", false, function()
end, "espdistance")

visualTab:addCheckbox("Box's", false, function()
end, "espboxes")

visualTab:addCheckbox("Snapline's", false, function()
end, "esplines")

visualTab:addCheckbox("Lookangle", false, function()
end, "esplookangle")

visualTab:addCheckbox("Skeleton", false, function()
end, "espskeleton")

visualTab:addSlider("Info Size", 0.1, 20, 50, 100, function()
end, "espinfosize")

visualTab:addSlider("Max Distance", 10, 1500, 4000, 10, function()
end, "espmaxdistance")

visualTab:addCheckbox("Attach to mouse", false, function(t)
end, "espsnaplinesymouse")

visualTab:addSlider("Snapline Y Axis", 0, 20.00, 1000, 100, function(t)
end, "espsnaplineyaxis")

local gamecfg = "Stealth"
local configFolder = "DefiantCFG/".. " "..gamecfg

configTab:addCheckbox("Auto Toggle UI", true, function(t)
end, "autotoggleui"):addKeybind(Enum.KeyCode.RightShift, "uitogglekeybind")

UIS.InputBegan:Connect(function(input)
    if input.KeyCode == library.flags["uitogglekeybind"] then
        Init:ToggleUI()
    end
end)

configTab:addButton("Save Config", function()
    if (not isfolder(configFolder)) then
        makefolder(configFolder)
    end
    local config = {}
    if  configFolder .. "/defiant.txt" ~= "" then
        for i,v in pairs(library.flags) do
            if (v ~= nil and v ~= "") then
                if (typeof(v) == "Color3") then
                    config[i] = { v.R, v.G, v.B }
                elseif (tostring(v):find("Enum.KeyCode")) then
                    config[i] = "Enum.KeyCode." .. v.Name
                elseif (typeof(v) == "table") then
                    config[i] = { v }
                else
                    config[i] = v
                end
            end
        end
        writefile(configFolder .. "/defiant.txt", httpservice:JSONEncode(config))
    end
end)

configTab:addButton("Load Config", function()
    local Success = pcall(readfile, configFolder .. "/defiant.txt")
    if (Success) then
        pcall(function()
            local ReadConfig = httpservice:JSONDecode(readfile(configFolder .. "/defiant.txt"))
            local NewConfig = {}

            for i,v in pairs(ReadConfig) do
                if (typeof(v) == "table") then
                    if (typeof(v[1]) == "number") then
                        NewConfig[i] = Color3.new(v[1], v[2], v[3])
                    elseif (typeof(v[1]) == "table") then
                        NewConfig[i] = v[1]
                    end
                elseif (tostring(v):find("Enum.KeyCode.")) then
                    NewConfig[i] = Enum.KeyCode[tostring(v):gsub("Enum.KeyCode.", "")]
                else
                    NewConfig[i] = v
                end
            end

            library.flags = NewConfig

            for i,v in pairs(library.flags) do
                for i2,v2 in pairs(library.items) do
                    if (i ~= nil and i ~= "" and i ~= "Configs_Name" and i ~= "Configs" and v2.flag ~= nil) then
                        if (v2.flag == i) then
                            pcall(function() 
                                v2:Set(v)
                            end)
                        end
                    end
                end
            end
        end)
    end
end)

local fovcircle = Drawing.new('Circle');

function aimteamcheck(player)
    if library.flags["aimbotteam"] then
        if game.Players.LocalPlayer.TeamColor == player.TeamColor then return false
        else return true end
    else
        return true
    end
end

function visibilitycheck(target, ignore)
    if library.flags["aimbothitcheck"] then
        Origin = dwCamera.CFrame.p
        CheckRay = Ray.new(Origin, target- Origin)
        Hit = workspace:FindPartOnRayWithIgnoreList(CheckRay, ignore)
        return Hit == nil
    else
        return true
    end
end

local function GetClosestPlayer(fov)
    local Target, Closest = nil, fov or math.huge
    for i,v in pairs(dwPlayers:GetPlayers()) do
        if v.Character:WaitForChild("HumanoidRootPart") and (visibilitycheck(v.Character:WaitForChild("HumanoidRootPart").Position or v.Character:WaitForChild("HumanoidRootPart").Position ,{dwLocalPlayer.Character, v.Character}) and v ~= dwLocalPlayer and aimteamcheck(v) and v.Character) then -- and v.Character["HumanoidRootPart"]
            local Position, OnScreen = dwCamera:WorldToScreenPoint(v.Character:WaitForChild("HumanoidRootPart").Position)

            local Distance = (Vector2.new(Position.X, Position.Y) - Vector2.new(dwMouse.X, dwMouse.Y)).Magnitude
            if (Distance < Closest) then
                Closest = Distance
                Target = v
            end
        end
    end
    return Target, Closest
end

local closest
game:GetService("RunService").RenderStepped:Connect(function()
    closest = GetClosestPlayer(library.flags["aimbotradius"])
    if (closest) then
        if (closest ~= nil and closest.Character["HumanoidRootPart"]) then
            local Position, OnScreen = dwCamera:WorldToScreenPoint(closest.Character["HumanoidRootPart"].Position)
            if (dwUserinputservice:IsMouseButtonPressed(Enum.UserInputType.MouseButton2) and library.flags["aimbot"]) then
                mousemoverel((Position.X - dwMouse.X) / library.flags["aimbotsmoothness"] , (Position.Y - dwMouse.Y) / library.flags["aimbotsmoothness"])
            end
        end
    end

    fovcircle.Visible = library.flags["aimbotfov"];
    fovcircle.Radius = library.flags["aimbotradius"];
    fovcircle.Thickness = 3;
    fovcircle.Color = Color3.fromRGB(0, 0, 0);
    fovcircle.Filled = true;
    fovcircle.NumSides = library.flags["aimbotfovcircles"];
    fovcircle.Position = Vector2.new(dwMouse.X, dwMouse.Y + 36);
    fovcircle.Transparency = library.flags["aimbotfovtrans"];
end)

function teamcheck(targetplayer)
    if game.Players.LocalPlayer.Team == targetplayer.Team then return false
    else return true end
end

function drawHumanESP(v)
    local esptable = {
        BoxesOutline = Drawing.new('Square'),
        Boxes = Drawing.new('Square'),
        Lines = Drawing.new('Line'),
        Playername = Drawing.new('Text'),
        Distance = Drawing.new('Text'),
        Lookangle = Drawing.new('Line'),
    }

    local skeletontable = {
        Skeleton = {
            Spine = Drawing.new('Line'),
            LowerSpine = Drawing.new('Line'),
            LeftupperLeg = Drawing.new('Line'),
            LeftlowerLeg = Drawing.new('Line'),
            LeftFoot = Drawing.new('Line'),
            RightlowerLeg = Drawing.new('Line'),
            RightupperLeg = Drawing.new('Line'),
            RightFoot = Drawing.new('Line'),
            RightUpperArm = Drawing.new('Line'),
            RightLowerArm = Drawing.new('Line'),
            RightHand = Drawing.new('Line'),
            LeftUpperArm = Drawing.new('Line'),
            LeftLowerArm = Drawing.new('Line'),
            LeftHand = Drawing.new('Line'),
        },
    }


    esptable.BoxesOutline.Position = Vector2.new(20, 20);
    esptable.BoxesOutline.Size = Vector2.new(20, 20); -- pixels offset from .Position
    esptable.BoxesOutline.Thickness = 2;
    esptable.BoxesOutline.Color = Color3.fromRGB(0, 0, 0);
    esptable.BoxesOutline.Filled = false;
    esptable.BoxesOutline.Transparency = 0.9;
    esptable.BoxesOutline.Visible = false

    esptable.Boxes.Position = Vector2.new(20, 20);
    esptable.Boxes.Size = Vector2.new(20, 20); -- pixels offset from .Position
    esptable.Boxes.Thickness = 1;
    esptable.Boxes.Color = Color3.fromRGB(255, 255, 255);
    esptable.Boxes.Filled = false;
    esptable.Boxes.Transparency = 0.9;
    esptable.Boxes.Visible = false

    esptable.Lines.From = Vector2.new(20, 20); -- origin
    esptable.Lines.To = Vector2.new(50, 50); -- destination
    esptable.Lines.Color = Color3.new(.33, .66, .99);
    esptable.Lines.Thickness = 1;
    esptable.Lines.Transparency = 0.9;
    esptable.Lines.Visible = false
    esptable.Lookangle.From = Vector2.new(20, 20); -- origin
    esptable.Lookangle.To = Vector2.new(50, 50); -- destination
    esptable.Lookangle.Color = Color3.new(.33, .66, .99);
    esptable.Lookangle.Thickness = 1;
    esptable.Lookangle.Transparency = 0.9;
    esptable.Lookangle.Visible = false
    esptable.Playername.Text = ""
    esptable.Playername.Color = Color3.new(1, 1, 1)
    esptable.Playername.OutlineColor = Color3.new(0, 0, 0)
    esptable.Playername.Center = true
    esptable.Playername.Outline = true
    esptable.Playername.Position = Vector2.new(100, 100)
    esptable.Playername.Size = 15
    esptable.Playername.Font = Drawing.Fonts.Monospace -- 'UI', 'System', 'Plex', 'Monospace'
    esptable.Playername.Transparency = 0.9
    esptable.Playername.Visible = false
    esptable.Distance.Text = ""
    esptable.Distance.Color = Color3.new(1, 1, 1)
    esptable.Distance.OutlineColor = Color3.new(0, 0, 0)
    esptable.Distance.Center = true
    esptable.Distance.Outline = true
    esptable.Distance.Position = Vector2.new(100, 100)
    esptable.Distance.Size = 15
    esptable.Distance.Font = Drawing.Fonts.Monospace -- 'UI', 'System', 'Plex', 'Monospace'
    esptable.Distance.Transparency = 0.9
    esptable.Distance.Visible = false

    for index, skeleton in pairs(skeletontable.Skeleton) do
        skeleton.From = Vector2.new(20, 20); -- origin
        skeleton.To = Vector2.new(50, 50); -- destination
        skeleton.Color = Color3.new(.33, .66, .99);
        skeleton.Thickness = 1;
        skeleton.Transparency = 0.9;
        skeleton.Visible = false
    end


    dwRunservice.RenderStepped:Connect(function()
        if v.Character ~= nil and v.Character:WaitForChild("Humanoid") ~= nil and v.Character:WaitForChild("Head") and v.Character:WaitForChild("HumanoidRootPart") ~= nil and v.Character:WaitForChild("UpperTorso") ~= nil and v.Character.Humanoid.Health > 0 then
            local displayEsp = v.Character
            if displayEsp then
                local _,onscreen = dwCamera:WorldToScreenPoint(v.Character.HumanoidRootPart.Position)
                displayEsp = onscreen
            end
            local TL = dwCamera:WorldToViewportPoint(v.Character.HumanoidRootPart.CFrame * CFrame.new(-3,3,0).p)
            local TR = dwCamera:WorldToViewportPoint(v.Character.HumanoidRootPart.CFrame * CFrame.new(3,3,0).p)
            local BL = dwCamera:WorldToViewportPoint(v.Character.HumanoidRootPart.CFrame * CFrame.new(-3,-3,0).p)
            local BR = dwCamera:WorldToViewportPoint(v.Character.HumanoidRootPart.CFrame * CFrame.new(3,-3,0).p)
            local rootPos = dwCamera:WorldToViewportPoint(v.Character.HumanoidRootPart.Position)
            local magnitude = (v.Character.HumanoidRootPart.Position - dwLocalPlayer.Character.HumanoidRootPart.Position).Magnitude

            if displayEsp and library.flags["esptoggle"] and magnitude < library.flags["espmaxdistance"] then

                if library.flags["espsnaplinesymouse"] then
                    esptable.Lines.From = Vector2.new(dwMouse.X, dwMouse.Y + 36)
                else
                    esptable.Lines.From = Vector2.new(dwCamera.ViewportSize.X/2,library.flags["espsnaplineyaxis"])
                end

                if library.flags["espboxtype"] == "Filled" then
                    esptable.Boxes.Filled = true
                    esptable.Boxes.Transparency = 0.2;
                    esptable.BoxesOutline.Thickness = 1;
                else
                    esptable.Boxes.Filled = false
                    esptable.Boxes.Transparency = 0.9;
                    esptable.BoxesOutline.Thickness = 2;
                end

                esptable.Playername.Size = library.flags["espinfosize"]
                esptable.Distance.Size = library.flags["espinfosize"]
                esptable.BoxesOutline.Size = Vector2.new(2500 / rootPos.Z, TL.Y -  BL.Y)
                esptable.BoxesOutline.Position = Vector2.new(rootPos.X - esptable.BoxesOutline.Size.X / 2, rootPos.Y - esptable.BoxesOutline.Size.Y / 1.8)
                esptable.Boxes.Size = Vector2.new(2500 / rootPos.Z, TL.Y -  BL.Y)
                esptable.Boxes.Position = Vector2.new(rootPos.X - esptable.Boxes.Size.X / 2, rootPos.Y - esptable.Boxes.Size.Y / 1.8)
                
                esptable.Lines.To = Vector2.new(dwCamera:WorldToViewportPoint(v.Character.UpperTorso.Position).X, dwCamera:WorldToViewportPoint(v.Character.UpperTorso.Position).Y)

                esptable.Playername.Position = Vector2.new(rootPos.X - (-50 / rootPos.Z) / 1.1, rootPos.Y - esptable.Boxes.Size.Y / 1.1)
                esptable.Distance.Position = Vector2.new(rootPos.X - (-50 / rootPos.Z), (rootPos.Y + 20) - esptable.Boxes.Size.Y / 1.1)

                esptable.Lookangle.From = Vector2.new(dwCamera:WorldToViewportPoint(v.Character.Head.Position).X, dwCamera:WorldToViewportPoint(v.Character.Head.Position).Y)
                esptable.Lookangle.To = Vector2.new(dwCamera:WorldToViewportPoint(v.Character.Head.CFrame * CFrame.new(0,0,-4).p).X, dwCamera:WorldToViewportPoint(v.Character.Head.CFrame * CFrame.new(0,0,-4).p).Y)

                skeletontable.Skeleton.Spine.From = Vector2.new(dwCamera:WorldToViewportPoint(v.Character:WaitForChild("Head").Position).X, dwCamera:WorldToViewportPoint(v.Character:WaitForChild("Head").Position).Y)
                skeletontable.Skeleton.Spine.To = Vector2.new(dwCamera:WorldToViewportPoint(v.Character:WaitForChild("UpperTorso").Position).X, dwCamera:WorldToViewportPoint(v.Character:WaitForChild("UpperTorso").Position).Y)
                skeletontable.Skeleton.LowerSpine.From = Vector2.new(dwCamera:WorldToViewportPoint(v.Character:WaitForChild("UpperTorso").Position).X, dwCamera:WorldToViewportPoint(v.Character:WaitForChild("UpperTorso").Position).Y)
                skeletontable.Skeleton.LowerSpine.To = Vector2.new(dwCamera:WorldToViewportPoint(v.Character:WaitForChild("LowerTorso").Position).X, dwCamera:WorldToViewportPoint(v.Character:WaitForChild("LowerTorso").Position).Y)
                skeletontable.Skeleton.LeftupperLeg.From = Vector2.new(dwCamera:WorldToViewportPoint(v.Character:WaitForChild("LowerTorso").Position).X, dwCamera:WorldToViewportPoint(v.Character:WaitForChild("LowerTorso").Position).Y)
                skeletontable.Skeleton.LeftupperLeg.To = Vector2.new(dwCamera:WorldToViewportPoint(v.Character:WaitForChild("LeftUpperLeg").Position).X, dwCamera:WorldToViewportPoint(v.Character:WaitForChild("LeftUpperLeg").Position).Y)
                skeletontable.Skeleton.LeftlowerLeg.From = Vector2.new(dwCamera:WorldToViewportPoint(v.Character:WaitForChild("LeftUpperLeg").Position).X, dwCamera:WorldToViewportPoint(v.Character:WaitForChild("LeftUpperLeg").Position).Y)
                skeletontable.Skeleton.LeftlowerLeg.To = Vector2.new(dwCamera:WorldToViewportPoint(v.Character:WaitForChild("LeftLowerLeg").Position).X, dwCamera:WorldToViewportPoint(v.Character:WaitForChild("LeftLowerLeg").Position).Y)
                skeletontable.Skeleton.LeftFoot.From = Vector2.new(dwCamera:WorldToViewportPoint(v.Character:WaitForChild("LeftLowerLeg").Position).X, dwCamera:WorldToViewportPoint(v.Character:WaitForChild("LeftLowerLeg").Position).Y)
                skeletontable.Skeleton.LeftFoot.To = Vector2.new(dwCamera:WorldToViewportPoint(v.Character:WaitForChild("LeftFoot").Position).X, dwCamera:WorldToViewportPoint(v.Character:WaitForChild("LeftFoot").Position).Y)
                skeletontable.Skeleton.RightupperLeg.From = Vector2.new(dwCamera:WorldToViewportPoint(v.Character:WaitForChild("LowerTorso").Position).X, dwCamera:WorldToViewportPoint(v.Character:WaitForChild("LowerTorso").Position).Y)
                skeletontable.Skeleton.RightupperLeg.To = Vector2.new(dwCamera:WorldToViewportPoint(v.Character:WaitForChild("RightUpperLeg").Position).X, dwCamera:WorldToViewportPoint(v.Character:WaitForChild("RightUpperLeg").Position).Y)
                skeletontable.Skeleton.RightlowerLeg.From = Vector2.new(dwCamera:WorldToViewportPoint(v.Character:WaitForChild("RightUpperLeg").Position).X, dwCamera:WorldToViewportPoint(v.Character:WaitForChild("RightUpperLeg").Position).Y)
                skeletontable.Skeleton.RightlowerLeg.To = Vector2.new(dwCamera:WorldToViewportPoint(v.Character:WaitForChild("RightLowerLeg").Position).X, dwCamera:WorldToViewportPoint(v.Character:WaitForChild("RightLowerLeg").Position).Y)
                skeletontable.Skeleton.RightFoot.From = Vector2.new(dwCamera:WorldToViewportPoint(v.Character:WaitForChild("RightLowerLeg").Position).X, dwCamera:WorldToViewportPoint(v.Character:WaitForChild("RightLowerLeg").Position).Y)
                skeletontable.Skeleton.RightFoot.To = Vector2.new(dwCamera:WorldToViewportPoint(v.Character:WaitForChild("RightFoot").Position).X, dwCamera:WorldToViewportPoint(v.Character:WaitForChild("RightFoot").Position).Y)
                skeletontable.Skeleton.RightUpperArm.From = Vector2.new(dwCamera:WorldToViewportPoint(v.Character:WaitForChild("UpperTorso").Position).X, dwCamera:WorldToViewportPoint(v.Character:WaitForChild("UpperTorso").Position).Y)
                skeletontable.Skeleton.RightUpperArm.To = Vector2.new(dwCamera:WorldToViewportPoint(v.Character:WaitForChild("RightUpperArm").Position).X, dwCamera:WorldToViewportPoint(v.Character:WaitForChild("RightUpperArm").Position).Y)
                skeletontable.Skeleton.RightLowerArm.From = Vector2.new(dwCamera:WorldToViewportPoint(v.Character:WaitForChild("RightUpperArm").Position).X, dwCamera:WorldToViewportPoint(v.Character:WaitForChild("RightUpperArm").Position).Y)
                skeletontable.Skeleton.RightLowerArm.To = Vector2.new(dwCamera:WorldToViewportPoint(v.Character:WaitForChild("RightLowerArm").Position).X, dwCamera:WorldToViewportPoint(v.Character:WaitForChild("RightLowerArm").Position).Y)
                skeletontable.Skeleton.RightHand.From = Vector2.new(dwCamera:WorldToViewportPoint(v.Character:WaitForChild("RightLowerArm").Position).X, dwCamera:WorldToViewportPoint(v.Character:WaitForChild("RightLowerArm").Position).Y)
                skeletontable.Skeleton.RightHand.To = Vector2.new(dwCamera:WorldToViewportPoint(v.Character:WaitForChild("RightHand").Position).X, dwCamera:WorldToViewportPoint(v.Character:WaitForChild("RightHand").Position).Y)
                skeletontable.Skeleton.LeftUpperArm.From = Vector2.new(dwCamera:WorldToViewportPoint(v.Character:WaitForChild("UpperTorso").Position).X, dwCamera:WorldToViewportPoint(v.Character:WaitForChild("UpperTorso").Position).Y)
                skeletontable.Skeleton.LeftUpperArm.To = Vector2.new(dwCamera:WorldToViewportPoint(v.Character:WaitForChild("LeftUpperArm").Position).X, dwCamera:WorldToViewportPoint(v.Character:WaitForChild("LeftUpperArm").Position).Y)
                skeletontable.Skeleton.LeftLowerArm.From = Vector2.new(dwCamera:WorldToViewportPoint(v.Character:WaitForChild("LeftUpperArm").Position).X, dwCamera:WorldToViewportPoint(v.Character:WaitForChild("LeftUpperArm").Position).Y)
                skeletontable.Skeleton.LeftLowerArm.To = Vector2.new(dwCamera:WorldToViewportPoint(v.Character:WaitForChild("LeftLowerArm").Position).X, dwCamera:WorldToViewportPoint(v.Character:WaitForChild("LeftLowerArm").Position).Y)
                skeletontable.Skeleton.LeftHand.From = Vector2.new(dwCamera:WorldToViewportPoint(v.Character:WaitForChild("LeftLowerArm").Position).X, dwCamera:WorldToViewportPoint(v.Character:WaitForChild("LeftLowerArm").Position).Y)
                skeletontable.Skeleton.LeftHand.To = Vector2.new(dwCamera:WorldToViewportPoint(v.Character:WaitForChild("LeftHand").Position).X, dwCamera:WorldToViewportPoint(v.Character:WaitForChild("LeftHand").Position).Y)

                if teamcheck(v) then
                    esptable.BoxesOutline.Visible = library.flags["espboxes"]
                    esptable.Boxes.Visible = library.flags["espboxes"]
                    esptable.Lines.Visible = library.flags["esplines"]
                    esptable.Playername.Visible = library.flags["espnames"]
                    esptable.Playername.Text = "Enemy: "..v.Name
                    esptable.Distance.Visible = library.flags["espdistance"]
                    esptable.Distance.Text = "Distance: "..math.ceil(magnitude)
                    esptable.Lookangle.Visible = library.flags["esplookangle"]

                    for index, skeleton in pairs(skeletontable.Skeleton) do
                        skeleton.Visible = library.flags["espskeleton"]
                    end
                    if library.flags["mouseaimbot"] and closest and (v.Name == closest.Name) then
                        esptable.Boxes.Color = Color3.fromRGB(0,255,0)
                        esptable.Lines.Color = Color3.fromRGB(0,255,0)
                        esptable.Playername.Color = Color3.fromRGB(0,255,0)
                        esptable.Distance.Color = Color3.fromRGB(0,255,0)
                        esptable.Lookangle.Color = Color3.fromRGB(0,255,0)

                        for index, skeleton in pairs(skeletontable.Skeleton) do
                            skeleton.Color = Color3.fromRGB(0,255,0)
                        end
                    else
                        esptable.Boxes.Color = Color3.fromRGB(255,0,0)
                        esptable.Lines.Color = Color3.fromRGB(255,0,0)
                        esptable.Playername.Color = Color3.fromRGB(255,0,0)
                        esptable.Distance.Color = Color3.fromRGB(255,0,0)
                        esptable.Lookangle.Color = Color3.fromRGB(255,0,0)

                        for index, skeleton in pairs(skeletontable.Skeleton) do
                            skeleton.Color = Color3.fromRGB(255,0,0)
                        end
                    end
                else
                    esptable.BoxesOutline.Visible = library.flags["espboxes"] and library.flags["espshowteam"]
                    esptable.Boxes.Visible = library.flags["espboxes"] and library.flags["espshowteam"]
                    esptable.Boxes.Color = Color3.fromRGB(0,0,255)
                    esptable.Lines.Visible = library.flags["esplines"] and library.flags["espshowteam"]
                    esptable.Lines.Color = Color3.fromRGB(0,0,255)
                    esptable.Playername.Visible = library.flags["espnames"] and library.flags["espshowteam"]
                    esptable.Playername.Text = "Friendly: "..v.Name
                    esptable.Playername.Color = Color3.fromRGB(0,0,255)
                    esptable.Lookangle.Visible = library.flags["esplookangle"] and library.flags["espshowteam"]
                    esptable.Lookangle.Color = Color3.fromRGB(0,0,255)
                    esptable.Distance.Visible = library.flags["espdistance"] and library.flags["espshowteam"]
                    esptable.Distance.Text = "Distance: "..math.ceil(magnitude)
                    esptable.Distance.Color = Color3.fromRGB(0,0,255)

                    for index, skeleton in pairs(skeletontable.Skeleton) do
                        skeleton.Visible = library.flags["espskeleton"] and library.flags["espshowteam"]
                        skeleton.Color = Color3.fromRGB(0,0,255)
                    end
                end
            else
                for index, esp in pairs(esptable) do
                    esp.Visible = false
                end
                for index, skeleton in pairs(skeletontable.Skeleton) do
                    skeleton.Visible = false
                end
            end
        else
            for index, esp in pairs(esptable) do
                esp.Visible = false
            end
            for index, skeleton in pairs(skeletontable.Skeleton) do
                skeleton.Visible = false
            end
        end
    end)
end

for i, player in ipairs(game:GetService("Players"):GetChildren()) do
    drawHumanESP(player)
end
game:GetService("Players").PlayerAdded:Connect(function(player)
	drawHumanESP(player)
end)