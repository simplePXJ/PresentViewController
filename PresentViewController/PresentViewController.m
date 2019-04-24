//
//  PresentViewController.m
//  PresentViewController
//
//  Created by PXJ on 2019/4/23.
//  Copyright © 2019 CMRead. All rights reserved.
//

#import "PresentViewController.h"

@interface PresentViewController ()

@end

@implementation PresentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];

    // Do any additional setup after loading the view.
}
- (IBAction)backClick:(id)sender {

    if (self.delegate && [self.delegate respondsToSelector:@selector(didPresentesViewController:)]) {
        [self.delegate didPresentesViewController:self];
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
