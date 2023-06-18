local status, nvimgps = pcall(require, "nvim-gps")
if (not status) then return end

nvimgps.setup({})
