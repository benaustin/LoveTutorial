require "player"
require "map"
require "menu"
function love.load()
	medium = love.graphics.newFont(45)
	love.graphics.setBackgroundColor(255,255,255)
	gamestate = "menu"
	--buttons!
	button_spawn(5,200,"Start!")
end

function love.update(dt)
	if gamestate == "playing" then
		player_move(dt)
		map_collide()
	end
end

function love.draw()
	if gamestate == "playing" then
		player_draw()
	end
end

