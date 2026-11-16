vim.lsp.enable({
    "lua_ls",
    "ts_ls",
    "rust_analyzer",
    "gopls",
    "clangd",
    "cssls",
    "sqls",
    "ty",
})

vim.diagnostic.config({
    virtual_text = true,
    severity_sort = true,
})

vim.opt.completeopt = { "menu", "menuone", "noinsert", "popup" }
vim.keymap.set("i", "<C-Space>", vim.lsp.completion.get, { desc = "Trigger completion" })

-- Tab accepts the completion, or jumps through snippet fields
vim.keymap.set({ "i", "s" }, "<Tab>", function()
    if vim.fn.pumvisible() == 1 then
        return "<C-y>"
    elseif vim.snippet.active({ direction = 1 }) then
        return "<Cmd>lua vim.snippet.jump(1)<CR>"
    end
    return "<Tab>"
end, { expr = true, desc = "Accept completion / next snippet field / Tab" })

vim.keymap.set({ "i", "s" }, "<S-Tab>", function()
    if vim.snippet.active({ direction = -1 }) then
        return "<Cmd>lua vim.snippet.jump(-1)<CR>"
    end
    return "<S-Tab>"
end, { expr = true, desc = "Previous snippet field" })

vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(ev)
        local client = vim.lsp.get_client_by_id(ev.data.client_id)
        if not client then return end

        if client:supports_method("textDocument/completion") then
            -- trigger on every typed character so `prin` completes to `println!`
            local provider = client.server_capabilities.completionProvider
            if provider then
                local chars = {}
                for i = 32, 126 do table.insert(chars, string.char(i)) end
                provider.triggerCharacters = chars
            end

            vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
        end

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
