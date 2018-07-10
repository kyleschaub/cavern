sprites = {}

-- Images for drawing the player
sprites.player = {}
sprites.player.helmet = love.graphics.newImage('sprites/player/helmet.png')
sprites.player.body = love.graphics.newImage('sprites/player/body.png')
sprites.player.armEmpty = love.graphics.newImage('sprites/player/arm_empty.png')
sprites.player.armBlaster = love.graphics.newImage('sprites/player/arm_blaster2.png')
sprites.player.rocketLauncher = love.graphics.newImage('sprites/player/rocketLauncherAlt.png')
sprites.player.spear = love.graphics.newImage('sprites/player/spear.png')
sprites.player.bomb = love.graphics.newImage('sprites/player/bomb.png')
sprites.player.armSpear = love.graphics.newImage('sprites/player/armSpear.png')
sprites.player.jetpack = love.graphics.newImage('sprites/player/jetpack.png')
sprites.player.aquaPack = love.graphics.newImage('sprites/player/aquapack.png')

-- Images for everything relating to the environment and levels
sprites.environment = {}
sprites.environment.waterSheet = love.graphics.newImage('sprites/environment/waterSheet.png')
sprites.environment.rockySurface = love.graphics.newImage('sprites/environment/rockySurface.png')
sprites.environment.crack = love.graphics.newImage('sprites/environment/crack.png')
sprites.environment.breakParticle = love.graphics.newImage('sprites/environment/breakParticle.png')

-- Images for enemies
sprites.enemies = {}
sprites.enemies.flyerBody = love.graphics.newImage('sprites/enemies/flyerBody.png')
sprites.enemies.flyerEye = love.graphics.newImage('sprites/enemies/flyerEye.png')
sprites.enemies.flyerWing1 = love.graphics.newImage('sprites/enemies/flyerWing1.png')
sprites.enemies.flyerWing2 = love.graphics.newImage('sprites/enemies/flyerWing2.png')
sprites.enemies.spikeBody = love.graphics.newImage('sprites/enemies/spikeBody.png')
sprites.enemies.spikeProj = love.graphics.newImage('sprites/enemies/spikeProj.png')
sprites.enemies.starfish = love.graphics.newImage('sprites/enemies/starfish.png')
sprites.enemies.bossBody = love.graphics.newImage('sprites/enemies/bossBody.png')
sprites.enemies.bigBossEye = love.graphics.newImage('sprites/enemies/bigBossEye.png')
sprites.enemies.egg = love.graphics.newImage('sprites/enemies/egg.png')

-- Individual blob shapes for drawing fire
sprites.fire = {}
sprites.fire.f1 = love.graphics.newImage('sprites/fire/fire_1.png')
sprites.fire.f2 = love.graphics.newImage('sprites/fire/fire_2.png')
sprites.fire.f3 = love.graphics.newImage('sprites/fire/fire_3.png')
sprites.fire.f4 = love.graphics.newImage('sprites/fire/fire_4.png')
sprites.fire.f5 = love.graphics.newImage('sprites/fire/fire_5.png')
