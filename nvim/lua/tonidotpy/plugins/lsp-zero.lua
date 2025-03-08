return {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    dependencies = {
        -- LSP Support
        { 'neovim/nvim-lspconfig' },
        { 'williamboman/mason.nvim' },
        { 'williamboman/mason-lspconfig.nvim' },

        -- Autocompletion
        {
            'hrsh7th/nvim-cmp',
            event = "InsertEnter",
            opts = function()
                local cmp = require("cmp")
                return {
                    mapping = {
                        ["<Tab>"] = cmp.mapping.confirm {
                            behavior = cmp.ConfirmBehavior.Replace,
                            select = true
                        },
                        ["<CR>"] = cmp.mapping.confirm {
                            behavior = cmp.ConfirmBehavior.Insert,
                            select = true
                        }
                    }
                }
            end
        },
        { 'hrsh7th/cmp-nvim-lsp' },
        {
            'L3MON4D3/LuaSnip',
            tag = "v2.3.0",
            build = "make install_jsregexp"
        },
    }
}
