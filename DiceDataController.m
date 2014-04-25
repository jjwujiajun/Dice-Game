//
//  DiceDataController.m
//  DiceRoll
//

#import "DiceDataController.h"

@implementation DiceDataController

- (int)getDieNumber {
    int r = (arc4random() % 6) + 1;
    
    return r;
}


@end
