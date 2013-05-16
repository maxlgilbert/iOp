//
//  PhotoViewController.m
//  iOperate
//
//  Created by Max Gilbert on 5/15/13.
//  Copyright (c) 2013 SIG Center. All rights reserved.
//

#import "PhotoViewController.h"

@interface PhotoViewController ()
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *photoButtons;
@property (strong, nonatomic) IBOutlet UIImageView *imageDisplay;

- (IBAction)ButtonPress:(UIButton *)sender;
@end

@implementation PhotoViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) setPhotoButtons:(NSArray*)photoButtons{
    _photoButtons = photoButtons;
    for(UIButton* button in _photoButtons){
        button.imageView.contentMode = UIViewContentModeScaleAspectFit;
    }
}
- (IBAction)ButtonPress:(UIButton*)sender {
    UIImage* buttonImage = sender.imageView.image;//[UIImage imageNamed:[NSString stringWithFormat:@"10 a-Color-Flat.tif"]];
    //_imageDisplay.image = buttonImage;
    [_imageDisplay setImage:buttonImage];
    //sender.imageView.contentMode = UIViewContentModeScaleAspectFit;
    //[_imageDisplay.image set
    
}
@end
