local Rating, TestsRan = 0, 1
local conn
local Identity, Identity2
conn = game:GetService("LogService").MessageOut:Connect(function(message, messageType)
 if message:find("Current identity is") then
  Identity = message
 end
 if Check2 then
   Identity2 = message
  conn:Disconnect()
 end
end)
printidentity()
repeat task.wait() until Identity
Identity1 = tonumber(Identity:gsub('Current identity is', ''):match("%d+"))
if Identity1 > 9 then
 warn("Your executor is faking their identity.\nReason: Identity cannot be over 9")
 return
end
-- Start testing
local Source1 = debug.info(printidentity, 's')
-- Can be faked with newcclosure.

local setfenvsuccess, e = pcall(function()
 setfenv(printidentity, {})
end)

local success
local sti = set_thread_identity or setthreadidentity

if sti then
 setthreadidentity(3)
 Check2 = true
 printidentity()
 repeat task.wait() until Identity2
 success = Identity2 ~= 'Current identity is 3'
end

local Tests = { -- Should be FALSE for all if no faking is done.
 [1] = Source1 ~= '[C]',
 [2] = setfenvsuccess,
 [3] = success,
 [4] = iscclosure and not iscclosure(printidentity)
}
local TestResults = {
 [1] = `Creates a fake function by doing:\nfunction printidentity()\n print('{Identity}')\nend`,
 [2] = 'Creates a fake function and tries to hide it with newcclosure.',
 [3] = 'Detected by it\'s own set_thread_identity.',
 [4] = 'Same as test #1'
}

local Passed = 0

for index, val in next, Tests do
  if val then
   warn(`Test #{index}: Your executor fakes their printidentity, here's how: {TestResults[index]}`)
  else
   Passed = Passed + 1
  end
end
if Passed == #Tests then
  print("Your executor does not fake it's identity!\nIdentity:",Identity1)
  Rating += 1
end

print(`Your executor got a {(Rating / TestsRan) * 100}% rating.`)