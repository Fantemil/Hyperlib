local utils = getrenv()._G.utils;
local globals = getrenv()._G.globals;
local slapAHoe = getrenv()._G.enums.c_net_msg.MELEE_HIT_SOL;
local cliState = globals.cli_state;
local combatNetShit = globals.combat_net_msg_state;
local fpvEquip = globals.fpv_sol_equipment;
local hitboxHash = globals.soldier_hitbox_hash;
local triggerEvent = utils.gbus.trig_event;
local netShit = utils.net_msg_util.c_prep_net_msg;
function hit(p1)
   local hash = hitboxHash[p1];
   local equipment = fpvEquip.curr_equipment;
   local hitboxPos = equipment.model.hitbox.Position
   
   if (cliState.id == cliState.fpv_sol_id) then
       netShit(combatNetShit, slapAHoe, hash);
   end
   triggerEvent(utils.gbus.EVENT_ENUM.FPV_SOL_MELEE_SOL_HIT, equipment, p1, hitboxPos);
end;

for i,v in next,workspace:GetChildren() do
   if v:IsA("Model") and v.Name=="soldier_model" and v:FindFirstChild("fpv_humanoid") then
       player = v
   end
end

while task.wait() do
   for i,badBitch in pairs(game.CollectionService:GetTagged("ENEMY_SOLDIER")) do
       player.HumanoidRootPart.CFrame = badBitch.CFrame
       hit(badBitch)
       task.wait()
   end
end