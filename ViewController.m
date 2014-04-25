//
//  ViewController.m
//  DiceRoll
//

#import "ViewController.h"
#import "DiceDataController.h"
#import "Asset.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.asset = [[Asset alloc] init];
    self.asset.pocket = 100; // to be made variable next time
    self.assetView.text = [NSString stringWithFormat:@"%d", self.asset.pocket];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)rollClicked:(id)sender {
    
    [self.asset putWager:5];
    self.assetView.text = [NSString stringWithFormat:@"%d", self.asset.pocket];
    self.sumLabel.text = [NSString stringWithFormat:@"Bet $5"];
    
    DiceDataController *diceDataController = [[DiceDataController alloc] init];
    
    int firstNumber = [diceDataController getDieNumber];
    int secondNumber = [diceDataController getDieNumber];
    
    [self.firstDieView showDieNumber:firstNumber];
    [self.secondDieView showDieNumber:secondNumber];
    
    self.sumLabel.text = [NSString stringWithFormat:@"The sum is %d", firstNumber + secondNumber];
    self.whoWin.text = [self decideWinnerGivenFirstNumber:firstNumber andSecondNumber:secondNumber];
    
    self.assetView.text = [NSString stringWithFormat:@"%d", self.asset.pocket];
}

- (NSString *)decideWinnerGivenFirstNumber:(int)first andSecondNumber:(int)second
{
    if (first == second) {
        [self.asset recWager:20];
        return @"A pair! You win double!";
    }
    else if (first + second > 9) {
        [self.asset recWager:10];
        return @"You win!";
    }
    else {
        return @"You lose. Roll the dice again.";
    }
}

@end

