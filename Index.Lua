--THANKS TO XHEPTC FOR LIBRARY, CHECK HIS LIBRARY OUT.

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Narwhals", "BloodTheme")

-- PLAYER TAB
local PlayerTab = Window:NewTab("Player")
local PlayerSection1 = PlayerTab:NewSection("Classic") -- Sections fit into the blank screen inside of the tab.

--Toggles & Buttons // Classic Section

--SPEED 
PlayerSection1:NewSlider("Walkspeed", "Increases your walkspeed.", 500, 1, function(s) -- 500 (MaxValue) | 0 (MinValue) --Speed doesn't work right now in YBA, but it does in every other game. I need help on this problem, thank you!
  print('Walkspeed set')
  game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
--JUMP 
PlayerSection1:NewSlider("Jump Power", "Increases your jump power.", 500, 1, function(s) -- 500 (MaxValue) | 0 (MinValue)
    print("Jump Power Set.")
end)
--INVISIBILITY (TOGGLE, TO DO)



--SUICIDE 
PlayerSection1:NewButton("Suicide", "Oh, so sad.", function()
    print("Somebody killed themselves.")
     game.Players.LocalPlayer.Character.Humanoid.Health = 0
end)

--ENABLE JUMP POWER
Section:NewToggle("Enable Jump Power", "Enables Your Jump Power", function(state, s)
    if state then
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
    else
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
    end
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





