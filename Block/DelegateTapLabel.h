//
//  TapLabel.h
//  Block
//
//  Created by GG on 16/1/15.
//  Copyright © 2016年 王立广. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol TapLabelDelegate <NSObject>

- (void)tapLabel;

@end

@interface DelegateTapLabel : UILabel

@property (nonatomic,weak) id<TapLabelDelegate> delegate;


@end
