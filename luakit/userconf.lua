local settings = require "settings"

settings.window.home_page = "luakit://newtab/"
settings.window.close_with_last_tab = false

settings.webview.enable_webgl = true
settings.webview.enable_mediasource = true
settings.webview.enable_media_stream = true
settings.webview.enable_webaudio = true
settings.webview.enable_accelerated_2d_canvas = true
settings.webview.enable_plugins = true

settings.window.search_engines.baidu = "https://baidu.com/s?wd=%s&cl=3"
settings.window.search_engines.default = settings.window.search_engines.google

local select = require "select"

select.label_maker = function ()
    local chars = interleave("qwertasdfgzxcvb", "yuiophjklnm")
    return trim(sort(reverse(chars)))
end

local follow = require "follow"

follow.pattern_maker = follow.pattern_styles.match_label

follow.stylesheet = [===[
    #luakit_select_overlay {
        position: absolute;
        left: 0;
        top: 0;
        z-index: 2147483647; /* Maximum allowable on WebKit */
    }

    #luakit_select_overlay .hint_overlay {
        display: block;
        position: absolute;
        background-color: #ffff99;
        border: 1px dotted #000;
        opacity: 0.3;
    }

    #luakit_select_overlay .hint_label {
        display: block;
        position: absolute;
        background-color: #285577;
        -- border: 1px dashed #000;
        color: #fff;
        font-size: 15px;
        font-family: monospace, courier, sans-serif;
        opacity: 0.8;
    }

    #luakit_select_overlay .hint_selected {
        background-color: #00ff00 !important;
    }
]===]


local downloads = require "downloads"

downloads.default_dir = xdg.downloads_dir or (os.getenv("HOME") .. "/Downloads")

local lousy = require "lousy"

-- _M.label_format = '<span foreground="{index_fg}" font="Monospace">{index} </span>{title}'
lousy.widget.tab.label_format = '<span font="Monspace">{index}: </span>{title}'

local modes = require "modes"

-- modes.add_binds("normal", {
    -- { "<Control-h>", "Hide tab list.", function (w)
        -- w.tablist.widget.visible = not w.tablist.widget.visible
    -- end},
-- })

modes.add_binds("normal", {
    { "<Control-h>", "Hide tab list.", function (w)
        w.tablist.widget.visible = not w.tablist.widget.visible
    end},
    
    { "<Control-c>", "Copy (as-in control-c control-v)", function (w)
        luakit.selection.clipboard = luakit.selection.primary
    end},
})

modes.add_binds("passthrough", {
    { "<Shift-Escape>", "Escape passthrough mode", function (w)
        w:set_prompt();
        w:set_mode() 
    end},
})
modes.remove_binds("passthrough", {"<Escape>",})

local keysym = require "keysym"

modes.add_binds("normal", {
    { "<Escape>", "pass a esc key event to webview", function (w)
        w:set_mode("passthrough");
        keysym.send(w, "<Escape>");
        w:set_mode("normal");
    end},
})

-- require "plugins/searchmenu"
-- require "plugins/tabmenu"
