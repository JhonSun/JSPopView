//
//  LYPopView.h
//  LYMail
//
//  Created by drision on 2016/11/10.
//  Copyright © 2016年 Drision. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LYPopView : UIView

@property (nonatomic, assign) CGFloat arrowStartPoint;//箭头起始点
@property (nonatomic, assign) CGFloat arrowHeight;//箭头高度
@property (nonatomic, assign) CGFloat arrowWidth;//箭头宽度
@property (nonatomic, assign) CGFloat lineWidth;//边框宽度
@property (nonatomic, strong) UIColor *lineColor;//边框颜色
@property (nonatomic, strong) UIColor *popViewColor;//填充颜色

@end
