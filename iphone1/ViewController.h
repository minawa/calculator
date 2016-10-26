//
//  ViewController.h
//  iphone1
//
//  Created by Min on 10/4/16.
//  Copyright © 2016 Min. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface ViewController : NSViewController {
    bool operatorPressed;
    char op;
    NSString *firstEntry;
    NSString *secondEntry;
    BOOL add;
}

@property (strong) IBOutlet NSTextField *labelOutput;

- (IBAction)clearPressed:(id)sender;
- (IBAction)addPressed:(id)sender;
- (IBAction)minusPressed:(id)sender;
- (IBAction)equalPressed:(id)sender;

- (IBAction)numberPressed:(NSButton*)sender;





@end

