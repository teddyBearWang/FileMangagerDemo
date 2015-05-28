//
//  MainViewController.m
//  文件管理Demo
//
//  Created by teddy on 14-10-15.
//  Copyright (c) 2014年 teddy. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//创建文件夹
- (IBAction)createFIleAction:(id)sender
{
    NSError *error = nil;
    NSFileManager *fileManager = [NSFileManager defaultManager];
    //获取整个应用程序的根目录，里面共有四个文件夹，包括Documents,Library,tmp和应用程序文件夹
    NSString *homePath = NSHomeDirectory();
    NSLog(@"第一个文件路径：%@",homePath);
    //获取doucments文件的目录
    NSString *filePath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    NSLog(@"第三个文件路径：%@",filePath);
    //指向文件的目录
    NSString *document = [homePath stringByAppendingPathComponent:@"ducument"];
    NSLog(@"第二个文件路径:%@",document);
    [fileManager createDirectoryAtPath:[NSString stringWithFormat:@"%@/myfolder",filePath] withIntermediateDirectories:YES attributes:nil error:&error];
    
    NSString *cachePath = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject];
    NSLog(@"第四个文件路径:%@",cachePath);

}
@end
