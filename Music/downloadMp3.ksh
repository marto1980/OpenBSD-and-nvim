#!/bin/ksh

# Input list (you can also pipe this in or read from a file)
# Berkovska:
# 9SRyXRnMDIs MexicanWave
# eHNKJdR4GbU Rachenica
# ycT-XL8U3lQ Dilyanino
# uq91ktCPAbs Nazdravitsa
# m_Ow9SAjBs4 TraditsionoHoro
# -tEyqeT2VtQ Zdravets
# 6cH8m4A292M IskarskoHoro
# lvrAyvMSZCM DaychovoHoro
# 6ivxP1m2NCQ LekoHoroMiro
# tURXv6ePuOE Svatbarsko_Bachkovsko
# KO4_WBhkvWU NevenoMome
# 6cbEdqZbUok Zhikinata
# Zf_gx-0uzmI NekaSeVeselim
# n7bIbdyi_tk ZapochvaSe
# Q4ZNwhXBFPA Zeleno
# EoKW-1Uyo6s Zeleno2
# lPEh-U70-hA Turlachkata
# oT4t3uWWpuA Ivovata
# 5fFe9duS62c ChichovDen
# IAIHPRtuttk Odyssey
# v3UHE_T_hXY Zvezdopad
# S-GQG1y9gyc MladenovoHoro
# uW0rFxPkDNM KadeVaskoPray
# cWoMzgLZNjk ChichovataRakiya
# wB0OjqL9Bqk DunavskoHoro
#
# Vivo Montana
# GkQZLfoPXZI SrabskoHoro
# lgZCSzsQAZU MontanskoHoro
# 7Stk8FkGgbw Energy
# kF7SA1dD7wg BalkanskaRapsodia
# vh5J15PEgnk ChichovoHoro
# BQ1Mph6IMtY DiskoFolk
# rutE8YLklZo VinoPiya
# i6Vk5yVXQcs Mladozhentsi
# AsE-ssfnV4w Trubachi

# 7uK3wLF6au8 GankinoHoro

list='
8BVgs5wdoJI MomaYanitsa  
dUT3AhKOUC8 MominaSalza
5g9QOXTRwMw ApdaySevernyashki
0w9JwIPj6XQ ApdaySevernyashki2
7xNw7euASLo ApdayValyoToploto
pAxf2P7I6fs TsvetiniteOchiNelina
6VQeTgmQ8Ro TsvetiniteOchiChakardakova
foXf9Z3XJxY NaSartseMiLezhi
RkxBFH5_4YA ShiraHoro
7K6mBcYmkEY EleninoHoroBononia
eBSgANCpeM0 EleninoHoroVidin
Kw4DVP2FUhw BatutaVidin
AgBRhXa9_6E DaychovoHoroBononia
sDr949U5E1w DaychovoHoroRuse
fnQe7nER4VA VlashkoPravo
vL-2snLCF4k PraznichnoVlashkoHoro
qcmoZQfG5G8 VidinskaRachenitsa
VwcntGy-xwM Vlainki
'

# Process each line
echo "$list" | while read -r videoID fileName; do
  # Skip empty lines
  [ -z "$videoID" ] && continue

  echo "Downloading: $fileName.mp3 from https://www.youtube.com/watch?v=$videoID"
  ./yt-dlp -x --audio-format mp3 -o "./chitalishte/${fileName}.%(ext)s" "https://www.youtube.com/watch?v=${videoID}"
done
