-- Mappings. See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = { noremap = true }

vim.keymap.set("n", "<leader>le", vim.diagnostic.open_float, opts)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
vim.keymap.set("n", "<leader>lq", vim.diagnostic.setloclist, opts)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
	-- Enable completion triggered by <c-x><c-o>
	-- vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
	-- Mappings.

	local bufopts = { noremap = true, silent = true, buffer = bufnr }
	vim.keymap.set("n", "gD", vim.lsp.buf.declaration, bufopts)
	vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
	vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
	vim.keymap.set("n", "gi", vim.lsp.buf.implementation, bufopts)
	vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, bufopts)
	vim.keymap.set("n", "<leader>lwa", vim.lsp.buf.add_workspace_folder, bufopts)
	vim.keymap.set("n", "<leader>lwr", vim.lsp.buf.remove_workspace_folder, bufopts)
	vim.keymap.set("n", "<leader>lwl", function()
		print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
	end, bufopts)
	vim.keymap.set("n", "<leader>lD", vim.lsp.buf.type_definition, bufopts)
	vim.keymap.set("n", "<leader>lca", vim.lsp.buf.code_action, bufopts)
	vim.keymap.set("n", "gr", vim.lsp.buf.references, bufopts)
	vim.keymap.set("n", "<leader>lf", vim.lsp.buf.formatting)

	if client.name == "tsserver" then
		client.resolved_capabilities.document_formatting = false
		client.resolved_capabilities.document_range_formatting = false
	end
	if client.name == "intelephense" then
		client.resolved_capabilities.document_formatting = false
		client.resolved_capabilities.document_range_formatting = false
	end
	if client.name == "sumneko_lua" then
		client.resolved_capabilities.document_formatting = false
		client.resolved_capabilities.document_range_formatting = false
	end
	if client.name == "cssls" then
		client.resolved_capabilities.document_formatting = false
		client.resolved_capabilities.document_range_formatting = false
	end
end

local lsp_flags = {
	-- This is the default in Nvim 0.7+
	debounce_text_changes = 150,
}

local capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())

require("lspconfig")["pyright"].setup({
	on_attach = on_attach,
	flags = lsp_flags,
	capabilities = capabilities,
})


require("lspconfig").intelephense.setup({
	on_attach = on_attach,
	flags = lsp_flags,
	capabilities = capabilities,
})

require("lspconfig").tsserver.setup({
	on_attach = on_attach,
	flags = lsp_flags,
	capabilities = capabilities,
})

require("lspconfig").bashls.setup({
	on_attach = on_attach,
	flags = lsp_flags,
	capabilities = capabilities,
})

require'lspconfig'.gopls.setup({
	on_attach = on_attach,
	flags = lsp_flags,
	capabilities = capabilities,
})


require("lspconfig").cssls.setup({
	capabilities = capabilities,
	on_attach = on_attach,
	flags = lsp_flags,
	-- vim.keymap.set('n', '<leader>lf', vim.lsp.buf.formatting)
})
