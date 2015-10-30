FuchsiaMart_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

ClerkScript_0x195ce8:
	loadfont
	pokemart $0, $001d
	loadmovesprites
	end

FisherScript_0x195cef:
	jumptextfaceplayer UnknownText_0x195cf5

CooltrainerFScript_0x195cf2:
	jumptextfaceplayer UnknownText_0x195d36

UnknownText_0x195cf5:
	text "I was hoping to"
	line "buy some SAFARI"

	para "ZONE souvenirs,"
	line "but it's closed…"
	done

UnknownText_0x195d36:
	text "The SAFARI ZONE"
	line "WARDEN's grand-"
	cont "daughter lives in"
	cont "town."
	done

FuchsiaMart_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 2
	warp_def $7, $2, 1, FUCHSIA_CITY
	warp_def $7, $3, 1, FUCHSIA_CITY

.XYTriggers:
	db 0

.Signposts:
	db 0

.PersonEvents:
	db 3
	person_event SPRITE_CLERK, 3, 1, SPRITEMOVEFN_09, 0, 0, -1, -1, 0, 0, 0, ClerkScript_0x195ce8, -1
	person_event SPRITE_FISHER, 2, 3, SPRITEMOVEFN_08, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, 0, 0, FisherScript_0x195cef, -1
	person_event SPRITE_COOLTRAINER_F, 6, 7, SPRITEMOVEFN_05, 0, 2, -1, -1, (1 << 3) | PAL_OW_GREEN, 0, 0, CooltrainerFScript_0x195cf2, -1
