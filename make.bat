@echo off
exomizer.exe raw -c -m 1024 "BotB 4406 sonic_enters_a_dance_club.vgm" -o sonic.exo
beebasm.exe -i vgmplay.6502 -do vgmplay.ssd -boot MyCode -v > compile.txt
