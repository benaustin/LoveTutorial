player = {}
player.x = 10
player.y = 10
player.speed = 200
player.health = 20
player.damage = 2

player.pic = love.graphics.newImage("images/square.png")

function player_draw()
	love.graphics.setColor(255,255,255)
	love.graphics.draw(player.pic,player.x,player.y)
end

function player_move(dt)
	if love.keyboard.isDown("w") then
		player.y = player.y - player.speed * dt
	end
	if love.keyboard.isDown("s") then
		player.y = player.y + player.speed * dt
	end
	if love.keyboard.isDown("d") then
		player.x = player.x + player.speed * dt
	end
	if love.keyboard.isDown("a") then
		player.x = player.x - player.speed * dt
	end
end