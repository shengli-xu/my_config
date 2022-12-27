local status_ok, mason_lsp_config = pcall(require, "mason-lspconfig")
if not status_ok then
  return
end

mason_lsp_config.setup({
  ensure_installed = {'pyright', 'bashls', 'sumneko_lua', 'cmake'},
  automatic_installation = false
})
