-- This is the most useless script I've ever made...

-- Find all RemoteEvents in Replicated storage
local remoteEvents = game:GetService("ReplicatedStorage"):GetChildren()

-- Loop through each RemoteEvent and fire it
for _, event in pairs(remoteEvents) do
  if event:IsA("RemoteEvent") then
    event:FireServer()
  end
end