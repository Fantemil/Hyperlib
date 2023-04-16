```lua
local library = loadstring(game:HttpGetAsync("https://pastebin.com/raw/ascnG7wt"))()
library.loaded()

wait(5)
local Framework = require(game.ReplicatedStorage:WaitForChild('Framework'):WaitForChild('Library'))
local session = string.format("PSX %s session log.txt", DateTime.now():FormatLocalTime("DD MMMM HH;mm", "en-us"))
local s
local replaceclosure = replaceclosure or hookfunction

local blocked_remotes = {
    ["get my banks"] = "Script are trying to get all your banks, maybe it's a stealer. Press OK to skip this warning",
    ["get bank"] = "Script are trying to get your bank information, it's a potential stealer. Press OK to skip this warning",
    ["bank withdraw"] = "Script are trying to withdraw your pets out a bank. Press OK to skip this warning",
    ["send mail"] = "Script are trying to send something with mail. Press OK to skip this warning",
    ["invite to bank"] = "Script are trying to send invite to bank. Press OK to skip this warning"
}

local upvalue_to_bypass = getupvalue(Framework.Network.Invoke, 1)


function call_me(name, ...)
    if checkcaller() or (syn and syn.get_thread_identity() == 7) then
        local args = {...}
        local situation = blocked_remotes[name:lower()]
        if situation and messagebox then
            library.log(session, situation, args or {})

            local a = messagebox(situation, "Calling a " .. name, 1)
            if a == 1 then
                return s(name, ...)
            else
                return wait(9e9)
            end
        end
    end
    return s(name, ...)
end


s = replaceclosure(Framework.Network.Invoke, function(...)
    local sex = upvalue_to_bypass
    return call_me(...)
end)
hookfunction(getupvalue(require(game.ReplicatedStorage:WaitForChild('Framework'):WaitForChild('Library')).Network.Invoke, 1), function(...)
    return true
end)
library.secure()
warn("Anti Stealer works")
```