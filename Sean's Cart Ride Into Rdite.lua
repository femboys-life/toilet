local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Sean's Cart Ride into Rdite | sean pro toilet gamer#5554", "DarkTheme")

--Main
local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("Main")
Section:NewButton("Teleport to the end", "Teleport to the Winners Section", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(310.673279, 852.799805, 321.170715, -1, -2.03773265e-08, -1.86249469e-08, -2.03773247e-08, 1, -6.54766623e-08, 1.86249487e-08, -6.54766623e-08, -1) 
end)
 
Section:NewButton("Break Carts", "Makes carts no longer work for everyone", function()
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
 
Section:NewTextBox("Teleport to a Player", "Teleport to your desired player", function(PlayerTeleportName)
local playerone = game.Players.LocalPlayer.Character
local playertwo = game.Workspace:FindFirstChild(PlayerTeleportName)
playerone.HumanoidRootPart.CFrame = playertwo.HumanoidRootPart.CFrame * CFrame.new(0,2,0)
end)

--Admin
local Tab = Window:NewTab("Admin")
local Section = Tab:NewSection("Admin Scripts")
Section:NewButton("Infinite Yield", "cool hax that everyone and their dog uses", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source", true))()
end)
Section:NewButton("CMD-X", "underrated admin script not everyone uses", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source", true))()
end)
Section:NewButton("Homebrew Admin", "homebrew reminds me of nintendo wii", function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/mgamingpro/HomebrewAdmin/master/Main'),true))()
end)

--Credits
local Tab = Window:NewTab("Credits")
local Section = Tab:NewSection("Credits")
Section:NewButton("sean pro toilet gamer#5554", "Click The button to copy", function()
setclipboard("sean pro toilet gamer#5554")
end)
