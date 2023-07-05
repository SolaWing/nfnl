-- [nfnl] Compiled from lua/nfnl/notify.fnl by https://github.com/Olical/nfnl, do not edit.
local autoload = require("nfnl.autoload")
local core = autoload("nfnl.core")
local function notify(level, ...)
  return vim.api.nvim_notify(core.str(...), level, {})
end
local function debug(...)
  return notify(vim.log.levels.DEBUG, ...)
end
local function error(...)
  return notify(vim.log.levels.ERROR, ...)
end
local function info(...)
  return notify(vim.log.levels.INFO, ...)
end
local function trace(...)
  return notify(vim.log.levels.TRACE, ...)
end
local function warn(...)
  return notify(vim.log.levels.WARN, ...)
end
return {debug = debug, error = error, info = info, trace = trace, warn = warn}