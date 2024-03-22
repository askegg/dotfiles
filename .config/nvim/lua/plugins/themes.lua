return {
  -- Add colour schemes
  { "ellisonleao/gruvbox.nvim", name = "Gruvbox", priority = 1000 },
  { "Mofiqul/dracula.nvim", name = "Dracula", priority = 1000 },
  { "catppuccin/nvim", name = "catppuccin", lazy = false, priority = 1000 },
  { "marko-cerovac/material.nvim", name = "Material", priority = 1000 },
  { "rose-pine/neovim", name = "Rose Pine" },
  { "folke/tokyonight.nvim", lazy = false, priority = 1000, opts = {} },
  -- Load a default
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "dracula",
    },
  },
}
