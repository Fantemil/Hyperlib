--BROUGHT TO YOU BY rbxscript.com!-


Recognizing our BankID
local lib = require(game.ReplicatedStorage:WaitForChild('Framework'):WaitForChild('Library'))

local mybanks = lib.Network.Invoke("get my banks")
local BankID = mybanks[1]['BUID']
setclipboard(BankID)
Script for finding pet IDs
loadstring(game:HttpGet("https://github.com/exxtremestuffs/SimpleSpySource/raw/master/SimpleSpy.lua))()
 The dup script itself 
local args = {
    [1] = {
        [1] = "here_bankid",
        [2] = {},
        [3] = number of hemes
    }
}
workspace.THINGS.REMOTES:FindFirstChild("bank deposit"):InvokeServer(unpack(args))