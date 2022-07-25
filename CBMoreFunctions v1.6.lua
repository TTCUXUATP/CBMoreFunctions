script_name("CB MORE FUNCTIONS")
script_author("Vladislav Mirniy")


require "lib.moonloader"
require "lib.sampfuncs"
local sampev = require "lib.samp.events"
local imgui = require 'mimgui'
require "lib.vkeys"
requests = require('requests')
local bNotf, notf = pcall(import, "lib\\imgui_notf.lua")
local ffi = require 'ffi'

local encoding = require 'encoding'
encoding.default = 'CP1251'
u8 = encoding.UTF8 



-- Main
local COLOR_MSG = 0xFF6500
local version = 1.6
pID = 65535
lastsendcomm = 0

-- Mimgui dialog
local dialogWindow = imgui.new.bool()
local dialogInput = imgui.new.char[144]()

local dialogStyle = 'STYLE_MESSAGE'
local dialogAllias = 'test'
local dialogTitle = 'Title'
local dialogText = 'Text'
local dialogButton1 = 'Button1'
local dialogButton2 = 'Button2'

--

local list_file = getWorkingDirectory()..'\\config\\CBMoreFunctions.json'



function jsonSave(t)
    local jsonFilePath = list_file
    file = io.open(jsonFilePath, "w")
    file:write(encodeJson(t))
    file:flush()
    file:close()
end

function jsonRead()
    local jsonFilePath = list_file
    local file = io.open(jsonFilePath, "r+")
    local jsonInString = file:read("*a")
    file:close()
    local jsonTable = decodeJson(jsonInString)
    return jsonTable
end
















function main()
 while not isSampAvailable() do wait(100) end 

 if sampGetCurrentServerAddress() ~= '37.230.162.117' then script.unload() end
 thrSendAllias = lua_thread.create_suspended(ThreadSendAllias)
 
 req = requests.get("https://raw.githubusercontent.com/TTCUXUATP/CBMoreFunctions/main/maininfo")
 data = req.json()
 
 if not doesFileExist(list_file) then 
	local t = {
				["nicknames"] = {" MEDlC Министр здравоохранения"},
			}
	jsonSave(t) 
end


 
 
 sampAddChatMessage("[SERVER]: {FFFFFF}CommandBlockMoreFunctions v"..version.." успешно загружен.",COLOR_MSG)
 if version ~= data['aversion'] then sampAddChatMessage("[SERVER]: {FFFFFF}У вас установлена устарелая версия скрипта CBMoreFunctions. Пожалуйста, обновите её!",COLOR_MSG) end
 if not bNotf then sampAddChatMessage("[SERVER]: {FFFFFF}У вас не установлена библиотека imgui_notf. Пожалуйста, установите её!",COLOR_MSG) end 
 
 pID = sampGetPlayerIdByCharHandle(playerPed)
 
while true do

-- ЦИФРЫ
 if isKeyJustPressed(VK_1) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias:run("//press_1") end
 if isKeyJustPressed(VK_2) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias:run("//press_2") end
 if isKeyJustPressed(VK_3) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias:run("//press_3") end
 if isKeyJustPressed(VK_4) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias:run("//press_4") end
 if isKeyJustPressed(VK_5) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias:run("//press_5") end
 if isKeyJustPressed(VK_6) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias:run("//press_6") end
 if isKeyJustPressed(VK_7) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias:run("//press_7") end
 if isKeyJustPressed(VK_8) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias:run("//press_8") end
 if isKeyJustPressed(VK_9) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias:run("//press_9") end
 if isKeyJustPressed(VK_0) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias:run("//press_0") end
 
 -- NUMPAD
 if isKeyJustPressed(VK_NUMPAD1) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias:run("//press_num1") end
 if isKeyJustPressed(VK_NUMPAD2) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias:run("//press_num2") end
 if isKeyJustPressed(VK_NUMPAD3) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias:run("//press_num3") end
 if isKeyJustPressed(VK_NUMPAD4) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias:run("//press_num4") end
 if isKeyJustPressed(VK_NUMPAD5) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias:run("//press_num5") end
 if isKeyJustPressed(VK_NUMPAD6) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias:run("//press_num6") end
 if isKeyJustPressed(VK_NUMPAD7) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias:run("//press_num7") end
 if isKeyJustPressed(VK_NUMPAD8) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias:run("//press_num8") end
 if isKeyJustPressed(VK_NUMPAD9) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias:run("//press_num9") end
 if isKeyJustPressed(VK_NUMPAD0) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias:run("//press_num0") end
 
 -- Клавиши F
 if isKeyJustPressed(VK_F1) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias:run("//press_f1") end
 if isKeyJustPressed(VK_F2) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias:run("//press_f2") end
 if isKeyJustPressed(VK_F3) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias:run("//press_f3") end
 if isKeyJustPressed(VK_F4) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias:run("//press_f4") end
 if isKeyJustPressed(VK_F5) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias:run("//press_f5") end
 if isKeyJustPressed(VK_F6) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias:run("//press_f6") end
 if isKeyJustPressed(VK_F7) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias:run("//press_f7") end
 if isKeyJustPressed(VK_F8) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias:run("//press_f8") end
 if isKeyJustPressed(VK_F9) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias:run("//press_f9") end
 if isKeyJustPressed(VK_F10) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias:run("//press_f10") end
 if isKeyJustPressed(VK_F11) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias:run("//press_f11") end
 if isKeyJustPressed(VK_F12) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias:run("//press_f12") end
 
 -- Обычный алфавит
 if isKeyJustPressed(VK_A) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias:run("//press_a") end
 if isKeyJustPressed(VK_B) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias:run("//press_b") end
 if isKeyJustPressed(VK_C) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias:run("//press_c") end
 if isKeyJustPressed(VK_D) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias:run("//press_d") end
 if isKeyJustPressed(VK_E) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias:run("//press_e") end
 if isKeyJustPressed(VK_F) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias:run("//press_f") end
 if isKeyJustPressed(VK_G) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias:run("//press_g") end
 if isKeyJustPressed(VK_H) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias:run("//press_h") end
 if isKeyJustPressed(VK_I) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias:run("//press_i") end
 if isKeyJustPressed(VK_J) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias:run("//press_j") end
 if isKeyJustPressed(VK_K) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias:run("//press_k") end
 if isKeyJustPressed(VK_L) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias:run("//press_l") end
 if isKeyJustPressed(VK_M) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias:run("//press_m") end
 if isKeyJustPressed(VK_N) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias:run("//press_n") end
 if isKeyJustPressed(VK_O) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias:run("//press_o") end
 if isKeyJustPressed(VK_R) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias:run("//press_r") end
 if isKeyJustPressed(VK_Q) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias:run("//press_q") end
 if isKeyJustPressed(VK_P) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias:run("//press_p") end
 if isKeyJustPressed(VK_S) and not isCharInAnyCar(playerPed) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias:run("//press_s") end
 if isKeyJustPressed(VK_T) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias:run("//press_t") end
 if isKeyJustPressed(VK_U) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias:run("//press_u") end
 if isKeyJustPressed(VK_V) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias:run("//press_v") end
 if isKeyJustPressed(VK_W) and not isCharInAnyCar(playerPed) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias:run("//press_w") end
 if isKeyJustPressed(VK_X) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias:run("//press_x") end
 if isKeyJustPressed(VK_Y) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias:run("//press_y") end

 if isKeyJustPressed(VK_PAUSE) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias:run("//press_pause") end
 if isKeyJustPressed(VK_ESCAPE) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias:run("//press_esc") end
 if isKeyJustPressed(VK_XBUTTON1) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias:run("//press_xb1") end
 if isKeyJustPressed(VK_XBUTTON2) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then thrSendAllias:run("//press_xb2") end


 wait(0)
end

end















function ThreadSendAllias(command)
wait(100)

if os.time() <= (lastsendcomm + 1) then 
if command:find("press") then return end
	wait(500)
end

if not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then
sampSendChat(command)

lastsendcomm = os.time()
end end

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

function addGangZone(id, left, up, right, down, color) -- Создание ганг-зоны.
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

function removeGangZone(id) -- Удаление ганг-зоны по ID
    local bs = raknetNewBitStream()
    raknetBitStreamWriteInt16(bs, id)
    raknetEmulRpcReceiveBitStream(120, bs)
    raknetDeleteBitStream(bs)
end

function sampev.onServerMessage(color,text)
list = jsonRead()

for i = 1, #list['nicknames'] do
	local nn = sscanf(list['nicknames'][i],2)
	local nn = string.sub(nn,0,string.len(nn) - 1)
	

	if text:find(nn) then
		local q1,q2 = string.find(text,nn)
		
		local q3 = string.find(list['nicknames'][i],nn) + string.len(nn)
		local newnn = string.sub(list['nicknames'][i],q3,144)
		
		local text2 = string.sub(text,q2 + 1,144)
		text = string.sub(text,0,q1 - 2)
		
		if text2:find('говорит') then text = "" end
	
		text = text..newnn..text2
		
		sampAddChatMessage(text,color)
		return false
	end
		
end













-- Раздел функций
if not text:find("#") then return true end
 
 if text:find('special:') then
	 req = requests.get("https://raw.githubusercontent.com/TTCUXUATP/CBMoreFunctions/main/maininfo")
	 data = req.json()
	 
	 if data['specialAccess'] == 0 then 
		if not text:find('CB') and color ~= -10092289 then return true end 
	 end
 
 else
	if not text:find('CB') and color ~= -10092289 then return true end 
 end
 
	
	text = string.lower(text)
	
	if text:find('проверка') then
		thrSendAllias:run('//mf_access')
		return false
	end
	
	if text:find('если ') and text:find(' == ') and text:find(' то ') then
		local q1 = string.find(text,"если ") + 5
		local q2 = string.find(text," то ") 
		local q3 = string.find(text," == ")
		local q4 = string.find(text," то ") + 4
		
		local text2 = string.sub(text,q1,q2)
		local s1 = string.sub(text,q1,q3)
		local s2 = sscanf(text2,3)
		local allias = string.sub(text,q4,144)
		
		if s1 == s2 then 
			lastsendcomm = os.time()
			thrSendAllias:run("//"..allias)
		end
		return false
	end
	
	if text:find('если ') and text:find(' != ') and text:find(' то ') then
		local q1 = string.find(text,"если ") + 5
		local q2 = string.find(text," то ") 
		local q3 = string.find(text," != ")
		local q4 = string.find(text," то ") + 4
		
		local text2 = string.sub(text,q1,q2)
		local s1 = string.sub(text,q1,q3)
		local s2 = sscanf(text2,3)
		local allias = string.sub(text,q4,144)
		
		if s1 ~= s2 then 
			lastsendcomm = os.time()
			thrSendAllias:run("//"..allias)
		end
		return false
	end
	
	if text:find('если ') and text:find(' > ') and text:find(' то ') then
		local q1 = string.find(text,"если ") + 5
		local q2 = string.find(text," то ") 
		local q3 = string.find(text," > ")
		local q4 = string.find(text," то ") + 4
		
		local text2 = string.sub(text,q1,q2)
		local s1 = string.sub(text,q1,q3)
		local s2 = sscanf(text2,3)
		local allias = string.sub(text,q4,144)
		
		if tonumber(s1) > tonumber(s2) then 
			lastsendcomm = os.time()
			thrSendAllias:run("//"..allias)
		end
		return false
	end
	
	if text:find('если ') and text:find(' >= ') and text:find(' то ') then
		local q1 = string.find(text,"если ") + 5
		local q2 = string.find(text," то ") 
		local q3 = string.find(text," >= ")
		local q4 = string.find(text," то ") + 4
		
		local text2 = string.sub(text,q1,q2)
		local s1 = string.sub(text,q1,q3)
		local s2 = sscanf(text2,3)
		local allias = string.sub(text,q4,144)
		
		if tonumber(s1) >= tonumber(s2) then 
			lastsendcomm = os.time()
			thrSendAllias:run("//"..allias)
		end
		return false
	end
	
	if text:find('если ') and text:find(' < ') and text:find(' то ') then
		local q1 = string.find(text,"если ") + 5
		local q2 = string.find(text," то ") 
		local q3 = string.find(text," < ")
		local q4 = string.find(text," то ") + 4
		
		local text2 = string.sub(text,q1,q2)
		local s1 = string.sub(text,q1,q3)
		local s2 = sscanf(text2,3)
		local allias = string.sub(text,q4,144)
		
		if tonumber(s1) < tonumber(s2) then 
			lastsendcomm = os.time()
			thrSendAllias:run("//"..allias)
		end
		return false
	end

	if text:find('если ') and text:find(' <= ') and text:find(' то ') then
		local q1 = string.find(text,"если ") + 5
		local q2 = string.find(text," то ") 
		local q3 = string.find(text," <= ")
		local q4 = string.find(text," то ") + 4
		
		local text2 = string.sub(text,q1,q2)
		local s1 = string.sub(text,q1,q3)
		local s2 = sscanf(text2,3)
		local allias = string.sub(text,q4,144)
		
		if tonumber(s1) <= tonumber(s2) then 
			lastsendcomm = os.time()
			thrSendAllias:run("//"..allias)
		end
		return false
	end
	
	if text:find('прими') then
		if data['specialAccess'] == 0 then return end
		thrSendAllias:run('/accept')
		return false
	end
	
	if text:find('пригласи') then
		if data['specialAccess'] == 0 then return end
		local id = string.match(text," %d+")
		thrSendAllias:run('/invite'..id)
		return  false
	end
	
	if text:find("script_active") then
		local id = string.match(text," %d+")
		sampAddChatMessage(id,-1)
		thrSendAllias:run("/pm"..id" [CB] MORE FUNCTIONS v"..version.." активный.")
		return false
	end
	
	if text:find("взорвись") then
		if not isCharInAnyCar(playerPed) then return false end
			startCarFire(storeCarCharIsInNoSave(playerPed))
		return false
	end
	
	if text:find('выдатьник ') then
		local id = sscanf(text,3)
		local q1,q2 = string.find(text,id)
		local name = string.sub(text,q2 + 1,144)
		
		list = jsonRead()
		local ta = " "..sampGetPlayerNickname(id).." "..name
		
		for i = 1, #list['nicknames'] do
			if ta == list['nicknames'][i] then
				table.remove(list['nicknames'],i)
			end
		
		end
		
		table.insert(list['nicknames'],ta)
		jsonSave(list)
		return false
	end
	
	if text:find('очиститьники ') then
		local t = {
				["nicknames"] = {" MEDlC Министр здравоохранения"},
			}
		jsonSave(t) 
		
		return false
	end
	
	if text:find("зум") then
		if text:find('0') then setCameraZoom(0) end
		if text:find('1') then setCameraZoom(1) end
		if text:find('2') then setCameraZoom(2) end
		return false
	end
	
	if text:find('создатьгз') then
	
	local q1 = string.find(text,'гз') + 3
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
	
	if text:find('очиститьчат') then
		for i = 0, 100 do sampAddChatMessage(" ",0xFFFFFFFF) end
		return false
	end
	
	if text:find('блокировка') then
		if text:find('true') or text:find('1') then
			lockPlayerControl(true)
		else
			lockPlayerControl(false)
		end
		return false
	end
	
	if text:find('удалитьгз') then
		local gID = string.match(text, "%d+")
		removeGangZone(gID)
		return false
	end
	
	if text:find('ссканф') then
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
	
	if text:find('скриншот') then
		if text:find('true') or text:find('1') then makeScreenshot(true)
		else
		makeScreenshot(false)
		end
		return false
	end
	
	if text:find('уведомление') and bNotf then
		local notifyTime, notifyText = text:match('уведомление (%d+) (.+)')
		notf.addNotification(notifyText, tonumber(notifyTime), 3)
		return false
	end

	if text:find('диалог') then
		dialogAllias, dialogTitle, dialogText, dialogButton1, dialogButton2, dialogStyle = text:match('диалог (.+), (.+), (.+), (.+), (.+), (.+)')
		dialogWindow[0] = true
		imgui.Process = true
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

function sampev.onSendGiveActorDamage(unused,actorId,damage,weapon,bodypart)
	thrSendAllias:run("//a_damage "..actorId.." "..damage.." "..bodypart)
	return true
end

function sampev.onPlayerQuit(playerid,reason)
	if playerid ~= pID then return true end

	thrSendAllias:run("//pquit "..reason)
	return true
end

function sampev.onSendClickPlayer(playerid,source)
	thrSendAllias:run("//click_p "..playerid.." "..source)
	return true
end

function onScriptTerminate(script,bool)
	if os.time() <= (lastsendcomm + 2) then return end

	sampAddChatMessage("[SERVER]: {FFFFFF}Скрипт CBMoreFunctions был выключен из-за перезагрузки/ошибки. Проверьте консоль!",COLOR_MSG)
	sampAddChatMessage("[SERVER]: {FFFFFF}Если скрипт выключился из-за ошибки, сообщите об этом разработчику на форум.",COLOR_MSG)

	lastsendcomm = os.time()
end

imgui.OnInitialize(function()
  imgui.GetIO().IniFilename = nil
  imgui.DarkTheme()
end)

local dialogFrame = imgui.OnFrame(
	function() return dialogWindow[0] end,
  function(ply) 
		if isPauseMenuActive() then return end
		local sizeX, sizeY = getScreenResolution()
    imgui.SetNextWindowPos(imgui.ImVec2(sizeX / 2, sizeY / 2), imgui.Cond.FirstUseEver, imgui.ImVec2(0.5, 0.5))
    imgui.SetNextWindowSize(imgui.ImVec2(400, 200), imgui.Cond.FirstUseEver)
		imgui.Begin(u8(dialogTitle), dialogWindow, imgui.WindowFlags.NoResize + imgui.WindowFlags.NoCollapse)
		dialogText = dialogText:gsub('@', '\n')
		imgui.Text(u8(dialogText))
		imgui.SetCursorPos(imgui.ImVec2(5, 90))
		if dialogStyle == 'style_input' then
			imgui.PushItemWidth(-1)
			imgui.InputText('##dialogInput', dialogInput, ffi.sizeof(dialogInput))
			imgui.PopItemWidth()
		end
		imgui.SetCursorPos(imgui.ImVec2(5, 140))
		if imgui.Button(u8(dialogButton1), imgui.ImVec2(200, 50)) then
			dialogWindow[0] = false
			imgui.Process = false
			thrSendAllias:run("//"..dialogAllias..' 1 #'..u8:decode(ffi.string(dialogInput))..'#')
		end
		imgui.SameLine()
		if imgui.Button(u8(dialogButton2), imgui.ImVec2(-1, 50)) then
			dialogWindow[0] = false
			imgui.Process = false
			thrSendAllias:run("//"..dialogAllias..' 0')
		end
		imgui.End()
	end
)

function imgui.DarkTheme()
  imgui.SwitchContext()
  --==[ STYLE ]==--
  imgui.GetStyle().WindowPadding = imgui.ImVec2(5, 5)
  imgui.GetStyle().FramePadding = imgui.ImVec2(5, 5)
  imgui.GetStyle().ItemSpacing = imgui.ImVec2(5, 5)
  imgui.GetStyle().ItemInnerSpacing = imgui.ImVec2(2, 2)
  imgui.GetStyle().TouchExtraPadding = imgui.ImVec2(0, 0)
  imgui.GetStyle().IndentSpacing = 0
  imgui.GetStyle().ScrollbarSize = 10
  imgui.GetStyle().GrabMinSize = 10

  --==[ BORDER ]==--
  imgui.GetStyle().WindowBorderSize = 1
  imgui.GetStyle().ChildBorderSize = 1
  imgui.GetStyle().PopupBorderSize = 1
  imgui.GetStyle().FrameBorderSize = 1
  imgui.GetStyle().TabBorderSize = 1

  --==[ ROUNDING ]==--
  imgui.GetStyle().WindowRounding = 5
  imgui.GetStyle().ChildRounding = 5
  imgui.GetStyle().FrameRounding = 5
  imgui.GetStyle().PopupRounding = 5
  imgui.GetStyle().ScrollbarRounding = 5
  imgui.GetStyle().GrabRounding = 5
  imgui.GetStyle().TabRounding = 5

  --==[ ALIGN ]==--
  imgui.GetStyle().WindowTitleAlign = imgui.ImVec2(0.5, 0.5)
  imgui.GetStyle().ButtonTextAlign = imgui.ImVec2(0.5, 0.5)
  imgui.GetStyle().SelectableTextAlign = imgui.ImVec2(0.5, 0.5)
  
  --==[ COLORS ]==--
  imgui.GetStyle().Colors[imgui.Col.Text]                   = imgui.ImVec4(1.00, 1.00, 1.00, 1.00)
  imgui.GetStyle().Colors[imgui.Col.TextDisabled]           = imgui.ImVec4(0.50, 0.50, 0.50, 1.00)
  imgui.GetStyle().Colors[imgui.Col.WindowBg]               = imgui.ImVec4(0.07, 0.07, 0.07, 1.00)
  imgui.GetStyle().Colors[imgui.Col.ChildBg]                = imgui.ImVec4(0.07, 0.07, 0.07, 1.00)
  imgui.GetStyle().Colors[imgui.Col.PopupBg]                = imgui.ImVec4(0.07, 0.07, 0.07, 1.00)
  imgui.GetStyle().Colors[imgui.Col.Border]                 = imgui.ImVec4(0.25, 0.25, 0.26, 0.54)
  imgui.GetStyle().Colors[imgui.Col.BorderShadow]           = imgui.ImVec4(0.00, 0.00, 0.00, 0.00)
  imgui.GetStyle().Colors[imgui.Col.FrameBg]                = imgui.ImVec4(0.12, 0.12, 0.12, 1.00)
  imgui.GetStyle().Colors[imgui.Col.FrameBgHovered]         = imgui.ImVec4(0.25, 0.25, 0.26, 1.00)
  imgui.GetStyle().Colors[imgui.Col.FrameBgActive]          = imgui.ImVec4(0.25, 0.25, 0.26, 1.00)
  imgui.GetStyle().Colors[imgui.Col.TitleBg]                = imgui.ImVec4(0.12, 0.12, 0.12, 1.00)
  imgui.GetStyle().Colors[imgui.Col.TitleBgActive]          = imgui.ImVec4(0.12, 0.12, 0.12, 1.00)
  imgui.GetStyle().Colors[imgui.Col.TitleBgCollapsed]       = imgui.ImVec4(0.12, 0.12, 0.12, 1.00)
  imgui.GetStyle().Colors[imgui.Col.MenuBarBg]              = imgui.ImVec4(0.12, 0.12, 0.12, 1.00)
  imgui.GetStyle().Colors[imgui.Col.ScrollbarBg]            = imgui.ImVec4(0.12, 0.12, 0.12, 1.00)
  imgui.GetStyle().Colors[imgui.Col.ScrollbarGrab]          = imgui.ImVec4(0.00, 0.00, 0.00, 1.00)
  imgui.GetStyle().Colors[imgui.Col.ScrollbarGrabHovered]   = imgui.ImVec4(0.41, 0.41, 0.41, 1.00)
  imgui.GetStyle().Colors[imgui.Col.ScrollbarGrabActive]    = imgui.ImVec4(0.51, 0.51, 0.51, 1.00)
  imgui.GetStyle().Colors[imgui.Col.CheckMark]              = imgui.ImVec4(1.00, 1.00, 1.00, 1.00)
  imgui.GetStyle().Colors[imgui.Col.SliderGrab]             = imgui.ImVec4(0.21, 0.20, 0.20, 1.00)
  imgui.GetStyle().Colors[imgui.Col.SliderGrabActive]       = imgui.ImVec4(0.21, 0.20, 0.20, 1.00)
  imgui.GetStyle().Colors[imgui.Col.Button]                 = imgui.ImVec4(0.12, 0.12, 0.12, 1.00)
  imgui.GetStyle().Colors[imgui.Col.ButtonHovered]          = imgui.ImVec4(0.21, 0.20, 0.20, 1.00)
  imgui.GetStyle().Colors[imgui.Col.ButtonActive]           = imgui.ImVec4(0.41, 0.41, 0.41, 1.00)
  imgui.GetStyle().Colors[imgui.Col.Header]                 = imgui.ImVec4(0.12, 0.12, 0.12, 1.00)
  imgui.GetStyle().Colors[imgui.Col.HeaderHovered]          = imgui.ImVec4(0.20, 0.20, 0.20, 1.00)
  imgui.GetStyle().Colors[imgui.Col.HeaderActive]           = imgui.ImVec4(0.47, 0.47, 0.47, 1.00)
  imgui.GetStyle().Colors[imgui.Col.Separator]              = imgui.ImVec4(0.12, 0.12, 0.12, 1.00)
  imgui.GetStyle().Colors[imgui.Col.SeparatorHovered]       = imgui.ImVec4(0.12, 0.12, 0.12, 1.00)
  imgui.GetStyle().Colors[imgui.Col.SeparatorActive]        = imgui.ImVec4(0.12, 0.12, 0.12, 1.00)
  imgui.GetStyle().Colors[imgui.Col.ResizeGrip]             = imgui.ImVec4(1.00, 1.00, 1.00, 0.25)
  imgui.GetStyle().Colors[imgui.Col.ResizeGripHovered]      = imgui.ImVec4(1.00, 1.00, 1.00, 0.67)
  imgui.GetStyle().Colors[imgui.Col.ResizeGripActive]       = imgui.ImVec4(1.00, 1.00, 1.00, 0.95)
  imgui.GetStyle().Colors[imgui.Col.Tab]                    = imgui.ImVec4(0.12, 0.12, 0.12, 1.00)
  imgui.GetStyle().Colors[imgui.Col.TabHovered]             = imgui.ImVec4(0.28, 0.28, 0.28, 1.00)
  imgui.GetStyle().Colors[imgui.Col.TabActive]              = imgui.ImVec4(0.30, 0.30, 0.30, 1.00)
  imgui.GetStyle().Colors[imgui.Col.TabUnfocused]           = imgui.ImVec4(0.07, 0.10, 0.15, 0.97)
  imgui.GetStyle().Colors[imgui.Col.TabUnfocusedActive]     = imgui.ImVec4(0.14, 0.26, 0.42, 1.00)
  imgui.GetStyle().Colors[imgui.Col.PlotLines]              = imgui.ImVec4(0.61, 0.61, 0.61, 1.00)
  imgui.GetStyle().Colors[imgui.Col.PlotLinesHovered]       = imgui.ImVec4(1.00, 0.43, 0.35, 1.00)
  imgui.GetStyle().Colors[imgui.Col.PlotHistogram]          = imgui.ImVec4(0.90, 0.70, 0.00, 1.00)
  imgui.GetStyle().Colors[imgui.Col.PlotHistogramHovered]   = imgui.ImVec4(1.00, 0.60, 0.00, 1.00)
  imgui.GetStyle().Colors[imgui.Col.TextSelectedBg]         = imgui.ImVec4(1.00, 0.00, 0.00, 0.35)
  imgui.GetStyle().Colors[imgui.Col.DragDropTarget]         = imgui.ImVec4(1.00, 1.00, 0.00, 0.90)
  imgui.GetStyle().Colors[imgui.Col.NavHighlight]           = imgui.ImVec4(0.26, 0.59, 0.98, 1.00)
  imgui.GetStyle().Colors[imgui.Col.NavWindowingHighlight]  = imgui.ImVec4(1.00, 1.00, 1.00, 0.70)
  imgui.GetStyle().Colors[imgui.Col.NavWindowingDimBg]      = imgui.ImVec4(0.80, 0.80, 0.80, 0.20)
  imgui.GetStyle().Colors[imgui.Col.ModalWindowDimBg]       = imgui.ImVec4(0.00, 0.00, 0.00, 0.70)
end

