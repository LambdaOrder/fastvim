local neokinds = require("neokinds")

neokinds.setup({
    icons = {
        diagnostics = {
            error = "",
            warn = "",
            hint = "",
            info = "",
        },
        folders = {
            AppData = "󰉌",
            Public = "󱧰",
            bin = "󱧺",
            colors = "󱁽",
            dev = "󱧼",
            doc = "󱂷",
            docs = "󱂷",
            lua = "󰉋",
            closed = "",
            open = "",
            empty = "",
            empty_open = "",
            symlink = "",
            [".git"] = "",
            [".github"] = "",
            [".cache"] = "󰪺",
            [".vim"] = "󰉋",
        },
        files = {
            default = "",
            no_extension = "",
            license = "",
            news = "󰎕",
            readme = "",
            code_of_conduct = "󱃱",
            todo = "󰝖",
            [".bashrc"] = "󰒓",
            extensions = {
                asm = "",
                astro = "",
                angular = "󰚿",
                basic = "󰫯",
                c = "",
                cpp = "󰙲",
                el = "",
                html = "",
                js = "",
                json = "",
                css = "",
                md = "",
                norg = "",
                py = "",
                ts = "",
                java = "",
                lua = "",
                rb = "",
                go = "󰟓",
                gd = "",
                rs = "",
                php = "",
                sh = "",
                txt = "",
                hs = "",
                lisp = "",
                scm = "",
                tailwind = "󱏿",
                svelte = "", 
                jsx = "",
                mod = "",
                sum = "",
                org = "",
                db = "",
                sqlite = "",
                groovy = "",
                gradle = "",
                maven = "",
                vue = "",
                vim = "",
                yaml = "",
                zig = "",
                ["7z"] = "󰗄",
                gz = "󰗄",
                tar = "󰗄", 
                rar = "󰗄",
                tgz = "󰗄",
                xz = "󰗄",
                z = "󰗄",
                zip = "󰗄",
                webm = "󰈫",
                mp4 = "󰈫",
                mkv = "󰈫",
                mp3 = "󰈣",
                gif = "󰵸",
                jpeg = "󰈥",
                jpg = "󰈥",
                png = "󰸭",
                webp = "󰈟",
            },
        },
    },
    completion_kinds = {
        Text = " ",
        Method = "󰆧",
        Function = "󰊕",
        Constructor = " ",
        Field = "",
        Variable = " ",
        Class = "󰠱 ",
        Interface = " ",
        Module = " ",
        Property = "󰜢 ",
        Unit = " ",
        Value = " ",
        Enum = "練",
        Keyword = "󰌋",
        Snippet = "",
        Color = " ",
        File = " ",
        Reference = " ",
        Folder = " ",
        EnumMember = " ",
        Constant = " ",
        Struct = "",
        Event = " ",
        Operator = " ",
        TypeParameter = " ",
        Boolean = " ",
        Array = " ",
        Image = "󰈫",
    },
})
