-- cJSON: A new file extension which stands for compressed json.

local gsub, format, rep, sub, split, match, gmatch = string.gsub, string.format, string.rep, string.sub, string.split, string.match, string.gmatch;
local tinsert = table.insert;
local floor = math.floor;

local tostring, tonumber = tostring, tonumber;

-- * Base62 Start (Useful for number compression.)

local base62_chars = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

local base62 = { -- Very useful for compressing numbers, Can reduce sizes heavily when handling big numbers, for example: 1234567890 (#10) -> 1ly7vk (#6) which is 4 bytes shorter.
  index = {};
}

for i = 1, #base62_chars do
    base62.index[sub(base62_chars, i, i)] = i - 1
end

function base62.encode(num)
    local str = tostring(num);
    if #str == 1 then return str end -- Numbers like 1, 2, 3, 4, 5, 6, 7, 8, 9, 0 always return "(number)" so we can just do that.
    num = tonumber(num);

    local result = ""
    while num > 0 do
        local remainder = num % 62
        result = sub(base62_chars, remainder + 1, remainder + 1) .. result
        num = floor(num / 62)
    end

    return result
end

function base62.decode(str)
    local result = 0

    for i = 1, #str do
        local char = sub(str, i, i)
        local value = base62.index[char]
        result = result * 62 + value
    end

    return result
end

local cJ = {
    characters = {
        [" "] = utf8.char(1),
        other = utf8.char(2),
        numbers = utf8.char(3)
    }
};

local re = {
    sub = function(string, pattern, replacement) -- Allows you to use the quantifier ((a){2} -> aa)
        pattern = gsub(pattern, "%((.+)%){(%d+)}", function(a, b)
            return rep(a, tonumber(b))
        end)

        return gsub(string, pattern, replacement)
    end,
    secure = function(string) -- Fixes regex pattern matching, Returns a regex safe string, example: string: hi-world, Output: hi%-world
      local StrList = "$%^&*()-+[]?.";
      local List = {};

      for _, Letter in next, split(StrList, "") do
        List[Letter] = "%" .. Letter
      end

      return gsub(string, ".", List)
    end
}

function cJ:Compress(Raw)
    local start = tick();
    local Text = gsub(Raw, "\n", "")

    -- * Arrays and Dictionaries Compression start

    Text = gsub(Text, "([{%[])(.+)([}%]])", function(s1, a, s2) -- I couldn't make files even smaller because of some regex issues, I was aiming to make it gsub ".+": to .+: but due to some greedy regex issues i couldn't do that.
        a = gsub(a, '":%s*', '":')
        a = gsub(a, '%s*"', '"')

        return s1 .. a .. s2;
    end)

    -- ! Arrays and Dictionaries Compression end

    -- * Letter + Space Compression start

    Text = gsub(Text, "(%s+)", function(Spaces)
        if #Spaces <= 2 then -- Because doing 1 character and a number is already 2 characters which wont make a difference
            return Spaces
        end

        return cJ.characters[" "] .. #Spaces
    end)

    local LastLetter = ""
    local CurrentSequence = ""
    local LetterHistory = {}

    for i, Letter in next, split(Text, "") do
      if Letter == LastLetter then
        CurrentSequence = CurrentSequence .. Letter
      else
        if #CurrentSequence > 3 then
            LetterHistory[LastLetter] = LetterHistory[LastLetter] or {}
            tinsert(LetterHistory[LastLetter], {start = i - #CurrentSequence, length = #CurrentSequence, sequence = CurrentSequence})
        end
        CurrentSequence = Letter
      end
      LastLetter = Letter
    end

    for Letter, Data in next, LetterHistory do
      for _, LetterData in next, Data do
        local StartIndex, EndIndex = LetterData.start, LetterData.start + LetterData.length

        Text = sub(Text, 1, StartIndex) .. Letter .. cJ.characters.other .. tostring(LetterData.length) .. cJ.characters.other .. sub(Text, EndIndex)
      end
    end

    -- ! Letter + Spacing Compression end

    -- * Number Compression Start

    Text = gsub(Text, "%d+", function(Number)
      local encoded = base62.encode(Number);
      local char = cJ.characters.numbers

      if #Number > #encoded + 2 then -- + 2 is because of the 2 bytes we're adding (cJ.characters.numbers) to mark the base62
        return char .. encoded .. char
      end
    end)

    -- ! Number Compression end

    return {BytesCompressed = #Raw - #Text, Result = Text, TimeTaken = tick() - start}; -- BytesCompressed: How many bytes the script managed to remove without data loss, Result: The compressed result, TimeTaken: How long it took to compress (IN MILLISECONDS!)
end

function cJ:Decompress(Text)
    local Raw = gsub(Text, cJ.characters[" "] .. "(%d+)", function(Times)
        return rep(' ', Times)
    end)
    Raw = gsub(Raw, "(.)" .. cJ.characters.other .. "(%d+)" .. cJ.characters.other, function(Data, Times)
        return rep(Data, Times)
    end)
    Raw = gsub(Raw, cJ.characters.numbers .. "(.-)" .. cJ.characters.numbers, base62.decode)

    return Raw;
end

return cJ;