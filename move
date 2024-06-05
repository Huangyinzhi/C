#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>

#define WIDTH 80  
#define HEIGHT 24  

void clear_screen() {
    printf("\033[H\033[J");
}

void draw_t(int x, int y) {
    printf("\033[%d;%dH", y, x);
    printf("T");
}

int main() {
    int x = 0, y = HEIGHT / 2;
    int dx = 1, dy = 0;

    while (1) {
        clear_screen();
        draw_t(x, y);


        x += dx;
        y += dy;


        if (x < 0 || x >= WIDTH - 1) {
            dx = -dx;
        }
