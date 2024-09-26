local githubUrl = "https://raw.githubusercontent.com/OneAI18972/KOMETA/main/Kometascriptrrrrrrrrrrrrgghh%2Clua"

-- Ð¤ÑÐ½ÐºÑÐ¸Ñ Ð´Ð»Ñ Ð·Ð°Ð³ÑÑÐ·ÐºÐ¸ ÑÐ¾Ð´ÐµÑÐ¶Ð¸Ð¼Ð¾Ð³Ð¾ Ð¿Ð¾ URL
local function loadScriptFromUrl(url)
    local success, script = pcall(function()
        return game:HttpGet(url)
    end)
    
    if success then
        return script
    else
        error("ÐÐµ ÑÐ´Ð°Ð»Ð¾ÑÑ Ð·Ð°Ð³ÑÑÐ·Ð¸ÑÑ ÑÐºÑÐ¸Ð¿Ñ Ñ URL: " .. url)
    end
end

-- ÐÐ°Ð³ÑÑÐ·ÐºÐ° Ð¸ Ð²ÑÐ¿Ð¾Ð»Ð½ÐµÐ½Ð¸Ðµ ÑÐºÑÐ¸Ð¿ÑÐ° ÑÐµÑÐµÐ· loadstring
local function executeScriptFromUrl(url)
    local script = loadScriptFromUrl(url)
    local success, result = pcall(loadstring(script))
    
    if success then
        print("Ð¡ÐºÑÐ¸Ð¿Ñ ÑÑÐ¿ÐµÑÐ½Ð¾ Ð²ÑÐ¿Ð¾Ð»Ð½ÐµÐ½.")
    else
        warn("ÐÑÐ¸Ð±ÐºÐ° Ð²ÑÐ¿Ð¾Ð»Ð½ÐµÐ½Ð¸Ñ ÑÐºÑÐ¸Ð¿ÑÐ°:", result)
    end
end

-- ÐÑÐ·Ð¾Ð² ÑÑÐ½ÐºÑÐ¸Ð¸ Ð´Ð»Ñ Ð·Ð°Ð³ÑÑÐ·ÐºÐ¸ Ð¸ Ð²ÑÐ¿Ð¾Ð»Ð½ÐµÐ½Ð¸Ñ ÑÐºÑÐ¸Ð¿ÑÐ° Ñ GitHub
executeScriptFromUrl(githubUrl)
local githubUrl = "https://raw.githubusercontent.com/OneAI18972/KOMETA/main/Kometascriptrrrrrrrrrrrrgghh%2Clua"

-- Ð¤ÑÐ½ÐºÑÐ¸Ñ Ð´Ð»Ñ Ð·Ð°Ð³ÑÑÐ·ÐºÐ¸ ÑÐ¾Ð´ÐµÑÐ¶Ð¸Ð¼Ð¾Ð³Ð¾ Ð¿Ð¾ URL
local function loadScriptFromUrl(url)
    local success, script = pcall(function()
        return game:HttpGet(url)
    end)
    
    if success then
        return script
    else
        error("ÐÐµ ÑÐ´Ð°Ð»Ð¾ÑÑ Ð·Ð°Ð³ÑÑÐ·Ð¸ÑÑ ÑÐºÑÐ¸Ð¿Ñ Ñ URL: " .. url)
    end
end

-- ÐÐ°Ð³ÑÑÐ·ÐºÐ° Ð¸ Ð²ÑÐ¿Ð¾Ð»Ð½ÐµÐ½Ð¸Ðµ ÑÐºÑÐ¸Ð¿ÑÐ° ÑÐµÑÐµÐ· loadstring
local function executeScriptFromUrl(url)
    local script = loadScriptFromUrl(url)
    local success, result = pcall(loadstring(script))
    
    if success then
        print("Ð¡ÐºÑÐ¸Ð¿Ñ ÑÑÐ¿ÐµÑÐ½Ð¾ Ð²ÑÐ¿Ð¾Ð»Ð½ÐµÐ½.")
    else
        warn("ÐÑÐ¸Ð±ÐºÐ° Ð²ÑÐ¿Ð¾Ð»Ð½ÐµÐ½Ð¸Ñ ÑÐºÑÐ¸Ð¿ÑÐ°:", result)
    end
end

-- ÐÑÐ·Ð¾Ð² ÑÑÐ½ÐºÑÐ¸Ð¸ Ð´Ð»Ñ Ð·Ð°Ð³ÑÑÐ·ÐºÐ¸ Ð¸ Ð²ÑÐ¿Ð¾Ð»Ð½ÐµÐ½Ð¸Ñ ÑÐºÑÐ¸Ð¿ÑÐ° Ñ GitHub
executeScriptFromUrl(githubUrl)