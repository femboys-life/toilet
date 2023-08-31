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
local Credits = Main:CreateSection("Credits")

Lock:CreateLabel("--Lock--")
Lock:CreateButton("Press", "Lock 1", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/Fi6vwqHP"))()
end)
Lock:CreateButton("Press", "Lock 2", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/9aZaZHac"))()
end)
Lock:CreateButton("Press", "Lock 3", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/deleteduser8291/hahaifixedit/main/combatwarriors.lua"))()
end)

Pleyernegger:CreateLabel("--Player--")
Pleyernegger:CreateButton("Press", "Fly", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/QGLvkvU7"))()
end)
Pleyernegger:CreateSlider(16, 500, "Walkspeed", function(val)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = val
end)
Pleyernegger:CreateSlider(50, 500, "Jumppower", function(dockrr)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = dockrr
end)

Macro:CreateLabel("--Macro--")
Macro:CreateButton("Press", "Legit Macro", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/cLR6j5Zy"))()
end)

Macro:CreateButton("Press", "Fake Legit Macro", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/0ti3MaeU"))()
end)
Macro:CreateButton("Press", "Fake Macro", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/78q8tMk9"))()
end)

Credits:CreateLabel("--Credits--")
Credits:CreateLabel("toilet#5244 - Beta Tester     ")
Credits:CreateLabel("verbb#9595 - Beta Tester      ")
Credits:CreateLabel("xHeptc#2255 - Library Creator ")
Credits:CreateLabel("st#8325 - Toilet God          ")
