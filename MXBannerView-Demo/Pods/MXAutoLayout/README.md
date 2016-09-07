# MXAutoLayout-in-Objective-C

`MXAutoLayout` is a delightful layout framework for iOS platform.

## Installation with CocoaPods

```
pod 'MXAutoLayout'
```

## Usage

```objective-c
#import "MXAutoLayout.h"
```

```objective-c
// Sample:
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *buttonTop = [UIButton new];
    [buttonTop setBackgroundColor:[UIColor redColor]];
    [buttonTop addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [[self view] addSubview:buttonTop];

    UIButton *buttonInside = [UIButton new];
    [buttonInside setBackgroundColor:[UIColor purpleColor]];
    [buttonInside addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [[self view] addSubview:buttonInside];

    UIButton *buttonBottom = [UIButton new];
    [buttonBottom setBackgroundColor:[UIColor greenColor]];
    [buttonBottom addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [[self view] addSubview:buttonBottom];

    CGFloat margin = 8;

    // AutoLayout
    [buttonTop alignLeftToLayoutPosition:margin];
    [buttonTop alignRightToSuperviewWithPadding:margin];
    [buttonTop alignTopToLayoutPosition:margin];

    [buttonBottom alignBelowView:buttonTop withPadding:margin];
    [buttonBottom alignLeftToView:buttonTop padding:0];
    [buttonBottom matchSizeToView:buttonTop withExtensions:CGSizeZero];
    [buttonBottom alignBottomToSuperviewWithPadding:margin];

    [buttonInside matchBoundsToView:buttonTop edgeInsets:UIEdgeInsetsMake(15, 15, 15, 15)];
}

- (void)buttonAction:(UIButton *)sender {
    CGFloat hue = ( arc4random() % 256 / 256.0 ); //0.0 to 1.0
    CGFloat saturation = ( arc4random() % 128 / 256.0 ) + 0.5; // 0.5 to 1.0,away from white
    CGFloat brightness = ( arc4random() % 128 / 256.0 ) + 0.5; //0.5 to 1.0,away from black
    UIColor *color = [UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:1];
    [sender setBackgroundColor:color];
    NSLog(@"%@", sender.backgroundColor);
}
```
