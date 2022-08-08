--[[

███╗░░░███╗░█████╗░██████╗░███████╗  ██████╗░██╗░░░██╗  ░██████╗███████╗░█████╗░███╗░░██╗
████╗░████║██╔══██╗██╔══██╗██╔════╝  ██╔══██╗╚██╗░██╔╝  ██╔════╝██╔════╝██╔══██╗████╗░██║
██╔████╔██║███████║██║░░██║█████╗░░  ██████╦╝░╚████╔╝░  ╚█████╗░█████╗░░███████║██╔██╗██║
██║╚██╔╝██║██╔══██║██║░░██║██╔══╝░░  ██╔══██╗░░╚██╔╝░░  ░╚═══██╗██╔══╝░░██╔══██║██║╚████║
██║░╚═╝░██║██║░░██║██████╔╝███████╗  ██████╦╝░░░██║░░░  ██████╔╝███████╗██║░░██║██║░╚███║
╚═╝░░░░░╚═╝╚═╝░░╚═╝╚═════╝░╚══════╝  ╚═════╝░░░░╚═╝░░░  ╚═════╝░╚══════╝╚═╝░░╚═╝╚═╝░░╚══╝
loadstring(game:HttpGet("https://raw.githubusercontent.com/seanthetoiletgamer/RobloxScripts/main/Loadstring.lua"))()
* Aimbot might also work on some other games
* Cart ride script might also work on other cart games
--]]

-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local breakin = Instance.new("TextButton")
local alosanctuary = Instance.new("TextButton")
local chaos = Instance.new("TextButton")
local nicos = Instance.new("TextButton")
local hideandseek = Instance.new("TextButton")
local cartride = Instance.new("TextButton")
local label = Instance.new("TextLabel")
local toh = Instance.new("TextButton")
local aimbot = Instance.new("TextButton")
local zombieattack = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.CoreGui

main.Name = "main"
main.Parent = ScreenGui
main.BackgroundColor3 = Color3.fromRGB(41, 43, 47)
main.BorderColor3 = Color3.fromRGB(41, 43, 47)
main.Position = UDim2.new(0.659367502, 0, 0.0777721405, 0)
main.Size = UDim2.new(0, 297, 0, 150)
main.Active = true
main.Draggable = true

breakin.Name = "break in"
breakin.Parent = main
breakin.BackgroundColor3 = Color3.fromRGB(50, 53, 58)
breakin.BorderColor3 = Color3.fromRGB(50, 53, 58)
breakin.Position = UDim2.new(0.379939765, 0, 0.287173003, 0)
breakin.Size = UDim2.new(0, 71, 0, 20)
breakin.Font = Enum.Font.Cartoon
breakin.Text = "break in"
breakin.TextColor3 = Color3.fromRGB(255, 255, 255)
breakin.TextSize = 14.000
breakin.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/seanthetoiletgamer/RobloxScripts/main/Sean's%20Break%20In.lua"))()
end)

alosanctuary.Name = "alo sanctuary"
alosanctuary.Parent = main
alosanctuary.BackgroundColor3 = Color3.fromRGB(50, 53, 58)
alosanctuary.BorderColor3 = Color3.fromRGB(50, 53, 58)
alosanctuary.Position = UDim2.new(0.0623427406, 0, 0.287173033, 0)
alosanctuary.Size = UDim2.new(0, 71, 0, 20)
alosanctuary.Font = Enum.Font.Cartoon
alosanctuary.Text = "alo sanctuary"
alosanctuary.TextColor3 = Color3.fromRGB(255, 255, 255)
alosanctuary.TextSize = 14.000
alosanctuary.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/seanthetoiletgamer/RobloxScripts/main/Sean's%20ALO%20Sanctuary.lua"))()
end)

chaos.Name = "chaos"
chaos.Parent = main
chaos.BackgroundColor3 = Color3.fromRGB(50, 53, 58)
chaos.BorderColor3 = Color3.fromRGB(50, 53, 58)
chaos.Position = UDim2.new(0.0623427406, 0, 0.540253222, 0)
chaos.Size = UDim2.new(0, 71, 0, 20)
chaos.Font = Enum.Font.Cartoon
chaos.Text = "chaos"
chaos.TextColor3 = Color3.fromRGB(255, 255, 255)
chaos.TextSize = 14.000
chaos.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/seanthetoiletgamer/RobloxScripts/main/Sean's%20CHAOS.lua"))()
end)

nicos.Name = "nicos"
nicos.Parent = main
nicos.BackgroundColor3 = Color3.fromRGB(50, 53, 58)
nicos.BorderColor3 = Color3.fromRGB(50, 53, 58)
nicos.Position = UDim2.new(0.379939765, 0, 0.540253222, 0)
nicos.Size = UDim2.new(0, 71, 0, 20)
nicos.Font = Enum.Font.Cartoon
nicos.Text = "nicos nextbots"
nicos.TextColor3 = Color3.fromRGB(255, 255, 255)
nicos.TextSize = 14.000
nicos.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/seanthetoiletgamer/RobloxScripts/main/Sean's%20nicos%20nexbots.lua"))()
end)

hideandseek.Name = "hide and seek"
hideandseek.Parent = main
hideandseek.BackgroundColor3 = Color3.fromRGB(50, 53, 58)
hideandseek.BorderColor3 = Color3.fromRGB(50, 53, 58)
hideandseek.Position = UDim2.new(0.684210539, 0, 0.540253222, 0)
hideandseek.Size = UDim2.new(0, 71, 0, 20)
hideandseek.Font = Enum.Font.Cartoon
hideandseek.Text = "hide and seek"
hideandseek.TextColor3 = Color3.fromRGB(255, 255, 255)
hideandseek.TextSize = 14.000
hideandseek.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/seanthetoiletgamer/RobloxScripts/main/Sean's%20Hide%20and%20Seek%20Extreme.lua"))()
end)

cartride.Name = "cart ride"
cartride.Parent = main
cartride.BackgroundColor3 = Color3.fromRGB(50, 53, 58)
cartride.BorderColor3 = Color3.fromRGB(50, 53, 58)
cartride.Position = UDim2.new(0.684210539, 0, 0.287173003, 0)
cartride.Size = UDim2.new(0, 71, 0, 20)
cartride.Font = Enum.Font.Cartoon
cartride.Text = "cart ride"
cartride.TextColor3 = Color3.fromRGB(255, 255, 255)
cartride.TextSize = 14.000
cartride.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/seanthetoiletgamer/RobloxScripts/main/Sean's%20Cart%20Ride%20Into%20Rdite.lua"))()
end)

label.Name = "label"
label.Parent = main
label.BackgroundColor3 = Color3.fromRGB(41, 43, 47)
label.BorderColor3 = Color3.fromRGB(41, 43, 47)
label.Position = UDim2.new(0.0929448307, 0, 0, 0)
label.Size = UDim2.new(0, 242, 0, 36)
label.Font = Enum.Font.Code
label.Text = "sean's hax gui"
label.TextColor3 = Color3.fromRGB(255, 255, 255)
label.TextSize = 14.000

toh.Name = "toh"
toh.Parent = main
toh.BackgroundColor3 = Color3.fromRGB(50, 53, 58)
toh.BorderColor3 = Color3.fromRGB(50, 53, 58)
toh.Position = UDim2.new(0.37781328, 0, 0.793586552, 0)
toh.Size = UDim2.new(0, 71, 0, 20)
toh.Font = Enum.Font.Cartoon
toh.Text = "tower of hell"
toh.TextColor3 = Color3.fromRGB(255, 255, 255)
toh.TextSize = 14.000
toh.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/seanthetoiletgamer/RobloxScripts/main/Sean's%20Tower%20of%20Hell.lua"))()
end)

aimbot.Name = "aimbot"
aimbot.Parent = main
aimbot.BackgroundColor3 = Color3.fromRGB(50, 53, 58)
aimbot.BorderColor3 = Color3.fromRGB(50, 53, 58)
aimbot.Position = UDim2.new(0.0613149107, 0, 0.793586552, 0)
aimbot.Size = UDim2.new(0, 71, 0, 20)
aimbot.Font = Enum.Font.Cartoon
aimbot.Text = "aimbot"
aimbot.TextColor3 = Color3.fromRGB(255, 255, 255)
aimbot.TextSize = 14.000
aimbot.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/seanthetoiletgamer/RobloxScripts/main/Sean's%20Aimbot.lua"))()
end)

zombieattack.Name = "zombie attack"
zombieattack.Parent = main
zombieattack.BackgroundColor3 = Color3.fromRGB(50, 53, 58)
zombieattack.BorderColor3 = Color3.fromRGB(50, 53, 58)
zombieattack.Position = UDim2.new(0.684210539, 0, 0.786919892, 0)
zombieattack.Size = UDim2.new(0, 71, 0, 20)
zombieattack.Font = Enum.Font.Cartoon
zombieattack.Text = "zombie attack"
zombieattack.TextColor3 = Color3.fromRGB(255, 255, 255)
zombieattack.TextSize = 14.000
zombieattack.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/seanthetoiletgamer/RobloxScripts/main/Sean's%20Zombie%20Attack.lua"))()
end)
