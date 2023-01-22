-- bootstrap Lazy
local install_path = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(install_path) then
  local repo = "git@github.com:folke/lazy.nvim.git"
  vim.fn.system({ "git", "clone", "--filter=blob:none", repo, "--branch=stable", install_path })
end

vim.opt.rtp:prepend(install_path)

require("lazy").setup("plugins", {
  checker = {
    enabled = true
  },
})
