/*
 * Date: 17.12.2013
 * Author: Thomas Ströder
 */
typedef long unsigned int size_t;

void * __attribute__((__cdecl__)) malloc (size_t __size) ;

extern int __VERIFIER_nondet_int(void);

/* Returns some null-terminated string. */
char* build_nondet_String(void) {
    int length = __VERIFIER_nondet_int();
    if (length < 1) {
        length = 1;
    }
    char* nondetString = (char*) malloc(length * sizeof(char));
    nondetString[length-1] = '\0';
    return nondetString;
}





char *(cstrchr)(const char *s, int c)
 {
     /* Scan s for the character.  When this loop is finished,
        s will either point to the end of the string or the
        character we were looking for.  */
     while (*s != '\0' && *s != (char)c)
         s++;
     return ( (*s == c) ? (char *) s : 0 );
 }

int main() {
    cstrchr(build_nondet_String(),__VERIFIER_nondet_int());
    return 0;
}


