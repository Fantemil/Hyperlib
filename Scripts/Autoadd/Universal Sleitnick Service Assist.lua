--// Getting Knit Service
local Knit             = game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit")
local KnitClient       = require(Knit:WaitForChild("KnitClient"))

--// Getting Functions
local CreateController = KnitClient.CreateController
local GetService       = KnitClient.GetService

--// Getting Tables
local Controllers      = getupvalue(CreateController, 1)
local Services         = getupvalue(GetService, 1)

--// Service Functions
local function DumpServices(Callback)
    table.foreach(Services, Callback) 
end

local function DumpServiceContents(Service, Callback)
    table.foreach(Services[Service], Callback)
end

--// Controller Functions
local function DumpControllers(Callback)
    table.foreach(Controllers, Callback) 
end

local function DumpControllerContents(Controller, Callback)
    table.foreach(Controllers[Controller], Callback)
end

--// Prints All Controllers In Console
DumpControllers(print)

--// Dumps Contents Of Inputted Controller Name
DumpControllerContents("CodeController", print)

--// Prints All Services In Console
DumpServices(print)

--// Dumps Contents Of Inputted Service Name
DumpServiceContents("ClickService", print)