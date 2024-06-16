local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/OzNL-Hub/OzNL-Hub/main/Library.lua"))()

local PepsisWorld = library:CreateWindow({
    Name = "OzNL Hub",
    Defult = false,
    Themeable = {
        Info = 'By: OzNL',
        Background  = 0,
        Credit = false,
    }
})

local GeneralTab = PepsisWorld:CreateTab({
    Name = "General"
})

local MiscellaneousSection = GeneralTab:CreateSection({
    Name = "Miscellaneous",
    Side = "Left"
})

MiscellaneousSection:AddButton({
    Name = "Godmode",
    Callback = function()
        pcall(function()
            game:GetService("ReplicatedStorage").Remotes.Async:FireServer("Character", "FallDamageServer", 0/0)
        end)
    end
})

MiscellaneousSection:AddButton({
    Name = "Normal Health (Kills you)",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.Async:FireServer("Character", "FallDamageServer", 99999)
    end
})
