modem = peripheral.find("modem")
id = tostring(os.getComputerID)
-- Check for modem
if modem then
	modemSide = peripheral.getName(modem)
	if not rednet.isOpen() then rednet.open(modemSide) end
else
	return "No modem available"
end

api = {}

rednet.host("KCP", id)

function api.getKey()
id, key = rednet.receive(0.01)
return key
end

return api
