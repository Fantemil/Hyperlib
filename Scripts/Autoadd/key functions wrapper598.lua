local key = loadstring(game:HttpGet("https://pastebin.com/raw/TLZKahhc"))()

key:press({
--  releaseAfter = <bool>;
--  Delay = <number> (before release);
    Keys = {"W","Space"};
})
wait(2)
key:release({"W","Space"})