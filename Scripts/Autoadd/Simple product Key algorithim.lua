function parseKey(productKey)
    local numString = ""
    for i = 1, #productKey do
        local char = string.sub(productKey, i, i)
        if char ~= "-" then
            numString = numString .. string.byte(char)
        end
    end
    return {numString,tonumber(numString)} -- use [1] for raw data, use [2] for number data
end