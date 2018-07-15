-- Stores all clickable buttons on the main menu
buttons = {}
buttons[1] = {376, 380, 400, 72, "New Game"}
buttons[2] = {376, 476, 400, 72, "Continue"}

-- This function draws everything on the Main Menu
function menuDraw()
  
  if gameState.room == "rmMainMenu" then
    
    love.graphics.setFont(fonts.menu.title)
    love.graphics.setColor(1, 1, 1, 1)
    love.graphics.printf("CAVERN", 0, 140 * scale, gameWidth * scale, "center")
    
    for _,b in ipairs(buttons) do
      
      -- Get attributes stored for the current button
      local bX = b[1] * scale;
      local bY = b[2] * scale;
      local bW = b[3] * scale;
      local bH = b[4] * scale;
      local bText = b[5];
      
      love.graphics.setColor(1, 0, 1, 1)
      if buttons:mouseCheck(b) then
        love.graphics.setColor(1, 0, 0, 1)
      end
      love.graphics.rectangle("fill", bX, bY, bW, bH)
      
      love.graphics.setColor(1, 1, 1, 1)
      love.graphics.setFont(fonts.menu.button)
      love.graphics.printf(bText, bX, bY + 8 * scale, bW, "center")
      
    end
    
  end
  
end

-- Check if the mouse is inside the passed button
function buttons:mouseCheck(b)
  
  -- Get mouse coordinates
  local mx, my = love.mouse.getPosition()
  
  -- Get attributes stored for the passed button
  local bX = b[1] * scale;
  local bY = b[2] * scale;
  local bW = b[3] * scale;
  local bH = b[4] * scale;
  
  -- Compare coordinates to see if mouse is inside button
  if mx > bX and mx < bX+bW and my > bY and my < bY+bH then
    return true
  end
  
  return false
  
end

-- Called whenever the left mouse button is clicked
-- Checks if it clicked on a button, and does what that
-- button needs to do
function buttons:click()
  
  for i,b in ipairs(self) do
    
    -- If the mouse is on the current button...
    if buttons:mouseCheck(b) then
      
      -- The button has been clicked
      
      if i == 1 then -- New Game button
      
        --player.physics:setPosition(512, 392)
        --player.state = 1
        --changeToMap("rm1")
        
        -- This is the state for new game sequence
        intro.state = 1
        intro.timer = 1
        changeToMap("rmIntro")
      
      elseif i == 2 then -- Continue button
        
        -- This is the state for intro's load sequence
        intro.state = 100
        intro.timer = 1.5
        changeToMap("rmIntro")
      
      end
      
    end
    
  end
  
end
  