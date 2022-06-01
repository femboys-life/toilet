local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Sean's Hide and Seek Extreme | sean pro toilet gamer#5554", "DarkTheme")

--Main
local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("Main")
Section:NewButton("Collect all Coins", "Collect all the coins scattered around the map", function()
    local creditsPath = game.Workspace.GameObjects
    local plr = game.Players.LocalPlayer
    local char = plr.Character

    for i,v in pairs(creditsPath:GetChildren()) do
        char.HumanoidRootPart.CFrame = CFrame.new(v.position)
        wait(0.2)
    end
end)
Section:NewButton("Teleport outside the map", "Teleport out of the map lmao what else do u expect?", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(321.9994201660156, 158.69996643066406, -21.85126495361328) 
end)

--Player
local Tab = Window:NewTab("Player")
local Section = Tab:NewSection("Player")
Section:NewButton("Fly", "Fly around the map and make everyone think you're a hacker, press E to toggle the script", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/TR011F4C3/PANDA/main/scripts/fly.lua", true))()
end)
 
Section:NewButton("Noclip", "Clip through walls and make everyone confused, press V to toggle the script", function()
    game.Players.LocalPlayer.Character.Humanoid.MaxHealth = math.huge
    game.Players.LocalPlayer.Character.Humanoid.Health = math.huge
    while true do
    	 game:GetService("RunService").Stepped:wait()
	   	 game.Players.LocalPlayer.Character.Head.CanCollide = false
	     game.Players.LocalPlayer.Character.Torso.CanCollide = false
end
end)
 
 
Section:NewButton("Click to Teleport", "Teleport anywhere just by clicking", function()
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
 
Section:NewToggle("Infinite Jump", "Jump Infinitely, he just has a good gaming chair", function(state)
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
 
 
 
Section:NewSlider("Walkspeed", "Walk like flash or sonic lol", 500, 0, function(ussususususuusususuususus) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = ussususususuusususuususus
end)
 
Section:NewSlider("Jumppower", "Jump really really really high", 500, 0, function(hellothisismicrosofttechsupport) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = hellothisismicrosofttechsupport
end)

--ESP
local Tab = Window:NewTab("ESP")
local Section = Tab:NewSection("ESP")
Section:NewButton("Box ESP", "See everyone but boxes lmao", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/g216nQ7d", true))()
end)
Section:NewButton("Chams ESP", "Just like box esp but chams with glow", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/VapingCat/Open-Source-Chasms-Script/main/script.lua", true))()
end)

--Credits
local Tab = Window:NewTab("Credits")
local Section = Tab:NewSection("Credits")
Section:NewButton("sean pro toilet gamer#5554", "Click The button to copy", function()
setclipboard("sean pro toilet gamer#5554")
end)