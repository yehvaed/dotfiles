return {
  config = function()
    local lsp_zero = require("lsp-zero")
    require("mason-lspconfig").setup({
      ensure_installed = {
        -- @terraform #devops
        "terraformls",

        -- @lua #dev
        "lua_ls",

        -- @bash #dev
        "bashls",

        -- @java #dev
        "java_language_server"
      },
      handlers = {
        lsp_zero.default_setup,
      },
    })
  end
}
