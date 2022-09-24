 _G.editorAutoFarm = true;
print("script made by z33n#4012")

while _G.editorAutoFarm == true do

local args = {
    [1] = "REPLACE ME", --replace with coords of your editor, (you can see with simplespy)
    [2] = "Editor"
}

game:GetService("ReplicatedStorage").FreshFunctions.AddSD:FireServer(unpack(args))

local args = {
    [1] = "REPLACE ME", --replace with coords of your editor, (you can see with simplespy)
    [2] = "Editor"
}

game:GetService("ReplicatedStorage").FreshFunctions.Collect:FireServer(unpack(args))


wait(.500)
end 