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
      { "cs", "<Plug>Csurround", desc = "change surrounding #1 by #2" },
      { "ds", "<Plug>Dsurround", desc = "delete surrounding #1" },
      { "cS", "<Plug>CSurround", desc = "change surrounding #1 by #2 + new line" },
      { "ys", "<Plug>Ysurround", desc = "wraps #1 in #2 (surround)" },
      { "yS", "<Plug>YSurround", desc = "wraps #1 in #2 (surround) + new line" },
      { "yss", "<Plug>Yssurround", desc = "wraps line in #1 (surround)" },
      { "ySs", "<Plug>YSsurround", desc = "wraps line in #1 (surround) + new line" },
      { "ySS", "<Plug>YSsurround", desc = "wraps line in #1 (surround) + new line" },
      { "gs", "<Plug>VSurround", desc = "wraps visual selection in #1 (surround)", mode = "x" },
      { "gS", "<Plug>VgSurround", desc = "wraps visual selection in #1 (surround) + new line", mode = "x" },
    },
    init = function() vim.g.surround_no_mappings = 1 end,
  },
  {
    "iamcco/markdown-preview.nvim",
    event = "VeryLazy",
    setup = function()
      vim.fn(function() vim.fn["mkdp#util#install"]() end, 0)
    end,
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
    config = function() require("leap").add_default_mappings(true) end,
  },
}
