-- test/example_spec.lua
-- Example test file for record-key.nvim

local lu = require('luaunit')
local util = require('record-key.util')
local config = require('record-key.config')

TestUtil = {}

function TestUtil:test_fill_middle_basic()
    local result = util.fill_middle('a', 8)
    lu.assertEquals(vim.fn.strdisplaywidth(result), 8)
end

function TestUtil:test_fill_middle_long_string()
    local result = util.fill_middle('hello world', 8)
    lu.assertEquals(result, 'hello world')
end

function TestUtil:test_fill_middle_exact_min()
    local result = util.fill_middle('abcdef', 8)
    lu.assertEquals(vim.fn.strdisplaywidth(result), 8)
end

TestConfig = {}

function TestConfig:test_default_config()
    local cfg = config.setup()
    lu.assertEquals(cfg.timeout, 3000)
    lu.assertEquals(cfg.max_count, 5)
end

function TestConfig:test_custom_config()
    local cfg = config.setup({
        timeout = 5000,
        max_count = 10,
    })
    lu.assertEquals(cfg.timeout, 5000)
    lu.assertEquals(cfg.max_count, 10)
end

function TestConfig:test_partial_override()
    local cfg = config.setup({
        timeout = 1000,
    })
    lu.assertEquals(cfg.timeout, 1000)
    lu.assertEquals(cfg.max_count, 5)
end

return TestUtil

