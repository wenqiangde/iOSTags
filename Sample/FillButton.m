//
//  FillLabel.m
//  Sample
//
//  Created by sunleepy on 12-10-19.
//  Copyright (c) 2012年 sunleepy. All rights reserved.
//

#import "FillButton.h"

#define MAX_SIZE_HEIGHT 10000
#define DEFAULT_BACKGROUDCOLOR [UIColor clearColor]
#define DEFAULT_FONT [UIFont systemFontOfSize:15]//[UIFont boldSystemFontOfSize:15]//这是加粗
#define DEFAULT_TEXTALIGNMENT UITextAlignmentCenter
#define DEFAULT_RADIUS 5.0f

@implementation FillButton

- (id)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = DEFAULT_BACKGROUDCOLOR;
        [self setTitleColor:DEFAULT_TEXTCOLOR forState:UIControlStateNormal];
        self.titleLabel.font = DEFAULT_FONT;
        //self.textAlignment = DEFAULT_TEXTALIGNMENT;
        
        self.layer.masksToBounds = YES;
        self.layer.cornerRadius = DEFAULT_RADIUS;

    }
    return self;
}

-(void)setRadius:(CGFloat)radius{
    
    self.layer.cornerRadius = radius;
}

-(void)setText:(NSString *)aText{
    [super setTitle:aText forState:UIControlStateNormal];
    //super.text = aText;//Label中使用
    
    //CGSize size = [self.titleLabel.text sizeWithFont:self.titleLabel.font constrainedToSize:CGSizeMake(320, MAX_SIZE_HEIGHT) lineBreakMode:UILineBreakModeWordWrap];//ios7废除
    NSDictionary *attributes = @{NSFontAttributeName:self.titleLabel.font};
    CGRect rect = [self.titleLabel.text boundingRectWithSize:CGSizeMake(320, MAX_SIZE_HEIGHT) options:NSStringDrawingUsesLineFragmentOrigin attributes:attributes context:nil];
    
    self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, rect.size.width+12, rect.size.height+9);
}

@end
