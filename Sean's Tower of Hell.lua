local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Sean's Tower of Hell | sean pro toilet gamer#5554", "DarkTheme")

--Main
local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("Main")
Section:NewButton("Godmode", "undie", function()
    for i,v in pairs(workspace.tower:GetDescendants()) do
        if v.Name == "kills" then
            print(v.Parent)
            v:Destroy()
        end
    end
end)
Section:NewButton("Tp to the finish", "finish lol", function()
    for _,v in pairs(game:GetService("Workspace").tower.finishes:GetChildren()) do
        if _ == 1 and v.Name == "Finish" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position)
            end
        end
    end
end)
Section:NewButton("Disable Anticheat", "bye bye anti cheat", function()
    for _,v in pairs(getgc()) do
    if type(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.PlayerScripts.LocalScript then
        if debug.getinfo(v).name == "kick" then
        hookfunction(v, function(...)
            end)
        end
    end
end)
Section:NewButton("Delete all Kill Parts", "no die", function()
    for k,v in pairs(game:GetService("Workspace").tower:GetDescendants()) do
  if string.match(v.Name,"kill") then
      print(v)
      v:Destroy()
      end
  end
end)

--Credits
local Tab = Window:NewTab("Credits")
local Section = Tab:NewSection("Credits")
Section:NewButton("sean pro toilet gamer#5554", "Click The button to copy", function()
setclipboard("sean pro toilet gamer#5554")
end)