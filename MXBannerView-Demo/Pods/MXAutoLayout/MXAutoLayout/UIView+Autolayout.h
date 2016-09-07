//
//  UIView+Autolayout.h
//  Meniny
//
//  Created by Meniny on 2015-03-17.
//  Copyright (c) 2015 Meniny. All rights reserved.
//
//  Powerd by Meniny.
//  See http://www.meniny.cn/ for more informations.
//

#import <UIKit/UIKit.h>

/**
 *  MXAutoLayoutOptionEqual
 */
FOUNDATION_EXPORT NSLayoutRelation const kMXLEqual;
/**
 *  MXAutoLayoutOptionLessThanOrEqualTo
 */
FOUNDATION_EXPORT NSLayoutRelation const kMXLLessThanOrEqual;
/**
 *  MXAutoLayoutOptionGreaterThanOrEqualTo
 */
FOUNDATION_EXPORT NSLayoutRelation const kMXLGreaterThanOrEqual;

@interface UIView (Autolayout)

// Alignment
- (NSLayoutConstraint *)alignToRightOfView:(UIView *)view withPadding:(CGFloat)padding;
- (NSLayoutConstraint *)alignToRightOfView:(UIView *)view withPadding:(CGFloat)padding option:(NSLayoutRelation)option;

- (NSLayoutConstraint *)alignToLeftOfView:(UIView *)view withPadding:(CGFloat)padding;
- (NSLayoutConstraint *)alignToLeftOfView:(UIView *)view withPadding:(CGFloat)padding option:(NSLayoutRelation)option;

- (NSLayoutConstraint *)alignToBottomOfView:(UIView *)view withPadding:(CGFloat)padding;
- (NSLayoutConstraint *)alignToBottomOfView:(UIView *)view withPadding:(CGFloat)padding option:(NSLayoutRelation)option;

- (NSLayoutConstraint *)alignToTopOfView:(UIView *)view withPadding:(CGFloat)padding;
- (NSLayoutConstraint *)alignToTopOfView:(UIView *)view withPadding:(CGFloat)padding option:(NSLayoutRelation)option;

- (NSLayoutConstraint *)alignBelowView:(UIView *)view withPadding:(CGFloat)padding;
- (NSLayoutConstraint *)alignBelowView:(UIView *)view withPadding:(CGFloat)padding option:(NSLayoutRelation)option;

- (NSLayoutConstraint *)alignAboveView:(UIView *)view withPadding:(CGFloat)padding;
- (NSLayoutConstraint *)alignAboveView:(UIView *)view withPadding:(CGFloat)padding option:(NSLayoutRelation)option;



// Positioning
- (NSArray <NSLayoutConstraint *>*)alignOriginWithPadding:(CGPoint)padding;
- (NSArray <NSLayoutConstraint *>*)alignOriginWithPadding:(CGPoint)padding option:(NSLayoutRelation)option;

- (NSLayoutConstraint *)alignLeftToLayoutPosition:(CGFloat)position;
- (NSLayoutConstraint *)alignLeftToLayoutPosition:(CGFloat)position option:(NSLayoutRelation)option;

- (NSLayoutConstraint *)alignRightToSuperviewWithPadding:(CGFloat)padding;
- (NSLayoutConstraint *)alignRightToSuperviewWithPadding:(CGFloat)padding option:(NSLayoutRelation)option;

- (NSLayoutConstraint *)alignTopToLayoutPosition:(CGFloat)position;
- (NSLayoutConstraint *)alignTopToLayoutPosition:(CGFloat)position option:(NSLayoutRelation)option;

- (NSLayoutConstraint *)alignBottomToSuperviewWithPadding:(CGFloat)padding;
- (NSLayoutConstraint *)alignBottomToSuperviewWithPadding:(CGFloat)padding option:(NSLayoutRelation)option;



- (NSLayoutConstraint *)alignCenterHorizontally;
- (NSLayoutConstraint *)alignCenterHorizontallyWithOption:(NSLayoutRelation)option;

- (NSLayoutConstraint *)alignCenterHorizontallyWithExtension:(CGFloat)extension;
- (NSLayoutConstraint *)alignCenterHorizontallyWithExtension:(CGFloat)extension option:(NSLayoutRelation)option;

- (NSLayoutConstraint *)alignCenterVertically;
- (NSLayoutConstraint *)alignCenterVerticallyWithOption:(NSLayoutRelation)option;

- (NSLayoutConstraint *)alignCenterVerticallyWithExtension:(CGFloat)extension;
- (NSLayoutConstraint *)alignCenterVerticallyWithExtension:(CGFloat)extension option:(NSLayoutRelation)option;

- (NSArray <NSLayoutConstraint *>*)alignCenter;
- (NSArray <NSLayoutConstraint *>*)alignCenterWithOption:(NSLayoutRelation)option;

- (NSArray <NSLayoutConstraint *>*)alignCenterWithExtensions:(CGSize)extensions;
- (NSArray <NSLayoutConstraint *>*)alignCenterWithExtensions:(CGSize)extensions option:(NSLayoutRelation)option;



- (NSArray <NSLayoutConstraint *>*)alignOriginToView:(UIView *)view padding:(CGPoint)padding;
- (NSArray <NSLayoutConstraint *>*)alignOriginToView:(UIView *)view padding:(CGPoint)padding option:(NSLayoutRelation)option;

- (NSLayoutConstraint *)alignLeftToView:(UIView *)view padding:(CGFloat)padding;
- (NSLayoutConstraint *)alignLeftToView:(UIView *)view padding:(CGFloat)padding option:(NSLayoutRelation)option;

- (NSLayoutConstraint *)alignRightToView:(UIView *)view padding:(CGFloat)padding;
- (NSLayoutConstraint *)alignRightToView:(UIView *)view padding:(CGFloat)padding option:(NSLayoutRelation)option;

- (NSLayoutConstraint *)alignTopToView:(UIView *)view padding:(CGFloat)padding;
- (NSLayoutConstraint *)alignTopToView:(UIView *)view padding:(CGFloat)padding option:(NSLayoutRelation)option;

- (NSLayoutConstraint *)alignBottomToView:(UIView *)view padding:(CGFloat)padding;
- (NSLayoutConstraint *)alignBottomToView:(UIView *)view padding:(CGFloat)padding option:(NSLayoutRelation)option;



- (NSLayoutConstraint *)alignCenterHorizontallyToView:(UIView *)view;
- (NSLayoutConstraint *)alignCenterHorizontallyToView:(UIView *)view option:(NSLayoutRelation)option;

- (NSLayoutConstraint *)alignCenterHorizontallyToView:(UIView *)view extension:(CGFloat)extension;
- (NSLayoutConstraint *)alignCenterHorizontallyToView:(UIView *)view extension:(CGFloat)extension option:(NSLayoutRelation)option;

- (NSLayoutConstraint *)alignCenterVerticallyToView:(UIView *)view;
- (NSLayoutConstraint *)alignCenterVerticallyToView:(UIView *)view option:(NSLayoutRelation)option;

- (NSLayoutConstraint *)alignCenterVerticallyToView:(UIView *)view extension:(CGFloat)extension;
- (NSLayoutConstraint *)alignCenterVerticallyToView:(UIView *)view extension:(CGFloat)extension option:(NSLayoutRelation)option;

- (NSArray <NSLayoutConstraint *>*)alignCenterToView:(UIView *)view;
- (NSArray <NSLayoutConstraint *>*)alignCenterToView:(UIView *)view option:(NSLayoutRelation)option;

- (NSArray <NSLayoutConstraint *>*)alignCenterToView:(UIView *)view extensions:(CGSize)extensions;
- (NSArray <NSLayoutConstraint *>*)alignCenterToView:(UIView *)view extensions:(CGSize)extensions option:(NSLayoutRelation)option;



// Sizing
- (NSArray <NSLayoutConstraint *>*)matchSizeToView:(UIView *)view withExtensions:(CGSize)extensions;
- (NSArray <NSLayoutConstraint *>*)matchSizeToView:(UIView *)view withExtensions:(CGSize)extensions option:(NSLayoutRelation)option;

- (NSArray <NSLayoutConstraint *>*)matchSizeToView:(UIView *)view withPercentages:(CGSize)viewPercentages;
- (NSArray <NSLayoutConstraint *>*)matchSizeToView:(UIView *)view withPercentages:(CGSize)viewPercentages option:(NSLayoutRelation)option;

- (NSArray <NSLayoutConstraint *>*)matchSizeToView:(UIView *)view withPercentages:(CGSize)viewPercentages extensions:(CGSize)extensions;
- (NSArray <NSLayoutConstraint *>*)matchSizeToView:(UIView *)view withPercentages:(CGSize)viewPercentages extensions:(CGSize)extensions option:(NSLayoutRelation)option;

- (NSLayoutConstraint *)setLayoutWidth:(CGFloat)layoutWidth;
- (NSLayoutConstraint *)setLayoutWidth:(CGFloat)layoutWidth option:(NSLayoutRelation)option;
/**
 *  Match Width to View
 *
 *  @param view                view
 *  @param extension           the value added to the height
 *
 *  @return NSLayoutConstraint
 */
- (NSLayoutConstraint *)matchWidthToView:(UIView *)view withExtension:(CGFloat)extension;
- (NSLayoutConstraint *)matchWidthToView:(UIView *)view withExtension:(CGFloat)extension option:(NSLayoutRelation)option;
/**
 *  Match Width to View
 *
 *  @param view                view
 *  @param viewWidthPercentage a value ranging from 0.0f to ∞
 *
 *  @return NSLayoutConstraint
 */
- (NSLayoutConstraint *)matchWidthToView:(UIView *)view withPercentage:(CGFloat)viewWidthPercentage;
- (NSLayoutConstraint *)matchWidthToView:(UIView *)view withPercentage:(CGFloat)viewWidthPercentage option:(NSLayoutRelation)option;
/**
 *  Match Width to View
 *
 *  @param view                view
 *  @param viewWidthPercentage a value ranging from 0.0f to ∞
 *  @param extension           the value added to the height
 *
 *  @return NSLayoutConstraint
 */
- (NSLayoutConstraint *)matchWidthToView:(UIView *)view withPercentage:(CGFloat)viewWidthPercentage extension:(CGFloat)extension;
- (NSLayoutConstraint *)matchWidthToView:(UIView *)view withPercentage:(CGFloat)viewWidthPercentage extension:(CGFloat)extension option:(NSLayoutRelation)option;

- (NSLayoutConstraint *)setLayoutHeight:(CGFloat)layoutHeight;
- (NSLayoutConstraint *)setLayoutHeight:(CGFloat)layoutHeight option:(NSLayoutRelation)option;

/**
 *  Match Height To View
 *
 *  @param view      view
 *  @param extension the value added to the height
 *
 *  @return NSLayoutConstraint
 */
- (NSLayoutConstraint *)matchHeightToView:(UIView *)view withExtension:(CGFloat)extension;
- (NSLayoutConstraint *)matchHeightToView:(UIView *)view withExtension:(CGFloat)extension option:(NSLayoutRelation)option;
/**
 *  Match Height to View
 *
 *  @param view                 view
 *  @param viewHeightPercentage a value ranging from 0.0f to ∞
 *
 *  @return NSLayoutConstraint
 */
- (NSLayoutConstraint *)matchHeightToView:(UIView *)view withPercentage:(CGFloat)viewHeightPercentage;
- (NSLayoutConstraint *)matchHeightToView:(UIView *)view withPercentage:(CGFloat)viewHeightPercentage option:(NSLayoutRelation)option;
/**
 *  Match Height to View
 *
 *  @param view                 view
 *  @param viewHeightPercentage a value ranging from 0.0f to ∞
 *  @param extension            the value added to the height
 *
 *  @return NSLayoutConstraint
 */
- (NSLayoutConstraint *)matchHeightToView:(UIView *)view withPercentage:(CGFloat)viewHeightPercentage extension:(CGFloat)extension;
- (NSLayoutConstraint *)matchHeightToView:(UIView *)view withPercentage:(CGFloat)viewHeightPercentage extension:(CGFloat)extension option:(NSLayoutRelation)option;

- (NSArray <NSLayoutConstraint *>*)matchBoundsToView:(UIView *)view edgeInsets:(UIEdgeInsets)edgeInsets;
- (NSArray <NSLayoutConstraint *>*)matchBoundsToView:(UIView *)view edgeInsets:(UIEdgeInsets)edgeInsets option:(NSLayoutRelation)option;

- (NSLayoutConstraint *)matchAspectRatioToView:(UIView *)view;
- (NSLayoutConstraint *)matchAspectRatioToView:(UIView *)view withExtension:(CGFloat)extension;
- (NSLayoutConstraint *)matchAspectRatioToView:(UIView *)view withExtension:(CGFloat)extension option:(NSLayoutRelation)option;

- (NSLayoutConstraint *)setAspectRatioWithProportion:(CGFloat)proportion;
- (NSLayoutConstraint *)setAspectRatioWithProportion:(CGFloat)proportion withExtension:(CGFloat)extension;
- (NSLayoutConstraint *)setAspectRatioWithProportion:(CGFloat)proportion withExtension:(CGFloat)extension option:(NSLayoutRelation)option;

// Custom

- (NSLayoutConstraint *)matchAttribute:(NSLayoutAttribute)attr1 toItem:(UIView *)view attribute:(NSLayoutAttribute)attr2 multiplier:(CGFloat)multiplier constant:(CGFloat)c option:(NSLayoutRelation)option;
@end
