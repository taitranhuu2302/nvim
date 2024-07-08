return {
  -- add pyright to lspconfig
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      inlay_hints = { enabled = false },
      servers = {
        -- TS setup commented and config added in ts.lua
        -- pyright will be automatically installed with mason and loaded with lspconfig
        pyright = {},
        html = {},
        eslint = {},
        yamlls = {
          filetypes = {
            "yaml",
            "yml",
          },
        },
        docker_compose_language_service = {
          filetypes = {
            "yaml",
            "yml",
          },
        },
        sqls = {},
        -- emmet_language_server = {
        --   filetypes = {
        --     "css",
        --     "eruby",
        --     "html",
        --     "javascript",
        --     "javascriptreact",
        --     "less",
        --     "sass",
        --     "scss",
        --     "pug",
        --     "typescriptreact",
        --     "typescript",
        --     "php",
        --     "markdown",
        --   },
        -- },
        emmet_ls = {
          filetypes = {
            "astro",
            "blade",
            -- "css",
            "eruby",
            "html",
            "htmldjango",
            "javascriptreact",
            "less",
            "pug",
            -- "sass",
            -- "scss",
            "svelte",
            "typescriptreact",
            "vue",
            "php",
          },
        },
      },
    },
  },
}
