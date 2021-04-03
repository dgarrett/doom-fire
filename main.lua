
WIDTH = 100
HEIGHT = 100
PWIDTH = love.graphics.getWidth() / WIDTH
PHEIGHT = love.graphics.getHeight() / HEIGHT
pixels = {}

palette = {
    {7,7,7},
    {28,8,8},
    {43,17,9},
    {65,19,11},
    {80,28,13},
    {95,36,16},
    {110,38,18},
    {133,47,22},
    {148,55,25},
    {163,70,30},
    {178,79,33},
    {185,80,34},
    {208,89,39},
    {208,96,40},
    {208,96,40},
    {201,102,41},
    {202,109,45},
    {195,115,45},
    {196,123,47},
    {197,130,49},
    {198,138,53},
    {190,137,53},
    {191,145,54},
    {192,152,60},
    {186,160,61},
    {186,160,61},
    {187,167,67},
    {187,167,67},
    {189,175,73},
    {182,175,72},
    {183,182,74},
    {183,182,79},
    {207,206,124},
    {223,223,166},
    {239,239,203},
    {255,255,255}
}

function love.load()
    for y = 1, HEIGHT do
        pixels[y] = {}
        for x = 1, WIDTH do
            -- uncomment for random starting point
            -- pixels[y][x] = love.math.random() * (table.maxn(palette) - 1) + 1

            -- init screen to black
            pixels[y][x] = 1
        end
    end

    for x = 1, WIDTH do
        -- bottom pixels start at white
        pixels[HEIGHT][x] = table.maxn(palette)
    end

    for i, v in ipairs(palette) do
        palette[i] = {v[1]/255, v[2]/255, v[3]/255}
    end
end

function love.draw()
    for y = 1, HEIGHT do
        for x = 1, WIDTH do
            color = math.floor(pixels[y][x])
            love.graphics.setColor(palette[color][1], palette[color][2], palette[color][3], 1)
            love.graphics.rectangle('fill', (x-1) * PWIDTH, (y-1) * PHEIGHT - 1, PWIDTH, PHEIGHT)
        end
    end
end

function love.update(dt)
end