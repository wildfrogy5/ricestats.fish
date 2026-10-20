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
echo '
'
# ong i need to stop this shit. this code is so ass :sob:
if test $XDG_CURRENT_DESKTOP = "XFCE" 
cat ascii/xfce.txt
else if test $XDG_CURRENT_DESKTOP = "MATE"
cat ascii/mate.txt
else if test $XDG_CURRENT_DESKTOP = "KDE"
cat ascii/kde.txt
else if test $XDG_CURRENT_DESKTOP = "HYPRLAND"
cat ascii/hyprland.txt
else if test $XDG_CURRENT_DESKTOP = "GNOME"
cat ascii/gnome.txt
else if test $XDG_CURRENT_DESKTOP = "CINNAMON"
cat ascii/cinnamon.txt
else if test $XDG_CURRENT_DESKTOP = "LXQT"
cat ascii/lxqt.txt
else if test $XDG_CURRENT_DESKTOP = "DDE"
cat ascii/dde.txt
else if test $XDG_CURRENT_DESKTOP = "BUDGIE"
cat ascii/budgie.txt
else if set -ql _flag_hideerrors
echo $XDG_CURRENT_DESKTOP
else echo 'sorry! we dont have ascii art for that deskop environment yet! you can run --hideerrors to disable this!'&& echo $XDG_CURRENT_DESKTOP
end
echo '
'
echo '
┌─────────┐┌──┐  ┌──┐┌────────┐┌──┐      ┌──┐      
│· ┌──────┘│ .│  │ ·││· ┌─────┘│  │      │  │      
│ ·└──────┐│· └──┘  ││  └──┐   │·.│      │·.│      
└──────┐──││──┌──┐──││──┌──┘   │──│      │──│      
┌──────┘══││══│  │══││══└─────┐│══└─────┐│══└─────┐
└─────────┘└──┘  └──┘└────────┘└────────┘└────────┘
'
# secret because im a fucking retard and think its funny
if test (echo $SHELL | sed 's,/usr/bin/,,g') = "fish"
if test (random 1 100) -le 1
cat ascii/shell/fih.txt
else
cat ascii/shell/fish.txt
end
end
