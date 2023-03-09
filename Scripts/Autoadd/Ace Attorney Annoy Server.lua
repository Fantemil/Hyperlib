getgenv().spam = true --change to false if stop
while wait() do
if getgenv().spam == true then
local args = {
   [1] = "##########", --u can change this to any text of your liking (still filtered though)
   [2] = "Judge", --can change but its kinda useless(judge, prosecutor, defense, witness)
   [3] = "Slam", --u can change it to Point, Slam, Laugh or change it to nothing
   [4] = "Objection", --u can change this to nothing (empty), Objection, Holdit or Order
   [5] = false
}

workspace.Main.General.Speak:FireServer(unpack(args))
end
end