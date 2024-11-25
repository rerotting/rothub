local iup = require "iup"

local function error_handler(err)
    print("Error:", err)
end

local dlg = iup.dialog{title = "My 3-Tab GUI"}

-- ... (rest of your code)

local success, err = pcall(dlg.show)
if not success then
    error_handler(err)
end

iup.MainLoop()
