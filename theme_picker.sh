#!/bin/sh
choice=$(echo -e "OG\nNEON\nPUMPKIN\nNORD\nHK" | rofi -dmenu -l 5 -p "Theme")
case "$choice" in
	OG)
		wal --theme /home/shaolinrus/wal_themes/og.json
		cp .config/polybar/colors/og-colors.ini .config/polybar/colors.ini
		cp ~/wal_themes/prompts/ogPrompt ~/wal_themes/prompt_cols
		replace "URxvt*background:   [100]#111010" "URxvt*background:   [85]#111010" -- ~/.cache/wal/colors.Xresources
		notify-send OG;;
	NEON)
		wal --theme /home/shaolinrus/wal_themes/neon.json
		cp .config/polybar/colors/neon-colors.ini .config/polybar/colors.ini
		cp ~/wal_themes/prompts/neonPrompt ~/wal_themes/prompt_cols
		replace "URxvt*background:   [100]#111010" "URxvt*background:   [85]#111010" -- .cache/wal/colors.Xresources
		notify-send NEON;;
	PUMPKIN)
		cp .config/polybar/colors/pumpkin-colors.ini .config/polybar/colors.ini
		wal --theme ~/wal_themes/pumpkin.json
		cp ~/wal_themes/prompts/pumpkinPrompt ~/wal_themes/prompt_cols
		replace "URxvt*background:   [100]#111010" "URxvt*background:   [85]#111010" -- .cache/wal/colors.Xresources
		notify-send PUMPKIN;;
	NORD)
		cp .config/polybar/colors/nord-colors.ini .config/polybar/colors.ini
		wal --theme ~/wal_themes/nord.json
		cp ~/wal_themes/prompts/nordPrompt ~/wal_themes/prompt_cols
		replace "URxvt*background:   [100]#111010" "URxvt*background:   [85]#111010" -- .cache/wal/colors.Xresources
		notify-send -u LOW -t 300 NORD;;
	HK)
		cp .config/polybar/colors/hk-colors.ini .config/polybar/colors.ini
		wal --theme ~/wal_themes/HK.json
		cp ~/wal_themes/prompts/hkPrompt ~/wal_themes/prompt_cols
		replace "URxvt*background:   [100]#111010" "URxvt*background:   [85]#111010" -- .cache/wal/colors.Xresources
		notify-send HK;;
esac
