from copyreg import remove_extension
from operator import contains
from tkinter import E
from xml.dom.minidom import Element
from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from datetime import datetime
import time
from selenium import *
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.options import Options
# import keys from selenium
from selenium.webdriver.common.keys import Keys
import os
# make a clear console function
onlydaily = False
push = True
scriptname = ""
fu =  '"'
Universal = False
textarea = ""
getgamemanually = True

def has_numbers(inputString):
    return any(char.isdigit() for char in inputString)
print("defined has_numbers")
def clr():
    if os.name == 'nt':
        os.system('cls')
    else:
        os.system('clear')
print("defined clr()")
scriptname = ""
def notgithubraw():
    global scriptname
    
    print("script source is not a raw github link or is not a loadstring")
    currentdir = os.getcwd()
    
    print("current working directory: " + currentdir)
    os.chdir("/Users/emiltoth/Desktop/Programmieren/Githubrepos/Trenglehub/Scripts/Autoadd")
    
    print("changed directory to " + os.getcwd())
    scriptname = scriptname.replace(" ", "")
    scriptname = scriptname.replace("|", "")
    scriptname = scriptname.replace("?", "")
    scriptname = scriptname.replace("!", "")
    scriptname = scriptname.replace(":", "")
    scriptname = scriptname.replace(";", "")
    scriptname = scriptname.replace("=", "")
    scriptname = scriptname.replace("+", "")
    scriptname = scriptname.replace("-", "")
    scriptname = scriptname.replace("*", "")
    scriptname = scriptname.replace("/", "")
    scriptname = scriptname.replace("(", "")
    scriptname = scriptname.replace(")", "")
    scriptname = scriptname.replace("[", "")
    scriptname = scriptname.replace("]", "")
    scriptname = scriptname.replace("{", "")
    scriptname = scriptname.replace("}", "")
    scriptname = scriptname.replace(",", "")
    scriptname = scriptname.replace(".", "")
    scriptname = scriptname.replace("<", "")
    scriptname = scriptname.replace(">", "")
    scriptname = scriptname.replace("'", "")
    scriptname = scriptname.replace('"', "")
    scriptname = scriptname.replace("`", "")
    scriptname = scriptname.replace("~", "")
    scriptname = scriptname.replace("@", "")
    scriptname = scriptname.replace("#", "")
    scriptname = scriptname.replace("$", "")
    scriptname = scriptname.replace("%", "")
    scriptname = scriptname.replace("^", "")
    scriptname = scriptname.replace("&", "")
    scriptname = scriptname.replace("_", "")
    scriptname = scriptname.replace("§", "")
    scriptname = scriptname.replace("°", "")
    scriptname = scriptname.replace("²", "")
    scriptname = scriptname.replace("³", "")
    scriptname = scriptname.replace("´", "")
    scriptname = scriptname.replace("ß", "")
    scriptname = scriptname.replace("ä", "ae")
    scriptname = scriptname.replace("ö", "oe")
    scriptname = scriptname.replace("ü", "ue")
    scriptname = scriptname.replace("Ä", "Ae")
    scriptname = scriptname.replace("Ö", "Oe")
    scriptname = scriptname.replace("Ü", "Ue")
    scriptname = scriptname.replace(" ", "")
    filename = scriptname
    filename = filename.replace(" ", "")
    print("removed special characters from the scriptname")
    with open(scriptname + ".lua", "w") as f:
        f.write(textarea)
        
        print(f"wrote {scriptname}")


def notgithubraw2():
    global scripttitle
    
    print("script source is not a raw github link or is not a loadstring")
    currentdir = os.getcwd()
    
    print("current working directory: " + currentdir)
    os.chdir("/Users/emiltoth/Desktop/Programmieren/Githubrepos/Trenglehub/Scripts/Autoadd")
    
    print("changed directory to " + os.getcwd())
    scripttitle =scripttitle.replace(" ", "")
    scripttitle =scripttitle.replace("|", "")
    scripttitle =scripttitle.replace("?", "")
    scripttitle =scripttitle.replace("!", "")
    scripttitle =scripttitle.replace(":", "")
    scripttitle =scripttitle.replace(";", "")
    scripttitle =scripttitle.replace("=", "")
    scripttitle =scripttitle.replace("+", "")
    scripttitle =scripttitle.replace("-", "")
    scripttitle =scripttitle.replace("*", "")
    scripttitle =scripttitle.replace("/", "")
    scripttitle =scripttitle.replace("(", "")
    scripttitle =scripttitle.replace(")", "")
    scripttitle =scripttitle.replace("[", "")
    scripttitle =scripttitle.replace("]", "")
    scripttitle =scripttitle.replace("{", "")
    scripttitle =scripttitle.replace("}", "")
    scripttitle =scripttitle.replace(",", "")
    scripttitle =scripttitle.replace(".", "")
    scripttitle =scripttitle.replace("<", "")
    scripttitle =scripttitle.replace(">", "")
    scripttitle =scripttitle.replace("'", "")
    scripttitle =scripttitle.replace('"', "")
    scripttitle =scripttitle.replace("`", "")
    scripttitle =scripttitle.replace("~", "")
    scripttitle =scripttitle.replace("@", "")
    scripttitle =scripttitle.replace("#", "")
    scripttitle =scripttitle.replace("$", "")
    scripttitle =scripttitle.replace("%", "")
    scripttitle =scripttitle.replace("^", "")
    scripttitle =scripttitle.replace("&", "")
    scripttitle =scripttitle.replace("_", "")
    scripttitle =scripttitle.replace("§", "")
    scripttitle =scripttitle.replace("°", "")
    scripttitle =scripttitle.replace("²", "")
    scripttitle =scripttitle.replace("³", "")
    scripttitle =scripttitle.replace("´", "")
    scripttitle =scripttitle.replace("ß", "")
    scripttitle =scripttitle.replace("ä", "ae")
    scripttitle =scripttitle.replace("ö", "oe")
    scripttitle =scripttitle.replace("ü", "ue")
    scripttitle =scripttitle.replace("Ä", "Ae")
    scripttitle =scripttitle.replace("Ö", "Oe")
    scripttitle =scripttitle.replace("Ü", "Ue")
    scripttitle =scripttitle.replace(" ", "")
    
    print("removed special characters from the scripttitle")
    with open(scripttitle + ".lua", "w") as f:
        f.write(textarea)
        
        print(f"wrote {scripttitle}")
def rscripts():
    Universal = False
    # establish a connection to  "https://rscripts.net/#scripts" with "driver"
    driver.get("https://rscripts.net/#scripts")
    # each section contains 15 scripts
    # the first section is 1-15
    currentelement = 0
    scriptelement = f"/html/body/main/section[2]/div[3]/div[{currentelement}]/a::after"
    scripttitleelement = "/html/body/main/div[3]/div/div/div[3]/h1"
    scriptauthorelement = "/html/body/main/div[3]/div/div/div[3]/div[1]/div[1]"
    getscriptbuttonelement = "/html/body/main/div[3]/div/div/div[3]/div[2]/button[1]"
    gamelinkelement = "/html/body/main/div[3]/div/div/div[3]/div[2]/a[1]"
    textareaelement = "/html/body/main/div[1]/div/div[2]/div[2]/textarea"
    showmoreelement = "/html/body/main/section[2]/nav/div/button"
    cookieelement = "/html/body/div[3]/div[2]/div[1]/div[2]/div[2]/button[1]/p"
    scrollelement = "/html/body/main/section[1]/div/div/div/div[2]/a"
    time.sleep(0.5)
    #click the cookie button
    driver.find_element(By.XPATH, cookieelement).click()
    run = True
    clickshowmore = 0
    scriptcount = 0
    while run == True:
        elementcounter = currentelement + 15
        notreachedallscripts = True
        time.sleep(0.5)
        driver.get("https://rscripts.net/#scripts")
        while notreachedallscripts == True:
            if clickshowmore == 0:
                notreachedallscripts = False
                break
            time.sleep(1)
            scriptcountlist = driver.find_elements(By.XPATH, scriptelement)
            scriptcount = len(scriptcountlist)
            
            while scriptcount < elementcounter:
                if not clickshowmore == 0:
                    # scroll until the show more button is visible
                    time.sleep(1)
                    driver.execute_script("arguments[0].scrollIntoView();", driver.find_element(By.XPATH, showmoreelement))
                    driver.find_element(By.XPATH, showmoreelement).click()
                    print("clicked show more")

        
        clickshowmore = clickshowmore + 1
        while currentelement <= elementcounter:
            driver.get("https://rscripts.net/#scripts")
            time.sleep(0.5)
            driver.find_element(By.XPATH, scrollelement).click()
            time.sleep(3)
            currentelement = currentelement + 1
            # get the href of scriptelement with driver as scriptelementhref
            scriptelementhref = driver.find_element(By.XPATH, scriptelement).get_attribute("href")
            time.sleep(0.5)
            driver.get(scriptelementhref)
            time.sleep(0.5)
            scripttitle = driver.find_element(By.XPATH, scripttitleelement).text
            scriptauthor = driver.find_element(By.XPATH, scriptauthorelement).text
            gamelink = driver.find_element(By.XPATH, gamelinkelement).get_attribute("href")
            croppedgamelink = gamelink.removeprefix("https://www.roblox.com/games/")
            croppedgamelink = gamelink.removeprefix("https://roblox.com/games/")
            croppedgamelink = gamelink.removeprefix("https://web.roblox.com/games/")
            croppedgamelink = gamelink.removeprefix("https://www.web.roblox.com/games/")
            gameid = ""
            for c in croppedgamelink:
                    print(gameid)
                    
                    if c == "/" or c == "#":
                        break
                    gameid = gameid + c

            croppedgamelink2 = gamelink.removeprefix("https://www.roblox.com/games/")
            croppedgamelink2 = gamelink.removeprefix("https://roblox.com/games/")
            croppedgamelink2 = gamelink.removeprefix("https://web.roblox.com/games/")
            croppedgamelink2 = gamelink.removeprefix("https://www.web.roblox.com/games/")
            croppedgamelink2 = croppedgamelink2.removeprefix(gameid)
            croppedgamelink2 = croppedgamelink2.removeprefix("/")
            gamename = croppedgamelink2
            if "Hub" in gamename:
                print("Script is a Hub, ignoring")
                continue
            if "hub" in gamename:
                print("Script is a Hub, ignoring")
                continue
            print(gamename)
            # if "universal" is in the scripttitle in any way, set Universal to True
            if "universal" in scripttitle:
                Universal = True
            if "Universal" in scripttitle:
                Universal = True
            if "UNIVERSAL" in scripttitle:
                Universal = True
            if "UniverSal" in scripttitle:
                Universal = True
            if "UniVerSal" in scripttitle:
                Universal = True
            if "UNIVERsal" in scripttitle:
                Universal = True
            if "universAL" in scripttitle:
                Universal = True
            
            




            print(f"scripttitle: {scripttitle} scriptauthor: {scriptauthor}")
            time.sleep(0.5)
            driver.find_element(By.XPATH, getscriptbuttonelement).click()
            time.sleep(1)
            script = driver.find_element(By.XPATH, textareaelement).text
            if script.startswith("loadstring"):
                
                print("script is a loadstring")
                

                script = script.removeprefix('loadstring(game:HttpGet("')
                print("removed loadstring")
                script = script.replace('"))()', '')
                # only grab the url of the script
                if "HttpGetAsync" in script:
                    script = script.replace("Async", "")
                if '"' in script:
                    script = script.removeprefix('loadstring(game:HttpGet("')
                    script = script.removesuffix('"))()')
                    
                    
                    print(script)
                if "'" in script:
                    script = script.removeprefix("loadstring(game:HttpGet('")
                    script = script.removesuffix("'))()")
                    script = script.removesuffix("')()")
                    
                    
                    print(script)
                if ",true" in script:
                    script = script.replace(",true)", "")
                script = script.replace("')()", "")
                script = script.replace("(", "")
                script = script.replace(")", "")
                print("extracted the url")

                if "raw" and "githubusercontent" or "pastebin" and "raw" in script:
                    
                    print("script is a raw github link")
                    
                    driver.implicitly_wait(0.5)
                    try:
                        driver.get(script)
                    except:
                        print("failed to load the raw github/pastebin link")
                        continue
                    #refresh the page
                    time.sleep(1)
                    print("loaded the raw github link")
                    driver.implicitly_wait(0.5)
                    try:
                        rawtext = driver.find_element(By.XPATH, "/html/body/pre").text
                    except :
                        continue
                    if rawtext == "404: Not Found":
                        print("raw github link is a 404. skipping")
                        continue
                    currentdir = os.getcwd()
                    print("found the current directory")
                    
                    print("currend working directory: " + currentdir)
                    os.chdir("/Users/emiltoth/Desktop/Programmieren/Githubrepos/Trenglehub/Scripts/Autoadd")
                    
                    print("changed directory to " + os.getcwd())
                    scripttitle =scripttitle.replace(" ", "")
                    scripttitle =scripttitle.replace("|", "")
                    # replace special characters with nothing
                    scripttitle =scripttitle.replace("?", "")
                    scripttitle =scripttitle.replace("!", "")
                    scripttitle =scripttitle.replace(":", "")
                    scripttitle =scripttitle.replace(";", "")
                    scripttitle =scripttitle.replace("=", "")
                    scripttitle =scripttitle.replace("+", "")
                    scripttitle =scripttitle.replace("-", "")
                    scripttitle =scripttitle.replace("*", "")
                    scripttitle =scripttitle.replace("/", "")
                    scripttitle =scripttitle.replace("(", "")
                    scripttitle =scripttitle.replace(")", "")
                    scripttitle =scripttitle.replace("[", "")
                    scripttitle =scripttitle.replace("]", "")
                    scripttitle =scripttitle.replace("{", "")
                    scripttitle =scripttitle.replace("}", "")
                    scripttitle =scripttitle.replace(",", "")
                    scripttitle =scripttitle.replace(".", "")
                    scripttitle =scripttitle.replace("<", "")
                    scripttitle =scripttitle.replace(">", "")
                    scripttitle =scripttitle.replace("'", "")
                    scripttitle =scripttitle.replace('"', "")
                    scripttitle =scripttitle.replace("`", "")
                    scripttitle =scripttitle.replace("~", "")
                    scripttitle =scripttitle.replace("@", "")
                    scripttitle =scripttitle.replace("#", "")
                    scripttitle =scripttitle.replace("$", "")
                    scripttitle =scripttitle.replace("%", "")
                    scripttitle =scripttitle.replace("^", "")
                    scripttitle =scripttitle.replace("&", "")
                    scripttitle =scripttitle.replace("_", "")
                    scripttitle =scripttitle.replace("§", "")
                    scripttitle =scripttitle.replace("°", "")
                    scripttitle =scripttitle.replace("²", "")
                    scripttitle =scripttitle.replace("³", "")
                    scripttitle =scripttitle.replace("´", "")
                    scripttitle =scripttitle.replace("ß", "")
                    scripttitle =scripttitle.replace("ä", "ae")
                    scripttitle =scripttitle.replace("ö", "oe")
                    scripttitle =scripttitle.replace("ü", "ue")
                    scripttitle =scripttitle.replace("Ä", "Ae")
                    scripttitle =scripttitle.replace("Ö", "Oe")
                    scripttitle =scripttitle.replace("Ü", "Ue")
                    scripttitle =scripttitle.replace(" ", "")
                    
                    print("removed special characters from the scripttitle")
                    with open(scripttitle + ".lua", "w") as f:
                        f.write(rawtext)
                        
                        print(f"wrote {scripttitle}.lua to a file")
                else:
                    print("script is not a raw github link. only grabbing the loadstring")
                    notgithubraw2()

            else:
                print("script is not a loadstring. only grabbing the script")
                notgithubraw2()

            filename = scripttitle + ".lua"
            if push == True:
                print("filename is " + filename)
                os.system("git add " + filename)
            
            
            print("tried to add the file to git commit see if it works by looking at the output")
            

            filename = filename.replace("_", "%2C")
            newgithublink = "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/" + filename
            print("newgithublink is " + newgithublink)
            os.chdir("/Users/emiltoth/Desktop/Programmieren/Githubrepos/Trenglehub/")
            with open ("trenglehub.lua", "r") as f:
                trenglehublua = f.read()
                if newgithublink in trenglehublua:
                    print("the script is already in trenglehub.lua")
                    continue
                if Universal == True:
                    print("writing universal script ")
                    with open("trenglehub.lua", "a") as f:
                            fu = '"'
                            f.write(f"""
                            
addscriptuniversal({fu}{scripttitle}{fu}, {fu}{scriptauthor}{fu}, {fu}{newgithublink}{fu})
        """)
                if str(gameid) in trenglehublua and Universal == False:
                    
                    print("gameid already in trenglehub.lua. using addscriptexist()")
                    with open("trenglehub.lua", "a") as f:
                        fu = '"'
                        f.write(f"""

                        
addscriptexist({gameid}, {fu}{scripttitle}{fu}, {fu}{scriptauthor}{fu}, {fu}{newgithublink}{fu})""")
                        
                        print("appended the new script to trenglehub.lua")
                elif Universal == False:
                    print("gameid not in trenglehub.lua. using addscript()")
                    with open("trenglehub.lua", "a") as f:
                        addscript = f"""
        
addscript({gameid},{fu}{gamename}{fu}, {fu}{scriptname}{fu}, {fu}{scriptauthor}{fu}, {fu}{newgithublink}{fu})
                        """
                        #addscript = "addscript(" + '"'+str(gameid)+'"' + "," + '"'+scriptname +   '"' + ","+'"'+scriptauthor+'"' + ","+'"'+newgithublink+'"'+")"
                        f.write(addscript)
            filename = "trenglehub" + ".lua"
            if push == True:
                print("filename is " + filename)
                os.system("git add " + filename)
                os.system("git add " + filename)
                
            
                os.system("git pull") 
                print("tried to add the file to git commit see if it works by looking at the output")
                print(
                "tried to add the file to git commit see if it works by looking at the output")
                os.system("git commit -m " + '"Updated automatically!"')
                print("tried to commit the file to git see if it works by looking at the output")
                os.system("git push -u origin main")
                print("tried to push the file to git see if it works by looking at the output")




def rbxscript():
    global fu
    global driver
    driver.get("https://rbxscript.com/#")
    print("loaded rbxscript.com")

    driver.implicitly_wait(0.5)
    print("implicitly waited 0.5 seconds")
    try:
        consent = driver.find_element(
            By.XPATH, "/html/body/div[2]/div[2]/div[1]/div[2]/div[2]/button[1]/p")
    except:
        time.sleep(1)
        consent = driver.find_element(
            By.XPATH, "/html/body/div[2]/div[2]/div[1]/div[2]/div[2]/button[1]/p")
    #found the cookie consent button
    consent.click()


    print("cookie consent clicked")


    left = 0
    print("defined left")
    arrowbutton = True
    print("defined arrowbutton")
    pagecount = input("start on a specific site? enter here (leave blank if no): ")
    if pagecount == "":
        pagecount = "0"
    print("defined pagecount")

    while arrowbutton == True:
        print("while loop started")
        driver.get("https://rbxscript.com/posts/roblox/scripts?p=" + str(pagecount))
        print("loaded page " + str(pagecount))
        targetscript = driver.find_elements(By.CLASS_NAME, "cheats-item--download")
        print ("found " + str(len(targetscript)) + " scripts")
        

        for x in range(0,len(targetscript)):
            getgame = True
            Universal = False
            print("for loop started")
            mustsearch = True
            print("defined mustsearch and set back to true")
            left = left + 1
            print("left is now " + str(left))
            driver.implicitly_wait(0.5)
            time.sleep(0.5)
            driver.get("https://rbxscript.com/posts/roblox/scripts?p=" + str(pagecount))
            print("loaded page " + str(pagecount))
            time.sleep(0.5)
            try:
                foundscript = driver.find_element(By.XPATH, f"/html/body/div/main/div/div[2]/div/div[{left}]/div[3]/a").get_attribute("href")
            except:
                print("FATAL ERROR WHILE FINDING SCRIPT HREF!")
                print("FATAL ERROR WHILE FINDING SCRIPT HREF!")
                print("FATAL ERROR WHILE FINDING SCRIPT HREF!")
                print("FATAL ERROR WHILE FINDING SCRIPT HREF!")
                print("FATAL ERROR WHILE FINDING SCRIPT HREF!")
                time.sleep(3)
                continue
            print("found scriptlink " + str(left) + " on page " + str(pagecount))
            postscript = foundscript
            print("saving the link for the post for later")
            foundscript = foundscript.replace("post","scripts-copy")
            print("replaced post with scripts-copy")
            print("got the link to the script " + foundscript)
            time.sleep(0.5)
            driver.get(postscript)
            
        
            print("loaded the post")
            driver.implicitly_wait(0.5)
            time.sleep(0.5)
            scriptname = driver.find_element(
                By.XPATH, "/html/body/div/div[1]/div[1]/div/div/div[2]/h2").text
            if "Universal" in scriptname:
                Universal = True
                print("Universal Script")
            print("found " + scriptname+" as the name of the script")
            
            
                
            scriptauthor = driver.find_element(
                By.XPATH, "/html/body/div[1]/div[1]/div[1]/div/div/div[2]/div/li[1]/a").text   
                
            print("found " + scriptauthor+" as the name of the author")

            if Universal == False:
                gamesite = driver.find_element(By.XPATH, "/html/body/div/div[1]/div[1]/div/div/div[2]/div/li[3]/a").get_attribute("href")
                print("found " + gamesite+" as the link to the game")
                
                print("trying to grab the gameid")
                robloxcurrenturl = gamesite
                print("defined robloxcurrenturl")
                if "roblox.com" in robloxcurrenturl and has_numbers(robloxcurrenturl) == True :
                    mustsearch = False
                    print("Gameid can be found in the url")
                    altgameid = ""
                    robloxcurrenturl = robloxcurrenturl.removeprefix("https://www.roblox.com/games/")
                    robloxcurrenturl = robloxcurrenturl.removeprefix("https://roblox.com/games/")
                    robloxcurrenturl = robloxcurrenturl.removeprefix("https://web.roblox.com/games/")
                    for c in robloxcurrenturl:
                        print(altgameid)
                        
                        if c == "/" or c == "#":
                            break
                        altgameid = altgameid + c
                    print("found " + altgameid + " as the gameid")
                    print("no need to search for the gameid on roblox")
                    if Universal == False:
                        getgamemanually = False
                        robloxcurrenturl = robloxcurrenturl.removeprefix(altgameid)
                        robloxcurrenturl = robloxcurrenturl.removeprefix("/")
                        scriptgame = robloxcurrenturl
            if not "roblox.com" in robloxcurrenturl:
                if Universal == False and getgamemanually == True:
                    scriptgame = driver.find_element(
                        By.XPATH, "/html/body/div/div[1]/div[1]/div/div/div[2]/h2").text
                    # remove anything thats after the "|" in the scriptgame
                    scriptgame = scriptgame.split("|", 1)[0]
                    scriptgame = scriptgame.split(": ", 1)[0]
                
                    print("found " + scriptgame+" as the name of the game")
            

                
            # change the current url to currurl in the same tab
            driver.implicitly_wait(0.5)
            driver.get(foundscript)
            print("loaded the scriptpage")
            
            time.sleep(0.5)
            try:
                textarea = driver.find_element(
                    By.XPATH, "/html/body/div[1]/div[2]/textarea").text
            except:
                time.sleep(0.5)
                try:
                    textarea = driver.find_element(
                        By.XPATH, "/html/body/div/div[2]/textarea").text
                except:
                    time.sleep(0.5)
                    try:
                        textarea = driver.find_element(By.CLASS_NAME, "textarea-script").text
                    except:
                        time.sleep(0.5)
                        try:
                            textarea = driver.find_element(By.ID, "myInput").text
                        except:
                            time.sleep(0.5)
                            try:
                                textarea = driver.find_element(By.TAG_NAME, "textarea").text
                            except:
                                print("FATAL ERROR WHILE FINDING SCRIPT!")
                                time.sleep(1)
                                continue
                    
            print("found the textarea")
            
            print("grabbed the script")
            print("checking if the script is a github raw")
            if textarea.startswith("loadstring"):
                
                print("script is a loadstring")
                script = textarea

                script = script.removeprefix('loadstring(game:HttpGet("')
                print("removed loadstring")
                script = script.replace('"))()', '')
                # only grab the url of the script
                if "HttpGetAsync" in script:
                    script = script.replace("Async", "")
                if '"' in script:
                    script = script.removeprefix('loadstring(game:HttpGet("')
                    script = script.removesuffix('"))()')
                    
                    
                    print(script)
                if "'" in script:
                    script = script.removeprefix("loadstring(game:HttpGet('")
                    script = script.removesuffix("'))()")
                    script = script.removesuffix("')()")
                    
                    
                    print(script)
                if ",true" in script:
                    script = script.replace(",true)", "")
                script = script.replace("')()", "")
                script = script.replace("(", "")
                script = script.replace(")", "")
                print("extracted the url")

                if "raw" and "githubusercontent" or "pastebin" and "raw" in script:
                    
                    print("script is a raw github link")
                    
                    driver.implicitly_wait(0.5)
                    try:
                        driver.get(script)
                    except:
                        print("failed to load the raw github/pastebin link")
                        continue
                    #refresh the page
                    time.sleep(1)
                    print("loaded the raw github link")
                    driver.implicitly_wait(0.5)
                    try:
                        rawtext = driver.find_element(By.XPATH, "/html/body/pre").text
                    except :
                        continue
                    if rawtext == "404: Not Found":
                        print("raw github link is a 404. skipping")
                        continue
                    currentdir = os.getcwd()
                    print("found the current directory")
                    
                    print("currend working directory: " + currentdir)
                    os.chdir("/Users/emiltoth/Desktop/Programmieren/Githubrepos/Trenglehub/Scripts/Autoadd")
                    
                    print("changed directory to " + os.getcwd())
                    scriptname = scriptname.replace(" ", "")
                    scriptname = scriptname.replace("|", "")
                    # replace special characters with nothing
                    scriptname = scriptname.replace("?", "")
                    scriptname = scriptname.replace("!", "")
                    scriptname = scriptname.replace(":", "")
                    scriptname = scriptname.replace(";", "")
                    scriptname = scriptname.replace("=", "")
                    scriptname = scriptname.replace("+", "")
                    scriptname = scriptname.replace("-", "")
                    scriptname = scriptname.replace("*", "")
                    scriptname = scriptname.replace("/", "")
                    scriptname = scriptname.replace("(", "")
                    scriptname = scriptname.replace(")", "")
                    scriptname = scriptname.replace("[", "")
                    scriptname = scriptname.replace("]", "")
                    scriptname = scriptname.replace("{", "")
                    scriptname = scriptname.replace("}", "")
                    scriptname = scriptname.replace(",", "")
                    scriptname = scriptname.replace(".", "")
                    scriptname = scriptname.replace("<", "")
                    scriptname = scriptname.replace(">", "")
                    scriptname = scriptname.replace("'", "")
                    scriptname = scriptname.replace('"', "")
                    scriptname = scriptname.replace("`", "")
                    scriptname = scriptname.replace("~", "")
                    scriptname = scriptname.replace("@", "")
                    scriptname = scriptname.replace("#", "")
                    scriptname = scriptname.replace("$", "")
                    scriptname = scriptname.replace("%", "")
                    scriptname = scriptname.replace("^", "")
                    scriptname = scriptname.replace("&", "")
                    scriptname = scriptname.replace("_", "")
                    scriptname = scriptname.replace("§", "")
                    scriptname = scriptname.replace("°", "")
                    scriptname = scriptname.replace("²", "")
                    scriptname = scriptname.replace("³", "")
                    scriptname = scriptname.replace("´", "")
                    scriptname = scriptname.replace("ß", "")
                    scriptname = scriptname.replace("ä", "ae")
                    scriptname = scriptname.replace("ö", "oe")
                    scriptname = scriptname.replace("ü", "ue")
                    scriptname = scriptname.replace("Ä", "Ae")
                    scriptname = scriptname.replace("Ö", "Oe")
                    scriptname = scriptname.replace("Ü", "Ue")
                    scriptname = scriptname.replace(" ", "")
                    
                    print("removed special characters from the scriptname")
                    filename = scriptname 
                    filename = filename.replace(" ", "")
                    with open(filename + ".lua", "w") as f:
                        f.write(rawtext)
                        
                        print(f"wrote {filename}.lua to a file")
                else:
                    print("script is not a raw github link. only grabbing the loadstring")
                    notgithubraw()

            else:
                print("script is not a loadstring. only grabbing the script")
                notgithubraw()

            
            if push  == True:
                print("filename is " + filename)
                os.system("git add " + filename)
            
            
            print("tried to add the file to git commit see if it works by looking at the output")
            

            filename = filename.replace("_", "%2C")
            newgithublink = "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/" + filename
            if mustsearch == True and Universal == False:
                if "Hub" in scriptname and Universal == False:
                    print("script to universal. skipping.")
                    continue
                if "hub" in scriptname and Universal == False:
                    print("script to universal. skipping.")
                    continue
                if "HUB" in scriptname and Universal == False:
                    print("script to universal. skipping.")
                    continue
                print("mustsearch is true")
                print("searching for the gameid on roblox")
                driver.implicitly_wait(0.5)
                driver.get("https://www.roblox.com/discover/?Keyword=" + scriptgame)
                print("loaded the roblox search page")
                try:
                    checktext = driver.find_element(
                        By.XPATH, "/html/body/div[3]/div[3]/div[2]/div/div/div[1]/a/div[1]/div[1]/div[1]").text
                except:
                    checktext = "Error while getting game name"
                print("found game name") 
                print("found " + checktext + " as the game name")

                print("found the game")
                time.sleep(1)
                try:
                    robloxcookies = driver.find_element(

                    By.XPATH, "/html/body/div[5]/div[1]/div[2]/div/div/button[2]")
                except:
                    pass
                
                print("found the cookies button")
                try:
                    robloxcookies.click()
                except:
                    pass
                
                print("clicked the cookies button")
                try:
                    tryclick = driver.find_element(By.XPATH, "/html/body/div[3]/div[2]/div[2]/div/div").text
                    continue
                except:
                    tryclick = "none"
                if not "No Results Found" in tryclick:
                    try:
                        clickgame = driver.find_element(
                            By.XPATH, "/html/body/div[3]/div[3]/div[2]/div/div/div[1]/a/div[1]/div[1]/div[1]")
                        
                        print("found the game click element (big)")
                        clickgame.click()
                    except:
                        try:
                            time.sleep(3)
                            clickgame = driver.find_element(
                                By.XPATH, "/html/body/div[3]/div[3]/div[2]/div/div/div[1]/a/div[1]")
                            print("found the game click element (small)")
                            clickgame.click()
                        except:
                            continue
                
                print("clicked the game click element")
                # get current url and save it in a variable named gameid
                robloxcurrenturl = driver.current_url
                robloxcurrenturl = robloxcurrenturl.removeprefix("https://www.roblox.com/games/")
                robloxcurrenturl = robloxcurrenturl.removeprefix("https://roblox.com/games/")
                robloxcurrenturl = robloxcurrenturl.removeprefix("https://web.roblox.com/games/")
                gameidd = ""
                # remove any character thats not a number
                for c in robloxcurrenturl:
                    print(gameidd)
                    
                    if c == "/" or c == "#":
                        break
                    gameidd = gameidd + c
                
                print("gameid is " + gameidd)
                # open trenglehub.lua and append something to it in the next line
            
            print("current working directory: " + os.getcwd())
            currentdir = os.getcwd()
            currentdir = currentdir.replace("/Scripts/Autoadd", "")
            os.chdir("/Users/emiltoth/Desktop/Programmieren/Githubrepos/Trenglehub/")
            
            print("changed directory to " + os.getcwd())
            
            if mustsearch == False and Universal == False:
                try:
                    gameid = int(altgameid)
                except:
                    continue
            if mustsearch == True and Universal == False:
                gameid = int(gameidd)
            with open ("trenglehub.lua", "r") as f:
                trenglehublua = f.read()
                if newgithublink in trenglehublua:
                    print("the script is already in trenglehub.lua")
                    continue
                if Universal == True:
                    print("writing universal script ")
                    fu = '"'
                    with open("trenglehub.lua", "a") as f:
                            fu = '"'
                            f.write(f"""
                            
addscriptuniversal({fu}{scriptname}{fu}, {fu}{scriptauthor}{fu}, {fu}{newgithublink}{fu})
        """)
                if str(gameid) in trenglehublua and Universal == False:
                    
                    print("gameid already in trenglehub.lua. using addscriptexist()")
                    with open("trenglehub.lua", "a") as f:
                        fu = '"'
                        f.write(f"""

                        
addscriptexist({gameid}, {fu}{scriptname}{fu}, {fu}{scriptauthor}{fu}, {fu}{newgithublink}{fu})""")
                        
                        print("appended the new script to trenglehub.lua")
                elif Universal == False:
                    print("gameid not in trenglehub.lua. using addscript()")
                    with open("trenglehub.lua", "a") as f:
                        addscript = f"""
        
addscript({gameid},{fu}{scriptgame}{fu}, {fu}{scriptname}{fu}, {fu}{scriptauthor}{fu}, {fu}{newgithublink}{fu})
                        """
                        #addscript = "addscript(" + '"'+str(gameid)+'"' + "," + '"'+scriptname +   '"' + ","+'"'+scriptauthor+'"' + ","+'"'+newgithublink+'"'+")"
                        f.write(addscript)
            filename = "trenglehub" + ".lua"
            if push == True:
                print("filename is " + filename)
                os.system("git add " + filename)
                os.system("git add " + filename)
                
            
                os.system("git pull") 
                print("tried to add the file to git commit see if it works by looking at the output")
                print(
                "tried to add the file to git commit see if it works by looking at the output")
                os.system("git commit -m " + '"Updated automatically!"')
                print("tried to commit the file to git see if it works by looking at the output")
                os.system("git push -u origin main")
                print("tried to push the file to git see if it works by looking at the output")
        if onlydaily == True:
            print("daily scripts fetched")
            exit()
        pagecount = int(pagecount) +1
        print("preparing next page")
        left = 0

        
    print("Fetched all Scripts from rbxscript.com!")
    print("defined notgithubraw()")

chrome_options = Options()
s = Service("/Applications/chromedriver")
print("defined s")
chrome_options.headless = True
driver = webdriver.Chrome(service=s, options=chrome_options)


#driver = webdriver.Chrome(service=s)
print("defined driver")


driver.create_options()
print("created options")
#driver.get is also reffered to loading a website
clr()
print("Websites to fetch scripts from:")
print("(1) rbxscript.com")
print("(2) rscripts.net")
print("")
terminal = input("Which Website do you want to use?: ")
clr()

pushless = input("Fetch library and push to github? (y/n): ")
if pushless == "y":
    print("fetching with pushing")
    push = True
if pushless == "n":
    print("fetching without pushing")
    push = False
askonlydaily = input("Only fetch daily scripts? (y/n): ")
if askonlydaily == "y":
    onlydaily = True
    print("only fetching daily scripts")
if askonlydaily == "n":
    onlydaily = False
    print("fetching all scripts")
if terminal == "1":
    print("Chose rbxscript.com")
    rbxscript()
if terminal == "2":
    print("Chose rscripts.net")
    rscripts()
else:
    print("Invalid Input")
    exit()

        






