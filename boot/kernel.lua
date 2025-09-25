while true do
mon = peripheral.find("monitor")
if fs.exists("disk/start.lua") then
term.redirect(mon)
mon.setTextScale(0.5)
dofile("disk/start.lua")
break
end
sleep(0.1)
end

os.shutdown()
