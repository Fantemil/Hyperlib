// ==UserScript==
// @name         V3rmillion Script Copy Button
// @namespace    http://tampermonkey.net/
// @version      0.1
// @description  Copy codeblocks on v3rmillion with ease!
// @author       Xyba (https://v3rmillion.net/member.php?action=profile&uid=612047)
// @match        https://v3rmillion.net/showthread.php*
// @icon         https://pbs.twimg.com/profile_images/549393909147639809/inDjQlSs_400x400.png
// @grant        GM_addStyle
// ==/UserScript==

(function() {
    'use strict';


    let collection = document.getElementsByClassName("codeblock");

    for(let item of collection){
        //create elements
        let zNode = document.createElement('div');
        zNode.setAttribute('id', 'myContainer');

        let copyButton = document.createElement('button');
        let text = document.createTextNode('ðCopy Code');
        copyButton.setAttribute('id', 'copyButton');
        copyButton.appendChild(text);

        let downloadButton = document.createElement('button');
        let dtext = document.createTextNode('ð¥Download Code');
        downloadButton.setAttribute('id', 'downloadButton');
        downloadButton.appendChild(dtext);

        zNode.appendChild(copyButton);
        zNode.appendChild(downloadButton);
        item.appendChild(zNode);
        let codeblockInner = item.children[1].firstChild.innerText.replace(new RegExp(String.fromCharCode(160), "g"), " ");

        downloadButton.onclick = function() {
            const thread_title = document.querySelector(".thread_title").innerText;
            const blob = new Blob([codeblockInner], {type: 'text'});
            if(window.navigator.msSaveOrOpenBlob) {
                window.navigator.msSaveBlob(blob, thread_title);
            }
            else{
                const elem = window.document.createElement('a');
                elem.href = window.URL.createObjectURL(blob);
                elem.download = thread_title;
                document.body.appendChild(elem);
                elem.click();
                document.body.removeChild(elem);

                fireCallback("Downloaded");
            }
        }

        copyButton.onclick = function() {
            if (navigator.clipboard.writeText(codeblockInner)) {
                fireCallback("Copied");
            } else {
                alert("something went wrong");
            }
        }

        function fireCallback(message) {
            var StatusNode = document.getElementById("status");
            if (!StatusNode) {
                var newNode = document.createElement('p');
                newNode.id = "status";
                newNode.innerHTML = 'Code ' + message + '!';
                zNode.appendChild(newNode);
            }
            setTimeout(() => $(zNode.childNodes[2]).fadeOut(500, function() { $(this).remove(); }), 500);
        }
    }

    GM_addStyle ( `#myContainer {
       display: flex;
       margin-top: 10px;
   }
   #copyButton, #downloadButton {
       cursor: pointer;
   }

   #downloadButton {
       margin-left: 8px;
   }

   #myContainer p {
       color: green;
       font-size: 1.7vh !important;
       margin: 4px 9px;
       -webkit-animation: fadein .5s; /* Safari, Chrome and Opera > 12.1 */
      -moz-animation: fadein .5s; /* Firefox < 16 */
       -ms-animation: fadein .5s; /* Internet Explorer */
        -o-animation: fadein .5s; /* Opera < 12.1 */
           animation: fadein .5s;
   }

   @keyframes fadein {
   from { opacity: 0; }
   to   { opacity: 1; }
   }

   /* Firefox < 16 */
   @-moz-keyframes fadein {
   from { opacity: 0; }
   to   { opacity: 1; }
    }

    /* Safari, Chrome and Opera > 12.1 */
   @-webkit-keyframes fadein {
   from { opacity: 0; }
   to   { opacity: 1; }
   }

   /* Internet Explorer */
   @-ms-keyframes fadein {
   from { opacity: 0; }
   to   { opacity: 1; }
   }

   /* Opera < 12.1 */
   @-o-keyframes fadein {
   from { opacity: 0; }
   to   { opacity: 1; }
   }` );
})();