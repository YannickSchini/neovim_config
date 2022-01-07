local autosave = require("autosave")

autosave.setup(
    {
        enabled = true,
        execution_message = "AutoSaved at " .. vim.fn.strftime("%H:%M:%S"),
        events = {"InsertLeave", "TextChanged"},
        conditions = {
            exists = true,
            filename_is_not = {},
            filetype_is_not = {},
            modifiable = true
        },
        write_all_buffers = false,
        on_off_commands = true,
        clean_command_line_interval = 0,
        debounce_delay = 135
    }
)

-- The hook_before_saving hook can be used to abort saving based on some condition:
-- local autosave = require("autosave")
-- autosave.hook_before_saving = function ()
--     if <condition> then
--         vim.g.auto_save_abort = true -- Save will be aborted
--     end
-- end
