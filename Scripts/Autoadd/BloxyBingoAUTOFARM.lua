local SubContainer = game:GetService("Players").LocalPlayer.PlayerGui.Bingo.StaticDisplayArea.Cards.PlayerArea.Cards.Container.SubContainer

function firebutton(button)
    if button ~= nil then
       for i,signal in pairs(getconnections(button.MouseButton1Click)) do
           signal:Fire()
       end
       for i,signal in pairs(getconnections(button.MouseButton1Down)) do
           signal:Fire()
       end
       for i,signal in pairs(getconnections(button.Activated)) do
           signal:Fire()
       end
    end
end

while wait() do
   local Cards
   
   if SubContainer:FindFirstChild("Blocks") then
       Cards = SubContainer.Blocks.Block
   else
       Cards = SubContainer.VerticalScroll.Cards
   end
   
   local BingoButton = SubContainer.Buttons.ClaimButton
   
   if Cards ~= nil and BingoButton ~= nil then
       for _, card in pairs(Cards:GetChildren()) do
           if card:IsA("Frame") then
               if card ~= nil and card:FindFirstChild("Content") ~= nil and card:FindFirstChild("Content"):FindFirstChild("Numbers") ~= nil then
                   for _, button in pairs(card.Content.Numbers:GetChildren()) do
                       firebutton(button)
                       wait()
                   end
                   
                   if card ~= nil and card:FindFirstChild("ToGo") ~= nil then
                       if card.ToGo.ToGoText.Text == "BINGO!" then
                           firebutton(BingoButton)
                       end
                   end
               end
           end
       end
   end
end