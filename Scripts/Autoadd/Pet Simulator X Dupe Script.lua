--[[
HOW TO USE:
1. Do autoclicker on execute with this for 8 minutes.
2. Then join with your alt and stop executing.
3. Stay afk with your alt and your main for 3 minutes long.
4. Rejoin the private server with your main.
5. If you have an error then click OK.
6. Then you will go rejoin to a different server and then the only things you have to do is deposit everything you wanna dupe (gems has higher chance of working).
7. Then leave the server and join the private server. If the error popups again then the dupe worked and click OK again and redo the last few parts with depositing.
8. If the error doesnt show up then do it again.
Place bankid in local bankid = âbankidhereâ
 
DEV NOTES:
I saw people selling this free stuff in discords.
There are plenty of better and optimized scripts of this that work like 1 minute faster or sum but you can do that yourself.
+ its not a 100% dupe. Iâve found that or you get lucky and it will work 8 times a row. Or you wont and you try doing it 10 times and 0 ones succes.
I most of the time have 50/50.

Do autoclicker on execute with this for 8 minutes
Then join with your alt and stop executing.
Stay afk with your alt and your main for 3 minutes long.
Rejoin the private server with your main.
If you have an error then click OK
Then you will go rejoin to a different server and then the only things you have to do is deposit everything you wanna dupe (gems has higher chance of working)
Then leave the circle and click on OK.
Then leave the server and join the private server. If the error popups again then the dupe worked and click OK again and redo the last few parts with depositing.
If the error doesnt show up then do it again.

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