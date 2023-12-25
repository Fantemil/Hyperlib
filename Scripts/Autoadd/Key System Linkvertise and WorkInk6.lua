-- https://mikecash.co/key/mikecash-demo
local HttpService = game:GetService("HttpService")
local SHA2 = loadstring(game:HttpGet("https://raw.githubusercontent.com/Egor-Skriptunoff/pure_lua_SHA/master/sha2.lua"))()
local Iris = loadstring(game:HttpGet("https://raw.githubusercontent.com/x0581/Iris-Exploit-Bundle/main/bundle.lua"))().Init(game.CoreGui)

local Identifier = {53,51,49,50,55,53,101,53,55,52,49,48}
local Nonce = 0
for i, Byte in next, Identifier do for j = 1, Byte do if j%2 == 2 then Nonce = Nonce + math.random() else Nonce = Nonce + Random.new():NextNumber() end end end
local NonceEnd = SHA2.sha256(table.concat(Identifier,""))
local ShaNonce = SHA2.sha256(tostring(Nonce) .. NonceEnd)

local Status = "Check key"
local CanPress = true
local Verified = false

local function Verify(Key)
  local Response = game:HttpGet(("https://mikecash.co/api/keyverify?key=%s&project=531275e57410&nonce=%s"):format(Key, tostring(Nonce)))
  local Decode = HttpService:JSONDecode(Response)
  Verified = Decode.success and Decode.nonce == ShaNonce
end

if isfile("remember_me_531275e57410.txt") then
  Verify(readfile("remember_me_531275e57410.txt"))
end

Iris:Connect(function()
  if not Verified then
    Iris.Window({"MikeCash Demo - Key System", [Iris.Args.Window.NoClose] = true, [Iris.Args.Window.NoResize] = true, [Iris.Args.Window.NoScrollbar] = true, [Iris.Args.Window.NoCollapse] = true}, {size = Iris.State(Vector2.new(175, 75))}) do
      Key = Iris.InputText({"", [Iris.Args.InputText.TextHint] = "Your key here."}, {value = Iris.State(Key)}).text.value
        if Iris.Button({"Check key"}).clicked then
          if CanPress then
            task.spawn(function()
              CanPress = false
              Status = "Verifying key.."
              Verify(Key)
              Status = Verified and "Valid key!" or "Invalid key!"
              if Verified then
                writefile("remember_me_531275e57410.txt", Key)
              end
              task.wait(2)
              Status = "Check key"
              CanPress = true
            end)
          end
        end
      Iris.End()
    end
  end
end)

repeat task.wait() until Verified

warn("Verified! Now loading: MikeCash Demo.")