local iup = require "iup"

local dlg = iup.dialog{title = "My 3-Tab GUI"}

-- Create a tab notebook
local notebook = iup.tabnotebook{
    margin = 10,
    tabpos = "TOP"
}

-- Create three tabs
local tab1 = iup.vbox{
    iup.label{title = "Tab 1 Content"},
    iup.button{title = "Button 1"}
}

local tab2 = iup.hbox{
    iup.label{title = "Tab 2 Content"},
    iup.text{size = 100}
}

local tab3 = iup.vbox{
    iup.label{title = "Tab 3 Content"},
    iup.checkbox{title = "Check me"}
}

-- Add tabs to the notebook
notebook:add(tab1, "Tab 1")
notebook:add(tab2, "Tab 2")
notebook:add(tab3, "Tab 3")

-- Add the notebook to the dialog
dlg:add(notebook)

dlg:show()
iup.MainLoop()
