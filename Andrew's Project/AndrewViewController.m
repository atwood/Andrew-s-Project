//
//  AndrewViewController.m
//  Andrew's Project
//
//  Created by Andrew on 3/17/13.
//  Copyright (c) 2013 Andrew. All rights reserved.
//

#import "AndrewViewController.h"

@interface AndrewViewController ()

@end

@implementation AndrewViewController

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

- (IBAction)C_High:(id)sender {
    playIt((CFStringRef)@"HighC");}
- (IBAction)B:   (id)sender {playIt((CFStringRef)@"B");}
- (IBAction)A_Sh:(id)sender {playIt((CFStringRef)@"A#");}
- (IBAction)A:   (id)sender {playIt((CFStringRef)@"A");}
- (IBAction)G_Sh:(id)sender {playIt((CFStringRef)@"G#");}
- (IBAction)G:   (id)sender {playIt((CFStringRef)@"G");}
- (IBAction)F_Sh:(id)sender {playIt((CFStringRef)@"F#");}
- (IBAction)F:   (id)sender {playIt((CFStringRef)@"F");}
- (IBAction)E:   (id)sender {playIt((CFStringRef)@"E");}
- (IBAction)D_Sh:(id)sender {playIt((CFStringRef)@"D#");}
- (IBAction)D:   (id)sender {
    playIt((CFStringRef)@"D");}
- (IBAction)C_Sh:(id)sender {playIt((CFStringRef)@"C#");}
- (IBAction)C:   (id)sender {playIt((CFStringRef)@"LowC");}

int playIt(CFStringRef fname){
    CFBundleRef mainBundle = CFBundleGetMainBundle();
    CFURLRef soundFileURLRef;
    UInt32 soundID;
    soundFileURLRef = CFBundleCopyResourceURL(mainBundle,
                                              fname,
                                              CFSTR ("m4a"), NULL);
    //OSStatus stat =
    AudioServicesCreateSystemSoundID(soundFileURLRef, &soundID);
    AudioServicesPlaySystemSound(soundID);

    return 0;
}

@end
