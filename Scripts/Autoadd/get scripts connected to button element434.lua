scripttouse = button here

for i, connection in pairs(getconnections(scripttouse.MouseButton1Click)) do
    print(debug.getinfo(connection.Function).source)
end
for i, connection in pairs(getconnections(scripttouse.Activated)) do
    print(debug.getinfo(connection.Function).source)
end