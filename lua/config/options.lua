-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.opt_local.textwidth = 90 -- Tvrdé zalamování po 90 znacích
    vim.opt_local.formatoptions = "t" -- Automatické zalamování při psaní
  end,
})
