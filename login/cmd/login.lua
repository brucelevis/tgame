--------------------------------------------------------------------------------
-- login.lua
--------------------------------------------------------------------------------
local string_format = string.format

local actor = tengine.actor

local ERROR_MSG = tengine.ERROR_MSG
local p = tengine.p

local db = require "db"
-------------------------------------------------------------------------------
local  _M = {}

function _M.login(src, args)
    -- 1. 查找玩家
    local ret = db.check_account(args.username)
    -- 如果失败直接返回
    if not ret then
        return {false, nil}
    end

    return {true, ret}
end

return _M
