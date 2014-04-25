//

//  Asset.h

//  DiceRoll

//

#import <UIKit/UIKit.h>



@interface Asset: NSObject

@property int pocket;

-(void)putWager:(int)amount;
-(void)recWager:(int)amount;

@end