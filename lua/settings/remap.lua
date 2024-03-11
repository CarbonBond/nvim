local builtin = require('telescope.builtin')

-- { mode, keycombo, function/keys }; 
local leaderCommands = {
-- Save
  { 
    "n",
    "<leader>w",
    function ()
      vim.cmd(":w")
    end,
  },
-- Quit
  { 
    "n",
    "<leader>q",
    function ()
      vim.cmd(":q")
    end,
  },
-- Vertical Split
  { 
    "n",
    "<leader>v",
    function ()
    vim.cmd(":vsplit")
    end,
  },
-- Horizontal Split.
  { 
    "n",
    "<leader>s",
    function ()
    vim.cmd(":split")
    end,
  },
--Hide search.
  { 
    "n",
    "<leader>h",
    function ()
    vim.cmd("noh")
    end,
  },
-- Enter filebrowser
  { 
    "n",
    "<leader>e",
    function ()
    vim.cmd(":Explore")
    end,
  },

-- Adjust screen when going through search
  { 
    "n",
    "n",
    "nzzzv"
  },
  { 
    "n",
    "N",
    "Nzzzv"
  },

-- Move Window with Ctrl
  { 
    "n",
    "<C-J>",
    "<C-W><C-J>"
  },
  { 
    "n",
    "<C-K>",
    "<C-W><C-K>"
  },
  { 
    "n",
    "<C-L>",
    "<C-W><C-L>"
  },
  { 
    "n",
    "<C-H>",
    "<C-W><C-H>"
  },

-- Move cursor when moving one line.
  { 
    "n",
    "<C-e>",
    "<C-e>j"
  },
  { 
    "n",
    "<C-y>",
    "<C-e>k"
  },
  -- Find Files, Grep, Buffer
  { 
    "n",
    "<leader>f",
    builtin.find_files,
    {}
  },
  { 
    "n",
    "<leader>g",
    builtin.live_grep,
    {}
  },
  { 
    "n",
    "<leader>b",
    builtin.buffers,
    {}
  },
--Plugin Manager
  {
    "n",
    "<leader>p",
    function ()
      vim.cmd(":Lazy")
    end,
  }
}

for k,v in pairs(leaderCommands) do
  if v[4] then 
    vim.keymap.set(v[1], v[2], v[3], v[4])
  else 
    vim.keymap.set(v[1], v[2], v[3])
  end
end

vim.keymap.set("n", "<leader>g", builtin.live_grep, {})


