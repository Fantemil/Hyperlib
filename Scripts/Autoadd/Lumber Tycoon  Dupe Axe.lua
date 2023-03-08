local axeName = 'Tool';
local client = game:GetService('Players').LocalPlayer;
local clientInteracted = game:GetService('ReplicatedStorage').Interaction.ClientInteracted;
local function dupeAxe()
   if (not client.Character or not client.Character:FindFirstChild('Humanoid') or not client.Character:FindFirstChild('Head')) then return end;

   client.Character.Humanoid:EquipTool(client.Backpack[axeName]);
   clientInteracted:FireServer(client.Character.Tool, 'Drop Tool', client.Character.Head.CFrame);
   client.Character.Head:Destroy();
end;


while true do
   dupeAxe();
   task.wait(2);
end;