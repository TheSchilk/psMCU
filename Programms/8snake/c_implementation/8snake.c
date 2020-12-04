#include <stdio.h>
#include <stdint.h>
/*
 *  Basic c implementation of the snake game.
 *  I was finding it hard to write the programm directly in assembly :)
 *
 */

// Function protos
void render();
void display();
int update_gamestate();
void update_boardmem();
int get_next_input();

// Input Register
uint8_t inputs;

// Game Board Memory
uint8_t board[64];

// Game State
uint8_t length;
uint8_t headpos;
uint8_t applepos;
uint8_t direction;
uint8_t board_decrease;

// Display Memory
uint8_t disp[8];

/*
 Movement:
   Up: -8 
   Right: -1
   Down: +8
   Left: +1 
 
 Wall Dtct:
   Up: (current-8) overflows
   Right: (current && 0b0000'0111) == 0
   Down: (current+8) overflows 
   Left: (current && 0b0000'0111) == 0b111 == 7
 


 Direction: 
 0 - Up
 1 - Right
 2 - Down
 3 - Left
*/

int main(){
    /* 
    disp[0] = 0b00000000;
    disp[1] = 0b00000000;
    disp[2] = 0b00000000;
    disp[3] = 0b00000000;
    disp[4] = 0b00000000;
    disp[5] = 0b00000000;
    disp[6] = 0b00000000;
    disp[7] = 0b00000000;

    display();
    
    disp[0] = 0b01111100;
    disp[1] = 0b01000100;
    disp[2] = 0b01000100;
    disp[3] = 0b01000100;
    disp[4] = 0b01111100;
    disp[5] = 0b01000000;
    disp[6] = 0b01000000;
    disp[7] = 0b01000000;

    display();

    */
    
    applepos = 9;
    headpos = 27;
    direction = 1;
    length = 1;
    board_decrease = 1;

    for(int i = 0; i < 64; i++){
        board[i] = 0;
    }


    for(int i = 0; i < 8; i++){
        disp[i] = 0;
    }
    
    update_boardmem();
    render();
    display();
    
    while(1){
        if(get_next_input()){
            return 0;
        }
        if(update_gamestate()){
            return 0;
        }
        update_boardmem();
        render();
        display();
    }
}

// Iterate over board and render to disp
void render(){
    uint8_t val = 0;
    uint8_t bit = 1;
    uint8_t disp_pos = 0;

    for(int i = 0; i < 64; i++){
        if(board[i]){
           val |= bit; 
        }

        bit <<= 1;

        if(bit == 0){
            disp[disp_pos] = val;
            val = 0;
            bit = 1;
            disp_pos++;
        }
    }
}

int update_gamestate(){
    // Update direction:
    if(inputs & 0b01){
        if(direction == 0){
            direction = 3;
        } else {
            direction--;
        }
    }

    if(inputs & 0b10){
        if(direction == 3){
            direction = 0;
        } else {
            direction++;
        }
    }

    // Determine next head position
    switch(direction){
        case 0: // UP
            if(headpos < 8){
                return -1;
            }
            headpos -= 8;
            break;

        case 1: // RIGHT
            if((headpos & 0b111) == 0){
                return -1;
            }
            headpos--;
            break; 

        case 2: // DOWN
            headpos += 8;
            if(headpos >= 64){
                return -1;
            }
            break;

        case 3: // LEFT
            if((headpos & 0b111) == 0b111){
                return -1;
            }
            headpos++;
            break;
    }

    // Check that next head position is not already taken:
    if(board[headpos] != 0 && headpos != applepos){
        return -1;
    }
    
    // Check if we found the apple:
    if(headpos == applepos){
        // Set flag to not decrease board mem
        board_decrease = 0;
        
        // increase length 
        length++;

        // End Condition
        if(length == 62){
            return -1;
        }

        // Set new apple position
        applepos = (applepos+35) & 0x3F; 
        while(board[applepos] != 0 | applepos == headpos){
            applepos = (applepos+1) & 0x3F; 
        }
    }

    return 0;
}

void update_boardmem(){
    
    // Decrease every slot by 1
    for(int i = 0; i < 64; i++){
        if(board[i] != 0){
            board[i] -= board_decrease;
        }
    }

    // Decrease board next time, unless we are told not to
    board_decrease = 1;

    // Keep the apple in place
    board[applepos] = 1;

    // Put new head position
    board[headpos] = length;

}

// Print the current disp array to console
void display(){
    printf("\n");
    printf("\n");
    printf("+--------+\n");
    for(int i = 0; i < 8; i++){
        printf("|");
        uint8_t val = disp[i];
        for(uint8_t pos = 0; pos < 8; pos++){
            uint8_t bit = 0x80 >> pos;
            if(val & bit){
                printf("#");
            } else {
                printf(" ");
            }
        }
        printf("|\n");
    }
    printf("+--------+\n");
}

int get_next_input(){
    // Ugly, unsafe, i know, i know...
    char inchar;
    do{
        scanf("%c",&inchar);
    } while ((int) inchar == 10);

    switch(inchar){
        case 'q':
        case 'Q':
            return -1;
        case 'l':
        case 'L':
            inputs = 0b01;
            break;
        case 'r':
        case 'R':
            inputs = 0b10;
            break;
        case 'b':
        case 'B':
            inputs = 0b11;
            break;
        default:
            inputs = 0b00;
            break;
    }
    return 0;
} 
