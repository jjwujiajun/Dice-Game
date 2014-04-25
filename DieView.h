//
//  DieView.h
//  DiceRoll
//

#import <UIKit/UIKit.h>

@interface DieView : UIView

#pragma mark Properties

@property (nonatomic, strong) UIImageView *dieImage;

#pragma mark Methods

- (void)showDieNumber:(int)num;

@end
