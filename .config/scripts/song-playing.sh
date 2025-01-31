
#
#                                                                 $$\                     $$\
#                                                                 $$ |                    \__|
#        $$$$$$$\  $$$$$$\  $$$$$$$\   $$$$$$\           $$$$$$\  $$ | $$$$$$\  $$\   $$\ $$\ $$$$$$$\   $$$$$$\
#       $$  _____|$$  __$$\ $$  __$$\ $$  __$$\ $$$$$$\ $$  __$$\ $$ | \____$$\ $$ |  $$ |$$ |$$  __$$\ $$  __$$\
#       \$$$$$$\  $$ /  $$ |$$ |  $$ |$$ /  $$ |\______|$$ /  $$ |$$ | $$$$$$$ |$$ |  $$ |$$ |$$ |  $$ |$$ /  $$ |
#        \____$$\ $$ |  $$ |$$ |  $$ |$$ |  $$ |        $$ |  $$ |$$ |$$  __$$ |$$ |  $$ |$$ |$$ |  $$ |$$ |  $$ |
#       $$$$$$$  |\$$$$$$  |$$ |  $$ |\$$$$$$$ |        $$$$$$$  |$$ |\$$$$$$$ |\$$$$$$$ |$$ |$$ |  $$ |\$$$$$$$ |
#       \_______/  \______/ \__|  \__| \____$$ |        $$  ____/ \__| \_______| \____$$ |\__|\__|  \__| \____$$ |
#                                     $$\   $$ |        $$ |                    $$\   $$ |              $$\   $$ |
#                                     \$$$$$$  |        $$ |                    \$$$$$$  |              \$$$$$$  |
#                                      \______/         \__|                     \______/                \______/
#
#       by Eblanyrt (2025)
#

#!/bin/bash

song_info=$(playerctl metadata --format '{{title}}')

if [ -z "$song_info" ]; then
	echo ""
else
	echo "  $song_info"
fi
