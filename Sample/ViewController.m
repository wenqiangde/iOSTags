//
//  ViewController.m
//  Sample
//
//  Created by sunleepy on 12-10-19.
//  Copyright (c) 2012年 sunleepy. All rights reserved.
//

#import "ViewController.h"
#import "FillButton.h"

@interface ViewController()<FillButtonViewDeletage>



@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
	
//    label = [[UILabel alloc] initWithFrame:CGRectMake(50, 50, 50, 14)];
//    label.backgroundColor =  [UIColor colorWithRed:47.0/255 green:157.0/255 blue:216.0/255 alpha:1];
//    label.textColor = [UIColor whiteColor];
//    label.text = @"hybrid";
//    label.font = [UIFont boldSystemFontOfSize:10];
//    label.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
//    label.textAlignment = UITextAlignmentCenter;
//    
//    label.layer.masksToBounds = YES;
//    label.layer.cornerRadius = 5.0f;
//    
//    CGSize size = [label.text sizeWithFont:label.font constrainedToSize:CGSizeMake(320, 10000) lineBreakMode:UILineBreakModeWordWrap];
//    CGFloat labelHeight = size.height;
//    label.frame = CGRectMake(50, 50,size.width + 8,labelHeight);
//    [self.view addSubview:label];
    
//    FillLabel *fillLabel = [[FillLabel alloc] initWithFrame:CGRectMake(100, 100, 0, 0)];
//    fillLabel.text = @"research";
//    fillLabel.backgroundColor = [UIColor redColor];
//    NSLog(@"width:%f", fillLabel.frame.size.width);
//    [self.view addSubview:fillLabel];
//    [fillLabel release];
//    
//    FillLabel *fillLabel2 = [[FillLabel alloc] initWithFrame:CGRectMake(100 + fillLabel.frame.size.width + 4, 100, 0, 0)];
//    fillLabel2.text = @"web";
//    NSLog(@"width:%f", fillLabel2.frame.size.width);
//    [self.view addSubview:fillLabel2];
//    [fillLabel2 release];
    
    NSMutableArray *array = [NSMutableArray arrayWithObjects:@"web",@"hybrid",@"native",@"leepy",@"sunleepy",@"web",@"hybrid",@"native",@"leepy",@"sunleepy",nil];
    
    FillButtonView *fillButtonlView = [[FillButtonView alloc] initWithFrame:CGRectMake(10, 64, 300, 0)];
    fillButtonlView.deletage = self;
//    fillLabelView.layer.borderWidth = 1.0f;
//    fillLabelView.layer.borderColor = [[UIColor redColor] CGColor];
    [fillButtonlView bindTags:array];
    [self.view addSubview:fillButtonlView];
    [fillButtonlView release];
    
    NSLog(@"fillLabelView size: %f, %f", fillButtonlView.frame.size.width, fillButtonlView.frame.size.height);
}

-(void)didSelected:(id)sender{
    if ([sender isKindOfClass:[FillButton class]]) {
        FillButton* fillButton = (FillButton*)sender;
        NSLog(@"%@%@",@(fillButton.tag),fillButton.titleLabel.text);
    }
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (void)dealloc{
    [super dealloc];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
