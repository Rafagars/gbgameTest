./mod2gbt template.mod song 2

/opt/gbdk/bin/lcc -Wa-l -Wl-m -Wf--debug -Wl-y -Wl-w -c -o main.o main.c
/opt/gbdk/bin/lcc -Wa-l -Wl-m -Wf--debug -Wl-y -Wl-w -c -o output.o output.c
/opt/gbdk/bin/lcc -Wa-l -Wl-m -Wf--debug -Wl-y -Wl-w -c -o gbt_player.o gbt_player.s
/opt/gbdk/bin/lcc -Wa-l -Wl-m -Wf--debug -Wl-y -Wl-w -c -o gbt_player_bank1.o gbt_player_bank1.s 

/opt/gbdk/bin/lcc -Wa-l -Wl-m -Wf--debug -Wl-y -Wl-w -Wl-yt1 -Wl-yo4 -Wl-ya0 -o test.gb main.o output.o gbt_player.o gbt_player_bank1.o

rm *.o *.lst