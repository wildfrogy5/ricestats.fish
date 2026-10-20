#!/usr/bin/fish
argparse 'hideerrors' -- $argv
or exit 1
echo '
┌────────┐ ┌────────┐┌─────────┐┌──┐  ┌──┐┌────────┐┌────────┐┌─────────┐    ┌────────┐┌───┐ ┌──┐┌──┐   ┌──┐┌──┐┌─────────┐┌────────┐┌───┐ ┌──┐┌────────────┐┌────────┐┌───┐ ┌──┐┌────────┐
│ ·┌───┐·└┐│· ┌─────┘│· ┌──────┘│ .│  │ ·│└──┐· ┌──┘│ .┌──┐ ·││  ┌───┐· │    │· ┌─────┘│ . └┐│ ·││  │   │·.││  ││  ┌───┐· ││ .┌──┐ ·││ . └┐│ ·││ ·┌─┐  ┌─┐· ││· ┌─────┘│ . └┐│ ·│└──┐· ┌──┘
│. │   │  ││  └──┐   │ ·└──────┐│· └──┘ ┌┘   │  │   │· │  │  ││· └───┘  │    │  └──┐   │· │┐└┘  ││· │   │  ││· ││· └───┘  ││· │  │  ││· │┐└┘  ││  │ │· │ │ ·││  └──┐   │· │┐└┘  │   │  │   
│──│   │──││──┌──┘   └──────┐──││──┌──┐──│   │──│   │──│  │──││──┌──────┘    │──┌──┘   │──│└─┐──│└┐─└┐ ┌┘─┌┘│──││──┌─┐──┌─┘│──│  │──││──│└─┐──││──│ │──│ │──││──┌──┘   │──│└─┐──│   │──│   
│══└───┘═┌┘│══└─────┐┌──────┘══││══│  │══│   │══│   │══└──┘══││══│           │══└─────┐│══│  │══│ └┐═└─┘═┌┘ │══││══│ └┐═└─┐│══└──┘══││══│  │══││══│ │══│ │══││══└─────┐│══│  │══│   │══│   
└────────┘ └────────┘└─────────┘└──┘  └──┘   └──┘   └────────┘└──┘           └────────┘└──┘  └──┘  └─────┘  └──┘└──┘  └───┘└────────┘└──┘  └──┘└──┘ └──┘ └──┘└────────┘└──┘  └──┘   └──┘   
'
if test $XDG_CURRENT_DESKTOP = "XFCE" 
cat /home/nitro/Documents/shit/xfce.txt
else if test $XDG_CURRENT_DESKTOP = "MATE"
cat /home/nitro/Documents/shit/mate.txt
else if test $XDG_CURRENT_DESKTOP = "KDE"
cat /home/nitro/Documents/shit/kde.txt
else if test $XDG_CURRENT_DESKTOP = "HYPRLAND"
cat /home/nitro/Documents/shit/hyprland.txt
else if test $XDG_CURRENT_DESKTOP = "GNOME"
cat /home/nitro/Documents/shit/gnome.txt
else if set -ql _flag_hideerrors
echo $XDG_CURRENT_DESKTOP
else echo 'sorry! we dont have ascii art for that deskop environment yet! you can run --hideerrors to disable this!'&& echo $XDG_CURRENT_DESKTOP
end
