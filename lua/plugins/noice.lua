return {
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
    routes = {
      {
        filter = { event = "notify", find = "No information available" },
        opts = { skip = true },
      },
    },
    presets = {
      bottom_search = false,
      lsp_doc_border = true,
    },
    messages = {
      -- NOTE: If you enable messages, then the cmdline is enabled automatically.
      -- This is a current Neovim limitation.
      enabled = true, -- enables the Noice messages UI
      view = "notify", -- default view for messages
      view_error = "notify", -- view for errors
      view_warn = "notify", -- view for warnings
      view_history = "split", -- view for :messages
      view_search = "virtualtext", -- view for search count messages. Set to `false` to disable
    },
    lsp_progress = {
      enabled = false,
    },
  },
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
}
