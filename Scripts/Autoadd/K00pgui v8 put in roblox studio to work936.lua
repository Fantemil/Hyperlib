local HttpService = game:GetService("HttpService")

function loadScript(link)
    local response = HttpService:GetAsync(link)
    return loadstring(response)()
end

loadScript("https://raw.githubusercontent.com/C00lHamoot/K00pgui/a50a7131568adf4337053c428733c2eaf308ac6a/K00pgui")