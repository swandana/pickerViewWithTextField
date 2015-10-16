//
//  ViewController.h
//  pickerViewwithTextField
//
//  Created by Target on 16/10/15.
//  Copyright (c) 2015 Target Soft Systems. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIPickerViewDataSource,UIPickerViewDelegate>

@property (strong, nonatomic) IBOutlet UITextField *textField;
- (IBAction)addObject:(id)sender;

@property (strong, nonatomic) IBOutlet UIPickerView *picker;


@end

