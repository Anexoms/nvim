local mason_lspconfig = require("mason")

-- setup mason bridge
mason_lspconfig.setup()

-- capabilities (for completion later)
local capabilities = require("blink.cmp").get_lsp_capabilities()
-- servers to enable
local servers = {
    "lua_ls",
    "pyright",
    "clangd",
    "rust_analyzer",
    "hls",
}

for _, server in ipairs(servers) do
    vim.lsp.config(server, {
        capabilities = capabilities,
    })

    vim.lsp.enable(server)
end
