//
//  MainVC.m
//  SlideMenuTest
//
//  Created by Fredrik Ghofran on 2014-06-06.
//  Copyright (c) 2014 FootballApp. All rights reserved.
//

#import "MainVC.h"

@interface MainVC ()

@end

@implementation MainVC

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
-(NSString *)segueIdentifierForIndexPathInLeftMenu:(NSIndexPath *)indexPath
{
    NSString *identifier;
    
    switch (indexPath.row) {
        case 0:
            identifier = @"firstSegue";
            break;
        case 1:
            identifier = @"secondSegue";
            break;
        case 2:
            identifier = @"theerdSegue";
            break;

    }

    return identifier;
}
-(void)configureLeftMenuButton:(UIButton *)button
{

    CGRect frame = button.frame;
    
    frame.origin = (CGPoint){0,0};
    frame.size = (CGSize){40,40};
    
    button.frame = frame;
    
    [button setImage:[UIImage imageNamed:@"menu-26"] forState:UIControlStateNormal];
    
    
}
-(CGFloat)leftMenuWidth
{
    return 200;
}

-(BOOL)deepnessForLeftMenu
{
    return YES;

}
@end
