-- Adding noice.nvim to telescope
return {
  "nvim-telescope/telescope.nvim",
  opts = function()
    LazyVim.on_load("telescope.nvim", function()
      require("telescope").load_extension("noice")
    end)
  end,
}
