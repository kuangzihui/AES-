//
//  ViewController.m
//  AES加密
//
//  Created by 向平 on 15-4-1.
//  Copyright (c) 2015年 ihomeSys. All rights reserved.
//

#import "ViewController.h"
#import "SecurityUtil.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSString *testString = @"http://192.168.0.241:90/shop/wifi/appwifi.aspx?mid=3898&rptk_user_mac=4c:8d:79:bc:a8:91&rptk_user_ip=192.168.0.20&sn=k002RJKRXaca213acdd20&node=47674";
    NSLog(@"BASE64:%@", [SecurityUtil encodeBase64String:testString]);
    NSLog(@"MD5:%@", [SecurityUtil encryptMD5String:testString]);
    
    NSData *aesData = [SecurityUtil encryptAESData:testString];
    NSLog(@"AES加密:%@", aesData);
    NSLog(@"AES解密:%@", [SecurityUtil decryptAESData:aesData]);
}


@end
