local wk = require("which-key")

wk.register({
    f = {
        name = "Find",
        f = {"Find file"},
        b = {"Find buffer"},
      h = {"Find help"},
        w = {"Find text"}
    },
    d = {"Diagnostic"},
    e = {"File manager"},
    g = {"Git status"},
    p = {"Choose tab"},
    x = {"Close tab"},
    w = {"Save"},
    t = {name = "Terminal"},
    g = {name = "Go/Git", b = "Branches", c = "Commits", s = "Status", r = "References", d = "Definitions"},
    a = {name = "Comment", cl = "Comment Line", c= "Comment"}
},{prefix = "<leader>h"})
