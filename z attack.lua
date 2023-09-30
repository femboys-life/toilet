local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Sean's Zombie Attack | sean pro toilet gamer#5554", "DarkTheme")

--Main
local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("Main")
Section:NewButton("Kill all Zombies", "Kills all the zombies, script cannot be stopped", function()
    local groundDistance = 8
    local Player = game:GetService("Players").LocalPlayer
    local function getNearest()
    local nearest, dist = nil, 99999
    for _,v in pairs(game.Workspace.BossFolder:GetChildren()) do
    if(v:FindFirstChild("Head")~=nil)then
    local m =(Player.Character.Head.Position-v.Head.Position).magnitude
    if(m<dist)then
    dist = m
    nearest = v
    end
    end
    end
    for _,v in pairs(game.Workspace.enemies:GetChildren()) do
    if(v:FindFirstChild("Head")~=nil)then
    local m =(Player.Character.Head.Position-v.Head.Position).magnitude
    if(m<dist)then
    dist = m
    nearest = v
    end
    end
    end
    return nearest
    end
    _G.farm2 = true
    Player.Chatted:Connect(function(m)
    if(m==";autofarm false")then
    _G.farm2 = false
    elseif(m==";autofarm true")then
    _G.farm2 = true
    end
end)
_G.globalTarget = nil
game:GetService("RunService").RenderStepped:Connect(function()
if(_G.farm2==true)then
local target = getNearest()
if(target~=nil)then
game:GetService("Workspace").CurrentCamera.CFrame = CFrame.new(game:GetService("Workspace").CurrentCamera.CFrame.p, target.Head.Position)
Player.Character.HumanoidRootPart.CFrame = (target.HumanoidRootPart.CFrame * CFrame.new(0, groundDistance, 9))
_G.globalTarget = target
end
end
end)
spawn(function()
while wait() do
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
game.Players.LocalPlayer.Character.Torso.Velocity = Vector3.new(0,0,0)
end
end)
while wait() do
if(_G.farm2==true and _G.globalTarget~=nil and _G.globalTarget:FindFirstChild("Head") and Player.Character:FindFirstChildOfClass("Tool"))then
local target = _G.globalTarget
game.ReplicatedStorage.Gun:FireServer({["Normal"] = Vector3.new(0, 0, 0), ["Direction"] = target.Head.Position, ["Name"] = Player.Character:FindFirstChildOfClass("Tool").Name, ["Hit"] = target.Head, ["Origin"] = target.Head.Position, ["Pos"] = target.Head.Position,})
wait()
end
end
end)


Section:NewButton("Big-headed Zombies", "Makes all the zombies's head bigger than usual", function()
    Size_of_head = 10
    while wait() do
        if game.Workspace.enemies:FindFirstChild("Zombie") then
            for i,v in pairs(game.Workspace.enemies:GetChildren()) do
                wait()
                if v:FindFirstChild("Head") then
                    v.Head.CanCollide = false
                    v.Head.Size = Vector3.new(Size_of_head,Size_of_head,Size_of_head)
                    v.Head.CFrame = v.Torso.CFrame * CFrame.new(0,Size_of_head/2,0)
                end
            end
        end
    end
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

--Credits
local Tab = Window:NewTab("Credits")
local Section = Tab:NewSection("Credits")
Section:NewButton("sean pro toilet gamer#5554", "Click The button to copy", function()
setclipboard("sean pro toilet gamer#5554")
end)
