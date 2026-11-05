vim.lsp.enable({
    "lua_ls",
    "ts_ls",
    "rust_analyzer",
    "gopls",
    "clangd",
    "cssls",
    "sqls",
})

vim.diagnostic.config({
    virtual_text = true,
    severity_sort = true,
})

vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(ev)
        local client = vim.lsp.get_client_by_id(ev.data.client_id)

        -- native completion
        if client ~= nil and client:supports_method("textDocument/completion") then
            vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
        end

        -- buffer-local keymaps
        local map = function(keys, fn, desc)
            vim.keymap.set("n", keys, fn, { buffer = ev.buf, desc = desc })
        end
        map("gd", vim.lsp.buf.definition, "Go to definition")
        map("gD", vim.lsp.buf.declaration, "Go to declaration")
        map("gI", vim.lsp.buf.implementation, "Go to implementation")
        map("gy", vim.lsp.buf.type_definition, "Go to type definition")
        map("gR", vim.lsp.buf.references, "References")
        map("<leader>rn", vim.lsp.buf.rename, "Rename")
        map("<leader>ca", vim.lsp.buf.code_action, "Code action")
    end,
})

vim.cmd("set completeopt+=noselect")

