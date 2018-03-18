local function batInit(enemy, x, y, arg)

  -- Initialize physics
  enemy.physics = world:newBSGRectangleCollider(x, y, 48, 48, 14)
  enemy.physics:setCollisionClass('Enemy')
  enemy.physics:setLinearDamping(2)
  enemy.physics:setFixedRotation(true)
  -- We need this to access the table itself given the physics
  enemy.physics.parent = enemy

  -- Properties
  enemy.health = 10
  enemy.hitPower = 2
  enemy.moveForce = 2000
  enemy.maxSpeed = 400
  enemy.barY = 62

  function enemy:update(dt)
    local speed = speedFromVelocity( self.physics:getLinearVelocity() )
    if speed < self.maxSpeed then
      local ex, ey = self.physics:getPosition()
      local dir = toPlayerVector(ex, ey)
      dir = dir * self.moveForce
      self.physics:applyForce(dir:unpack())
    end
  end

  return enemy

end

return batInit
