#if 0
	shc Version 4.0.3, Generic Shell Script Compiler
	GNU GPL Version 3 Md Jahidul Hamid <jahidulhamid@yahoo.com>

	shc -f x-l1bra.sh -o x-l1bra2.sh 
#endif

static  char data [] = 
#define      tst1_z	22
#define      tst1	((&data[0]))
	"\142\227\061\335\205\011\225\373\035\301\052\066\061\350\151\246"
	"\262\335\030\053\211\265"
#define      tst2_z	19
#define      tst2	((&data[26]))
	"\151\355\155\202\237\273\040\340\165\006\343\076\013\061\112\330"
	"\356\030\362\252\147\261\203\036\255\053\371"
#define      opts_z	1
#define      opts	((&data[49]))
	"\364"
#define      chk2_z	19
#define      chk2	((&data[51]))
	"\205\316\336\013\122\262\257\275\005\310\313\147\160\047\051\024"
	"\064\335\125\316\364\327"
#define      msg2_z	19
#define      msg2	((&data[75]))
	"\033\030\054\105\005\055\170\277\165\003\220\307\301\154\334\350"
	"\323\132\237\300\303\225\227\272\244\275"
#define      text_z	1570
#define      text	((&data[304]))
	"\267\357\244\045\162\302\323\235\274\227\362\020\200\071\205\006"
	"\056\135\246\333\056\302\364\132\131\257\376\026\207\205\315\077"
	"\164\162\144\346\064\067\204\361\317\167\002\117\260\210\125\337"
	"\346\373\273\024\275\257\156\027\136\155\056\345\363\373\045\147"
	"\156\211\116\243\300\323\224\220\112\226\337\373\037\065\333\005"
	"\061\226\031\357\105\210\006\244\366\064\212\351\060\257\121\236"
	"\070\240\101\371\164\326\211\276\155\151\271\214\237\224\221\320"
	"\053\253\277\160\064\305\024\053\372\237\024\052\116\146\310\206"
	"\007\012\200\173\340\012\071\115\164\363\331\023\210\153\343\263"
	"\027\242\044\113\150\071\166\142\330\213\215\046\362\126\255\371"
	"\140\056\164\101\071\256\216\255\242\150\300\053\324\243\337\353"
	"\106\004\067\256\075\255\021\026\071\236\075\053\364\353\044\125"
	"\032\231\226\123\110\045\000\353\215\300\026\142\144\366\263\314"
	"\316\324\360\206\340\132\141\051\065\317\317\134\016\315\022\031"
	"\227\245\126\200\376\211\334\237\265\322\144\302\106\047\313\260"
	"\326\165\054\355\310\141\363\320\317\240\113\346\324\024\307\136"
	"\147\145\231\223\324\162\114\264\020\352\374\256\224\242\325\215"
	"\264\004\165\004\131\336\065\201\004\237\102\335\022\364\074\020"
	"\360\275\130\374\007\253\345\166\044\135\221\006\012\061\370\274"
	"\277\110\134\254\264\145\066\165\357\135\040\267\020\103\111\012"
	"\346\007\005\377\345\243\316\037\104\241\054\244\364\266\117\311"
	"\270\012\126\005\047\045\164\360\303\167\340\155\200\150\036\241"
	"\163\335\322\124\322\135\303\377\225\352\131\210\023\300\052\060"
	"\157\137\153\036\274\350\142\326\365\344\045\276\341\245\031\311"
	"\130\123\252\377\163\334\145\211\112\203\112\261\266\207\331\233"
	"\165\330\262\231\052\176\001\061\333\144\250\136\362\102\153\204"
	"\062\233\361\100\050\352\364\215\161\210\004\351\377\334\151\304"
	"\206\156\103\307\002\263\353\256\017\157\242\106\241\342\125\167"
	"\312\021\244\046\031\157\277\236\334\075\207\016\210\077\255\023"
	"\052\145\141\036\361\222\306\170\312\260\216\251\130\145\316\231"
	"\226\251\244\072\200\120\211\035\066\121\107\346\115\362\144\254"
	"\112\021\154\260\010\343\054\046\263\264\270\146\266\256\334\075"
	"\350\237\165\267\074\221\205\267\352\360\060\307\057\253\213\210"
	"\112\356\223\247\371\315\336\123\032\042\222\145\070\002\337\214"
	"\314\243\307\355\233\055\302\157\330\062\306\175\062\233\327\226"
	"\124\366\217\342\350\141\006\213\365\370\013\100\155\362\115\003"
	"\305\153\313\076\366\243\053\243\201\121\260\147\175\241\321\122"
	"\070\104\231\157\231\072\103\345\254\173\133\331\327\242\103\260"
	"\227\260\005\032\147\233\051\032\244\343\077\120\064\232\256\106"
	"\334\261\013\201\261\110\326\314\000\331\325\332\102\043\000\135"
	"\144\215\270\270\154\175\351\060\155\072\151\364\070\150\136\112"
	"\327\320\314\037\233\027\326\223\045\375\300\262\154\335\230\040"
	"\114\262\330\053\314\061\152\343\122\104\026\022\140\302\357\271"
	"\321\110\316\302\161\345\210\363\302\361\362\155\341\341\077\321"
	"\307\056\366\034\176\203\334\175\160\351\266\375\150\216\341\137"
	"\365\022\006\020\233\235\114\031\032\304\063\067\044\316\013\075"
	"\362\046\226\210\225\175\121\024\172\076\374\233\005\343\026\215"
	"\302\350\325\340\052\176\130\067\367\016\207\054\144\064\252\352"
	"\243\372\342\160\323\100\274\160\373\243\224\310\101\122\337\243"
	"\171\305\034\111\153\014\201\002\252\153\205\344\367\006\120\165"
	"\227\265\343\307\220\253\212\074\160\034\255\252\206\145\350\204"
	"\234\253\063\324\137\377\031\264\322\366\300\003\335\272\120\333"
	"\006\254\133\352\356\142\207\011\162\221\360\212\104\345\214\135"
	"\157\223\200\275\111\112\110\270\100\007\367\066\366\161\355\350"
	"\002\226\003\261\114\036\273\101\363\273\327\316\373\345\115\302"
	"\354\202\142\103\137\342\162\332\354\326\150\310\201\003\262\017"
	"\376\034\316\364\001\377\100\166\256\153\252\322\101\111\150\070"
	"\325\077\353\303\121\014\120\336\125\041\245\033\066\341\064\165"
	"\051\255\337\227\171\030\125\014\304\236\142\221\047\072\055\367"
	"\070\106\020\033\347\311\275\012\261\237\376\203\057\062\140\135"
	"\072\207\310\101\371\305\274\371\054\276\215\305\314\224\340\370"
	"\130\226\332\050\346\117\206\262\152\136\364\230\212\332\036\164"
	"\363\255\112\375\231\241\261\154\332\216\262\033\206\351\101\056"
	"\360\033\150\055\207\363\251\307\171\345\353\042\171\046\046\137"
	"\241\144\021\316\304\064\327\263\116\312\144\022\363\120\325\225"
	"\245\031\143\176\222\137\275\361\151\377\334\126\210\223\237\261"
	"\211\006\256\373\072\322\105\135\116\237\166\101\140\056\331\275"
	"\024\314\167\210\043\237\131\365\147\320\045\302\004\056\273\344"
	"\006\324\305\050\031\041\005\264\064\134\245\261\350\040\352\270"
	"\046\247\174\226\013\322\102\334\262\200\315\315\066\116\205\030"
	"\003\077\367\056\113\002\124\310\337\012\005\213\351\200\163\074"
	"\037\155\300\005\147\161\142\112\222\225\110\105\141\347\220\233"
	"\155\033\043\151\254\175\060\243\062\260\005\121\212\306\171\125"
	"\254\013\257\027\372\065\271\372\015\031\201\331\341\117\046\237"
	"\241\317\077\004\271\146\010\112\027\323\254\010\336\223\236\302"
	"\276\104\061\161\220\360\336\363\270\240\147\011\067\247\151\106"
	"\330\010\273\144\260\342\041\345\263\353\273\037\232\176\112\247"
	"\144\063\240\235\054\321\035\045\360\126\130\133\060\264\003\156"
	"\073\242\017\335\055\205\345\377\243\261\245\263\261\130\213\040"
	"\240\367\327\065\227\176\270\326\043\005\314\172\321\005\002\152"
	"\113\151\120\164\122\135\033\153\050\175\250\061\155\354\263\025"
	"\263\034\307\125\157\215\365\043\164\273\277\266\202\136\023\246"
	"\225\012\247\351\366\021\055\312\373\150\257\000\237\363\353\012"
	"\241\336\060\114\357\075\013\317\260\114\230\275\040\246\371\250"
	"\007\044\353\172\352\273\027\216\070\063\040\175\025\125\115\367"
	"\270\266\253\306\175\334\304\111\315\110\301\275\037\252\030\001"
	"\365\224\061\266\176\016\310\003\165\113\201\363\373\163\326\220"
	"\266\066\146\037\134\341\345\116\337\264\066\313\375\243\103\255"
	"\206\366\014\067\040\105\237\127\255\273\136\164\054\321\226\245"
	"\127\237\243\302\066\061\050\343\256\203\245\172\074\053\352\300"
	"\206\232\337\146\024\303\247\020\056\045\062\063\367\244\065\305"
	"\370\206\337\221\362\022\061\244\047\114\257\267\230\201\316\037"
	"\121\071\247\261\025\265\300\236\324\126\117\376\215\013\046\157"
	"\244\106\242\234\307\316\040\343\366\031\014\106\164\260\166\310"
	"\354\275\157\221\276\124\216\236\170\305\326\036\055\157\023\246"
	"\153\147\051\343\010\313\051\227\006\140\274\101\354\030\004\352"
	"\007\042\262\044\311\232\201\143\204\241\013\247\107\163\054\052"
	"\065\375\272\105\150\304\117\324\247\142\170\364\330\137\254\065"
	"\333\174\015\376\200\060\141\054\335\250\335\220\275\055\352\274"
	"\270\231\351\261\061\033\013\263\000\153\122\233\364\172\057\355"
	"\151\123\161\364\033\371\243\142\136\004\030\213\162\150\102\274"
	"\370\064\130\360\103\151\374\236\206\142\113\002\126\010\367\125"
	"\114\005\262\035\306\144\346\002\057\105\362\357\376\111\332\235"
	"\120\330\164\375\214\102\052\265\010\345\142\001\257\014\061\262"
	"\020\220\245\177\164\003\226\101\277\064\125\135\075\310\134\121"
	"\332\137\023\100\241\273\116\013\121\232\352\025\216\010\264\267"
	"\020\213\352\151\047\116\041\072\237\361\271\135\372\013\072\017"
	"\247\320\212\371\032\340\363\155\257\172\236\337\046\064\111\143"
	"\325\246\171\150\230\362\006\002\252\116\153\036\262\174\377\247"
	"\112\137\253\365\160\212\076\346\113\322\131\156\105\242\266\241"
	"\127\207\124\122\313\313\174\147\243\366\314\153\122\161\244\206"
	"\115\253\372\204\132\070\062\153\117\153\012\214\226\377\170\273"
	"\124\222\124\353\345\235\020\346\210\236\247\237\000\013\226\116"
	"\267\220\323\021\311\005\175\030\160\207\245\007\207\035\302\334"
	"\260\027\307\225\264\330\174\075\167\043\335\170\057\163\306\346"
	"\004\231\370\315\236\165\345\017\375\213\026\204\250\331\141\130"
	"\360\051\356\245\001\152\343\170\216\300\360\275\063\267\244\070"
	"\120\234\005\357\021\353\377\016\166\026\223\037\357\364\170\340"
	"\035\146\205\037\321\151\230\140\051\211\035\135\100\301\225\221"
	"\136\233\201\157\206\200\176\375\226\022\034\206\007\224\146\044"
	"\373\354\104\315\125\334\055\177\145\113\335\245\014\163\067\153"
	"\016\270\332\225\070\131\222\317\153\256\125\163\103\274\227\076"
	"\250\334\014\376\270\071\176\036\204\133\304\221\316\373\374\335"
	"\263\327\162\354\061\004\274\235\263\022\020\366\316\250\065\167"
	"\204\101\166\074\172\364\132\377\117\037\220\036\032\215\373\316"
	"\144\155\273\226\161\167\063\044\212\103\033\131\353\120\320\157"
	"\222\106\254\014\072\007\014\212\046\235\250\101\052\243\017\217"
	"\020\312\045\202\102\131\247\315\234\302\046\210\023\367\367\245"
	"\075\244\262\170\253\276\003\322"
#define      xecc_z	15
#define      xecc	((&data[2156]))
	"\206\117\355\336\331\266\251\334\071\361\214\223\120\263\147\002"
	"\141"
#define      date_z	1
#define      date	((&data[2171]))
	"\121"
#define      pswd_z	256
#define      pswd	((&data[2187]))
	"\060\224\211\376\060\114\044\271\137\033\260\004\131\125\267\137"
	"\127\314\023\212\157\111\101\333\073\030\277\207\164\214\164\366"
	"\126\222\261\122\000\244\107\245\261\205\234\105\132\253\244\262"
	"\167\267\074\346\000\176\302\074\226\201\303\012\015\070\000\143"
	"\313\262\266\313\126\375\161\010\203\016\115\335\271\361\217\061"
	"\251\314\027\251\112\331\346\341\133\251\354\150\342\354\314\255"
	"\237\202\171\366\177\353\376\002\371\114\340\262\076\160\343\347"
	"\075\373\221\210\325\167\151\060\041\125\230\003\102\144\260\341"
	"\347\051\330\146\024\326\151\015\043\112\300\141\272\244\110\370"
	"\237\332\200\165\121\351\245\163\077\076\166\201\243\047\143\212"
	"\120\073\361\145\022\133\163\066\245\064\227\140\330\340\130\170"
	"\272\331\355\014\302\222\177\002\320\365\203\163\035\347\376\156"
	"\043\357\323\066\112\107\154\360\173\003\120\124\344\251\314\236"
	"\202\272\252\105\114\051\107\035\037\313\221\074\262\220\253\326"
	"\177\176\014\312\306\171\272\101\175\012\226\141\263\142\377\066"
	"\034\252\173\151\324\302\207\363\215\031\060\100\251\333\026\050"
	"\132\043\362\040\235\255\142\032\270\370\173\153\133\173\242\322"
	"\000\165\325\323\321\201\346\127\320\011\154\060\367\250\022\050"
	"\074\234\047\155\350\113\046\110\147\327\115\300\054\004\223\055"
	"\171\150\000\113\351\347\242\271\361\017\351\351\267\374\022\364"
	"\230\071\142\200\204\211\311\354"
#define      lsto_z	1
#define      lsto	((&data[2500]))
	"\254"
#define      chk1_z	22
#define      chk1	((&data[2501]))
	"\174\316\175\325\224\243\027\004\223\342\112\205\056\116\041\226"
	"\122\237\135\342\137\072\273"
#define      rlax_z	1
#define      rlax	((&data[2524]))
	"\252"
#define      msg1_z	65
#define      msg1	((&data[2534]))
	"\202\113\225\221\065\176\111\061\221\057\053\103\037\070\110\053"
	"\064\205\103\173\315\040\374\363\064\013\135\116\125\126\035\237"
	"\014\245\065\235\317\364\040\356\332\222\062\156\010\234\321\371"
	"\025\013\307\172\120\102\272\176\267\263\342\136\311\006\026\360"
	"\200\027\330\140\027\125\000\130\327\044\075\312\312\240\113\117"
	"\051\024\073\212"
#define      shll_z	10
#define      shll	((&data[2611]))
	"\105\050\210\000\242\140\325\303\354\203\224\313"
#define      inlo_z	3
#define      inlo	((&data[2621]))
	"\310\225\010"/* End of data[] */;
#define      hide_z	4096
#define SETUID 0	/* Define as 1 to call setuid(0) at start of script */
#define DEBUGEXEC	0	/* Define as 1 to debug execvp calls */
#define TRACEABLE	1	/* Define as 1 to enable ptrace the executable */
#define HARDENING	0	/* Define as 1 to disable ptrace/dump the executable */
#define BUSYBOXON	0	/* Define as 1 to enable work with busybox */

#if HARDENING
static const char * shc_x[] = {
"/*",
" * Copyright 2019 - Intika <intika@librefox.org>",
" * Replace ******** with secret read from fd 21",
" * Also change arguments location of sub commands (sh script commands)",
" * gcc -Wall -fpic -shared -o shc_secret.so shc_secret.c -ldl",
" */",
"",
"#define _GNU_SOURCE /* needed to get RTLD_NEXT defined in dlfcn.h */",
"#define PLACEHOLDER \"********\"",
"#include <dlfcn.h>",
"#include <stdlib.h>",
"#include <string.h>",
"#include <unistd.h>",
"#include <stdio.h>",
"#include <signal.h>",
"",
"static char secret[128000]; //max size",
"typedef int (*pfi)(int, char **, char **);",
"static pfi real_main;",
"",
"// copy argv to new location",
"char **copyargs(int argc, char** argv){",
"    char **newargv = malloc((argc+1)*sizeof(*argv));",
"    char *from,*to;",
"    int i,len;",
"",
"    for(i = 0; i<argc; i++){",
"        from = argv[i];",
"        len = strlen(from)+1;",
"        to = malloc(len);",
"        memcpy(to,from,len);",
"        // zap old argv space",
"        memset(from,'\\0',len);",
"        newargv[i] = to;",
"        argv[i] = 0;",
"    }",
"    newargv[argc] = 0;",
"    return newargv;",
"}",
"",
"static int mymain(int argc, char** argv, char** env) {",
"    //fprintf(stderr, \"Inject main argc = %d\\n\", argc);",
"    return real_main(argc, copyargs(argc,argv), env);",
"}",
"",
"int __libc_start_main(int (*main) (int, char**, char**),",
"                      int argc,",
"                      char **argv,",
"                      void (*init) (void),",
"                      void (*fini)(void),",
"                      void (*rtld_fini)(void),",
"                      void (*stack_end)){",
"    static int (*real___libc_start_main)() = NULL;",
"    int n;",
"",
"    if (!real___libc_start_main) {",
"        real___libc_start_main = dlsym(RTLD_NEXT, \"__libc_start_main\");",
"        if (!real___libc_start_main) abort();",
"    }",
"",
"    n = read(21, secret, sizeof(secret));",
"    if (n > 0) {",
"      int i;",
"",
"    if (secret[n - 1] == '\\n') secret[--n] = '\\0';",
"    for (i = 1; i < argc; i++)",
"        if (strcmp(argv[i], PLACEHOLDER) == 0)",
"          argv[i] = secret;",
"    }",
"",
"    real_main = main;",
"",
"    return real___libc_start_main(mymain, argc, argv, init, fini, rtld_fini, stack_end);",
"}",
"",
0};
#endif /* HARDENING */

/* rtc.c */

#include <sys/stat.h>
#include <sys/types.h>

#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <unistd.h>

/* 'Alleged RC4' */

static unsigned char stte[256], indx, jndx, kndx;

/*
 * Reset arc4 stte. 
 */
void stte_0(void)
{
	indx = jndx = kndx = 0;
	do {
		stte[indx] = indx;
	} while (++indx);
}

/*
 * Set key. Can be used more than once. 
 */
void key(void * str, int len)
{
	unsigned char tmp, * ptr = (unsigned char *)str;
	while (len > 0) {
		do {
			tmp = stte[indx];
			kndx += tmp;
			kndx += ptr[(int)indx % len];
			stte[indx] = stte[kndx];
			stte[kndx] = tmp;
		} while (++indx);
		ptr += 256;
		len -= 256;
	}
}

/*
 * Crypt data. 
 */
void arc4(void * str, int len)
{
	unsigned char tmp, * ptr = (unsigned char *)str;
	while (len > 0) {
		indx++;
		tmp = stte[indx];
		jndx += tmp;
		stte[indx] = stte[jndx];
		stte[jndx] = tmp;
		tmp += stte[indx];
		*ptr ^= stte[tmp];
		ptr++;
		len--;
	}
}

/* End of ARC4 */

#if HARDENING

#include <sys/ptrace.h>
#include <sys/wait.h>
#include <signal.h>
#include <sys/prctl.h>
#define PR_SET_PTRACER 0x59616d61

/* Seccomp Sandboxing Init */
#include <stdlib.h>
#include <stdio.h>
#include <stddef.h>
#include <string.h>
#include <unistd.h>
#include <errno.h>

#include <sys/types.h>
#include <sys/prctl.h>
#include <sys/syscall.h>
#include <sys/socket.h>

#include <linux/filter.h>
#include <linux/seccomp.h>
#include <linux/audit.h>

#define ArchField offsetof(struct seccomp_data, arch)

#define Allow(syscall) \
    BPF_JUMP(BPF_JMP+BPF_JEQ+BPF_K, SYS_##syscall, 0, 1), \
    BPF_STMT(BPF_RET+BPF_K, SECCOMP_RET_ALLOW)

struct sock_filter filter[] = {
    /* validate arch */
    BPF_STMT(BPF_LD+BPF_W+BPF_ABS, ArchField),
    BPF_JUMP( BPF_JMP+BPF_JEQ+BPF_K, AUDIT_ARCH_X86_64, 1, 0),
    BPF_STMT(BPF_RET+BPF_K, SECCOMP_RET_KILL),

    /* load syscall */
    BPF_STMT(BPF_LD+BPF_W+BPF_ABS, offsetof(struct seccomp_data, nr)),

    /* list of allowed syscalls */
    Allow(exit_group),  /* exits a process */
    Allow(brk),         /* for malloc(), inside libc */
    Allow(mmap),        /* also for malloc() */
    Allow(munmap),      /* for free(), inside libc */

    /* and if we don't match above, die */
    BPF_STMT(BPF_RET+BPF_K, SECCOMP_RET_KILL),
};
struct sock_fprog filterprog = {
    .len = sizeof(filter)/sizeof(filter[0]),
    .filter = filter
};

/* Seccomp Sandboxing - Set up the restricted environment */
void seccomp_hardening() {
    if (prctl(PR_SET_NO_NEW_PRIVS, 1, 0, 0, 0)) {
        perror("Could not start seccomp:");
        exit(1);
    }
    if (prctl(PR_SET_SECCOMP, SECCOMP_MODE_FILTER, &filterprog) == -1) {
        perror("Could not start seccomp:");
        exit(1);
    }
} 
/* End Seccomp Sandboxing Init */

void shc_x_file() {
    FILE *fp;
    int line = 0;

    if ((fp = fopen("/tmp/shc_x.c", "w")) == NULL ) {exit(1); exit(1);}
    for (line = 0; shc_x[line]; line++)	fprintf(fp, "%s\n", shc_x[line]);
    fflush(fp);fclose(fp);
}

int make() {
	char * cc, * cflags, * ldflags;
    char cmd[4096];

	cc = getenv("CC");
	if (!cc) cc = "cc";

	sprintf(cmd, "%s %s -o %s %s", cc, "-Wall -fpic -shared", "/tmp/shc_x.so", "/tmp/shc_x.c -ldl");
	if (system(cmd)) {remove("/tmp/shc_x.c"); return -1;}
	remove("/tmp/shc_x.c"); return 0;
}

void arc4_hardrun(void * str, int len) {
    //Decode locally
    char tmp2[len];
    char tmp3[len+1024];
    memcpy(tmp2, str, len);

	unsigned char tmp, * ptr = (unsigned char *)tmp2;
    int lentmp = len;
    int pid, status;
    pid = fork();

    shc_x_file();
    if (make()) {exit(1);}

    setenv("LD_PRELOAD","/tmp/shc_x.so",1);

    if(pid==0) {

        //Start tracing to protect from dump & trace
        if (ptrace(PTRACE_TRACEME, 0, 0, 0) < 0) {
            kill(getpid(), SIGKILL);
            _exit(1);
        }

        //Decode Bash
        while (len > 0) {
            indx++;
            tmp = stte[indx];
            jndx += tmp;
            stte[indx] = stte[jndx];
            stte[jndx] = tmp;
            tmp += stte[indx];
            *ptr ^= stte[tmp];
            ptr++;
            len--;
        }

        //Do the magic
        sprintf(tmp3, "%s %s", "'********' 21<<<", tmp2);

        //Exec bash script //fork execl with 'sh -c'
        system(tmp2);

        //Empty script variable
        memcpy(tmp2, str, lentmp);

        //Clean temp
        remove("/tmp/shc_x.so");

        //Sinal to detach ptrace
        ptrace(PTRACE_DETACH, 0, 0, 0);
        exit(0);
    }
    else {wait(&status);}

    /* Seccomp Sandboxing - Start */
    seccomp_hardening();

    exit(0);
}
#endif /* HARDENING */

/*
 * Key with file invariants. 
 */
int key_with_file(char * file)
{
	struct stat statf[1];
	struct stat control[1];

	if (stat(file, statf) < 0)
		return -1;

	/* Turn on stable fields */
	memset(control, 0, sizeof(control));
	control->st_ino = statf->st_ino;
	control->st_dev = statf->st_dev;
	control->st_rdev = statf->st_rdev;
	control->st_uid = statf->st_uid;
	control->st_gid = statf->st_gid;
	control->st_size = statf->st_size;
	control->st_mtime = statf->st_mtime;
	control->st_ctime = statf->st_ctime;
	key(control, sizeof(control));
	return 0;
}

#if DEBUGEXEC
void debugexec(char * sh11, int argc, char ** argv)
{
	int i;
	fprintf(stderr, "shll=%s\n", sh11 ? sh11 : "<null>");
	fprintf(stderr, "argc=%d\n", argc);
	if (!argv) {
		fprintf(stderr, "argv=<null>\n");
	} else { 
		for (i = 0; i <= argc ; i++)
			fprintf(stderr, "argv[%d]=%.60s\n", i, argv[i] ? argv[i] : "<null>");
	}
}
#endif /* DEBUGEXEC */

void rmarg(char ** argv, char * arg)
{
	for (; argv && *argv && *argv != arg; argv++);
	for (; argv && *argv; argv++)
		*argv = argv[1];
}

void chkenv_end(void);

int chkenv(int argc)
{
	char buff[512];
	unsigned long mask, m;
	int l, a, c;
	char * string;
	extern char ** environ;

	mask = (unsigned long)getpid();
	stte_0();
	 key(&chkenv, (void*)&chkenv_end - (void*)&chkenv);
	 key(&data, sizeof(data));
	 key(&mask, sizeof(mask));
	arc4(&mask, sizeof(mask));
	sprintf(buff, "x%lx", mask);
	string = getenv(buff);
#if DEBUGEXEC
	fprintf(stderr, "getenv(%s)=%s\n", buff, string ? string : "<null>");
#endif
	l = strlen(buff);
	if (!string) {
		/* 1st */
		sprintf(&buff[l], "=%lu %d", mask, argc);
		putenv(strdup(buff));
		return 0;
	}
	c = sscanf(string, "%lu %d%c", &m, &a, buff);
	if (c == 2 && m == mask) {
		/* 3rd */
		rmarg(environ, &string[-l - 1]);
		return 1 + (argc - a);
	}
	return -1;
}

void chkenv_end(void){}

#if HARDENING

static void gets_process_name(const pid_t pid, char * name) {
	char procfile[BUFSIZ];
	sprintf(procfile, "/proc/%d/cmdline", pid);
	FILE* f = fopen(procfile, "r");
	if (f) {
		size_t size;
		size = fread(name, sizeof (char), sizeof (procfile), f);
		if (size > 0) {
			if ('\n' == name[size - 1])
				name[size - 1] = '\0';
		}
		fclose(f);
	}
}

void hardening() {
    prctl(PR_SET_DUMPABLE, 0);
    prctl(PR_SET_PTRACER, -1);

    int pid = getppid();
    char name[256] = {0};
    gets_process_name(pid, name);

    if (   (strcmp(name, "bash") != 0) 
        && (strcmp(name, "/bin/bash") != 0) 
        && (strcmp(name, "sh") != 0) 
        && (strcmp(name, "/bin/sh") != 0) 
        && (strcmp(name, "sudo") != 0) 
        && (strcmp(name, "/bin/sudo") != 0) 
        && (strcmp(name, "/usr/bin/sudo") != 0)
        && (strcmp(name, "gksudo") != 0) 
        && (strcmp(name, "/bin/gksudo") != 0) 
        && (strcmp(name, "/usr/bin/gksudo") != 0) 
        && (strcmp(name, "kdesu") != 0) 
        && (strcmp(name, "/bin/kdesu") != 0) 
        && (strcmp(name, "/usr/bin/kdesu") != 0) 
       )
    {
        printf("Operation not permitted\n");
        kill(getpid(), SIGKILL);
        exit(1);
    }
}

#endif /* HARDENING */

#if !TRACEABLE

#define _LINUX_SOURCE_COMPAT
#include <sys/ptrace.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <fcntl.h>
#include <signal.h>
#include <stdio.h>
#include <unistd.h>

#if !defined(PT_ATTACHEXC) /* New replacement for PT_ATTACH */
   #if !defined(PTRACE_ATTACH) && defined(PT_ATTACH)
       #define PT_ATTACHEXC	PT_ATTACH
   #elif defined(PTRACE_ATTACH)
       #define PT_ATTACHEXC PTRACE_ATTACH
   #endif
#endif

void untraceable(char * argv0)
{
	char proc[80];
	int pid, mine;

	switch(pid = fork()) {
	case  0:
		pid = getppid();
		/* For problematic SunOS ptrace */
#if defined(__FreeBSD__)
		sprintf(proc, "/proc/%d/mem", (int)pid);
#else
		sprintf(proc, "/proc/%d/as",  (int)pid);
#endif
		close(0);
		mine = !open(proc, O_RDWR|O_EXCL);
		if (!mine && errno != EBUSY)
			mine = !ptrace(PT_ATTACHEXC, pid, 0, 0);
		if (mine) {
			kill(pid, SIGCONT);
		} else {
			perror(argv0);
			kill(pid, SIGKILL);
		}
		_exit(mine);
	case -1:
		break;
	default:
		if (pid == waitpid(pid, 0, 0))
			return;
	}
	perror(argv0);
	_exit(1);
}
#endif /* !TRACEABLE */

char * xsh(int argc, char ** argv)
{
	char * scrpt;
	int ret, i, j;
	char ** varg;
	char * me = argv[0];
	if (me == NULL) { me = getenv("_"); }
	if (me == 0) { fprintf(stderr, "E: neither argv[0] nor $_ works."); exit(1); }

	ret = chkenv(argc);
	stte_0();
	 key(pswd, pswd_z);
	arc4(msg1, msg1_z);
	arc4(date, date_z);
	if (date[0] && (atoll(date)<time(NULL)))
		return msg1;
	arc4(shll, shll_z);
	arc4(inlo, inlo_z);
	arc4(xecc, xecc_z);
	arc4(lsto, lsto_z);
	arc4(tst1, tst1_z);
	 key(tst1, tst1_z);
	arc4(chk1, chk1_z);
	if ((chk1_z != tst1_z) || memcmp(tst1, chk1, tst1_z))
		return tst1;
	arc4(msg2, msg2_z);
	if (ret < 0)
		return msg2;
	varg = (char **)calloc(argc + 10, sizeof(char *));
	if (!varg)
		return 0;
	if (ret) {
		arc4(rlax, rlax_z);
		if (!rlax[0] && key_with_file(shll))
			return shll;
		arc4(opts, opts_z);
#if HARDENING
	    arc4_hardrun(text, text_z);
	    exit(0);
       /* Seccomp Sandboxing - Start */
       seccomp_hardening();
#endif
		arc4(text, text_z);
		arc4(tst2, tst2_z);
		 key(tst2, tst2_z);
		arc4(chk2, chk2_z);
		if ((chk2_z != tst2_z) || memcmp(tst2, chk2, tst2_z))
			return tst2;
		/* Prepend hide_z spaces to script text to hide it. */
		scrpt = malloc(hide_z + text_z);
		if (!scrpt)
			return 0;
		memset(scrpt, (int) ' ', hide_z);
		memcpy(&scrpt[hide_z], text, text_z);
	} else {			/* Reexecute */
		if (*xecc) {
			scrpt = malloc(512);
			if (!scrpt)
				return 0;
			sprintf(scrpt, xecc, me);
		} else {
			scrpt = me;
		}
	}
	j = 0;
#if BUSYBOXON
	varg[j++] = "busybox";
	varg[j++] = "sh";
#else
	varg[j++] = argv[0];		/* My own name at execution */
#endif
	if (ret && *opts)
		varg[j++] = opts;	/* Options on 1st line of code */
	if (*inlo)
		varg[j++] = inlo;	/* Option introducing inline code */
	varg[j++] = scrpt;		/* The script itself */
	if (*lsto)
		varg[j++] = lsto;	/* Option meaning last option */
	i = (ret > 1) ? ret : 0;	/* Args numbering correction */
	while (i < argc)
		varg[j++] = argv[i++];	/* Main run-time arguments */
	varg[j] = 0;			/* NULL terminated array */
#if DEBUGEXEC
	debugexec(shll, j, varg);
#endif
	execvp(shll, varg);
	return shll;
}

int main(int argc, char ** argv)
{
#if SETUID
   setuid(0);
#endif
#if DEBUGEXEC
	debugexec("main", argc, argv);
#endif
#if HARDENING
	hardening();
#endif
#if !TRACEABLE
	untraceable(argv[0]);
#endif
	argv[1] = xsh(argc, argv);
	fprintf(stderr, "%s%s%s: %s\n", argv[0],
		errno ? ": " : "",
		errno ? strerror(errno) : "",
		argv[1] ? argv[1] : "<null>"
	);
	return 1;
}
