local _,__ = game:GetService('ReplicatedStorage'),{}
local Gamepasses = require(_.ClientDB.GamepassDB)
for Gamepass, Data in pairs(Gamepasses) do
    table.insert(__,Gamepass)
end
require(_.Fsys).load("ClientData").update("gamepass_manager",__)