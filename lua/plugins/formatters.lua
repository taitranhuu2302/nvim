return {
  "stevearc/conform.nvim",
  optional = false,
  opts = {
    formatters_by_ft = {
      javascript = { "prettier" },
      javascriptreact = { "prettier" },
      typescript = { "prettier" },
      typescriptreact = { "prettier" },
      vue = { "prettier" },
      css = { "prettier" },
      scss = { "prettier" },
      html = { "prettier" },
      less = { "prettier" },
      json = { "prettier" },
      jsonc = { "prettier" },
      yaml = { "prettier" },
      markdown = { "prettier" },
      ["markdown.mdx"] = { "prettier" },
      graphql = { "prettier" },
      handlebars = { "prettier" },
    },
    formatters = {
      prettier = {},
    },
    notify_on_error = true,
  },
  -- Passing tabSize 2 for lps fomatters who allow it
  keys = {
    {
      "<leader>cf",
      function()
        require("conform").format({
          timeout_ms = 3000,
          lsp_fallback = true,
          formatting_options = { tabSize = 2 },
        })
      end,
      mode = { "n", "v" },
      desc = "Format",
    },
  },
}
