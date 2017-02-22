//
//  ViewController.h
//  OpenGLTest
//
//  Created by wutaotao on 2017/2/22.
//  Copyright © 2017年 wutaotao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GPUImage.h"

@interface ViewController : UIViewController{
    GPUImageRawDataOutput *positionRawData, *videoRawData;
      CALayer *trackingDot;
}


@end

