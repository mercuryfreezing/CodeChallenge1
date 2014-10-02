//
//  ViewController.m
//  CodeChallenge1
//
//  Created by roshan on 02/10/2014.
//  Copyright (c) 2014 learningIOS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *value1TextField;
@property (weak, nonatomic) IBOutlet UITextField *value2TextField;
@property (weak, nonatomic) IBOutlet UINavigationItem *answer;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *webBarButtonItem;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.value1TextField becomeFirstResponder];

    [super viewDidLoad];

    self.webBarButtonItem.enabled = NO;
    // Do any additional setup after loading the view, typically from a nib.
}






- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onCalculateButtonPressed:(UIButton *)sender {

    int value1 = self.value1TextField.text.intValue;
    int value2 = self.value2TextField.text.intValue;
    int result = value1 * value2;
    self.answer.title = [NSString stringWithFormat:@"%d", result];

    if(result % 5 == 0)
    {
        self.webBarButtonItem.enabled = YES;
    }



}

@end
