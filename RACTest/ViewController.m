//
//  ViewController.m
//  RACTest
//
//  Created by miao on 17/4/5.
//  Copyright © 2017年 miao. All rights reserved.
//

#import "ViewController.h"
#import "ReactiveCocoa.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.textField.rac_textSignal subscribeNext:^(NSString* text) {
        NSLog(@"%@",text);
    }];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
