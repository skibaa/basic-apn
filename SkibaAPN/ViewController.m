//
//  ViewController.m
//  SkibaAPN
//
//  Created by Andrew Skiba on 22/1/15.
//  Copyright (c) 2015 Andrew Skiba. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showMessage {
    
    NSString *text = [self.notificationTextField text];
    NSDate *date = [self.datePicker date];
    NSInteger localRemote = [self.localRemoteSegmented selectedSegmentIndex];
    
    if (localRemote == 0) {
         [self createLocalNotification:text date:date];
    } else if (localRemote == 1) {
        [self createRemoteNotification];
    }
    
    UIAlertView *helloWorldAlert = [[UIAlertView alloc]
                                    initWithTitle:@"My First App" message:@"Hello, World!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    
    // Display the Hello World Message
    [helloWorldAlert show];
}

- (void)createLocalNotification:(NSString*)text date:(NSDate*)date {
    UILocalNotification* localNotification = [[UILocalNotification alloc] init];
    localNotification.fireDate = date;
    localNotification.alertBody = text;
    localNotification.timeZone = [NSTimeZone defaultTimeZone];
    [[UIApplication sharedApplication] scheduleLocalNotification:localNotification];
}

- (void)createRemoteNotification {
    
}

@end
