//
//  ViewController.h
//  DiceRoll
//

#import <UIKit/UIKit.h>
#import "DieView.h"
#import "Asset.h"

@interface ViewController : UIViewController

@property Asset *asset;
@property (strong, nonatomic) IBOutlet UILabel *assetView;
@property (strong, nonatomic) IBOutlet UILabel *sumLabel;
@property (strong, nonatomic) IBOutlet UILabel *whoWin;
@property (strong, nonatomic) IBOutlet DieView *secondDieView;
@property (strong, nonatomic) IBOutlet DieView *firstDieView;
@property (strong, nonatomic) IBOutlet UIButton *rollButton;

@end
