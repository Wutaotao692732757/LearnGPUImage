//
//  GPUImageViewVC.m
//  OpenGLTest
//
//  Created by wutaotao on 2017/2/22.
//  Copyright © 2017年 wutaotao. All rights reserved.
//

#import "GPUImageViewVC.h"

@implementation GPUImageViewVC


- (void)captureOutput:(AVCaptureOutput *)captureOutput didOutputSampleBuffer:(CMSampleBufferRef)sampleBuffer fromConnection:(AVCaptureConnection *)connection{
    
    [super captureOutput:captureOutput didOutputSampleBuffer:sampleBuffer fromConnection:connection];
    NSLog(@"sdasdasdad");
    
    
    
}


@end
