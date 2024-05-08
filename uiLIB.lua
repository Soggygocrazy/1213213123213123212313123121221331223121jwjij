-- Define the UI library table
local UI = {}

-- Define the Window class
local Window = {}
Window.__index = Window

function UI.newWindow(properties)
    local self = setmetatable({}, Window)
    self.pages = {}
    -- Initialize window properties
    self.textsize = properties.textsize or 14
    self.font = properties.font or Enum.Font.Roboto
    self.name = properties.name or "Window"
    self.color = properties.color or Color3.new(1, 1, 1)
    self.titlecolor = properties.titlecolor or Color3.new(1, 1, 1)
    self.topcolor = properties.topcolor or Color3.new(1, 1, 1)
    self.sidecolor = properties.sidecolor or Color3.new(1, 1, 1)
    self.underlinecolor = properties.underlinecolor or Color3.new(1, 1, 1)
    self.backgroundimage = properties.backgroundimage or ""
    self.backgroundtransparency = properties.backgroundtransparency or 0
    self.backgroundblur = properties.backgroundblur or false
    return self
end

function Window:addPage(name)
    local page = {
        name = name,
        sections = {}
    }
    table.insert(self.pages, page)
    return page
end

-- Define the Page class
local Page = {}
Page.__index = Page

function Window:addSection(name, side, size)
    local section = {
        name = name,
        side = side,
        size = size,
        widgets = {}
    }
    table.insert(self.sections, section)
    return section
end

-- Define the Section class
local Section = {}
Section.__index = Section

function Section:addToggle(name, def, callback)
    local toggle = {
        type = "toggle",
        name = name,
        def = def,
        callback = callback
    }
    table.insert(self.widgets, toggle)
    return toggle
end

function Section:addButton(name, callback)
    local button = {
        type = "button",
        name = name,
        callback = callback
    }
    table.insert(self.widgets, button)
    return button
end

function Section:addDropdown(name, def, options, callback)
    local dropdown = {
        type = "dropdown",
        name = name,
        def = def,
        options = options,
        callback = callback
    }
    table.insert(self.widgets, dropdown)
    return dropdown
end

function Section:addTextbox(name, def, placeholder, callback)
    local textbox = {
        type = "textbox",
        name = name,
        def = def,
        placeholder = placeholder,
        callback = callback
    }
    table.insert(self.widgets, textbox)
    return textbox
end

function Section:addKeybind(name, def, callback)
    local keybind = {
        type = "keybind",
        name = name,
        def = def,
        callback = callback
    }
    table.insert(self.widgets, keybind)
    return keybind
end

function Section:addColorPicker(name, def, callback)
    local colorPicker = {
        type = "colorpicker",
        name = name,
        def = def,
        callback = callback
    }
    table.insert(self.widgets, colorPicker)
    return colorPicker
end

return UI
