return {
  -- Configure LazyVim to load dracula
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "dracula",
    },
  },

  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 10,
    lazy = false,
    config = function()
      require("catppuccin").setup({
        dim_inactive = {
          enabled = true,
          percentage = 0.35,
        },
        integrations = {
          nvimtree = true,
          treesitter = true,
        },
      })
    end,
  },

  {
    "Mofiqul/dracula.nvim",
    priority = 1000,
    lazy = false,
    config = function() end,
  },

  {
    "folke/tokyonight.nvim",
    priority = 10,
    lazy = false,
    config = function()
      local tokyonight = require("tokyonight")

      tokyonight.setup({
        style = "night",
        terminal_colors = true,
        dim_inactive = true,
      })
    end,
  },

  { "ellisonleao/gruvbox.nvim", lazy = false, priority = 10 },
  { "sainnhe/gruvbox-material", lazy = false, priority = 10 },
}
