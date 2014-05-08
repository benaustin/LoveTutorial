function map_collide()
	if player.x < 0 then
		player.x = 0
	end
	if player.y < 0 then
		player.y = 0
	end
	if player.x > 800 then
		player.x = 800
	end
	if player.y + player.pic:getHeight() > 600 then
		player.y = 600 - player.pic:getHeight()
	end
	if player.x + player.pic:getWidth() > 800 then
		player.x = 800 - player.pic:getWidth()
	end
end