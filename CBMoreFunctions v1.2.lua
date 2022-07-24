script_name("CB MORE FUNCTIONS")
script_author("Vladislav Mirniy")


require "lib.moonloader"
require "lib.sampfuncs"
local sampev = require "lib.samp.events"
require "lib.vkeys"


requests = require('requests')



-- Main
local COLOR_MSG = 0xFF6500
local version = 1.2
yr = false

function main()
 while not isSampAvailable() do wait(100) end 

 if sampGetCurrentServerAddress() ~= '37.230.162.117' then script.unload() end
 thrSendAllias = lua_thread.create_suspended(ThreadSendAllias)
 
 req = requests.get("https://raw.githubusercontent.com/TTCUXUATP/CBMoreFunctions/main/maininfo")
 data = req.json()
 
 sampAddChatMessage("[SERVER]: {FFFFFF}CommandBlockMoreFunctions v"..version.." ������� ��������.",COLOR_MSG)
 if version ~= data['aversion'] then sampAddChatMessage("[SERVER]: {FFFFFF}� ��� ����������� ��������� ������ ������� CBMoreFunctions. ����������, �������� �!",COLOR_MSG) end
 
while true do

-- �����
 if isKeyJustPressed(VK_1) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias("//press_1") end
 if isKeyJustPressed(VK_2) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias("//press_2") end
 if isKeyJustPressed(VK_3) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias("//press_3") end
 if isKeyJustPressed(VK_4) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias("//press_4") end
 if isKeyJustPressed(VK_5) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias("//press_5") end
 if isKeyJustPressed(VK_6) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias("//press_6") end
 if isKeyJustPressed(VK_7) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias("//press_7") end
 if isKeyJustPressed(VK_8) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias("//press_8") end
 if isKeyJustPressed(VK_9) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias("//press_9") end
 if isKeyJustPressed(VK_0) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias("//press_0") end
 
 -- NUMPAD
 if isKeyJustPressed(VK_NUMPAD1) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias("//press_num1") end
 if isKeyJustPressed(VK_NUMPAD2) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias("//press_num2") end
 if isKeyJustPressed(VK_NUMPAD3) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias("//press_num3") end
 if isKeyJustPressed(VK_NUMPAD4) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias("//press_num4") end
 if isKeyJustPressed(VK_NUMPAD5) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias("//press_num5") end
 if isKeyJustPressed(VK_NUMPAD6) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias("//press_num6") end
 if isKeyJustPressed(VK_NUMPAD7) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias("//press_num7") end
 if isKeyJustPressed(VK_NUMPAD8) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias("//press_num8") end
 if isKeyJustPressed(VK_NUMPAD9) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias("//press_num9") end
 if isKeyJustPressed(VK_NUMPAD0) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias("//press_num0") end
 
 -- ������� F
 if isKeyJustPressed(VK_F1) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias("//press_f1") end
 if isKeyJustPressed(VK_F2) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias("//press_f2") end
 if isKeyJustPressed(VK_F3) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias("//press_f3") end
 if isKeyJustPressed(VK_F4) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias("//press_f4") end
 if isKeyJustPressed(VK_F5) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias("//press_f5") end
 if isKeyJustPressed(VK_F6) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias("//press_f6") end
 if isKeyJustPressed(VK_F7) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias("//press_f7") end
 if isKeyJustPressed(VK_F8) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias("//press_f8") end
 if isKeyJustPressed(VK_F9) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias("//press_f9") end
 if isKeyJustPressed(VK_F10) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias("//press_f10") end
 if isKeyJustPressed(VK_F11) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias("//press_f11") end
 if isKeyJustPressed(VK_F12) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias("//press_f12") end
 
 -- ������� �������
 if isKeyJustPressed(VK_A) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias("//press_a") end
 if isKeyJustPressed(VK_B) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias("//press_b") end
 if isKeyJustPressed(VK_C) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias("//press_c") end
 if isKeyJustPressed(VK_D) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias("//press_d") end
 if isKeyJustPressed(VK_E) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias("//press_e") end
 if isKeyJustPressed(VK_F) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias("//press_f") end
 if isKeyJustPressed(VK_G) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias("//press_g") end
 if isKeyJustPressed(VK_H) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias("//press_h") end
 if isKeyJustPressed(VK_I) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias("//press_i") end
 if isKeyJustPressed(VK_J) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias("//press_j") end
 if isKeyJustPressed(VK_K) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias("//press_k") end
 if isKeyJustPressed(VK_L) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias("//press_l") end
 if isKeyJustPressed(VK_M) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias("//press_m") end
 if isKeyJustPressed(VK_N) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias("//press_n") end
 if isKeyJustPressed(VK_O) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias("//press_o") end
 if isKeyJustPressed(VK_R) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias("//press_r") end
 if isKeyJustPressed(VK_Q) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias("//press_q") end
 if isKeyJustPressed(VK_P) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias("//press_p") end
 if isKeyJustPressed(VK_S) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias("//press_s") end
 if isKeyJustPressed(VK_T) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias("//press_t") end
 if isKeyJustPressed(VK_U) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias("//press_u") end
 if isKeyJustPressed(VK_V) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias("//press_v") end
 if isKeyJustPressed(VK_W) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias("//press_w") end
 if isKeyJustPressed(VK_X) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias("//press_x") end
 if isKeyJustPressed(VK_Y) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias("//press_y") end

 if isKeyJustPressed(VK_PAUSE) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias("//press_pause") end
 if isKeyJustPressed(VK_ESCAPE) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias("//press_esc") end
 if isKeyJustPressed(VK_XBUTTON1) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias("//press_xb1") end
 if isKeyJustPressed(VK_XBUTTON2) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias("//press_xb2") end


 wait(0)
end

end








function ThreadSendAllias(command)
wait(500)

sampSendChat(command)
end


function makeScreenshot(disable)
    if disable then displayHud(false) sampSetChatDisplayMode(0) end
    require('memory').setuint8(sampGetBase() + 0x119CBC, 1)
    if disable then displayHud(true) sampSetChatDisplayMode(2) end
end

function sscanf(str,element)
str = str.." 0"
local nel = 0

local lastsp = 0

if element < 2 or element > 9 then return str end

for i = 1, 11 do

 if str:find(" ",lastsp + 1) then
 nel = nel + 1
 
 if nel == element then
 local nowsp = string.find(str," ",lastsp + 1)
 str = string.sub(str,lastsp,nowsp)
 break
 else
 lastsp = string.find(str," ",lastsp + 1) + 1
 end
 
end
end

return str
end

function addGangZone(id, left, up, right, down, color) -- �������� ����-����.
    local bs = raknetNewBitStream()
    raknetBitStreamWriteInt16(bs, id)
    raknetBitStreamWriteFloat(bs, left)
    raknetBitStreamWriteFloat(bs, up)
    raknetBitStreamWriteFloat(bs, right)
    raknetBitStreamWriteFloat(bs, down)
    raknetBitStreamWriteInt32(bs, color)
    raknetEmulRpcReceiveBitStream(108, bs)
    raknetDeleteBitStream(bs)
end

function removeGangZone(id) -- �������� ����-���� �� ID
    local bs = raknetNewBitStream()
    raknetBitStreamWriteInt16(bs, id)
    raknetEmulRpcReceiveBitStream(120, bs)
    raknetDeleteBitStream(bs)
end

function sampev.onServerMessage(color,text)
if not text:find("#") then return true end
if not text:find('CB') then return true end
	
	text = string.lower(text)
	
	if text:find('��������') then
		sampSendChat('//mf_access')
		return false
	end
	
	if text:find('���������') then
	
	local q1 = string.find(text,'��') + 3
	text = string.sub(text,q1,144)

		local gID = string.match(text,"%d+")
		local minX = sscanf(text,2)
		local minY = sscanf(text,3)
		local maxX = sscanf(text,4)
		local maxY = sscanf(text,5)
		local color = sscanf(text,6)
		
		addGangZone(gID,minX,minY,maxX,maxY,color)
		return false
	end
	
	if text:find('�����������') then
		for i = 0, 100 do sampAddChatMessage(" ",0xFFFFFFFF) end
		return false
	end
	
	if text:find('���������') then
		local gID = string.match(text, "%d+")
		removeGangZone(gID)
		return false
	end
	
	if text:find('������') then
		local q1 = string.find(text,"%d+")
		local q2 = string.find(text," ",q1 + 1)
		local q2 = string.find(text," ",q2 + 1)
		local el = string.match(text,"%d")
		sampAddChatMessage(el,-1)
		
		local str = string.sub(text,q2,144)
		local res = sscanf(str,tonumber(el))
		sampSendChat("//sscanf #"..res.."#")
		sampAddChatMessage(res,-1)
	end
	
	if text:find('��������') then
		if text:find('true') then makeScreenshot(true)
		else
		makeScreenshot(false)
		end
		return false
	end

	return true
end


function sampev.onSendVehicleDamaged(vehicleId,panelDmg,doorDmg,lights,tires)
thrSendAllias:run("//vdamage "..vehicleId.." "..panelDmg.." "..doorDmg)
return true
end

function sampev.onSendVehicleDestroyed(vehicleId)
thrSendAllias:run("//vdestroy "..vehicleId)
return true
end

function sampev.onSetPlayerSpecialAction(actionId)
thrSendAllias:run("//saction "..actionId)
return true
end

function sampev.onSetInterior(interior)
thrSendAllias:run("//set_int "..interior)
return true
end

function sampev.onSendRconCommand(command)
thrSendAllias:run("//rcon ".."#"..command.."#")
return true
end

function sampev.onAttachTrailerToVehicle(trailerId,vehicleId)
thrSendAllias:run("//atrailer "..trailerId.." "..vehicleId)
return true
end

function sampev.onDetachTrailerFromVehicle(vehicleId)
thrSendAllias:run("//datrailer "..vehicleId)
return true
end