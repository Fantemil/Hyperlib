while wait() do
   local string_1 = "GeProce PTX 1080";
   local Target = game:GetService("Workspace").Table.Cards.CardPlace.PlaceCard;
   Target:FireServer(string_1);
   
   local string_1 = "GeProce PTX 1080";
   local Target = game:GetService("ReplicatedStorage").Events.Sell;
   Target:FireServer(string_1);
end