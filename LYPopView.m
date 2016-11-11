//
//  LYPopView.m
//  LYMail
//
//  Created by drision on 2016/11/10.
//  Copyright © 2016年 Drision. All rights reserved.
//

#import "LYPopView.h"

@implementation LYPopView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self initData];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self initData];
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, self.lineWidth);
    CGContextSetFillColorWithColor(context, self.popViewColor.CGColor);
    CGContextSetStrokeColorWithColor(context, self.lineColor.CGColor);
    CGContextMoveToPoint(context, self.arrowStartPoint, 0);
    CGContextAddLineToPoint(context, self.arrowStartPoint - self.arrowWidth / 2, self.arrowHeight);
    CGContextAddLineToPoint(context, 0, self.arrowHeight);
    CGContextAddLineToPoint(context, 0, rect.size.height);
    CGContextAddLineToPoint(context, rect.size.width, rect.size.height);
    CGContextAddLineToPoint(context, rect.size.width, self.arrowHeight);
    CGContextAddLineToPoint(context, self.arrowStartPoint + self.arrowWidth / 2, self.arrowHeight);
    CGContextClosePath(context);
    CGContextDrawPath(context, kCGPathFillStroke);
}


#pragma mark - set
- (void)setArrowStartPoint:(CGFloat)arrowStartPoint {
    _arrowStartPoint = arrowStartPoint;
    [self setNeedsDisplay];
}

- (void)setArrowWidth:(CGFloat)arrowWidth {
    _arrowWidth = arrowWidth;
    [self setNeedsDisplay];
}

- (void)setArrowHeight:(CGFloat)arrowHeight {
    _arrowHeight = arrowHeight;
    [self setNeedsDisplay];
}

- (void)setLineWidth:(CGFloat)lineWidth {
    _lineWidth = lineWidth;
    [self setNeedsDisplay];
}

- (void)setLineColor:(UIColor *)lineColor {
    _lineColor = lineColor;
    [self setNeedsDisplay];
}

- (void)setPopViewColor:(UIColor *)popViewColor {
    _popViewColor = popViewColor;
    [self setNeedsDisplay];
}

#pragma mark - private
- (void)initData {
    self.backgroundColor = [UIColor clearColor];
    _arrowStartPoint = self.bounds.size.width / 2;
    _arrowWidth = 20;
    _arrowHeight = 20;
    _lineColor = [UIColor blackColor];
    _lineWidth = 0;
    _popViewColor = [UIColor whiteColor];
}

@end
