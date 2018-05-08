#include <stdio.h>
/*
	rainboooooow 🌈
*/
char q;char bs;char nl;void set(void){q='"';bs='\\';nl='\n';}int main(void){set();char *s="#include <stdio.h>%c/*%c	rainboooooow 🌈%c*/%cchar q;char bs;char nl;void set(void){q='%c';bs='%c%c';nl='%cn';}int main(void){set();char *s=%c%s%c;%c/*%c	in my world there only poneys, they eat rainbows and they poop butterfly ! :D%c*/%cprintf(s,nl,nl,nl,nl,q,bs,bs,bs,q,s,q,nl,nl,nl,nl);return (0);}";
/*
	in my world there only poneys, they eat rainbows and they poop butterfly ! :D
*/
printf(s,nl,nl,nl,nl,q,bs,bs,bs,q,s,q,nl,nl,nl,nl);return (0);}