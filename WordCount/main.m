//
//  main.m
//  WordCount
//
//  Created by Ali Barış Öztekin on 2017-02-06.
//  Copyright © 2017 Ali Barış Öztekin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        char inputChars[255];
        char operationNumber[3];

        while (YES){
            
        printf("Input a string:");
        
        fgets(inputChars, 255, stdin);
            
        printf("Your string is %s\n", inputChars);
        
        printf("Enter the number of operation you'd like to do (1-6)\n 1.Uppercase\n 2.Lowercase\n 3.Numberize\n 4. Canadianize\n 5. Respond\n 6.De-Space-It\n");
        fgets(operationNumber,sizeof(operationNumber),stdin);
        
            int opNumber = (int)strtol(operationNumber, NULL, 10);   //     int opNumber = [ intValue];
            NSLog(@"%i",opNumber);
        NSString *inputString = [NSString stringWithUTF8String:inputChars];
        
            NSLog(@"Input was %@", inputString);
            
            switch (opNumber) {
              
                case 1:{
                NSString *upperCaseString = [inputString uppercaseString];
                NSLog(@"UPPERCASED STRING  %@", upperCaseString);
                    break;}
                case 2:{
                NSString *lowerCaseString = [inputString lowercaseString];
                NSLog(@"lowercased string  %@", lowerCaseString);
                    break;}
                case 3:{
                NSUInteger numberizedString = [inputString length];
                NSLog(@"numberized string  %lu", numberizedString);
                    break;}
                case 4:{
                NSString *canadianizedString = [inputString stringByAppendingString:@" eh?"];
                NSLog(@"Canadianized string  %@", canadianizedString);
                    break;}
                case 5:{
                NSUInteger stringLengthMinusTwo = [inputString length]-2;
                NSLog(@"%lu", stringLengthMinusTwo);
                
                unichar lastCharUni = [inputString characterAtIndex:(stringLengthMinusTwo)];
                NSString *lastChar = [NSString stringWithFormat:@"%C", lastCharUni];
                
                if ([lastChar isEqual: @"?"]){
                    NSLog(@"I don't know");
                }
                else if([lastChar isEqual:@"!"]){
                    NSLog(@"Whoa, calm down!");
                }
                    break;}
                case 6:{
                NSString *deSpacedString = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
                NSLog(@"despaced String %@", deSpacedString);
                    break;}
            }
        }
    }
    
    return 0;
}
