local is_protosmasher_closure = is_protosmasher_closure or is_synapse_function
local is_l_closure = is_l_closure or islclosure
local get_gc_objects = get_gc_objects or getgc

local bruh = function(func)
    for idx, cnst in next, debug.getconstants(func) do
        debug.setconstant(func, idx, "____re___a__")
    end
end

for _, func in next, getgc() do
    if typeof(func) == "function" and is_l_closure(func) and not is_protosmasher_closure(func) then
        local script = getfenv(func).script
        if script and script:GetFullName():lower():match("adonis") then
            bruh(func)
        end
        for idx, cnst in next, debug.getconstants(func) do
            local cnst = tostring(cnst):lower()
            if cnst:match("adonis") or cnst:match("acli") then
                bruh(func)
                break
            end
        end
    end
end