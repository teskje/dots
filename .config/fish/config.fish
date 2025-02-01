set fish_greeting ""

set -gx EDITOR nvim

if status is-interactive
    starship init fish | source
end
