MenuSelector = Class{}

function MenuSelector:init()
    self.test = {{10, 10, 20, 15, 10, 20},{10, 20, 20, 25, 10, 30}}
    self.vertices = {{180, 121, 188, 125, 180, 129},{180, 135, 188, 139, 180, 143}}
    self.index = 1
end

function MenuSelector:moveSelector()
    if self.index == 1 then
        self.index = 2
    else
        self.index = 1
    end
end

function MenuSelector:update(dt)
    -- self.x = self.x + self.dx * dt
    -- self.y = self.y + self.dy * dt
end

function MenuSelector:render()
    love.graphics.polygon('fill', self.vertices[self.index])
end