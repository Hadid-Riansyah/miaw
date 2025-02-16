local rouletteWheel = {}

-- Original Roulette Wheel number generation
rouletteWheel.originalGenerateNumber = rouletteWheel.generateNumber

-- Modified Roulette Wheel number generation
rouletteWheel.generateNumber = function(self)
    local number = self:originalGenerateNumber()
    return number
end

-- Define the command variable
local command = nil

-- Command handler for /spin <number>
local function spinCommand(player, cmd, target, number)
    if not number then
        player:send("Usage: /spin <number>")
        return
    end

    local roulette = rouletteWheel.getRoulette(player:getWorldId())
    if not roulette then
        player:send("Error: Roulette not found.")
        return
    end

    local rouletteNumber = tonumber(number)
    if not rouletteNumber or rouletteNumber < 0 or rouletteNumber > 36 then
        player:send("Error: Invalid number. Please enter a number between 0 and 36.")
        return
    end

    roulette:setNumber(rouletteNumber)
    player:send("Roulette wheel number set to " .. number)
end

-- Register the command
command = Command.create("spin")
command:setHandler(spinCommand)
command:setDescription("Modifies the roulette wheel number.")
Command.register(command)
