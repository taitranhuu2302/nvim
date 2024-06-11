return {
  -- {
  --   "hrsh7th/nvim-cmp",
  --   event = "InsertEnter",
  --   dependencies = {
  --     "hrsh7th/cmp-buffer", -- source for text in buffer
  --     "hrsh7th/cmp-path", -- source for file system paths
  --     "L3MON4D3/LuaSnip",
  --     "saadparwaiz1/cmp_luasnip", -- for autocompletion
  --     "rafamadriz/friendly-snippets", -- useful snippets
  --     "onsails/lspkind.nvim", -- vs-code like pictograms
  --     "mlaursen/vim-react-snippets",
  --   },
  --   config = function()
  --     local cmp = require("cmp")
  --     local luasnip = require("luasnip")
  --     local lspkind = require("lspkind")
  --     -- loads vscode style snippets from installed plugins (e.g. friendly-snippets)
  --     require("luasnip.loaders.from_vscode").lazy_load()
  --     -- react snippets
  --     require("vim-react-snippets").lazy_load()
  --
  --     cmp.setup({
  --       completion = {
  --         completeopt = "menu,menuone,preview,noselect",
  --       },
  --       snippet = { -- configure how nvim-cmp interacts with snippet engine
  --         expand = function(args)
  --           luasnip.lsp_expand(args.body)
  --         end,
  --       },
  --
  --       -- window = {
  --       --   completion = cmp.config.window.bordered(),
  --       --   documentation = cmp.config.window.bordered()
  --       -- },
  --
  --       mapping = cmp.mapping.preset.insert({
  --         ["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
  --         ["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion
  --         ["<C-b>"] = cmp.mapping.scroll_docs(-4),
  --         ["<C-f>"] = cmp.mapping.scroll_docs(4),
  --         ["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
  --         ["<C-e>"] = cmp.mapping.abort(), -- close completion window
  --         ["<CR>"] = cmp.mapping.confirm({ select = false }),
  --       }),
  --       -- sources for autocompletion
  --       sources = cmp.config.sources({
  --         { name = "nvim_lsp" },
  --         -- { name = "vsnip" }, -- For vsnip users.
  --         -- { name = "luasnip" }, -- snippets
  --         { name = "buffer" }, -- text within current buffer
  --         { name = "path" }, -- file system paths
  --       }),
  --
  --       -- configure lspkind for vs-code like pictograms in completion menu
  --       formatting = {
  --         format = lspkind.cmp_format({
  --           maxwidth = 50,
  --           ellipsis_char = "...",
  --         }),
  --       },
  --     })
  --   end,
  -- },
  -- { "hrsh7th/nvim-cmp" },
  -- { "hrsh7th/cmp-nvim-lsp" },

  {
    "L3MON4D3/LuaSnip",
    version = nil,
    branch = "master",
    dependencies = {
      "rafamadriz/friendly-snippets",
      "Zeioth/NormalSnippets",
      "benfowler/telescope-luasnip.nvim",
      "saadparwaiz1/cmp_luasnip",
      {
        "mlaursen/vim-react-snippets",
        dependencies = "L3MON4D3/LuaSnip",
        ft = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
      },
    },
    opts = function(plugin, opts)
      -- friendly-snippets - enable standardized comments snippets
      -- require("luasnip.loaders.from_vscode").lazy_load({
      --   include = {
      --     "javascript",
      --     "javascriptreact",
      --     "typescriptreact",
      --     "typescript",
      --     "typescript.tsx",
      --     "javascript.jsx",
      --   },
      -- })
      -- require("luasnip").filetype_extend("typescript", { "tsdoc" })
      -- require("luasnip").filetype_extend("javascript", { "jsdoc" })
      require("luasnip").filetype_extend("lua", { "luadoc" })
      require("luasnip").filetype_extend("python", { "pydoc" })
      require("luasnip").filetype_extend("rust", { "rustdoc" })
      require("luasnip").filetype_extend("cs", { "csharpdoc" })
      require("luasnip").filetype_extend("java", { "javadoc" })
      require("luasnip").filetype_extend("c", { "cdoc" })
      require("luasnip").filetype_extend("cpp", { "cppdoc" })
      require("luasnip").filetype_extend("php", { "phpdoc" })
      require("luasnip").filetype_extend("kotlin", { "kdoc" })
      require("luasnip").filetype_extend("ruby", { "rdoc" })
      require("luasnip").filetype_extend("sh", { "shelldoc" })
    end,
  },
  -- {
  --   "VonHeikemen/lsp-zero.nvim",
  --   branch = "v3.x",
  --   lazy = true,
  -- },
  {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v3.x",
    -- branch = "v1.x",
    dependencies = {
      -- LSP Support
      { "neovim/nvim-lspconfig" }, -- Required
      { "williamboman/mason.nvim" }, -- Optional
      { "williamboman/mason-lspconfig.nvim" }, -- Optional

      -- Autocompletion
      { "hrsh7th/nvim-cmp" }, -- Required
      { "hrsh7th/cmp-nvim-lsp" }, -- Required
      { "hrsh7th/cmp-buffer" }, -- Optional
      { "hrsh7th/cmp-path" }, -- Optional
      { "saadparwaiz1/cmp_luasnip" }, -- Optional
      { "hrsh7th/cmp-nvim-lua" }, -- Optional

      -- Snippets
      { "L3MON4D3/LuaSnip" }, -- Required
      { "rafamadriz/friendly-snippets" }, -- Optional
    },
  },
}
