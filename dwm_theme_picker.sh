#!/bin/sh
choice=$(echo -e "OG\nNEON\nPUMPKIN\nNORD\nHK" | dmenu -i -fn 'Iosevka Term-8' -p "Theme:")
case "$choice" in
	OG)
		wal --theme /home/shaolinrus/wal_themes/og.json
		cp ~/wal_themes/prompts/ogPrompt ~/prompt_cols
		notify-send -u LOW -t 300 OG;;
	NEON)
		wal --theme /home/shaolinrus/wal_themes/neon.json
		cp ~/wal_themes/prompts/neonPrompt ~/prompt_cols
		notify-send -u LOW  -t 300 NEON;;
	PUMPKIN)
		wal --theme ~/wal_themes/pumpkin.json
		cp ~/wal_themes/prompts/pumpkinPrompt ~/prompt_cols
		notify-send -u LOW  -t 300 PUMPKIN;;
	NORD)
		wal --theme ~/wal_themes/nord.json
		cp ~/wal_themes/prompts/nordPrompt ~/prompt_cols
		notify-send -u LOW  -t 300 NORD;;
	HK)
		wal --theme ~/wal_themes/HK.json
		cp ~/wal_themes/prompts/hkPrompt ~/prompt_cols
		notify-send -u LOW  -t 300 HK;;
esac
