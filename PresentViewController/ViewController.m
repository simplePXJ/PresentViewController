//
//  ViewController.m
//  PresentViewController
//
//  Created by PXJ on 2019/4/19.
//  Copyright © 2019 CMRead. All rights reserved.
//

#import "ViewController.h"
#import "PresentViewController.h"
#import "PastyPresent/UIViewController+PVCMotal.h"

@interface ViewController ()<PresentViewControllerDelegate>



@end

@implementation ViewController

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view, typically from a nib.
}

//-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
//
//    PresentViewController *pvc = segue.destinationViewController;
//    pvc.delegate = self;
//    PVCTransitionDelegate * delegate = [[PVCTransitionDelegate alloc] init];
//    pvc.transitioningDelegate = delegate;
//
//}
- (IBAction)changePresent:(UIButton* )sender {
    PVCDirection direction = sender.tag-10;
    CGSize prentSize = CGSizeZero;
    switch (direction) {
        case PVCDirectionCenter:
        {
            prentSize = CGSizeMake(300, 400);
        }
            break;
        case PVCDirectionLeft:
        {
            prentSize = CGSizeMake(300, 467);
        }
            break;
        case PVCDirectionRight:
        {
            prentSize = CGSizeMake(300, 467);
        }
            break;
        case PVCDirectionTop:
        {
            prentSize = CGSizeMake(335, 400);
        }
            break;
        case PVCDirectionBottom:
        {
            prentSize = CGSizeMake(335, 400);
        }
            break;
            
            
        default:
            break;
    }

    
    PresentViewController * presentVC = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"PresentViewController"];
    presentVC.view.backgroundColor = sender.backgroundColor;
    presentVC.delegate = self;
    
    [self presentViewController:presentVC inSize:prentSize direction:direction completion:^{
        
    }];
}

-(void)didPresentesViewController:(PresentViewController *)viewController
{
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}
@end
