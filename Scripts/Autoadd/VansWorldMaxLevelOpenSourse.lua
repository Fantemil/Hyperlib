local Library =
   loadstring(game:HttpGet("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()

local AutoTab = Library:CreateTab("Vans World", "things", true)

AutoTab:CreateToggle(
   "Auto Farm Exp",
   function(kd55fs)
       _G.toggle5fs21 = kd55fs or false
       game:GetService("RunService").Stepped:connect(
           function()
               if _G.toggle5fs21 then
                   pcall(
                       function()
                           local A_1 = true
                           local A_2 = 0
                           local A_3 = 0
                           local A_4 = {
                               [1] = {
                                   ["TrickName"] = "Kickflip",
                                   ["HasbeenReported"] = true,
                                   ["IsRampTrick"] = false,
                                   ["Value"] = 99999999999
                               },
                               [2] = {
                                   ["TrickName"] = "PopShoveIt180",
                                   ["HasbeenReported"] = true,
                                   ["IsRampTrick"] = false,
                                   ["Value"] = 99999999999
                               },
                               [3] = {
                                   ["TrickName"] = "Kickflip",
                                   ["HasbeenReported"] = true,
                                   ["IsRampTrick"] = false,
                                   ["Value"] = 99999999999
                               },
                               [4] = {
                                   ["TrickName"] = "PopShoveIt180",
                                   ["HasbeenReported"] = true,
                                   ["IsRampTrick"] = false,
                                   ["Value"] = 99999999999
                               },
                               [5] = {
                                   ["TrickName"] = "Kickflip",
                                   ["HasbeenReported"] = true,
                                   ["IsRampTrick"] = false,
                                   ["Value"] = 99999999999
                               },
                               [6] = {
                                   ["TrickName"] = "PopShoveIt180",
                                   ["HasbeenReported"] = true,
                                   ["IsRampTrick"] = false,
                                   ["Value"] = 99999999999
                               },
                               [7] = {
                                   ["TrickName"] = "Heelflip",
                                   ["HasbeenReported"] = true,
                                   ["IsRampTrick"] = false,
                                   ["Value"] = 99999999999
                               },
                               [8] = {
                                   ["TrickName"] = "Indy",
                                   ["HasbeenReported"] = true,
                                   ["IsRampTrick"] = false,
                                   ["Value"] = 99999999999
                               },
                               [9] = {
                                   ["TrickName"] = "Kickflip",
                                   ["HasbeenReported"] = true,
                                   ["IsRampTrick"] = false,
                                   ["Value"] = 99999999999
                               },
                               [10] = {
                                   ["TrickName"] = "PopShoveIt180",
                                   ["HasbeenReported"] = true,
                                   ["IsRampTrick"] = false,
                                   ["Value"] = 99999999999
                               },
                               [11] = {
                                   ["TrickName"] = "Indy",
                                   ["HasbeenReported"] = true,
                                   ["IsRampTrick"] = false,
                                   ["Value"] = 99999999999.95881458371878
                               },
                               [12] = {
                                   ["TrickName"] = "Kickflip",
                                   ["HasbeenReported"] = true,
                                   ["IsRampTrick"] = false,
                                   ["Value"] = 99999999999
                               }
                           }
                           game:GetService("ReplicatedStorage")["Tricks_TrickLanded"]:FireServer(A_1, A_2, A_3, A_4)
                       end
                   )
               end
           end
       )
   end
)