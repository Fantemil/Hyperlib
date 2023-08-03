local PARENT = game.Players.LocalPlayer.PlayerGui
    local getobjects = function(a)
        local Objects = {}
        if a then
            local b = game:GetService("InsertService"):LoadLocalAsset(a)
            if b then 
                table.insert(Objects, b) 
            end
        end
        return Objects
    end
    
    local Dex = getobjects("rbxassetid://5475777257")[1]
    Dex.Parent = PARENT
    
    local function Load(Obj, Url)
        local function GiveOwnGlobals(Func, Script)
            local Fenv, RealFenv, FenvMt = {}, {script = Script}, {}
            FenvMt.__index = function(a,b)
                return RealFenv[b] == nil and getgenv()[b] or RealFenv[b]
            end
            FenvMt.__newindex = function(a, b, c)
                if RealFenv[b] == nil then 
                    getgenv()[b] = c 
                else 
                    RealFenv[b] = c 
                end
            end
            setmetatable(Fenv, FenvMt)
            pcall(setfenv, Func, Fenv)
            return Func
        end
    
        local function LoadScripts(_, Script)
            if Script:IsA("LocalScript") then
                coroutine.wrap(function()
                    GiveOwnGlobals(loadstring(Script.Source,"="..Script:GetFullName()), Script)()
                end)()
            end
            table.foreach(Script:GetChildren(), LoadScripts)
        end
    
        LoadScripts(nil, Obj)
    end
    
    Load(Dex)