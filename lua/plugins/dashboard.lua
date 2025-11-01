return {
  {
    "snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          pick = function(cmd, opts)
            return LazyVim.pick(cmd, opts)()
          end,
          header = [[
               ___                                                                                           
              /\_ \                                                                                          
          ____\//\ \      __     __   _____   __  __    ____    ___     ___   __  __  __  __  __   __  __    
         /',__\ \ \ \   /'__`\ /'__`\/\ '__`\/\ \/\ \  /',__\ /' _ `\  / __`\/\ \/\ \/\ \/\ \/\ \ /\ \/\ \   
        /\__, `\ \_\ \_/\  __//\  __/\ \ \L\ \ \ \_\ \/\__, `\/\ \/\ \/\ \L\ \ \ \_/ \_/ \ \ \_\ \\ \ \_\ \  
        \/\____/ /\____\ \____\ \____\\ \ ,__/\/`____ \/\____/\ \_\ \_\ \____/\ \___x___/'\/`____ \\/`____ \ 
         \/___/  \/____/\/____/\/____/ \ \ \/  `/___/> \/___/  \/_/\/_/\/___/  \/__//__/   `/___/> \`/___/> \
                                        \ \_\     /\___/                                      /\___/   /\___/
                                         \/_/     \/__/                                       \/__/    \/__/ 
 ]],
        -- stylua: ignore
        ---@type snacks.dashboard.Item[]
        keys = {
          { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
          { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
          { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
          { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
          { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
          { icon = " ", key = "s", desc = "Restore Session", section = "session" },
          { icon = " ", key = "x", desc = "Lazy Extras", action = ":LazyExtras" },
          { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
          { icon = " ", key = "q", desc = "Quit", action = ":qa" },
        },
        },
      },
    },
  },
}
