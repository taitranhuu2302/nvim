-- Adding noice.nvim to telescope
return {
  {
    "nvim-telescope/telescope.nvim",
    opts = function()
      LazyVim.on_load("telescope.nvim", function()
        require("telescope").load_extension("noice")
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
    },
  },
}
