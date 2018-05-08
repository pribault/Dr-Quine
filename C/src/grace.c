#include <stdio.h>
#include <fcntl.h>
#define FT(potato)	int main(void){int fd;if((fd=open("Grace_kid.c",O_TRUNC|O_CREAT|O_WRONLY,0644))<0) return 1;char q='"';char bs='\\';char nl='\n';char *s="#include <stdio.h>%c#include <fcntl.h>%c#define FT(potato)	int main(void){int fd;if((fd=open(%cGrace_kid.c%c,O_TRUNC|O_CREAT|O_WRONLY,0644))<0) return 1;char q='%c';char bs='%c%c';char nl='%cn';char *s=%c%s%c;dprintf(fd,s,nl,nl,q,q,q,bs,bs,bs,q,s,q,nl,q,q,nl,q,q,nl,nl,nl,nl);return 0;}%c#define USELESS_1	%cone define was enought,do i really need to write two others ? ._.%c%c#define USELESS_2	%cand the third...%c%c/*%c	my life is potato%c*/%cFT(42)";dprintf(fd,s,nl,nl,q,q,q,bs,bs,bs,q,s,q,nl,q,q,nl,q,q,nl,nl,nl,nl);return 0;}
#define USELESS_1	"one define was enought,do i really need to write two others ? ._."
#define USELESS_2	"and the third..."
/*
	my life is potato
*/
FT(42)