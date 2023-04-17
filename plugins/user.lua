return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    config = function() require("nvim-surround").setup {} end,
    keys = {
      { "cs",  "<Plug>Csurround",  desc = "change surrounding #1 by #2" },
      { "ds",  "<Plug>Dsurround",  desc = "delete surrounding #1" },
      { "cS",  "<Plug>CSurround",  desc = "change surrounding #1 by #2 + new line" },
      { "ys",  "<Plug>Ysurround",  desc = "wraps #1 in #2 (surround)" },
      { "yS",  "<Plug>YSurround",  desc = "wraps #1 in #2 (surround) + new line" },
      { "yss", "<Plug>Yssurround", desc = "wraps line in #1 (surround)" },
      { "ySs", "<Plug>YSsurround", desc = "wraps line in #1 (surround) + new line" },
      { "ySS", "<Plug>YSsurround", desc = "wraps line in #1 (surround) + new line" },
      { "gs",  "<Plug>VSurround",  desc = "wraps visual selection in #1 (surround)",            mode = "x" },
      { "gS",  "<Plug>VgSurround", desc = "wraps visual selection in #1 (surround) + new line", mode = "x" },
    },
    init = function() vim.g.surround_no_mappings = 1 end,
  },
  {
    "iamcco/markdown-preview.nvim",
    event = "VeryLazy",
    build = function() vim.fn["mkdp#util#install"]() end,
  },
  {
    "nvim-tree/nvim-web-devicons",
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
  },
  {
    "nvim-telescope/telescope-project.nvim",
  },
  {
    "ray-x/go.nvim",
    dependencies = { -- optional packages
      "ray-x/guihua.lua",
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
      "thehamsta/nvim-dap-virtual-text",
    },
    config = function() require("go").setup() end,
    event = { "CmdlineEnter" },
    ft = { "go", "gomod" },
    build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries
  },
  {
    "ggandor/leap.nvim",
    dependencies = { "tpope/vim-repeat" },
    event = { "BufRead" },
    config = function()
      local leap = require "leap"
      leap.opts.highlight_unlabeled_phase_one_targets = true
      leap.add_default_mappings(true)
    end,
  },
  {
    "ggandor/flit.nvim",
    dependencies = { "ggandor/leap.nvim" },
    event = { "BufRead" },
    config = function() require("flit").setup {} end,
  },
  {
    "ray-x/lsp_signature.nvim",
    config = function() require("lsp_signature").setup() end,
    init = function() require("lsp_signature").on_attach() end,
  },
  {
    "echasnovski/mini.move",
    event = "VeryLazy",
    config = function() require("mini.move").setup() end,
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    event = "VeryLazy",
    config = function() require("todo-comments").setup {} end,
  },
  {
    "thehamsta/nvim-dap-virtual-text",
    config = function() require("nvim-dap-virtual-text").setup() end,
  },
  {
    "karb94/neoscroll.nvim",
    event = "VeryLazy",
    config = function()
      require("neoscroll").setup {
        -- All these keys will be mapped to their corresponding default scrolling animation
        mappings = { "<C-u>", "<C-d>", "<C-b>", "<C-f>", "<C-y>", "<C-e>", "zt", "zz", "zb" },
        hide_cursor = true,           -- Hide cursor while scrolling
        stop_eof = true,              -- Stop at <EOF> when scrolling downwards
        respect_scrolloff = false,    -- Stop scrolling when the cursor reaches the scrolloff margin of the file
        cursor_scrolls_alone = false, -- The cursor will keep on scrolling even if the window cannot scroll further
        easing_function = nil,        -- Default easing function
        pre_hook = nil,               -- Function to run before the scrolling animation starts
        post_hook = nil,              -- Function to run after the scrolling animation ends
        performance_mode = false,     -- Disable "Performance Mode" on all buffers.
      }
    end,
  },
}
