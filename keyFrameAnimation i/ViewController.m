//
//  ViewController.m
//  keyFrameAnimation i
//
//  Created by Mac on 16/3/1.
//  Copyright © 2016年 . All rights reserved.
//

#import "ViewController.h"

#import <CoreText/CoreText.h>

@interface ViewController ()

@property (nonatomic,retain) CAShapeLayer *sha;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    [self func1];
//
//    [self func2];
//
//    [self func5];

//    [self func4];
    
//    [self func3];
    
//    [self func4Touch];
}

-(void)func1{
    CALayer *ll = [CALayer layer];
    
    ll.backgroundColor = [UIColor redColor].CGColor;
    
    ll.frame = CGRectMake(10, 10, 200, 20);

    
    
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    CAGradientLayer *layer = [CAGradientLayer layer];
    
    layer.anchorPoint = CGPointMake(0, 0);
    
    layer.bounds = CGRectMake(0, 0, 400, 800);
    
    layer.position = CGPointMake(0, 0);
    
    layer.colors = @[(id)[UIColor redColor].CGColor,(id)[UIColor blackColor].CGColor,(id)[UIColor orangeColor].CGColor,(id)[UIColor whiteColor].CGColor];
    
    layer.startPoint = CGPointMake(0, 1);
    
    layer.endPoint = CGPointMake(1, 1);
    
    [self.view.layer addSublayer:layer];
    
   
    
    
    CABasicAnimation *animtaion = [CABasicAnimation animationWithKeyPath:@"colors"];
    
    animtaion.fromValue =  @[(id)[UIColor redColor].CGColor,(id)[UIColor blackColor].CGColor,(id)[UIColor orangeColor].CGColor,(id)[UIColor whiteColor].CGColor];
    
    animtaion.toValue =  @[(id)[UIColor purpleColor].CGColor,(id)[UIColor whiteColor].CGColor,(id)[UIColor blackColor].CGColor,(id)[UIColor blueColor].CGColor];
    
    
    animtaion.autoreverses = YES;
    
    animtaion.repeatCount = HUGE;
    
    animtaion.duration = 1;
    
    animtaion.timingFunction = [CAMediaTimingFunction
                                functionWithName:kCAMediaTimingFunctionEaseOut];
    
    
    
    [layer addAnimation:animtaion forKey:@"12"];
    
    
    
    
    _sha = [CAShapeLayer layer];
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    
    _sha.bounds = CGRectMake(0, 0, 140, 140);
    
    [path addArcWithCenter:CGPointMake(70, 70) radius:70 startAngle:0 endAngle:2*M_PI clockwise:NO];
    
    _sha.path = path.CGPath;
    
    _sha.fillColor = [UIColor clearColor].CGColor;
    
    _sha.strokeColor = [UIColor redColor].CGColor;
    
    _sha.lineWidth = 9;
    //    [self.view.layer addSublayer:sha];
    
    _sha.position = CGPointMake(200, 200);
    
    layer.mask = _sha;
    
    
    _sha.strokeStart = 0;
    
    
    _sha.strokeEnd = 1;
    
    
    _sha.anchorPoint = CGPointMake(0.5, 0.5);
    
//    [_sha addSublayer:ll];

}

-(void)func1Touch{
    CABasicAnimation *straok0 = [CABasicAnimation animationWithKeyPath:@"strokeStart"];
    
    straok0.fromValue = @0.5;
    
    straok0.toValue = @0;
    
    straok0.duration = 1;
    straok0.autoreverses = YES;
    
    CABasicAnimation *straok1 = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
    
    straok1.fromValue = @0.5;
    
    straok1.toValue = @1;
    
    straok1.duration = 1;
    
    straok1.autoreverses = YES;
    
    CABasicAnimation *straok3 = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    //
    straok3.fromValue = 0;
    straok3.toValue = @(-M_2_PI * 10 - 2*M_PI);
    
    straok3.duration = 2;
    
    CAAnimationGroup *tt = [ CAAnimationGroup animation];
    
    tt.animations = @[straok0,straok1,straok3];
    
    tt.duration = 2;
    
    tt.repeatCount = 1;
    
    tt.repeatCount = MAXFLOAT;
    
    tt.fillMode = kCAFillModeBoth;
    
    //    [sha addAnimation:tt forKey:@"11"];
    
    [_sha addAnimation:tt forKey:nil];
}

-(void)func2{
    UIBezierPath * path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(self.view.bounds.size.width/2, 150) radius:75 startAngle:0 endAngle:2*M_PI clockwise:YES];
    
    
    CAShapeLayer * angleline = [CAShapeLayer layer];
    angleline.frame = self.view.bounds;
    angleline.lineCap = kCALineCapRound;
    angleline.lineWidth = 14.0f;
    angleline.path = path.CGPath;
    angleline.fillColor = [UIColor clearColor].CGColor;
    //    angleline.strokeColor = [UIColor redColor].CGColor;
    
    CAKeyframeAnimation * keyanimation = [CAKeyframeAnimation animationWithKeyPath:@"fillColor"];
    keyanimation.values = @[(id)[[UIColor blueColor] CGColor],
                            (id)[[UIColor colorWithRed:0.9 green:0.0 blue:0.9 alpha:1.0] CGColor],
                            (id)[[UIColor redColor] CGColor],(id)[[UIColor blueColor] CGColor]];
    keyanimation.duration = 3.0f;
    keyanimation.repeatCount = MAXFLOAT;
    keyanimation.removedOnCompletion = YES;
    keyanimation.fillMode = kCAFillModeForwards;
    
    keyanimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn];
    [angleline addAnimation:keyanimation forKey:@"animation"];
    
    [self.view.layer addSublayer:angleline];
    
    [path stroke];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    [self.view.layer removeAllAnimations];
    
    [self func4Touch];
    
}

-(void)func3{
    
    /**
     *  试了一下 keyFranme；
     */
    
    CALayer *layer = [CALayer layer];
    
    layer.backgroundColor = [UIColor yellowColor].CGColor;
    
    layer.bounds = CGRectMake(0, 0, 50, 50);
    
    layer.position = CGPointMake(100, 100);
    
    [self.view.layer addSublayer:layer];

    CAKeyframeAnimation *aniam = [CAKeyframeAnimation animationWithKeyPath:@"backgroundColor"];
    
    aniam.values = @[(id)[UIColor redColor].CGColor,(id)[UIColor greenColor].CGColor,(id)[UIColor blueColor].CGColor,(id)[UIColor yellowColor].CGColor];
    
    aniam.duration = 4;
    
    aniam.repeatCount = MAXFLOAT;
    
    aniam.fillMode = kCAFillModeBoth;
    
    [layer addAnimation:aniam forKey:@"12"];
}

-(void)func4{

    /**
     *  这是背景 layer；
     */
    
    CAGradientLayer *layer = [CAGradientLayer layer];
    
    layer.frame = CGRectMake(0, 0, 200, 200);
    
    layer.colors = @[(id)[UIColor colorWithRed:43/255.0 green:179/255.0 blue:244/255.0 alpha:1].CGColor,(id)[UIColor colorWithRed:236/255.0 green:21/255.0 blue:15/255.0 alpha:1].CGColor];
    
    layer.startPoint = CGPointMake(0.5, 0);
    layer.endPoint = CGPointMake(0.5, 1);
    
    /**
     *  制作遮罩
     *
     */

    UIBezierPath *bei = [UIBezierPath bezierPath];
    
    [bei moveToPoint:CGPointMake(60, 40)];
    
    [bei addLineToPoint:CGPointMake(140, 160)];
    
//    UIBezierPath *bei2 = [UIBezierPath bezierPath];
    
    [bei moveToPoint:CGPointMake(140, 40)];
    
    [bei addLineToPoint:CGPointMake(60, 160)];
    
//    [bei appendPath:bei2];
    
    CAShapeLayer *lay = [CAShapeLayer layer];
    
    lay.path = bei.CGPath;
    
    lay.strokeColor = [UIColor redColor].CGColor;
    
    lay.lineWidth = 4;
    
    lay.lineCap = kCALineCapButt;
    
    layer.mask = lay;
    
//    [self.view.layer addSublayer:lay];
    
    
    /**
     *  底座 layer
     *
     *  背景的圆圈和阴影；
     */
    CALayer *backLayer = [CALayer layer];
    
    backLayer.frame = CGRectMake(100, 100, 200, 200);
    
    backLayer.cornerRadius = 100;
    
    backLayer.shadowOpacity = 1;
    
    backLayer.backgroundColor = [UIColor whiteColor].CGColor;
    
    backLayer.shadowColor = [UIColor grayColor].CGColor;
    
    backLayer.shadowOffset = CGSizeMake(0, 3);
    
    backLayer.shadowRadius = 3.2;
    
    [self.view.layer addSublayer:backLayer];
    
    [backLayer addSublayer:layer];
    
    
    
    /**
     *  CABasicAnimation
     *
     */
    CABasicAnimation *aniamtion = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
    
    aniamtion.fromValue = @0;
    
    aniamtion.toValue = @1;
    
    aniamtion.duration = 2;
    
    aniamtion.repeatCount = 1;
    
    lay.strokeEnd = 1;
    
    [lay addAnimation:aniamtion forKey:@"zz"];

}

-(void)func4Touch{
    UIBezierPath *path = [UIBezierPath bezierPath];
    
    /**
     *   这个 letter 是 path
     */
    CGMutablePathRef letters = CGPathCreateMutable();
    
    /**
     *  font 是字体信息
     */
    CTFontRef font = CTFontCreateWithName(CFSTR("Helvetica-Bold"), 40.0f, NULL);
    
    /**
     *  变成字典
     */
    NSDictionary *attrs = [NSDictionary dictionaryWithObjectsAndKeys:
                           (__bridge id)font, kCTFontAttributeName,
                           nil];
    /**
     * 通过字体字典得到NSAttributedString的字;
     */
    NSAttributedString *attrString = [[NSAttributedString alloc] initWithString:@"OS X EI Capitan " attributes:attrs];
    
    /**
     *  根据新字得到 line属性;
     */
    CTLineRef line = CTLineCreateWithAttributedString((CFAttributedStringRef)attrString);
    /**
     * 根据 line 得到一个路线数组;
     */
    CFArrayRef runArray = CTLineGetGlyphRuns(line);
    
    /**
     *  遍历这个数组
     */
    // for each RUN
    for (CFIndex runIndex = 0; runIndex < CFArrayGetCount(runArray); runIndex++)
    {
        
        // Get FONT for this run
        CTRunRef run = (CTRunRef)CFArrayGetValueAtIndex(runArray, runIndex);
        CTFontRef runFont = CFDictionaryGetValue(CTRunGetAttributes(run), kCTFontAttributeName);
        
        // for each GLYPH in run
        for (CFIndex runGlyphIndex = 0; runGlyphIndex < CTRunGetGlyphCount(run); runGlyphIndex++)
        {
            // get Glyph & Glyph-data
            CFRange thisGlyphRange = CFRangeMake(runGlyphIndex, 1);
            CGGlyph glyph;
            CGPoint position;
            CTRunGetGlyphs(run, thisGlyphRange, &glyph);
            CTRunGetPositions(run, thisGlyphRange, &position);
            
            // Get PATH of outline
            {
                CGPathRef letter = CTFontCreatePathForGlyph(runFont, glyph, NULL);
                CGAffineTransform t = CGAffineTransformMakeTranslation(position.x, position.y);
                CGPathAddPath(letters, &t, letter);
                CGPathRelease(letter);
            }
        }
    }
    CFRelease(line);
    [path appendPath:[UIBezierPath bezierPathWithCGPath:letters]];
    
    CGPathRelease(letters);
    CFRelease(font);
    
    CAShapeLayer *leftAppearLayer = [CAShapeLayer layer];
    
    //    leftAppearLayer.bounds = CGPathGetBoundingBox(path.CGPath);
    leftAppearLayer.geometryFlipped = YES;
    leftAppearLayer.path = path.CGPath;
    leftAppearLayer.strokeColor = [[UIColor blackColor] CGColor];
    leftAppearLayer.fillColor = nil;
    leftAppearLayer.lineWidth = 3;
    leftAppearLayer.lineJoin = kCALineJoinBevel;
    
    leftAppearLayer.frame = CGRectMake(50, 280, 300, 100);
    
    leftAppearLayer.strokeEnd = 1;
    
    [self.view.layer addSublayer:leftAppearLayer];
    
    CABasicAnimation *pathAnimation = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
    pathAnimation.duration = 5;
    pathAnimation.fromValue = [NSNumber numberWithFloat:0.0f];
    pathAnimation.toValue = [NSNumber numberWithFloat:1.0f];
    
    pathAnimation.fillMode = kCAFillModeBackwards;
    
    [leftAppearLayer addAnimation:pathAnimation forKey:@"zz"];
}

-(void)func5{


    

}

@end
