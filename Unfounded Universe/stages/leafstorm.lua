function onCreate()
	-- background shit
	makeLuaSprite('farbg', 'farbg', -350, 0);
	setLuaSpriteScrollFactor('farbg', 0.1, 1.1);

	makeLuaSprite('fgfloor', 'fgfloor', -500, 720);
	setLuaSpriteScrollFactor('fgfloor', 1, 1);

	makeLuaSprite('closebg', 'closebg', 250, -100);
	setLuaSpriteScrollFactor('closebg', 0.6, 0.9);

	makeLuaSprite('closebg2', 'closebg2', -270, 520);
	setLuaSpriteScrollFactor('closebg2', 0.7, 0.9);

	makeLuaSprite('gfplatform', 'gfplatform', 1270, 520);
	setLuaSpriteScrollFactor('gfplatform', 0.7, 0.9);

	makeAnimatedLuaSprite('bgrings','bgrings',-200, 220)addAnimationByPrefix('bgrings','ringspin','rings',24,true)
	objectPlayAnimation('bgrings','ringspin',false)
	setScrollFactor('bgrings', 0.7, 0.9);
	
	addLuaSprite('farbg', false);
	addLuaSprite('closebg', false);
	addLuaSprite('closebg2', false);
	addLuaSprite('gfplatform', false);
	addLuaSprite('bgrings', false);
	addLuaSprite('fgfloor', false);

	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end