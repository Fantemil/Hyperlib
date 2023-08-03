print(game:GetService("SoundService").RespectFilteringEnabled)

---------blasts loud sound when played, some games dont work

for _, sound in next, workspace:GetDescendants() do
   if sound:IsA("Sound") then
       sound:Play()
   end
end