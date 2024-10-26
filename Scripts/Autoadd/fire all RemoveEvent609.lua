--credits imahuman scriptblox
local duration = 5
local wiat = task.wait
local fire = true

for _,q in pairs(game:GetService("ReplicatedStorage"):GetDescendants()) do
     if q:IsA("RemoteEvent") then
        if fire then
             q:FireServer()
        end
        print(q:GetFullName())
        wiat(duration)
     end
end
for _,q in pairs(game:GetService("Workspace"):GetDescendants()) do
     if q:IsA("RemoteEvent") then
          if fire then
             q:FireServer()
           end
         print(q:GetFullName())
         wiat(duration)
     end
end