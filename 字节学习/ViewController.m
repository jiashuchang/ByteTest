//
//  ViewController.m
//  字节学习
//
//  Created by anviz on 2019/7/12.
//  Copyright © 2019 anviz. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Byte byte[6] = {0};
    byte[0] = 0x00;
    byte[1] = 0x05;
    NSData *data = [NSData dataWithBytes:byte length:sizeof(byte)];//data<00050000 0000>,长度为===6
    //    NSData *data = [NSData dataWithBytes:byte length:1];//data<00>,长度为===1
    //    NSData *data = [NSData dataWithBytes:byte length:5];//data<00050000 00>,长度为===5
    //    NSData *data = [NSData dataWithBytes:byte length:7];//data<00050000 000050>,长度为===7，超过实际长度，最后一个数，会随机访问一个十六进制的内存，这里访问到了07，属于错误写法，如果访问的内存地址不存在，就会发生崩溃
    NSLog(@"测试data%@,长度为===%ld",data,data.length);
    
    
    //    Byte byte2[] = {};必须定义长度，这样写不对,会崩溃
    //    byte2[0] = 0x00;
    //    byte2[1] = 0x05;
    //    NSData *data2 = [NSData dataWithBytes:byte2 length:sizeof(byte2)];
    //    NSLog(@"测试data2%@,长度为===%ld",data2,data2.length);//data2<>,长度为===0
    
    
    Byte byte3[4] = {0};
    byte3[0] = 0x00;
    byte3[1] = 0x05;
    
    byte3[2] = 0x02;
    byte3[3] = 0x03;
    //    byte3[4] = 0x04;
    NSData *data3 = [NSData dataWithBytes:byte3 length:sizeof(byte3)];
    //     NSData *data3 = [NSData dataWithBytes:byte3 length:3];
    NSLog(@"测试data3%@,长度为===%ld",data3,data3.length);
    
    
    
    
    Byte byte4[] = {0x00,0x55,0x05};
    //    NSData *data4 = [NSData dataWithBytes:byte4 length:sizeof(byte4)];//data4<005505>,长度为===3
    NSData *data4 = [NSData dataWithBytes:byte4 length:2];//data4<0055>,长度为===2
    NSLog(@"测试data4%@,长度为===%ld",data4,data4.length);
    
    
    
    //一半c语言写法 不用btye，用char
    unsigned char buf[4];//定义一个16个字节的buf
    memset(buf, 0, sizeof(buf));//memset:给buf初始化，先全部复制为0
    buf[0] = 0x01;
    buf[1] = 0x02;
    NSData *bufData = [NSData dataWithBytes:buf length:16];
    NSLog(@"测试bufData%@,长度为===%ld",bufData,bufData.length);
    
}


@end
