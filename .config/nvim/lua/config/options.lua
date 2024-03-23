-- Options are automatically loaded before lazy.nvim startup
local opt = vim.opt

-- Highlight the current line
opt.cursorline = true
opt.termguicolors = true

-- Display a vertical line at the column width
opt.cc = "+1"
opt.signcolumn = "yes"

-- Set the wrap widths
opt.textwidth = 100
opt.wrapmargin = 100

opt.errorbells = false
opt.swapfile = false

-- minimal number of screen lines to keep above and below the cursor.
opt.scrolloff = 10

--  The minimal number of screen columns to keep to the left and to the right of the cursor if 'nowrap' is set.
opt.sidescrolloff = 8
