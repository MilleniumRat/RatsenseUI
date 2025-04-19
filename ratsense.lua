-- Credits To The Original Devs @xz, @goof
getgenv().Config = {
    Invite = "ratsense.cc",
    Version = "0.1",
}

getgenv().luaguardvars = {
    DiscordName = "Maxxyyyy",
}

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/MilleniumRat/RatsenseUI/refs/heads/main/RatsenseUI.lua"))()

library:init() -- Initalizes Library Do Not Delete This

local Window = library.NewWindow({
    title = "Ratsense.cc",
    size = UDim2.new(0, 525, 0, 650)
})

local tabs = {
    Tab1 = Window:AddTab("Rage"),
    Settings = library:CreateSettingsTab(Window),
}

-- 1 = Set Section Box To The Left
-- 2 = Set Section Box To The Right

local sections = {
    Section1 = tabs.Tab1:AddSection("Main", 1),
    Section2 = tabs.Tab1:AddSection("Settings", 2),
}

sections.Section1:AddToggle({
    enabled = true,
    text = "Aimbot",
    flag = "Toggle_1",
    tooltip = "Enables Aimbot",
    risky = false, -- turns text to red and sets label to risky
    callback = function(lol)
        print("Toggle Is Now Set To : ".. lol)
    end
})


sections.Section1:AddBind({
    text = "Aimbot Keybind",
    flag = "Key_1",
    nomouse = true,
    noindicator = true,
    tooltip = "Keybind you set for the Aimbot Activation",
    mode = "toggle",
    bind = Enum.KeyCode.LeftAlt,
    risky = false,
    keycallback = function(v)
        print("Keybind Changed!")
    end
})

sections.Section1:AddSeparator({
    text = "Aimbot Settings"
})

sections.Section1:AddSlider({
    text = "Smoothness", 
    flag = 'Slider_1', 
    suffix = "", 
    value = 0.000,
    min = 0.1, 
    max = 1,
    increment = 0.001,
    tooltip = "Smoothness Amount",
    risky = false,
    callback = function(v) 
        print("Slider Value Is Now : ".. v)
    end
})

sections.Section1:AddList({
    enabled = true,
    text = "Prefer Hitbox",
    flag = "List_1",
    multi = false,
    tooltip = "Select the Priority Hitbox",
    risky = false,
    dragging = false,
    focused = false,
    value = "-",
    values = {
        "Head",
        "Neck",
        "Torso",
    },
    callback = function(v)
        print("List Value Is Now : "..v)
    end
})

sections.Section1:AddBox({
    enabled = true,
    focused = true,
    text = "Aimbot FOV",
    input = "5",
    flag = "Dont put a too High amount to avoid complications",
    risky = false,
    callback = function(v)
        print(v)
    end
})

sections.Section1:AddText({
    enabled = true,
    text = "Dont put a too High amount to avoid complications",
    flag = "Text_1",
    risky = false,
})

sections.Section1:AddColor({
    enabled = true,
    text = "FOV Color",
    flag = "Color_1",
    tooltip = "",
    color = Color3.new(255, 255, 255),
    trans = 0,
    open = false,
    callback = function()
        
    end
})

library:SendNotification("Successfully Executed Ratsense.cc", 5, Color3.new(0, 255, 0))

--Window:SetOpen(true) -- Either Close Or Open Window