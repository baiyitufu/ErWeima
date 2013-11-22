//
//  ViewController.h
//  ErWeima
//
//  Created by Devil on 13-11-22.
//  Copyright (c) 2013年 com.shinyv. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZBarSDK.h"
@interface ViewController : UIViewController<ZBarReaderDelegate>
-(IBAction)choost:(id)sender;
@end
