if not game:IsLoaded() then
    game.Loaded:Wait()
end

getgenv().ProtectName = true

local lederbord = game:GetService("CoreGui").PlayerList.PlayerListMaster.OffsetFrame.PlayerScrollList.SizeOffsetFrame.ScrollingFrameContainer.ScrollingFrameClippingFrame.ScollingFrame.OffsetUndoFrame

local oldplayername = {}

table.insert(oldplayername, game:GetService("Players").LocalPlayer.Name)


while ProtectName == true do task.wait()
for i,v in pairs(lederbord:GetDescendants()) do
if v:IsA("TextLabel") then
        if v.Text == game:GetService("Players").LocalPlayer.Name or v.Text == "Protected by urnamehereifuwant" then
            v.Text = "Protected by urnamehereifuwant"
        end
    end
end
end