#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// I couldn't use an array because this needed multiple data types sooooooo
typedef struct {
    int numerator;
    int denominator;
    float result;
} OutPut;

float calc(int numerator, int denominator) {
    float percentage = ((float)numerator / (float)denominator) * 100;
    printf("Live Round Probability: %.2f%%; Live Rounds: %d; Blank Rounds: %d\n", percentage, numerator, (denominator - numerator));
    return percentage;
}

OutPut init() {
    char input[7];
    OutPut calcData;

    printf("Initial State: ");
    scanf("%6s", input);
    
    char *numerator_str = strtok(input, "/");
    char *denominator_str = strtok(NULL, "/");
    
    calcData.numerator = atoi(numerator_str);
    calcData.denominator = atoi(denominator_str);
    calcData.result = calc(calcData.numerator, calcData.denominator);
    
    return calcData;
}

int main() {
    OutPut data = init();

    while (1) {
      char command[2];
      printf("Command: ");
      scanf("%1s", command);

      if (strcmp(command, "+") == 0) {
        if (data.numerator > 0 && data.denominator > 0) {
          data.numerator -= 1;
          data.denominator -= 1;
          data.result = calc(data.numerator, data.denominator);
        } else {
          printf("Err on %s:%d: Invalid game state\n", __FILE__, __LINE__);;
        }
      } else if (strcmp(command, "-") == 0) {
        if (data.denominator > 0) {
          data.denominator -= 1;
          data.result = calc(data.numerator, data.denominator);
        } else {
          printf("Err on %s:%d: Invalid game state\n", __FILE__, __LINE__);
        }
      } else if (strcmp(command, "h") == 0) {
        printf("Input Format: (live rounds)/(total rounds) Ex: 3/6\n");
        printf("Commands: '+' - Removes one live\n          '-' - Removes one blank\n");
      } else if (strcmp(command, "r") == 0) {
        printf("Round ended.\n");
        data = init();
      } else {
        printf("Invalid command\n");
      }
      
      if (data.numerator == 0 && data.denominator == 0) {
        printf("Round ended.\n");
        data = init();
      }
    }

    return 0;
}
