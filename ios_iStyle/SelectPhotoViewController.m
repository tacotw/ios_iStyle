//
//  SelectPhotoViewController.m
//  ios_iStyle
//
//  Created by Saker Lin on 2015/7/15.
//  Copyright (c) 2015年 Saker Lin. All rights reserved.
//

#import "SelectPhotoViewController.h"

@interface SelectPhotoViewController () 
@end

@implementation SelectPhotoViewController

- (IBAction)onSelect:(id)sender {
     NSString *lowResImg = @"https://s.yimg.com/wb/images/80DDE2545E593354CB1CBA81E9A5E07533491CE2";
     UIImage *Image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString: lowResImg]]];
     [_Photodelegate selectPhoto:Image];
    NSLog(@"delegate selectPhoto");
     [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
