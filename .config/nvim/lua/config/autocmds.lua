-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local api = vim.api

-- Highlight on yank
local highlight_group = api.nvim_create_augroup("YankHighlight", { clear = true })

api.nvim_create_autocmd("TextYankPost", {
  group = highlight_group,
  pattern = "*",
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- StandardRb LSP for Ruby files
api.nvim_create_autocmd("FileType", {
  pattern = "ruby",
  group = vim.api.nvim_create_augroup("RubyLSP", { clear = true }),
  callback = function()
    vim.lsp.start({
      name = "standard",
      cmd = { "standardrb", "--lsp" },
      on_attach = function() end,
    })
  end,
})

-- Automatically format ruby code on save
api.nvim_create_autocmd("BufWrite", {
  pattern = "*.rb, *.jbuilder, *.rake, Gemfile, Rakefile, *.gemspec, *.ru, *.erb",
  group = vim.api.nvim_create_augroup("RubyFormat", { clear = true }),
  callback = function()
    vim.lsp.buf.format({ async = true })
  end,
})
