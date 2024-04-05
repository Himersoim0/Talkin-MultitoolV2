echo off
chcp 65001
color 5

:menu
cls                                                                                                                                                                                                                                                 
echo                                                             █████████████────────────────██████████████─
echo                                                             ██░░░░░░░░░░██────────────────                    
echo                                                             ██████░░██████────────────────██░░██████████─
echo                                                             ────██░░██────────────────────██░░██─────────
echo                                                             ────██░░██─────██████████████─██░░██████████─
echo                                                             ────██░░██─────██░░░░░░░░░░██─██░░░░░░░░░░██─
echo                                                             ────██░░██─────██████████████─██████████░░██─
echo                                                             ────██░░██────────────────────────────██░░██─
echo                                                             ────██░░██────────────────────██████████░░██─
echo                                                             ────██░░██────────────────────██░░░░░░░░░░██─
echo                                                             ────██████────────────────────██████████████─       By Talkin-services! Disord.gg/free-shop   𒅒   
echo                                                             ─────────────────────────────────────────────





title Talkin-shop™


                                                                            
                                                                                                                                   
echo                                                    一 一 一 一 一 一 一 一 一 一 一 一 一 一 一 一 一 一 一 一 一 一 一 一 一                                                                 
echo                                                    𐌉 1). ɪᴘ ᴄᴏɴgɪɢᴜʀᴀᴛɪᴏɴ                                         (10 . ? 𐌉                    
echo                                                    𐌉 2). ᴘɪɴɢ ᴀɴ ɪᴘ ᴀᴅᴅʀᴇꜱꜱ                                       (11 . ? 𐌉                    
echo                                                    𐌉 3). ɢᴇɴᴇʀᴀᴛᴇ ɴɪᴛʀᴏ ᴄᴏᴅᴇꜱ                                     (12 . ? 𐌉                    
echo                                                    𐌉 4). ᴜʀʟ ꜱʜᴏʀᴛᴇɴᴇʀ                                            (13 . ? 𐌉                    
echo                                                    𐌉 5). ɢʀᴀʙ ɪᴘ ɪɴfᴏ ᴀɴᴅ ꜱᴇɴᴅ ᴛᴏ ᴡᴇʙʜᴏᴏᴋ                                 𐌉
echo                                                    𐌉 6). ɪᴘ ɢᴇᴏ ʟᴏᴏᴋᴜᴘ                                                    𐌉                    
echo                                                    𐌉 7). EXIT!                                                            𐌉                    
echo                                                    𐌉 8). ᴡᴇʙ-ʜᴏᴏᴋ-ꜱᴘᴀᴍᴍᴇʀ                                                 𐌉                     
echo                                                    𐌉 9). ?                                                                𐌉
echo                                                    一 一 一 一 一 一 一 一 一 一 一 一 一 一 一 一 一 一 一 一 一 一 一 一 一


                                                                                                                                       
set/p choice=Enter your choice:
                                                        
if "%choice%"=="1" goto check_ip
if "%choice%"=="2" goto ping_ip
if "%choice%"=="3" goto generate_nitro
if "%choice%"=="4" goto url_shortener
if "%choice%"=="5" goto grabipsendwebhook
if "%choice%"=="6" goto ipgeolookup
if "%choice%"=="7" exit
if "%choice%"=="8" goto webhookspammer
if "%choice%"=="9" goto webhookspammer
if "%choice%"=="10" goto webhookspammer
if "%choice%"=="11" goto webhookspammer
if "%choice%"=="12" goto webhookspammer
goto menu




:check_ip
ipconfig
pause
goto menu

:ping_ip
set /p target_ip=Enter the IP address to ping: 
ping %target_ip%
pause
goto menu

:generate_nitro
@echo off
setlocal enabledelayedexpansion
python -c "import random,string;print('\n'.join(['https://discord.gift/' + ''.join(random.choices(string.ascii_uppercase + string.digits, k=16)) for _ in range(10)]))"
pause
goto menu

:url_shortener
set /p url=Enter the URL to shorten: 
echo Shortened URL: http://tinyurl.com/api-create.php?url=%url%
pause
goto menu

:grabipsendwebhook
cls
echo
set /p webhook=Enter your webhook URL: 

:: Ensure a webhook URL is provided
if "%webhook%"=="" (
    echo Please enter a valid Discord webhook URL.
    pause
    goto menu
)

:: Grab IP info and save it to a file
ipconfig >ip.txt

:: Send the contents of the file to the webhook using curl
curl -X POST -H "Content-Type: application/json" -d "{\"content\":\"IP Configuration:\n\`\`\`$(type ip.txt)\`\`\`\"}" %webhook%

:: Cleanup: Delete the temporary IP file
del ip.txt

echo.
pause
goto menu

:ipgeolookup
cls
echo         Talkin Grabber                           
echo.
set /p ip=Enter an IP address to lookup: 

:: You can add the code for IP geo lookup here
:: For example, you can use a command like "curl" to fetch geo information for the IP
:: Ensure that you have curl installed and available in your system

:: Example using curl (ensure curl is installed):
curl https://ipinfo.io/%ip%/json

:webhookspammer
cls
echo ____________________________________
echo 0        WEBHOOK SPAMMER            0
echo 0___________________________________0
set /p "webhook=│ Enter Discord webhook URL for Webhook Spmmer: "
set /p "message=│ Enter the message to send: "
set /p "num_times=│ Enter the number of times to send the message: "

for /l %%n in (1,1,%num_times%) do (
    :: Send message to Discord webhook
    curl -X POST -H "Content-Type: application/json" -d "{\"content\": \"%message%\"}" %webhook%
)
echo Messages sent successfully.






echo.
pause
goto menu