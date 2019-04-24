//
//  PresentViewController.h
//  PresentViewController
//
//  Created by PXJ on 2019/4/23.
//  Copyright © 2019 CMRead. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PresentViewController;

@protocol PresentViewControllerDelegate <NSObject>

-(void)didPresentesViewController:(PresentViewController*)viewController;

@end

NS_ASSUME_NONNULL_BEGIN

@interface PresentViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *backBtn;

@property(nonatomic,weak)id<PresentViewControllerDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
