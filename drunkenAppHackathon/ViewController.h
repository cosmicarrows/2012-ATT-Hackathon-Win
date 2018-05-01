//
//  ViewController.h
//  drunkenAppHackathon
//
//  Created by Laurence Wingo on 12/1/12.
//  Copyright (c) 2012 Laurence Wingo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIAccelerometerDelegate> {
    UIImageView *laser;
    CGPoint delta;
}

@property (nonatomic, strong) IBOutlet UIImageView *laser;
@property CGPoint delta;


@end
