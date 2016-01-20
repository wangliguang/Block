//
//  TapLabel.m
//  Block
//
//  Created by GG on 16/1/15.
//  Copyright © 2016年 王立广. All rights reserved.
//

#import "DelegateTapLabel.h"

@implementation DelegateTapLabel

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tap)];
        
        [self addGestureRecognizer:tap];
        self.userInteractionEnabled = YES;
        
    }
    return self;
}

- (void)tap{
    
    if ([self.delegate respondsToSelector:@selector(tapLabel)]) {
        
        [self.delegate tapLabel];
    }
}


@end
