#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>

#define BUF_SIZE 10

int main()
{
    FILE *in, *out;
    in = freopen("input.txt", "r", stdin);
    char s[10];
    scanf("%s", s);
    int n;
    scanf("%d", &n);
    fclose(in);
    fprintf(stdout, "player %d\n", n);
    out = freopen("output.txt", "w", stdout);
    fprintf(stdout, "player %d\n", n);
    fclose(out);
    return 0;
}
