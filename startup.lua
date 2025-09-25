f = fs.open("/boot/kernel.lua", "r")
f = f.readAll()
loadstring(f)()
