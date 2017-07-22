//
//  ScanResultViewController.m
//  LBXScanDemo
//
//  Created by lbxia on 15/11/17.
//  Copyright © 2015年 lbxia. All rights reserved.
//

#import "LSScanResultViewController.h"

@interface LSScanResultViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *scanImg;
@property (weak, nonatomic) IBOutlet UILabel *labelScanText;
@property (weak, nonatomic) IBOutlet UILabel *labelScanCodeType;
@end

@implementation LSScanResultViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"扫描结果";
    
    self.view.backgroundColor = kCollectionHeaderColor;
    
    // Do any additional setup after loading the view from its nib.
    if ([self respondsToSelector:@selector(setEdgesForExtendedLayout:)])
    {
        
        self.edgesForExtendedLayout = UIRectEdgeNone;
    }
}


- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];

    _scanImg.image = _imgScan;
    _labelScanText.text = _strScan;
    _labelScanCodeType.text = [NSString stringWithFormat:@"码的类型:%@",_strCodeType];
}


@end
