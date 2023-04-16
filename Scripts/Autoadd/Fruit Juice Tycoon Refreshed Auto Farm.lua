local LP,Tycoons,Drops=game.Players.LocalPlayer,workspace.Tycoons:GetChildren();

local function GetTycoon()
  for i=1,#Tycoons do
      local Tycoon=Tycoons[i];
      if Tycoon.Owner.Value==LP then
        return Tycoon;
      end;
  end;
end;

local Tycoon=GetTycoon();
if not Tycoon then repeat task.wait()Tycoon=GetTycoon()until Tycoon;end
local Drops=Tycoon.Drops;

local function CollectDrops()
  local Drops=Drops:GetChildren();
  for i=1,#Drops do
    local Drop=Drops[i];
    game.ReplicatedStorage.CollectFruit:FireServer(Drop);
  end;
end;
CollectDrops();
Drops.ChildAdded:Connect(function(Drop)
  game.ReplicatedStorage.CollectFruit:FireServer(Drop);
end);

local MinCost,MinButton=9e9;
LP.PlayerGui.MoneyGui.MoneyLabel:GetPropertyChangedSignal'Text':Connect(function()
  local Buttons=Tycoon.Buttons:GetChildren();
  for i=1,#Buttons do
      local Button=Buttons[i];
      local Cost=Button.ButtonLabel.CostLabel.Text:gsub(',','');
      Cost=tonumber(Cost);
      if Cost<MinCost then
          MinCost=Cost;
          MinButton=Button;
      end;
      local Money=LP.PlayerGui.MoneyGui.MoneyLabel.Text:split(' ')[2]:gsub(',','')
      if tonumber(Money)>=tonumber(MinCost)then
          firetouchinterest(MinButton,LP.Character.Head,0);
          firetouchinterest(MinButton,LP.Character.Head,1);
      end;
  end;
end);

while task.wait(5)do
 local OldCFrame=LP.Character.PrimaryPart.CFrame;
 LP.Character.PrimaryPart.CFrame=Tycoon.Essentials.JuiceMaker.StartJuiceMakerButton.CFrame;
 task.wait(.2);
 fireproximityprompt(Tycoon.Essentials.JuiceMaker.StartJuiceMakerButton.PromptAttachment.StartPrompt,1);
 LP.Character.PrimaryPart.CFrame=OldCFrame;
end;