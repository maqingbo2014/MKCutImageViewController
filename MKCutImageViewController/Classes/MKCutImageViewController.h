//
//  MKCutImageViewController.h
//  MKCutImageViewController
//
//  Created by Apple on 2018/11/12.
//

typedef void(^Complete)(UIImage *image);

#import <UIKit/UIKit.h>

@interface MKCutImageViewController : UIViewController

/**
 剪切图片

 @param image 原图
 @param proportion 图片的宽高比例
 @param complete 完成回调
 @return 实例对象
 */
- (instancetype)initWithImage:(UIImage *)image WithProportion:(float)proportion WithComplete:(Complete)complete;
@end

@interface MKCutImageMaskView : UIView {
@private
    CGRect  ShowRect;//截图框的大小
}
- (void)setShowRect:(CGSize)size;
- (CGSize)ShowRect;
@end
