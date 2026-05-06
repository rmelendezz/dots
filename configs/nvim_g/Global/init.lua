-- Neovim Options
-- options (vim.opt)
local o = vim.opt
o.number = true
o.relativenumber = true
o.termguicolors = true
o.clipboard = "unnamedplus" -- Use system clipboard
o.tabstop = 4
o.shiftwidth = 4
o.wrap = false 				-- Do not wrap lines by default
o.smartindent = true		-- Smart auto-indent


-- Plugins [vim.pack]
-- Vim pack plugins
vim.pack.add({
	"https://www.github.com/echasnovski/mini.nvim", -- mini.nvim
	"https://github.com/ellisonleao/gruvbox.nvim",  -- lua gruvbox theme
})
require("gruvbox").setup()
vim.cmd.colorscheme("gruvbox")

-- Mini.nvim Modules
require('mini.deps').setup() -- use default config
-- OR
-- require('mini.deps').setup({}) -- replace {} with your config table

-- mini.nvim modules
require('mini.animate').setup()
require('mini.files').setup()
require('mini.surround').setup()
require('mini.comment').setup()     -- Commenting with 'gc'
require('mini.statusline').setup()  -- Modern statusline
require('mini.pairs').setup()       -- Autopairs (brackets, quotes)
