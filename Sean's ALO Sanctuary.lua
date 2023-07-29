-- Remember, No skidding B)

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

local LP = UI:addPage("Main",2,true,6)

LP:addLabel("Main","━━━━━━━━━━")

LP:addButton("Unlock All Mats",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/AjMfJkpj", true))()
end)

LP:addButton("Unlock Renown Crewneck Pullover",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/YLVKnZxh", true))()
end)

LP:addButton("Infinite Orbs",function()
    for i,v in pairs(workspace.Map.Orbs:GetChildren()) do
        if v then
        game:GetService("ReplicatedStorage").NetManagedInstances.orbCollection:FireServer(v)
        end
    end
end)

local hteylcok = UI:addPage("Teleports",3,true,6)

hteylcok:addLabel("Teleports","━━━━━━━━━━")

hteylcok:addButton("ALO Store",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-197, 83, 81)
end)

hteylcok:addButton("ALO Center",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13, 91, 305)
end)

hteylcok:addButton("ALO Lounge",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(141, 100, 512)
end)

hteylcok:addButton("ALO Spawn",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-353, 63, 155)
end)

hteylcok:addButton("ALO Screen",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-207, 106, 316)
end)

hteylcok:addButton("Out Of Bounds",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-338, 475, 628)
end)

hteylcok:addButton("Edge Of the Map",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4953, 17, -4962)
end)

local haxreal = UI:addPage("Player",4,true,6)

haxreal:addLabel("Player","━━━━━━━━━━")

haxreal:addButton("Fly (E)",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/TR011F4C3/PANDA/main/scripts/fly.lua", true))()
end)

haxreal:addSlider("WalkSpeed",16,150,function(theycallmeskid)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = theycallmeskid
end)

haxreal:addSlider("JumpPower",16,150,function(iamskid)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = iamskid
end)
