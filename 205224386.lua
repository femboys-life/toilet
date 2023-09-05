local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;
Notify({
Description = "made by seanthetoiletgamer";
Title = "Loaded!";
Duration = 5;
});

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Fuzki-UI-Library/main/FuzkiLibrary.lua"))()
local Main = Library:Create("Toilet Hub", "CHAOS")

local a = Main:CreateSection("Main")
local b = Main:CreateSection("Player")
local c = Main:CreateSection("Admin")
local d = Main:CreateSection("ESP")
local e = Main:CreateSection("Credits")

--Main
a:CreateLabel("Main")
a:CreateButton("O", "Collect all Coins", function()
    local creditsPath = game.Workspace.GameObjects
    local plr = game.Players.LocalPlayer
    local char = plr.Character

    for i,v in pairs(creditsPath:GetChildren()) do
        char.HumanoidRootPart.CFrame = CFrame.new(v.position)
        wait(0.2)
    end
end)
a:CreateButton("O", "Teleport outside the map", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(321.9994201660156, 158.69996643066406, -21.85126495361328) 
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

--Esp
d:CreateLabel("ESP")
d:CreateButton("O", "Box ESP", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/g216nQ7d", true))()
end)
d:CreateButton("O", "Chams ESP", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/VapingCat/Open-Source-Chasms-Script/main/script.lua", true))()
end)

--Credits
e:CreateLabel("Credits")
e:CreateButton("Copy", "toilet#5244 - Beta tester", function()
setclipboard("toilet#5244")
end)
e:CreateButton("Copy", "verbb#9595 - Beta tester", function()
setclipboard("verbb#9595")
end)
e:CreateButton("Copy", "xHeptc#2255 - Library creator", function()
setclipboard("xHeptc#2255")
end)
e:CreateButton("Copy", "st#8325 - Toilet god", function()
setclipboard("st#8325")
end)
