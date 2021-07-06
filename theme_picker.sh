#!/bin/sh
choice=$(echo -e "OG\nNEON\nPUMPKIN\nNORD\nHK" | dmenu -i -fn 'Cantarell-8' -p "Yoo:")
case "$choice" in
	OG)
		cp .config/polybar/colors/og-colors.ini .config/polybar/colors.ini
		wal --theme /home/shaolinrus/wal_themes/og.json
		cp ~/wal_themes/prompts/ogPrompt ~/prompt_cols
		notify-send OG;;
	NEON)
		cp .config/polybar/colors/neon-colors.ini .config/polybar/colors.ini
		wal --theme /home/shaolinrus/wal_themes/neon.json
		cp ~/wal_themes/prompts/neonPrompt ~/prompt_cols
		notify-send NEON;;
	PUMPKIN)
		cp .config/polybar/colors/pumpkin-colors.ini .config/polybar/colors.ini
		wal --theme ~/wal_themes/pumpkin.json
		cp ~/wal_themes/prompts/pumpkinPrompt ~/prompt_cols
		notify-send PUMPKIN;;
	NORD)
		cp .config/polybar/colors/nord-colors.ini .config/polybar/colors.ini
		wal --theme ~/wal_themes/nord.json
		cp ~/wal_themes/prompts/nordPrompt ~/prompt_cols
		notify-send -u LOW -t 300 NORD;;
	HK)
		cp .config/polybar/colors/hk-colors.ini .config/polybar/colors.ini
		wal --theme ~/wal_themes/HK.json
		cp ~/wal_themes/prompts/hkPrompt ~/prompt_cols
		notify-send HK;;
esac
