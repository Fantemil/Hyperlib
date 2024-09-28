local HttpService = game:GetService("HttpService")

local Ai = {} do
  function Ai:AI_SYSTEM(args: string)
    if not args then return nil end

    local API = "https://tilki.dev/api/hercai?soru=" .. HttpService:UrlEncode(args)
    local _Succ, _Res = pcall(function()
      return game:HttpGet(API)
    end)

    if _Succ then
      return _Res
    else
      print("Failed")return nil
    end
  end

  function Ai:DECODE_JSON(args: string)
    if not args then return nil end

    local _Res = Ai:AI_SYSTEM(args)
    if _Res then
      return HttpService:JSONDecode(_Res)
    end
    return nil
  end
end

local _res = Ai:DECODE_JSON("Hello")

if _res and _res["cevap"] then
  print(_res["cevap"])
end