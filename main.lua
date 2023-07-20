-- Débogueur Visual Studio Code tomblind.local-lua-debugger-vscode
if pcall(require, "lldebugger") then
    require("lldebugger").start()
end

-- Cette ligne permet d'afficher des traces dans la console pendant l'éxécution
io.stdout:setvbuf("no")

--Indispensable pour du pixel art
--Empeche Love de filtrer les contours des images quand elles sont redimentionnées
love.graphics.setDefaultFilter("nearest")

local myGame = require("game")

function love.load()
    love.window.setMode(1024, 768)
    screenWidth = love.graphics.getWidth()
    screenHeight = love.graphics.getHeight()

    myGame.load()
end

function love.update(dt)
end

function love.draw()
    myGame.draw()
end

function love.keypressed(key)
    print(key)
end
