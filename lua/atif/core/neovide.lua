if vim.g.neovide then
  -- Transparency currently broken on Wayland
  -- See: https://github.com/neovide/neovide/issues/1463
  -- let g:neovide_transparency = 0.0
  vim.g.neovide_cursor_vfx_mode = "railgun"
  vim.g.neovide_floating_opacity = 0.7
  vim.g.neovide_floating_blur_amount_x = 2.0
  vim.g.neovide_floating_blur_amount_y = 2.0
  vim.g.neovide_remember_window_size = true
  vim.g.neovide_transparency = 0.95
  vim.o.guifont = "ComicCodeLigatures Nerd Font:h15"
end
