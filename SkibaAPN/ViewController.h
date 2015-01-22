//
//  ViewController.h
//  SkibaAPN
//
//  Created by Andrew Skiba on 22/1/15.
//  Copyright (c) 2015 Andrew Skiba. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *notificationTextField;

@property (strong, nonatomic) IBOutlet UIDatePicker *datePicker;

@property (strong, nonatomic) IBOutlet UISegmentedControl *localRemoteSegmented;

@property (strong, nonatomic) IBOutlet UIButton *sendButton;

-(IBAction)showMessage;


@end

