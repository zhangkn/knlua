init("0", 0);
require "TSLib"

local sz = require("sz")
local http = sz.i82.http
local pos = sz.pos
local json = sz.json

pFlag = 1;
timer = 0;

while (true) do

	io.popen('echo "" > /private/var/log/syslog')

		-- mSleep(2000*60);			--2分钟检测一次
--[["1、处理设备lock"]]
	if deviceIsLock()  == 1 then	--判断设备是否锁定
		unlockDevice()--解锁无密码的设备
	end

--[[""]]


--[[""]]

	if isFrontApp("com.tencent.xin") == 0 then
		mSleep(3000);
		runApp("com.tencent.xin");
	end
end