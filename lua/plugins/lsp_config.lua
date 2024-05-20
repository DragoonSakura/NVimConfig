return  {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "marksman", "lua_ls", "clangd" }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.marksman.setup({})
            lspconfig.lua_ls.setup({})
            lspconfig.clangd.setup({})
            vim.keymap.set({'n', 'i'}, '<leader>cc', vim.lsp.buf.hover, {})
            vim.keymap.set({'n', 'i'}, '<leader>cd', vim.lsp.buf.definition, {})
            vim.keymap.set({'n', 'i'}, '<leader>ca', vim.lsp.buf.code_action, {})
        end
    }
}