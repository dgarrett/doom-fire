
WIDTH = 100
HEIGHT = 100
PWIDTH = love.graphics.getWidth() / WIDTH
PHEIGHT = love.graphics.getHeight() / HEIGHT
pixels = {}

function love.load()
    for y = 0, HEIGHT do
        pixels[y] = {}
        for x = 0, WIDTH do
            pixels[y][x] = {r=love.math.random(),g=love.math.random(),b=love.math.random()}
        end
    end
end

function love.draw()
    for y = 0, HEIGHT do
        for x = 0, WIDTH do
            love.graphics.setColor(pixels[y][x].r, pixels[y][x].g, pixels[y][x].b, 1)
            love.graphics.rectangle('fill', x * PWIDTH, y * PHEIGHT, PWIDTH, PHEIGHT)
        end
    end
end

function love.update(dt)
end