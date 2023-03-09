local args = {
    [1] = 7--you can change the number 7 here from 1 to 7
}
for i=0,10000 do
game:GetService("ReplicatedStorage")["\230\156\141\229\138\161\229\153\168\232\132\154\230\156\172\228\185\139\233\151\180\230\182\136\230\129\175"]["\233\162\134\229\143\150\229\156\168\231\186\191\229\165\150\229\138\177"]:InvokeServer(unpack(args))
end