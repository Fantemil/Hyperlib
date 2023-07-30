rconsoleprint("@@GREEN@@")
rconsoleprint("          <----------------->          \n")
rconsoleprint("                HTTP SPY             \n")
rconsoleprint("          <----------------->          \n\n")
rconsoleprint("@@WHITE@@")

local old;
old = hookfunction(game.HttpGet, function(a,b,...)
    rconsoleprint("   [-] Method: Http Get".." | Url: "..b.."\n")
    return old(a,b,...) 
end)
rconsoleprint("     [-] Applied http get hook\n")

local old;
old = hookfunction(game.HttpGetAsync, function(a,b,...)
    rconsoleprint("   [-] Method: Http Get Async".." | Url: "..b.."\n")
    return old(a,b,...) 
end)
rconsoleprint("     [-] Applied http get async hook\n")

local old;
old = hookfunction(game.HttpPost, function(a,b,...)
    rconsoleprint("   [-] Method: Http Post".." | Url: "..b.."\n")
    return old(a,b,...) 
end)
rconsoleprint("     [-] Applied http post hook\n")

local old;
old = hookfunction(game.HttpPostAsync, function(a,b,...)
    rconsoleprint("   [-] Method: Http Post Async".." | Url: "..b.."\n")
    return old(a,b,...) 
end)
rconsoleprint("     [-] Applied http post async hook\n")

if syn then
local old = syn.request
setreadonly(syn, false)
syn.request = function(data)
    rconsoleprint("   [-] Method: Syn Request".." | Url: "..data.Url.."\n")
    return old(data)
end setreadonly(syn, true) end
rconsoleprint("     [-] Applied syn request hook\n\n")