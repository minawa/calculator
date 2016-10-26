//
//  ViewController.m
//  iphone1
//
//  Created by Min on 10/4/16.
//  Copyright © 2016 Min. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    operatorPressed = FALSE;
    firstEntry = NULL;
    secondEntry = NULL;
    
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

- (IBAction)clearPressed:(id)sender {
    _labelOutput.stringValue = @"";
    operatorPressed = FALSE;
    firstEntry = NULL;
    secondEntry = NULL;
}

- (IBAction)addPressed:(id)sender {
    add = true;
    operatorPressed = TRUE;
}

- (IBAction)minusPressed:(id)sender {
    add = false;
    operatorPressed = TRUE;
}

- (IBAction)equalPressed:(id)sender {
    if (add == FALSE) {
        int outputNum = [firstEntry intValue] -[secondEntry intValue];
        _labelOutput.stringValue = [NSString stringWithFormat:@"%i", outputNum];
    } else {
        int outputNum = [firstEntry intValue] +[secondEntry intValue];
        _labelOutput.stringValue = [NSString stringWithFormat:@"%i", outputNum];
    }
    
    operatorPressed = FALSE;
    firstEntry = NULL;
    secondEntry = NULL;
}

-(IBAction)numberPressed:(NSButton *)sender {
    int tag = (int)sender.tag;
    if (operatorPressed == FALSE) {
        if (firstEntry == NULL) {
            firstEntry = [NSString stringWithFormat:@"%i", tag];
            _labelOutput.stringValue = firstEntry;
        } else {
            firstEntry = [NSString stringWithFormat:@"%@%i", firstEntry,tag];
            _labelOutput.stringValue = firstEntry;
        }
    } else {
        if (secondEntry == NULL) {
            secondEntry = [NSString stringWithFormat:@"%i",tag];
            _labelOutput.stringValue = secondEntry;
        } else {
            secondEntry = [NSString stringWithFormat:@"%@%i", secondEntry,tag];
            _labelOutput.stringValue = secondEntry;
        }
        
    }
    
}

@end
