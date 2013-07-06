function check()
if not fs.isDir(".Firewolf_Data") then
print("Scanning to apps!!")
sleep(2)
installno()
else
print("All of the apps has been already installed!")

if not fs.isDir(".ccYouTube") then
sleep(2)
installno()
else
print("All of the apps has been already installed!")
end
end
end

local screenX, screenY = term.getSize()

function installno()
print("Welcome to Isaax Install Program! I.I.P")
sleep(2)

while true do
term.setBackgroundColor(colors.cyan)
term.clear()
paintutils.drawLine(1, 1, screenX, 1, colors.lightGray)
term.setCursorPos(1, 1)
term.setTextColor(colors.black)
print("[Exit]")
term.setCursorPos(1, 3)
term.setTextColor(colors.black)
term.setBackgroundColor(colors.cyan)
print("[ccyoutube]")
term.setCursorPos(1, 4)
term.setTextColor(colors.black)
term.setBackgroundColor(colors.cyan)
print("[firewolf]")
local event, button, X, Y = os.pullEvent("mouse_click")
if event == "mouse_click" then
if X >= 1 and X <= 20 and Y == 1 and button == 1 then
break
elseif X >= 1 and X <= 19 and Y == 3 and button == 1 then
shell.run("/apps/ccyoutube.install")
elseif X >= 1 and X <= 18 and Y == 4 and button == 1 then
shell.run("/apps/firewolf.install")
end
end
end
end

check()