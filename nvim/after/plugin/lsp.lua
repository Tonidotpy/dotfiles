local lsp = require('lsp-zero').preset({})

lsp.ensure_installed({
    'clangd',
    'lua_ls',
})

-- Fix undefined global 'vim'
lsp.nvim_workspace()

lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    },

})

lsp.on_attach(function(client, bufnr)
    -- see :help lsp-zero-keybinings
    -- to learn the available actions
    lsp.default_keymaps({ buffer = bufnr })
end)

local lspconfig = require('lspconfig')

-- (Optional) Configure lua language server for neovim
lspconfig.lua_ls.setup(lsp.nvim_lua_ls())

lspconfig.clangd.setup({
    cmd = { 'clangd', '--header-insertion=never'},
})

lsp.setup()
