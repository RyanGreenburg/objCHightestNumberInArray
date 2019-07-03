//
//  ViewController.m
//  HighestNumberInArray
//
//  Created by RYAN GREENBURG on 7/3/19.
//  Copyright © 2019 RYAN GREENBURG. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, copy, readwrite) NSMutableArray *numberArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *unsortedArray = @[@2, @44, @11, @17, @99];
    [self highestNumberInArray:unsortedArray];
    [self highestNumber:unsortedArray];
}

-(NSNumber *)highestNumber:(NSArray *)array
{
    NSNumber *maxNumber = [array valueForKeyPath:@"@max.self"];
    NSLog(@"Highest number %@", maxNumber);
    return maxNumber;
}

- (NSInteger)highestNumberInArray:(NSArray *)array
{
    NSInteger highestNumber = [array[1] intValue];
    
    for (id nextNumber in array) {
        if ([nextNumber intValue] > highestNumber) {
            highestNumber = [nextNumber intValue];
        }
    }
    
    NSLog(@"Largest number %ld", highestNumber);
    
    return highestNumber;
}

@end
