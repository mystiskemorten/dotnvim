require("mystiskemorten.set")
require("mystiskemorten.remap")

local augroup = vim.api.nvim_create_augroup
local MystiskemortenGroup = augroup('Mystiskemorten', {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

function R(name)
    require("plenary.reload").reload_module(name)
end

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})

autocmd({"BufWritePre"}, {
    group = MystiskemortenGroup,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
