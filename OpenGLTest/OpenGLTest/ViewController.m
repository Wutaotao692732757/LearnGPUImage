//
//  ViewController.m
//  OpenGLTest
//
//  Created by wutaotao on 2017/2/22.
//  Copyright © 2017年 wutaotao. All rights reserved.
//

#import "ViewController.h"
#import "GPUImageBoxBlurFilter.h"
#import <AVFoundation/AVFoundation.h>
#import "GPUImageViewVC.h"

#define UIScreeW [UIScreen mainScreen].bounds.size.width
#define UIScreeH [UIScreen mainScreen].bounds.size.height

@interface ViewController ()<AVCaptureVideoDataOutputSampleBufferDelegate>

@property(nonatomic,strong)GPUImageRGBFilter *  filter;
@property(nonatomic,strong)GPUImageView *imgView;
@property(nonatomic,strong)GPUImageViewVC *camera;

@property(nonatomic,weak) id<AVCaptureVideoDataOutputSampleBufferDelegate>delegate;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    _camera = [[GPUImageViewVC alloc]initWithSessionPreset:AVCaptureSessionPreset640x480 cameraPosition:AVCaptureDevicePositionBack];
    
    _camera.outputImageOrientation=UIInterfaceOrientationPortrait;
    
//    [_camera.captureSession setSessionPreset:AVCaptureSessionPresetHigh];
    
    GPUImageView *imgView = [[GPUImageView alloc]initWithFrame:CGRectMake(0, 0, UIScreeW, UIScreeH)];
    imgView.backgroundColor=[UIColor lightGrayColor];
    [self.view addSubview:imgView];
    
    _filter = [[GPUImageRGBFilter alloc] init];
    
    [_filter addTarget:imgView];
    [_camera addTarget:_filter];

//    [camera addTarget:imgView];
 
    self.delegate=_camera;
    [_camera startCameraCapture];
    
    
    
}





@end
