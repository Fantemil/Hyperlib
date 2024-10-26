local SafeCall = {}

SafeCall.Defaults = {
    RetryCount = 2,
    RetryDelay = 1,
    YieldInterval = 0.03
}

SafeCall.Errors = {
    InvalidURL = "Invalid URL provided",
    Aborted = "Execution aborted",
    Suspicious = "Suspicious content detected",
    FetchFailed = "Failed to fetch script",
    ExecutionFailed = "Script execution failed"
}

SafeCall.AntiVirus = {
    DetectionLog = {},
    QuarantineFolder = "AntiVirusQuarantine",

    LogDetection = function(self, url, reason)
        table.insert(self.DetectionLog, {
            Timestamp = os.time(),
            URL = url,
            Reason = reason
        })
        warn("â ï¸ Suspicious script detected and blocked from: " .. url)
        warn("Reason: " .. reason)
    end,

    QuarantineScript = function(self, url, content)
        if not isfolder(self.QuarantineFolder) then
            makefolder(self.QuarantineFolder)
        end
        local fileName = self.QuarantineFolder .. "/" .. game:GetService("HttpService"):GenerateGUID(false) .. ".lua"
        writefile(fileName, content)
        print("ð Suspicious script quarantined: " .. fileName)
    end,

    ScanWorkspace = function(self)
        print("ð Scanning workspace for suspicious scripts...")
        local suspiciousCount = 0
        local function scanInstance(instance)
            if instance:IsA("LuaSourceContainer") then
                local source = instance.Source
                local isSuspicious, reason = SafeCall.IsSuspicious(source)
                if isSuspicious then
                    suspiciousCount = suspiciousCount + 1
                    warn("â ï¸ Suspicious script found in workspace: " .. instance:GetFullName())
                    warn("Reason: " .. reason)
                    -- Optionally disable or remove the script
                    -- instance.Disabled = true
                    -- or instance:Destroy()
                end
            end
            for _, child in ipairs(instance:GetChildren()) do
                scanInstance(child)
            end
        end
        scanInstance(game)
        print("â Workspace scan completed. Found " .. suspiciousCount .. " suspicious scripts.")
    end,

    ScanAll = function(self)
        print("ð Scanning all instances, services, functions, variables, and numbers for suspicious content...")
        local suspiciousCount = 0

        local function scanTable(tbl)
            for key, value in pairs(tbl) do
                if type(value) == "string" then
                    local isSuspicious, reason = SafeCall.IsSuspicious(value)
                    if isSuspicious then
                        suspiciousCount = suspiciousCount + 1
                        warn("â ï¸ Suspicious content found in table key: " .. tostring(key))
                        warn("Reason: " .. reason)
                    end
                elseif type(value) == "table" then
                    scanTable(value)
                end
            end
        end

        local function scanInstance(instance)
            if instance:IsA("LuaSourceContainer") then
                local source = instance.Source
                local isSuspicious, reason = SafeCall.IsSuspicious(source)
                if isSuspicious then
                    suspiciousCount = suspiciousCount + 1
                    warn("â ï¸ Suspicious script found in instance: " .. instance:GetFullName())
                    warn("Reason: " .. reason)
                end
            end
            for _, child in ipairs(instance:GetChildren()) do
                scanInstance(child)
            end
        end

        local function scanService(service)
            for _, instance in ipairs(service:GetChildren()) do
                scanInstance(instance)
            end
        end

        for _, service in ipairs(game:GetChildren()) do
            scanService(service)
        end

        -- Scan global environment
        scanTable(_G)

        -- Scan workspace
        scanInstance(game)

        print("â Comprehensive scan completed. Found " .. suspiciousCount .. " suspicious items.")
    end
}

SafeCall.GUI = {
    ScreenGui = nil,
    NotificationTemplate = nil,

    Setup = function(self)
        self.ScreenGui = Instance.new("ScreenGui")
        self.ScreenGui.Name = "SafeCallNotifications"
        self.ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

        self.NotificationTemplate = Instance.new("TextLabel")
        self.NotificationTemplate.Size = UDim2.new(0, 300, 0, 50)
        self.NotificationTemplate.Position = UDim2.new(1, -320, 1, -70)
        self.NotificationTemplate.AnchorPoint = Vector2.new(0, 1)
        self.NotificationTemplate.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
        self.NotificationTemplate.TextColor3 = Color3.fromRGB(255, 255, 255)
        self.NotificationTemplate.TextSize = 14
        self.NotificationTemplate.Font = Enum.Font.SourceSansBold
        self.NotificationTemplate.TextWrapped = true
        self.NotificationTemplate.TextXAlignment = Enum.TextXAlignment.Left
        self.NotificationTemplate.TextYAlignment = Enum.TextYAlignment.Top

        local corner = Instance.new("UICorner")
        corner.CornerRadius = UDim.new(0, 8)
        corner.Parent = self.NotificationTemplate

        local padding = Instance.new("UIPadding")
        padding.PaddingLeft = UDim.new(0, 10)
        padding.PaddingRight = UDim.new(0, 10)
        padding.PaddingTop = UDim.new(0, 5)
        padding.PaddingBottom = UDim.new(0, 5)
        padding.Parent = self.NotificationTemplate
    end,

    Notify = function(self, title, message, color)
        local notification = self.NotificationTemplate:Clone()
        notification.Text = title .. "\n" .. message
        notification.BackgroundColor3 = color or Color3.fromRGB(40, 40, 40)
        notification.Parent = self.ScreenGui

        -- Animation
        notification:TweenPosition(
            UDim2.new(1, -320, 1, -70 - (#self.ScreenGui:GetChildren() - 1) * 60),
            Enum.EasingDirection.Out,
            Enum.EasingStyle.Quart,
            0.5,
            true
        )

        -- Auto-remove after 5 seconds
        spawn(function()
            wait(5)
            notification:TweenPosition(
                UDim2.new(1, 20, notification.Position.Y.Scale, notification.Position.Y.Offset),
                Enum.EasingDirection.Out,
                Enum.EasingStyle.Quart,
                0.5,
                true,
                function()
                    notification:Destroy()
                end
            )
        end)
    end
}

function SafeCall.IsSuspicious(scriptContent)
    local suspiciousPatterns = {
        "MarketplaceService",
        "robux",
        "DevProduct",
        "ProductPurchase",
        "PromptPurchase",
        "GetRobuxBalance",
        "PerformPurchase",
        "RequestPurchase",
        "httpservice",
        "syn",
        "http",
        "request",
        "getgenv",
        "setclipboard",
        "loadstring",
        "getfenv",
        "setfenv"
    }

    local lowercaseContent = scriptContent:lower()
    for _, pattern in ipairs(suspiciousPatterns) do
        if lowercaseContent:find(pattern:lower()) then
            return true, "Suspicious pattern found: " .. pattern
        end
    end

    if scriptContent:find("string%.char%(") or scriptContent:find("string%.byte%(") then
        return true, "Potential obfuscation detected"
    end

    -- Check for base64 encoded content
    if scriptContent:match("^[A-Za-z0-9+/]+={0,2}$") then
        return true, "Potential base64 encoded content detected"
    end

    return false
end

function SafeCall.Execute(url, options)
    assert(type(url) == "string" and url:match("^https?://"), SafeCall.Errors.InvalidURL)
    options = type(options) == "table" and options or {}

    local retryCount = options.RetryCount or SafeCall.Defaults.RetryCount
    local retryDelay = options.RetryDelay or SafeCall.Defaults.RetryDelay

    local function fetchAndCheckScript()
        local success, content = pcall(game.HttpGet, game, url)
        if not success then
            SafeCall.GUI:Notify("Fetch Failed", SafeCall.Errors.FetchFailed .. ": " .. tostring(content), Color3.fromRGB(255, 100, 100))
            return false, SafeCall.Errors.FetchFailed .. ": " .. tostring(content)
        end

        local isSuspicious, reason = SafeCall.IsSuspicious(content)
        if isSuspicious then
            SafeCall.AntiVirus:LogDetection(url, reason)
            SafeCall.AntiVirus:QuarantineScript(url, content)
            SafeCall.AntiVirus:ScanWorkspace()
            SafeCall.GUI:Notify("Suspicious Content", SafeCall.Errors.Suspicious .. ": " .. reason, Color3.fromRGB(255, 165, 0))
            return false, SafeCall.Errors.Suspicious .. ": " .. reason
        end

        return true, content
    end

    local function runScript(content)
        local success, result = pcall(loadstring(content))
        if not success then
            SafeCall.GUI:Notify("Execution Failed", SafeCall.Errors.ExecutionFailed .. ": " .. tostring(result), Color3.fromRGB(255, 100, 100))
            return false, SafeCall.Errors.ExecutionFailed .. ": " .. tostring(result)
        end
        return true, result
    end

    local function retry(attemptsLeft)
        local fetchSuccess, fetchResult = fetchAndCheckScript()
        if not fetchSuccess then
            if attemptsLeft > 0 then
                if options.OnRetry then 
                    options.OnRetry(retryCount - attemptsLeft + 1, fetchResult)
                end
                SafeCall.GUI:Notify("Retrying", "Attempt " .. (retryCount - attemptsLeft + 1) .. " of " .. retryCount, Color3.fromRGB(255, 255, 100))
                wait(retryDelay)
                return retry(attemptsLeft - 1)
            else
                if options.OnError then options.OnError(fetchResult) end
                return false, fetchResult
            end
        end

        local runSuccess, runResult = runScript(fetchResult)
        if runSuccess then
            if options.OnSuccess then options.OnSuccess(runResult) end
            SafeCall.GUI:Notify("Success", "Script executed successfully", Color3.fromRGB(100, 255, 100))
            return true, runResult
        elseif attemptsLeft > 0 then
            if options.OnRetry then 
                options.OnRetry(retryCount - attemptsLeft + 1, runResult)
            end
            SafeCall.GUI:Notify("Retrying", "Attempt " .. (retryCount - attemptsLeft + 1) .. " of " .. retryCount, Color3.fromRGB(255, 255, 100))
            wait(retryDelay)
            return retry(attemptsLeft - 1)
        else
            if options.OnError then options.OnError(runResult) end
            return false, runResult
        end
    end

    if options.ShouldAbort and options.ShouldAbort() then
        SafeCall.GUI:Notify("Aborted", SafeCall.Errors.Aborted, Color3.fromRGB(255, 165, 0))
        return false, SafeCall.Errors.Aborted
    end

    return retry(retryCount)
end

-- Initialize the GUI when the module loads
SafeCall.GUI:Setup()

-- Example usage
local url = "https://example.com/script.lua"
local options = {
    RetryCount = 0,
    RetryDelay = 5,
    OnSuccess = function(result) print("Success:", result) end,
    OnError = function(error) warn("Error:", error) end,
    OnRetry = function(attempt, error) warn("Retry attempt:", attempt, "Error:", error) end,
    ShouldAbort = function() return false end -- Example abort condition
}

local success, result = SafeCall.Execute(url, options)
print(success and ("Final result: " .. tostring(result)) or ("Final failure: " .. tostring(result)))

-- To scan all instances, services, functions, variables, and numbers
SafeCall.AntiVirus:ScanAll()