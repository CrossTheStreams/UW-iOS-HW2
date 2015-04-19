//
//  ColorViewController.m
//  UW_HW02_arhautau
//
//  Created by Andrew Hautau on 4/18/15.
//  Copyright (c) 2015 Andrew Hautau. All rights reserved.
//

#import "ColorViewController.h"
#import "UIViewController+ColorCounts.h"
#import "ModalViewController.h"

@interface ColorViewController ()

@property (weak, nonatomic) IBOutlet UIButton *redButton;
@property (weak, nonatomic) IBOutlet UIButton *greenButton;
@property (weak, nonatomic) IBOutlet UIButton *blueButton;
@property (weak, nonatomic) IBOutlet UIButton *customColorButton;

@property (weak, nonatomic) IBOutlet UITextField *redValueField;
@property (weak, nonatomic) IBOutlet UITextField *greenValueField;
@property (weak, nonatomic) IBOutlet UITextField *blueValueField;

@end

@implementation ColorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)didTapRedButton:(id)sender {
    UIColor *red = [UIColor redColor];
    [self displayModalWithBackgroundColor:red AndIncrementCountForColor:@"red"];
}

- (IBAction)didTapGreenButton:(id)sender {
    UIColor *green = [UIColor greenColor];
    [self displayModalWithBackgroundColor: green AndIncrementCountForColor:@"green"];
}

- (IBAction)didTapBlueButton:(id)sender {
    UIColor *blue = [UIColor blueColor];
    [self displayModalWithBackgroundColor:blue AndIncrementCountForColor:@"blue"];
}
- (IBAction)didTapCustomButton:(id)sender {
    // Using RGB Values 0 to 255
    CGFloat red = MAX(0.0f, MIN(1.0f, ([[self.redValueField text] floatValue]) / 255.0f));
    CGFloat green = MAX(0.0f, MIN(1.0f, ([[self.greenValueField text] floatValue]) / 255.0f));
    CGFloat blue = MAX(0.0f, MIN(1.0f, ([[self.blueValueField text] intValue]) / 255.0f));
    
    UIColor *customColor = [UIColor colorWithRed:red green:green blue:blue alpha: 1];
    
    [self displayModalWithBackgroundColor:customColor AndIncrementCountForColor:nil];
}

-(void) displayModalWithBackgroundColor:(UIColor*) backgroundColor AndIncrementCountForColor:(NSString*) color {
    
    ModalViewController *modalVC = [[ModalViewController alloc] initWithNibName:@"ModalViewController" bundle:nil];
    [[modalVC view] setBackgroundColor:backgroundColor];
    
    if (color) {
        NSNumber *count = [self.colorCounts valueForKey:color];
        NSNumber *newCount = [NSNumber numberWithInt: [count intValue] + 1];
        [self.colorCounts setValue:newCount forKey:color];
        [modalVC setColorCount: [newCount stringValue]];
    }

    [self presentViewController:modalVC animated:YES completion:nil];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
