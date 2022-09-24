Place bankid in local bankid = "bankidhere"
]]

print("Succesfully executed once")
workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "bank withdraw")
local function Bank(id)
  local self = {}
  function self:withdraw(pets, gems)
local A_1 =
{
   [1] = id,
   [2] =
{
},
   [3] = gems
}
       local Event = game:GetService("Workspace")["__THINGS"]["__REMOTES"]["bank withdraw"]
       Event:InvokeServer(A_1)
  end
  return self
end
--//
local bankid = "bankidhere"--bank
for i=1, 1000 do
  Bank(bankid):withdraw({}, 1)
  print('withdrawed 1 gem')
  task.wait()
end