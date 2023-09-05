local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;
Notify({
Description = "made by seanthetoiletgamer";
Title = "Loaded!";
Duration = 5;
});

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Fuzki-UI-Library/main/FuzkiLibrary.lua"))()
local Main = Library:Create("Toilet Hub", "Cart ride into Rdite")

local a = Main:CreateSection("Main")
local b = Main:CreateSection("Player")
local c = Main:CreateSection("Admin")
local d = Main:CreateSection("Credits")

--Main
a:CreateLabel("Main")
a:CreateButton("O", "Teleport to the end", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(310.673279, 852.799805, 321.170715, -1, -2.03773265e-08, -1.86249469e-08, -2.03773247e-08, 1, -6.54766623e-08, 1.86249487e-08, -6.54766623e-08, -1) 
end)
a:CreateButton("O", "Break Carts", function()
    local function hook(cart)
   pcall(function()
       cart:WaitForChild("On")
       cart.On:WaitForChild("Click")
 
       cart:WaitForChild("Configuration")
       local onValue = cart.Configuration:WaitForChild("CarOn")
 
       if onValue.Value == true then
           fireclickdetector(cart.On.Click, math.random(50,100) / 100)
       end
       onValue:GetPropertyChangedSignal("Value"):Connect(function()
           if onValue.Value == true then
               fireclickdetector(cart.On.Click, math.random(50,100) / 100)
           end
       end)
   end)
end
 
local cartFolder
for _,v in pairs(workspace:GetChildren()) do if v.Name == "Carts" and not v:FindFirstChildOfClass("Part") then cartFolder = v end end
 
for _,cart in pairs(cartFolder:GetChildren()) do
   if string.find(cart.Name:lower(), "cart") then hook(cart) end
end
cartFolder.ChildAdded:Connect(function(child)
   if string.find(child.Name:lower(), "cart") then hook(child) end
end)
end)

--Player
b:CreateLabel("Player")
b:CreateButton("O", "Fly", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/QGLvkvU7"))()
end)
 
b:CreateButton("O", "Noclip", function()
    game.Players.LocalPlayer.Character.Humanoid.MaxHealth = math.huge
    game.Players.LocalPlayer.Character.Humanoid.Health = math.huge
    while true do
    	 game:GetService("RunService").Stepped:wait()
	   	 game.Players.LocalPlayer.Character.Head.CanCollide = false
	     game.Players.LocalPlayer.Character.Torso.CanCollide = false
end
end)
 
 
b:CreateButton("O", "Click to Teleport", function()
    mouse = game.Players.LocalPlayer:GetMouse()
tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "ClickTP"
tool.Activated:connect(function()
local pos = mouse.Hit+Vector3.new(0,2.5,0)
pos = CFrame.new(pos.X,pos.Y,pos.Z)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
end)
tool.Parent = game.Players.LocalPlayer.Backpack
end)
 
b:CreateToggle("Infinite Jump", function(state)
    if state then
_G.infinjump = true
local Player = game:GetService("Players").LocalPlayer
local Mouse = Player:GetMouse()
Mouse.KeyDown:connect(function(k)
if _G.infinjump then
if k:byte() == 32 then
Humanoid = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
Humanoid:ChangeState("Jumping")
wait(0.1)
Humanoid:ChangeState("Seated")
end
end
end)
local Player = game:GetService("Players").LocalPlayer
local Mouse = Player:GetMouse()
    else
if _G.infinjump == true then
_G.infinjump = false
else
_G.infinjump = true
end
end
end)
 
 
 
b:CreateSlider(16, 500, "Walkspeed", function(val)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = val
end)
b:CreateSlider(50, 500, "Jumppower", function(dockrr)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = dockrr
end)
    
 
b:CreateTextBox("Teleport to a Player", "Name", function(PlayerTeleportName)
local playerone = game.Players.LocalPlayer.Character
local playertwo = game.Workspace:FindFirstChild(PlayerTeleportName)
playerone.HumanoidRootPart.CFrame = playertwo.HumanoidRootPart.CFrame * CFrame.new(0,2,0)
end)

--Admin
c:CreateLabel("Admin")
c:CreateButton("O", "Infinite Yield", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source", true))()
end)
c:CreateButton("O", "CMD-X", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source", true))()
end)
c:CreateButton("O", "Homebrew Admin", function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/mgamingpro/HomebrewAdmin/master/Main'),true))()
end)

--Credits
d:CreateLabel("Credits")
d:CreateButton("Copy", "toilet#5244 - Beta tester", function()
setclipboard("toilet#5244")
end)
d:CreateButton("Copy", "verbb#9595 - Beta tester", function()
setclipboard("verbb#9595")
end)
d:CreateButton("Copy", "xHeptc#2255 - Library creator", function()
setclipboard("xHeptc#2255")
end)
d:CreateButton("Copy", "st#8325 - Toilet god", function()
setclipboard("st#8325")
end)
