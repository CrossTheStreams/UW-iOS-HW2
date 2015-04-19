//
//  ModalViewController.m
//  UW_HW02_arhautau
//
//  Created by Andrew Hautau on 4/18/15.
//  Copyright (c) 2015 Andrew Hautau. All rights reserved.
//

#import "ModalViewController.h"

@interface ModalViewController ()

@property (weak, nonatomic) IBOutlet UILabel *countLabel;

@property (weak, nonatomic) IBOutlet UIButton *dismissButton;

@end

@implementation ModalViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)dismissButtonTapped:(id)sender {
    [[self presentingViewController] dismissViewControllerAnimated:YES completion:nil];
}

-(void) viewWillAppear:(BOOL)animated {
    if (self.colorCount) {
        [[self countLabel] setText: self.colorCount];
    }
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
