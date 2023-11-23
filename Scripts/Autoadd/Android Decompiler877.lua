function SimpleDecompile(module)
    local Module = require(module)
    local DecompiledModule = ""
    
    for i, v in pairs(Module) do
        if typeof(v) == "table" then
            for j, z in pairs(v) do
                if typeof(z) == "table" then
                    for c, b in pairs(z) do
                        DecompiledModule = DecompiledModule .. "\n" .. tostring(c) .. " " .. tostring(b)
                    end
                else
                    DecompiledModule = DecompiledModule .. "\n" .. tostring(j) .. " " .. tostring(z)
                end
            end
        else
            DecompiledModule = DecompiledModule .. "\n" .. tostring(i) .. tostring(v)
        end
    end

    return DecompiledModule
end

getgenv().decompile = SimpleDecompile