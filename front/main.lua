--------------------------------------------------------------------------------
-- front
--------------------------------------------------------------------------------
local T = require "tengine"

local timer = T.timer

local conf = require "config"

local function main(...)
    local function gc()
        collectgarbage()
        collectgarbage()
        timer.callback(100, gc)
    end

    timer.callback(100, gc)

   require "gate"(...)
end

T.start(main, conf)
