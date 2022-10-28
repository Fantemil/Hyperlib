from copyreg import remove_extension
from operator import contains
from tkinter import E
from selenium import webdriver
from selenium.webdriver.chrome.service import Service
import random 
import time
from selenium import *
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.options import Options
# import keys from selenium
from selenium.webdriver.common.keys import Keys
import os
options = Options()
oldscript = ""
# make a clear console function
scriptname = ""
fu =  '"'
def has_numbers(inputString):
    return any(char.isdigit() for char in inputString)
def clr():
    if os.name == 'nt':
        os.system('cls')
    else:
        os.system('clear')
scriptnamecount = 0
scriptname = ""
def notgithubraw():
    global filename
    global scriptname
    global Quit
    clr()
    print("script source is not a raw github link or is not a loadstring")
    currentdir = os.getcwd()
    clr()
    print("currend working directory: " + currentdir)
    os.chdir("/Users/emiltoth/Desktop/Programmieren/Githubrepos/Trenglehub/Scripts/Autoadd")
    clr()
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
    clr()
    filename = scriptname + ".lua"
    print("removed special characters from the scriptname")
    
    try:
        if os.path.exists(filename) == True:
        # check if the script is the same as in the already existing script
            with open(filename, "r") as f:
                oldscript = f.read()
                
    except NameError:
        pass
    except FileNotFoundError:
        pass
    try:
        if oldscript in rawtext or oldscript in textarea:
                        clr()
                        print("script is the same as the already existing script")
                        return True
        else:
            clr()
        print("script is not the same as the already existing script")
        filename.replace(".lua", "")
        filename = filename + str(random.randint(0,9))
        filename = filename + ".lua"
                        
                            
        
            
    except UnboundLocalError:
        pass
    
    with open(filename, "w") as f:
        f.write(textarea)
        clr()
        print("wrote the script to a file")


s = Service("/Applications/chromedriver")
#driver = webdriver.Chrome(service=s)
#chrome_options = Options()
#chrome_options.headless = True
#driver = webdriver.Chrome(service=s, options=chrome_options)
driver = webdriver.Chrome(service=s)
adblocker = "/Users/emiltoth/Desktop/Programmieren/Githubrepos/Trenglehub/extension_1_44_4_0.crx"


driver.create_options()
driver.get("https://rbxscript.com/#")
clr()
print("loaded rbxscript.com")
driver.implicitly_wait(2)
consent = driver.find_element(
    By.XPATH, "/html/body/div[2]/div[2]/div[1]/div[2]/div[2]/button[1]/p")
consent.click()
clr()
print("cookie consent clicked")


left = 0
arrowbutton = True

pagecount = 0
search = input("scripts of game to fetch: ")
gameid = input("game id: ")
searchfield = driver.find_element(By.XPATH, "/html/body/div[1]/div[2]/form/div/div/input")
searchfield.send_keys(search)
# Hit enter
searchfield.send_keys(Keys.RETURN)
searchurl = driver.current_url
Quit = False
while arrowbutton == True:
    scriptnamecount = scriptnamecount + 1
    if Quit == True:
        exit()
    try:
        driver.get(searchurl + "?p=" + str(pagecount))
    except:
        arrowbutton = False
    targetscript = driver.find_elements(By.CLASS_NAME, "cheats-item--download")
    clr()
    print(targetscript)
    for x in range(0,len(targetscript)):
        if Quit == True:
            break
        mustsearch = True
        left = left + 1
        driver.implicitly_wait(0.5)
        driver.get(searchurl + "?p=" + str(pagecount))
        
        driver.implicitly_wait(0.5)
        areflink = driver.find_element(By.XPATH, f"/html/body/div/main/div/div/div/div[{left}]/div[3]/a").get_attribute("href")
        
        driver.get(areflink)
        scriptname = search + str(scriptnamecount)
        clr()
        print("found " + scriptname+" as the name of the script")
        
        # remove anything thats after the "|" in the scriptgame
        scriptgame = search
        clr()
        
        print("found " + scriptgame+" as the name of the game")
        scriptauthor = driver.find_element(
            By.XPATH, "/html/body/div[1]/div[1]/div[1]/div/div/div[2]/div/li[1]/a").text   
        clr()     
        print("found " + scriptauthor+" as the name of the author")

        currurl = driver.current_url
        clr()
        print("found " + currurl+" as the current url")
        currurl = currurl.removeprefix("https://rbxscript.com/post")
        currurl2 = currurl
        currurl = "https://rbxscript.com/scripts-copy" + currurl2
        clr()
        print("edited the url to " + currurl + " for the download link")
        gamesite = driver.find_element(By.XPATH, "/html/body/div/div[1]/div[1]/div/div/div[2]/div/li[3]/a").get_attribute("href")
        

            
        # change the current url to currurl in the same tab
        driver.implicitly_wait(0.5)
        driver.get(currurl)
        clr()
        print("loaded the download page")


        textarea = driver.find_element(
            By.XPATH, "/html/body/div[1]/div[2]/textarea").text
        clr()
        print("grabbed the script")
        print('"'+textarea+'"')
        if not driver.current_url == currurl:
            driver.get(currurl)
        if textarea.startswith("loadstring"):
            clr()
            print("script is a loadstring")
            script = textarea

            script = script.removeprefix('loadstring(game:HttpGet("')
            script = script.replace('"))()', '')
            # only grab the url of the script
            if "HttpGetAsync" in script:
                script = script.replace("Async", "")
            if '"' in script:
                script = script.removeprefix('loadstring(game:HttpGet("')
                script = script.removesuffix('"))()')
                clr()
                print("grabbed only the link of the script")
                print(script)
            if "'" in script:
                script = script.removeprefix("loadstring(game:HttpGet('")
                script = script.removesuffix("'))()")
                script = script.removesuffix("')()")
                clr()
                print("grabbed only the link of the script")
                print(script)
            if ",true" in script:
                script = script.replace(",true)", "")
            script = script.replace("')()", "")
                

            if "raw" and "githubusercontent" in script:
                clr()
                print("script is a raw github link")
                if "404: Not Found" in script:
                    continue
                driver.implicitly_wait(0.5)
                try:
                    driver.get(script)
                except:
                    continue
                
                clr()
                print("loaded the raw github link")
                rawtext = driver.find_element(By.XPATH, "/html/body/pre").text
                if rawtext == "404: Not Found":
                    continue
                currentdir = os.getcwd()
                clr()
                print("currend working directory: " + currentdir)
                os.chdir("/Users/emiltoth/Desktop/Programmieren/Githubrepos/Trenglehub/Scripts/Autoadd")
                clr()
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
                clr()
                print("removed special characters from the scriptname")
                
                filename = scriptname + ".lua"
               
                
                try:
                    if os.path.exists(filename) == True:
                    # check if the script is the same as in the already existing script
                        with open(filename, "r") as f:
                            oldscript = f.read()
                            
                except NameError:
                    pass
                except FileNotFoundError:
                    pass
                if oldscript in rawtext or oldscript in textarea:
                                clr()
                                print("script is the same as the already existing script")
                                continue
                    
                        
                else:
                    clr()
                    print("script is not the same as the already existing script")
                    filename.replace(".lua", "")
                    filename = filename + str(random.randint(0,9))
                    filename = filename + ".lua"
                                
                with open(filename, "w") as f:
                    f.write(textarea)
                    clr()
                    print("wrote the script to a file")
            else:
                returnscontinue = notgithubraw()
                if returnscontinue == True:
                    continue
                

        else:

            returnscontinue = notgithubraw()
            if returnscontinue == True:
                continue
            

        
     
            
        clr()
        if Quit == True:
            driver.quit()
            exit()
        try:
            print("filename is " + filename)
        except:
            print("seems that there are no pages anymore!")
            driver.quit()
            Quit = True
            exit()
        os.system("git add " + filename)
        os.system("git add" + filename)
        clr()
        print("tried to add the file to git commit see if it works by looking at the output")
        

        filename = filename.replace("_", "%2C")
        newgithublink = "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/" + filename

        clr()
        print("current working directory: " + os.getcwd())
        currentdir = os.getcwd()
        currentdir = currentdir.replace("/Scripts/Autoadd", "")
        os.chdir("/Users/emiltoth/Desktop/Programmieren/Githubrepos/Trenglehub/")
        clr()
        print("changed directory to " + os.getcwd())
        if "Universal" in scriptgame:
            continue
        
        with open ("trenglehub.lua", "r") as f:
            trenglehublua = f.read()
            if newgithublink in trenglehublua:
                
                continue
            if gameid in trenglehublua:
                clr()
                print("gameid already in trenglehub.lua")
                with open("trenglehub.lua", "a") as f:
                    fu = '"'
                    filename.replace(".lua", "")
                    f.write(f"""
                    
addscriptexist({gameid}, {fu}{filename}{fu}, {fu}{scriptauthor}{fu}, {fu}{newgithublink}{fu})""")
                    clr()
                    print("appended the new script to trenglehub.lua")
            else:
                with open("trenglehub.lua", "a") as f:
                    filename.replace(".lua", "")
                    addscript = f"""
    
addscript({gameid}, {fu}{filename}{fu}, {fu}{scriptauthor}{fu}, {fu}{newgithublink}{fu})
                    """
                    #addscript = "addscript(" + '"'+str(gameid)+'"' + "," + '"'+scriptname +   '"' + ","+'"'+scriptauthor+'"' + ","+'"'+newgithublink+'"'+")"
                    f.write(addscript)
        trenglehubfile = "trenglehub" + ".lua"
        print("filename is " + trenglehubfile)
        os.system("git add " + trenglehubfile)
        os.system("git add " + trenglehubfile)
        print("tried to add the file to git commit see if it works by looking at the output")
        print(
        "tried to add the file to git commit see if it works by looking at the output")
        os.system("git commit -m " + '"Updated automatically!"')
        print("tried to commit the file to git see if it works by looking at the output")
        os.system("git push -u origin main")
        print("tried to push the file to git see if it works by looking at the output")

    pagecount = pagecount + 1
    left = 0

    
clr()
print("Fetched all Scripts from rbxscript.com!")


        











