local UI = {}

-- Define the library
function UI.new()
    local self = {}
    self.windows = {}
    return self
end

-- Define the window class
function UI.Window(name)
    local self = {}
    self.name = name
    self.pages = {}
    return self
end

-- Define the page class
function UI.Page(name)
    local self = {}
    self.name = name
    self.sections = {}
    return self
end

-- Define the section class
function UI.Section(name, side, size)
    local self = {}
    self.name = name
    self.side = side
    self.size = size
    self.widgets = {}
    return self
end

-- Define the widget classes
function UI.Toggle(name, def, callback)
    local self = {}
    self.type = "toggle"
    self.name = name
    self.def = def
    self.callback = callback
    return self
end

function UI.Button(name, callback)
    local self = {}
    self.type = "button"
    self.name = name
    self.callback = callback
    return self
end

function UI.Dropdown(name, def, options, callback)
    local self = {}
    self.type = "dropdown"
    self.name = name
    self.def = def
    self.options = options
    self.callback = callback
    return self
end

function UI.Textbox(name, def, placeholder, callback)
    local self = {}
    self.type = "textbox"
    self.name = name
    self.def = def
    self.placeholder = placeholder
    self.callback = callback
    return self
end

function UI.Keybind(name, def, callback)
    local self = {}
    self.type = "keybind"
    self.name = name
    self.def = def
    self.callback = callback
    return self
end

function UI.ColorPicker(name, def, callback)
    local self = {}
    self.type = "colorpicker"
    self.name = name
    self.def = def
    self.callback = callback
    return self
end

-- Define window creation function
function UI.newWindow(name)
    local window = UI.Window(name)
    table.insert(UI.windows, window)  -- Make sure UI.windows is initialized as an empty table
    return window
end

return UI
