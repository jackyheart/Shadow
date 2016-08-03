//
//  ShadowViewController.h
//  Shadow
//
//  Created by Jacky on 6/20/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ShadowViewController : UIViewController {
    
    IBOutlet UIButton *mainBtn;
    IBOutlet UILabel *mainLabel;
    IBOutlet UILabel *fontSizeLabel;
    IBOutlet UILabel *shadowOpacityLabel;
    IBOutlet UILabel *shadowRadiusLabel;
    IBOutlet UILabel *shadowOffsetWidthLabel;
    IBOutlet UILabel *shadowOffsetHeightLabel;
    IBOutlet UITextField *redColorTF;
    IBOutlet UITextField *greenColorTF;
    IBOutlet UITextField *blueColorTF;
    IBOutlet UITextField *alphaColorTF;
}

@property (nonatomic, retain) UIButton *mainBtn;
@property (nonatomic, retain) UILabel *mainLabel;
@property (nonatomic, retain) UILabel *fontSizeLabel;
@property (nonatomic, retain) UILabel *shadowOpacityLabel;
@property (nonatomic, retain) UILabel *shadowRadiusLabel;
@property (nonatomic, retain) UILabel *shadowOffsetWidthLabel;
@property (nonatomic, retain) UILabel *shadowOffsetHeightLabel;
@property (nonatomic, retain) UITextField *redColorTF;
@property (nonatomic, retain) UITextField *greenColorTF;
@property (nonatomic, retain) UITextField *blueColorTF;
@property (nonatomic, retain) UITextField *alphaColorTF;

- (IBAction)fontSizeBtnPressed:(UIButton *)btn;
- (IBAction)shadowOpacityBtnPressed:(UIButton *)btn;
- (IBAction)shadowRadiusBtnPressed:(UIButton *)btn;
- (IBAction)shadowOffsetWidthBtnPressed:(UIButton *)btn;
- (IBAction)shadowOffsetHeightBtnPressed:(UIButton *)btn;
- (IBAction)shadowColorBtnPressed:(UIButton *)btn;

@end
