local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;
Notify({
Description = "made by seanthetoiletgamer";
Title = "Loaded!";
Duration = 5;
});

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Fuzki-UI-Library/main/FuzkiLibrary.lua"))()
local Main = Library:Create("Toilet Hub", "Da Hood")

local Lock = Main:CreateSection("Lock")
local Pleyernegger = Main:CreateSection("Player")
local Macro = Main:CreateSection("Macro")
local d = Main:CreateSection("Credits")

Lock:CreateLabel("Lock")
Lock:CreateButton("O", "Lock 1", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/Fi6vwqHP"))()
end)
Lock:CreateButton("O", "Lock 2", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/9aZaZHac"))()
end)
Lock:CreateButton("O", "Lock 3", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/deleteduser8291/hahaifixedit/main/combatwarriors.lua"))()
end)

Pleyernegger:CreateLabel("Player")
Pleyernegger:CreateButton("O", "Fly", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/QGLvkvU7"))()
end)
Pleyernegger:CreateSlider(16, 500, "Walkspeed", function(val)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = val
end)
Pleyernegger:CreateSlider(50, 500, "Jumppower", function(dockrr)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = dockrr
end)

Macro:CreateLabel("Macro")
Macro:CreateButton("O", "Legit Macro", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/cLR6j5Zy"))()
end)

Macro:CreateButton("O", "Fake Legit Macro", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/0ti3MaeU"))()
end)
Macro:CreateButton("O", "Fake Macro", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/78q8tMk9"))()
end)

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
