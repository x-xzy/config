local ok, bufferline = pcall(require, "bufferline")
if not ok then
    return
end

bufferline.setup {
    options = {
        close_command = "Bdelete! %d",
        right_mouse_command = "Bdelete! %d",
        diagnostics = false,
        diagnostics_update_in_insert = false,
        offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
        separator_style = "thin",
    },
}
