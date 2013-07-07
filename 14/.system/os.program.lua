term.setBackgroundColor(colors.cyan)
term.clear()
paintutils.drawLine(1, 1, screenX, 1, colors.lightGray)
term.setCursorPos(1, 3)
term.setBackgroundColor(colors.cyan)
term.setTextColor(colors.black)
print("[File Manager]")
term.setCursorPos(1, 1)
term.setTextColor(colors.black)
term.setBackgroundColor(colors.lightGray)
print("[Exit]")
term.setCursorPos(1, 4)
term.setTextColor(colors.black)
term.setBackgroundColor(colors.cyan)
print("[Lightshot(Screen Recorder)]")
term.setCursorPos(1, 5)
term.setTextColor(colors.black)
term.setBackgroundColor(colors.cyan)
print("[Taco Text Editor]")
term.setCursorPos(1, 6)
term.setTextColor(colors.black)
term.setBackgroundColor(colors.cyan)
print("[Install Program]")
term.setCursorPos(1, 7)
term.setTextColor(colors.black)
term.setBackgroundColor(colors.cyan)
print("[Update Software]")
term.setCursorPos(40, 1)
term.setTextColor(colors.black)
term.setBackgroundColor(colors.lightGray)
print("Version "..build) -- Version of the OS
while true do
local event, button, X, Y = os.pullEvent("mouse_click")
if event == "mouse_click" then
if X >= 1 and X <= 20 and Y == 3 and button == 1 then
shell.run("/apps/gfb")
elseif X >= 1 and X <= 19 and Y == 1 and button == 1 then
break
elseif X >= 1 and X <= 18 and Y == 4 and button == 1 then
shell.run("/apps/lightshot")
elseif X >= 1 and X <= 17 and Y == 5 and button == 1 then
shell.run("/apps/taco")
elseif X >= 1 and X <= 16 and Y == 6 and button == 1 then
shell.run("//.system/install.lua")
elseif X >= 1 and X <= 15 and Y == 7 and button == 1 then
print("Updating!")
while true do
resp = http.get("https://raw.github.com/thegreatstudio/isaax/master/14/.system/linux")
if resp then
fileHandler=fs.open("//.system/linux", "w")
fileHandler.write(resp.readAll())
fileHandler.close()
os.sleep(1)
os.reboot()
else
print("Update Failed! Cuase: NO internet connection")
os.sleep(1)
os.reboot()
end
end
end
end
end

screenX, screenY = term.getSize()