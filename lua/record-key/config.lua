local default_config = {
    timeout = 3000,
    max_count = 5,
}

return {
    setup = function(opt)
        return vim.tbl_deep_extend('force', default_config, opt or {})
    end,
}
