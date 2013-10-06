//
//  ViewController.m
//  pickerdemo
//
//  Created by Rahul paliwal on 06/10/13.
//  Copyright (c) 2013 Rahul paliwal. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Countries" ofType:@"plist"];
    NSDictionary *mydic = [[NSDictionary alloc] initWithContentsOfFile:path];
    NSLog(@"%@",mydic);
    static NSArray *_countryNames = nil;
    if (!_countryNames)
    {
        _countryNames = [[[mydic allValues] sortedArrayUsingSelector:@selector(caseInsensitiveCompare:)] copy];
    }
    NSLog(@"%@",_countryNames);
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
