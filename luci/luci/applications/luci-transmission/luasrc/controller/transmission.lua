--[[
LuCI - Lua Configuration Interface - Transmission support

Copyright 2012 Rui Shen <shenrui01@gmail.com>

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

	http://www.apache.org/licenses/LICENSE-2.0

$Id$
]]--

module("luci.controller.transmission", package.seeall)

function index()
	require("luci.i18n")
	luci.i18n.loadc("transmission")
	if not nixio.fs.access("/etc/config/transmission") then
		return
	end

	local page = entry({"admin", "diskapply", "transmission"}, cbi("transmission"), _("Transmission"))
	page.i18n = "transmission"
	page.dependent = true

end
