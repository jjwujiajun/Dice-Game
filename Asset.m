//
// Asset.m
// DiceRoll
//

#import "Asset.h"

@implementation Asset

- (void)putWager:(int)amount
{
	self.pocket -= amount;
}

- (void)recWager:(int)amount
{
	self.pocket += amount;
}

@end