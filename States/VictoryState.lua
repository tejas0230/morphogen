VictoryState = Class{__includes = BaseState}


function VictoryState:enter()
  for k,v in pairs(enemies)do
    table.remove(enemies,k)
  end
  destroyAll()
  self.dialogue="0"
  self.image=love.graphics.newImage("scene_end_dialogues/dlg"..self.dialogue..".png")
end

function VictoryState:mouse_pressed(x, y)
  if(self.dialogue=="8")then
    gStateMachine:change('credits')
  else
    local a=self.dialogue+1
    self.dialogue=tostring(a)
  end
  bark_spidermusic:stop()
  bombardier_beetlemusic:stop()
  horseflymusic:stop()
end


function VictoryState:init()

end


function VictoryState:update(dt)
self.image=love.graphics.newImage("scene_end_dialogues/dlg"..self.dialogue..".png")
end

function VictoryState:render()
  love.graphics.draw(self.image,0,0,0,WINDOW_WIDTH/self.image:getWidth(),WINDOW_HEIGHT/self.image:getHeight())

end

function VictoryState:key_pressed(key)
  if(self.dialogue=="8")then
    gStateMachine:change('credits')
  else
    local a=self.dialogue+1
    self.dialogue=tostring(a)
  end
end

function VictoryState:exit()

end
