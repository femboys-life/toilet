local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;
Notify({
Description = "made by verbb#9595 & st#8325 <3";
Title = "Loaded!";
Duration = 5;
});

local GUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/aaaa"))()

local UI = GUI:CreateWindow("Sean's Hub","made with luv <3")

local Home = UI:addPage("Home",1,true,6)

Home:addLabel("Use with caution!"," ")

Home:addLabel("verbb#9595"," ")

Home:addLabel("st#8325"," ")

local LP = UI:addPage("Lock",2,true,6)

LP:addLabel("Lock","━━━━━━━━━━")

LP:addButton("Lock 1 (Q)",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/Fi6vwqHP", true))()
end)

LP:addButton("Lock 2 (Q)",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/9aZaZHac", true))()
end)

LP:addButton("Lock 3 (RMB)",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/deleteduser8291/hahaifixedit/main/combatwarriors.lua", true))()
end)

local hteylcok = UI:addPage("ESP",3,true,6)

hteylcok:addLabel("ESP","━━━━━━━━━━")

hteylcok:addButton("Box",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/g216nQ7d", true))()
end)

hteylcok:addButton("Chams",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13, 91, 305)
end)

local haxreal = UI:addPage("Player",4,true,6)

haxreal:addLabel("Player","━━━━━━━━━━")

haxreal:addButton("Fly (E)",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/TR011F4C3/PANDA/main/scripts/fly.lua", true))()
end)

haxreal:addSlider("WalkSpeed",16,150,function(theycallmeskid)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = theycallmeskid
end)

haxreal:addSlider("JumpPower",50,300,function(iamskid)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = iamskid
end)

local haxreal = UI:addPage("Macro",5,true,6)

marco:addLabel("Player","━━━━━━━━━━")

marco:addButton("Legit Macro",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/cLR6j5Zy", true))()
end)

marco:addButton("Fake Macro",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/78q8tMk9", true))()
end)
