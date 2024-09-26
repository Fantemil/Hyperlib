local http_request

if syn then
    http_request = syn.request
elseif SENTINEL_V2 then
    http_request = function(tb)
        return {
            StatusCode = 200,
            Body = request(tb.Url, tb.Method, tb.Body or '')
        }
    end
else
    http_request = request
end

function get_hwid()
    local response = http_request({
        Url = 'https://httpbin.org/get',
        Method = 'GET'
    })

    local decoded_body = game:GetService('HttpService'):JSONDecode(response.Body)
    local hwid_keys = {
        "Syn-Fingerprint",
        "Exploit-Guid",
        "Krnl-Hwid",
        "Sw-Fingerprint",
        "Wave-Fingerprint"
    }

    for _, key in ipairs(hwid_keys) do
        if decoded_body.headers[key] then
            return decoded_body.headers[key]
        end
    end

    return nil
end

_G.get_hwid = get_hwid