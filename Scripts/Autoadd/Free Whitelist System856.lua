--> Made by NG/ discord @deleted1983jaze

        ScriptKey = "1f5531ecdc71b76979960fb624e81154"

        --// Services
        local Players = game:GetService("Players")
        local HttpService = game:GetService("HttpService")
        local ScriptContext = game:GetService("ScriptContext")

        --// Variables
        local LocalPlayer = Players.LocalPlayer

        --// Utilities
        local EncryptionKey = "bd3f1a7b39d49e4b0afdb2af50eded86974345440475d76f06801310354453dce32fb445cc1dce5abc4e8ca66dd36b2a5ff635b4acad054382f66e169d7ce1e906338514cbadb7229ed420f754b2ea190a02ebbcfd127f520f937cc3102e948be80c42c43a0d89ce9807371a36d3c659ce66f639078a391178b2a4a50af8386686237a1aca7ee0ddd84acf1476060ce6d39f40889254c3b36c05937e325d5dacc7c2df521347467826405cdbc2c52543108cc5c864f2c0a40b3fc3f0c8cb2e5ab74d192c4731582e39e9b08791ff381f85584222714bb2ac351702a9aca725ff64e2022f59b3fa784a5abfc5a3575c0935c9ca30b6e1118a03af5c3bb485712524e36dd3ffe96c0b8afc6e2f17e022855ab29a126a542d990204ef4910ff19b6e9347619b45072704593f432261f06aa8c6a43c191be787a260ee6aae3e6c4a2f8da20e596c3ca5274ab33ad727e83488eb83291ccf93914be5f2ba98917b791d6688004ce6798e6350c4887ba07dd7f722e71b31d9d9f4f22d4565f0585e8d7a2b638ba1737992e5096a574d96e350e3c1a03abd108f86baa91da247c47dd2b78cd526d5f9bd2f1df8c01dcbce1c163ca97bc928393b1bc0631d5a7fdd1fd63e4e62fd14a52b22beaf727d065a0c5f504c5dd60b45499097ba81fc280e622a4ed90e4092d06cdc04b97c72c06dbff26bea84cc1cb732fc05c6e54319a3035b71e974f5c087cbd157648acb171647a64b1ee245c319f542fac0216d2dd76c1e41cc1add8554f213d63b3fd2f78657418e52c783b4221b9809ecb05418b371d76928acc4616ef6f65f1a720c8ac1e8a404a109e22957da8495d7fffb7207d09d7f568bc5f7d39c9a009090a17954c582f23f9b5df99fdabd92550b5b36a1be23f4fc36e25259f210e47d542a85e7afb2ae9fa7db4539f81cb625f41d0f438a2a98a40b6d9fd0d118cd0dbc364354b3b40d82f67bc2b0f58b3dd7b67f1b8f939606fd2ceb006d996d4e54220ff0c5b59db7e70f985182f8431e5e2f8ea4d20d0530270a66008fbbdcc91eaf79d5325f73390998870c9a0839c90b8111bd92db70443447a5d379737fd9f8d5e8f9e53b829e12555f716a0097dc41bae8f57b0a0f768045ff29996eee96f43d2f93104b8a961cbaa57c91946c12c4d51b4c892cd9167641367f7baa46d31afa4142ab3596105540ca4031936e73d190ba8eb65aacc"
        local BanReason = nil
        local LastCheck = nil
        local AuthenticationTime = os.clock()
        local Request = (http and http.request) or http_request or request
        local IndexCount = 0
        local JMPCount = 0
        local Order = {
            [1] = "Url",
            [2] = "Method",
            [3] = "Headers",
            [4] = "Cookies",
            [5] = "Body"
        }

        --// Functions
        local FormatError = (function(Error)
            return string.split(Error or "", ": ")[2]
        end)

        local CrashHook
        CrashHook = function(StackCount, Function, ...)
            if StackCount == 0 then
                task.wait()
            end

            Function(...)

            CrashHook(StackCount + 1, Function)
        end

        local function GenerateString()
            local Result = ""

            for i = 1, math.random(128, 1384) do
                Result = Result .. string.char(math.random(33, 126))
            end

            return Result
        end

        local function GenerateKey(Key, Length)
            local GeneratedKey = ""
            local KeyLength = #Key
            local CurrentIndex = 1
            while #GeneratedKey < Length do
                GeneratedKey = GeneratedKey .. Key:sub(CurrentIndex, CurrentIndex)
                CurrentIndex = (CurrentIndex % KeyLength) + 1
            end
            return GeneratedKey
        end

        local function TransformInput(Input)
            local Transformed = string.reverse(Input)

            local ShiftAmount = 3
            local Shifted = ""
            for i = 1, #Transformed do
                local charCode = string.byte(Transformed:sub(i, i))
                charCode = charCode + ShiftAmount
                Shifted = Shifted .. string.char(charCode)
            end

            local XORPattern = "abcdef"
            local XORed = ""
            for i = 1, #Shifted do
                local charCode = string.byte(Shifted:sub(i, i))
                local patternChar = string.byte(XORPattern:sub((i - 1) % #XORPattern + 1, (i - 1) % #XORPattern + 1))
                local XORedCharCode = bit32.bxor(charCode, patternChar)
                XORed = XORed .. string.char(XORedCharCode)
            end

            return XORed
        end

        local function ReverseTransform(Input)
            local XORPattern = GenerateString()
            local ReversedXORed = ""
            for i = 1, #Input do
                local charCode = string.byte(Input:sub(i, i))
                local patternChar = string.byte(XORPattern:sub((i - 1) % #XORPattern + 1, (i - 1) % #XORPattern + 1))
                local XORedCharCode = bit32.bxor(charCode, patternChar)
                ReversedXORed = ReversedXORed .. string.char(XORedCharCode)
            end

            local ShiftAmount = 3
            local ReversedShifted = ""
            for i = 1, #ReversedXORed do
                local charCode = string.byte(ReversedXORed:sub(i, i))
                charCode = charCode - ShiftAmount
                ReversedShifted = ReversedShifted .. string.char(charCode)
            end

            return string.reverse(ReversedShifted)
        end

        local function CalculateChecksum(Text)
            local Checksum = 0
            for i = 1, #Text do
                Checksum = (Checksum + string.byte(Text:sub(i, i))) % 256
            end
            return Checksum
        end

        local Encrypt = function(Input, Key)
            local Encrypted = {}
            local TransformedInput = TransformInput(Input)
            local GeneratedKey = GenerateKey(Key, #TransformedInput)

            for Index = 1, #TransformedInput do
                local Byte = string.byte(TransformedInput, Index)
                local KeyByte = string.byte(GeneratedKey, Index)
                local EncryptedByte = bit32.bxor(Byte, KeyByte)
                table.insert(Encrypted, string.char(EncryptedByte))
            end

            local Checksum = CalculateChecksum(table.concat(Encrypted))
            table.insert(Encrypted, string.char(Checksum))

            return table.concat(Encrypted)
        end

        local Decrypt = function(Input, Key)
            local EncryptedText = Input:sub(1, #Input - 1)
            local Checksum = Input:byte(#Input)
            local Decrypted = {}
            local GeneratedKey = GenerateKey(Key, #EncryptedText)

            for Index = 1, #EncryptedText do
                local Byte = string.byte(EncryptedText, Index)
                local KeyByte = string.byte(GeneratedKey, Index)
                local DecryptedByte = bit32.bxor(Byte, KeyByte)
                table.insert(Decrypted, string.char(DecryptedByte))
            end

            local CalculatedChecksum = CalculateChecksum(table.concat(Decrypted))
            if Checksum == CalculatedChecksum then
                local DecryptedText = table.concat(Decrypted)
                return ReverseTransform(DecryptedText)
            else
                BanReason = "Decryption failed."
            end
        end

        local Select = function(Index, ...)
          return ({...})[Index]
        end

      local SuperRequest = function(Data)
          local IndexFired = false
          local Base = setmetatable({}, {
              __call = Request,
              __index = function(_, Index)
                  IndexFired = true
              
                  if debug.info(2, "f") ~= Request then
                      BanReason = "HttpSpy Detected [LA-F1]"
                      return ""
                  end

                  if coroutine.isyieldable() then
                      BanReason = "HttpSpy Detected [LA-F2]"
                      return ""
                  end

                  return Data[Index]
              end
          })

          local Response = Select(2, pcall(Base))

          if not IndexFired then
              return
          end

          return Response
      end



        local function EQ(a,b,c)
            JMPCount = JMPCount + 1

            if not c then
                return (type(a) == typeof(b) and typeof(a) == type(b) and not(type(a) ~= typeof(b) and typeof(a) ~= type(b))) and ((#tostring(a) == #tostring(b)) and not (#tostring(a) ~= #tostring(b))) and rawequal(a,b) and (not(tostring(a) < tostring(b)) and not (tostring(a) > tostring(b)) and rawequal(tostring(a),tostring(b))) 
            end

            return (EQ(a,b) and EQ(a,c) and EQ(b,c))
        end

        --> Stack Security
        local StackInStackOne = {CrashHook, Select, pcall, debug.info, islclosure, debug.getinfo, debug.getfenv, IndexCount, Order, table.insert, BanReason, Request}
        local StackInStackTwo = {math.random, Encrypt, Decrypt, Select, SuperRequest}

        setmetatable(StackInStackOne, {
            __index = function()
                BanReason = "Stack Tampering [ST-F1]"
            end,

            __tostring = function()
                BanReason = "Stack Tampering [ST-F1]"
            end
        })

        setmetatable(StackInStackTwo, {
            __index = function()
                BanReason = "Stack Tampering [ST-F1]"
            end,

            __tostring = function()
                BanReason = "Stack Tampering [ST-F1]"
            end
        })

        --> Extra Anti Tampers
        do
            if type(getrawmetatable(StackInStackOne).__index) ~= "function" then
                BanReason = "Metatable Tampering [MT-S1]"
            end

            JMPCount = JMPCount + 1

            if type(getrawmetatable(StackInStackOne).__tostring) ~= "function" then
                BanReason = "Metatable Tampering [MT-S1]"
            end

            JMPCount = JMPCount + 1

            if type(getrawmetatable(StackInStackTwo).__index) ~= "function" or type(getrawmetatable(StackInStackTwo).__index) ~= type(getmetatable(StackInStackTwo).__index) then
                BanReason = "Metatable Tampering [MT-S1]"
            end

            JMPCount = JMPCount + 1

            if type(getrawmetatable(StackInStackTwo).__tostring) ~= "function" then
                BanReason = "Metatable Tampering [MT-S1]"
            end

            JMPCount = JMPCount + 1
        end

        --> Anti Hook #1
        do
            local Success, Error = pcall(pcall)
            local Success2, Error2 = pcall(math.random)
            local Success3, Error3 = pcall(setmetatable)
            local Success4, Error4 = pcall(string.split)
            local Success5, Error5 = pcall(debug.traceback)
            local Success6, Error6 = pcall(getmetatable)
            local Success7, Error7 = pcall(coroutine.wrap)
            local Success8, Error8 = pcall(table.insert)

            if 
                Success or Error ~= "missing argument #1"

            then
                BanReason = "Function Hooking [FT-G1]"
            end

            JMPCount = JMPCount + 1
        end

        --> Anti Hook #2
        do
            local FunctionList = {math.abs, os.clock, coroutine.isyieldable, debug.info, Request, LocalPlayer.Kick, table.insert, bit32.bxor, debug.getfenv, setrawmetatable, pcall, math.random, setmetatable, string.split, debug.traceback, debug.info, getrawmetatable, type, table.insert, math.random, Select, table.concat, string.byte, string.char, debug.getinfo, islclosure, GenerateString, GenerateKey, TransformInput, ReverseTransform, CalculateChecksum, string.reverse, Encrypt, Decrypt, SuperRequest, getmetatable}

            for Index, Value in next, FunctionList do
                for index = 1, 197 do
                    Value = coroutine.wrap(Value)
                end

                if Select(2, pcall(Value)) == "C stack overflow" then
                    BanReason = "Function Hooking [FT-G2]"
                end
            end

            JMPCount = JMPCount + 1
        end

        --> Anti VM Tampering + Anti Loadstring Tampering
        do
            local LoadstringCheck = debug.info(2, "f")

            if not LoadstringCheck then
                BanReason = "Tampering detected. type: 5"
            end

            JMPCount = JMPCount + 1
        end

        --> RNG Hook Checks
        do
            if math.random() == math.random() then
                BanReason = "Tampering detected. type: 1"
            end
        end

        --> JMP Check
        do
            if not EQ(JMPCount, 7) then
                BanReason = "JMP Hooking"
            end
        end

      --> Anti Hook #3
        do
          local Success10, Error10 = pcall(CrashHook, 0, coroutine.wrap)

            if FormatError(Error10) ~= "missing argument #1 to 'wrap' (function expected)" then
                BanReason = "Function Hooking [FT-G3]"
            end
        end

        --> AutoBlacklist
        do
            if BanReason ~= nil then
                local AutoBlacklist = SuperRequest({
                  Url = "https://5b2ccb7d-b0b6-47d6-bca0-c2a3088ca00f-00-2pn3xrvh69al9.kirk.replit.dev/auth/bl?code=DQOWHDIUQWHIQUWHDWQIUDHQWIUDHQWHDQWIUFHQIFQ&K=" .. ScriptKey .. "&r=" .. BanReason .. "&experienceId=" .. tostring(game.PlaceId),
                  Method = "GET"
                })

                if EQ(AutoBlacklist.Body, "Key and user blacklisted successfully") then
                    LocalPlayer.Kick(LocalPlayer, "")
                    game.CoreGui.RobloxPromptGui.promptOverlay.ErrorPrompt.TitleFrame.ErrorTitle.Text = "Whitelist Error"
                    game.CoreGui.RobloxPromptGui.promptOverlay.ErrorPrompt.MessageArea.ErrorFrame.ErrorMessage.Text = "You are blacklisted for: " .. BanReason .. " Appeal in: https://discord.gg/8khzGe52jv"
                end

                JMPCount = JMPCount + 2
            end
        end

    do
        if not BanReason then
            local WhitelistResponse = SuperRequest({
                Url = "https://5b2ccb7d-b0b6-47d6-bca0-c2a3088ca00f-00-2pn3xrvh69al9.kirk.replit.dev/v9/auth?SECRET_KEY=DQOWHDIUQWHIQUWHDWQIUDHQWIUDHQWHDQWIUFHQIFQ&k=" .. ScriptKey .. "&experienceId=" .. tostring(game.PlaceId) .. "&t=" .. Encrypt(tostring(math.random(1000000, 10000000)), EncryptionKey) .. "&t2=" .. Encrypt(tostring(math.random(1000000, 10000000)), EncryptionKey) .. "&t3=" .. Encrypt(tostring(math.random(1000000, 10000000)), EncryptionKey) .. "&t4=" .. Encrypt(tostring(math.random(1000000, 10000000)), EncryptionKey),
                Method = "GET"
            })

            if EQ(Decrypt(WhitelistResponse.Body, EncryptionKey), "") == "Unauthorized!" then
                LocalPlayer.Kick(LocalPlayer, "")
                game.CoreGui.RobloxPromptGui.promptOverlay.ErrorPrompt.TitleFrame.ErrorTitle.Text = "Whitelist Error"
                game.CoreGui.RobloxPromptGui.promptOverlay.ErrorPrompt.MessageArea.ErrorFrame.ErrorMessage.Text = "An issue has occured."
            end
        end
    end
    
    print("[Universal-Farm]: 3/3 Successsfully authenticated! Authenticated in: " .. math.abs(AuthenticationTime - os.clock()) .. " seconds. ")