local capabilities = require("blink.cmp").get_lsp_capabilities()

local servers = {
  ts_ls = {},
  html = {},
  gopls = {},
  rust_analyzer = {},
  clangd = {},
  pyright = {},
  lua_ls = {
    settings = {
      Lua = {
        runtime = {
          version = "LuaJIT",
        },

        diagnostics = {
          globals = {
            "vim",
          },
        },

        workspace = {
          checkThirdParty = false,
			library = {
				vim.env.VIMRUNTIME,
			}
          -- library = vim.api.nvim_get_runtime_file("", true),
        },

        telemetry = {
          enable = false,
        },
      },
    },
  },

  kulala_ls = {},
}

for server, config in pairs(servers) do
  config.capabilities = capabilities

  vim.lsp.config(server, config)
  vim.lsp.enable(server)
end
