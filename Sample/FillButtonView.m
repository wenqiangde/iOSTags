//
//  FillLabelView.m
//  Sample
//
//  Created by sunleepy on 12-10-19.
//  Copyright (c) 2012年 sunleepy. All rights reserved.
//

#import "FillButtonView.h"
#import "FillButton.h"

@interface FillButtonView()

@property(nonatomic,assign) CGFloat spaceWith;
@property(nonatomic,assign) CGFloat spaceHeight;

@end

@implementation FillButtonView

- (id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self){
        _spaceWith = 10;
        _spaceHeight = 5;
    }
    return self;
}

- (void)bindTags:(NSMutableArray*)tags{
    NSUInteger buttonTag = 0;
    CGFloat frameWidth = self.frame.size.width;
    CGFloat tagsTotalWidth = 0.0f;
    CGFloat tagsTotalHeight = 0.0f;
    
    CGFloat tagHeight = 0.0f;
    for (NSString *tag in tags){
        FillButton *fillButton = [[FillButton alloc] initWithFrame:CGRectMake(tagsTotalWidth, tagsTotalHeight, 0, 0)];
        fillButton.tag = buttonTag;
        fillButton.text = tag;
        
        fillButton.layer.borderColor = DEFAULT_TEXTCOLOR.CGColor;
        fillButton.layer.borderWidth = 1.0f;
        
        tagsTotalWidth += fillButton.frame.size.width + self.spaceWith;
        tagHeight = fillButton.frame.size.height;
        
        if(tagsTotalWidth >= frameWidth){
            tagsTotalHeight += fillButton.frame.size.height + self.spaceHeight;
            tagsTotalWidth = 0.0f;
            fillButton.frame = CGRectMake(tagsTotalWidth, tagsTotalHeight, fillButton.frame.size.width, fillButton.frame.size.height);
            tagsTotalWidth += fillButton.frame.size.width + self.spaceWith;
        }
        
        [fillButton addTarget:self action:@selector(didSelected:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:fillButton];
        [fillButton release];
        buttonTag++;
    }
    
    tagsTotalHeight += tagHeight;
    
    self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, self.frame.size.width, tagsTotalHeight);
}

#pragma mark -- selector --
-(void)didSelected:(UIButton*)button{
    if (_deletage != nil && [_deletage respondsToSelector:@selector(didSelected:)]) {
        [_deletage didSelected:button];
    }
}

@end
