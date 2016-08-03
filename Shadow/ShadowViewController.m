//
//  ShadowViewController.m
//  Shadow
//
//  Created by Jacky on 6/20/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ShadowViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface ShadowViewController (private)

- (void)updateUIElements;

@end

@implementation ShadowViewController

@synthesize mainBtn;
@synthesize mainLabel;
@synthesize fontSizeLabel;
@synthesize shadowOpacityLabel;
@synthesize shadowRadiusLabel;
@synthesize shadowOffsetWidthLabel;
@synthesize shadowOffsetHeightLabel;
@synthesize redColorTF;
@synthesize greenColorTF;
@synthesize blueColorTF;
@synthesize alphaColorTF;

- (void)dealloc
{
    [mainBtn release];
    [mainLabel release];
    [fontSizeLabel release];
    [shadowOpacityLabel release];
    [shadowRadiusLabel release];
    [shadowOffsetWidthLabel release];
    [shadowOffsetHeightLabel release];
    [redColorTF release];
    [greenColorTF release];
    [blueColorTF release];  
    [alphaColorTF release];
    
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    self.mainBtn.titleLabel.layer.shadowOpacity = 0.8;
    self.mainBtn.titleLabel.layer.shadowRadius = 2.5;
    self.mainBtn.titleLabel.layer.shadowOffset = CGSizeMake(2.0, 2.0);
    

    self.mainLabel.layer.shadowOpacity = 0.8;
    self.mainLabel.layer.shadowRadius = 2.5;
    self.mainLabel.layer.shadowOffset = CGSizeMake(2.0, 2.0);
    
    
    [self updateUIElements];
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationLandscapeRight);
}

- (void)updateUIElements
{
    self.fontSizeLabel.text = [NSString stringWithFormat:@"%.1f", self.mainBtn.titleLabel.font.pointSize];
    self.shadowOpacityLabel.text = [NSString stringWithFormat:@"%.1f", self.mainBtn.titleLabel.layer.shadowOpacity];
    self.shadowRadiusLabel.text = [NSString stringWithFormat:@"%.1f", self.mainBtn.titleLabel.layer.shadowRadius];
    self.shadowOffsetWidthLabel.text = [NSString stringWithFormat:@"%.1f", self.mainBtn.titleLabel.layer.shadowOffset.width];
    self.shadowOffsetHeightLabel.text = [NSString stringWithFormat:@"%.1f", self.mainBtn.titleLabel.layer.shadowOffset.height];
    
    
    const CGFloat* colorComponents = CGColorGetComponents(self.mainBtn.titleLabel.shadowColor.CGColor);
    self.redColorTF.text = [NSString stringWithFormat:@"%.1f", colorComponents[0]];
    self.greenColorTF.text = [NSString stringWithFormat:@"%.1f", colorComponents[1]];
    self.blueColorTF.text = [NSString stringWithFormat:@"%.1f", colorComponents[2]];
    self.alphaColorTF.text = [NSString stringWithFormat:@"%.1f",CGColorGetAlpha(self.mainBtn.titleLabel.layer.shadowColor)];
}

- (IBAction)fontSizeBtnPressed:(UIButton *)btn
{
    float curSize = self.mainBtn.titleLabel.font.pointSize;
    
    if(btn.tag == 0)
    {
        //incr
        curSize += 1.0;
    }
    else if(btn.tag == 1)
    {
        //decr
        curSize -= 1.0;
    }
    
    self.mainBtn.titleLabel.font = [UIFont fontWithName:@"Helvetica-Bold" size:curSize];
    self.mainLabel.font = [UIFont fontWithName:@"Helvetica-Bold" size:curSize];
    
    [self updateUIElements];
}

- (IBAction)shadowOpacityBtnPressed:(UIButton *)btn
{
    float curValue = self.mainBtn.titleLabel.layer.shadowOpacity;
    
    if(btn.tag == 0)
    {
        //incr
        curValue += 0.1;
    }
    else if(btn.tag == 1)
    {
        //decr
        curValue -= 0.1;
    }  
    
    self.mainBtn.titleLabel.layer.shadowOpacity = curValue;
    self.mainLabel.layer.shadowOpacity = curValue;
    
    [self updateUIElements];
}

- (IBAction)shadowRadiusBtnPressed:(UIButton *)btn
{
    float curValue = self.mainBtn.titleLabel.layer.shadowRadius;
    
    if(btn.tag == 0)
    {
        //incr
        curValue += 0.1;
    }
    else if(btn.tag == 1)
    {
        //decr
        curValue -= 0.1;
    }  
    
    self.mainBtn.titleLabel.layer.shadowRadius = curValue;
    self.mainLabel.layer.shadowRadius = curValue;
    
    [self updateUIElements];
}

- (IBAction)shadowOffsetWidthBtnPressed:(UIButton *)btn
{
    float curWidthValue = self.mainBtn.titleLabel.layer.shadowOffset.width;
    float curHeightValue = self.mainBtn.titleLabel.layer.shadowOffset.height; 
    
    if(btn.tag == 0)
    {
        //incr
        curWidthValue += 1.0;
    }
    else if(btn.tag == 1)
    {
        //decr
        curWidthValue -= 1.0;
    }  
    
    self.mainBtn.titleLabel.layer.shadowOffset = CGSizeMake(curWidthValue, curHeightValue);
    self.mainLabel.layer.shadowOffset = CGSizeMake(curWidthValue, curHeightValue);
    
    [self updateUIElements];
}

- (IBAction)shadowOffsetHeightBtnPressed:(UIButton *)btn
{
    float curWidthValue = self.mainBtn.titleLabel.layer.shadowOffset.width;
    float curHeightValue = self.mainBtn.titleLabel.layer.shadowOffset.height; 
    
    if(btn.tag == 0)
    {
        //incr
        curHeightValue += 1.0;
    }
    else if(btn.tag == 1)
    {
        //decr
        curHeightValue -= 1.0;
    }  
    
    self.mainBtn.titleLabel.layer.shadowOffset = CGSizeMake(curWidthValue, curHeightValue);
    self.mainLabel.layer.shadowOffset = CGSizeMake(curWidthValue, curHeightValue);
    
    [self updateUIElements];
}

- (IBAction)shadowColorBtnPressed:(UIButton *)btn
{
    float redValue = [self.redColorTF.text floatValue];
    float greenValue = [self.greenColorTF.text floatValue];
    float blueValue = [self.blueColorTF.text floatValue];
    float alphaValue = [self.alphaColorTF.text floatValue];
    
    UIColor *inputColor = [UIColor colorWithRed:redValue green:greenValue blue:blueValue alpha:alphaValue];
        
    self.mainBtn.titleLabel.shadowColor = inputColor;
    self.mainLabel.shadowColor = inputColor;
    
    [self updateUIElements];
}

@end
