local args
local objs = workspace.GameData.Objects
local tell = game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Tell")
while wait(1) do
if objs.Boxbrgr.Amount.Value < 5 or objs.Boxbac.Amount.Value < 5 then
        args = {
            [1] = "Order",
            [2] = "Meat"
        }

        tell:FireServer(unpack(args))
end

if objs.Boxltc.Amount.Value < 5 or objs.Boxoni.Amount.Value < 5 or objs.Boxpcl.Amount.Value < 5 or objs.Boxtom.Amount.Value < 5 or objs.Boxchz.Amount.Value < 5 then
        args = {
            [1] = "Order",
            [2] = "Veggies"
        }

        tell:FireServer(unpack(args))
end

if objs.Boxbbun.Amount.Value < 5 or objs.Boxtbun.Amount.Value < 5 then
        args = {
            [1] = "Order",
            [2] = "Bread"
        }

        tell:FireServer(unpack(args))
end

if objs.Boxfri.Amount.Value < 5 then
        args = {
            [1] = "Order",
            [2] = "Fries"
        }

        tell:FireServer(unpack(args))
end

if objs.Boxreal.Amount.Value < 5 or objs.BoxFriCon.Amount.Value < 5 then
        args = {
            [1] = "Order",
            [2] = "Cups"
        }

        tell:FireServer(unpack(args))
end

if objs.BoxBag.Amount.Value < 5 or objs.Boxtray.Amount.Value < 5 then
        args = {
            [1] = "Order",
            [2] = "Trays"
        }

        tell:FireServer(unpack(args))
end

end