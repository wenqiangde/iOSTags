//
//  FillLabelView.h
//  Sample
//
//  Created by sunleepy on 12-10-19.
//  Copyright (c) 2012年 sunleepy. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol FillButtonViewDeletage <NSObject>

-(void)didSelected:(id)sender;

@end

@interface FillButtonView : UIView

@property(nonatomic,strong) id<FillButtonViewDeletage> deletage;

- (void)bindTags:(NSMutableArray*)tags;

@end
