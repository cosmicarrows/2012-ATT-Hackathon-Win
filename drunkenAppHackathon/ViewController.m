//
//  ViewController.m
//  drunkenAppHackathon
//
//  Created by Laurence Wingo on 12/1/12.
//  Copyright (c) 2012 Laurence Wingo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()



@end

@implementation ViewController

@synthesize laser, delta;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIAccelerometer *accel = [UIAccelerometer sharedAccelerometer];
    accel.delegate = self;
    accel.updateInterval= 1.0f / 60.0f;
    
    
}

-(void)accelerometer:(UIAccelerometer *)accelerometer didAccelerate:(UIAcceleration *)acceleration{
    
    NSLog(@"x: %g", acceleration.x);
    NSLog(@"y: %g", acceleration.y);
    NSLog(@"z: %g", acceleration.z);
    
    delta.y = acceleration.y * 10;
    delta.x = acceleration.x * 10;
    
    laser.center = CGPointMake(laser.center.x + delta.x, laser.center.y + delta.y);

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
