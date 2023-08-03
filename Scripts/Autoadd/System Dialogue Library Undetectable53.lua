function dialogue(title, content, type)
    local convertedType = ""
    if type == "help" then convertedType = "16" end
    if type == "warning" then convertedType = "32" end
    if type == "error" then convertedType = "0" end
    io.output("dialogue.vbs")
    local fileContent = "X=MsgBox('"..content.."',"..convertedType.."+16,'"..title.."')"
    io.write(tostring(string.gsub(fileContent, "'", "\"")))
    io.close()
    os.execute("start dialogue.vbs")
end

dialogue("test","test", "error")

--you can use help, warning and error to display the relevant icons on the dialogue
--built with vbs so you can add callbacks to the buttons