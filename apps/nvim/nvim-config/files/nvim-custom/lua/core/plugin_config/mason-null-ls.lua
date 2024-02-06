return {
  config = function()
    require("mason-null-ls").setup({
      ensure_installed = {
        -- @lua #dev
        "stylua",
      },
      automatic_installation = true,
      handlers = {},
    })
  end,
}
