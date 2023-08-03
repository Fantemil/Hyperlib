local clans = {
    ['Legendary'] = {'Kocho', 'Shinazugawa'},
    ['Mythic'] = {'Tomioka'},
    ['Supreme'] = {'Kamado', 'Agatsuma'}
}
local Wanted = 'Supreme'
_G.CD = 0
--[[

You can put a genre, or clan name in Wanted.
Example 1: local Wanted = 'Supreme'
Example 2: local Wanted = 'Kamado'

]]
while wait(_G.CD) do
    local x, y = game.ReplicatedStorage.Remotes.To_Server.Handle_Initiate_S_:InvokeServer('check_can_spin')
    if clans[Wanted] then
        local data;
        for i,v in pairs(clans[Wanted]) do
            if v:lower() == y:lower() then
                data = true;
                break
            end
        end
        if data then
            break; 
        end
    else
        if y:lower() == Wanted:lower() then
            break
        end 
    end
end