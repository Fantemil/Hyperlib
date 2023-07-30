-- // console
local console = {}

function console.add(name, color)
    color = '@@' .. color:gsub('@', ''):upper() .. '@@'

    console[name] = function(...)

        local args = {...}

        for i,v in next, args do
            args[i] = tostring(v)
        end

        local message = table.concat(args, ' ')

        rconsoleprint(color)
        rconsoleprint('\n [' .. os.date('%X', os.time()) .. ']')
        rconsoleprint(' [' .. name .. '] ')
        rconsoleprint('@@LIGHT_GRAY@@')
        rconsoleprint(message)

    end
end

console.add('error', 'red')
console.add('log', 'white')
console.add('warn', 'yellow')
console.add('info', 'light_magenta')

-- // init
syn.queue_on_teleport(readfile('Dahood Egg Farm.lua'))

if not isfolder('dahood_farm') then
    console.info("creating 'dahood_farm', 'dahood_farm/last.txt', 'dahood_farm/looted.txt' for first time startup")
    makefolder('dahood_farm')
    writefile('dahood_farm/last.txt', tostring(0))
    writefile('dahood_farm/looted.txt', '[]')
end

task.spawn(function()
    local str = ('|/-\\'):split('')
    local count = 1
    local looted = 0

    for i,v in next, game:GetService('HttpService'):JSONDecode(readfile('dahood_farm/looted.txt')) do
        looted += 1
    end

    while true do
        count = count == #str and 1 or count + 1

        rconsolename(table.concat({
            'dahood egg farm by liamm#0223',
            'discord.gg/hyphon',
            'discord.gg/octo',
            looted .. ' total servers looted'
        }, ('    %s    '):format(str[count])))

        task.wait(0.5)
    end
end)

rconsoleprint('\n')
console.warn('waiting for game to load...')
repeat task.wait() until game:IsLoaded()

-- // variables
local players = game:GetService('Players')
local http = game:GetService('HttpService')
local teleportservice = game:GetService('TeleportService')
local localplayer = players.LocalPlayer
local character = localplayer.Character or localplayer.CharacterAdded:Wait()
local rootpart

-- // functions
function add_looted(jobid)
    local looted = http:JSONDecode(readfile('dahood_farm/looted.txt'))
    looted[jobid] = tick()
    writefile('dahood_farm/looted.txt', http:JSONEncode(looted))
end

function get_eggs()
    local eggs = {}

    for i,v in next, workspace.Ignored:GetChildren() do
        if v.Name:match('^Egg') then
            table.insert(eggs, v)
        end
    end

    return eggs
end

function collect_eggs()
    local eggs = get_eggs()

    console.info(#eggs, 'eggs found')
       
    for i,v in next, eggs do
        firetouchinterest(rootpart, v, 0)
        firetouchinterest(rootpart, v, 1)
        console.info('egg collected')
    end
end

function refresh_cache()
    console.info('refreshing server cache')

    local servers = {}
    local page

    repeat
local response = http:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/'.. game.PlaceId ..'/servers/Public?sortOrder=Dsc&limit=100' .. (page and '&cursor=' .. page or '')))
for idx, server in next, response.data do
table.insert(servers, server)
end
page = response.nextPageCursor
until not page

    writefile('dahood_farm/last.txt', tostring(tick()))
    writefile(
        'dahood_farm/server_cache.txt',
        http:JSONEncode(servers)
    )
end

function find_new_server()
    local servers = http:JSONDecode(readfile('dahood_farm/server_cache.txt'))
    local looted = http:JSONDecode(readfile('dahood_farm/looted.txt'))
   
    while task.wait(0.5) do

        console.info(('searching %s available servers...'):format(#servers))

        for idx, server in next, servers do
            if (
                (server.id ~= game.JobId) and
                (tick() - (looted[server.id] or 0) > 3600) and
                (server.playing) and
                (server.playing > 15) and
                (server.playing < 35)
            ) then
                add_looted(server.id)
                console.info(("teleporting to new server '%s' with %s/%s players"):format(server.id, server.playing, server.maxPlayers))

                xpcall(function()
                    teleportservice:TeleportToPlaceInstance(game.PlaceId, server.id)
                end, function()
                    console.error('teleport error, retrying')
                    find_new_server()
                end)

                return
            end
        end   
    end
end

-- // script

if #get_eggs() == 0 then
    console.warn('server has 0 eggs, skipping')
else
    console.warn('waiting for character to load...')
    character:WaitForChild('FULLY_LOADED_CHAR')
    rootpart = character:WaitForChild('HumanoidRootPart')   
    collect_eggs()
end

if tick() - tonumber(readfile('dahood_farm/last.txt')) > 120 then
    refresh_cache()
end

teleportservice.TeleportInitFailed:Connect(function()
    console.error('teleport error, retrying')
    find_new_server()
end)

find_new_server()