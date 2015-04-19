//
//  DataViewController.m
//  UW_HW02_arhautau
//
//  Created by Andrew Hautau on 4/18/15.
//  Copyright (c) 2015 Andrew Hautau. All rights reserved.
//

#import "DataViewController.h"
#import "UIViewController+ColorCounts.h"

@interface DataViewController ()

@property (weak, nonatomic) IBOutlet UILabel *redCountLabel;
@property (weak, nonatomic) IBOutlet UILabel *greenCountLabel;
@property (weak, nonatomic) IBOutlet UILabel *blueCountLabel;

@property (weak, nonatomic) IBOutlet UIButton *resetButton;

@end

@implementation DataViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) viewWillAppear:(BOOL)animated {
    NSMutableDictionary *colorCount = [self colorCounts];
    [[self redCountLabel] setText: [[colorCount objectForKey:@"red"] stringValue]];
    [[self greenCountLabel] setText: [[colorCount objectForKey:@"green"] stringValue]];
    [[self blueCountLabel] setText: [[colorCount objectForKey:@"blue"] stringValue]];
}

- (IBAction)didTapResetButton:(id)sender {
    
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
