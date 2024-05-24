return {

    {
        "williamboman/mason.nvim",
        config = function()
             require("mason").setup()
        end
    },

    {
        "williamboman/mason-lspconfig.nvim",
         -- "neovim/nvim-lspconfig",
         config = function()
               require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    --"asm_lsp",
                    --"bashls",
                    --"pkgbuild_language_server",
                    "clangd",
                    --"jsonls",
                    --"autotools_ls",
                    --"pyright",
                    "marksman",
                    --"sourcery",
                    "rust_analyzer"      
                }
        })
    end


    },

    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})
            lspconfig.clangd.setup({})
            vim.keymap.set('n','K',vim.lsp.buf.hover,{})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
           -- vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
           -- vim.keymap.set('n', 'gm', vim.lsp.buf.implementation, {})
           -- vim.keymap.set('n', 'gs', vim.lsp.buf.buf,references {})

        end
    }

   }
