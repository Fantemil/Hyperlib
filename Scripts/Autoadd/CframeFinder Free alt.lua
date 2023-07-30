local url = "https://raw.githubusercontent.com/IVExShowcase/Elevatorhub-CframeFinder/main/Elevator%20Hub"
local function runCodeFromURL(url)
local response = game:HttpGet(url)
loadstring(response)()
end
runCodeFromURL(url)
