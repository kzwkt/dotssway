# Powerline colorscheme for Nord Kakoune theme

hook global ModuleLoaded powerline %{ require-module powerline_nord }

provide-module powerline_nord %§
set-option -add global powerline_themes "nord"

define-command -hidden powerline-theme-nord %{ evaluate-commands %sh{

    pn1="rgb:2e3440"
    pn2="rgb:3b4252"
    pn3="rgb:434c5e"
    pn4="rgb:4c566a"

    ss1="rgb:d8dee9"
    ss2="rgb:e5e9f0"
    ss3="rgb:eceff4"

    fr1="rgb:8fbcbb"
    fr2="rgb:88c0d0"
    fr3="rgb:81a1c1"
    fr4="rgb:5e81ac"

    au1="rgb:bf616a"
    au2="rgb:d08770"
    au3="rgb:ebcb8b"
    au4="rgb:a3be8c"
    au5="rgb:b48ead"

    printf "%s\n" "
        declare-option -hidden str powerline_color00 ${pn1} # fg: bufname
        declare-option -hidden str powerline_color01 ${pn2} # bg: position
        declare-option -hidden str powerline_color02 ${au3} # fg: git
        declare-option -hidden str powerline_color03 ${ss1} # bg: bufname
        declare-option -hidden str powerline_color04 ${pn3} # bg: git
        declare-option -hidden str powerline_color05 ${ss2} # fg: position
        declare-option -hidden str powerline_color06 ${pn1} # fg: line-column
        declare-option -hidden str powerline_color07 ${pn4} # fg: mode-info
        declare-option -hidden str powerline_color08 ${pn2} # base background
        declare-option -hidden str powerline_color09 ${fr3} # bg: line-column
        declare-option -hidden str powerline_color10 ${ss1} # fg: filetype
        declare-option -hidden str powerline_color11 ${pn4} # bg: filetype
        declare-option -hidden str powerline_color12 ${fr1} # bg: client
        declare-option -hidden str powerline_color13 ${pn1} # fg: client
        declare-option -hidden str powerline_color14 ${pn3} # bg: session
        declare-option -hidden str powerline_color15 ${ss2} # fg: session
        declare-option -hidden str powerline_color16 ${pn2} # unused
        declare-option -hidden str powerline_color17 ${pn3} # unused
        declare-option -hidden str powerline_color18 ${au3} # unused
        declare-option -hidden str powerline_color19 ${ss1} # unused
        declare-option -hidden str powerline_color20 ${pn4} # unused
        declare-option -hidden str powerline_color21 ${ss2} # unused
        declare-option -hidden str powerline_color22 ${ss3} # unused
        declare-option -hidden str powerline_color23 ${pn1} # unused
        declare-option -hidden str powerline_color24 ${pn2} # unused
        declare-option -hidden str powerline_color25 ${pn3} # unused
        declare-option -hidden str powerline_color26 ${ss1} # unused
        declare-option -hidden str powerline_color27 ${pn4} # unused
        declare-option -hidden str powerline_color28 ${pn1} # unused
        declare-option -hidden str powerline_color29 ${ss2} # unused
        declare-option -hidden str powerline_color30 ${ss1} # unused
        declare-option -hidden str powerline_color31 ${pn1} # unused

        declare-option -hidden str powerline_next_bg %opt{powerline_color08}
        declare-option -hidden str powerline_base_bg %opt{powerline_color08}
    "
}}

§
