local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Narwhals", "BloodTheme")

-- PLAYER TAB
local PlayerTab = Window:NewTab("Player")
local PlayerSection1 = PlayerTab:NewSection("Classic") -- Sections fit into the blank screen inside of the tab.

--Toggles & Buttons // Classic Section

--SPEED 
PlayerSection1:NewSlider("Walkspeed", "Increases your walkspeed.", 500, 1, function(s) -- 500 (MaxValue) | 0 (MinValue)
  print('Walkspeed set')
  game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
--JUMP 
PlayerSection1:NewSlider("Jump Power", "Increases your jump power.", 500, 1, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)
--INVISIBILITY (TOGGLE)
PlayerSection1:NewToggle("Invisibility", "Makes you invisible", function(state)
    if state then
        print("Toggle On")
       local character = game.Players.LocalPlayer.Character 
       character.Parent = game.Workspace
    else
        print("Toggle Off")
        character.Parent = game.Players.LocalPlayer
    end
end)



--SUICIDE 
PlayerSection1:NewButton("Suicide", "Oh, so sad.", function()
    print("Somebody killed themselves.")
     game.Players.LocalPlayer.Character.Humanoid.Health = 0
end)

--Misc Tab
local MiscTab = Window:NewTab("Miscellaneous")
local MiscSection1 = MiscTab:NewSection("Presets")

--SUPERMAN 
MiscSection1:NewToggle("Steroids", "You are the man of steel.", function(state)
    if state then
     game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 120
     game.Players.LocalPlayer.Character.Humanoid.JumpPower = 120
     game.Players.LocalPlayer.Character.Humanoid.Health = 10000000

else
print("Toggle Off.")
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16 -- Default
game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50 -- Default
game.Players.LocalPlayer.Character.Humanoid.Health = 100 -- Default
    end
end)





