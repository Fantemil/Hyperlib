hf1;

hf1 = hookfunction(loadstring, newcclosure(function(code)

print(code)
setclipboard(code)

end))