return {
  -- Add colour schemes
  { "ellisonleao/gruvbox.nvim", name = "Gruvbox", priority = 100 },
  { "Mofiqul/dracula.nvim", name = "dracula", priority = 1000 },
  { "catppuccin/nvim", name = "catppuccin", priority = 100 },
  { "marko-cerovac/material.nvim", name = "Material", priority = 100 },
  { "rose-pine/neovim", name = "Rose Pine" },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 100,
    opts = {},
  },
  -- Load a default
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "dracula",
    },
  },
}
