local codes = {"RAININGGEMS!","FATSTACKZ","140KAGAIN","GEARFOOOOURTH","LONGAWAITED","ITJUSTDONTSTOP","LETSGOO130K","INDAZONE","WINTERDAYZ"}

for i,v in pairs(codes) do

local string_1 = "Codes";
local string_2 = "Redeem";
local table_1 = {
["Code"] = v
};
game:GetService("ReplicatedStorage").Replicator:InvokeServer(string_1, string_2, table_1);

end


local currfruit = game.Players.LocalPlayer["MAIN_DATA"].Slots["1"].Value
local wantedfruits = {"Phoenix","Quake","Gravity","TSRubber"}

repeat
wait(5.1)
local string_1 = "FruitsHandler";
local string_2 = "Spin";
local table_1 = {

};
local Target = game:GetService("ReplicatedStorage").Replicator;
if not table.find(wantedfruits,currfruit) then
Target:InvokeServer(string_1, string_2, table_1);
end
currfruit = game.Players.LocalPlayer["MAIN_DATA"].Slots["1"].Value

until table.find(wantedfruits,currfruit)

print("Got it!")