vim.g.mapleader = " "

local leaderCommands = {
  b = function ()
    vim.cmd(":w")
    vim.cmd(":!cmd build.bat")
  end,
  w = function ()
    vim.cmd(":w")
  end,
  q = function ()
    vim.cmd(":q")
  end,
  de = function ()
    vim.cmd(":!devenv ../../build/win32_handmade.exe")
  end,
  sv = function ()
    vim.cmd(":vsplit")
  end,
  sh = function ()
    vim.cmd(":split")
  end,
  h  = function ()
    vim.cmd("noh")
  end,
  con = function ()
    vim.cmd(":split")
    vim.cmd(":edit C:/Users/Carbon/AppData/Local/nvim/")
  end,
  ev = function ()
    vim.cmd(":vsplit")
    vim.cmd(":Ex")
  end,
  eh = function ()
    vim.cmd(":split")
    vim.cmd(":Ex")
  end,
  et = function ()
    vim.cmd(":Lexplore")
  end,
  ee = function ()
    vim.cmd(":Ex")
  end,
  cc = function ()
    vim.cmd(":normal 0xxi//")
  end,
  cd = function ()
    vim.cmd(":normal 0xxi  ")
  end,
}

for k, v in pairs(leaderCommands) do
  vim.keymap.set("n", "<Leader>" .. k .. "", v )
end

vim.keymap.set("i", "ii", "<ESC>:normal l<CR>")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "Q", "<nop>")

-- Move Window with Ctrl
vim.cmd("noremap <C-J> <C-W><C-J>")
vim.cmd("noremap <C-K> <C-W><C-K>")
vim.cmd("noremap <C-L> <C-W><C-L>")
vim.cmd("noremap <C-H> <C-W><C-H>")



