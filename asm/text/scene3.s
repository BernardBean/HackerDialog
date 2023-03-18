#define NEWTEXT_ASM
#include "newtext.h"
#include "sounds_asm.h"

scene NT_TestKeyboardScene

maketextbox 255 255 255 255

textsound SOUND_ACTION_TERRAIN_STEP

align left
textpos top
color 0 0 0 255

keyboard "do you like anime?", myName

compare myName, "yes", wantsSex, noSex


wantsSex:
say "Let's FUCKING go"
wait 12
say "!!!"
go myTextEnd

noSex:
say ":( :( :("
go myTextEnd


myTextEnd:
endsay
endscene

