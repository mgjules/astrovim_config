return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = function(_, opts)
      opts.sources = {
        "filesystem",
      }
      opts.source_selector.winbar = false
      opts.source_selector.statusline = false
      opts.default_component_configs.indent.indent_size = 2
      opts.default_component_configs.indent.padding = 1
      opts.window.position = "right"
      opts.window.width = 50
      return opts
    end,
  },
}
