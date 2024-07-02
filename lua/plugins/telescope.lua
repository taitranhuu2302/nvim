-- Adding noice.nvim to telescope
return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/popup.nvim",
      -- { "nvim-telescope/telescope-media-files.nvim", opt = true },
      { "nvim-telescope/telescope-fzy-native.nvim", opt = true },
    },
    opts = function()
      LazyVim.on_load("telescope.nvim", function()
        require("telescope").load_extension("noice")
        -- require("telescope").load_extension("media_files")
      end)
    end,
    keys = {
      {
        "<leader>sL",
        function()
          local builtin = require("telescope.builtin")
          builtin.treesitter()
        end,
        desc = "Lists declarations",
      },
    },
  },
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      pickers = {
        colorscheme = {
          enable_preview = true,
        },
      },
      -- extensions = {
      --   media_files = {
      --     -- filetypes whitelist
      --     -- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
      --     filetypes = { "png", "webp", "jpg", "jpeg" },
      --     -- find command (defaults to `fd`)
      --     find_cmd = "rg",
      --   },
      -- },
    },
  },
}
