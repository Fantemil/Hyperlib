if game:GetService("CoreGui"):FindFirstChild("Sirex") then return end
local ver = "3.2.2"
if not isfolder("Sirex") then
    makefolder("Sirex")
end
if not isfolder("Sirex/"..tostring(game.GameId)) then
    makefolder("Sirex/"..tostring(game.GameId))
end

if not LPH_OBFUSCATED then
    LPH_JIT_MAX = function(...) return(...) end;
    LPH_NO_VIRTUALIZE = function(...) return(...) end;
end

local userInputService = game:GetService("UserInputService")
local replicatedStorage = game:GetService("ReplicatedStorage")
local runService = game:GetService("RunService")
local players = game:GetService("Players")
local lighting = game:GetService("Lighting")
local localPlayer = players.LocalPlayer
local camera = workspace.CurrentCamera
local mouse = localPlayer:GetMouse()
local Debris = game:GetService("Debris")
local NetworkClient = game:GetService("NetworkClient")
local TweenService = game:GetService("TweenService")

local CNew, CF, C3, Vec2, Vec3 = ColorSequence.new, CFrame.new, Color3.fromRGB, Vector2.new, Vector3.new

local library = {name = "Counter Blox",colorpicking = false,tabbuttons = {},tabs = {},options = {},flags = {},scrolling = false,notifyText = Drawing.new("Text"),playing = false,multiZindex = 100,toInvis = {},libColor = Color3.fromRGB(135, 50, 240),blacklisted = {Enum.KeyCode.W,Enum.KeyCode.A,Enum.KeyCode.S,Enum.KeyCode.D,Enum.UserInputType.MouseMovement}}

local menu = game:GetObjects("rbxassetid://14050559743")[1]
local SirexWatermark = game:GetObjects("rbxassetid://14051857486")[1]

--[[spawn(function()
    wait(2)
    while menu.Enabled == true do task.wait()
        for _, v in pairs(menu.Debug:GetChildren()) do
            if v.Name == "Main" and v.BackgroundColor3 ~= C3(librarycolors.Frame) then
                v.BackgroundColor3 = C3(librarycolors.Frame)
            end
            for _,v2 in pairs(menu.Debug.Main:GetChildren()) do
                for _,v3 in pairs(menu.Debug.Main.group:GetChildren()) do
                    if v3.Name == "Blackout" and v3.BackgroundColor3 ~= C3(librarycolors.Background)  then
                        v3.BackgroundColor3 = C3(librarycolors.Background)
                        if v3:FindFirstChild("Outline").BackgroundColor3 ~= C3(librarycolors.Outline) then
                            v3:FindFirstChild("Outline").BackgroundColor3 = librarycolors.Outline
                        end
                    end
                    if v3.Name == "tab" and v3.BackgroundColor3 ~= librarycolors.Frame then
                        v3.BackgroundColor3 = librarycolors.Frame
                        if v3.ScrollBarImageColor3 ~= C3(librarycolors.Outline) then
                            v3.ScrollBarImageColor3 = C3(librarycolors.Outline)
                        end
                    end
                    if v3.Name == "tabbuttons" then
                        for i, bt in pairs(v3:GetChildren()) do
                            if bt:IsA("TextButton") then
                                if bt.TextColor3 ~= C3(librarycolors.Main) or bt.TextSize ~= librarycolors.Text then
                                    bt.TextColor3 = C3(librarycolors.Main);bt.TextSize = librarycolors.Text
                                end
                            end
                        end
                    end
                end
                if v2:IsA("TextLabel") then
                    if v2.TextColor3 ~= C3(librarycolors.Text) or v2.TextSize ~= librarycolors.TextSize then
                        v2.TextColor3 = C3(librarycolors.Text);v2.TextSize = librarycolors.TextSize
                    end
                end
            end
        end
    end
end)]]

local UseTextScale = false
local time = 0
local count = true
spawn(function()
    repeat task.wait()
        time = time + 1
        menu.Debug.Main.text.Text = "Wait Time: "..time
    until count == false
end)

local tabholder = menu.Debug.Main.group
menu.Debug.Position = UDim2.new(0.5,-menu.Debug.Size.X.Offset/2,0.5,-menu.Debug.Size.Y.Offset/2)
menu.Parent = game:GetService("CoreGui")

SirexWatermark.Parent = game:GetService("CoreGui")
SirexWatermark.Enabled = false

function draggable(a)local b=userInputService;local c;local d;local e;local f;local function g(h)if not library.colorpicking then local i=h.Position-e;a.Position=UDim2.new(f.X.Scale,f.X.Offset+i.X,f.Y.Scale,f.Y.Offset+i.Y)end end;a.InputBegan:Connect(function(h)if h.UserInputType==Enum.UserInputType.MouseButton1 or h.UserInputType==Enum.UserInputType.Touch then c=true;e=h.Position;f=a.Position;h.Changed:Connect(function()if h.UserInputState==Enum.UserInputState.End then c=false end end)end end)a.InputChanged:Connect(function(h)if h.UserInputType==Enum.UserInputType.MouseMovement or h.UserInputType==Enum.UserInputType.Touch then d=h end end)b.InputChanged:Connect(function(h)if h==d and c then g(h)end end)end
draggable(menu.Debug)
draggable(SirexWatermark.Main)

local cursor = Drawing.new("Image")
cursor.Data = game:HttpGet("https://fini.work/cursor.png")
cursor.Size = Vector2.new(32,32)
cursor.Visible = true

library.notifyText.Font = 2
library.notifyText.Size = 15
library.notifyText.TextScaled = true
library.notifyText.Outline = true
library.notifyText.Color = Color3.fromRGB(239, 216, 255)
library.notifyText.Position = Vector2.new(10,60)
local DebugMenu = true
userInputService.InputEnded:Connect(function(key)
    if key.KeyCode == library.flags.menu_key then
        menu.Enabled = not menu.Enabled
        DebugMenu = menu.Enabled
        cursor.Visible = menu.Enabled
        library.scrolling = false
        library.colorpicking = false
        for i,v in next, library.toInvis do
            v.Visible = false
        end
    end
end)

local playing = false
function library:notify(text)
    if playing then return end
    playing = true
    library.notifyText.Text = text
    library.notifyText.Transparency = 0
    library.notifyText.Visible = true
    for i = 0,1,0.1 do wait()
        library.notifyText.Transparency = i
    end
    spawn(function()
        wait(3)
        for i = 1,0,-0.1 do wait()
            library.notifyText.Transparency = i
        end
        playing = false
        library.notifyText.Visible = false
    end)
end
function library:addTab(name,Imageid)
    local newTab = tabholder.tab:Clone()
    local newButton = tabholder.tabbuttons.button:Clone()

    table.insert(library.tabs,newTab)
    newTab.Parent = tabholder
    newTab.Visible = false

    table.insert(library.tabbuttons,newButton)
    newButton.Parent = tabholder.tabbuttons
    newButton.Modal = true
    newButton.Visible = true
    newButton.Text = name
    newButton.TextLabel.Text = name
    newButton.TextLabel.Visible = false

    if Imageid ~= nil then
        newButton.ImageLabel.Image = "rbxassetid://"..Imageid
        newButton.Text = ""
        newButton.TextLabel.Visible = true
    else
        newButton.TextLabel:Destroy()
        newButton.ImageLabel:Destroy()
    end

    newButton.MouseButton1Click:Connect(function()
        for i,v in next, library.tabs do
            v.Visible = v == newTab
        end
        for i,v in next, library.toInvis do
            v.Visible = false
        end
    end)

    for i,v in next, library.tabbuttons do
        v.Size = UDim2.new(0.838, 0,0.05, 18)
        -- v.Size = UDim2.new(0.75/#library.tabbuttons,1.3,1.3,1.3)
    end

    local tab = {}
    local groupCount = 0
    local jigCount = 0
    local topStuff = 2000

    function tab:createGroup(pos)
        local groupbox = Instance.new("Frame")
        local grouper = Instance.new("Frame")
        local layout = Instance.new("UIListLayout")
        groupCount -= 1
        if pos == 0 or pos == "left" then
            groupbox.Parent = newTab[pos == 0 and "left"]
        elseif pos == 1 or pos == "right" then
            groupbox.Parent = newTab[pos == 1 and "right"]
        elseif pos == 2 or pos == "center" then
            groupbox.Parent = newTab[pos == 2 and "center"]
        else
            print("Incorrect Args "..pos)
        end
        groupbox.BackgroundColor3 = Color3.fromRGB(28, 0, 42)
        groupbox.BorderSizePixel = 0
        groupbox.Size = UDim2.new(1,-5,0,15)
        groupbox.ZIndex = groupCount
        groupbox.Parent.UIListLayout.Padding = UDim.new(0,5)

        grouper.Parent = groupbox
        grouper.BackgroundColor3 = Color3.fromRGB(255,255,255)
        grouper.BackgroundTransparency = 1
        grouper.Position = UDim2.new(0,5,0,7)
        grouper.Size = UDim2.new(1,0,1,0)

        layout.Parent = grouper
        layout.Padding = UDim.new(0,5)
        layout.SortOrder = "LayoutOrder"

        local group = {}
        function group:addToggle(args)
            if not args.flag and args.text then args.flag = args.text end
            if not args.flag then return warn("⚠️ incorrect arguments ⚠️") end
            groupbox.Size += UDim2.new(0,0,0,23.5)

            local checkbox = Instance.new("TextButton")
            local box = Instance.new("Frame")
            local text = Instance.new("TextLabel")
            jigCount -= 1

            checkbox.Parent = grouper
            checkbox.BackgroundColor3 = Color3.fromRGB(25, 0, 37)
            checkbox.BackgroundTransparency = 1
            checkbox.Size = UDim2.new(1,0,0,18)
            checkbox.Text = ""
            checkbox.TextColor3 = Color3.fromRGB(0,0,0)
            checkbox.TextSize = 14
            checkbox.ZIndex = jigCount

            box.Parent = checkbox
            box.BackgroundColor3 = Color3.fromRGB(31, 0, 48)
            box.BorderColor3 = Color3.fromRGB(25, 0, 37)
            box.Size = UDim2.new(0,18,0,18)

            text.Parent = box
            text.BackgroundColor3 = Color3.fromRGB(255,255,255)
            text.BorderSizePixel = 0
            text.Position = UDim2.new(1,10,0,0)
            text.Size = UDim2.new(0,0,1,0)
            text.Font = "Arial"
            text.Text = args.text or args.flag
            text.TextColor3 = Color3.fromRGB(231, 189, 255)
            text.TextSize = 15
            text.TextScaled = UseTextScale
            text.TextXAlignment = "Left"

            local state = false
            function toggle(newState)
                state = newState
                box.BackgroundColor3 = state and library.libColor or Color3.fromRGB(31, 0, 48)
                library.flags[args.flag] = state
                if args.callback then
                    args.callback(state)
                end
            end
            -- this is stupid but it just doesnt want to work properly
            checkbox.MouseButton1Click:Connect(function()
                state = not state
                box.BackgroundColor3 = state and library.libColor or Color3.fromRGB(31, 0, 48)
                library.flags[args.flag] = state
                if args.callback then
                    args.callback(state)
                end
            end)

            library.flags[args.flag] = false
            library.options[args.flag] = {type = "toggle",changeState = toggle,skipflag = args.skipflag,oldargs = args}
        end
        function group:addButton(args)
            if not args.callback or not args.text then return warn("⚠️ incorrect arguments ⚠️") end
            groupbox.Size += UDim2.new(0,0,0,23.5)

            local button = Instance.new("TextButton")
            button.Parent = grouper
            button.BackgroundColor3 = Color3.fromRGB(31, 0, 48)
            button.BorderColor3 = Color3.fromRGB(25, 0, 37)
            button.Size = UDim2.new(1,-10,0,18)
            button.AutoButtonColor = false
            button.TextColor3 = Color3.fromRGB(231, 189, 255)
            button.Font = "Arial"
            button.TextSize = 15
            button.TextScaled = UseTextScale
            button.Text = args.text

            button.MouseButton1Click:Connect(function()
                if not library.colorpicking then
                    args.callback()
                end
            end)
        end
        function group:addSlider(args)
            if not args.flag or not args.max then return warn("⚠️ incorrect arguments ⚠️") end
            groupbox.Size += UDim2.new(0,0,0,41.5)

            local slider = Instance.new("Frame")
            local slider_2 = Instance.new("TextButton")
            local text = Instance.new("TextLabel")
            local fill = Instance.new("Frame")
            local valueText = Instance.new("TextLabel")

            slider.Parent = grouper
            slider.BackgroundColor3 = Color3.fromRGB(255,255,255)
            slider.BackgroundTransparency = 1
            slider.Size = UDim2.new(1,0,0,36)

            slider_2.Parent = slider
            slider_2.BackgroundColor3 = Color3.fromRGB(31, 0, 48)
            slider_2.BorderColor3 = Color3.fromRGB(25, 0, 37)
            slider_2.Position = UDim2.new(0,0,0,18)
            slider_2.Size = UDim2.new(1,-10,0,18)
            slider_2.AutoButtonColor = false
            slider_2.Font = Enum.Font.Arial
            slider_2.Text = ""
            slider_2.TextColor3 = Color3.fromRGB(231, 189, 255)
            slider_2.TextSize = 14


            text.Parent = slider_2
            text.BackgroundColor3 = Color3.fromRGB(255,255,255)
            text.BackgroundTransparency = 1
            text.BorderSizePixel = 0
            text.Position = UDim2.new(0,0,-1,0)
            text.Size = UDim2.new(1,0,1,0)
            text.Font = Enum.Font.Arial
            text.Text = args.text or args.flag
            text.TextColor3 = Color3.fromRGB(231, 189, 255)
            text.TextSize = 15
            text.TextScaled = UseTextScale
            text.TextXAlignment = "Left"
            text.TextYAlignment = "Top"

            fill.Parent = slider_2
            fill.BackgroundColor3 = library.libColor
            fill.BorderSizePixel = 0
            fill.Size = UDim2.new(0,0,1,0)
            fill.ZIndex = 0

            valueText.Parent = slider_2
            valueText.BackgroundColor3 = Color3.fromRGB(255,255,255)
            valueText.BackgroundTransparency = 1
            valueText.Size = UDim2.new(1,0,1,0)
            valueText.Font = Enum.Font.Arial
            valueText.Text = "0"
            valueText.TextColor3 = Color3.fromRGB(231, 189, 255)
            valueText.TextSize = 15
            valueText.TextScaled = UseTextScale

            local entered = false
			local scrolling = false
			local amount = 0

            local function updateValue(value)
				if value ~= 0 then
					fill:TweenSize(UDim2.new(value/args.max,0,1,0),Enum.EasingDirection.In,Enum.EasingStyle.Sine,0.01)
				else
					fill:TweenSize(UDim2.new(0,1,1,0),Enum.EasingDirection.In,Enum.EasingStyle.Sine,0.01)
                end
                valueText.Text = value
                library.flags[args.flag] = value
                if args.callback then
                    args.callback(value)
                end
			end
			local function updateScroll()
                if scrolling or library.scrolling or not newTab.Visible or library.colorpicking then return end
                while userInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) and menu.Enabled do runService.RenderStepped:Wait()
                    library.scrolling = true
                    valueText.TextColor3 = Color3.fromRGB(231, 189, 255)
					scrolling = true
					local value = args.min + ((mouse.X - slider_2.AbsolutePosition.X) / slider_2.AbsoluteSize.X) * (args.max - args.min)
					if value < args.min then value = args.min end
					if value > args.max then value = args.max end
					updateValue(math.floor(value))
                end
                if scrolling and not entered then
                    valueText.TextColor3 = Color3.fromRGB(231, 189, 255)
                end
                if not menu.Enabled then
                    entered = false
                end
                scrolling = false
                library.scrolling = false
			end
			slider_2.MouseEnter:connect(function()
				if scrolling or entered then return end
                entered = true
                valueText.TextColor3 = Color3.fromRGB(231, 189, 255)
				while entered do wait()
					updateScroll()
				end
			end)
			slider_2.MouseLeave:connect(function()
                entered = false
                valueText.TextColor3 = Color3.fromRGB(231, 189, 255)
			end)
            if args.value then
                updateValue(args.value)
            end
            library.flags[args.flag] = 0
            library.options[args.flag] = {type = "slider",changeState = updateValue,skipflag = args.skipflag,oldargs = args}
            updateValue(args.value or 0)
        end
        function group:addDivider()
            groupbox.Size += UDim2.new(0,0,0,3)
            local divider = Instance.new("Frame")

            divider.Parent = grouper
            divider.BackgroundColor3 = Color3.fromRGB(33, 0, 53)
            divider.Size = UDim2.new(1,-10,0,1)
            divider.BorderSizePixel = 0
            divider.Name = "dontchange"
        end
        function group:addTextbox(args)
            if not args.flag then return warn("⚠️ incorrect arguments ⚠️") end
            local textbox = Instance.new("TextBox")
            groupbox.Size += UDim2.new(0,0,0,24)

            textbox:GetPropertyChangedSignal('Text'):Connect(function(val)
                library.flags[args.flag] = textbox.Text
            end)

            textbox.Parent = grouper
            textbox.BackgroundColor3 = Color3.fromRGB(31, 0, 48)
            textbox.BorderColor3 = Color3.fromRGB(25, 0, 37)
            textbox.Size = UDim2.new(1,-10,0,18)
            textbox.ClearTextOnFocus = false
            textbox.Font = Enum.Font.Arial
            textbox.PlaceholderColor3 = Color3.fromRGB(231, 189, 255)
            textbox.PlaceholderText = args.text or ""
            textbox.Text = ""
            textbox.TextColor3 = Color3.fromRGB(231, 189, 255)
            textbox.TextSize = 15
            textbox.TextScaled = UseTextScale

            library.flags[args.flag] = ""
            library.options[args.flag] = {type = "textbox",changeState = function(text) textbox.Text = text end,skipflag = args.skipflag,oldargs = args}
        end
        function group:addKeybind(args)
            if not args.flag then return warn("⚠️ incorrect arguments ⚠️") end
            groupbox.Size += UDim2.new(0,0,0,23.5)

            local button = Instance.new("TextButton")
            local text = Instance.new("TextLabel")
            local newText = Instance.new("TextLabel")
            local next = false

            button.Parent = grouper
            button.BackgroundColor3 = Color3.fromRGB(31, 0, 48)
            button.BorderColor3 = Color3.fromRGB(25, 0, 37)
            button.Size = UDim2.new(0.55,0,0,18)
            button.AutoButtonColor = false
            button.TextColor3 = Color3.fromRGB(231, 189, 255)
            button.Font = "Arial"
            button.TextSize = 15
            button.TextScaled = UseTextScale
            button.Text = ""

            newText.Parent = button
            newText.BackgroundTransparency = 1
            newText.Position = UDim2.new(0,0,0,0)
            newText.Size = UDim2.new(1,0,1,0)
            newText.Font = "Arial"
            newText.Text = ""
            newText.TextColor3 = Color3.fromRGB(231, 189, 255)
            newText.TextSize = 15
            newText.TextScaled = UseTextScale

            newText.TextXAlignment = "Left"
            newText.ClipsDescendants = true
            newText.TextXAlignment = "Center"

            text.Parent = button
            text.BackgroundColor3 = Color3.fromRGB(31, 0, 48)
            text.BorderSizePixel = 0
            text.Position = UDim2.new(1,10,0,0)
            text.Size = UDim2.new(0,0,1,0)
            text.Font = "Arial"
            text.Text = args.text or args.flag
            text.TextColor3 = Color3.fromRGB(231, 189, 255)
            text.TextSize = 15
            text.TextXAlignment = "Left"

            function updateValue(val)
                library.flags[args.flag] = val
                newText.Text = string.split(tostring(val),".")[3]:gsub("MouseButton","Mouse") 
            end

            userInputService.InputBegan:Connect(function(key)
                local key = key.KeyCode == Enum.KeyCode.Unknown and key.UserInputType or key.KeyCode
                if next then
                    if not table.find(library.blacklisted,key) then
                        next = false
                        library.flags[args.flag] = key
                        newText.Text = string.split(tostring(key),".")[3]:gsub("MouseButton","Mouse") 
                    end
                end
                if not next and key == library.flags[args.flag] and args.callback then
                    args.callback()
                end
            end)

            button.MouseButton1Click:Connect(function()
                library.flags[args.flag] = Enum.KeyCode.Unknown
                newText.Text = "..."
                next = true
            end)

            library.flags[args.flag] = Enum.KeyCode.Unknown
            library.options[args.flag] = {type = "keybind",changeState = updateValue,skipflag = args.skipflag,oldargs = args}

            updateValue(args.key or Enum.KeyCode.Unknown)
        end
        function group:addList(args)
            if not args.flag or not args.values then return warn("⚠️ incorrect arguments ⚠️") end
            groupbox.Size += UDim2.new(0,0,0,23.5)

            library.multiZindex -= 1
            local button = Instance.new("TextButton")
            local listFrame = Instance.new("Frame")
            local layout = Instance.new("UIListLayout")
            local text = Instance.new("TextLabel")
            local newText = Instance.new("TextLabel")

            layout.Parent = listFrame
            layout.Padding = UDim.new(0,0)
            layout.SortOrder = "LayoutOrder"

            button.Parent = grouper
            button.BackgroundColor3 = Color3.fromRGB(31, 0, 48)
            button.BorderColor3 = Color3.fromRGB(25, 0, 37)

            button.Size = UDim2.new(0.65,0,0,18)
            button.AutoButtonColor = false
            button.TextColor3 = Color3.fromRGB(231, 189, 255)
            button.Font = "Arial"
            button.TextSize = 15
            button.Text = ""
            button.ZIndex = library.multiZindex 

            newText.Parent = button
            newText.BackgroundTransparency = 1
            newText.Position = UDim2.new(0,0,0,0)
            newText.Size = UDim2.new(1,0,1,0)
            newText.Font = "Arial"
            newText.Text = args.multiselect and "..." or ""
            newText.TextColor3 = Color3.fromRGB(231, 189, 255)
            newText.TextSize = 15
            newText.TextXAlignment = "Left"
            newText.ClipsDescendants = true
            newText.TextXAlignment = "Center"

            listFrame.ZIndex = topStuff
            listFrame.Visible = false
            listFrame.Parent = button
            listFrame.Transparency = 0
            listFrame.Size = UDim2.new(1,0,0,#args.values*18)
            listFrame.BorderColor3 = Color3.fromRGB(25, 0, 37)
            listFrame.Position = UDim2.new(0,0,1,0)

            text.Parent = button
            text.BackgroundColor3 = Color3.fromRGB(31, 0, 48)
            text.BorderSizePixel = 0
            text.Position = UDim2.new(1,10,0,0)
            text.Size = UDim2.new(0,0,1,0)
            text.Font = "Arial"
            text.Text = args.text or args.flag
            text.TextColor3 = Color3.fromRGB(231, 189, 255)
            text.TextSize = 15
            text.TextXAlignment = "Left"

			local function updateValue(value)
                if value == nil then newText.Text = "" return end
				if args.multiselect then
                    if type(value) == "string" then
                        if not table.find(library.options[args.flag].values,value) then return end
                        if table.find(library.flags[args.flag],value) then
                            for i,v in pairs(library.flags[args.flag]) do
                                if v == value then
                                    table.remove(library.flags[args.flag],i)
                                end
                            end
                        else
                            table.insert(library.flags[args.flag],value)
                        end
                    else
                        library.flags[args.flag] = value
                    end
					local buttonText = ""
					for i,v in pairs(library.flags[args.flag]) do
						local jig = i ~= #library.flags[args.flag] and "," or ""
						buttonText = buttonText.." "..v..jig
					end
                    if buttonText == "" then buttonText = "..." end
					for i,v in next, listFrame:GetChildren() do
						if v.ClassName ~= "TextButton" then continue end
						v.TextColor3 = Color3.fromRGB(231, 189, 255)
						for _i,_v in next, library.flags[args.flag] do
							if v.Name == _v then
								v.TextColor3 = Color3.fromRGB(231, 189, 255)
							end
						end
					end
					newText.Text = buttonText
					if args.callback then
						args.callback(library.flags[args.flag])
					end
				else
                    if not table.find(library.options[args.flag].values,value) then value = library.options[args.flag].values[1] end
                    library.flags[args.flag] = value
					for i,v in next, listFrame:GetChildren() do
						if v.ClassName ~= "TextButton" then continue end
						v.TextColor3 = Color3.fromRGB(231, 189, 255)
                        if v.Name == library.flags[args.flag] then
                            v.TextColor3 = Color3.fromRGB(231, 189, 255)
                        end
					end
					listFrame.Visible = false
                    if library.flags[args.flag] then
                        newText.Text = library.flags[args.flag]
                        if args.callback then
                            args.callback(library.flags[args.flag])
                        end
                    end
				end
			end

            function refresh(tbl)
                for i,v in next, listFrame:GetChildren() do
                    if v.ClassName == "TextButton" then
                        v:Destroy()
                    end
                end
                for i,v in pairs(tbl) do
                    local valueButton = Instance.new("TextButton")
                    valueButton.ZIndex = topStuff
                    valueButton.Visible = true
                    valueButton.Parent = listFrame
                    valueButton.Transparency = 0
                    valueButton.Size = UDim2.new(1,0,0,18)
                    valueButton.Position = UDim2.new(0,0,0,0)
                    valueButton.BackgroundColor3 = Color3.fromRGB(31, 0, 48)
                    valueButton.TextColor3 = args.multiselect and Color3.fromRGB(231, 189, 255) or Color3.fromRGB(231, 189, 255)
                    valueButton.BorderSizePixel = 0
                    valueButton.AutoButtonColor = false
                    valueButton.TextSize = 15
                    valueButton.Font = "Arial"
                    valueButton.Text = v
                    valueButton.Name = v
    
                    valueButton.MouseButton1Click:Connect(function()
                        updateValue(v)
                    end)
                end
                library.options[args.flag].values = tbl
                updateValue(table.find(library.options[args.flag].values,library.flags[args.flag]) and library.flags[args.flag] or library.options[args.flag].values[1])
            end

            button.MouseButton1Click:Connect(function()
                if not library.colorpicking then
                    listFrame.Visible = not listFrame.Visible
                end
            end)

            table.insert(library.toInvis,listFrame)
            library.flags[args.flag] = args.multiselect and {} or ""
            library.options[args.flag] = {type = "list",changeState = updateValue,values = args.values,refresh = refresh,skipflag = args.skipflag,oldargs = args}

            refresh(args.values)
            updateValue(args.value or not args.multiselect and args.values[1] or "abcdefghijklmnopqrstuwvxyz")
        end
        function group:addColorpicker(args)
            if not args.flag then return warn("⚠️ incorrect arguments ⚠️") end
            groupbox.Size += UDim2.new(0,0,0,20.5)

            library.multiZindex -= 1
            jigCount -= 1
            topStuff -= 1
            local button = Instance.new("TextButton")
            local colorFrame = Instance.new("Frame")
            local text = Instance.new("TextLabel")
            local picker = Instance.new("ImageLabel")
            local hue = Instance.new("ImageLabel")

            colorFrame.ZIndex = library.multiZindex
            colorFrame.Visible = false
            colorFrame.Parent = button
            colorFrame.Transparency = 0
            colorFrame.Size = UDim2.new(0,120,0,100)
            colorFrame.Position = UDim2.new(1,0,1,0)

            picker.Parent = colorFrame
            picker.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
            picker.BorderColor3 = Color3.fromRGB(0, 0, 0)
            picker.Size = UDim2.new(0, 100, 0, 100)
            picker.Image = "rbxassetid://2615689005"
            picker.Name = "dontchange"

            hue.Parent = colorFrame
            hue.AnchorPoint = Vector2.new(1, 0)
            hue.BackgroundColor3 = Color3.fromRGB(248, 248, 248)
            hue.BorderColor3 = Color3.fromRGB(0, 0, 0)
            hue.Position = UDim2.new(1, 0, 0, 0)
            hue.Size = UDim2.new(0, 20, 0, 100)
            hue.Image = "rbxassetid://2615692420"

            button.Parent = grouper
            button.BackgroundColor3 = args.color or Color3.new(1,1,1)
            button.BorderColor3 = Color3.fromRGB(25, 0, 37)
            button.Size = UDim2.new(0,35,0,15)
            button.AutoButtonColor = false
            button.ZIndex = args.ontop and topStuff or jigCount
            button.TextColor3 = Color3.fromRGB(231, 189, 255)
            button.Font = "Arial"
            button.TextSize = 15
            button.Text = ""
            button.Name = "dontchange"

            text.Parent = button
            text.BackgroundColor3 = Color3.fromRGB(31, 0, 48)
            text.BorderSizePixel = 0
            text.Position = UDim2.new(1,10,0,0)
            text.Size = UDim2.new(0,0,1,0)
            text.Font = "Arial"
            text.Text = args.text or args.flag
            text.TextColor3 = Color3.fromRGB(231, 189, 255)
            text.TextSize = 15
            text.TextXAlignment = "Left"

            button.MouseButton1Click:Connect(function()
                colorFrame.Visible = not colorFrame.Visible
            end)

            local function updateValue(value,fakevalue)
                if typeof(value) == "table" then value = fakevalue end
                button.BackgroundColor3 = value
                library.flags[args.flag] = value
                if args.callback then
                    args.callback(value)
                end
			end

            local white, black = Color3.new(1,1,1), Color3.new(0,0,0)
            local colors = {Color3.new(1,0,0),Color3.new(1,1,0),Color3.new(0,1,0),Color3.new(0,1,1),Color3.new(0,0,1),Color3.new(1,0,1),Color3.new(1,0,0)}
            local heartbeat = game:GetService("RunService").Heartbeat

            local pickerX,pickerY,hueY = 0,0,0
            local oldpercentX,oldpercentY = 0,0

            hue.MouseEnter:Connect(function()
                local input = hue.InputBegan:connect(function(key)
                    if key.UserInputType == Enum.UserInputType.MouseButton1 then
                        while heartbeat:wait() and userInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
                            library.colorpicking = true
                            local percent = (hueY-hue.AbsolutePosition.Y-36)/hue.AbsoluteSize.Y
                            local num = math.max(1, math.min(7,math.floor(((percent*7+0.5)*100))/100))
                            local startC = colors[math.floor(num)]
                            local endC = colors[math.ceil(num)]
                            local color = white:lerp(picker.BackgroundColor3, oldpercentX):lerp(black, oldpercentY)
                            picker.BackgroundColor3 = startC:lerp(endC, num-math.floor(num)) or Color3.new(0, 0, 0)
                            updateValue(color)
                        end
                        library.colorpicking = false
                    end
                end)
                local leave
                leave = hue.MouseLeave:connect(function()
                    input:disconnect()
                    leave:disconnect()
                end)
            end)

            picker.MouseEnter:Connect(function()
                local input = picker.InputBegan:connect(function(key)
                    if key.UserInputType == Enum.UserInputType.MouseButton1 then
                        while heartbeat:wait() and userInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
                            library.colorpicking = true
                            local xPercent = (pickerX-picker.AbsolutePosition.X)/picker.AbsoluteSize.X
                            local yPercent = (pickerY-picker.AbsolutePosition.Y-36)/picker.AbsoluteSize.Y
                            local color = white:lerp(picker.BackgroundColor3, xPercent):lerp(black, yPercent)
                            updateValue(color)
                            oldpercentX,oldpercentY = xPercent,yPercent
                        end
                        library.colorpicking = false
                    end
                end)
                local leave
                leave = picker.MouseLeave:connect(function()
                    input:disconnect()
                    leave:disconnect()
                end)
            end)

            hue.MouseMoved:connect(function(_, y)
                hueY = y
            end)

            picker.MouseMoved:connect(function(x, y)
                pickerX,pickerY = x,y
            end)

            table.insert(library.toInvis,colorFrame)
            library.flags[args.flag] = Color3.new(1,1,1)
            library.options[args.flag] = {type = "colorpicker",changeState = updateValue,skipflag = args.skipflag,oldargs = args}

            updateValue(args.color or Color3.new(1,1,1))
        end
        return group,groupbox
    end
    return tab
end

function library:saveConfig()
    local name = library.flags["config_name"]
    if name == "" then name = library.flags["selected_config"] end
    local jig = {}
    for i,v in next, library.flags do
        if library.options[i].skipflag then continue end
        if typeof(v) == "Color3" then
            jig[i] = {v.R,v.G,v.B}
        elseif typeof(v) == "EnumItem" then
            jig[i] = {string.split(tostring(v),".")[2],string.split(tostring(v),".")[3]}
        else
            jig[i] = v
        end
    end
    writefile("Sirex/"..tostring(game.GameId).."/"..name..".cfg",game:GetService("HttpService"):JSONEncode(jig))
    library:notify("Succesfully saved config "..name..".cfg!")
    library:refreshConfigs()
end

function library:loadConfig()
    local name = library.flags["selected_config"]
    if not isfile("Sirex/"..tostring(game.GameId).."/"..name..".cfg") then
        library:notify("Config file not found!")
        return
    end  
    local config = game:GetService("HttpService"):JSONDecode(readfile("Sirex/"..tostring(game.GameId).."/"..name..".cfg"))
    for i,v in next, library.options do
        spawn(function()pcall(function()
            if config[i] then
                if v.type == "colorpicker" then
                    v.changeState(Color3.new(config[i][1],config[i][2],config[i][3]))
                elseif v.type == "keybind" then
                    v.changeState(Enum[config[i][1]][config[i][2]])
                else
                    if config[i] ~= library.flags[i] then
                        v.changeState(config[i])
                    end
                end
            else
                if v.type == "toggle" then
                    v.changeState(false)
                elseif v.type == "slider" then
                    v.changeState(v.args.value or 0)
                elseif v.type == "textbox" or v.type == "list" then
                    v.changeState(v.args.text or "")
                elseif v.type == "colorpicker" then
                    v.changeState(v.args.color or Color3.new(1,1,1))
                elseif option.type == "list" then
                    v.changeState("")
                elseif option.type == "keybind" then
                    v.changeState(v.args.key or Enum.KeyCode.Unknown)
                end
            end
        end)end)
    end
    library:notify("Succesfully loaded config "..name..".cfg!")
end

function library:refreshConfigs()
    local tbl = {}
    for i,v in next, listfiles("Sirex/"..tostring(game.GameId)) do
        table.insert(tbl,v:split("\\")[2]:split(".")[1])
    end
    library.options["selected_config"].refresh(tbl)
end

function library:deleteConfig()
    if isfile("Sirex/"..tostring(game.GameId).."/"..library.flags["selected_config"]..".cfg") then
        delfile("Sirex/"..tostring(game.GameId).."/"..library.flags["selected_config"]..".cfg")
        library:refreshConfigs()
    end
end

local mouse = game:GetService("Players").LocalPlayer:GetMouse()
runService.RenderStepped:Connect(function()
    cursor.Position = Vector2.new(mouse.X-16,mouse.Y+18)	
end)

local skyboxes = {
    ["Purple Nebula"] = {
        ["SkyboxBk"] = "rbxassetid://159454299",
        ["SkyboxDn"] = "rbxassetid://159454296",
        ["SkyboxFt"] = "rbxassetid://159454293",
        ["SkyboxLf"] = "rbxassetid://159454286",
        ["SkyboxRt"] = "rbxassetid://159454300",
        ["SkyboxUp"] = "rbxassetid://159454288"
    },
    ["Night Sky"] = {
        ["SkyboxBk"] = "rbxassetid://12064107",
        ["SkyboxDn"] = "rbxassetid://12064152",
        ["SkyboxFt"] = "rbxassetid://12064121",
        ["SkyboxLf"] = "rbxassetid://12063984",
        ["SkyboxRt"] = "rbxassetid://12064115",
        ["SkyboxUp"] = "rbxassetid://12064131"
    },
    ["Pink Daylight"] = {
        ["SkyboxBk"] = "rbxassetid://271042516",
        ["SkyboxDn"] = "rbxassetid://271077243",
        ["SkyboxFt"] = "rbxassetid://271042556",
        ["SkyboxLf"] = "rbxassetid://271042310",
        ["SkyboxRt"] = "rbxassetid://271042467",
        ["SkyboxUp"] = "rbxassetid://271077958"
    },
    ["Morning Glow"] = {
        ["SkyboxBk"] = "rbxassetid://1417494030",
        ["SkyboxDn"] = "rbxassetid://1417494146",
        ["SkyboxFt"] = "rbxassetid://1417494253",
        ["SkyboxLf"] = "rbxassetid://1417494402",
        ["SkyboxRt"] = "rbxassetid://1417494499",
        ["SkyboxUp"] = "rbxassetid://1417494643"
    },
    ["Setting Sun"] = {
        ["SkyboxBk"] = "rbxassetid://626460377",
        ["SkyboxDn"] = "rbxassetid://626460216",
        ["SkyboxFt"] = "rbxassetid://626460513",
        ["SkyboxLf"] = "rbxassetid://626473032",
        ["SkyboxRt"] = "rbxassetid://626458639",
        ["SkyboxUp"] = "rbxassetid://626460625"
    },
    ["Fade Blue"] = {
        ["SkyboxBk"] = "rbxassetid://153695414",
        ["SkyboxDn"] = "rbxassetid://153695352",
        ["SkyboxFt"] = "rbxassetid://153695452",
        ["SkyboxLf"] = "rbxassetid://153695320",
        ["SkyboxRt"] = "rbxassetid://153695383",
        ["SkyboxUp"] = "rbxassetid://153695471"
    },
    ["Elegant Morning"] = {
        ["SkyboxBk"] = "rbxassetid://153767241",
        ["SkyboxDn"] = "rbxassetid://153767216",
        ["SkyboxFt"] = "rbxassetid://153767266",
        ["SkyboxLf"] = "rbxassetid://153767200",
        ["SkyboxRt"] = "rbxassetid://153767231",
        ["SkyboxUp"] = "rbxassetid://153767288"
    },
    ["Neptune"] = {
        ["SkyboxBk"] = "rbxassetid://218955819",
        ["SkyboxDn"] = "rbxassetid://218953419",
        ["SkyboxFt"] = "rbxassetid://218954524",
        ["SkyboxLf"] = "rbxassetid://218958493",
        ["SkyboxRt"] = "rbxassetid://218957134",
        ["SkyboxUp"] = "rbxassetid://218950090"
    },
    ["Redshift"] = {
        ["SkyboxBk"] = "rbxassetid://401664839",
        ["SkyboxDn"] = "rbxassetid://401664862",
        ["SkyboxFt"] = "rbxassetid://401664960",
        ["SkyboxLf"] = "rbxassetid://401664881",
        ["SkyboxRt"] = "rbxassetid://401664901",
        ["SkyboxUp"] = "rbxassetid://401664936"
    },
    ["Aesthetic Night"] = {
        ["SkyboxBk"] = "rbxassetid://1045964490",
        ["SkyboxDn"] = "rbxassetid://1045964368",
        ["SkyboxFt"] = "rbxassetid://1045964655",
        ["SkyboxLf"] = "rbxassetid://1045964655",
        ["SkyboxRt"] = "rbxassetid://1045964655",
        ["SkyboxUp"] = "rbxassetid://1045962969"
    }
}

local user = {
    melee = false,
    silent_aim = false,
    silent_fov = 15,
    silent_hitchance = 100,
    trigger_bot = false,
    trigger_bot_ms = 0,
    hitboxes = "Head"
}

local hitsounds = {
    Bameware = "rbxassetid://3124331820",
    Bell = "rbxassetid://6534947240",
    Bubble = "rbxassetid://6534947588",
    Pick = "rbxassetid://1347140027",
    Pop = "rbxassetid://198598793",
    Rust = "rbxassetid://1255040462",
    Skeet = "rbxassetid://5633695679",
    Neverlose = "rbxassetid://6534948092",
    Minecraft = "rbxassetid://4018616850"
}

local hitboxList = {
    Head = {"Head"},
    Torso = {"UpperTorso","LowerTorso"},
    Arms = {"LeftLowerArm","RightLowerArm","LeftHand","RightHand"},
    Legs = {"LeftLowerLeg","RightLowerLeg"}
}

local L_79_ = {
	"HumanoidRootPart",
	"FakeHead",
	"C4",
    "Gun"
}

local SilentAimSettings = {
    SilentAimMethod = "FindPartOnRayWithIgnoreList",
}

local ExpectedArguments = {
    FindPartOnRayWithIgnoreList = {
        ArgCountRequired = 3,
        Args = {
            "Instance", "Ray", "table", "boolean", "boolean"
        }
    }
}

local fovcircle = Drawing.new("Circle")
fovcircle.Visible = true
fovcircle.Radius = 15
fovcircle.Color = Color3.fromRGB(255,255,255)
fovcircle.Thickness = 2
fovcircle.Filled = false
fovcircle.Transparency = 0

local silentPart = "Head"

local Htiboxeswp = "Head"

local ThirdPerson = false
local FakeDuck = false

local L_1746_ = true

local HitSoundType = "3124331820"
local HitVolume = 3

local DeathSoundType = "3218541059"
local DeathVolume = 3

local KillSoundType = "937885646"
local KillSoundVolume = 3

local fakeLagDebounce = false
local L_80_

--local keyMenu = game:GetObjects("rbxassetid://13780633706")[1]
--function draggable(a)local b=userInputService;local c;local d;local e;local f;local function g(h)if not library.colorpicking then local i=h.Position-e;a.Position=UDim2.new(f.X.Scale,f.X.Offset+i.X,f.Y.Scale,f.Y.Offset+i.Y)end end;a.InputBegan:Connect(function(h)if h.UserInputType==Enum.UserInputType.MouseButton1 or h.UserInputType==Enum.UserInputType.Touch then c=true;e=h.Position;f=a.Position;h.Changed:Connect(function()if h.UserInputState==Enum.UserInputState.End then c=false end end)end end)a.InputChanged:Connect(function(h)if h.UserInputType==Enum.UserInputType.MouseMovement or h.UserInputType==Enum.UserInputType.Touch then d=h end end)b.InputChanged:Connect(function(h)if h==d and c then g(h)end end)end
--draggable(keyMenu.Main)
--local Keys = {
--    key1 = "wowsirexwarev3",
--    key2 = "wowsirexwarev3 ",
--    key3 = " wowsirexwarev3",
--
--    PermKey = "YarHackFackingStinks"
--}

--keyMenu.Parent = game:GetService("CoreGui")
--keyMenu.Enabled = true
--keyMenu.Main.Position = UDim2.new(0.5,-keyMenu.Main.Size.X.Offset/2,0.5,-keyMenu.Main.Size.Y.Offset/2)

-- repeat 
--    wait()
--    if Keys and keyMenu and keyMenu.Main then 
--        for i, v in pairs(Keys) do
--            if keyMenu.Main.Key.Text == v then
--                Pass = true
--            end
--        end
--        keyMenu.Main.Copy.MouseButton1Down:Connect(function()
--           local copy = "https://discord.gg/m3TeeMpgfC"
--            setclipboard(tostring(copy))
--            keyMenu.Main.Copy.Text = "Copied"
--           wait(0.3)
--            keyMenu.Main.Copy.Text = "Copy"
--        end)
--    end
--until Pass == true
--keyMenu:Destroy()


    -- Esp

    local L_78_
    function updateSkybox()
        local L_1181_ = library.flags["selected_skybox"]
        if library.flags["skybox_changer"] and skyboxes[library.flags["selected_skybox"]] then
            local L_1182_ = Instance.new("Sky", lighting)
            L_1182_.Name = "customsky"
            L_1182_.SunTextureId = "rbxassetid://"
            L_1182_.CelestialBodiesShown = "rbxassetid://"
            L_78_ = true;
            for L_1183_forvar0, L_1184_forvar1 in next, skyboxes[L_1181_] do
                L_1182_[L_1183_forvar0] = L_1184_forvar1
            end
        elseif not library.flags["skybox_changer"] and L_78_ then
            if lighting:FindFirstChild("customsky") then
                lighting.customsky:Destroy()
            end;
            local L_1185_ = game:GetService("Lighting"):FindFirstChildOfClass("Sky")
            if L_1185_ then
                L_78_ = false;
                L_1185_.Parent = workspace;
                wait()
                L_1185_.Parent = lighting
            end
        end
    end
    
    local L_60_ = {
        SmoothPlastic = "",
        ForceField = "4573037993",
        Neon = ""
    }

    function armhg()
        if camera:FindFirstChild("Arms") and library.flags.arm_highlight then
            local arms = camera:FindFirstChild("Arms")
            for i, v in pairs(arms:GetChildren()) do 
                if v:IsA("Model") then
                    task.wait()
                    if v:FindFirstChild("Left Arm") then
                        local Highlight = Instance.new("Highlight", gethui())
                        Highlight.Name = "Left Arm Adornee"
                        Highlight.FillColor = library.flags.arm_highlight_color
                        Highlight.OutlineColor = library.flags.arm_highlight_outline_color
                        Highlight.FillTransparency = library.flags.arm_highlight_transparency/10
                        Highlight.OutlineTransparency = library.flags.arm_highlight_outline_transparency/10
                        Highlight.Adornee = v:FindFirstChild("Left Arm")
                        arms.Destroying:Connect(function()
                            Highlight:Destroy()
                        end)
                    end
                    task.wait()
                    if v:FindFirstChild("Right Arm") then
                        local Highlight = Instance.new("Highlight", gethui())
                        Highlight.Name = "Right Arm Adornee"
                        Highlight.FillColor = library.flags.arm_highlight_color
                        Highlight.OutlineColor = library.flags.arm_highlight_outline_color
                        Highlight.FillTransparency = library.flags.arm_highlight_transparency/10
                        Highlight.OutlineTransparency = library.flags.arm_highlight_outline_transparency/10
                        Highlight.Adornee = v:FindFirstChild("Right Arm")
                        arms.Destroying:Connect(function()
                            Highlight:Destroy()
                        end)
                    end
                end
            end
        end
    end
    function CreateThread(L_413_arg0)
        local L_414_ = coroutine.create(L_413_arg0)
        coroutine.resume(L_414_)
        return L_414_
    end;
    function hasProperty(L_230_arg0, L_231_arg1)
        return pcall(function()
            _ = L_230_arg0[L_231_arg1]
        end)
    end;
    function playAudio(L_227_arg0, L_228_arg1)
		local L_229_ = (Instance.new("Sound") or instance.new("Sound"))
		L_229_.Parent = game:GetService("SoundService")
		L_229_.SoundId = L_227_arg0
		L_229_.Volume = 0.2;
		L_229_:Play()
		L_229_.Ended:Connect(function()
			if L_229_ then
				L_229_:Destroy()
			end
		end)
	end;
    --[[local L_68_ = {
        DiamondPlate = 3,
        CorrodedMetal = 2,
        Metal = 2,
        Concrete = 2,
        Brick = 2,
        WoodPlanks = 0.1,
        Wood = 0.1,
        nowallbang = 100,
        Grate = 0.1,
        Glass = 0.1,
        Cardboard = 0.1
    }
    function wallbangCheck(L_1017_arg0)
        return L_1017_arg0 and L_1017_arg0.Parent and L_1017_arg0.Parent.Name == "Hitboxes" or L_1017_arg0 and L_1017_arg0.Parent and L_1017_arg0.Parent.Parent and L_1017_arg0.Parent.Parent:FindFirstChild("Humanoid") or L_1017_arg0 and L_1017_arg0.Parent and L_1017_arg0.Parent:FindFirstChild("Humanoid") or L_1017_arg0 and L_1017_arg0.Parent and L_1017_arg0.Parent:FindFirstChild("Humanoid") and (1 > L_1017_arg0.Transparency or L_1017_arg0.Name == "HeadHB") and L_1017_arg0.Parent:IsA("Model")
    end;
    function calculateWallbang(L_1018_arg0, L_1019_arg1)
        local L_1021_ = cbClient.gun;
        if not L_1021_ or not L_1021_:FindFirstChild("Penetration") or L_1021_:FindFirstChild("Melee") or not L_1021_:FindFirstChild("DMG") or not getfenv().isAlive() then
            return 0, 0
        end;
        local L_1022_ = L_1018_arg0[L_1019_arg1]
        local L_1023_ = true and camera.CFrame.p or Vector3.new(localPlayer.Character.PrimaryPart.Position.X, localPlayer.Character.Head.Position.Y, localPlayer.Character.PrimaryPart.Position.Z)
        local L_1024_ = CFrame.new(L_1023_, L_1022_.Position).lookVector.unit * 4096 * 0.0694;
        local L_1025_ = Ray.new(L_1023_, L_1024_)
        local L_1026_ = L_1021_.Penetration.Value * 0.013 or 0;
        local L_1027_ = {
            camera,
            localPlayer.Character,
            workspace.Debris,
            workspace.Ray_Ignore,
            workspace.Map.Clips,
            workspace.Map.SpawnPoints
        }
        local L_1028_ = {}
        local L_1029_ = nil;
        local pos;
        local L_1030_ = 1;
        local L_1031_ = 0;
        local L_1032_ = 0;
        local L_1033_ = 0;
        repeat
            L_1033_ = L_1033_ + 1;
            L_1029_, pos = workspace:FindPartOnRayWithIgnoreList(L_1025_, L_1027_, false, true)
            if L_1029_ and L_1029_ ~= L_1022_ or L_1029_ and L_1029_.Parent and L_1029_ ~= L_1022_ then
                if not L_1029_:IsDescendantOf(L_1018_arg0) and not string.find(L_1029_.Name, "Head") then
                    local L_1035_ = 1;
                    local L_1036_ = tostring(L_1029_.Material)
                    local L_1037_ = string.sub(tostring(L_1029_.Material), 15, # L_1036_)
                    local L_1038_ = L_68_[L_1029_.Name]
                    local L_1039_ = L_68_[L_1037_]
                    local L_1040_ = 2 - 0 and 0.1 or 2
                    L_1035_ = (L_1038_ or L_1039_ or 1) * L_1040_;
                    if string.find(L_1029_.Name, "Hat") or string.find(L_1029_.Parent.Name, "Hat") then
                        L_1035_ = 0
                    end;
                    local L_1041_, L_1042_ = workspace:FindPartOnRayWithWhitelist(Ray.new(pos + L_1024_ * 1, L_1024_ * -2), {
                        L_1029_
                    }, true)
                    local L_1043_ = (L_1042_ - pos).magnitude;
                    local L_1044_ = L_1043_ * L_1035_;
                    L_1032_ = math.min(L_1026_, L_1032_ + L_1044_)
                    L_1030_ = 1 - L_1032_ / L_1026_;
                    if L_1035_ > 0 then
                        L_1031_ = L_1031_ + 1
                    end;
                    table.insert(L_1028_, L_1029_)
                    if wallbangCheck(L_1029_) then
                        table.insert(L_1027_, L_1029_.Parent)
                    else
                        table.insert(L_1027_, L_1029_)
                    end
                end
            end
        until L_1029_ == nil or L_1029_ == L_1022_ or L_1029_:IsDescendantOf(L_1018_arg0) or L_1031_ >= 4 or L_1032_ >= L_1026_ or L_1033_ > 20 or L_1029_.Name == "jigpart" or string.find(L_1029_.Name, "Head")
        if L_1031_ >= 4 or L_1033_ >= 20 then
            L_1030_ = 0
        end;
        return L_1030_, L_1031_
    end;]]

    -- aint done

    local lerpColor = Color3.new().Lerp;
    local AmbientBool = game:GetService("Lighting").Ambient
    local AmbientTBool = game:GetService("Lighting").ColorShift_Top
    local AmbientBBool = game:GetService("Lighting").ColorShift_Bottom
    local AmbientClock = game:GetService("Lighting").ClockTime
    local AmbientOd = game:GetService("Lighting").OutdoorAmbient

    spawn(function()
        while wait(0.25) do
            if game:GetService("Lighting").ClockTime ~= AmbientClock then
                game:GetService("Lighting").ClockTime = AmbientClock
            end
            if game:GetService("Lighting").ColorShift_Bottom ~= AmbientBBool then
                game:GetService("Lighting").ColorShift_Bottom = AmbientBBool
            end
            if game:GetService("Lighting").ColorShift_Top ~= AmbientTBool then
                game:GetService("Lighting").ColorShift_Top = AmbientTBool
            end
            if game:GetService("Lighting").Ambient ~= AmbientBool then
                game:GetService("Lighting").Ambient = AmbientBool
            end
            if game:GetService("Lighting").OutdoorAmbient ~= AmbientOd then
                game:GetService("Lighting").OutdoorAmbient = AmbientOd
            end
        end
    end)

    spawn(function()
        while wait(5) do
            if library.flags.skybox_changer then
                updateSkybox()
            end
        end
    end)

    local L_112_;
    local L_142_;
    local BombTimer = 40

    function isButtonDown(key)
        if string.find(tostring(key),"KeyCode") then
            return userInputService:IsKeyDown(key) 
        else
            for _,v in pairs(userInputService:GetMouseButtonsPressed()) do
                if v.UserInputType == key then
                    return true
                end
            end
        end
        return false
    end

    --[[spawn(function()
        while wait() do
            if library.flags.auto_shoot and isAlive() then
                    for i,v in next, players:GetPlayers() do
                        if v ~= localPlayer and teamCheck(v,library.flags["aimbot_team"]) and isAlive(v) then
                            local Character = v.Character
                            local HumanoidRootPart = game.FindFirstChild(Character, "HumanoidRootPart")
                            local Humanoid = game.FindFirstChild(Character, "Humanoid")
                            if not HumanoidRootPart or not Humanoid or Humanoid and Humanoid.Health <= 0 then continue end
                
                            local ScreenPosition, OnScreen = getPositionOnScreen(HumanoidRootPart.Position)
                            if not OnScreen then continue end

                            local Distance = (getMousePosition() - ScreenPosition).Magnitude
                            if Distance <= (DistanceToMouse or 2000) and Distance <= fovcircle.Radius  then
                                if library.flags.auto_wall and cbClient.gun:FindFirstChild("FireRate") then
                                    if not cbClient.gun:FindFirstChild("DMG") then
                                        return
                                    end
                                    local calc = calculateWallbang(Character, tostring(silentPart))
                                    local mindamage = cbClient.gun.DMG.Value * calc * 4;

                                    print("Wall Bang "..tostring(calc).." mindamage"..tostring(mindamage))
                                    if mindamage >= 1 and calc > 0 then
                                        cbClient.firebullet()
                                        task.wait(cbClient.gun.FireRate.Value)
                                    end
                                elseif not library.flags.auto_wall then
                                    if IsPlayerVisible(v) and cbClient.gun:FindFirstChild("FireRate") then
                                        cbClient.firebullet()
                                        task.wait(cbClient.gun.FireRate.Value)
                                    end
                                end
                            end
                        end
                    end
            end
        end
    end)]]



    local espObjects = {}

LPH_NO_VIRTUALIZE(function() -- removes obfuscation to make this section MUCH faster
    
    local RepeatHg = 16
    local RepeatChams = 16
    local RepeatGlow = 16
    local RepeatBomb = 16

    local cbClient = getsenv(game.Players.LocalPlayer.PlayerGui.Client) 
     
    local Cross = Drawing.new("Line")
    local Cross2 = Drawing.new("Line")
    local Cross3 = Drawing.new("Line")
    local Cross4 = Drawing.new("Line")

    local L_143_ = cbClient.firebullet;

    function createEsp(plr)
        if plr == localPlayer then return end
        local textDropShadowESP = Drawing.new("Text")
        local textESP = Drawing.new("Text")
        local boxESP = Drawing.new("Square")
        local boxoutlineESP = Drawing.new("Square")
        local boxinlineESP = Drawing.new("Square")
        local healthbarESPoutline = Drawing.new("Square")
        local healthbarESP = Drawing.new("Square")
        local distanceDropShadowESP = Drawing.new("Text")
        local distanceESP = Drawing.new("Text")
        local tracer = Drawing.new("Line")
        local tracero = Drawing.new("Line")
    
        tracer.Thickness = 1
        tracer.Color = Color3.new(1,1,1)
        tracer.Transparency = 1

        tracero.Thickness = 1
        tracero.Color = Color3.new(0,0,0)
        tracero.Transparency = 1

        textESP.Font = 2
        textESP.Size = 13
        textESP.Color = Color3.new(1,1,1)
        textESP.OutlineColor = Color3.new(0,0,0)
        textESP.Transparency = 1

        distanceESP.Font = 2
        distanceESP.Size = 13
        distanceESP.Color = Color3.new(1,1,1)
        distanceESP.OutlineColor = Color3.new(0,0,0)
        distanceESP.Transparency = 1

        textDropShadowESP.Font = 2
        textDropShadowESP.Size = 13
        textDropShadowESP.Color = Color3.new(0,0,0)
        textDropShadowESP.OutlineColor = Color3.new(0,0,0)
        textDropShadowESP.Transparency = 1

        distanceDropShadowESP.Font = 2
        distanceDropShadowESP.Size = 13
        distanceDropShadowESP.Color = Color3.new(0,0,0)
        distanceDropShadowESP.OutlineColor = Color3.new(0,0,0)
        distanceDropShadowESP.Transparency = 1

        boxESP.Thickness = 1
        boxESP.Color = Color3.new(1,1,1)
        boxESP.Transparency = 1

        boxoutlineESP.Thickness = 1
        boxoutlineESP.Color = Color3.new(0,0,0)
        boxoutlineESP.Transparency = 1

        boxinlineESP.Thickness = 1
        boxinlineESP.Color = Color3.new(0,0,0)
        boxinlineESP.Transparency = 1
        
        healthbarESP.Thickness = 1
        healthbarESP.Color = Color3.fromRGB(50,220,50)
        healthbarESP.Transparency = 1

        healthbarESPoutline.Thickness = 1
        healthbarESPoutline.Color = Color3.new(0,0,0)
        healthbarESPoutline.Transparency = 1
        healthbarESPoutline.Filled = true

        function invis()
            textESP.Visible = false
            textDropShadowESP.Visible = false
            boxESP.Visible = false
            boxoutlineESP.Visible = false
            boxinlineESP.Visible = false
            healthbarESPoutline.Visible = false
            healthbarESP.Visible = false
            distanceESP.Visible = false
            distanceDropShadowESP.Visible = false
            tracer.Visible = false
            tracero.Visible = false
        end

        function remove()
            textESP:Remove()
            textDropShadowESP:Remove()
            boxESP:Remove()
            boxoutlineESP:Remove()
            healthbarESP:Remove()
            boxinlineESP:Remove()
            healthbarESPoutline:Remove()
            healthbarESP:Remove()
            distanceESP:Remove()
            distanceDropShadowESP:Remove()
            tracer:Remove()
            tracero:Remove()
            espObjects[plr.Name] = nil
        end

        local espList = {
            text = textESP,
            textshadow = textDropShadowESP,
            box = boxESP,
            boxol = boxoutlineESP,
            boxil = boxinlineESP,
            healthb = healthbarESP,
            healthbo = healthbarESPoutline,
            distance = distanceESP,
            distanceo = distanceDropShadowESP,
            tracerline = tracer,
            tracerlineo = tracero,

            invis = invis,
            remove = remove,
        }
        espObjects[plr.Name] = espList
    end

    cbClient.firebullet = function(L_1662_arg0, ...)
        if not DebugMenu then
            local L_1663_ = false
            if not L_1663_ then
                L_143_(L_1662_arg0, ...)
                L_1663_ = true
            end;
            if ThirdPerson then
                if isAlive() and cbClient.gun:FindFirstChild("Ammo") and  cbClient.gun.Ammo.Value > 0 then
                    playAudio(cbClient.gun.Model.Shoot.Value, localPlayer.Character.HumanoidRootPart)
                end
            end
        end
    end

    function getOffsets(x,y,minY,z)
        return {CFrame.new(x,y,z),CFrame.new(-x,y,z),CFrame.new(x,y,-z),CFrame.new(-x,y,-z),CFrame.new(x,-minY,z),CFrame.new(-x,-minY,z),CFrame.new(x,-minY,-z),CFrame.new(-x,-minY,-z)}
    end

    function floor(val)
        return Vector2.new(math.floor(val.X),math.floor(val.Y))
    end

    function updatePitch()
        replicatedStorage.Events.ControlTurn:FireServer("0")
    end;

    function setYaw(AngleParam, L_1131_arg1)
        if isAlive() then
            AngleParam = false and 0 or AngleParam;
            if library.flags.antiaim_pitch ~= "None" then
                updatePitch()
            end;
            if library.flags.antiaim_roll then
                local Ang = 180;
                localPlayer.Character.Humanoid.HipHeight = 2.05;
                localPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
                localPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
                localPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall, false)
                localPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, false) 
                localPlayer.Character:SetPrimaryPartCFrame(CFrame.new(localPlayer.Character.PrimaryPart.Position, localPlayer.Character.HumanoidRootPart.Position + Vector3.new(camera.CFrame.lookVector.X, 0, camera.CFrame.lookVector.Z)) * CFrame.Angles(0, math.rad(AngleParam), 0) * CFrame.Angles(0, 0, math.rad(Ang)))
                return
            end;
            localPlayer.Character.Humanoid.HipHeight = 2;
            localPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall, true)
            localPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
            localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(localPlayer.Character.HumanoidRootPart.Position, localPlayer.Character.HumanoidRootPart.Position + Vector3.new(camera.CFrame.lookVector.X, 0, camera.CFrame.lookVector.Z)) * CFrame.Angles(0, math.rad(AngleParam), 0)
        end
    end;

    function getWeaponInfo()
        local information = {
            alive = isAlive()
        }
        if not information.alive then return information end
        if replicatedStorage.Weapons:FindFirstChild(localPlayer.Character.EquippedTool.Value) then
            local weapType = "other"
            local weapon = replicatedStorage.Weapons[localPlayer.Character.EquippedTool.Value]
            if weapon:FindFirstChild("RifleThing") then
                weapType = "rifle"
            elseif weapon:FindFirstChild("Secondary") and weapon.Name ~= "R8" and weapon.Name ~= "DesertEagle" then
                weapType = "pistol"
            elseif weapon.Name == "R8" or weapon.Name == "DesertEagle" then
                weapType = "heavyp"
            elseif weapon.Name == "AWP" then
                weapType = "awp"
            elseif weapon.Name == "Scout" then
                weapType = "scout"
            end
            information["name"] = weapon.Name
            information["melee"] = false
            information["silent_aim"] = library.flags[weapType.."_silent"]
            information["silent_fov"] = library.flags[weapType.."_silent_fov"]
            information["silent_hitchance"] = library.flags[weapType.."_silent_hitchance"]
            information["trigger_bot"] = library.flags[weapType.."_triggerbot"]
            information["trigger_bot_ms"] = library.flags[weapType.."_triggerbot_ms"]
            information["hitboxes"] = library.flags[weapType.."_hitboxes"]
        end
        return information
    end

    function updateViewModelVisuals()
        local L_989_;
        if camera:FindFirstChild("Arms") then
            L_989_ = camera.Arms
        end;
        if L_989_ and L_989_.Name == "Arms" then
            for L_990_forvar0, L_991_forvar1 in next, L_989_:GetChildren() do
                if library.flags.weapon_chams then
                    if L_991_forvar1:IsA"MeshPart" or L_991_forvar1.Name == "Part" then
                        if L_991_forvar1.Name == "StatClock" then
                            L_991_forvar1:ClearAllChildren()
                        end;
                        if L_991_forvar1.Color ~= library.flags.weapon_chams_color then
                            L_991_forvar1.Color = library.flags.weapon_chams_color
                        end
                        if L_991_forvar1.Transparency ~= library.flags.weapon_chams_transparency/10 then
                            L_991_forvar1.Transparency = library.flags.weapon_chams_transparency/10
                        end
                        if L_991_forvar1.Material ~= library.flags.weapon_chams_material then
                            L_991_forvar1.Material = library.flags.weapon_chams_material
                        end
                        L_991_forvar1.Material = library.flags.weapon_chams_material
                        if hasProperty(L_991_forvar1, "TextureID") then
                            if L_991_forvar1.TextureID ~= "" then
                                L_991_forvar1.TextureID = "" 
                            end
                        end;
                        if L_991_forvar1:FindFirstChild("SurfaceAppearance") then
                            L_991_forvar1.SurfaceAppearance:Destroy()
                        end
                    end;
                    local L_992_ = false;
                    for L_993_forvar0, L_994_forvar1 in next, camera.Arms:GetChildren() do
                        if string.find(L_994_forvar1.Name, 'Knife') or L_994_forvar1.Name == "Handle2" or L_994_forvar1.Name == "Blade" then
                            L_992_ = true
                        end
                    end;
                    if L_992_ then
                        if camera.Arms:FindFirstChild("Handle") then
                            camera.Arms.Handle.Transparency = 1
                        end
                    end;
                    pcall(function()
                        if camera.Arms:FindFirstChild("Silencer2") then
                            if workspace.Map.SpawnPoints:FindFirstChild("BuyArea") then
                                camera.Arms.Silencer2.Welded.Part0 = workspace.Map.SpawnPoints.BuyArea
                            end
                        end
                    end)
                end;
                if L_991_forvar1:IsA"Model" then
                    for L_995_forvar0, L_996_forvar1 in next, L_989_:GetDescendants() do
                        if library.flags.remove_sleeves and L_996_forvar1.Name == "Sleeve" then
                            L_996_forvar1:Destroy()
                        end;
                        if library.flags.remove_gloves and L_996_forvar1.Name == "Glove" then
                            L_996_forvar1:Destroy()
                        end;
                        if library.flags.arm_chams then
                            if hasProperty(L_996_forvar1, "CastShadow") then
                                L_996_forvar1.CastShadow = false
                            end;
                            local L_997_ = library.flags.arm_chams_material
                            if L_996_forvar1:IsA"SpecialMesh" then
                                if L_997_ == "ForceField" then
                                    L_996_forvar1.TextureId = L_60_[L_997_]
                                else
                                    L_996_forvar1.TextureId = ""
                                end;
                                local L_998_ = library.flags.arm_chams_color
                                if L_996_forvar1.VertexColor ~= Vector3.new(L_998_.R, L_998_.G, L_998_.B) then
                                    L_996_forvar1.VertexColor = Vector3.new(L_998_.R, L_998_.G, L_998_.B)                                    
                                end
                            end;
                            if L_996_forvar1:IsA"Part" then
                                if L_996_forvar1.Material ~= L_997_ then
                                    L_996_forvar1.Material = L_997_;
                                end
                                if L_996_forvar1.Color ~= library.flags.arm_chams_color then
                                    L_996_forvar1.Color = library.flags.arm_chams_color
                                end
                                if L_996_forvar1.Transparency == 1 then
                                    continue;
                                end;
                                if L_996_forvar1.Transparency ~= library.flags.arm_chams_transparency/10 then
                                    L_996_forvar1.Transparency = library.flags.arm_chams_transparency/10
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    function selfChams()
        if ThirdPerson == true and library.flags.self_chams and localPlayer.Character then
            for L_1372_forvar0, L_1373_forvar1 in next, localPlayer.Character:GetDescendants() do
                local L_1374_ = library.flags.self_chams_material
                if L_1373_forvar1.Name == "HumanoidRootPart" or L_1373_forvar1.Name == "Head" or L_1373_forvar1.Name == "HeadHB" or string.find(L_1373_forvar1.Name, "C4") and not L_1373_forvar1.Name == "BackC4" or L_1373_forvar1.Name == "Gun" then
                    continue;
                end;
                if (L_1373_forvar1:IsA"Accoutrement" or L_1373_forvar1.Name == "BackC4") and library.flags.self_chams_removehats then
                    L_1373_forvar1:Destroy()
                end;
                if L_1373_forvar1:IsA"BasePart" then
                    if L_1373_forvar1.Color ~= library.flags.self_chams_color then
                        L_1373_forvar1.Color = library.flags.self_chams_color
                    end
                    if L_1373_forvar1.Transparency ~= library.flags.self_chams_transparency/10 then
                        L_1373_forvar1.Transparency = library.flags.self_chams_transparency/10
                    end
                    if L_1373_forvar1.Material ~= L_1374_ then
                        L_1373_forvar1.Material = L_1374_
                    end
                end;
                if L_1373_forvar1:IsA"SpecialMesh" then
                    local L_1375_ = library.flags.self_chams_color
                    if L_1373_forvar1.VertexColor ~= Vector3.new(L_1375_.R, L_1375_.G, L_1375_.B) then
                        L_1373_forvar1.VertexColor = Vector3.new(L_1375_.R, L_1375_.G, L_1375_.B)                        
                    end
                end;
                if L_1373_forvar1.Name == "Shirt"  then
                    L_1373_forvar1.ShirtTemplate = "rbxassetid://0"
                elseif L_1373_forvar1.Name == "Pants"  then
                    L_1373_forvar1.PantsTemplate = "rbxassetid://0"
                elseif L_1373_forvar1.Name == "Face" then
                    L_1373_forvar1.Texture = "rbxassetid://0"
                end;
                if hasProperty(L_1373_forvar1, "TextureID") then
                    if L_1373_forvar1.TextureID ~= L_60_[L_1374_] then
                        L_1373_forvar1.TextureID = L_60_[L_1374_]                        
                    end
                end;
                if hasProperty(L_1373_forvar1, "TextureId") then
                    if L_1373_forvar1.TextureId ~= L_60_[L_1374_] then
                        L_1373_forvar1.TextureId = L_60_[L_1374_]                        
                    end
                end
            end
        end
    end;
    function hitChams(L_1194_arg0, L_1195_arg1, L_1196_arg2, L_1197_arg3)
        if L_1194_arg0.Character and not L_80_ then
            L_80_ = true;
            CreateThread(function()
                wait(0.05)
                L_80_ = false
            end)
            for L_1198_forvar0, L_1199_forvar1 in next, L_1194_arg0.Character:GetChildren() do
                if L_1199_forvar1:IsA"MeshPart" and L_1199_forvar1.Transparency ~= 1 or L_1199_forvar1.Name == "Head" then
                    if not L_79_[L_1199_forvar1.Name] then
                        local L_1200_ = L_1199_forvar1:Clone()
                        L_1200_:ClearAllChildren()
                        L_1200_.Material = library.flags.fakelag_chams_material
                        L_1200_.CFrame = L_1199_forvar1.CFrame;
                        L_1200_.Size = L_1199_forvar1.Name == "Head" and Vector3.new(1.18, 1.18, 1.18) or L_1200_.Size;
                        L_1200_.CanCollide = false;
                        L_1200_.Color = L_1195_arg1 or color
                        L_1200_.Anchored = true;
                        L_1200_.Transparency = L_1196_arg2 or 0;
                        L_1200_.Parent = workspace.Debris;
                        if hasProperty(L_1200_, "TextureID") then
                            L_1200_.TextureID = ""
                        end;
                        if hasProperty(L_1200_, "UsePartColor") then
                            L_1200_.UsePartColor = true
                        end;
                        Debris:AddItem(L_1200_, L_1197_arg3 or 1.5)
                        if not L_1195_arg1 then
                            local L_1201_ = TweenService:Create(L_1200_, TweenInfo.new(1.5), {
                                Transparency = 1
                            })
                            L_1201_:Play()
                        end
                    end
                end
            end
        end
    end;

    function isAlive(plr)
        if not plr then plr = localPlayer end
        return plr.Character and plr.Character:FindFirstChild("Humanoid") and plr.Character:FindFirstChild("Head") and plr.Character.Humanoid.Health > 0 and true or false
    end

    function CalculateChance(Percentage)
        if Percentage ~= nil then Percentage = math.floor(Percentage);local chance = math.floor(Random.new().NextNumber(Random.new(), 0, 1) * 100) / 100;return chance <= Percentage / 100 end
    end

    local function getPositionOnScreen(Vector)
        local Vec3, OnScreen = camera.WorldToScreenPoint(camera, Vector)
        return Vec2(Vec3.X, Vec3.Y), OnScreen
    end

    local function ValidateArguments(Args, RayMethod)
        local Matches = 0
        if #Args < RayMethod.ArgCountRequired then
            return false
        end
        for Pos, Argument in next, Args do
            if typeof(Argument) == RayMethod.Args[Pos] then
                Matches = Matches + 1
            end
        end
        return Matches >= RayMethod.ArgCountRequired
    end

    local function getDirection(Origin, Position)
        return (Position - Origin).Unit * 1000
    end

    local function getMousePosition()
        return userInputService.GetMouseLocation(userInputService)
    end
 
    local function IsPlayerVisible(Player)
        local PlayerCharacter = Player.Character
        local LocalPlayerCharacter = localPlayer.Character
        if not (PlayerCharacter or LocalPlayerCharacter) then return end 

        local PlayerRoot = game.FindFirstChild(PlayerCharacter, getfenv().Hitbox) or game.FindFirstChild(PlayerCharacter, "HumanoidRootPart" and "Head")
        
        if not PlayerRoot then return end 
        local CastPoints, IgnoreList = {PlayerRoot.Position, LocalPlayerCharacter, PlayerCharacter}, {LocalPlayerCharacter,PlayerCharacter,camera,workspace.Ray_Ignore,workspace.Map.Clips,workspace.Map.SpawnPoints}
        local ObscuringObjects = #camera.GetPartsObscuringTarget(camera, CastPoints, IgnoreList)
        
        return ((ObscuringObjects == 0 and true) or (ObscuringObjects > 0 and false))
    end
    local function getClosestPlayer()
        local Closest
        local DistanceToMouse
        for _, Player in next, players.GetPlayers(players) do
            if Player == localPlayer then continue end
            if not library.flags.aimbot_team and Player.Team == localPlayer.Team then continue end

            local Character = Player.Character
            if not Character then continue end
            
            if library.flags.aimbot_visonly and not IsPlayerVisible(Player) then continue end

            local Hitbox = nil

            if user.hitboxes ~= "Closest" then
                if user.hitboxes == "Torso" then
                    Hitbox = "UpperTorso"
                    getfenv().Hitbox = "HumanoidRootPart"
                else
                    Hitbox = "Head"
                    getfenv().Hitbox = "Head"
                end
            end

            local HumanoidRootPart = game.FindFirstChild(Character, "HumanoidRootPart")
            local Humanoid = game.FindFirstChild(Character, "Humanoid")
            if not HumanoidRootPart or not Humanoid or Humanoid and Humanoid.Health <= 0 then continue end
            if user.hitboxes == "Closest" then
                local HeadPos = getPositionOnScreen(Character.Head.Position) 
                local LowerTorsoPos = getPositionOnScreen(Character.LowerTorso.Position)

                local HeadDistance = (Vec2(HeadPos.X, HeadPos.Y) - Vec2(mouse.X, mouse.Y)).Magnitude 
                local TorsoDistance = (Vec2(LowerTorsoPos.X, LowerTorsoPos.Y) - Vec2(mouse.X, mouse.Y)).Magnitude 

                if HeadDistance < TorsoDistance then 
                    Hitbox = "Head"
                    getfenv().Hitbox = "Head"
                else
                    Hitbox = "UpperTorso"
                    getfenv().Hitbox = "HumanoidRootPart"
                end 
            end

            local ScreenPosition, OnScreen = getPositionOnScreen(Character[Hitbox].Position)
            if not OnScreen then continue end

            local Distance = (getMousePosition() - ScreenPosition).Magnitude
            if Distance <= (DistanceToMouse or 2000) and Distance <= fovcircle.Radius+7.5 then
                Closest = (Character[Hitbox])
                DistanceToMouse = Distance
            end
        end
        return Closest
    end
    function teamCheck(plr,team)
        return plr ~= localPlayer and team or plr.Team ~= localPlayer.Team
    end

    function destroy_chams(char)
        if char ~= nil then
            for k,v in next, char:GetChildren() do 

                if v:IsA("BasePart") and v.Transparency ~= 1 then
        
                    if v:FindFirstChild("Chams") then
                        v.Chams:Destroy() 
                    end 

                end 

            end 
        end
    end

    function destroy_glow(char)
        if char ~= nil then
            
            for k,v in next, char:GetChildren() do 

                if v:IsA("BasePart") and v.Transparency ~= 1 then

                    if v:FindFirstChild("Glow") then
                        v.Glow:Destroy()
                    end

                end 

            end 

        end
        
    end

    spawn(function()
        while task.wait() do
            if not library.flags.low_end_pc and isAlive() then
                for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
                    if v:IsA("CharacterAppearance") or v:IsA("CharacterMesh") or v:IsA("Model") and v.Name ~= localPlayer.Name then
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("Head") then
                            if v.Humanoid.Health <= 0 then
                                v.Head:Destroy()
                            end
                        end
                    end
                end 
            end
        end
    end)

    getfenv().updateViewModelVisuals = updateViewModelVisuals
    getfenv().selfChams = selfChams
    getfenv().hitChams = hitChams

    getfenv().isAlive = isAlive
    
    getfenv().IsPlayerVisible = IsPlayerVisible
    getfenv().Hitbox = "HumanoidRootPart"

    runService.RenderStepped:Connect(function()
        local weapon = getWeaponInfo()
        local mousepos = Vector2.new(userInputService:GetMouseLocation().X, userInputService:GetMouseLocation().Y)
        fovcircle.Position = mousepos

        user.silent_hitchance = weapon.silent_hitchance
        user.silent_fov = weapon.silent_fov
        user.hitboxes = weapon.hitboxes

        user.trigger_bot = weapon.trigger_bot
        user.trigger_bot_ms = weapon.trigger_bot_ms

        if weapon.silent_aim then
            user.silent_aim = true
            fovcircle.Radius = weapon.silent_fov
            if library.flags.fov_circle then
                fovcircle.Transparency = 1
            end
        elseif not weapon.silent_aim then
            user.silent_aim = false
            fovcircle.Transparency = 0
        end
        if user.trigger_bot and not triggerbotDebounce and isButtonDown(library.flags.trigger_keybind) then
            local raycastParams = RaycastParams.new();raycastParams.FilterType = Enum.RaycastFilterType.Blacklist;raycastParams.FilterDescendantsInstances = {camera,localPlayer.Character,workspace.Debris,workspace.Map.SpawnPoints}
            local raycastResult = workspace:Raycast(camera.CFrame.p, camera.CFrame.LookVector * 4096, raycastParams)
            if raycastResult and raycastResult.Instance:IsA("BasePart") then
                for i,v in next, players:GetPlayers() do
                    if v ~= localPlayer and teamCheck(v,library.flags["aimbot_team"]) and isAlive(v) then
                        if raycastResult.Instance:IsDescendantOf(v.Character) or raycastResult.Instance.Name == "btp" then
                            triggerbotDebounce = true
                            if DelayMs ~= (0 or 1) then
                                wait(user.trigger_bot_ms/1000)
                            end
                            if cbClient.gun:FindFirstChild("FireRate") then
                                cbClient.firebullet()
                                wait(cbClient.gun.FireRate.Value)
                            else
                                cbClient.firebullet() 
                                wait(0.1)   
                            end
                            triggerbotDebounce = false
                        end
                    end
                end
            end
        end
        if ThirdPerson then
            if camera:FindFirstChild("Arms") then
                if workspace.Camera:FindFirstChild("Arms") and library.flags.third_person_remove_hands then
                    for i, v in next, workspace.Camera.Arms:GetDescendants() do
                        if v:IsA"BasePart" or v:IsA"Part" or v:IsA"MeshPart" then
                            if v.Name == "StatClock" then
                                v:ClearAllChildren()
                            end;
                            v.Transparency = 1
                        end
                    end
                end
                localPlayer.CameraMaxZoomDistance = library.flags.third_person_range
                localPlayer.CameraMinZoomDistance = library.flags.third_person_range
            end 
        else
            if localPlayer.PlayerGui.GUI.Spectate.Visible == false then
                localPlayer.CameraMaxZoomDistance = 0
                localPlayer.CameraMinZoomDistance = 0
            else
                localPlayer.CameraMaxZoomDistance = 10
                localPlayer.CameraMinZoomDistance = 10
            end
        end
        if library.flags.fake_duck then
            if isAlive() then
                if FakeDuck and not L_112_ then
                    local L_35_ = localPlayer.PlayerGui.Client;
                    L_112_ = localPlayer.Character.Humanoid:LoadAnimation(L_35_.Idle)
                    L_112_:Play()
                elseif not FakeDuck and L_112_ ~= nil then
                    L_112_:Stop()
                    L_112_ = nil
                end
            end
        else
            if not FakeDuck and L_112_ ~= nil then
                L_112_:Stop()
                L_112_ = nil
            end
        end
        if localPlayer.PlayerGui.GUI.Crosshairs.Scope.Visible == false or library.flags.fov_changer_onscope then
            if library.flags.fov_changer_enabled then
                camera.FieldOfView = library.flags.fov_changer
            else
                camera.FieldOfView = 80
            end
        end
        if library.flags.hit_sound_enable then
            if library.flags.hit_sound == "Bameware" then
                HitSoundType = 3124331820
            elseif library.flags.hit_sound == "Bell" then
                HitSoundType = 6534947240
            elseif library.flags.hit_sound == "Bubble" then
                HitSoundType = 6534947588
            elseif library.flags.hit_sound == "Pick" then
                HitSoundType = 1347140027    
            elseif library.flags.hit_sound == "Pop" then
                HitSoundType = 198598793
            elseif library.flags.hit_sound == "Rust" then
                HitSoundType = 1255040462 
            elseif library.flags.hit_sound == "Skeet" then
                HitSoundType = 5633695679
            elseif library.flags.hit_sound == "Neverlose" then
                HitSoundType = 6534948092
            elseif library.flags.hit_sound == "Minecraft" then
                HitSoundType = 4018616850
            end
        end
        if library.flags.kill_sound_enable then
            if library.flags.kill_sound == "1 Sit" then
                KillSoundType = 5902468562
            elseif library.flags.kill_sound == "UltraKill" then
                KillSoundType = 937885646
            elseif library.flags.kill_sound == "Minecraft" then
                KillSoundType = 6705984236
            elseif library.flags.kill_sound == "Emotional Damage" then    
                KillSoundType = 8445241315
            elseif library.flags.kill_sound == "Metal Pipe" then    
                KillSoundType = 6729922069
            end
        end
        if library.flags.death_sound_enable then
            if library.flags.death_sound == "Why u bully me" then
                DeathSoundType = 3218541059
            elseif library.flags.death_sound == "Emotional Damage" then
                DeathSoundType = 8445241315
            end
        end
        if library.flags.antiaim and localPlayer.Character and localPlayer.Character.PrimaryPart and localPlayer.Character:FindFirstChild("Humanoid") then
            L_142_ = L_142_ == 90 and -90 or 90;
            localPlayer.Character.Humanoid.AutoRotate = false
            if library.flags.antiaim_pitch == "Down" or library.flags.antiaim_pitch == "None" then
                L_1746_ = false
            end
            if library.flags.antiaim_yaw == "Backwards" then
                setYaw(L_1746_ and 0 or 180)
            elseif library.flags.antiaim_yaw == "Spinbot" then
                local SpinAngle = math.random(0, 360)
                setYaw(SpinAngle, SpinAngle + 180)
            elseif library.flags.antiaim_yaw == "None" then
                setYaw(L_1746_ and 180 or 0)
            elseif library.flags.antiaim_yaw == "Jitter" then
                setYaw(L_142_, - L_142_) 
            end 
        else
            if isAlive() then
                localPlayer.Character.Humanoid.AutoRotate = true;
                localPlayer.Character.Humanoid.HipHeight = 2
            end
        end
        if library.flags.remove_radio then
            localPlayer.PlayerGui.GUI.SuitZoom.Visible = false
        end
        if library.flags.world_smoke_eff then
            for i, v in pairs(game:GetService("Workspace").Ray_Ignore.Smokes:GetChildren()) do
                if v.Name == "Smoke" and v:IsA("BasePart") then
                  if v:FindFirstChild("ParticleEmitter") then
                    v.ParticleEmitter:Destroy()
                  end
                end
            end
        end
        if library.flags.world_molly_eff then
            for i, v in pairs(game:GetService("Workspace").Ray_Ignore.Fires:GetChildren()) do
                if v.Name == "Fire" and v:IsA("BasePart") then
                  if v:FindFirstChild("Fire") then
                    v.Fire:Destroy()
                  end
                  if v:FindFirstChild("Smoke") then
                    v.Smoke:Destroy()
                  end
                end
            end
        end
        if library.flags.world_molly then
            for i, v in pairs(game:GetService("Workspace").Ray_Ignore.Fires:GetChildren()) do
                if v.Name == "Fire" and v:IsA("BasePart") then
                    if v.Color ~= library.flags.world_molly_color then v.Color = library.flags.world_molly_color end
                    if v.Transparency ~= library.flags.world_molly_Transparency/10 then v.Transparency = library.flags.world_molly_Transparency/10 end
                    if v.Material ~= library.flags.world_molly_material then v.Material = library.flags.world_molly_material end
                end
            end
        end
        if library.flags.world_smoke then
            for i, v in pairs(game:GetService("Workspace").Ray_Ignore.Smokes:GetChildren()) do
                if v.Name == "Smoke" and v:IsA("BasePart") then
                    if v.Color ~= library.flags.world_smoke_color then v.Color = library.flags.world_smoke_color end
                    if v.Transparency ~= library.flags.world_smoke_Transparency/10 then v.Transparency = library.flags.world_smoke_Transparency/10 end
                    if v.Material ~= library.flags.world_smoke_material then v.Material = library.flags.world_smoke_material end
                end
            end
        end
        if library.flags.bullet_tracer then 
            game:GetService("ReplicatedStorage").VisualizeModule.Trail.Color = ColorSequence.new(library.flags.bullet_tracer_color)
            game:GetService("ReplicatedStorage").VisualizeModule.Trail.Lifetime = library.flags.bullet_tracer_time
            game:GetService("ReplicatedStorage").VisualizeModule.Trail.Transparency = NumberSequence.new(library.flags.bullet_tracer_transparency/10)
            game:GetService("ReplicatedStorage").VisualizeModule.Trail.WidthScale = NumberSequence.new(library.flags.bullet_tracer_width/10)
            game:GetService("ReplicatedStorage").VisualizeModule.Trail.Texture = "rbxassetid://2382169232"
            game:GetService("ReplicatedStorage").VisualizeModule.Trail.MaxLength = 9999
            game:GetService("ReplicatedStorage").VisualizeModule.Trail.MinLength = 9999
            game:GetService("ReplicatedStorage").VisualizeModule.Trail.LightEmission = 0.1
            game:GetService("ReplicatedStorage").VisualizeModule.Trail.LightInfluence = 1 
        end
        if library.flags.esp_bomb_enabled then
            RepeatBomb = 16
            for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
                if v.Name == "C4" and v:IsA("Model") and not v:FindFirstChild("BombTimerUi") then
                        
                    local BillboardGui = Instance.new("BillboardGui")
                    BillboardGui.Name = "BombTimerUi"
                    BillboardGui.Parent = v
                    BillboardGui.Adornee = v
                    BillboardGui.Active = true
                    BillboardGui.AlwaysOnTop = true
                    BillboardGui.LightInfluence = 1
                    BillboardGui.Size = UDim2.new(0, 50, 0, 35)
                    
                    local TextLabelText = Instance.new("TextLabel")
                    TextLabelText.Name = "BombEsp"
                    TextLabelText.Parent = BillboardGui
                    TextLabelText.ZIndex = 2
                    TextLabelText.BackgroundTransparency = 1
                    TextLabelText.Size = UDim2.new(1, 0, 1, 0)
                    TextLabelText.Font = Enum.Font.Arial
                    if library.flags.esp_bomb_outline then
                        TextLabelText.TextStrokeTransparency = 0
                    else
                        TextLabelText.TextStrokeTransparency = 1
                    end
                    TextLabelText.TextColor3 = library.flags.esp_bomb_color
                    TextLabelText.TextStrokeColor3 = library.flags.esp_bomb_outline_color
                    TextLabelText.TextSize = 16
                    TextLabelText.TextYAlignment = Enum.TextYAlignment.Top
                    TextLabelText.Text = tostring(v.Name)

                    if library.flags.esp_bomb_timer then
                        local TextLabelBombTimer = Instance.new("TextLabel")
                        TextLabelBombTimer.Name = "BombTimer"
                        TextLabelBombTimer.Parent = BillboardGui
                        TextLabelBombTimer.ZIndex = 2
                        TextLabelBombTimer.BackgroundTransparency = 1
                        TextLabelBombTimer.Size = UDim2.new(1, 0, 1, 0)
                        TextLabelBombTimer.Font = Enum.Font.Arial
                        if library.flags.esp_bomb_outline then
                            TextLabelBombTimer.TextStrokeTransparency = 0
                        else
                            TextLabelBombTimer.TextStrokeTransparency = 1
                        end
                        TextLabelBombTimer.BackgroundTransparency = 1
                        TextLabelBombTimer.TextColor3 = library.flags.esp_bomb_color
                        TextLabelBombTimer.TextStrokeColor3 = library.flags.esp_bomb_outline_color
                        TextLabelBombTimer.TextSize = 16
                        TextLabelBombTimer.TextScaled = false
                        TextLabelBombTimer.TextYAlignment = Enum.TextYAlignment.Bottom
                        TextLabelBombTimer.Text = tostring(BombTimer.. "/40")

                        spawn(function()
                            repeat
                                wait(1)
                                BombTimer = BombTimer - 1
                                TextLabelBombTimer.Text = tostring(BombTimer.. "/40")
                            until BombTimer == 0 or workspace.Status.RoundOver.Value == true
                            BombTimer = 40
                        end)
                    end
                end 
            end
            for i, v in pairs(game:GetService("Workspace").Debris:GetChildren()) do
                if v.Name == "C4" and not v:FindFirstChild("BombTimerUi") then
                    local BillboardGui = Instance.new("BillboardGui")
                    BillboardGui.Name = "BombTimerUi"
                    BillboardGui.Parent = v
                    BillboardGui.Adornee = v
                    BillboardGui.Active = true
                    BillboardGui.AlwaysOnTop = true
                    BillboardGui.LightInfluence = 1
                    BillboardGui.Size = UDim2.new(0, 50, 0, 35)
                    
                    local TextLabelText = Instance.new("TextLabel")
                    TextLabelText.Parent = BillboardGui
                    TextLabelText.ZIndex = 2
                    TextLabelText.BackgroundTransparency = 1
                    TextLabelText.Size = UDim2.new(1, 0, 1, 0)
                    TextLabelText.Font = Enum.Font.Arial
                    if library.flags.esp_bomb_outline then
                        TextLabelText.TextStrokeTransparency = 0
                    else
                        TextLabelText.TextStrokeTransparency = 1
                    end
                    TextLabelText.TextColor3 = library.flags.esp_bomb_color
                    TextLabelText.TextStrokeColor3 = library.flags.esp_bomb_outline_color
                    TextLabelText.TextSize = 16
                    TextLabelText.TextYAlignment = Enum.TextYAlignment.Top
                    TextLabelText.Text = tostring(v.Name)
                end
            end
        elseif not library.flags.esp_bomb_enabled and RepeatBomb >= 0 then
            RepeatBomb -= 1
            for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
                if v.Name == "C4" and v:IsA("Model") and v:FindFirstChild("BombTimerUi") then
                    v:FindFirstChild("BombTimerUi"):Destroy()
                end
            end
            for i, v in pairs(game:GetService("Workspace").Debris:GetChildren()) do
                if v.Name == "C4" and v:FindFirstChild("BombTimerUi") then
                    v:FindFirstChild("BombTimerUi"):Destroy()
                end
            end
        end
        if library.flags.esp_chams and library.flags.esp_enabled then
            for k,v in next, players:GetPlayers() do
                if v ~= localPlayer then

                    if v.Character and
                    v.Character:FindFirstChild("HumanoidRootPart") and 
                    v.Character:FindFirstChild("Humanoid") and 
                    v.Character:FindFirstChild("Humanoid").Health ~= 0 then
                        RepeatChams = 16
                        if not library.flags.esp_teamates then

                            local char = v.Character 
                            
                            for k,b in next, char:GetChildren() do 
                                if b:IsA("BasePart") and 
                                b.Transparency ~= 1 then
                                if v.TeamColor ~= localPlayer.TeamColor then                               
                                        if library.flags.esp_chams then
                                            if not b:FindFirstChild("Chams") and b.Name ~= "HumanoidRootPart" then
                                                local chams_box = Instance.new("BoxHandleAdornment", b)
                                                chams_box.Name = "Chams"
                                                chams_box.AlwaysOnTop = true 
                                                chams_box.ZIndex = 5 
                                                chams_box.Adornee = b 
                                                chams_box.Color3 = library.flags.esp_chams_color
                                                chams_box.Transparency = library.flags.esp_chams_transparency/10
                                                chams_box.Size = b.Size + Vector3.new(0.15, 0.15, 0.15)
                                                chams_box.AdornCullingMode = "Never"
                                            end
                                        else
                                            destroy_chams(char)
                                        end
                                elseif v.TeamColor == localPlayer.TeamColor and char:FindFirstChild("Glow") then
                                    destroy_chams(char)
                                end
                                end

                            end

                        else
                            local char = v.Character
                            for k,b in next, char:GetChildren() do
                                if b:IsA("BasePart") and 
                                b.Transparency ~= 1 then
                                if library.flags.esp_chams then
                                    if not b:FindFirstChild("Chams") and b.Name ~= "HumanoidRootPart" then
                                        local chams_box = Instance.new("BoxHandleAdornment", b)
                                        chams_box.Name = "Chams"
                                        chams_box.AlwaysOnTop = true 
                                        chams_box.ZIndex = 5 
                                        chams_box.Adornee = b 
                                        chams_box.Color3 = library.flags.esp_chams_color
                                        chams_box.Transparency = library.flags.esp_chams_transparency/10
                                        chams_box.Size = b.Size + Vector3.new(0.15, 0.15, 0.15)
                                        chams_box.AdornCullingMode = "Never"
                                    end
                                else
                                    destroy_chams(char)
                                end
                                end
                            end
                        end

                    else

                        destroy_chams(v.Character)

                    end

                end

            end

        elseif RepeatChams >= 0 then
            for k,v in next, players:GetPlayers() do 

                if v ~= localPlayer and 
                v.Character and 
                v.Character:FindFirstChild("HumanoidRootPart") and 
                v.Character:FindFirstChild("Humanoid") and 
                v.Character:FindFirstChild("Humanoid").Health ~= 0 then
                    
                    destroy_chams(v.Character)
                    RepeatChams -= 1
                end
            end
        end
        if library.flags.esp_glow and library.flags.esp_enabled then
            for k,v in next, players:GetPlayers() do
                if v ~= localPlayer then

                    if v.Character and
                    v.Character:FindFirstChild("HumanoidRootPart") and 
                    v.Character:FindFirstChild("Humanoid") and 
                    v.Character:FindFirstChild("Humanoid").Health ~= 0 then
                        RepeatGlow = 16
                        if not library.flags.esp_teamates then

                            local char = v.Character 
                            
                            for k,b in next, char:GetChildren() do 
                                if b:IsA("BasePart") and 
                                b.Transparency ~= 1 then
                                if v.TeamColor ~= localPlayer.TeamColor then                               
                                        if library.flags.esp_glow then
                                            if not b:FindFirstChild("Glow") and b.Name ~= "HumanoidRootPart" then
                                                local glow_box = Instance.new("BoxHandleAdornment", b)
                                                glow_box.Name = "Glow"
                                                glow_box.AlwaysOnTop = false 
                                                glow_box.ZIndex = 6
                                                glow_box.Adornee = b 
                                                glow_box.Color3 = library.flags.esp_glow_color
                                                glow_box.Transparency = library.flags.esp_glow_transparency/10
                                                glow_box.Size = b.Size + Vector3.new(0.15, 0.15, 0.15) + Vector3.new(0.05, 0.05, 0.05)  
                                                glow_box.AdornCullingMode = "Never"
                                            end
                                        else

                                            destroy_glow(char)
                                        end
                                elseif v.TeamColor == localPlayer.TeamColor and char:FindFirstChild("Glow") then
                                    destroy_glow(char)
                                end
                                end

                            end

                        else
                            local char = v.Character
                            for k,b in next, char:GetChildren() do
                                if b:IsA("BasePart") and 
                                b.Transparency ~= 1 then
                                if library.flags.esp_glow then
                                    if not b:FindFirstChild("Glow") and b.Name ~= "HumanoidRootPart" then
                                        local glow_box = Instance.new("BoxHandleAdornment", b)
                                        glow_box.Name = "Glow"
                                        glow_box.AlwaysOnTop = false 
                                        glow_box.ZIndex = 6
                                        glow_box.Adornee = b 
                                        glow_box.Color3 = library.flags.esp_glow_color              
                                        glow_box.Transparency = library.flags.esp_glow_transparency/10
                                        glow_box.Size = b.Size + Vector3.new(0.15, 0.15, 0.15) + Vector3.new(0.05, 0.05, 0.05)                                         
                                        glow_box.AdornCullingMode = "Never"
                                    end
                                else
                                    destroy_glow(char)
                                end
                                end
                            end
                        end

                    else

                        destroy_glow(v.Character)

                    end

                end

            end

        elseif RepeatGlow >= 0 then
            for k,v in next, players:GetPlayers() do 

                if v ~= localPlayer and 
                v.Character and 
                v.Character:FindFirstChild("HumanoidRootPart") and 
                v.Character:FindFirstChild("Humanoid") and 
                v.Character:FindFirstChild("Humanoid").Health ~= 0 then
                    
                    destroy_glow(v.Character)
                    RepeatGlow -= 1
                end

            end
        end
        if library.flags.esp_highlight and library.flags.esp_enabled then
            for k,v in next, players:GetPlayers() do
                if v ~= localPlayer then
                    if v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Humanoid") and v.Character:FindFirstChild("Humanoid").Health ~= 0 then
                        RepeatHg = 16
                        if not library.flags.esp_teamates then
                            local char = v.Character 
                            if v.TeamColor ~= localPlayer.TeamColor and not char:FindFirstChild("Highlight") then
                                local Highlight = Instance.new("Highlight", char)
                                Highlight.Name = "Highlight"
                                Highlight.FillColor = library.flags.esp_highlight_color
                                Highlight.OutlineColor = library.flags.esp_highlight_outline_color
                                Highlight.FillTransparency = library.flags.esp_highlight_transparency/10
                                Highlight.OutlineTransparency = library.flags.esp_highlight_outline_transparency/10
                                Highlight.Adornee = char
                            elseif v.TeamColor == localPlayer.TeamColor and char:FindFirstChild("Highlight") then
                                char:FindFirstChild("Highlight"):Destroy()
                            end
                            if library.flags.esp_visible_highlight and char:FindFirstChild("Highlight") then
                                if IsPlayerVisible(v) then
                                    if char:FindFirstChild("Highlight").FillColor ~= library.flags.esp_visible_highlight_color then char:FindFirstChild("Highlight").FillColor = library.flags.esp_visible_highlight_color end
                                    if char:FindFirstChild("Highlight").OutlineColor ~= library.flags.esp_visible_highlight_outline_color then char:FindFirstChild("Highlight").OutlineColor = library.flags.esp_visible_highlight_outline_color end
                                    if char:FindFirstChild("Highlight").FillTransparency ~= library.flags.esp_visible_highlight_transparency/10 then char:FindFirstChild("Highlight").FillTransparency = library.flags.esp_visible_highlight_transparency/10 end
                                    if char:FindFirstChild("Highlight").OutlineTransparency ~= library.flags.esp_visible_highlight_outline_transparency/10 then char:FindFirstChild("Highlight").OutlineTransparency = library.flags.esp_visible_highlight_outline_transparency/10 end
                                else
                                    if char:FindFirstChild("Highlight").FillColor ~= library.flags.esp_highlight_color then char:FindFirstChild("Highlight").FillColor = library.flags.esp_highlight_color end
                                    if char:FindFirstChild("Highlight").OutlineColor ~= library.flags.esp_highlight_outline_color then char:FindFirstChild("Highlight").OutlineColor = library.flags.esp_highlight_outline_color end
                                    if char:FindFirstChild("Highlight").FillTransparency ~= library.flags.esp_highlight_transparency/10 then char:FindFirstChild("Highlight").FillTransparency = library.flags.esp_highlight_transparency/10 end
                                    if char:FindFirstChild("Highlight").OutlineTransparency ~= library.flags.esp_highlight_outline_transparency/10 then char:FindFirstChild("Highlight").OutlineTransparency = library.flags.esp_highlight_outline_transparency/10 end
                                end
                            end
                        else
                            local char = v.Character 
                            if not char:FindFirstChild("Highlight") then
                                local Highlight = Instance.new("Highlight", char)
                                Highlight.Name = "Highlight"
                                Highlight.FillColor = library.flags.esp_highlight_color
                                Highlight.OutlineColor = library.flags.esp_highlight_outline_color
                                Highlight.FillTransparency = library.flags.esp_highlight_transparency/10
                                Highlight.OutlineTransparency = library.flags.esp_highlight_outline_transparency/10
                                Highlight.Adornee = char
                            end
                            if library.flags.esp_visible_highlight and char:FindFirstChild("Highlight") then
                                if IsPlayerVisible(v) then
                                    if char:FindFirstChild("Highlight").FillColor ~= library.flags.esp_visible_highlight_color then char:FindFirstChild("Highlight").FillColor = library.flags.esp_visible_highlight_color end
                                    if char:FindFirstChild("Highlight").OutlineColor ~= library.flags.esp_visible_highlight_outline_color then char:FindFirstChild("Highlight").OutlineColor = library.flags.esp_visible_highlight_outline_color end
                                    if char:FindFirstChild("Highlight").FillTransparency ~= library.flags.esp_visible_highlight_transparency/10 then char:FindFirstChild("Highlight").FillTransparency = library.flags.esp_visible_highlight_transparency/10 end
                                    if char:FindFirstChild("Highlight").OutlineTransparency ~= library.flags.esp_visible_highlight_outline_transparency/10 then char:FindFirstChild("Highlight").OutlineTransparency = library.flags.esp_visible_highlight_outline_transparency/10 end
                                else
                                    if char:FindFirstChild("Highlight").FillColor ~= library.flags.esp_highlight_color then char:FindFirstChild("Highlight").FillColor = library.flags.esp_highlight_color end
                                    if char:FindFirstChild("Highlight").OutlineColor ~= library.flags.esp_highlight_outline_color then char:FindFirstChild("Highlight").OutlineColor = library.flags.esp_highlight_outline_color end
                                    if char:FindFirstChild("Highlight").FillTransparency ~= library.flags.esp_highlight_transparency/10 then char:FindFirstChild("Highlight").FillTransparency = library.flags.esp_highlight_transparency/10 end
                                    if char:FindFirstChild("Highlight").OutlineTransparency ~= library.flags.esp_highlight_outline_transparency/10 then char:FindFirstChild("Highlight").OutlineTransparency = library.flags.esp_highlight_outline_transparency/10 end
                                end
                            end
                        end
                    end
                end
            end
        elseif RepeatHg >= 0 then
            for k,v in next, players:GetPlayers() do 

                if v ~= localPlayer and 
                v.Character and 
                v.Character:FindFirstChild("HumanoidRootPart") and 
                v.Character:FindFirstChild("Humanoid") and 
                v.Character:FindFirstChild("Humanoid").Health ~= 0 then
                    
                    if v.Character:FindFirstChild("Highlight") then
                        v.Character:FindFirstChild("Highlight"):Destroy()
                    end
                    RepeatHg -= 1
                end

            end
        end
        if library.flags.watermark then
            local sec,min,hrs = os.date("*t",os.time())["sec"],os.date("*t",os.time())["min"],os.date("*t",os.time())["hour"]
            local seconds = string.len(sec) == 2 and sec or "0"..sec
            local minutes = string.len(min) == 2 and min or "0"..min
            local hours = string.len(hrs) == 2 and hrs or "0"..hrs
            local content, isReady = players:GetUserThumbnailAsync(localPlayer.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size48x48)

            if LRM_SecondsLeft == nil then
                LRM_SecondsLeft = math.huge
            end

            SirexWatermark.Main.TextLabel.Text = "Ver "..ver.." | "..hours..":"..minutes..":"..seconds.." | Expires in : "..LRM_SecondsLeft / 86400 .." days"
            SirexWatermark.Main.Avatar.Image = (isReady and content) or "rbxassetid://0"
        end
        if library.flags.esp_enabled then
            for playerName,esp in next, espObjects do
                local player = players:FindFirstChild(playerName)
                if not player then
                    esp.invis()
                    espObjects[playerName] = nil
                    continue
                end
                if library.flags.esp_teamates or player.Team ~= localPlayer.Team then
                    if isAlive(player) then
                        local character = player.Character
                        local pos,onscreen = camera:WorldToViewportPoint(character["HumanoidRootPart"].Position)
                        if onscreen then
                            if isAlive() then
                                if math.abs(localPlayer.Character.HumanoidRootPart.Position.Y-character["HumanoidRootPart"].Position.Y) > 50 then
                                    esp.invis()
                                    continue
                                end
                            end
                            local middle = character["HumanoidRootPart"].CFrame
                            local smallestX,biggestX = 9e9,-9e9
                            local smallestY,biggestY = 9e9,-9e9
        
                            local y = (middle.p-character["Head"].Position).magnitude + character["Head"].Size.Y/2
                            local x1 = (middle.p-character["LeftHand"].Position).magnitude
                            local x2 = (middle.p-character["LeftHand"].Position).magnitude
                            local minY1 = (middle.p-character["RightFoot"].Position).magnitude
                            local minY2 = (middle.p-character["LeftFoot"].Position).magnitude
        
                            local minY = minY1 > minY2 and minY1 or minY2
                            local minX = x1 < x2 and x1 or x2
        
                            local espOffsets = getOffsets(minX+character["LeftHand"].Size.X/2,y,minY+character["RightFoot"].Size.Y/2,character["HumanoidRootPart"].Size.Z/2)
                            for i,v in next, espOffsets do
                                local pos = camera:WorldToViewportPoint(middle * v.p)
                                if smallestX > pos.X then
                                    smallestX = pos.X 
                                end
                                if biggestX < pos.X then
                                    biggestX = pos.X 
                                end
                            
                                if smallestY > pos.Y then
                                    smallestY = pos.Y
                                end
                                if biggestY < pos.Y then
                                    biggestY = pos.Y
                                end
                            end                        
                            esp.box.Visible = library.flags.esp_box
                            esp.boxol.Visible = library.flags.esp_box_outline
                            esp.boxil.Visible = library.flags.esp_box_outline
                            esp.text.Visible = library.flags.esp_name
                            esp.textshadow.Visible = library.flags.esp_name_outline
                            esp.healthb.Visible = library.flags.esp_health_bar
                            esp.healthbo.Visible = library.flags.esp_health_bar_outline
                            esp.distance.Visible = library.flags.esp_distance
                            esp.distanceo.Visible = library.flags.esp_distance_outline
                            esp.tracerline.Visible = library.flags.esp_tracer
                            esp.tracerlineo.Visible = library.flags.esp_tracer_outline
                            
                            esp.boxol.Color = library.flags.esp_box_color_outline
                            esp.boxil.Color = library.flags.esp_box_color_outline
                            esp.textshadow.Color = library.flags.esp_name_color_outline
                            esp.healthbo.Color = library.flags.esp_health_bar_outline_color
                            esp.distanceo.Color = library.flags.esp_distance_color_outline
                            esp.tracerlineo.Color = library.flags.esp_tracer_color_outline

                            esp.box.Color = library.flags.esp_box_color
                            esp.text.Color = library.flags.esp_name_color
                            esp.distance.Color = library.flags.esp_distance_color
                            esp.tracerline.Color = library.flags.esp_tracer_color
                            esp.healthb.Color = lerpColor(library.flags.esp_health_bar_low_color, library.flags.esp_health_bar_high_color, player.Character.Humanoid.Health/player.Character.Humanoid.MaxHealth);

                            if true then
                                esp.box.Size = floor(Vector2.new(biggestX-smallestX,biggestY-smallestY))
                                esp.box.Position = floor(Vector2.new(smallestX,smallestY))
                            
                                esp.boxol.Size = floor(Vector2.new(biggestX-smallestX,biggestY-smallestY) + Vector2.new(2,2))
                                esp.boxol.Position = floor(Vector2.new(smallestX,smallestY) - Vector2.new(1,1))
                            
                                esp.boxil.Size = floor(Vector2.new(biggestX-smallestX,biggestY-smallestY) - Vector2.new(2,2))
                                esp.boxil.Position = floor(Vector2.new(smallestX,smallestY) + Vector2.new(1,1))
                            end
                            if true then
                                esp.tracerline.From = camera.ViewportSize*Vector2.new(0.5, 1)
                                esp.tracerline.To = floor(Vector2.new(smallestX + (biggestX-smallestX)/2,biggestY))

                                esp.tracerlineo.From = esp.tracerline.From + Vector2.new(1,1)
                                esp.tracerlineo.To = esp.tracerline.To + Vector2.new(1,1)
                            end
                            if true then
                                esp.text.Text = playerName
                                esp.textshadow.Text = playerName
                                local int = Instance.new("IntValue", gethui())
                                local pos = (camera.CFrame.Position - character["HumanoidRootPart"].Position).Magnitude
                                int.Value = pos
                                esp.distance.Text =  int.Value.. " studs";
                                int:Destroy()
                                esp.distanceo.Text = esp.distance.Text
                                esp.text.Position = floor(Vector2.new(smallestX + (biggestX-smallestX)/2 - (esp.text.TextBounds.X/2),smallestY-esp.text.TextBounds.Y-2))
                                esp.textshadow.Position = esp.text.Position + Vector2.new(1,1)
                                esp.distance.Position = floor(Vector2.new(smallestX + (biggestX-smallestX)/2 - (esp.distance.TextBounds.X/2),biggestY-esp.distance.TextBounds.Y+12))
                                esp.distanceo.Position = esp.distance.Position + Vector2.new(1,1)
                            end
                            if true then
                                esp.healthbo.Size = floor(Vector2.new(4,(biggestY-smallestY)+2))
                                esp.healthbo.Position = floor(Vector2.new(smallestX-6,smallestY-1))
                                esp.healthb.Size = floor(Vector2.new(2,(-player.Character.Humanoid.Health/100*(biggestY-smallestY))+3))
                                esp.healthb.Position = floor(Vector2.new(smallestX-5,smallestY+esp.healthbo.Size.Y-3))
                            end
                        else
                            esp.invis()    
                        end
                    else
                        esp.invis()    
                    end
                else
                    esp.invis()
                end
            end
        end
        if library.flags.crosshair then
            local x, y = camera.ViewportSize.X/2, camera.ViewportSize.Y/2
    
            Cross.From = Vector2.new(x, y + library.flags.crosshair_length/10+library.flags.crosshair_radius/10)
            Cross.To = Vector2.new(x, y + library.flags.crosshair_radius/10)
            Cross.Color = library.flags.crosshair_color
            Cross.Visible = true 
        
            Cross2.From = Vector2.new(x, y - library.flags.crosshair_length/10-library.flags.crosshair_radius/10)
            Cross2.To = Vector2.new(x, y - library.flags.crosshair_radius/10)
            Cross2.Color = library.flags.crosshair_color
            Cross2.Visible = true 
    
            if library.flags.crosshair_tshape then
                Cross2.Visible = false
            end
    
            Cross3.From = Vector2.new(x - library.flags.crosshair_length/10-library.flags.crosshair_radius/10, y)
            Cross3.To = Vector2.new(x-library.flags.crosshair_radius/10, y)
            Cross3.Color = library.flags.crosshair_color
            Cross3.Visible = true
    
            Cross4.From = Vector2.new(x + library.flags.crosshair_length/10+library.flags.crosshair_radius/10, y)
            Cross4.To = Vector2.new(x+library.flags.crosshair_radius/10, y)
            Cross4.Color = library.flags.crosshair_color
            Cross4.Visible = true
    
            Cross.Transparency = 1
            Cross2.Transparency = 1
            Cross3.Transparency = 1
            Cross4.Transparency = 1
    
            Cross.Thickness = library.flags.crosshair_thick
            Cross2.Thickness = library.flags.crosshair_thick
            Cross3.Thickness = library.flags.crosshair_thick
            Cross4.Thickness = library.flags.crosshair_thick
        else
            Cross.Visible = false
            Cross2.Visible = false
            Cross3.Visible = false
            Cross4.Visible = false
        end
    end)
    local oldNamecall2
    oldNamecall2 = hookmetamethod(game, "__namecall", newcclosure(function(...)
        local Method = getnamecallmethod()
        local Arguments = {...}
        local self = Arguments[1]
        local chance = CalculateChance(user.silent_hitchance)
        if library.flags.aimbot_enabled and user.silent_aim and self == workspace and not checkcaller() and chance == true then
            if Method == "FindPartOnRayWithIgnoreList" then
                if ValidateArguments(Arguments, ExpectedArguments.FindPartOnRayWithIgnoreList) then
                    local A_Ray = Arguments[2]
                    local HitPart = getClosestPlayer()
                    if HitPart then
                        local Origin = A_Ray.Origin
                        local Direction = getDirection(Origin, HitPart.Position)
                        Arguments[2] = Ray.new(Origin, Direction)
                        return oldNamecall2(unpack(Arguments))
                    end
                end
            end
        end
        return oldNamecall2(...)
    end))
    localPlayer.Additionals.TotalDamage.Changed:Connect(function(val)
        if library.flags.hit_sound_enable and val ~= 0 then
            local hitsound = Instance.new("Sound")
            hitsound.Parent = game:GetService("SoundService")
            hitsound.SoundId = 'rbxassetid://'..HitSoundType
            hitsound.Volume = HitVolume
            hitsound:Play()
            hitsound.Ended:Connect(function()
                if hitsound then
                    hitsound:Destroy()
                end
            end)
        end
    
        if current == 0 then return end
        coroutine.wrap(function()
            if library.flags.hit_marker and val ~= 0 then
    
                local Line = Drawing.new("Line")
                local Line2 = Drawing.new("Line")
                local Line3 = Drawing.new("Line")
                local Line4 = Drawing.new("Line")
    
                local x, y = camera.ViewportSize.X/2, camera.ViewportSize.Y/2
    
                Line.From = Vector2.new(x + 4, y + 4)
                Line.To = Vector2.new(x + 10, y + 10)
                Line.Color = library.flags.hit_marker_color
                Line.Visible = true 
    
                Line2.From = Vector2.new(x + 4, y - 4)
                Line2.To = Vector2.new(x + 10, y - 10)
                Line2.Color = library.flags.hit_marker_color
                Line2.Visible = true 
    
                Line3.From = Vector2.new(x - 4, y - 4)
                Line3.To = Vector2.new(x - 10, y - 10)
                Line3.Color = library.flags.hit_marker_color
                Line3.Visible = true 
    
                Line4.From = Vector2.new(x - 4, y + 4)
                Line4.To = Vector2.new(x - 10, y + 10)
                Line4.Color = library.flags.hit_marker_color
                Line4.Visible = true
    
                Line.Transparency = 1
                Line2.Transparency = 1
                Line3.Transparency = 1
                Line4.Transparency = 1
    
                Line.Thickness = 1
                Line2.Thickness = 1
                Line3.Thickness = 1
                Line4.Thickness = 1
    
                wait(0.3)
                for i = 1,0,-0.1 do
                    wait()
                    Line.Transparency = i 
                    Line2.Transparency = i
                    Line3.Transparency = i
                    Line4.Transparency = i
                end
                Line:Remove()
                Line2:Remove()
                Line3:Remove()
                Line4:Remove()
            end
        end)()
    end)
    localPlayer.Status.Kills.Changed:Connect(function(val)
        if library.flags.kill_sound_enable and val ~= 0 then
            local killsound = Instance.new("Sound")
            killsound.Parent = game:GetService("SoundService")
            killsound.SoundId = 'rbxassetid://'..KillSoundType
            killsound.Volume = KillSoundVolume
            killsound:Play()
            killsound.Ended:Connect(function()
                if killsound then
                    killsound:Destroy()
                end
            end)
        end
        if library.flags.kill_say and val ~= 0 then
            game.ReplicatedStorage.Events.PlayerChatted:FireServer(library.flags.kill_say_text, false, false, false, true)
        end
    end)
    localPlayer.Status.Deaths.Changed:Connect(function(val)
        if library.flags.death_sound_enable and val ~= 0 then
            local deathsound = Instance.new("Sound")
            deathsound.Parent = game:GetService("SoundService")
            deathsound.SoundId = 'rbxassetid://'..DeathSoundType
            deathsound.Volume = DeathVolume
            deathsound:Play()
            deathsound.Ended:Connect(function()
                if deathsound then
                    deathsound:Destroy()
                end
            end)
        end
    end)
    game:GetService("Workspace").Debris.ChildAdded:Connect(function(child)
        task.wait()
        if child:IsA("SurfaceGui") and library.flags.low_end_pc then
            child:Destroy()
        end
    end)
    local btFolder = Instance.new("Folder",workspace)
    players.PlayerAdded:Connect(function(plr)
        createEsp(plr)
        if btFolder:FindFirstChild(plr.Name) then return end
        local plrbtFolder = Instance.new("Folder",btFolder)
        plrbtFolder.Name = plr.Name
    end)
    for i,v in next, players:GetPlayers() do
        createEsp(v)
        if btFolder:FindFirstChild(v.Name) then return end
        local plrbtFolder = Instance.new("Folder",btFolder)
        plrbtFolder.Name = v.Name
    end
end)() -- end of LPH_NO_VIRTUALIZE macro - also calls it important you add the () at the end to call it

local L_1_
local L_2_ = Vector3.new(0,0,0)

L_1_ = Instance.new("Part", workspace)
L_1_.Anchored = true
L_1_.CanCollide = false
L_1_.Size = Vector3.new(1,1,1)
L_1_.Position = Vector3.new()
L_1_.Material = "SmoothPlastic"
L_1_.Transparency = 0.65

game:GetService("Workspace").Status.Rounds.Changed:Connect(function(p)
    Airstuck=false
    FakeDuck=false
    ThirdPerson=false
    L_1_.Position = Vector3.new(0,0,0)
    L_2_ = nil
end)

localPlayer.CharacterAdded:Connect(function(c)
    Airstuck=false
    FakeDuck=false
    ThirdPerson=false
    L_1_.Position = Vector3.new(0,0,0)
    L_2_ = nil
    getfenv().selfChams()
end)

camera.ChildAdded:Connect(function(h)
    if ThirdPerson == false or localPlayer.CameraMaxZoomDistance == 0 or not library.flags.third_person_remove_hands then
        getfenv().updateViewModelVisuals()
        armhg()
    end
end)

LPH_JIT_MAX(function() 
    local oldNamecall
    oldNamecall = hookmetamethod(game, "__namecall", function(Self, ...)
        local Args = {
            ...
        }
        local Meta = getnamecallmethod()
        local Method = Self.Name;

        if Method == "ControlTurn" then
            if library.flags.antiaim then
            local Pitch = 0
                if library.flags.antiaim_pitch == "Up" then
                    Pitch = 1
                elseif library.flags.antiaim_pitch == "Down" then
                    Pitch = -1
                elseif library.flags.antiaim_pitch == "Random" then
                    local PTCH = math.random(-1,1)
                    Pitch = PTCH
                elseif library.flags.antiaim_pitch == "None" then
                    Pitch = 0
                end
                return oldNamecall(Self, Pitch, select(2, ...)) 
            end
        end;
        if library.flags.viewmodel_changer and Meta == ("SetPrimaryPartCFrame" or "setprimarypartcframe") and Self.Name == ("Arms" or "arms") then
            Args[1] = Args[1] * CFrame.new((library.flags.viewmodel_changer_x - 30) / 10, (library.flags.viewmodel_changer_Y - 30) / 10,(library.flags.viewmodel_changer_Z - 30) / 10)
            return oldNamecall(Self, unpack(Args))
        end
        
        return oldNamecall(Self, ...)
    end)

    local oldNewindex
    oldNewindex = hookmetamethod(game, "__newindex", function(L_1241_arg0, L_1242_arg1, L_1243_arg2)
        if L_1242_arg1 == "CFrame" then
            if library.flags.ratio_changer then
                L_1243_arg2 = L_1243_arg2 * CFrame.new(0, 0, 0, 1, 0, 0, 0, library.flags.ratio_changer_value/100, 0, 0, 0, 1)
            end;
            if library.flags.antiaim and library.flags.antiaim_roll then
                L_1243_arg2 = L_1243_arg2 + Vector3.new(0, ThirdPerson and 2 or 1.5, 0)
            end
        end;
        return oldNewindex(L_1241_arg0, L_1242_arg1, L_1243_arg2)
    end)
end)();

local L_24_ = replicatedStorage

local L_136_, L_137_ = {}, {}
if not isfile("Sirex/custommodels.txt") then
	writefile("Sirex/custommodels.txt", [[
[
{"modelid":"rbxassetid://6421375318","weaponname":"defaultknife","modelname":"Flip Knife"},
{"modelid":"rbxassetid://6476945399","weaponname":"defaultknife","modelname":"Sword"},
{"modelid":"rbxassetid://6477297801","weaponname":"defaultknife","modelname":"Energy Blade"},
{"modelid":"rbxassetid://6478215819","weaponname":"defaultknife","modelname":"Pickaxe"},
]
]])

end;
local L_138_, L_139_ = pcall(function()
	local L_1499_ = readfile("Sirex/custommodels.txt")
	L_136_ = game:service("HttpService"):JSONDecode(L_1499_)
	L_137_ = {}
	for L_1500_forvar0, L_1501_forvar1 in next, L_136_ do
		table.insert(L_137_, L_1501_forvar1.modelname)
	end
end)
local L_91_ = {}
local L_92_ = {}
function equipCustomModel(L_1502_arg0)
	for L_1503_forvar0, L_1504_forvar1 in next, L_136_ do
		if L_1504_forvar1.modelname == L_1502_arg0 then
			if L_1504_forvar1.weaponname == "defaultknife" then
				for L_1505_forvar0 = 1, 2 do
					local L_1506_ = L_1505_forvar0 == 1 and "T" or "CT"
					local L_1507_ = game:GetObjects(L_1504_forvar1.modelid)[1]
					L_1507_.Name = "v_" .. L_1506_ .. " Knife"
					L_24_.Viewmodels["v_" .. L_1506_ .. " Knife"]:Destroy()
					L_1507_.Parent = L_24_.Viewmodels;
					L_1507_.HumanoidRootPart.Transparency = 1;
					if not L_1507_:FindFirstChild("stab") then
						local L_1508_ = L_1507_.fire:Clone()
						L_1508_.Parent = L_1507_;
						L_1508_.Name = "stab"
					end;
					if L_1507_:FindFirstChild("AIM") then
						L_1507_.AIM:Destroy()
					end;
					table.insert(L_91_, L_1506_ .. " Knife")
				end
			else
				local L_1509_ = game:GetObjects(L_1504_forvar1.modelid)[1]
				L_1509_.Name = "v_" .. L_1504_forvar1.weaponname;
				L_24_.Viewmodels["v_" .. L_1504_forvar1.weaponname]:Destroy()
				L_1509_.Parent = L_24_.Viewmodels;
				L_1509_.HumanoidRootPart.Transparency = 1;
				table.insert(L_91_, L_1504_forvar1.weaponname)
			end;
			table.insert(L_92_, L_1502_arg0)
		end
	end
end;

local WeaponModifer = Instance.new("Folder", workspace)
WeaponModifer.Name = "WeaponModifer"

local OldPenetration = Instance.new("Folder", WeaponModifer)
OldPenetration.Name = "Penetration"

local OldSpread = Instance.new("Folder", WeaponModifer)
OldSpread.Name = "Spread"

local OldAmmo = Instance.new("Folder", WeaponModifer)
OldAmmo.Name = "Ammo"

local OldPattern = Instance.new("Folder", WeaponModifer)
OldPattern.Name = "Pattern"

local OldFireRate = Instance.new("Folder", WeaponModifer)
OldFireRate.Name = "FireRate"

local OldBulletPerTrail = Instance.new("Folder", WeaponModifer)
OldBulletPerTrail.Name = "BulletPerTrail"

--[{"fMagnitude":0,"fAngle":0},{"fMagnitude":0.03650668816358304,"fAngle":126.91055708230543},{"fMagnitude":0.09710341660506895,"fAngle":103.57880645754044},{"fMagnitude":0.20013263941494459,"fAngle":90.1027131972373},{"fMagnitude":0.33060901403291179,"fAngle":84.02930204402732},{"fMagnitude":0.4707168060443959,"fAngle":89.16427506722639},{"fMagnitude":0.6223604110250919,"fAngle":93.09452324251758},{"fMagnitude":0.7276192992894177,"fAngle":97.97239601394388},{"fMagnitude":0.808123360769141,"fAngle":99.57939008712471},{"fMagnitude":0.8811659708191565,"fAngle":103.01014026127658},{"fMagnitude":0.9228953436265133,"fAngle":97.52170730239158},{"fMagnitude":0.950834691341192,"fAngle":95.80215041837198},{"fMagnitude":0.956396047723471,"fAngle":99.78179212336181},{"fMagnitude":0.9925899995947871,"fAngle":99.67309198699113},{"fMagnitude":0.9956785096611056,"fAngle":93.08931863127339},{"fMagnitude":0.9486597587571501,"fAngle":82.41135903001369},{"fMagnitude":0.9212954105265906,"fAngle":72.3316848525954},{"fMagnitude":0.9549911277967323,"fAngle":71.92966913872697},{"fMagnitude":0.9905288216796938,"fAngle":70.96567909370482},{"fMagnitude":1,"fAngle":68.74056861112706},{"fMagnitude":0.9702117466673833,"fAngle":75.4299640118399},{"fMagnitude":0.9592992578492341,"fAngle":84.65630374530802},{"fMagnitude":0.9823178056182292,"fAngle":89.13088232267863},{"fMagnitude":0.9890978431007212,"fAngle":87.65942771241356},{"fMagnitude":0.9766990498057082,"fAngle":92.40707476467877},{"fMagnitude":0.9412840943364779,"fAngle":101.47301628972434},{"fMagnitude":0.9650986893500025,"fAngle":106.95114781352146},{"fMagnitude":0.968550669763189,"fAngle":101.98601462275546},{"fMagnitude":0.9691222486764549,"fAngle":97.02217629129697},{"fMagnitude":0.9758725547504183,"fAngle":96.00284271164142},{"fMagnitude":0.9826228608243818,"fAngle":94.98350913198587},{"fMagnitude":0,"fAngle":0},{"fMagnitude":0.03650668816358304,"fAngle":126.91055708230543},{"fMagnitude":0.09710341660506895,"fAngle":103.57880645754044},{"fMagnitude":0.20013263941494459,"fAngle":90.1027131972373},{"fMagnitude":0.33060901403291179,"fAngle":84.02930204402732},{"fMagnitude":0.4707168060443959,"fAngle":89.16427506722639},{"fMagnitude":0.6223604110250919,"fAngle":93.09452324251758},{"fMagnitude":0.7276192992894177,"fAngle":97.97239601394388},{"fMagnitude":0.808123360769141,"fAngle":99.57939008712471},{"fMagnitude":0.8811659708191565,"fAngle":103.01014026127658},{"fMagnitude":0.9228953436265133,"fAngle":97.52170730239158},{"fMagnitude":0.950834691341192,"fAngle":95.80215041837198},{"fMagnitude":0.956396047723471,"fAngle":99.78179212336181},{"fMagnitude":0.9925899995947871,"fAngle":99.67309198699113},{"fMagnitude":0.9956785096611056,"fAngle":93.08931863127339},{"fMagnitude":0.9486597587571501,"fAngle":82.41135903001369},{"fMagnitude":0.9212954105265906,"fAngle":72.3316848525954},{"fMagnitude":0.9549911277967323,"fAngle":71.92966913872697},{"fMagnitude":0.9905288216796938,"fAngle":70.96567909370482},{"fMagnitude":1,"fAngle":68.74056861112706},{"fMagnitude":0.9702117466673833,"fAngle":75.4299640118399},{"fMagnitude":0.9592992578492341,"fAngle":84.65630374530802},{"fMagnitude":0.9823178056182292,"fAngle":89.13088232267863},{"fMagnitude":0.9890978431007212,"fAngle":87.65942771241356},{"fMagnitude":0.9766990498057082,"fAngle":92.40707476467877},{"fMagnitude":0.9412840943364779,"fAngle":101.47301628972434},{"fMagnitude":0.9650986893500025,"fAngle":106.95114781352146},{"fMagnitude":0.968550669763189,"fAngle":101.98601462275546},{"fMagnitude":0.9691222486764549,"fAngle":97.02217629129697},{"fMagnitude":0.9758725547504183,"fAngle":96.00284271164142},{"fMagnitude":0.9826228608243818,"fAngle":94.98350913198587},{"fMagnitude":0,"fAngle":0},{"fMagnitude":0.03650668816358304,"fAngle":126.91055708230543},{"fMagnitude":0.09710341660506895,"fAngle":103.57880645754044},{"fMagnitude":0.20013263941494459,"fAngle":90.1027131972373},{"fMagnitude":0.33060901403291179,"fAngle":84.02930204402732},{"fMagnitude":0.4707168060443959,"fAngle":89.16427506722639},{"fMagnitude":0.6223604110250919,"fAngle":93.09452324251758},{"fMagnitude":0.7276192992894177,"fAngle":97.97239601394388},{"fMagnitude":0.808123360769141,"fAngle":99.57939008712471},{"fMagnitude":0.8811659708191565,"fAngle":103.01014026127658},{"fMagnitude":0.9228953436265133,"fAngle":97.52170730239158},{"fMagnitude":0.950834691341192,"fAngle":95.80215041837198},{"fMagnitude":0.956396047723471,"fAngle":99.78179212336181},{"fMagnitude":0.9925899995947871,"fAngle":99.67309198699113},{"fMagnitude":0.9956785096611056,"fAngle":93.08931863127339},{"fMagnitude":0.9486597587571501,"fAngle":82.41135903001369},{"fMagnitude":0.9212954105265906,"fAngle":72.3316848525954},{"fMagnitude":0.9549911277967323,"fAngle":71.92966913872697},{"fMagnitude":0.9905288216796938,"fAngle":70.96567909370482},{"fMagnitude":1,"fAngle":68.74056861112706},{"fMagnitude":0.9702117466673833,"fAngle":75.4299640118399},{"fMagnitude":0.9592992578492341,"fAngle":84.65630374530802},{"fMagnitude":0.9823178056182292,"fAngle":89.13088232267863},{"fMagnitude":0.9890978431007212,"fAngle":87.65942771241356},{"fMagnitude":0.9766990498057082,"fAngle":92.40707476467877},{"fMagnitude":0.9412840943364779,"fAngle":101.47301628972434},{"fMagnitude":0.9650986893500025,"fAngle":106.95114781352146},{"fMagnitude":0.968550669763189,"fAngle":101.98601462275546},{"fMagnitude":0.9691222486764549,"fAngle":97.02217629129697},{"fMagnitude":0.9758725547504183,"fAngle":96.00284271164142},{"fMagnitude":0.9826228608243818,"fAngle":94.98350913198587},{"fMagnitude":0,"fAngle":0},{"fMagnitude":0.03650668816358304,"fAngle":126.91055708230543},{"fMagnitude":0.09710341660506895,"fAngle":103.57880645754044},{"fMagnitude":0.20013263941494459,"fAngle":90.1027131972373},{"fMagnitude":0.33060901403291179,"fAngle":84.02930204402732},{"fMagnitude":0.4707168060443959,"fAngle":89.16427506722639},{"fMagnitude":0.6223604110250919,"fAngle":93.09452324251758},{"fMagnitude":0.7276192992894177,"fAngle":97.97239601394388},{"fMagnitude":0.808123360769141,"fAngle":99.57939008712471},{"fMagnitude":0.8811659708191565,"fAngle":103.01014026127658},{"fMagnitude":0.9228953436265133,"fAngle":97.52170730239158},{"fMagnitude":0.950834691341192,"fAngle":95.80215041837198},{"fMagnitude":0.956396047723471,"fAngle":99.78179212336181},{"fMagnitude":0.9925899995947871,"fAngle":99.67309198699113},{"fMagnitude":0.9956785096611056,"fAngle":93.08931863127339},{"fMagnitude":0.9486597587571501,"fAngle":82.41135903001369},{"fMagnitude":0.9212954105265906,"fAngle":72.3316848525954},{"fMagnitude":0.9549911277967323,"fAngle":71.92966913872697},{"fMagnitude":0.9905288216796938,"fAngle":70.96567909370482},{"fMagnitude":1,"fAngle":68.74056861112706},{"fMagnitude":0.9702117466673833,"fAngle":75.4299640118399},{"fMagnitude":0.9592992578492341,"fAngle":84.65630374530802},{"fMagnitude":0.9823178056182292,"fAngle":89.13088232267863},{"fMagnitude":0.9890978431007212,"fAngle":87.65942771241356},{"fMagnitude":0.9766990498057082,"fAngle":92.40707476467877},{"fMagnitude":0.9412840943364779,"fAngle":101.47301628972434},{"fMagnitude":0.9650986893500025,"fAngle":106.95114781352146},{"fMagnitude":0.968550669763189,"fAngle":101.98601462275546},{"fMagnitude":0.9691222486764549,"fAngle":97.02217629129697},{"fMagnitude":0.9758725547504183,"fAngle":96.00284271164142},{"fMagnitude":0.9826228608243818,"fAngle":94.98350913198587},{"fMagnitude":0,"fAngle":0},{"fMagnitude":0.03650668816358304,"fAngle":126.91055708230543},{"fMagnitude":0.09710341660506895,"fAngle":103.57880645754044},{"fMagnitude":0.20013263941494459,"fAngle":90.1027131972373},{"fMagnitude":0.33060901403291179,"fAngle":84.02930204402732},{"fMagnitude":0.4707168060443959,"fAngle":89.16427506722639},{"fMagnitude":0.6223604110250919,"fAngle":93.09452324251758},{"fMagnitude":0.7276192992894177,"fAngle":97.97239601394388},{"fMagnitude":0.808123360769141,"fAngle":99.57939008712471},{"fMagnitude":0.8811659708191565,"fAngle":103.01014026127658},{"fMagnitude":0.9228953436265133,"fAngle":97.52170730239158},{"fMagnitude":0.950834691341192,"fAngle":95.80215041837198},{"fMagnitude":0.956396047723471,"fAngle":99.78179212336181},{"fMagnitude":0.9925899995947871,"fAngle":99.67309198699113},{"fMagnitude":0.9956785096611056,"fAngle":93.08931863127339},{"fMagnitude":0.9486597587571501,"fAngle":82.41135903001369},{"fMagnitude":0.9212954105265906,"fAngle":72.3316848525954},{"fMagnitude":0.9549911277967323,"fAngle":71.92966913872697},{"fMagnitude":0.9905288216796938,"fAngle":70.96567909370482},{"fMagnitude":1,"fAngle":68.74056861112706},{"fMagnitude":0.9702117466673833,"fAngle":75.4299640118399},{"fMagnitude":0.9592992578492341,"fAngle":84.65630374530802},{"fMagnitude":0.9823178056182292,"fAngle":89.13088232267863},{"fMagnitude":0.9890978431007212,"fAngle":87.65942771241356},{"fMagnitude":0.9766990498057082,"fAngle":92.40707476467877},{"fMagnitude":0.9412840943364779,"fAngle":101.47301628972434},{"fMagnitude":0.9650986893500025,"fAngle":106.95114781352146},{"fMagnitude":0.968550669763189,"fAngle":101.98601462275546},{"fMagnitude":0.9691222486764549,"fAngle":97.02217629129697},{"fMagnitude":0.9758725547504183,"fAngle":96.00284271164142},{"fMagnitude":0.9826228608243818,"fAngle":94.98350913198587},{"fMagnitude":0,"fAngle":0},{"fMagnitude":0.03650668816358304,"fAngle":126.91055708230543},{"fMagnitude":0.09710341660506895,"fAngle":103.57880645754044},{"fMagnitude":0.20013263941494459,"fAngle":90.1027131972373},{"fMagnitude":0.33060901403291179,"fAngle":84.02930204402732},{"fMagnitude":0.4707168060443959,"fAngle":89.16427506722639},{"fMagnitude":0.6223604110250919,"fAngle":93.09452324251758},{"fMagnitude":0.7276192992894177,"fAngle":97.97239601394388},{"fMagnitude":0.808123360769141,"fAngle":99.57939008712471},{"fMagnitude":0.8811659708191565,"fAngle":103.01014026127658},{"fMagnitude":0.9228953436265133,"fAngle":97.52170730239158},{"fMagnitude":0.950834691341192,"fAngle":95.80215041837198},{"fMagnitude":0.956396047723471,"fAngle":99.78179212336181},{"fMagnitude":0.9925899995947871,"fAngle":99.67309198699113},{"fMagnitude":0.9956785096611056,"fAngle":93.08931863127339},{"fMagnitude":0.9486597587571501,"fAngle":82.41135903001369},{"fMagnitude":0.9212954105265906,"fAngle":72.3316848525954},{"fMagnitude":0.9549911277967323,"fAngle":71.92966913872697},{"fMagnitude":0.9905288216796938,"fAngle":70.96567909370482},{"fMagnitude":1,"fAngle":68.74056861112706},{"fMagnitude":0.9702117466673833,"fAngle":75.4299640118399},{"fMagnitude":0.9592992578492341,"fAngle":84.65630374530802},{"fMagnitude":0.9823178056182292,"fAngle":89.13088232267863},{"fMagnitude":0.9890978431007212,"fAngle":87.65942771241356},{"fMagnitude":0.9766990498057082,"fAngle":92.40707476467877},{"fMagnitude":0.9412840943364779,"fAngle":101.47301628972434},{"fMagnitude":0.9650986893500025,"fAngle":106.95114781352146},{"fMagnitude":0.968550669763189,"fAngle":101.98601462275546},{"fMagnitude":0.9691222486764549,"fAngle":97.02217629129697},{"fMagnitude":0.9758725547504183,"fAngle":96.00284271164142},{"fMagnitude":0.9826228608243818,"fAngle":94.98350913198587}]

for i, v in pairs(game:GetService("ReplicatedStorage"):WaitForChild("Weapons"):GetChildren()) do
    if v:FindFirstChild("Spread") then
        local TheValue = v:FindFirstChild("Spread"):Clone()
        TheValue.Parent = OldSpread
        TheValue.Name = v.Name
    end
end
for i, v in pairs(game:GetService("ReplicatedStorage"):WaitForChild("Weapons"):GetChildren()) do
    if v:FindFirstChild("Penetration") then
        local TheValue = v:FindFirstChild("Penetration"):Clone()
        TheValue.Parent = OldPenetration
        TheValue.Name = v.Name
    end
end
for i, v in pairs(game:GetService("ReplicatedStorage"):WaitForChild("Weapons"):GetChildren()) do
    if v:FindFirstChild("Ammo") then
        local TheValue = v:FindFirstChild("Ammo"):Clone()
        TheValue.Parent = OldAmmo
        TheValue.Name = v.Name
    end
end
for i, v in pairs(game:GetService("ReplicatedStorage"):WaitForChild("Weapons"):GetChildren()) do
    if v:FindFirstChild("Pattern") then
        local TheValue = v:FindFirstChild("Pattern"):Clone()
        TheValue.Parent = OldPattern
        TheValue.Name = v.Name
    end
end
for i, v in pairs(game:GetService("ReplicatedStorage"):WaitForChild("Weapons"):GetChildren()) do
    if v:FindFirstChild("FireRate") then
        local TheValue = v:FindFirstChild("FireRate"):Clone()
        TheValue.Parent = OldFireRate
        TheValue.Name = v.Name
    end
end
for i, v in pairs(game:GetService("ReplicatedStorage"):WaitForChild("Weapons"):GetChildren()) do
    if v:FindFirstChild("BulletPerTrail") then
        local TheValue = v:FindFirstChild("BulletPerTrail"):Clone()
        TheValue.Parent = OldBulletPerTrail
        TheValue.Name = v.Name
    end
end

local OldTracer = game:GetService("ReplicatedStorage").VisualizeModule.Trail:Clone()
OldTracer.Parent = game:GetService("ReplicatedStorage").VisualizeModule
OldTracer.Name = "OldTracer"

-- teb

local CombatTab = library:addTab("Combat")
local RageTab = library:addTab("Rage")
local visualsTab = library:addTab("Visuals")
local WorldTab = library:addTab("World")
local MovemntTab = library:addTab("Movemnt")
local SkinsTab = library:addTab("Skins")
local miscTab = library:addTab("Misc")
local configTab = library:addTab("Settings")

local SkinUnlock = SkinsTab:createGroup(1)

SkinUnlock:addButton({text = "Unlock Inventory",callback = function(val)
    local LocalPlayer = game:GetService("Players").LocalPlayer 
    local Client = getsenv(game.Players.LocalPlayer.PlayerGui.Client) 
    local ReplicatedStorage = game:GetService("ReplicatedStorage")  
    local allSkins = {}
    for i, v in pairs(LocalPlayer.PlayerGui.Client.Rarities:GetChildren()) do
        table.insert(allSkins,{v.Name})
    end
    table.sort(allSkins, function(valueA, valueB)
        return valueA[1] < valueB[1]
    end)
    local isUnlocked
    local mt = getrawmetatable(game) 
    local oldNamecall = mt.__namecall 
    setreadonly(mt, false)  
    local isUnlocked  mt.__namecall = newcclosure(function(self, ...)    
        local args = {...}    
        if getnamecallmethod() == "InvokeServer" and tostring(self) == "Hugh" then        
            return    
        end    
        if getnamecallmethod() == "FireServer" then        
            if args[1] == LocalPlayer.UserId then            
                return        
            end      
            if self.Name == "ApplyGun" then
                if string.find(args[1].Name,"Banana") or string.find(args[1].Name,"Flip") then 
                    args[1] = replicatedStorage.Weapons[localPlayer.Status.Team.Value.." Knife"]
                    return oldNamecall(self, unpack(args))
                end
            end  
            if string.len(tostring(self)) == 38 then            
                if not isUnlocked then                
                    isUnlocked = true                
                    for i,v in pairs(allSkins) do                    
                        local doSkip                    
                        for i2,v2 in pairs(args[1]) do                        
                            if v[1] == v2[1] then                            
                                doSkip = true                        
                            end                    
                        end                    
                        if not doSkip then                        
                            table.insert(args[1], v)                    
                        end                
                    end            
                end            
                return        
            end        
            if tostring(self) == "DataEvent" and args[1][4] then            
                local currentSkin = string.split(args[1][4][1], "_")[2]            
                if args[1][2] == "Both" then                
                    LocalPlayer["SkinFolder"]["CTFolder"][args[1][3]].Value = currentSkin                
                    LocalPlayer["SkinFolder"]["TFolder"][args[1][3]].Value = currentSkin       
                    print(args[1][2])
                    print(LocalPlayer["SkinFolder"][args[1][2] .. "Folder"][args[1][3]].Value)
                    print(currentSkin)
                else               
                    LocalPlayer["SkinFolder"][args[1][2] .. "Folder"][args[1][3]].Value = currentSkin    
                    print(args[1][2])
                    print(LocalPlayer["SkinFolder"][args[1][2] .. "Folder"][args[1][3]].Value)
                    print(currentSkin)        
                end    

            end    
        end    
        return oldNamecall(self, ...) 
    end)
    setreadonly(mt, true)  
    Client.CurrentInventory = allSkins  
    local TClone, CTClone = LocalPlayer.SkinFolder.TFolder:Clone(), game.Players.LocalPlayer.SkinFolder.CTFolder:Clone() LocalPlayer.SkinFolder.TFolder:Destroy() LocalPlayer.SkinFolder.CTFolder:Destroy() TClone.Parent = LocalPlayer.SkinFolder CTClone.Parent = LocalPlayer.SkinFolder
end})



local BunnyHopGroup = MovemntTab:createGroup(1)

local last = Vector3.new()

BunnyHopGroup:addToggle({text = "Bunny Hop",flag = "bunny_hop_enable",callback = function(val)
    LPH_NO_VIRTUALIZE(function()
        while library.flags.bunny_hop_enable do runService.RenderStepped:Wait()--wait()
            if getfenv().isAlive() and isButtonDown(library.flags.bunny_hop_key) then
                localPlayer.Character.Humanoid.Jump = true
                local speed = library.flags.bunny_hop
                local dir = camera.CFrame.LookVector * Vector3.new(1,0,1)
                local move = Vector3.new()
                move = userInputService:IsKeyDown(Enum.KeyCode.W) and move + dir or move
                move = userInputService:IsKeyDown(Enum.KeyCode.S) and move - dir or move
                move = userInputService:IsKeyDown(Enum.KeyCode.D) and move + Vector3.new(-dir.Z,0,dir.X) or move
                move = userInputService:IsKeyDown(Enum.KeyCode.A) and move + Vector3.new(dir.Z,0,-dir.X) or move
                if library.flags.bunny_hop_method == "Velocity" then
                    if move.Unit.X == move.Unit.X then
                        move = move.Unit
                        localPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(move.X*speed,localPlayer.Character.HumanoidRootPart.Velocity.Y,move.Z*speed)
                    end
                elseif library.flags.bunny_hop_method == "CFrame" then
                    if move.Unit.X == move.Unit.X then
                        move = move.Unit
                        localPlayer.Character.HumanoidRootPart.CFrame = localPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(move.X,0,move.Z) * speed/50
                    end
                end
                local L_1739_ = localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart")
                local L_1741_
                local L_1742_
                if L_1739_ then
                    L_1741_ = camera.CFrame.LookVector or localPlayer.Character.HumanoidRootPart.CFrame.LookVector;
                    L_1742_ = camera.CFrame.p or L_1739_.Position
                end;
                local L_1740_ = move
                local L_1743_ = speed
                local L_1744_ = userInputService:IsKeyDown(Enum.KeyCode.S) or userInputService:IsKeyDown(Enum.KeyCode.D) or userInputService:IsKeyDown(Enum.KeyCode.A)
                if L_1740_.Unit.X == L_1740_.Unit.X and not library.flags.bunny_hop_strafe or L_1740_.Unit.X == L_1740_.Unit.X and library.flags.bunny_hop_strafe and L_1744_ then
                    L_1740_ = L_1740_.Unit;
                    L_1739_.Velocity = Vector3.new(L_1740_.X * L_1743_, L_1739_.Velocity.Y, L_1740_.Z * L_1743_)
                elseif library.flags.bunny_hop_strafe and not userInputService:IsKeyDown(Enum.KeyCode.S) and not userInputService:IsKeyDown(Enum.KeyCode.D) and not userInputService:IsKeyDown(Enum.KeyCode.A) then
                    L_1740_ = L_1740_ + L_1741_;
                    L_1740_ = L_1740_.Unit;
                    L_1739_.Velocity = Vector3.new(L_1740_.X * L_1743_, L_1739_.Velocity.Y, L_1740_.Z * L_1743_)
                    localPlayer.Character.Humanoid:MoveTo(L_1742_ + L_1741_)
                end;
                last = L_1739_.Velocity
            end
        end
    end)()
end})
BunnyHopGroup:addToggle({text = "Auto Strafe",flag = "bunny_hop_strafe"})
BunnyHopGroup:addList({text = "Method",flag = "bunny_hop_method",values = {"Velocity","CFrame"}})
BunnyHopGroup:addSlider({text = "Speed",flag = "bunny_hop",min = 1,max = 300,value = 40})
BunnyHopGroup:addKeybind({text = "Key",flag = "bunny_hop_key",key = Enum.KeyCode.Space}) 

local MiscGroup,MiscFrame = miscTab:createGroup(1)
local HitGroup,HitFrame = miscTab:createGroup(0)
local ChangerGroup,ChangerFrame = miscTab:createGroup(0)
local UiGroup,UiFrame = miscTab:createGroup(1)
local SelfChamsGroup,SelfChamsFrame = miscTab:createGroup(2)
local SelfChamsGroup2,SelfChamsFrame2 = miscTab:createGroup(2)
local FakeLagChamsGroup,FakeLagChamFrame = miscTab:createGroup(2)
local FovChangerGroup,FovChangerFrame = miscTab:createGroup(1)


FovChangerGroup:addToggle({text = "Fov Changer",flag = "fov_changer_enabled"})
FovChangerGroup:addToggle({text = "Change Fov Even On Scope",flag = "fov_changer_onscope"})
FovChangerGroup:addSlider({text = "Fov",flag = "fov_changer",min = 1,max = 120,value = 80,})

ChangerGroup:addList({text = "Custom Skin",flag = "custom_model",values = {"Pickaxe","Energy Blade","Sword","Flip Knife"}})
ChangerGroup:addButton({text = "Apply",callback = function(val)
    equipCustomModel(library.flags.custom_model)
end})

SelfChamsGroup:addToggle({text = "Remove Sleeves",flag = "remove_sleeves",callback = getfenv().updateViewModelVisuals})
SelfChamsGroup:addToggle({text = "Remove Gloves",flag = "remove_gloves",callback = getfenv().updateViewModelVisuals})
SelfChamsGroup:addDivider()
SelfChamsGroup:addToggle({text = "Weapon Chams",flag = "weapon_chams",callback = getfenv().updateViewModelVisuals})
SelfChamsGroup:addColorpicker({text = "Color",flag = "weapon_chams_color",ontop = true,color = Color3.fromRGB(255, 255, 255),callback = getfenv().updateViewModelVisuals})
SelfChamsGroup:addSlider({text = "Transparency",flag = "weapon_chams_transparency",min = 0,max = 10,value = 0,callback = getfenv().updateViewModelVisuals})
SelfChamsGroup:addList({text = "Material",flag = "weapon_chams_material",callback = getfenv().updateViewModelVisuals,values = {"SmoothPlastic","ForceField","Neon"}})
SelfChamsGroup:addDivider()
SelfChamsGroup:addToggle({text = "Arm Chams",flag = "arm_chams"})
SelfChamsGroup:addColorpicker({text = "Color",flag = "arm_chams_color",ontop = true,color = Color3.fromRGB(255, 255, 255),callback = getfenv().updateViewModelVisuals})
SelfChamsGroup:addSlider({text = "Transparency",flag = "arm_chams_transparency",min = 0,max = 10,value = 0,callback = getfenv().updateViewModelVisuals})
SelfChamsGroup:addList({text = "Material",flag = "arm_chams_material",callback = updateViewModelVisuals,values = {"SmoothPlastic","ForceField"}})
SelfChamsGroup:addDivider()
SelfChamsGroup:addToggle({text = "Arm Highlight",flag = "arm_highlight",callback = armhg})
SelfChamsGroup:addColorpicker({text = "Color",flag = "arm_highlight_color",ontop = true,color = Color3.fromRGB(255, 255, 255),callback = armhg})
SelfChamsGroup:addSlider({text = "Transparency",flag = "arm_highlight_transparency",min = 0,max = 10,value = 0,callback = armhg})
SelfChamsGroup:addColorpicker({text = "outline Color",flag = "arm_highlight_outline_color",ontop = true,color = Color3.fromRGB(255, 255, 255),callback = armhg})
SelfChamsGroup:addSlider({text = "outline Transparency",flag = "arm_highlight_outline_transparency",min = 0,max = 10,value = 0,callback = armhg})

SelfChamsGroup2:addToggle({text = "self Chams",flag = "self_chams",callback = getfenv().selfChams})
SelfChamsGroup2:addToggle({text = "Remove Hats",flag = "self_chams_removehats",callback = getfenv().selfChams})
SelfChamsGroup2:addColorpicker({text = "Color",flag = "self_chams_color",ontop = true,color = Color3.fromRGB(255, 255, 255),callback = getfenv().selfChams})
SelfChamsGroup2:addSlider({text = "Transparency",flag = "self_chams_transparency",min = 0,max = 10,value = 0,callback = getfenv().selfChams})
SelfChamsGroup2:addList({text = "Material",flag = "self_chams_material",callback = getfenv().selfChams,values = {"SmoothPlastic","ForceField"}})

FakeLagChamsGroup:addToggle({text = "Fake Lag Chams",flag = "fakelag_chams"})
FakeLagChamsGroup:addColorpicker({text = "Color",flag = "fakelag_chams_color",ontop = true,color = Color3.fromRGB(255, 255, 255)})
FakeLagChamsGroup:addSlider({text = "Transparency",flag = "fakelag_chams_Transparency",min = 0,max = 10,value = 0})
FakeLagChamsGroup:addList({text = "Material",flag = "fakelag_chams_material",values = {"SmoothPlastic","ForceField","Neon"}})

MiscGroup:addToggle({text = "Third Person",flag = "third_person",callback = function(val)
    LPH_NO_VIRTUALIZE(function()
        ThirdPerson = val
        if ThirdPerson then
            selfChams()
        end
    end)()
end})
MiscGroup:addToggle({text = "Remove Hands On Third Person",flag = "third_person_remove_hands"})
MiscGroup:addSlider({text = "Range",flag = "third_person_range",min = 3,max = 100,value = 5})
MiscGroup:addKeybind({text = "Key",flag = "third_person_key",key = Enum.KeyCode.Z,callback = function(val)
    LPH_NO_VIRTUALIZE(function()
        if library.flags.third_person then
            ThirdPerson = not ThirdPerson
        end
        if ThirdPerson then
            selfChams()
        end
    end)()
end}) 
MiscGroup:addDivider()
MiscGroup:addToggle({text = "Ratio Changer",flag = "ratio_changer"})
MiscGroup:addSlider({text = "Ratio",flag = "ratio_changer_value",min = 1,max = 100,value = 100})
MiscGroup:addDivider()
MiscGroup:addToggle({text = "Change Viewmodel Position",flag = "viewmodel_changer"})
MiscGroup:addSlider({text = "X",flag = "viewmodel_changer_x",min = 0,max = 60,value = 30})
MiscGroup:addSlider({text = "Y",flag = "viewmodel_changer_Y",min = 0,max = 60,value = 30})
MiscGroup:addSlider({text = "Z",flag = "viewmodel_changer_Z",min = 0,max = 60,value = 30,})

HitGroup:addToggle({text = "KIll Say",flag = "kill_say"})
HitGroup:addTextbox({text = "Text",flag = "kill_say_text"})
HitGroup:addDivider()
HitGroup:addToggle({text = "Hit Marker",flag = "hit_marker"})
HitGroup:addColorpicker({text = "Color",flag = "hit_marker_color",ontop = true,color = Color3.fromRGB(255, 255, 255)})
HitGroup:addDivider()
HitGroup:addToggle({text = "Kill Sound",flag = "kill_sound_enable"})
HitGroup:addList({text = "Sound",flag = "kill_sound",values = {"1 Sit","UltraKill","Minecraft","Emotional Damage","Metal Pipe"}})
HitGroup:addSlider({text = "Sound Volume",flag = "kill_sound_volume",min = 1,max = 10,value = 3,callback = function(val)
    KillSoundVolume = val
end})
HitGroup:addDivider()
HitGroup:addToggle({text = "Death Sound",flag = "death_sound_enable"})
HitGroup:addList({text = "Sound",flag = "death_sound",values = {"Why u bully me","Emotional Damage"}})
HitGroup:addSlider({text = "Sound Volume",flag = "death_sound_volume",min = 1,max = 10,value = 3,callback = function(val)
    DeathVolume = val
end})
HitGroup:addDivider()
HitGroup:addToggle({text = "Hit Sound",flag = "hit_sound_enable"})
HitGroup:addList({text = "Sound",flag = "hit_sound",values = {"Bameware","Bell","Bubble","Pick","Pop","Rust","Skeet","Neverlose","Minecraft"}})
HitGroup:addSlider({text = "Sound Volume",flag = "hit_sound_volume",min = 1,max = 10,value = 3,callback = function(val)
    HitVolume = val
end})

UiGroup:addToggle({text = "Remove Chat",flag = "remove_chat",callback = function(val)
    localPlayer.PlayerGui.GUI.Main.Visible = not val
end})
UiGroup:addToggle({text = "Remove Money Count",flag = "remove_money",callback = function (val)
    if val then
        localPlayer.PlayerGui.GUI.Cash.BackgroundTransparency = 1
        localPlayer.PlayerGui.GUI.Cash.TextTransparency = 1
        localPlayer.PlayerGui.GUI.Cash.BuyZone.Image = "0"
    elseif not val then
        localPlayer.PlayerGui.GUI.Cash.BackgroundTransparency = 0.5
        localPlayer.PlayerGui.GUI.Cash.TextTransparency = 0.3
        localPlayer.PlayerGui.GUI.Cash.BuyZone.Image = "rbxassetid://559769532"
    end
end})
UiGroup:addToggle({text = "Remove Radar",flag = "remove_radar", callback = function(val)
    if val then
        localPlayer.PlayerGui.GUI.Radar.Radar.Visible = false
        localPlayer.PlayerGui.GUI.Radar.Image = "0"
    elseif not val then
        localPlayer.PlayerGui.GUI.Radar.Radar.Visible = true
        localPlayer.PlayerGui.GUI.Radar.Image = "http://www.roblox.com/asset/?id=5028957545"
    end
end})
UiGroup:addToggle({text = "Remove Radio Commands",flag = "remove_radio"})
UiGroup:addToggle({text = "Remove Flash",flag = "remove_flash",callback = function(val)
    localPlayer.PlayerGui.Blnd.Blind.Visible = not val
end})
UiGroup:addToggle({text = "Remove Scope Borders",flag = "remove_scope_borders",callback = function(val)
    localPlayer.PlayerGui.GUI.Crosshairs.Scope.ImageTransparency = val and 1 or 0
    for i= 1, 4 do
        localPlayer.PlayerGui.GUI.Crosshairs["Frame" .. i].Transparency = i and 1 or 0
    end
end})

local configGroup = configTab:createGroup(0)
local SettingsGroup = configTab:createGroup(1)
local CrosshairGroup = configTab:createGroup(2)

-- croosshair

CrosshairGroup:addToggle({text = "Custom Crosshair",flag = "crosshair"})
CrosshairGroup:addToggle({text = "T Shape",flag = "crosshair_tshape"})
CrosshairGroup:addColorpicker({text = "Color",flag = "crosshair_color",ontop = true,color = Color3.fromRGB(135, 50, 240)})
CrosshairGroup:addSlider({text = "Thickness",flag = "crosshair_thick",min = 1,max = 5,value = 1})
CrosshairGroup:addSlider({text = "Radius",flag = "crosshair_radius",min = 1,max = 200,value = 50})
CrosshairGroup:addSlider({text = "Length",flag = "crosshair_length",min = 1,max = 200,value = 100})

configGroup:addColorpicker({text = "Menu Accent",flag = "menu_accent",ontop = true,color = Color3.fromRGB(135, 50, 240),callback = function(val)
    for i,v in next, tabholder:GetDescendants() do
        pcall(function()
            if v.Name ~= "dontchange" and v.BackgroundColor3 == library.libColor then
                v.BackgroundColor3 = val
            end
        end)
    end
    library.libColor = val
end})
configGroup:addKeybind({text = "Menu Key",flag = "menu_key",key = Enum.KeyCode.Insert}) 

-- Canfig

SettingsGroup:addToggle({text = "Bad PC",flag = "low_end_pc", callback = function (val)
    if val then
        game:GetService("Lighting").ShadowSoftness = 0
        game:GetService("Lighting").GlobalShadows = false
    elseif not val then
        game:GetService("Lighting").ShadowSoftness = 0.5
        game:GetService("Lighting").GlobalShadows = true
    end
end})
SettingsGroup:addToggle({text = "Watermark",flag = "watermark",callback = function(val)
    SirexWatermark.Enabled = val
end})
SettingsGroup:addColorpicker({text = "Background",flag = "watermark_Background",ontop = true,color = Color3.fromRGB(23, 0, 34),callback = function(val)
    for i,v in next, SirexWatermark:GetDescendants() do
        pcall(function()
            if v.Name == "Main" then
                v.BackgroundColor3 = val
            end
            if v.Name == "DropShadow" then
                v.ImageColor3 = val
            end
        end)
    end
end})
SettingsGroup:addColorpicker({text = "Text",flag = "watermark_text",ontop = true,color = Color3.fromRGB(231, 189, 255),callback = function(val)
    for i,v in next, SirexWatermark:GetDescendants() do
        pcall(function()
            if v:IsA("TextLabel") then
                v.TextColor3 = val
            end
        end)
    end
end})
SettingsGroup:addColorpicker({text = "Main",flag = "watermark_main",ontop = true,color = Color3.fromRGB(28, 0, 42),callback = function(val)
    for i,v in next, SirexWatermark:GetDescendants() do
        pcall(function()
            if v.Name == "Logo" then
                v.BackgroundColor3 = val
            end
        end)
    end
end})
SettingsGroup:addColorpicker({text = "Outline",flag = "watermark_outline",ontop = true,color = Color3.fromRGB(31, 0, 48),callback = function(val)
    for i,v in next, SirexWatermark:GetDescendants() do
        pcall(function()
            if v.Name == "Outline" then
                v.BackgroundColor3 = val
            end
        end)
    end
end})

configGroup:addList({text = "Config",flag = "selected_config",skipflag = true,values = {}})
configGroup:addTextbox({text = "config name",flag = "config_name"})
configGroup:addButton({text = "Save Config",callback = library.saveConfig})
configGroup:addButton({text = "Load Config",callback = library.loadConfig})
configGroup:addButton({text = "Delete Config",callback = library.deleteConfig})
configGroup:addButton({text = "Refresh Configs",callback = library.refreshConfigs})
library:refreshConfigs()


local CombatGroup = CombatTab:createGroup(0)
local FovGroup = CombatTab:createGroup(0)
local ModGroup = CombatTab:createGroup(1)

local rifleGroup,rifleFrame = CombatTab:createGroup(2)
local pistolGroup,pistolFrame = CombatTab:createGroup(2)
local heavypGroup,heavypFrame = CombatTab:createGroup(2)
local awpGroup,awpFrame = CombatTab:createGroup(2)
local scoutGroup,scoutFrame = CombatTab:createGroup(2)
local otherGroup,otherFrame = CombatTab:createGroup(2)

ModGroup:addToggle({text = "Modify Spread",flag = "mod_spread",callback = function(val)
    if val == false then
        for Index, Weapon in pairs(game:GetService("ReplicatedStorage"):WaitForChild("Weapons"):GetChildren()) do
            for Index, Value in pairs(OldSpread:GetChildren()) do
                if Weapon.Parent:FindFirstChild(Value.Name) then
                    if Weapon:FindFirstChild("Spread") then
                        if Value.Name == Weapon.Name then
                            Weapon:FindFirstChild("Spread"):Destroy()
                            local l = Value:Clone()
                            l.Name = "Spread"
                            l.Parent = Weapon
                        end
                    end
                end
            end
        end
    elseif val == true then
        for _, v in pairs(game:GetService("ReplicatedStorage"):WaitForChild("Weapons"):GetChildren()) do
            local holder;
            for _, h in pairs(OldSpread:GetChildren()) do if h.name == v.Name then holder = h:Clone() end end
            if v:FindFirstChild("Spread") and holder ~= nil then
                v:FindFirstChild("Spread"):Destroy()
                for i, r in pairs(holder:GetChildren()) do
                    local vl = library.flags.mod_spread_percent/3
                    if hasProperty(r, "Value") and vl ~= 0 then
                        r.Value = r.Value/vl
                        if library.flags.mod_spread_percent == 100 then
                            r.Value=0
                        end
                    elseif hasProperty(r, "Value") and vl == 0 then 
                        r.Value = r.Value
                    end
                    if not v:FindFirstChild("Spread") then
                        holder.Name = "Spread"
                        holder.Parent = v
                    end
                end
            end
        end     
    end
end})
ModGroup:addSlider({text = "Percentage",flag = "mod_spread_percent",min = 0,max = 100,value = 50,callback = function(val)
    if library.flags.mod_spread then
        for _, v in pairs(game:GetService("ReplicatedStorage"):WaitForChild("Weapons"):GetChildren()) do
            local holder;
            for _, h in pairs(OldSpread:GetChildren()) do if h.name == v.Name then holder = h:Clone() end end
            if v:FindFirstChild("Spread") and holder ~= nil then
                v:FindFirstChild("Spread"):Destroy()
                for i, r in pairs(holder:GetChildren()) do
                    local vl = library.flags.mod_spread_percent/3
                    if hasProperty(r, "Value") and vl ~= 0 then
                        r.Value = r.Value/vl
                        if library.flags.mod_spread_percent == 100 then
                            r.Value=0
                        end
                    elseif hasProperty(r, "Value") and vl == 0 then 
                        r.Value = r.Value
                    end
                    if not v:FindFirstChild("Spread") then
                        holder.Name = "Spread"
                        holder.Parent = v
                    end
                end
            end
        end 
    end
end})
ModGroup:addDivider()
ModGroup:addToggle({text = "Legit Wall Bang",flag = "wall_bang_legit",callback = function(val)
    if val == false then
        for Index, Weapon in pairs(game:GetService("ReplicatedStorage"):WaitForChild("Weapons"):GetChildren()) do
            for Index, Value in pairs(OldPenetration:GetChildren()) do
                if Weapon.Parent:FindFirstChild(Value.Name) then
                    if Weapon:FindFirstChild("Penetration") then
                        if Value.Name == Weapon.Name then
                            Weapon:FindFirstChild("Penetration"):Destroy()
                            local l = Value:Clone()
                            l.Name = "Penetration"
                            l.Parent = Weapon
                        end
                    end
                end
            end
        end
    elseif val == true then
        for _, v in pairs(game:GetService("ReplicatedStorage"):WaitForChild("Weapons"):GetChildren()) do
            local holder;
            for _, h in pairs(OldPenetration:GetChildren()) do if h.name == v.Name then holder = h:Clone() end end
            if v:FindFirstChild("Penetration") and holder ~= nil then
                if hasProperty(holder, "Value") and library.flags.mod_bang_percent ~= 10000 then
                    v:FindFirstChild("Penetration"):Destroy()
                    holder.Value = 50 * library.flags.mod_bang_percent
                    if not v:FindFirstChild("Penetration") then
                        holder.Name = "Penetration"
                        holder.Parent = v
                    end
                elseif hasProperty(holder, "Value") and library.flags.mod_bang_percent >= 10000 then
                    v:FindFirstChild("Penetration"):Destroy()
                    holder.Value = 5000000
                    if not v:FindFirstChild("Penetration") then
                        holder.Name = "Penetration"
                        holder.Parent = v
                    end
                end
            end
        end     
    end
end})
ModGroup:addSlider({text = "Percentage",flag = "mod_bang_percent",min = 0,max = 1000,value = 500,callback = function(val)
    if library.flags.wall_bang_legit then
        for _, v in pairs(game:GetService("ReplicatedStorage"):WaitForChild("Weapons"):GetChildren()) do
            local holder;
            for _, h in pairs(OldPenetration:GetChildren()) do if h.name == v.Name then holder = h:Clone() end end
            if v:FindFirstChild("Penetration") and holder ~= nil then
                if hasProperty(holder, "Value") and library.flags.mod_bang_percent ~= 1000 then
                    v:FindFirstChild("Penetration"):Destroy()
                    holder.Value = 50 * library.flags.mod_bang_percent
                    if not v:FindFirstChild("Penetration") then
                        holder.Name = "Penetration"
                        holder.Parent = v
                    end
                elseif hasProperty(holder, "Value") and library.flags.mod_bang_percent >= 1000 then
                    v:FindFirstChild("Penetration"):Destroy()
                    holder.Value = 5000000
                    if not v:FindFirstChild("Penetration") then
                        holder.Name = "Penetration"
                        holder.Parent = v
                    end
                end
            end
        end 
    end
end})
ModGroup:addDivider()
ModGroup:addToggle({text = "Infinite Ammo",flag = "hooks_ammo",callback = function(val)
    if val == false then
        for _, v in pairs(game:GetService("ReplicatedStorage"):WaitForChild("Weapons"):GetChildren()) do
            local holder;
            for _, h in pairs(OldAmmo:GetChildren()) do if h.name == v.Name then holder = h:Clone() end end
            if v:FindFirstChild("Ammo") and holder ~= nil then
                if hasProperty(holder, "Value") then
                    v:FindFirstChild("Ammo"):Destroy()
                    if not v:FindFirstChild("Ammo") then
                        holder.Name = "Ammo"
                        holder.Parent = v
                    end
                end
            end
            local holder2;
            for _, h2 in pairs(OldPattern:GetChildren()) do if h2.name == v.Name then holder2 = h2:Clone() end end
            if v:FindFirstChild("Pattern") and holder ~= nil then
                if hasProperty(holder, "Value") then
                    v:FindFirstChild("Pattern"):Destroy()
                    if not v:FindFirstChild("Pattern") then
                        holder2.Name = "Pattern"
                        holder2.Parent = v
                    end
                end
            end
        end
    elseif val == true then
        for _, v in pairs(game:GetService("ReplicatedStorage"):WaitForChild("Weapons"):GetChildren()) do
            local holder;
            for _, h in pairs(OldAmmo:GetChildren()) do if h.name == v.Name then holder = h:Clone() end end
            if v:FindFirstChild("Ammo") and holder ~= nil then
                if hasProperty(holder, "Value") then
                    v:FindFirstChild("Ammo"):Destroy()
                    holder.Value = 9696969
                    if not v:FindFirstChild("Ammo") then
                        holder.Name = "Ammo"
                        holder.Parent = v
                    end
                end
            end
            local holder2;
            for _, h2 in pairs(OldPattern:GetChildren()) do if h2.name == v.Name then holder2 = h2:Clone() end end
            if v:FindFirstChild("Pattern") and holder ~= nil then
                if hasProperty(holder, "Value") then
                    v:FindFirstChild("Pattern"):Destroy()
                    holder2.Value = [[ [{"fMagnitude":0,"fAngle":0},{"fMagnitude":0.03650668816358304,"fAngle":126.91055708230543},{"fMagnitude":0.09710341660506895,"fAngle":103.57880645754044},{"fMagnitude":0.20013263941494459,"fAngle":90.1027131972373},{"fMagnitude":0.33060901403291179,"fAngle":84.02930204402732},{"fMagnitude":0.4707168060443959,"fAngle":89.16427506722639},{"fMagnitude":0.6223604110250919,"fAngle":93.09452324251758},{"fMagnitude":0.7276192992894177,"fAngle":97.97239601394388},{"fMagnitude":0.808123360769141,"fAngle":99.57939008712471},{"fMagnitude":0.8811659708191565,"fAngle":103.01014026127658},{"fMagnitude":0.9228953436265133,"fAngle":97.52170730239158},{"fMagnitude":0.950834691341192,"fAngle":95.80215041837198},{"fMagnitude":0.956396047723471,"fAngle":99.78179212336181},{"fMagnitude":0.9925899995947871,"fAngle":99.67309198699113},{"fMagnitude":0.9956785096611056,"fAngle":93.08931863127339},{"fMagnitude":0.9486597587571501,"fAngle":82.41135903001369},{"fMagnitude":0.9212954105265906,"fAngle":72.3316848525954},{"fMagnitude":0.9549911277967323,"fAngle":71.92966913872697},{"fMagnitude":0.9905288216796938,"fAngle":70.96567909370482},{"fMagnitude":1,"fAngle":68.74056861112706},{"fMagnitude":0.9702117466673833,"fAngle":75.4299640118399},{"fMagnitude":0.9592992578492341,"fAngle":84.65630374530802},{"fMagnitude":0.9823178056182292,"fAngle":89.13088232267863},{"fMagnitude":0.9890978431007212,"fAngle":87.65942771241356},{"fMagnitude":0.9766990498057082,"fAngle":92.40707476467877},{"fMagnitude":0.9412840943364779,"fAngle":101.47301628972434},{"fMagnitude":0.9650986893500025,"fAngle":106.95114781352146},{"fMagnitude":0.968550669763189,"fAngle":101.98601462275546},{"fMagnitude":0.9691222486764549,"fAngle":97.02217629129697},{"fMagnitude":0.9758725547504183,"fAngle":96.00284271164142},{"fMagnitude":0.9826228608243818,"fAngle":94.98350913198587},{"fMagnitude":0,"fAngle":0},{"fMagnitude":0.03650668816358304,"fAngle":126.91055708230543},{"fMagnitude":0.09710341660506895,"fAngle":103.57880645754044},{"fMagnitude":0.20013263941494459,"fAngle":90.1027131972373},{"fMagnitude":0.33060901403291179,"fAngle":84.02930204402732},{"fMagnitude":0.4707168060443959,"fAngle":89.16427506722639},{"fMagnitude":0.6223604110250919,"fAngle":93.09452324251758},{"fMagnitude":0.7276192992894177,"fAngle":97.97239601394388},{"fMagnitude":0.808123360769141,"fAngle":99.57939008712471},{"fMagnitude":0.8811659708191565,"fAngle":103.01014026127658},{"fMagnitude":0.9228953436265133,"fAngle":97.52170730239158},{"fMagnitude":0.950834691341192,"fAngle":95.80215041837198},{"fMagnitude":0.956396047723471,"fAngle":99.78179212336181},{"fMagnitude":0.9925899995947871,"fAngle":99.67309198699113},{"fMagnitude":0.9956785096611056,"fAngle":93.08931863127339},{"fMagnitude":0.9486597587571501,"fAngle":82.41135903001369},{"fMagnitude":0.9212954105265906,"fAngle":72.3316848525954},{"fMagnitude":0.9549911277967323,"fAngle":71.92966913872697},{"fMagnitude":0.9905288216796938,"fAngle":70.96567909370482},{"fMagnitude":1,"fAngle":68.74056861112706},{"fMagnitude":0.9702117466673833,"fAngle":75.4299640118399},{"fMagnitude":0.9592992578492341,"fAngle":84.65630374530802},{"fMagnitude":0.9823178056182292,"fAngle":89.13088232267863},{"fMagnitude":0.9890978431007212,"fAngle":87.65942771241356},{"fMagnitude":0.9766990498057082,"fAngle":92.40707476467877},{"fMagnitude":0.9412840943364779,"fAngle":101.47301628972434},{"fMagnitude":0.9650986893500025,"fAngle":106.95114781352146},{"fMagnitude":0.968550669763189,"fAngle":101.98601462275546},{"fMagnitude":0.9691222486764549,"fAngle":97.02217629129697},{"fMagnitude":0.9758725547504183,"fAngle":96.00284271164142},{"fMagnitude":0.9826228608243818,"fAngle":94.98350913198587},{"fMagnitude":0,"fAngle":0},{"fMagnitude":0.03650668816358304,"fAngle":126.91055708230543},{"fMagnitude":0.09710341660506895,"fAngle":103.57880645754044},{"fMagnitude":0.20013263941494459,"fAngle":90.1027131972373},{"fMagnitude":0.33060901403291179,"fAngle":84.02930204402732},{"fMagnitude":0.4707168060443959,"fAngle":89.16427506722639},{"fMagnitude":0.6223604110250919,"fAngle":93.09452324251758},{"fMagnitude":0.7276192992894177,"fAngle":97.97239601394388},{"fMagnitude":0.808123360769141,"fAngle":99.57939008712471},{"fMagnitude":0.8811659708191565,"fAngle":103.01014026127658},{"fMagnitude":0.9228953436265133,"fAngle":97.52170730239158},{"fMagnitude":0.950834691341192,"fAngle":95.80215041837198},{"fMagnitude":0.956396047723471,"fAngle":99.78179212336181},{"fMagnitude":0.9925899995947871,"fAngle":99.67309198699113},{"fMagnitude":0.9956785096611056,"fAngle":93.08931863127339},{"fMagnitude":0.9486597587571501,"fAngle":82.41135903001369},{"fMagnitude":0.9212954105265906,"fAngle":72.3316848525954},{"fMagnitude":0.9549911277967323,"fAngle":71.92966913872697},{"fMagnitude":0.9905288216796938,"fAngle":70.96567909370482},{"fMagnitude":1,"fAngle":68.74056861112706},{"fMagnitude":0.9702117466673833,"fAngle":75.4299640118399},{"fMagnitude":0.9592992578492341,"fAngle":84.65630374530802},{"fMagnitude":0.9823178056182292,"fAngle":89.13088232267863},{"fMagnitude":0.9890978431007212,"fAngle":87.65942771241356},{"fMagnitude":0.9766990498057082,"fAngle":92.40707476467877},{"fMagnitude":0.9412840943364779,"fAngle":101.47301628972434},{"fMagnitude":0.9650986893500025,"fAngle":106.95114781352146},{"fMagnitude":0.968550669763189,"fAngle":101.98601462275546},{"fMagnitude":0.9691222486764549,"fAngle":97.02217629129697},{"fMagnitude":0.9758725547504183,"fAngle":96.00284271164142},{"fMagnitude":0.9826228608243818,"fAngle":94.98350913198587},{"fMagnitude":0,"fAngle":0},{"fMagnitude":0.03650668816358304,"fAngle":126.91055708230543},{"fMagnitude":0.09710341660506895,"fAngle":103.57880645754044},{"fMagnitude":0.20013263941494459,"fAngle":90.1027131972373},{"fMagnitude":0.33060901403291179,"fAngle":84.02930204402732},{"fMagnitude":0.4707168060443959,"fAngle":89.16427506722639},{"fMagnitude":0.6223604110250919,"fAngle":93.09452324251758},{"fMagnitude":0.7276192992894177,"fAngle":97.97239601394388},{"fMagnitude":0.808123360769141,"fAngle":99.57939008712471},{"fMagnitude":0.8811659708191565,"fAngle":103.01014026127658},{"fMagnitude":0.9228953436265133,"fAngle":97.52170730239158},{"fMagnitude":0.950834691341192,"fAngle":95.80215041837198},{"fMagnitude":0.956396047723471,"fAngle":99.78179212336181},{"fMagnitude":0.9925899995947871,"fAngle":99.67309198699113},{"fMagnitude":0.9956785096611056,"fAngle":93.08931863127339},{"fMagnitude":0.9486597587571501,"fAngle":82.41135903001369},{"fMagnitude":0.9212954105265906,"fAngle":72.3316848525954},{"fMagnitude":0.9549911277967323,"fAngle":71.92966913872697},{"fMagnitude":0.9905288216796938,"fAngle":70.96567909370482},{"fMagnitude":1,"fAngle":68.74056861112706},{"fMagnitude":0.9702117466673833,"fAngle":75.4299640118399},{"fMagnitude":0.9592992578492341,"fAngle":84.65630374530802},{"fMagnitude":0.9823178056182292,"fAngle":89.13088232267863},{"fMagnitude":0.9890978431007212,"fAngle":87.65942771241356},{"fMagnitude":0.9766990498057082,"fAngle":92.40707476467877},{"fMagnitude":0.9412840943364779,"fAngle":101.47301628972434},{"fMagnitude":0.9650986893500025,"fAngle":106.95114781352146},{"fMagnitude":0.968550669763189,"fAngle":101.98601462275546},{"fMagnitude":0.9691222486764549,"fAngle":97.02217629129697},{"fMagnitude":0.9758725547504183,"fAngle":96.00284271164142},{"fMagnitude":0.9826228608243818,"fAngle":94.98350913198587},{"fMagnitude":0,"fAngle":0},{"fMagnitude":0.03650668816358304,"fAngle":126.91055708230543},{"fMagnitude":0.09710341660506895,"fAngle":103.57880645754044},{"fMagnitude":0.20013263941494459,"fAngle":90.1027131972373},{"fMagnitude":0.33060901403291179,"fAngle":84.02930204402732},{"fMagnitude":0.4707168060443959,"fAngle":89.16427506722639},{"fMagnitude":0.6223604110250919,"fAngle":93.09452324251758},{"fMagnitude":0.7276192992894177,"fAngle":97.97239601394388},{"fMagnitude":0.808123360769141,"fAngle":99.57939008712471},{"fMagnitude":0.8811659708191565,"fAngle":103.01014026127658},{"fMagnitude":0.9228953436265133,"fAngle":97.52170730239158},{"fMagnitude":0.950834691341192,"fAngle":95.80215041837198},{"fMagnitude":0.956396047723471,"fAngle":99.78179212336181},{"fMagnitude":0.9925899995947871,"fAngle":99.67309198699113},{"fMagnitude":0.9956785096611056,"fAngle":93.08931863127339},{"fMagnitude":0.9486597587571501,"fAngle":82.41135903001369},{"fMagnitude":0.9212954105265906,"fAngle":72.3316848525954},{"fMagnitude":0.9549911277967323,"fAngle":71.92966913872697},{"fMagnitude":0.9905288216796938,"fAngle":70.96567909370482},{"fMagnitude":1,"fAngle":68.74056861112706},{"fMagnitude":0.9702117466673833,"fAngle":75.4299640118399},{"fMagnitude":0.9592992578492341,"fAngle":84.65630374530802},{"fMagnitude":0.9823178056182292,"fAngle":89.13088232267863},{"fMagnitude":0.9890978431007212,"fAngle":87.65942771241356},{"fMagnitude":0.9766990498057082,"fAngle":92.40707476467877},{"fMagnitude":0.9412840943364779,"fAngle":101.47301628972434},{"fMagnitude":0.9650986893500025,"fAngle":106.95114781352146},{"fMagnitude":0.968550669763189,"fAngle":101.98601462275546},{"fMagnitude":0.9691222486764549,"fAngle":97.02217629129697},{"fMagnitude":0.9758725547504183,"fAngle":96.00284271164142},{"fMagnitude":0.9826228608243818,"fAngle":94.98350913198587},{"fMagnitude":0,"fAngle":0},{"fMagnitude":0.03650668816358304,"fAngle":126.91055708230543},{"fMagnitude":0.09710341660506895,"fAngle":103.57880645754044},{"fMagnitude":0.20013263941494459,"fAngle":90.1027131972373},{"fMagnitude":0.33060901403291179,"fAngle":84.02930204402732},{"fMagnitude":0.4707168060443959,"fAngle":89.16427506722639},{"fMagnitude":0.6223604110250919,"fAngle":93.09452324251758},{"fMagnitude":0.7276192992894177,"fAngle":97.97239601394388},{"fMagnitude":0.808123360769141,"fAngle":99.57939008712471},{"fMagnitude":0.8811659708191565,"fAngle":103.01014026127658},{"fMagnitude":0.9228953436265133,"fAngle":97.52170730239158},{"fMagnitude":0.950834691341192,"fAngle":95.80215041837198},{"fMagnitude":0.956396047723471,"fAngle":99.78179212336181},{"fMagnitude":0.9925899995947871,"fAngle":99.67309198699113},{"fMagnitude":0.9956785096611056,"fAngle":93.08931863127339},{"fMagnitude":0.9486597587571501,"fAngle":82.41135903001369},{"fMagnitude":0.9212954105265906,"fAngle":72.3316848525954},{"fMagnitude":0.9549911277967323,"fAngle":71.92966913872697},{"fMagnitude":0.9905288216796938,"fAngle":70.96567909370482},{"fMagnitude":1,"fAngle":68.74056861112706},{"fMagnitude":0.9702117466673833,"fAngle":75.4299640118399},{"fMagnitude":0.9592992578492341,"fAngle":84.65630374530802},{"fMagnitude":0.9823178056182292,"fAngle":89.13088232267863},{"fMagnitude":0.9890978431007212,"fAngle":87.65942771241356},{"fMagnitude":0.9766990498057082,"fAngle":92.40707476467877},{"fMagnitude":0.9412840943364779,"fAngle":101.47301628972434},{"fMagnitude":0.9650986893500025,"fAngle":106.95114781352146},{"fMagnitude":0.968550669763189,"fAngle":101.98601462275546},{"fMagnitude":0.9691222486764549,"fAngle":97.02217629129697},{"fMagnitude":0.9758725547504183,"fAngle":96.00284271164142},{"fMagnitude":0.9826228608243818,"fAngle":94.98350913198587},{"fMagnitude":0,"fAngle":0},{"fMagnitude":0.03650668816358304,"fAngle":126.91055708230543},{"fMagnitude":0.09710341660506895,"fAngle":103.57880645754044},{"fMagnitude":0.20013263941494459,"fAngle":90.1027131972373},{"fMagnitude":0.33060901403291179,"fAngle":84.02930204402732},{"fMagnitude":0.4707168060443959,"fAngle":89.16427506722639},{"fMagnitude":0.6223604110250919,"fAngle":93.09452324251758},{"fMagnitude":0.7276192992894177,"fAngle":97.97239601394388},{"fMagnitude":0.808123360769141,"fAngle":99.57939008712471},{"fMagnitude":0.8811659708191565,"fAngle":103.01014026127658},{"fMagnitude":0.9228953436265133,"fAngle":97.52170730239158},{"fMagnitude":0.950834691341192,"fAngle":95.80215041837198},{"fMagnitude":0.956396047723471,"fAngle":99.78179212336181},{"fMagnitude":0.9925899995947871,"fAngle":99.67309198699113},{"fMagnitude":0.9956785096611056,"fAngle":93.08931863127339},{"fMagnitude":0.9486597587571501,"fAngle":82.41135903001369},{"fMagnitude":0.9212954105265906,"fAngle":72.3316848525954},{"fMagnitude":0.9549911277967323,"fAngle":71.92966913872697},{"fMagnitude":0.9905288216796938,"fAngle":70.96567909370482},{"fMagnitude":1,"fAngle":68.74056861112706},{"fMagnitude":0.9702117466673833,"fAngle":75.4299640118399},{"fMagnitude":0.9592992578492341,"fAngle":84.65630374530802},{"fMagnitude":0.9823178056182292,"fAngle":89.13088232267863},{"fMagnitude":0.9890978431007212,"fAngle":87.65942771241356},{"fMagnitude":0.9766990498057082,"fAngle":92.40707476467877},{"fMagnitude":0.9412840943364779,"fAngle":101.47301628972434},{"fMagnitude":0.9650986893500025,"fAngle":106.95114781352146},{"fMagnitude":0.968550669763189,"fAngle":101.98601462275546},{"fMagnitude":0.9691222486764549,"fAngle":97.02217629129697},{"fMagnitude":0.9758725547504183,"fAngle":96.00284271164142},{"fMagnitude":0.9826228608243818,"fAngle":94.98350913198587},{"fMagnitude":0,"fAngle":0},{"fMagnitude":0.03650668816358304,"fAngle":126.91055708230543},{"fMagnitude":0.09710341660506895,"fAngle":103.57880645754044},{"fMagnitude":0.20013263941494459,"fAngle":90.1027131972373},{"fMagnitude":0.33060901403291179,"fAngle":84.02930204402732},{"fMagnitude":0.4707168060443959,"fAngle":89.16427506722639},{"fMagnitude":0.6223604110250919,"fAngle":93.09452324251758},{"fMagnitude":0.7276192992894177,"fAngle":97.97239601394388},{"fMagnitude":0.808123360769141,"fAngle":99.57939008712471},{"fMagnitude":0.8811659708191565,"fAngle":103.01014026127658},{"fMagnitude":0.9228953436265133,"fAngle":97.52170730239158},{"fMagnitude":0.950834691341192,"fAngle":95.80215041837198},{"fMagnitude":0.956396047723471,"fAngle":99.78179212336181},{"fMagnitude":0.9925899995947871,"fAngle":99.67309198699113},{"fMagnitude":0.9956785096611056,"fAngle":93.08931863127339},{"fMagnitude":0.9486597587571501,"fAngle":82.41135903001369},{"fMagnitude":0.9212954105265906,"fAngle":72.3316848525954},{"fMagnitude":0.9549911277967323,"fAngle":71.92966913872697},{"fMagnitude":0.9905288216796938,"fAngle":70.96567909370482},{"fMagnitude":1,"fAngle":68.74056861112706},{"fMagnitude":0.9702117466673833,"fAngle":75.4299640118399},{"fMagnitude":0.9592992578492341,"fAngle":84.65630374530802},{"fMagnitude":0.9823178056182292,"fAngle":89.13088232267863},{"fMagnitude":0.9890978431007212,"fAngle":87.65942771241356},{"fMagnitude":0.9766990498057082,"fAngle":92.40707476467877},{"fMagnitude":0.9412840943364779,"fAngle":101.47301628972434},{"fMagnitude":0.9650986893500025,"fAngle":106.95114781352146},{"fMagnitude":0.968550669763189,"fAngle":101.98601462275546},{"fMagnitude":0.9691222486764549,"fAngle":97.02217629129697},{"fMagnitude":0.9758725547504183,"fAngle":96.00284271164142},{"fMagnitude":0.9826228608243818,"fAngle":94.98350913198587},{"fMagnitude":0,"fAngle":0},{"fMagnitude":0.03650668816358304,"fAngle":126.91055708230543},{"fMagnitude":0.09710341660506895,"fAngle":103.57880645754044},{"fMagnitude":0.20013263941494459,"fAngle":90.1027131972373},{"fMagnitude":0.33060901403291179,"fAngle":84.02930204402732},{"fMagnitude":0.4707168060443959,"fAngle":89.16427506722639},{"fMagnitude":0.6223604110250919,"fAngle":93.09452324251758},{"fMagnitude":0.7276192992894177,"fAngle":97.97239601394388},{"fMagnitude":0.808123360769141,"fAngle":99.57939008712471},{"fMagnitude":0.8811659708191565,"fAngle":103.01014026127658},{"fMagnitude":0.9228953436265133,"fAngle":97.52170730239158},{"fMagnitude":0.950834691341192,"fAngle":95.80215041837198},{"fMagnitude":0.956396047723471,"fAngle":99.78179212336181},{"fMagnitude":0.9925899995947871,"fAngle":99.67309198699113},{"fMagnitude":0.9956785096611056,"fAngle":93.08931863127339},{"fMagnitude":0.9486597587571501,"fAngle":82.41135903001369},{"fMagnitude":0.9212954105265906,"fAngle":72.3316848525954},{"fMagnitude":0.9549911277967323,"fAngle":71.92966913872697},{"fMagnitude":0.9905288216796938,"fAngle":70.96567909370482},{"fMagnitude":1,"fAngle":68.74056861112706},{"fMagnitude":0.9702117466673833,"fAngle":75.4299640118399},{"fMagnitude":0.9592992578492341,"fAngle":84.65630374530802},{"fMagnitude":0.9823178056182292,"fAngle":89.13088232267863},{"fMagnitude":0.9890978431007212,"fAngle":87.65942771241356},{"fMagnitude":0.9766990498057082,"fAngle":92.40707476467877},{"fMagnitude":0.9412840943364779,"fAngle":101.47301628972434},{"fMagnitude":0.9650986893500025,"fAngle":106.95114781352146},{"fMagnitude":0.968550669763189,"fAngle":101.98601462275546},{"fMagnitude":0.9691222486764549,"fAngle":97.02217629129697},{"fMagnitude":0.9758725547504183,"fAngle":96.00284271164142},{"fMagnitude":0.9826228608243818,"fAngle":94.98350913198587},{"fMagnitude":0,"fAngle":0},{"fMagnitude":0.03650668816358304,"fAngle":126.91055708230543},{"fMagnitude":0.09710341660506895,"fAngle":103.57880645754044},{"fMagnitude":0.20013263941494459,"fAngle":90.1027131972373},{"fMagnitude":0.33060901403291179,"fAngle":84.02930204402732},{"fMagnitude":0.4707168060443959,"fAngle":89.16427506722639},{"fMagnitude":0.6223604110250919,"fAngle":93.09452324251758},{"fMagnitude":0.7276192992894177,"fAngle":97.97239601394388},{"fMagnitude":0.808123360769141,"fAngle":99.57939008712471},{"fMagnitude":0.8811659708191565,"fAngle":103.01014026127658},{"fMagnitude":0.9228953436265133,"fAngle":97.52170730239158},{"fMagnitude":0.950834691341192,"fAngle":95.80215041837198},{"fMagnitude":0.956396047723471,"fAngle":99.78179212336181},{"fMagnitude":0.9925899995947871,"fAngle":99.67309198699113},{"fMagnitude":0.9956785096611056,"fAngle":93.08931863127339},{"fMagnitude":0.9486597587571501,"fAngle":82.41135903001369},{"fMagnitude":0.9212954105265906,"fAngle":72.3316848525954},{"fMagnitude":0.9549911277967323,"fAngle":71.92966913872697},{"fMagnitude":0.9905288216796938,"fAngle":70.96567909370482},{"fMagnitude":1,"fAngle":68.74056861112706},{"fMagnitude":0.9702117466673833,"fAngle":75.4299640118399},{"fMagnitude":0.9592992578492341,"fAngle":84.65630374530802},{"fMagnitude":0.9823178056182292,"fAngle":89.13088232267863},{"fMagnitude":0.9890978431007212,"fAngle":87.65942771241356},{"fMagnitude":0.9766990498057082,"fAngle":92.40707476467877},{"fMagnitude":0.9412840943364779,"fAngle":101.47301628972434},{"fMagnitude":0.9650986893500025,"fAngle":106.95114781352146},{"fMagnitude":0.968550669763189,"fAngle":101.98601462275546},{"fMagnitude":0.9691222486764549,"fAngle":97.02217629129697},{"fMagnitude":0.9758725547504183,"fAngle":96.00284271164142},{"fMagnitude":0.9826228608243818,"fAngle":94.98350913198587},{"fMagnitude":0,"fAngle":0},{"fMagnitude":0.03650668816358304,"fAngle":126.91055708230543},{"fMagnitude":0.09710341660506895,"fAngle":103.57880645754044},{"fMagnitude":0.20013263941494459,"fAngle":90.1027131972373},{"fMagnitude":0.33060901403291179,"fAngle":84.02930204402732},{"fMagnitude":0.4707168060443959,"fAngle":89.16427506722639},{"fMagnitude":0.6223604110250919,"fAngle":93.09452324251758},{"fMagnitude":0.7276192992894177,"fAngle":97.97239601394388},{"fMagnitude":0.808123360769141,"fAngle":99.57939008712471},{"fMagnitude":0.8811659708191565,"fAngle":103.01014026127658},{"fMagnitude":0.9228953436265133,"fAngle":97.52170730239158},{"fMagnitude":0.950834691341192,"fAngle":95.80215041837198},{"fMagnitude":0.956396047723471,"fAngle":99.78179212336181},{"fMagnitude":0.9925899995947871,"fAngle":99.67309198699113},{"fMagnitude":0.9956785096611056,"fAngle":93.08931863127339},{"fMagnitude":0.9486597587571501,"fAngle":82.41135903001369},{"fMagnitude":0.9212954105265906,"fAngle":72.3316848525954},{"fMagnitude":0.9549911277967323,"fAngle":71.92966913872697},{"fMagnitude":0.9905288216796938,"fAngle":70.96567909370482},{"fMagnitude":1,"fAngle":68.74056861112706},{"fMagnitude":0.9702117466673833,"fAngle":75.4299640118399},{"fMagnitude":0.9592992578492341,"fAngle":84.65630374530802},{"fMagnitude":0.9823178056182292,"fAngle":89.13088232267863},{"fMagnitude":0.9890978431007212,"fAngle":87.65942771241356},{"fMagnitude":0.9766990498057082,"fAngle":92.40707476467877},{"fMagnitude":0.9412840943364779,"fAngle":101.47301628972434},{"fMagnitude":0.9650986893500025,"fAngle":106.95114781352146},{"fMagnitude":0.968550669763189,"fAngle":101.98601462275546},{"fMagnitude":0.9691222486764549,"fAngle":97.02217629129697},{"fMagnitude":0.9758725547504183,"fAngle":96.00284271164142},{"fMagnitude":0.9826228608243818,"fAngle":94.98350913198587},{"fMagnitude":0,"fAngle":0},{"fMagnitude":0.03650668816358304,"fAngle":126.91055708230543},{"fMagnitude":0.09710341660506895,"fAngle":103.57880645754044},{"fMagnitude":0.20013263941494459,"fAngle":90.1027131972373},{"fMagnitude":0.33060901403291179,"fAngle":84.02930204402732},{"fMagnitude":0.4707168060443959,"fAngle":89.16427506722639},{"fMagnitude":0.6223604110250919,"fAngle":93.09452324251758},{"fMagnitude":0.7276192992894177,"fAngle":97.97239601394388},{"fMagnitude":0.808123360769141,"fAngle":99.57939008712471},{"fMagnitude":0.8811659708191565,"fAngle":103.01014026127658},{"fMagnitude":0.9228953436265133,"fAngle":97.52170730239158},{"fMagnitude":0.950834691341192,"fAngle":95.80215041837198},{"fMagnitude":0.956396047723471,"fAngle":99.78179212336181},{"fMagnitude":0.9925899995947871,"fAngle":99.67309198699113},{"fMagnitude":0.9956785096611056,"fAngle":93.08931863127339},{"fMagnitude":0.9486597587571501,"fAngle":82.41135903001369},{"fMagnitude":0.9212954105265906,"fAngle":72.3316848525954},{"fMagnitude":0.9549911277967323,"fAngle":71.92966913872697},{"fMagnitude":0.9905288216796938,"fAngle":70.96567909370482},{"fMagnitude":1,"fAngle":68.74056861112706},{"fMagnitude":0.9702117466673833,"fAngle":75.4299640118399},{"fMagnitude":0.9592992578492341,"fAngle":84.65630374530802},{"fMagnitude":0.9823178056182292,"fAngle":89.13088232267863},{"fMagnitude":0.9890978431007212,"fAngle":87.65942771241356},{"fMagnitude":0.9766990498057082,"fAngle":92.40707476467877},{"fMagnitude":0.9412840943364779,"fAngle":101.47301628972434},{"fMagnitude":0.9650986893500025,"fAngle":106.95114781352146},{"fMagnitude":0.968550669763189,"fAngle":101.98601462275546},{"fMagnitude":0.9691222486764549,"fAngle":97.02217629129697},{"fMagnitude":0.9758725547504183,"fAngle":96.00284271164142},{"fMagnitude":0.9826228608243818,"fAngle":94.98350913198587},{"fMagnitude":0,"fAngle":0},{"fMagnitude":0.03650668816358304,"fAngle":126.91055708230543},{"fMagnitude":0.09710341660506895,"fAngle":103.57880645754044},{"fMagnitude":0.20013263941494459,"fAngle":90.1027131972373},{"fMagnitude":0.33060901403291179,"fAngle":84.02930204402732},{"fMagnitude":0.4707168060443959,"fAngle":89.16427506722639},{"fMagnitude":0.6223604110250919,"fAngle":93.09452324251758},{"fMagnitude":0.7276192992894177,"fAngle":97.97239601394388},{"fMagnitude":0.808123360769141,"fAngle":99.57939008712471},{"fMagnitude":0.8811659708191565,"fAngle":103.01014026127658},{"fMagnitude":0.9228953436265133,"fAngle":97.52170730239158},{"fMagnitude":0.950834691341192,"fAngle":95.80215041837198},{"fMagnitude":0.956396047723471,"fAngle":99.78179212336181},{"fMagnitude":0.9925899995947871,"fAngle":99.67309198699113},{"fMagnitude":0.9956785096611056,"fAngle":93.08931863127339},{"fMagnitude":0.9486597587571501,"fAngle":82.41135903001369},{"fMagnitude":0.9212954105265906,"fAngle":72.3316848525954},{"fMagnitude":0.9549911277967323,"fAngle":71.92966913872697},{"fMagnitude":0.9905288216796938,"fAngle":70.96567909370482},{"fMagnitude":1,"fAngle":68.74056861112706},{"fMagnitude":0.9702117466673833,"fAngle":75.4299640118399},{"fMagnitude":0.9592992578492341,"fAngle":84.65630374530802},{"fMagnitude":0.9823178056182292,"fAngle":89.13088232267863},{"fMagnitude":0.9890978431007212,"fAngle":87.65942771241356},{"fMagnitude":0.9766990498057082,"fAngle":92.40707476467877},{"fMagnitude":0.9412840943364779,"fAngle":101.47301628972434},{"fMagnitude":0.9650986893500025,"fAngle":106.95114781352146},{"fMagnitude":0.968550669763189,"fAngle":101.98601462275546},{"fMagnitude":0.9691222486764549,"fAngle":97.02217629129697},{"fMagnitude":0.9758725547504183,"fAngle":96.00284271164142},{"fMagnitude":0.9826228608243818,"fAngle":94.98350913198587},{"fMagnitude":0,"fAngle":0},{"fMagnitude":0.03650668816358304,"fAngle":126.91055708230543},{"fMagnitude":0.09710341660506895,"fAngle":103.57880645754044},{"fMagnitude":0.20013263941494459,"fAngle":90.1027131972373},{"fMagnitude":0.33060901403291179,"fAngle":84.02930204402732},{"fMagnitude":0.4707168060443959,"fAngle":89.16427506722639},{"fMagnitude":0.6223604110250919,"fAngle":93.09452324251758},{"fMagnitude":0.7276192992894177,"fAngle":97.97239601394388},{"fMagnitude":0.808123360769141,"fAngle":99.57939008712471},{"fMagnitude":0.8811659708191565,"fAngle":103.01014026127658},{"fMagnitude":0.9228953436265133,"fAngle":97.52170730239158},{"fMagnitude":0.950834691341192,"fAngle":95.80215041837198},{"fMagnitude":0.956396047723471,"fAngle":99.78179212336181},{"fMagnitude":0.9925899995947871,"fAngle":99.67309198699113},{"fMagnitude":0.9956785096611056,"fAngle":93.08931863127339},{"fMagnitude":0.9486597587571501,"fAngle":82.41135903001369},{"fMagnitude":0.9212954105265906,"fAngle":72.3316848525954},{"fMagnitude":0.9549911277967323,"fAngle":71.92966913872697},{"fMagnitude":0.9905288216796938,"fAngle":70.96567909370482},{"fMagnitude":1,"fAngle":68.74056861112706},{"fMagnitude":0.9702117466673833,"fAngle":75.4299640118399},{"fMagnitude":0.9592992578492341,"fAngle":84.65630374530802},{"fMagnitude":0.9823178056182292,"fAngle":89.13088232267863},{"fMagnitude":0.9890978431007212,"fAngle":87.65942771241356},{"fMagnitude":0.9766990498057082,"fAngle":92.40707476467877},{"fMagnitude":0.9412840943364779,"fAngle":101.47301628972434},{"fMagnitude":0.9650986893500025,"fAngle":106.95114781352146},{"fMagnitude":0.968550669763189,"fAngle":101.98601462275546},{"fMagnitude":0.9691222486764549,"fAngle":97.02217629129697},{"fMagnitude":0.9758725547504183,"fAngle":96.00284271164142},{"fMagnitude":0.9826228608243818,"fAngle":94.98350913198587},{"fMagnitude":0,"fAngle":0},{"fMagnitude":0.03650668816358304,"fAngle":126.91055708230543},{"fMagnitude":0.09710341660506895,"fAngle":103.57880645754044},{"fMagnitude":0.20013263941494459,"fAngle":90.1027131972373},{"fMagnitude":0.33060901403291179,"fAngle":84.02930204402732},{"fMagnitude":0.4707168060443959,"fAngle":89.16427506722639},{"fMagnitude":0.6223604110250919,"fAngle":93.09452324251758},{"fMagnitude":0.7276192992894177,"fAngle":97.97239601394388},{"fMagnitude":0.808123360769141,"fAngle":99.57939008712471},{"fMagnitude":0.8811659708191565,"fAngle":103.01014026127658},{"fMagnitude":0.9228953436265133,"fAngle":97.52170730239158},{"fMagnitude":0.950834691341192,"fAngle":95.80215041837198},{"fMagnitude":0.956396047723471,"fAngle":99.78179212336181},{"fMagnitude":0.9925899995947871,"fAngle":99.67309198699113},{"fMagnitude":0.9956785096611056,"fAngle":93.08931863127339},{"fMagnitude":0.9486597587571501,"fAngle":82.41135903001369},{"fMagnitude":0.9212954105265906,"fAngle":72.3316848525954},{"fMagnitude":0.9549911277967323,"fAngle":71.92966913872697},{"fMagnitude":0.9905288216796938,"fAngle":70.96567909370482},{"fMagnitude":1,"fAngle":68.74056861112706},{"fMagnitude":0.9702117466673833,"fAngle":75.4299640118399},{"fMagnitude":0.9592992578492341,"fAngle":84.65630374530802},{"fMagnitude":0.9823178056182292,"fAngle":89.13088232267863},{"fMagnitude":0.9890978431007212,"fAngle":87.65942771241356},{"fMagnitude":0.9766990498057082,"fAngle":92.40707476467877},{"fMagnitude":0.9412840943364779,"fAngle":101.47301628972434},{"fMagnitude":0.9650986893500025,"fAngle":106.95114781352146},{"fMagnitude":0.968550669763189,"fAngle":101.98601462275546},{"fMagnitude":0.9691222486764549,"fAngle":97.02217629129697},{"fMagnitude":0.9758725547504183,"fAngle":96.00284271164142},{"fMagnitude":0.9826228608243818,"fAngle":94.98350913198587},{"fMagnitude":0,"fAngle":0},{"fMagnitude":0.03650668816358304,"fAngle":126.91055708230543},{"fMagnitude":0.09710341660506895,"fAngle":103.57880645754044},{"fMagnitude":0.20013263941494459,"fAngle":90.1027131972373},{"fMagnitude":0.33060901403291179,"fAngle":84.02930204402732},{"fMagnitude":0.4707168060443959,"fAngle":89.16427506722639},{"fMagnitude":0.6223604110250919,"fAngle":93.09452324251758},{"fMagnitude":0.7276192992894177,"fAngle":97.97239601394388},{"fMagnitude":0.808123360769141,"fAngle":99.57939008712471},{"fMagnitude":0.8811659708191565,"fAngle":103.01014026127658},{"fMagnitude":0.9228953436265133,"fAngle":97.52170730239158},{"fMagnitude":0.950834691341192,"fAngle":95.80215041837198},{"fMagnitude":0.956396047723471,"fAngle":99.78179212336181},{"fMagnitude":0.9925899995947871,"fAngle":99.67309198699113},{"fMagnitude":0.9956785096611056,"fAngle":93.08931863127339},{"fMagnitude":0.9486597587571501,"fAngle":82.41135903001369},{"fMagnitude":0.9212954105265906,"fAngle":72.3316848525954},{"fMagnitude":0.9549911277967323,"fAngle":71.92966913872697},{"fMagnitude":0.9905288216796938,"fAngle":70.96567909370482},{"fMagnitude":1,"fAngle":68.74056861112706},{"fMagnitude":0.9702117466673833,"fAngle":75.4299640118399},{"fMagnitude":0.9592992578492341,"fAngle":84.65630374530802},{"fMagnitude":0.9823178056182292,"fAngle":89.13088232267863},{"fMagnitude":0.9890978431007212,"fAngle":87.65942771241356},{"fMagnitude":0.9766990498057082,"fAngle":92.40707476467877},{"fMagnitude":0.9412840943364779,"fAngle":101.47301628972434},{"fMagnitude":0.9650986893500025,"fAngle":106.95114781352146},{"fMagnitude":0.968550669763189,"fAngle":101.98601462275546},{"fMagnitude":0.9691222486764549,"fAngle":97.02217629129697},{"fMagnitude":0.9758725547504183,"fAngle":96.00284271164142},{"fMagnitude":0.9826228608243818,"fAngle":94.98350913198587},{"fMagnitude":0,"fAngle":0},{"fMagnitude":0.03650668816358304,"fAngle":126.91055708230543},{"fMagnitude":0.09710341660506895,"fAngle":103.57880645754044},{"fMagnitude":0.20013263941494459,"fAngle":90.1027131972373},{"fMagnitude":0.33060901403291179,"fAngle":84.02930204402732},{"fMagnitude":0.4707168060443959,"fAngle":89.16427506722639},{"fMagnitude":0.6223604110250919,"fAngle":93.09452324251758},{"fMagnitude":0.7276192992894177,"fAngle":97.97239601394388},{"fMagnitude":0.808123360769141,"fAngle":99.57939008712471},{"fMagnitude":0.8811659708191565,"fAngle":103.01014026127658},{"fMagnitude":0.9228953436265133,"fAngle":97.52170730239158},{"fMagnitude":0.950834691341192,"fAngle":95.80215041837198},{"fMagnitude":0.956396047723471,"fAngle":99.78179212336181},{"fMagnitude":0.9925899995947871,"fAngle":99.67309198699113},{"fMagnitude":0.9956785096611056,"fAngle":93.08931863127339},{"fMagnitude":0.9486597587571501,"fAngle":82.41135903001369},{"fMagnitude":0.9212954105265906,"fAngle":72.3316848525954},{"fMagnitude":0.9549911277967323,"fAngle":71.92966913872697},{"fMagnitude":0.9905288216796938,"fAngle":70.96567909370482},{"fMagnitude":1,"fAngle":68.74056861112706},{"fMagnitude":0.9702117466673833,"fAngle":75.4299640118399},{"fMagnitude":0.9592992578492341,"fAngle":84.65630374530802},{"fMagnitude":0.9823178056182292,"fAngle":89.13088232267863},{"fMagnitude":0.9890978431007212,"fAngle":87.65942771241356},{"fMagnitude":0.9766990498057082,"fAngle":92.40707476467877},{"fMagnitude":0.9412840943364779,"fAngle":101.47301628972434},{"fMagnitude":0.9650986893500025,"fAngle":106.95114781352146},{"fMagnitude":0.968550669763189,"fAngle":101.98601462275546},{"fMagnitude":0.9691222486764549,"fAngle":97.02217629129697},{"fMagnitude":0.9758725547504183,"fAngle":96.00284271164142},{"fMagnitude":0.9826228608243818,"fAngle":94.98350913198587},{"fMagnitude":0,"fAngle":0},{"fMagnitude":0.03650668816358304,"fAngle":126.91055708230543},{"fMagnitude":0.09710341660506895,"fAngle":103.57880645754044},{"fMagnitude":0.20013263941494459,"fAngle":90.1027131972373},{"fMagnitude":0.33060901403291179,"fAngle":84.02930204402732},{"fMagnitude":0.4707168060443959,"fAngle":89.16427506722639},{"fMagnitude":0.6223604110250919,"fAngle":93.09452324251758},{"fMagnitude":0.7276192992894177,"fAngle":97.97239601394388},{"fMagnitude":0.808123360769141,"fAngle":99.57939008712471},{"fMagnitude":0.8811659708191565,"fAngle":103.01014026127658},{"fMagnitude":0.9228953436265133,"fAngle":97.52170730239158},{"fMagnitude":0.950834691341192,"fAngle":95.80215041837198},{"fMagnitude":0.956396047723471,"fAngle":99.78179212336181},{"fMagnitude":0.9925899995947871,"fAngle":99.67309198699113},{"fMagnitude":0.9956785096611056,"fAngle":93.08931863127339},{"fMagnitude":0.9486597587571501,"fAngle":82.41135903001369},{"fMagnitude":0.9212954105265906,"fAngle":72.3316848525954},{"fMagnitude":0.9549911277967323,"fAngle":71.92966913872697},{"fMagnitude":0.9905288216796938,"fAngle":70.96567909370482},{"fMagnitude":1,"fAngle":68.74056861112706},{"fMagnitude":0.9702117466673833,"fAngle":75.4299640118399},{"fMagnitude":0.9592992578492341,"fAngle":84.65630374530802},{"fMagnitude":0.9823178056182292,"fAngle":89.13088232267863},{"fMagnitude":0.9890978431007212,"fAngle":87.65942771241356},{"fMagnitude":0.9766990498057082,"fAngle":92.40707476467877},{"fMagnitude":0.9412840943364779,"fAngle":101.47301628972434},{"fMagnitude":0.9650986893500025,"fAngle":106.95114781352146},{"fMagnitude":0.968550669763189,"fAngle":101.98601462275546},{"fMagnitude":0.9691222486764549,"fAngle":97.02217629129697},{"fMagnitude":0.9758725547504183,"fAngle":96.00284271164142},{"fMagnitude":0.9826228608243818,"fAngle":94.98350913198587}] ]]
                    if not v:FindFirstChild("Pattern") then
                        holder2.Name = "Pattern"
                        holder2.Parent = v
                    end
                end
            end
        end     
    end
end})
ModGroup:addToggle({text = "Rapid Fire",flag = "hooks_firerate",callback = function(val)
    if val == false then
        for Index, Weapon in pairs(game:GetService("ReplicatedStorage"):WaitForChild("Weapons"):GetChildren()) do
            for Index, Value in pairs(OldFireRate:GetChildren()) do
                if Weapon.Parent:FindFirstChild(Value.Name) then
                    if Weapon:FindFirstChild("FireRate") then
                        if Value.Name == Weapon.Name then
                            Weapon:FindFirstChild("FireRate"):Destroy()
                            local l = Value:Clone()
                            l.Name = "FireRate"
                            l.Parent = Weapon
                        end
                    end
                end
            end
        end
    elseif val == true then
        for _, v in pairs(game:GetService("ReplicatedStorage"):WaitForChild("Weapons"):GetChildren()) do
            local holder;
            for _, h in pairs(OldFireRate:GetChildren()) do if h.name == v.Name then holder = h:Clone() end end
            if v:FindFirstChild("FireRate") and holder ~= nil then
                if hasProperty(holder, "Value") and library.flags.mod_bang_percent ~= 10000 then
                    v:FindFirstChild("FireRate"):Destroy()
                    holder.Value = 0.0375
                    if not v:FindFirstChild("FireRate") then
                        holder.Name = "FireRate"
                        holder.Parent = v
                    end
                end
            end
        end     
    end
end})
--[[ModGroup:addToggle({text = "auto shoot",flag = "auto_shoot"})
ModGroup:addToggle({text = "auto wall",flag = "auto_wall"})]]


-- Ahhhhhh my Brain
-- Mo Way im doing this shit

rifleGroup:addToggle({text = "Silent Aim",flag = "rifle_silent"})
rifleGroup:addToggle({text = "TriggerBot",flag = "rifle_triggerbot"})
rifleGroup:addSlider({text = "Silent Aim FOV",flag = "rifle_silent_fov",min = 5,max = 1000,value = 25})
rifleGroup:addSlider({text = "TriggerBot Delay",flag = "rifle_triggerbot_ms",min = 0,max = 1000,value = 50})
rifleGroup:addSlider({text = "Silent Aim Hit Chance",flag = "rifle_silent_hitchance",min = 1,max = 100,value = 100})
rifleGroup:addList({text = "Hitbox",flag = "rifle_hitboxes",multiselect = false,values = {"Head","Torso","Closest"}})

pistolGroup:addToggle({text = "Silent Aim",flag = "pistol_silent"})
pistolGroup:addToggle({text = "TriggerBot",flag = "pistol_triggerbot"})
pistolGroup:addSlider({text = "Silent Aim FOV",flag = "pistol_silent_fov",min = 5,max = 1000,value = 25})
pistolGroup:addSlider({text = "TriggerBot Delay",flag = "pistol_triggerbot_ms",min = 0,max = 1000,value = 50})
pistolGroup:addSlider({text = "Silent Aim Hit Chance",flag = "pistol_silent_hitchance",min = 1,max = 100,value = 100})
pistolGroup:addList({text = "Hitbox",flag = "pistol_hitboxes",multiselect = false,values = {"Head","Torso","Closest"}})
pistolGroup:addDivider()
pistolGroup:addToggle({text = "Auto Pistol",flag = "auto_pistol",callback = function(val)
    for i,v in next, replicatedStorage.Weapons:GetChildren() do
        if v:FindFirstChild("Secondary") and v.Name ~= "R8" and v.Name ~= "DesertEagle" then
            v.Auto.Value = val
        end
    end
end})

heavypGroup:addToggle({text = "Silent Aim",flag = "heavyp_silent"})
heavypGroup:addToggle({text = "TriggerBot",flag = "heavyp_triggerbot"})
heavypGroup:addSlider({text = "Silent Aim FOV",flag = "heavyp_silent_fov",min = 5,max = 1000,value = 25})
heavypGroup:addSlider({text = "TriggerBot Delay",flag = "heavyp_triggerbot_ms",min = 0,max = 1000,value = 50})
heavypGroup:addSlider({text = "Silent Aim Hit Chance",flag = "heavyp_silent_hitchance",min = 1,max = 100,value = 100})
heavypGroup:addList({text = "Hitbox",flag = "heavyp_hitboxes",multiselect = false,values = {"Head","Torso","Closest"}})
heavypGroup:addDivider()
heavypGroup:addToggle({text = "Auto Pistol",flag = "auto_pistol",callback = function(val)
    for i,v in next, replicatedStorage.Weapons:GetChildren() do
        if v:FindFirstChild("Secondary") and v.Name == "R8" or v.Name == "DesertEagle" then
            v.Auto.Value = val
        end
    end
end})

awpGroup:addToggle({text = "Silent Aim",flag = "awp_silent"})
awpGroup:addToggle({text = "TriggerBot",flag = "awp_triggerbot"})
awpGroup:addSlider({text = "Silent Aim FOV",flag = "awp_silent_fov",min = 5,max = 1000,value = 25})
awpGroup:addSlider({text = "TriggerBot Delay",flag = "scout_triggerbot_ms",min = 0,max = 1000,value = 50})
awpGroup:addSlider({text = "Silent Aim Hit Chance",flag = "awp_silent_hitchance",min = 1,max = 100,value = 100})
awpGroup:addList({text = "Hitbox",flag = "awp_hitboxes",multiselect = false,values = {"Head","Torso","Closest"}})

scoutGroup:addToggle({text = "Silent Aim",flag = "scout_silent"})
scoutGroup:addToggle({text = "TriggerBot",flag = "scout_triggerbot"})
scoutGroup:addSlider({text = "Silent Aim FOV",flag = "scout_silent_fov",min = 5,max = 1000,value = 25})
scoutGroup:addSlider({text = "TriggerBot Delay",flag = "scout_triggerbot_ms",min = 0,max = 1000,value = 50})
scoutGroup:addSlider({text = "Silent Aim Hit Chance",flag = "scout_silent_hitchance",min = 1,max = 100,value = 100})
scoutGroup:addList({text = "Hitbox",flag = "scout_hitboxes",multiselect = false,values = {"Head","Torso","Closest"}})

otherGroup:addToggle({text = "Silent Aim",flag = "other_silent"})
otherGroup:addToggle({text = "TriggerBot",flag = "other_triggerbot"})
otherGroup:addSlider({text = "Silent Aim FOV",flag = "other_silent_fov",min = 5,max = 1000,value = 25})
otherGroup:addSlider({text = "TriggerBot Delay",flag = "other_triggerbot_ms",min = 0,max = 1000,value = 50})
otherGroup:addSlider({text = "Silent Aim Hit Chance",flag = "other_silent_hitchance",min = 1,max = 100,value = 100})
otherGroup:addList({text = "Hitbox",flag = "other_hitboxes",multiselect = false,values = {"Head","Torso","Closest"}})

CombatGroup:addToggle({text = "Enabled",flag = "aimbot_enabled"})
CombatGroup:addToggle({text = "Only Visible",flag = "aimbot_visonly"})
CombatGroup:addToggle({text = "Teammates",flag = "aimbot_team"})
CombatGroup:addKeybind({text = "TriggerBot Key",flag = "trigger_keybind",key = Enum.KeyCode.LeftShift}) 
CombatGroup:addList({text = "Weapon",skipflag = true,flag = "aimbot_weapon",values = {"Rifle","Pistol","Heavy Pistol","Awp","Scout","Other"},callback = function(val)
    rifleFrame.Visible = val == "Rifle"
    pistolFrame.Visible = val == "Pistol"
    heavypFrame.Visible = val == "Heavy Pistol"
    awpFrame.Visible = val == "Awp"
    scoutFrame.Visible = val == "Scout"
    otherFrame.Visible = val == "Other"
end})
FovGroup:addToggle({text = "Silent Aim Fov",flag = "fov_circle",callback = function(val)
    if val then
        fovcircle.Transparency = 1
    elseif not val then
        fovcircle.Transparency = 0
    end
end})
FovGroup:addColorpicker({text = "Silent Aim Fov Color",flag = "fov_circle_color",ontop = true,color = Color3.fromRGB(255, 255, 255),callback = function(val)
    fovcircle.Color = val
end})

local ItemsGroup,ItemsFrame = WorldTab:createGroup(1)
local AmbientGroup,AmbientFrame = WorldTab:createGroup(2)
local GrenadesGroup,GrenadesFrame = WorldTab:createGroup(0)
local BulletTracerGroup,BulletTracerFrame = WorldTab:createGroup(1)

AmbientGroup:addColorpicker({text = "Ambient",flag = "ambient",ontop = true,color = AmbientBool,callback = function(val)
    AmbientBool = val
end})
AmbientGroup:addColorpicker({text = "Ambient Top",flag = "ambient_top",ontop = true,color = AmbientTBool,callback = function(val)
    AmbientTBool = val
end})
AmbientGroup:addColorpicker({text = "Ambient Bottom",flag = "ambient_bottom",ontop = true,color = AmbientBBool,callback = function(val)
    AmbientBBool = val
end})
AmbientGroup:addColorpicker({text = "Ambient Outdoor",flag = "ambient_outdoor",ontop = true,color = AmbientOd,callback = function(val)
    AmbientOd = val
end})
AmbientGroup:addSlider({text = "Time",flag = "time",min = 0,max = 24,value = AmbientClock,callback = function(val)
    AmbientClock = val
end})
AmbientGroup:addDivider()
AmbientGroup:addToggle({text = "Skybox Changer",flag = "skybox_changer"})
AmbientGroup:addList({text = "Skybox",flag = "selected_skybox",callback = updateSkybox,values = {"Purple Nebula","Night Sky","Pink Daylight","Morning Glow","Setting Sun","Elegant Morning","Elegant Morning","Neptune","Redshift","Aesthetic Night"}})

ItemsGroup:addToggle({text = "Bomb Esp",flag = "esp_bomb_enabled"})
ItemsGroup:addToggle({text = "Bomb Timer",flag = "esp_bomb_timer", callback = function(val)
    if library.flags.esp_bomb_enabled then library.flags.esp_bomb_enabled = false;wait(0.1);library.flags.esp_bomb_enabled = true end 
end})
ItemsGroup:addColorpicker({text = "Text Color",flag = "esp_bomb_color",ontop = true,color = Color3.fromRGB(255, 255, 255), callback = function(val)
    if library.flags.esp_bomb_enabled then library.flags.esp_bomb_enabled = false;wait(0.1);library.flags.esp_bomb_enabled = true end 
end})
ItemsGroup:addToggle({text = "Text Outline",flag = "esp_bomb_outline", callback = function(val)
    if library.flags.esp_bomb_enabled then library.flags.esp_bomb_enabled = false;wait(0.1);library.flags.esp_bomb_enabled = true end 
end})
ItemsGroup:addColorpicker({text = "Text Outline Color",flag = "esp_bomb_outline_color",ontop = true,color = Color3.fromRGB(255, 255, 255), callback = function(val)
    if library.flags.esp_bomb_enabled then library.flags.esp_bomb_enabled = false;wait(0.1);library.flags.esp_bomb_enabled = true end 
end})

BulletTracerGroup:addToggle({text = "Bullet Tracer",flag = "bullet_tracer", callback = function(val)
    if val == false then
        for Index, Weapon in pairs(game:GetService("ReplicatedStorage"):WaitForChild("Weapons"):GetChildren()) do
            for Index, Value in pairs(OldBulletPerTrail:GetChildren()) do
                if Weapon.Parent:FindFirstChild(Value.Name) then
                    if Weapon:FindFirstChild("Penetration") then
                        if Value.Name == Weapon.Name then
                            Weapon:FindFirstChild("BulletPerTrail"):Destroy()
                            local l = Value:Clone()
                            l.Name = "BulletPerTrail"
                            l.Parent = Weapon
                        end
                    end
                end
            end
        end
        if game:GetService("ReplicatedStorage").VisualizeModule:FindFirstChild("Trail") then
            game:GetService("ReplicatedStorage").VisualizeModule:FindFirstChild("Trail"):Destroy()
        end
        local Renew = OldTracer:Clone()
        Renew.Name = "Trail"
        Renew.Parent = game:GetService("ReplicatedStorage").VisualizeModule
    elseif val == true then
        for Index, Weapon in pairs(game:GetService("ReplicatedStorage"):WaitForChild("Weapons"):GetChildren()) do
            for Index, Value in pairs(OldBulletPerTrail:GetChildren()) do
                if Weapon.Parent:FindFirstChild(Value.Name) then
                    if Weapon:FindFirstChild("Penetration") then
                        if Value.Name == Weapon.Name then
                            Weapon:FindFirstChild("BulletPerTrail"):Destroy()
                            local l = Value:Clone()
                            l.Name = "BulletPerTrail"
                            l.Value = 1
                            l.Parent = Weapon
                        end
                    end
                end
            end
        end
    end
end})
BulletTracerGroup:addColorpicker({text = "Color",flag = "bullet_tracer_color",ontop = true,color = Color3.fromRGB(255, 255, 255)})
BulletTracerGroup:addSlider({text = "Life Time",flag = "bullet_tracer_time",min = 1,max = 10,value = 5})
BulletTracerGroup:addSlider({text = "Transparency",flag = "bullet_tracer_transparency",min = 0,max = 10,value = 0})
BulletTracerGroup:addSlider({text = "Width",flag = "bullet_tracer_width",min = 1,max = 10,value = 1})

GrenadesGroup:addToggle({text = "Remove Molly effects",flag = "world_molly_eff"})
GrenadesGroup:addToggle({text = "Remove Smoke effects",flag = "world_smoke_eff"})
GrenadesGroup:addDivider()
GrenadesGroup:addToggle({text = "Visualize Molly Radius",flag = "world_molly"})
GrenadesGroup:addColorpicker({text = "Color",flag = "world_molly_color",ontop = true,color = Color3.fromRGB(255, 255, 255)})
GrenadesGroup:addSlider({text = "Transparency",flag = "world_molly_Transparency",min = 0,max = 10,value = 0})
GrenadesGroup:addList({text = "Material",flag = "world_molly_material",values = {"SmoothPlastic","ForceField","Neon"}})
GrenadesGroup:addDivider()
GrenadesGroup:addToggle({text = "Visualize Smoke Radius",flag = "world_smoke"})
GrenadesGroup:addColorpicker({text = "Color",flag = "world_smoke_color",ontop = true,color = Color3.fromRGB(255, 255, 255)})
GrenadesGroup:addSlider({text = "Transparency",flag = "world_smoke_Transparency",min = 0,max = 10,value = 0})
GrenadesGroup:addList({text = "Material",flag = "world_smoke_material",values = {"SmoothPlastic","ForceField","Neon"}})

local EspToggleGroup,EspToggleFrame = visualsTab:createGroup(0)
local ChamsGroup,ChamsFrame = visualsTab:createGroup(1)
local EspGroup,EspFrame = visualsTab:createGroup(0)

local ChamsColorGroup,ChamsColorFreame = visualsTab:createGroup(2)
local EspColorGroup,EspColorFrame = visualsTab:createGroup(2)

EspToggleGroup:addToggle({text = "Esp Enabled",flag = "esp_enabled",callback = function(val)
    for i,v in next, espObjects do v.invis() end
end})
EspToggleGroup:addToggle({text = "Esp Teammates",flag = "esp_teamates"})
EspGroup:addToggle({text = "Box Esp",flag = "esp_box"})
EspGroup:addToggle({text = "Outline",flag = "esp_box_outline"})
EspGroup:addDivider()
EspGroup:addToggle({text = "Health Bar",flag = "esp_health_bar"})
EspGroup:addToggle({text = "Outline",flag = "esp_health_bar_outline"})
EspGroup:addDivider()
EspGroup:addToggle({text = "Tracer Esp",flag = "esp_tracer"})
EspGroup:addToggle({text = "Outline",flag = "esp_tracer_outline"})
EspGroup:addDivider()
EspGroup:addToggle({text = "Name Esp",flag = "esp_name"})
EspGroup:addToggle({text = "Outline",flag = "esp_name_outline"})
EspGroup:addDivider()
EspGroup:addToggle({text = "Distance Esp",flag = "esp_distance"})
EspGroup:addToggle({text = "Outline",flag = "esp_distance_outline"})
ChamsGroup:addToggle({text = "Player Chams",flag = "esp_chams"})
ChamsGroup:addSlider({text = "Transparency",flag = "esp_chams_transparency",min = 0,max = 10,value = 0,callback = function(val)
    if library.flags.esp_chams then
        library.flags.esp_chams = false
        wait(0.1)
        library.flags.esp_chams = true
    end
end})
ChamsGroup:addDivider()
ChamsGroup:addToggle({text = "Player Visible Chams",flag = "esp_glow"})
ChamsGroup:addSlider({text = "Transparency",flag = "esp_glow_transparency",min = 0,max = 10,value = 0,callback = function(val)
    if library.flags.esp_glow then
        library.flags.esp_glow = false
        wait(0.1)
        library.flags.esp_glow = true
    end
end})
ChamsGroup:addDivider()
ChamsGroup:addToggle({text = "Player Highlight",flag = "esp_highlight"})
ChamsGroup:addSlider({text = "Transparency",flag = "esp_highlight_transparency",min = 0,max = 10,value = 0,callback = function(val)
    if library.flags.esp_highlight then
        library.flags.esp_highlight = false
        wait(0.1)
        library.flags.esp_highlight = true
    end
end})
ChamsGroup:addSlider({text = "Outline Transparency",flag = "esp_highlight_outline_transparency",min = 0,max = 10,value = 0,callback = function(val)
    if library.flags.esp_highlight then
        library.flags.esp_highlight = false
        wait(0.1)
        library.flags.esp_highlight = true
    end
end})
ChamsGroup:addToggle({text = "Player Visible Highlight",flag = "esp_visible_highlight",callback = function(val)
    if library.flags.esp_highlight then
        library.flags.esp_highlight = false
        wait(0.1)
        library.flags.esp_highlight = true
    end
end})
ChamsGroup:addSlider({text = "Transparency",flag = "esp_visible_highlight_transparency",min = 0,max = 10,value = 0,callback = function(val)
    if library.flags.esp_highlight then
        library.flags.esp_highlight = false
        wait(0.1)
        library.flags.esp_highlight = true
    end
end})
ChamsGroup:addSlider({text = "Outline Transparency",flag = "esp_visible_highlight_outline_transparency",min = 0,max = 10,value = 0,callback = function(val)
    if library.flags.esp_highlight then
        library.flags.esp_highlight = false
        wait(0.1)
        library.flags.esp_highlight = true
    end
end})

EspColorGroup:addColorpicker({text = "Box Color",flag = "esp_box_color",ontop = true,color = Color3.fromRGB(255, 255, 255)})
EspColorGroup:addColorpicker({text = "Box Outline Color",flag = "esp_box_color_outline",ontop = true,color = Color3.fromRGB(255, 255, 255)})
EspColorGroup:addDivider()
EspColorGroup:addColorpicker({text = "Health Bar Outline Color",flag = "esp_health_bar_outline_color",ontop = true,color = Color3.fromRGB(255, 255, 255)})
EspColorGroup:addColorpicker({text = "Health High Color",flag = "esp_health_bar_high_color",ontop = true,color = Color3.fromRGB(0,255,0)})
EspColorGroup:addColorpicker({text = "Health Low Color",flag = "esp_health_bar_low_color",ontop = true,color = Color3.fromRGB(255,0,0)})
EspColorGroup:addDivider()
EspColorGroup:addColorpicker({text = "Tracer Color",flag = "esp_tracer_color",ontop = true,color = Color3.fromRGB(255, 255, 255)})
EspColorGroup:addColorpicker({text = "Tracer Outline Color",flag = "esp_tracer_color_outline",ontop = true,color = Color3.fromRGB(255, 255, 255)})
EspColorGroup:addDivider()
EspColorGroup:addColorpicker({text = "Name Color",flag = "esp_name_color",ontop = true,color = Color3.fromRGB(255, 255, 255)})
EspColorGroup:addColorpicker({text = "Name Outline Color",flag = "esp_name_color_outline",ontop = true,color = Color3.fromRGB(255, 255, 255)})
EspColorGroup:addDivider()
EspColorGroup:addColorpicker({text = "Distance Color",flag = "esp_distance_color",ontop = true,color = Color3.fromRGB(255, 255, 255)})
EspColorGroup:addColorpicker({text = "Distance Outline Color",flag = "esp_distance_color_outline",ontop = true,color = Color3.fromRGB(255, 255, 255)})

ChamsColorGroup:addColorpicker({text = "Chams Color",flag = "esp_chams_color",ontop = true,color = Color3.fromRGB(255, 255, 255),callback = function(val)
    if library.flags.esp_chams then
        library.flags.esp_chams = false
        wait(0.1)
        library.flags.esp_chams = true
    end
end})
ChamsColorGroup:addColorpicker({text = "Visible Chams Color",flag = "esp_glow_color",ontop = true,color = Color3.fromRGB(255, 255, 255),callback = function(val)
    if library.flags.esp_glow then
        library.flags.esp_glow = false
        wait(0.1)
        library.flags.esp_glow = true
    end
end})
ChamsColorGroup:addDivider()
ChamsColorGroup:addColorpicker({text = "Highlight Color",flag = "esp_highlight_color",ontop = true,color = Color3.fromRGB(255, 255, 255),callback = function(val)
    if library.flags.esp_highlight then
        library.flags.esp_highlight = false
        wait(0.1)
        library.flags.esp_highlight = true
    end
end})
ChamsColorGroup:addColorpicker({text = "Outline Color",flag = "esp_highlight_outline_color",ontop = true,color = Color3.fromRGB(255, 255, 255),callback = function(val)
    if library.flags.esp_highlight then
        library.flags.esp_highlight = false
        wait(0.1)
        library.flags.esp_highlight = true
    end
end})
ChamsColorGroup:addColorpicker({text = "Visible Highlight Color",flag = "esp_visible_highlight_color",ontop = true,color = Color3.fromRGB(255, 255, 255),callback = function(val)
    if library.flags.esp_highlight then
        library.flags.esp_highlight = false
        wait(0.1)
        library.flags.esp_highlight = true
    end
end})
ChamsColorGroup:addColorpicker({text = "Outline Color",flag = "esp_visible_highlight_outline_color",ontop = true,color = Color3.fromRGB(255, 255, 255),callback = function(val)
    if library.flags.esp_highlight then
        library.flags.esp_highlight = false
        wait(0.1)
        library.flags.esp_highlight = true
    end
end})

local AntiAimGroup = RageTab:createGroup(0)
local PlayerGroup = RageTab:createGroup(1)
local HookGroup = RageTab:createGroup(2)

AntiAimGroup:addToggle({text = "Anti Aim",flag = "antiaim"})
AntiAimGroup:addToggle({text = "Roll",flag = "antiaim_roll"})
AntiAimGroup:addList({text = "Pitch",flag = "antiaim_pitch",values = {"Up","Down","Random","None"}})
AntiAimGroup:addList({text = "Yaw",flag = "antiaim_yaw",values = {"Backwards","Jitter","Spinbot","None"}})

PlayerGroup:addToggle({text = "Fake Duck",flag = "fake_duck",callback = function(val)
    FakeDuck = val
end})
PlayerGroup:addKeybind({text = "Key",flag = "fake_duck_key",key = Enum.KeyCode.E,callback = function(val)
    if library.flags.fake_duck then
        FakeDuck = not FakeDuck
    end
end}) 
PlayerGroup:addDivider()

PlayerGroup:addToggle({text = "Air Stuck",flag = "airstuck",callback = function(val)
    if getfenv().isAlive() then
        localPlayer.Character.HumanoidRootPart.Anchored = false
    end
end})
PlayerGroup:addToggle({text = "Return Position",flag = "airstuck_pos",callback = function(val)
    if val then
        L_1_.Transparency = 0.65
    else
        L_1_.Position = Vector3.new(0,0,0)
        L_2_ = nil
    end
end})
PlayerGroup:addKeybind({text = "Key",flag = "airstuck_key",key = Enum.KeyCode.CapsLock,callback = function(val)
    LPH_NO_VIRTUALIZE(function()
        if library.flags.airstuck and isAlive() then
            Airstuck = not Airstuck
            localPlayer.Character.HumanoidRootPart.Anchored = Airstuck;
            localPlayer.Character.UpperTorso.Velocity = Airstuck and localPlayer.Character.UpperTorso.Velocity or Vector3.new()
            localPlayer.Character.HumanoidRootPart.Velocity = Airstuck and localPlayer.Character.HumanoidRootPart.Velocity or Vector3.new()
        end
        if library.flags.airstuck_pos then
            L_1_.Color = library.flags.menu_accent
            if Airstuck then
                L_1_.Position = localPlayer.Character.Head.Position
                L_2_ = L_1_.Position
            end
            if not Airstuck and L_2_ ~= nil and L_1_.Position == L_2_ and L_1_.Position ~= Vector3.new(0,0,0) then
                local player = game:GetService("Players").LocalPlayer
                local HumanoidRootPart = player.Character.HumanoidRootPart
                local tweeninfo = TweenInfo.new(0, Enum.EasingStyle.Linear)
                function TP(v)
                    local cf = CFrame.new(v)
                    local T = TweenService:Create(HumanoidRootPart,tweeninfo,{CFrame=cf})
                    T:Play()
                end
                TP(L_1_.Position)
                L_1_.Position = Vector3.new(0,0,0)
                L_2_ = nil
            end 
        end
    end)()
end}) 

HookGroup:addToggle({text = "Fake Lag",flag = "fakelag_enable",callback = function(val)
    LPH_NO_VIRTUALIZE(function()
        NetworkClient:SetOutgoingKBPSLimit(0)
        while library.flags.fakelag_enable do
            wait(library.flags.fakelag_delay/1000)
            fakeLagDebounce = not fakeLagDebounce;
            NetworkClient:SetOutgoingKBPSLimit(fakeLagDebounce and 1 or 0)
            if not fakeLagDebounce and ThirdPerson and library.flags.fakelag_chams then
                getfenv().hitChams(localPlayer, library.flags.fakelag_chams_color, library.flags.fakelag_chams_Transparency/10 , library.flags.fakelag_delay/1000 * 2)
            end
        end;
        NetworkClient:SetOutgoingKBPSLimit(0)
    end)()
end})
HookGroup:addSlider({text = "Delay",flag = "fakelag_delay",min = 0,max = 1500,value = 100})
HookGroup:addDivider()
HookGroup:addToggle({text = "Infinite Cash",flag = "hooks_cash",callback = function(val)
    while library.flags.hooks_cash do wait(0.25)
        game:GetService("Players").LocalPlayer.Cash.Value = 156969
    end
    if not val then
        game:GetService("Players").LocalPlayer.Cash.Value = 2000
    end
end})

fovcircle.Transparency = 0

count = false
spawn(function()
    menu.Debug.Main.text.Text = "Loaded in "..time.." ms"
    wait(1.25)
    menu.Debug.Main.text.Text = "Sirex Ware"
end)