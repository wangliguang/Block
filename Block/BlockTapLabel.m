//
//  BlockTapLabel.m
//  Block
//
//  Created by GG on 16/1/15.
//  Copyright © 2016年 王立广. All rights reserved.
//

#import "BlockTapLabel.h"

@implementation BlockTapLabel

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
    
    //5、点击label的时候执行接收到的block里的代码
    self.clickLabel();
}

//4、用在该类声明的block接收传进来的block代码块
- (void)clickLabel:(ClickLabelBlock) clickLabel{
    
    _clickLabel = clickLabel;
}

@end
