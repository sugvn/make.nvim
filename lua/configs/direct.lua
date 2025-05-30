
local function get_directories()
    local directories = {}
     local home = vim.fn.expand("~")
    local handle = io.popen("fd . --type directory . " .. home)
    if handle then
        for line in handle:lines() do
            table.insert(directories, line)
        end
        handle:close()
    else
        print("Failed to execute fd command")
    end

    return directories
end

vim.keymap.set("n", "<leader>fk", function()
    local Snacks = require("snacks")
    local dirs = get_directories()

    return Snacks.picker({
        finder = function()
            local items = {}
            for i, item in ipairs(dirs) do
                table.insert(items, {
                    idx = i,
                    file = item,
                    text = item,
                })
            end
            return items
        end,
        layout = {
            layout = {
                box = "horizontal",
                width = 0.5,
                height = 0.5,
                {
                    box = "vertical",
                    border = "rounded",
                    title = "Find directory",
                    { win = "input", height = 1, border = "bottom" },
                    { win = "list", border = "none" },
                },
            },
        },
        format = function(item, _)
            local file = item.file
            local ret = {}
            local a = Snacks.picker.util.align
            local icon, icon_hl = Snacks.util.icon(file.ft, "directory")
            ret[#ret + 1] = { a(icon, 3), icon_hl }
            ret[#ret + 1] = { " " }
            ret[#ret + 1] = { a(file, 20) }

            return ret
        end,
        confirm = function(picker, item)
            picker:close()
            vim.fn.chdir(item.file)
            print("Changed directory to: " .. item.file)
            Snacks.picker.pick("files", {
                dirs = { "." },
            })
        end,
    })
end)
