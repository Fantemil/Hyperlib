-- Below is a simple hashing system to prevent your key system from being easily bypassed.
-- Join https://discord.gg/gYhqMRBeZV
local rawKey = '1234'
local updatedKey;
local _LOCALCRYPT = {}
local bit = table.clone(bit32)

-- Caesar Cipher.
function _LOCALCRYPT.encrypt(plaintext, shift)
    local encryptedText = ""
    if type(shift)=='string' then shift = #shift end
    for i = 1, #plaintext do
        local char = plaintext:sub(i, i)
        if char >= 'A' and char <= 'Z' then
            local encryptedChar = string.char((string.byte(char) - string.byte('A') + shift) % 26 + string.byte('A'))
            encryptedText = encryptedText .. encryptedChar
        elseif char >= 'a' and char <= 'z' then
            local encryptedChar = string.char((string.byte(char) - string.byte('a') + shift) % 26 + string.byte('a'))
            encryptedText = encryptedText .. encryptedChar
        else
            encryptedText = encryptedText .. char
        end
    end
    return encryptedText
end
_LOCALCRYPT.decrypt = _LOCALCRYPT.encrypt

local function str2hexa(a)
    return string.gsub(
        a,
        ".",
        function(b)
            return string.format("%02x", string.byte(b))
        end
    )
end
local function num2s(c, d)
    local a = ""
    for e = 1, d do
        local f = c % 256
        a = string.char(f) .. a
        c = (c - f) / 256
    end
    return a
end
local function s232num(a, e)
    local d = 0
    for g = e, e + 3 do
        d = d * 256 + string.byte(a, g)
    end
    return d
end
local function preproc(h, i)
    local j = 64 - (i + 9) % 64
    i = num2s(8 * i, 8)
    h = h .. "\128" .. string.rep("\0", j) .. i
    assert(#h % 64 == 0)
    return h
end
local function k(h, e, l)
    local m = {}
    local n = {
        0x428a2f98,
        0x71374491,
        0xb5c0fbcf,
        0xe9b5dba5,
        0x3956c25b,
        0x59f111f1,
        0x923f82a4,
        0xab1c5ed5,
        0xd807aa98,
        0x12835b01,
        0x243185be,
        0x550c7dc3,
        0x72be5d74,
        0x80deb1fe,
        0x9bdc06a7,
        0xc19bf174,
        0xe49b69c1,
        0xefbe4786,
        0x0fc19dc6,
        0x240ca1cc,
        0x2de92c6f,
        0x4a7484aa,
        0x5cb0a9dc,
        0x76f988da,
        0x983e5152,
        0xa831c66d,
        0xb00327c8,
        0xbf597fc7,
        0xc6e00bf3,
        0xd5a79147,
        0x06ca6351,
        0x14292967,
        0x27b70a85,
        0x2e1b2138,
        0x4d2c6dfc,
        0x53380d13,
        0x650a7354,
        0x766a0abb,
        0x81c2c92e,
        0x92722c85,
        0xa2bfe8a1,
        0xa81a664b,
        0xc24b8b70,
        0xc76c51a3,
        0xd192e819,
        0xd6990624,
        0xf40e3585,
        0x106aa070,
        0x19a4c116,
        0x1e376c08,
        0x2748774c,
        0x34b0bcb5,
        0x391c0cb3,
        0x4ed8aa4a,
        0x5b9cca4f,
        0x682e6ff3,
        0x748f82ee,
        0x78a5636f,
        0x84c87814,
        0x8cc70208,
        0x90befffa,
        0xa4506ceb,
        0xbef9a3f7,
        0xc67178f2
    }
    for g = 1, 16 do
        m[g] = s232num(h, e + (g - 1) * 4)
    end
    for g = 17, 64 do
        local o = m[g - 15]
        local p = bit.bxor(bit.rrotate(o, 7), bit.rrotate(o, 18), bit.rshift(o, 3))
        o = m[g - 2]
        local q = bit.bxor(bit.rrotate(o, 17), bit.rrotate(o, 19), bit.rshift(o, 10))
        m[g] = (m[g - 16] + p + m[g - 7] + q) % 2 ^ 32
    end
    local r, s, b, t, u, v, w, x = l[1], l[2], l[3], l[4], l[5], l[6], l[7], l[8]
    for e = 1, 64 do
        local p = bit.bxor(bit.rrotate(r, 2), bit.rrotate(r, 13), bit.rrotate(r, 22))
        local y = bit.bxor(bit.band(r, s), bit.band(r, b), bit.band(s, b))
        local z = (p + y) % 2 ^ 32
        local q = bit.bxor(bit.rrotate(u, 6), bit.rrotate(u, 11), bit.rrotate(u, 25))
        local A = bit.bxor(bit.band(u, v), bit.band(bit.bnot(u), w))
        local B = (x + q + A + n[e] + m[e]) % 2 ^ 32
        x = w
        w = v
        v = u
        u = (t + B) % 2 ^ 32
        t = b
        b = s
        s = r
        r = (B + z) % 2 ^ 32
    end
    l[1] = (l[1] + r) % 2 ^ 32
    l[2] = (l[2] + s) % 2 ^ 32
    l[3] = (l[3] + b) % 2 ^ 32
    l[4] = (l[4] + t) % 2 ^ 32
    l[5] = (l[5] + u) % 2 ^ 32
    l[6] = (l[6] + v) % 2 ^ 32
    l[7] = (l[7] + w) % 2 ^ 32
    l[8] = (l[8] + x) % 2 ^ 32
end
_LOCALCRYPT.hash = function(h)
    h = preproc(h, #h)
    local l = {0x6a09e667, 0xbb67ae85, 0x3c6ef372, 0xa54ff53a, 0x510e527f, 0x9b05688c, 0x1f83d9ab, 0x5be0cd19}
    for e = 1, #h, 64 do
        k(h, e, l)
    end
    return str2hexa(
        num2s(l[1], 4) ..
            num2s(l[2], 4) ..
                num2s(l[3], 4) .. num2s(l[4], 4) .. num2s(l[5], 4) .. num2s(l[6], 4) .. num2s(l[7], 4) .. num2s(l[8], 4)
    )
end


updatedKey = _LOCALCRYPT.encrypt(_LOCALCRYPT.hash('_SIGNED'..rawKey), '_SIGNED')
local function checkKey(key)
 return _LOCALCRYPT.encrypt(_LOCALCRYPT.hash('_SIGNED'..key), '_SIGNED')==updatedKey
end
-- Implement the checkKey function into whatever key system you use! Just instead of checking if the RAW key (for example password, password123, ...) is equal to the input, Check if the hashed input is equal to the hashed key to prevent skids from bypassing your key system OR just make it a little bit more secure, I am actively trying to find bypasses for this.