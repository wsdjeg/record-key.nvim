local M = {}

function M.fill_middle(str, min)
    while vim.fn.strdisplaywidth(str) <= min - 2 do
        str = ' ' .. str .. ' '
    end

    if vim.fn.strdisplaywidth(str) < min then
        str = ' ' .. str
    end

    return str
end

return M
