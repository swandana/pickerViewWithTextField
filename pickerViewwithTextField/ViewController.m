//
//  ViewController.m
//  pickerViewwithTextField
//
//  Created by Target on 16/10/15.
//  Copyright (c) 2015 Target Soft Systems. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    
    NSMutableArray * mutableArray;
}

@end

@implementation ViewController
@synthesize picker,textField;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    mutableArray = [[NSMutableArray alloc]init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    
    return mutableArray.count;
    
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    
    return [mutableArray objectAtIndex:row];
}



- (IBAction)addObject:(id)sender {
    
    NSString * string = textField.text;
    
    [mutableArray addObject:string];
    
    picker.dataSource = self;
    picker.delegate = self;
    
}
@end
