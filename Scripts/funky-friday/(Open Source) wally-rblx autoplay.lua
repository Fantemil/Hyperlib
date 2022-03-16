--[[
Change logs:

1/14/22
    * first update of the new year!
    * added a settings saving / loading system.
    * added some save manager code for this ui library, not all option types are supported or tested.

12/5/21
    * Fixed issues with noteTime calculation, causing some songs like Triple Trouble to break. Report bugs as always

11/9/21
    + Added support for new modes (9Key for example)

9/26/21 
    + Added 'Unload'
    * Fixed issues with accuracy.

9/25/21 (patch 1)
    * Added a few sanity checks
    * Fixed some errors
    * Should finally fix invisible notes (if it doesnt, i hate this game)

9/25/21
    * Code refactoring.
    * Fixed unsupported exploit check
    * Implemented safer URL loading routine.
    * Tweaked autoplayer (implemented hitbox offset, uses game code to calculate score and hit type now)

9/19/21
   * Miss actually ignores the note.

8/20/21
   ! This update was provided by Sezei (https://github.com/greasemonkey123/ff-bot-new)
       * I renamed some stuff and changed their default 'Autoplayer bind'

   + Added 'Miss chance'
   + Added 'Release delay' (note: higher values means a higher chance to miss)
   + Added 'Autoplayer bind'
   * Added new credits
   * Made folder names more clear

8/2/21
    ! KRNL has since been fixed, enjoy!

    + Added 'Manual' mode which allows you to force the notes to hit a specific type by holding down a keybind.
    * Switched fastWait and fastSpawn to Roblox's task libraries
    * Attempted to fix 'invalid key to next' errors

5/12/21
    * Attempted to fix the autoplayer missing as much.

5/16/21
    * Attempt to fix invisible notes.
    * Added hit chances & an autoplayer toggle
    ! Hit chances are a bit rough but should work.

Information:
    Officially supported: Synapse X, Script-Ware, KRNL, Fluxus
    Needed functions: setthreadcontext, getconnections, getgc, getloaodedmodules 

    You can find contact information on the GitHub repository (https://github.com/wally-rblx/funky-friday-autoplay)
--]]

local start = tick()
local client = game:GetService('Players').LocalPlayer;
local set_identity = (type(syn) == 'table' and syn.set_thread_identity) or setidentity or setthreadcontext

local function fail(r) return client:Kick(r) end

-- gracefully handle errors when loading external scripts
-- added a cache to make hot reloading a bit faster

local usedCache = shared.__urlcache and next(shared.__urlcache) ~= nil

shared.__urlcache = shared.__urlcache or {}
local function urlLoad(url)
    local success, result

    if shared.__urlcache[url] then
        success, result = true, shared.__urlcache[url]
    else
        success, result = pcall(game.HttpGet, game, url)
    end

    if (not success) then
        return fail(string.format('Failed to GET url %q for reason: %q', url, tostring(result)))
    end

    local fn, err = loadstring(result)
    if (type(fn) ~= 'function') then
        return fail(string.format('Failed to loadstring url %q for reason: %q', url, tostring(err)))
    end

    local results = { pcall(fn) }
    if (not results[1]) then
        return fail(string.format('Failed to initialize url %q for reason: %q', url, tostring(results[2])))
    end

    shared.__urlcache[url] = result
    return unpack(results, 2)
end

-- attempt to block imcompatible exploits
-- rewrote because old checks literally did not work
if type(set_identity) ~= 'function' then return fail('Unsupported exploit (missing "set_thread_identity")') end
if type(getconnections) ~= 'function' then return fail('Unsupported exploit (missing "getconnections")') end
if type(getloadedmodules) ~= 'function' then return fail('Unsupported exploit (misssing "getloadedmodules")') end
if type(getgc) ~= 'function' then return fail('Unsupported exploit (misssing "getgc")') end

local library = urlLoad("https://raw.githubusercontent.com/wally-rblx/uwuware-ui/main/main.lua")
local akali     = urlLoad("https://gist.githubusercontent.com/wally-rblx/e010db020afe8259048a0c3c7262cdf8/raw/76ae0921ac9bd3215017e635d2c1037a37262240/notif.lua")

local httpService = game:GetService('HttpService')

local framework, scrollHandler
local counter = 0

while true do
    for _, obj in next, getgc(true) do
        if type(obj) == 'table' and rawget(obj, 'GameUI') then
            framework = obj;
            break
        end 
    end

    for _, module in next, getloadedmodules() do
        if module.Name == 'ScrollHandler' then
            scrollHandler = module;
            break;
        end
    end

    if (type(framework) == 'table') and (typeof(scrollHandler) == 'Instance') then
        break
    end

    counter = counter + 1
    if counter > 6 then
        fail(string.format('Failed to load game dependencies. Details: %s, %s', type(framework), typeof(scrollHandler)))
    end
    wait(1)
end

local runService = game:GetService('RunService')
local userInputService = game:GetService('UserInputService')
local virtualInputManager = game:GetService('VirtualInputManager')

local random = Random.new()

local task = task or getrenv().task;
local fastWait, fastSpawn = task.wait, task.spawn;

-- firesignal implementation
-- hitchance rolling
local fireSignal, rollChance do
    -- updated for script-ware or whatever
    -- attempted to update for krnl

    function fireSignal(target, signal, ...)
        -- getconnections with InputBegan / InputEnded does not work without setting Synapse to the game's context level
        set_identity(2)
        local didFire = false
        for _, signal in next, getconnections(signal) do
            if type(signal.Function) == 'function' and islclosure(signal.Function) then
                local scr = rawget(getfenv(signal.Function), 'script')
                if scr == target then
                    didFire = true
                    pcall(signal.Function, ...)
                end
            end
        end
        -- if not didFire then fail"couldnt fire input signal" end
        set_identity(7)
    end

    -- uses a weighted random system
    -- its a bit scuffed rn but it works good enough

    function rollChance()
        if (library.flags.autoPlayerMode == 'Manual') then
            if (library.flags.sickHeld) then return 'Sick' end
            if (library.flags.goodHeld) then return 'Good' end
            if (library.flags.okayHeld) then return 'Ok' end
            if (library.flags.missHeld) then return 'Bad' end

            return 'Bad' -- incase if it cant find one
        end

        local chances = {
            { type = 'Sick', value = library.flags.sickChance },
            { type = 'Good', value = library.flags.goodChance },
            { type = 'Ok', value = library.flags.okChance },
            { type = 'Bad', value = library.flags.badChance },
            { type = 'Miss' , value = library.flags.missChance },
        }

        table.sort(chances, function(a, b)
            return a.value > b.value
        end)

        local sum = 0;
        for i = 1, #chances do
            sum += chances[i].value
        end

        if sum == 0 then
            -- forgot to change this before?
            -- fixed 6/5/21

            return chances[random:NextInteger(1, #chances)].type
        end

        local initialWeight = random:NextInteger(0, sum)
        local weight = 0;

        for i = 1, #chances do
            weight = weight + chances[i].value

            if weight > initialWeight then
                return chances[i].type
            end
        end

        return 'Sick' -- just incase it fails?
    end
end


local function notify(text, duration)
    return akali.Notify({
        Title = 'Funky friday autoplayer', 
        Description = text,
        Duration = duration or 1,
    })
end

library.notify = notify

-- save manager
local saveManager = {} do
    local defaultSettings = [[{"Funky Friday":{"goodChance":{"value":0,"type":"slider"},"badChance":{"value":0,"type":"slider"},"okChance":{"value":0,"type":"slider"},"autoPlayer":{"state":false,"type":"toggle"},"goodBind":{"key":"Two","type":"bind"},"sickChance":{"value":100,"type":"slider"},"okBind":{"key":"Three","type":"bind"},"sickBind":{"key":"One","type":"bind"},"Menu toggle":{"key":"Delete","type":"bind"},"secondaryPressMode":{"state":false,"type":"toggle"},"autoDelay":{"value":50,"type":"slider"},"autoPlayerToggle":{"key":"End","type":"bind"},"badBind":{"key":"Four","type":"bind"},"autoPlayerMode":{"value":"Chances","type":"list"},"missChance":{"value":0,"type":"slider"}}}]]
    local optionTypes = {
        toggle = {
            Save = function(option)
                return { type = 'toggle', state = option.state }
            end,
            Load = function(option, data)
                option:SetState(data.state)
            end
        },
        bind = {
            Save = function(option)
                return { type = 'bind', key = option.key }
            end,
            Load = function(option, data)
                option:SetKey(data.key)
            end
        },
        slider = {
            Save = function(option)
                return { type = 'slider', value = option.value }
            end,
            Load = function(option, data)
                option:SetValue(data.value)
            end,
        },
        color = {
            Save = function(option)
                return { type = 'color', color = option.color:ToHex() }
            end,
            Load = function(option, data)
                option:SetValue(Color3.fromHex(data.color))
            end
        },
        list = {
            Save = function(option)
                return { type = 'list', value = option.value }
            end,
            Load = function(option, data)
                option:SetValue(data.value)
            end
        },
    }

    local function recurseLibraryOptions(root, callback)
        for _, option in next, root do
            if option.type == 'folder' then
                recurseLibraryOptions(option.options, callback)
            else
                callback(option)
            end
        end
    end

    function saveManager:SaveConfig(name)
        local data = {}

        for _, window in next, library.windows do
            if window.title == 'Configs' then continue end

            local storage = {}
            data[window.title] = storage

            recurseLibraryOptions(window.options, function(option)
                local parser = optionTypes[option.type]
                if parser then
                    storage[option.flag] = parser.Save(option)
                end
            end)
        end

        local s, err = pcall(writefile, 'funky_friday_autoplayer\\configs\\' .. name, httpService:JSONEncode(data))
        if not s then
            library.notify(string.format('Failed to save config %q because %q', name, err), 2)
            if err == 'invalid extension' then
                library.notify('Try adding a file extension after your config name. ex: ".json", ".txt", ".dat"', 2)
            end
            return
        end

        library.refreshConfigs()
    end

    function saveManager:LoadConfig(name)
        local data
        if name == 'default' then
            data = defaultSettings
        else
            data = readfile('funky_friday_autoplayer\\configs\\' .. name)
        end

        local success, data = pcall(function() return httpService:JSONDecode(data) end)
        if not success then 
            return library.notify(string.format('Failed to load config %q because %q', name, data))
        end

        for _, window in next, library.windows do
            if window.title == 'Configs' then continue end

            local storage = data[window.title]
            if not storage then continue end

            recurseLibraryOptions(window.options, function(option)
                local parser = optionTypes[option.type]
                if parser then
                    parser.Load(option, storage[option.flag])
                end
            end)
        end
    end

end

-- autoplayer
local chanceValues do
    chanceValues = { 
        Sick = 96,
        Good = 92,
        Ok = 87,
        Bad = 75,
    }

    local keyCodeMap = {}
    for _, enum in next, Enum.KeyCode:GetEnumItems() do
        keyCodeMap[enum.Value] = enum
    end

    if shared._unload then
        pcall(shared._unload)
    end

    library.threads = {}
    function shared._unload()
        if shared._id then
            pcall(runService.UnbindFromRenderStep, runService, shared._id)
        end

        if library.open then
            library:Close()
        end

        library.base:ClearAllChildren()
        library.base:Destroy()

        for i = 1, #library.threads do
            coroutine.close(library.threads[i])
        end
    end

    shared._id = httpService:GenerateGUID(false)

    local rng = Random.new()
    runService:BindToRenderStep(shared._id, 1, function()
        if (not library.flags.autoPlayer) then return end
        if typeof(framework.SongPlayer.CurrentlyPlaying) ~= 'Instance' then return end
        if framework.SongPlayer.CurrentlyPlaying.ClassName ~= 'Sound' then return end

        local arrows = {}
        for _, obj in next, framework.UI.ActiveSections do
            arrows[#arrows + 1] = obj;
        end

        local count = framework.SongPlayer:GetKeyCount()
        local mode = count .. 'Key'

        local arrowData = framework.ArrowData[mode].Arrows

        for idx = 1, #arrows do
            local arrow = arrows[idx]
            if type(arrow) ~= 'table' then
                continue
            end

            local ignoredNoteTypes = { Death = true, ['Pea Note'] = true }

            if type(arrow.NoteDataConfigs) == 'table' then 
                if ignoredNoteTypes[arrow.NoteDataConfigs.Type] then 
                    continue
                end
            end

            if (arrow.Side == framework.UI.CurrentSide) and (not arrow.Marked) and framework.SongPlayer.CurrentlyPlaying.TimePosition > 0 then
                local position = (arrow.Data.Position % count) .. '' 

                local hitboxOffset = 0 do
                    local settings = framework.Settings;
                    local offset = type(settings) == 'table' and settings.HitboxOffset;
                    local value = type(offset) == 'table' and offset.Value;

                    if type(value) == 'number' then
                        hitboxOffset = value;
                    end

                    hitboxOffset = hitboxOffset / 1000
                end

                local songTime = framework.SongPlayer.CurrentTime do
                    local configs = framework.SongPlayer.CurrentSongConfigs
                    local playbackSpeed = type(configs) == 'table' and configs.PlaybackSpeed

                    if type(playbackSpeed) ~= 'number' then
                        playbackSpeed = 1
                    end

                    songTime = songTime /  playbackSpeed
                end

                local noteTime = math.clamp((1 - math.abs(arrow.Data.Time - (songTime + hitboxOffset))) * 100, 0, 100)

                local result = rollChance()
                arrow._hitChance = arrow._hitChance or result;

                local hitChance = (library.flags.autoPlayerMode == 'Manual' and result or arrow._hitChance)
                if hitChance ~= "Miss" and noteTime >= chanceValues[arrow._hitChance] then
                    fastSpawn(function()
                        arrow.Marked = true;
                        local keyCode = keyCodeMap[arrowData[position].Keybinds.Keyboard[1]]

                        if library.flags.secondaryPressMode then
                            virtualInputManager:SendKeyEvent(true, keyCode, false, nil)
                        else
                            fireSignal(scrollHandler, userInputService.InputBegan, { KeyCode = keyCode, UserInputType = Enum.UserInputType.Keyboard }, false)
                        end

                        if arrow.Data.Length > 0 then
                            if library.flags.delayMode == 'Random' then
                                fastWait(arrow.Data.Length + rng:NextNumber(library.flags.heldNoteDelayMin, library.flags.heldNoteDelayMax) / 1000)
                            else
                                fastWait(arrow.Data.Length + (library.flags.heldDelay / 1000))
                            end
                        else
                            if library.flags.delayMode == 'Random' then
                                fastWait(rng:NextNumber(library.flags.noteDelayMin, library.flags.noteDelayMax) / 1000)
                            else
                                fastWait(library.flags.autoDelay / 1000)
                            end
                        end

                        if library.flags.secondaryPressMode then
                            virtualInputManager:SendKeyEvent(false, keyCode, false, nil)
                        else
                            fireSignal(scrollHandler, userInputService.InputEnded, { KeyCode = keyCode, UserInputType = Enum.UserInputType.Keyboard }, false)
                        end

                        arrow.Marked = nil;
                    end)
                end
            end
        end
    end)
end

-- menu 

local windows = {
    autoplayer = library:CreateWindow('Autoplayer'),
    customization = library:CreateWindow('Customization'),
    configs = library:CreateWindow('Configs'),
    misc = library:CreateWindow('Miscellaneous')
}

local folder = windows.autoplayer:AddFolder('Main') do
    local toggle = folder:AddToggle({ text = 'Autoplayer', flag = 'autoPlayer' })

    folder:AddToggle({ text = 'Secondary press mode', flag = 'secondaryPressMode', callback = function()
        if library.flags.secondaryPressMode then 
            library.notify('Only enable "Secondary press mode" if the main autoplayer does not work! It may cause issues or not be as accurate!')
        end
    end }) -- alternate mode if something breaks on krml or whatever
    folder:AddLabel({ text = "Enable if autoplayer breaks" })

    -- Fixed to use toggle:SetState
    folder:AddBind({ text = 'Autoplayer toggle', flag = 'autoPlayerToggle', key = Enum.KeyCode.End, callback = function()
        toggle:SetState(not toggle.state)
    end })

    folder:AddDivider()
    folder:AddList({ text = 'Autoplayer mode', flag = 'autoPlayerMode', values = { 'Chances', 'Manual'  } })
end

local folder = windows.customization:AddFolder('Hit chances') do
    folder:AddSlider({ text = 'Sick %', flag = 'sickChance', min = 0, max = 100, value = 100 })
    folder:AddSlider({ text = 'Good %', flag = 'goodChance', min = 0, max = 100, value = 0 })
    folder:AddSlider({ text = 'Ok %', flag = 'okChance', min = 0, max = 100, value = 0 })
    folder:AddSlider({ text = 'Bad %', flag = 'badChance', min = 0, max = 100, value = 0 })
    folder:AddSlider({ text = 'Miss %', flag = 'missChance', min = 0, max = 100, value = 0 })
end

local folder = windows.customization:AddFolder('Timing') do
    folder:AddSlider({ text = 'Release delay (ms)', flag = 'autoDelay', min = 0, max = 500, value = 20 })
    folder:AddSlider({ text = 'Held delay (ms)', flag = 'heldDelay', min = -20, max = 100, value = -20 })
end

local folder = windows.customization:AddFolder('Random timing') do
    folder:AddList({ text = 'Delay mode', flag = 'delayMode', values = { 'Manual', 'Random' }})
    folder:AddDivider()
    folder:AddLabel({ text = 'Note delay' })
    folder:AddSlider({ flag = 'noteDelayMin', text = 'Minimum (ms)', min = 0, max = 200 })
    folder:AddSlider({ flag = 'noteDelayMax', text = 'Maximum (ms)', min = 0, max = 200, value = 20 })
    folder:AddDivider()
    folder:AddLabel({ text = 'Held note delay' })
    folder:AddSlider({ flag = 'heldNoteDelayMin', text = 'Minimum (ms)', min = 0, max = 200 })
    folder:AddSlider({ flag = 'heldNoteDelayMax', text = 'Maximum (ms)', min = 0, max = 200, value = 20 })
end

local folder = windows.customization:AddFolder('Keybinds') do
    folder:AddBind({ text = 'Sick', flag = 'sickBind', key = Enum.KeyCode.One, hold = true, callback = function(val) library.flags.sickHeld = (not val) end, })
    folder:AddBind({ text = 'Good', flag = 'goodBind', key = Enum.KeyCode.Two, hold = true, callback = function(val) library.flags.goodHeld = (not val) end, })
    folder:AddBind({ text = 'Ok', flag = 'okBind', key = Enum.KeyCode.Three, hold = true, callback = function(val) library.flags.okayHeld = (not val) end, })
    folder:AddBind({ text = 'Bad', flag = 'badBind', key = Enum.KeyCode.Four, hold = true, callback = function(val) library.flags.missHeld = (not val) end, })
end

if type(readfile) == 'function' and type(writefile) == 'function' and type(makefolder) == 'function' and type(isfolder) == 'function' then
    if not isfolder('funky_friday_autoplayer\\configs') then
        makefolder('funky_friday_autoplayer')
        makefolder('funky_friday_autoplayer\\configs')
    end

    local window = windows.configs do
        window:AddBox({ text = 'Config name', value = '', flag = 'configNameInput' })
        library._configList = window:AddList({ text = 'Config list', values = { 'default' }, flag = 'configList' })
        
        window:AddButton({ text = 'Save config', callback = function()
            local name = library.flags.configNameInput
            if name:gsub(' ', '') == '' then
                return notify('Failed to save. [invalid config name]', 3)
            end

            saveManager:SaveConfig(name)
        end })
        
        window:AddButton({ text = 'Load config', callback = function()
            local name = library.flags.configList
            
            if name:gsub(' ', '') == '' then
                return notify('Failed to load. [invalid config name]', 3)
            end

            if not isfile('funky_friday_autoplayer\\configs\\' .. name) then
                return notify('Failed to load. [config does not exist]', 3)
            end

            saveManager:LoadConfig(name)
        end })

        window:AddDivider()

        function library.refreshConfigs()
            for _, value in next, library._configList.values do
                if value == 'default' then continue end
                library._configList:RemoveValue(tostring(value))
            end

            local files = listfiles('funky_friday_autoplayer\\configs')
            for i = 1, #files do
                files[i] = files[i]:gsub('funky_friday_autoplayer\\configs\\', '')
                library._configList:AddValue(files[i])
            end

            if files[1] then
                library._configList:SetValue(files[1])
            else
                library._configList:SetValue('default')
            end
        end

        window:AddButton({ text = 'Refresh configs', callback = library.refreshConfigs })
    end
    task.delay(1, library.refreshConfigs)
else
    notify('Failed to create configs window due to your exploit missing certain file functions.', 2)
end

local folder = windows.misc:AddFolder('Credits') do
    folder:AddLabel({ text = 'Jan - UI library' })
    folder:AddLabel({ text = 'wally - Script' })
    folder:AddLabel({ text = 'Sezei - Contributor'})
    folder:AddLabel({ text = 'aKinlei - Notifications'})
end

windows.misc:AddLabel({ text = 'Version 1.9b' })
windows.misc:AddLabel({ text = 'Updated 3/11/22' })
windows.misc:AddLabel({ text = 'idk what to put here anymore' })

windows.misc:AddDivider()
windows.misc:AddButton({ text = 'Unload script', callback = function()
    shared._unload()
    library.notify('Successfully unloaded script!', 2)
end })

windows.misc:AddButton({ text = 'Copy discord', callback = function()
    if pcall(setclipboard, "https://wally.cool/discord") then
        library.notify('Successfully copied discord', 2)
    end
end })

windows.misc:AddDivider()
windows.misc:AddBind({ text = 'Menu toggle', key = Enum.KeyCode.Delete, callback = function() library:Close() end })

library:Init()
library.notify(string.format('Loaded script in %.4f second(s)!\nUsed Http cache: %s', tick() - start, tostring(usedCache)), 3)