//
//  ViewController.m
//  ErWeima
//
//  Created by Devil on 13-11-22.
//  Copyright (c) 2013年 com.shinyv. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
-(IBAction)choost:(id)sender{

    ZBarReaderViewController * reader = [ZBarReaderViewController new];
   
    reader.readerDelegate = self;
    
    ZBarImageScanner * scanner = reader.scanner;
    
    [scanner setSymbology:ZBAR_I25 config:ZBAR_CFG_ENABLE to:0];
  
    
    
    reader.showsZBarControls = YES;
    
    
    
    [self presentViewController:reader animated:YES completion:nil];

    


}
- (void) imagePickerController: (UIImagePickerController*) reader
 didFinishPickingMediaWithInfo: (NSDictionary*) info{

    
    id<NSFastEnumeration> results = [info objectForKey: ZBarReaderControllerResults];
    ZBarSymbol *symbol = nil;
    for(symbol in results){
      
        NSLog(@"%@",symbol.data);
        
        
        UIAlertView * alr =[[UIAlertView alloc]initWithTitle:@"二维码信息" message:symbol.data delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        
        [alr show];
        
        [self dismissViewControllerAnimated:YES completion:nil];
    }

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
