//
//  UIView+Autolayout.m
//  Meniny
//
//  Created by Meniny on 2015-03-17.
//  Copyright (c) 2015 Meniny. All rights reserved.
//
//  Powerd by Meniny.
//  See http://www.meniny.cn/ for more informations.
//

#import "UIView+Autolayout.h"

NSLayoutRelation const kMXLEqual = NSLayoutRelationEqual;
NSLayoutRelation const kMXLLessThanOrEqual = NSLayoutRelationLessThanOrEqual;
NSLayoutRelation const kMXLGreaterThanOrEqual = NSLayoutRelationGreaterThanOrEqual;

@implementation UIView (Autolayout)

#pragma mark - Helper Function -

- (NSLayoutConstraint *)applyConstraint:(NSLayoutConstraint *)constraint {
    if(self.translatesAutoresizingMaskIntoConstraints) {
        [self setTranslatesAutoresizingMaskIntoConstraints:NO];
    }
    
    [self.superview addConstraint:constraint];
    return constraint;
}

#pragma mark - Alignment -
- (NSLayoutConstraint *)alignToRightOfView:(UIView *)view withPadding:(CGFloat)padding {
    return [self alignToRightOfView:view withPadding:padding option:kMXLEqual];
}

- (NSLayoutConstraint *)alignToRightOfView:(UIView *)view withPadding:(CGFloat)padding option:(NSLayoutRelation)option {
    return [self applyConstraint:[NSLayoutConstraint constraintWithItem:self
                                                       attribute:NSLayoutAttributeLeft
                                                       relatedBy:option
                                                          toItem:view
                                                       attribute:NSLayoutAttributeRight
                                                      multiplier:1.0f
                                                        constant:padding]];
}

- (NSLayoutConstraint *)alignToLeftOfView:(UIView *)view withPadding:(CGFloat)padding {
    return [self alignToLeftOfView:view withPadding:padding option:kMXLEqual];
}

- (NSLayoutConstraint *)alignToLeftOfView:(UIView *)view withPadding:(CGFloat)padding option:(NSLayoutRelation)option {
    return [self applyConstraint:[NSLayoutConstraint constraintWithItem:self
                                                       attribute:NSLayoutAttributeRight
                                                       relatedBy:option
                                                          toItem:view
                                                       attribute:NSLayoutAttributeLeft
                                                      multiplier:1.0f
                                                        constant:-padding]];
}

- (NSLayoutConstraint *)alignToBottomOfView:(UIView *)view withPadding:(CGFloat)padding {
    return [self alignBelowView:view withPadding:padding];
}

- (NSLayoutConstraint *)alignToBottomOfView:(UIView *)view withPadding:(CGFloat)padding option:(NSLayoutRelation)option {
    return [self alignBelowView:view withPadding:padding option:option];
}

- (NSLayoutConstraint *)alignToTopOfView:(UIView *)view withPadding:(CGFloat)padding {
    return [self alignAboveView:view withPadding:padding];
}

- (NSLayoutConstraint *)alignToTopOfView:(UIView *)view withPadding:(CGFloat)padding option:(NSLayoutRelation)option {
    return [self alignAboveView:view withPadding:padding option:option];
}

- (NSLayoutConstraint *)alignBelowView:(UIView *)view withPadding:(CGFloat)padding {
    return [self alignBelowView:view withPadding:padding option:kMXLEqual];
}

- (NSLayoutConstraint *)alignBelowView:(UIView *)view withPadding:(CGFloat)padding option:(NSLayoutRelation)option {
    return [self applyConstraint:[NSLayoutConstraint constraintWithItem:self
                                                              attribute:NSLayoutAttributeTop
                                                              relatedBy:option
                                                                 toItem:view
                                                              attribute:NSLayoutAttributeBottom
                                                             multiplier:1.0f
                                                               constant:padding]];
}

- (NSLayoutConstraint *)alignAboveView:(UIView *)view withPadding:(CGFloat)padding {
    return [self alignAboveView:view withPadding:padding option:kMXLEqual];
}

- (NSLayoutConstraint *)alignAboveView:(UIView *)view withPadding:(CGFloat)padding option:(NSLayoutRelation)option {
    return [self applyConstraint:[NSLayoutConstraint constraintWithItem:self
                                                              attribute:NSLayoutAttributeBottom
                                                              relatedBy:option
                                                                 toItem:view
                                                              attribute:NSLayoutAttributeTop
                                                             multiplier:1.0f
                                                               constant:-padding]];
}

#pragma mark - Positioning -

- (NSArray <NSLayoutConstraint *>*)alignOriginWithPadding:(CGPoint)padding {
    return [self alignOriginToView:self.superview padding:padding];
}

- (NSArray<NSLayoutConstraint *> *)alignOriginWithPadding:(CGPoint)padding option:(NSLayoutRelation)option {
    return [self alignOriginToView:self.superview padding:padding option:option];
}

- (NSLayoutConstraint *)alignLeftToLayoutPosition:(CGFloat)position {
    return [self alignLeftToView:self.superview padding:position];
}

- (NSLayoutConstraint *)alignLeftToLayoutPosition:(CGFloat)position option:(NSLayoutRelation)option {
    return [self alignLeftToView:self.superview padding:position option:option];
}

- (NSLayoutConstraint *)alignRightToSuperviewWithPadding:(CGFloat)padding {
    return [self alignRightToView:self.superview padding:padding];
}

- (NSLayoutConstraint *)alignRightToSuperviewWithPadding:(CGFloat)padding option:(NSLayoutRelation)option {
    return [self alignRightToView:self.superview padding:padding option:option];
}

- (NSLayoutConstraint *)alignTopToLayoutPosition:(CGFloat)position {
    return [self alignTopToView:self.superview padding:position];
}

- (NSLayoutConstraint *)alignTopToLayoutPosition:(CGFloat)position option:(NSLayoutRelation)option {
    return [self alignTopToView:self.superview padding:position option:option];
}

- (NSLayoutConstraint *)alignBottomToSuperviewWithPadding:(CGFloat)padding {
    return [self alignBottomToView:self.superview padding:padding];
}

- (NSLayoutConstraint *)alignBottomToSuperviewWithPadding:(CGFloat)padding option:(NSLayoutRelation)option {
    return [self alignBottomToView:self.superview padding:padding option:option];
}

- (NSLayoutConstraint *)alignCenterHorizontally {
    return [self alignCenterHorizontallyWithOption:kMXLEqual];
}

- (NSLayoutConstraint *)alignCenterHorizontallyWithOption:(NSLayoutRelation)option {
    return [self alignCenterHorizontallyToView:self.superview option:option];
}

- (NSLayoutConstraint *)alignCenterHorizontallyWithExtension:(CGFloat)extension {
    return [self alignCenterHorizontallyWithExtension:extension option:kMXLEqual];
}

- (NSLayoutConstraint *)alignCenterHorizontallyWithExtension:(CGFloat)extension option:(NSLayoutRelation)option {
    return [self alignCenterHorizontallyToView:self.superview extension:extension option:option];
}

- (NSLayoutConstraint *)alignCenterVertically {
    return [self alignCenterVerticallyWithOption:kMXLEqual];
}

- (NSLayoutConstraint *)alignCenterVerticallyWithOption:(NSLayoutRelation)option {
    return [self alignCenterVerticallyToView:self.superview option:option];
}

- (NSLayoutConstraint *)alignCenterVerticallyWithExtension:(CGFloat)extension {
    return [self alignCenterVerticallyWithExtension:extension option:kMXLEqual];
}

- (NSLayoutConstraint *)alignCenterVerticallyWithExtension:(CGFloat)extension option:(NSLayoutRelation)option {
    return [self alignCenterVerticallyToView:self.superview extension:extension option:option];
}

// #############

- (NSArray <NSLayoutConstraint *>*)alignOriginToView:(UIView *)view padding:(CGPoint)padding {
    return [self alignOriginToView:view padding:padding option:kMXLEqual];
}

- (NSArray <NSLayoutConstraint *>*)alignOriginToView:(UIView *)view padding:(CGPoint)padding option:(NSLayoutRelation)option {
    NSLayoutConstraint *left = [self alignLeftToView:view padding:padding.x option:option];
    NSLayoutConstraint *top = [self alignTopToView:view padding:padding.y option:option];
    return @[left, top];
}

- (NSLayoutConstraint *)alignLeftToView:(UIView *)view padding:(CGFloat)padding {
    return [self alignLeftToView:view padding:padding option:kMXLEqual];
}

- (NSLayoutConstraint *)alignLeftToView:(UIView *)view padding:(CGFloat)padding option:(NSLayoutRelation)option {
    return [self applyConstraint:[NSLayoutConstraint constraintWithItem:self
                                                       attribute:NSLayoutAttributeLeft
                                                       relatedBy:option
                                                          toItem:view
                                                       attribute:NSLayoutAttributeLeft
                                                      multiplier:1.0f
                                                        constant:padding]];
}

- (NSLayoutConstraint *)alignRightToView:(UIView *)view padding:(CGFloat)padding {
    return [self alignRightToView:view padding:padding option:kMXLEqual];
}

- (NSLayoutConstraint *)alignRightToView:(UIView *)view padding:(CGFloat)padding option:(NSLayoutRelation)option {
    return [self applyConstraint:[NSLayoutConstraint constraintWithItem:self
                                                       attribute:NSLayoutAttributeRight
                                                       relatedBy:option
                                                          toItem:view
                                                       attribute:NSLayoutAttributeRight
                                                      multiplier:1.0f
                                                        constant:-padding]];
}

- (NSLayoutConstraint *)alignTopToView:(UIView *)view padding:(CGFloat)padding {
    return [self alignTopToView:view padding:padding option:kMXLEqual];
}

- (NSLayoutConstraint *)alignTopToView:(UIView *)view padding:(CGFloat)padding option:(NSLayoutRelation)option {
    return [self applyConstraint:[NSLayoutConstraint constraintWithItem:self
                                                       attribute:NSLayoutAttributeTop
                                                       relatedBy:option
                                                          toItem:view
                                                       attribute:NSLayoutAttributeTop
                                                      multiplier:1.0f
                                                        constant:padding]];
}

- (NSLayoutConstraint *)alignBottomToView:(UIView *)view padding:(CGFloat)padding {
    return [self alignBottomToView:view padding:padding option:kMXLEqual];
}

- (NSLayoutConstraint *)alignBottomToView:(UIView *)view padding:(CGFloat)padding option:(NSLayoutRelation)option {
    return [self applyConstraint:[NSLayoutConstraint constraintWithItem:self
                                                       attribute:NSLayoutAttributeBottom
                                                       relatedBy:option
                                                          toItem:view
                                                       attribute:NSLayoutAttributeBottom
                                                      multiplier:1.0f
                                                        constant:-padding]];
}

- (NSLayoutConstraint *)alignCenterHorizontallyToView:(UIView *)view {
    return [self alignCenterHorizontallyToView:view option:kMXLEqual];
}

- (NSLayoutConstraint *)alignCenterHorizontallyToView:(UIView *)view option:(NSLayoutRelation)option {
    return [self alignCenterHorizontallyToView:view extension:0.0f option:option];
}

- (NSLayoutConstraint *)alignCenterHorizontallyToView:(UIView *)view extension:(CGFloat)extension {
    return [self alignCenterHorizontallyToView:view extension:extension option:kMXLEqual];
}

- (NSLayoutConstraint *)alignCenterHorizontallyToView:(UIView *)view extension:(CGFloat)extension option:(NSLayoutRelation)option {
    return [self applyConstraint:[NSLayoutConstraint constraintWithItem:self
                                                              attribute:NSLayoutAttributeCenterX
                                                              relatedBy:option
                                                                 toItem:view
                                                              attribute:NSLayoutAttributeCenterX
                                                             multiplier:1.0f
                                                               constant:extension]];
}

- (NSLayoutConstraint *)alignCenterVerticallyToView:(UIView *)view {
    return [self alignCenterVerticallyToView:view option:kMXLEqual];
}

- (NSLayoutConstraint *)alignCenterVerticallyToView:(UIView *)view option:(NSLayoutRelation)option {
    return [self alignCenterVerticallyToView:view extension:0.0f option:kMXLEqual];
}

- (NSLayoutConstraint *)alignCenterVerticallyToView:(UIView *)view extension:(CGFloat)extension {
    return [self alignCenterVerticallyToView:view extension:extension option:kMXLEqual];
}

- (NSLayoutConstraint *)alignCenterVerticallyToView:(UIView *)view extension:(CGFloat)extension option:(NSLayoutRelation)option {
    return [self applyConstraint:[NSLayoutConstraint constraintWithItem:self
                                                              attribute:NSLayoutAttributeCenterY
                                                              relatedBy:option
                                                                 toItem:view
                                                              attribute:NSLayoutAttributeCenterY
                                                             multiplier:1.0f
                                                               constant:extension]];
}

- (NSArray <NSLayoutConstraint *> *)alignCenter {
    return [self alignCenterWithOption:kMXLEqual];
}

- (NSArray <NSLayoutConstraint *> *)alignCenterWithOption:(NSLayoutRelation)option {
    return [self alignCenterWithExtensions:CGSizeZero option:option];
}

- (NSArray<NSLayoutConstraint *> *)alignCenterWithExtensions:(CGSize)extensions {
    return [self alignCenterWithExtensions:extensions option:kMXLEqual];
}

- (NSArray<NSLayoutConstraint *> *)alignCenterWithExtensions:(CGSize)extensions option:(NSLayoutRelation)option {
    NSLayoutConstraint *h = [self alignCenterHorizontallyWithExtension:extensions.width option:option];
    NSLayoutConstraint *v = [self alignCenterVerticallyWithExtension:extensions.height option:option];
    return @[h, v];
}

- (NSArray <NSLayoutConstraint *>*)alignCenterToView:(UIView *)view {
    return [self alignCenterToView:view option:kMXLEqual];
}

- (NSArray <NSLayoutConstraint *>*)alignCenterToView:(UIView *)view option:(NSLayoutRelation)option {
    return [self alignCenterToView:view extensions:CGSizeZero option:option];
}

- (NSArray <NSLayoutConstraint *>*)alignCenterToView:(UIView *)view extensions:(CGSize)extensions {
    return [self alignCenterToView:view option:kMXLEqual];
}

- (NSArray <NSLayoutConstraint *>*)alignCenterToView:(UIView *)view extensions:(CGSize)extensions option:(NSLayoutRelation)option {
    NSLayoutConstraint *h = [self alignCenterHorizontallyToView:view extension:extensions.width option:option];
    NSLayoutConstraint *v = [self alignCenterVerticallyToView:view extension:extensions.height option:option];
    return @[h, v];
}

#pragma mark - Sizing -

- (NSArray <NSLayoutConstraint *>*)matchSizeToView:(UIView *)view withExtensions:(CGSize)extensions {
    return [self matchSizeToView:view withExtensions:extensions option:kMXLEqual];
}

- (NSArray <NSLayoutConstraint *>*)matchSizeToView:(UIView *)view withExtensions:(CGSize)extensions option:(NSLayoutRelation)option {
    NSLayoutConstraint *w = [self matchWidthToView:view withExtension:extensions.width option:option];
    NSLayoutConstraint *h = [self matchHeightToView:view withExtension:extensions.height option:option];
    return @[w, h];
}

- (NSArray <NSLayoutConstraint *>*)matchSizeToView:(UIView *)view withPercentages:(CGSize)viewPercentages {
    return [self matchSizeToView:view withPercentages:viewPercentages option:kMXLEqual];
}

- (NSArray <NSLayoutConstraint *>*)matchSizeToView:(UIView *)view withPercentages:(CGSize)viewPercentages option:(NSLayoutRelation)option {
    NSLayoutConstraint *w = [self matchWidthToView:view withPercentage:viewPercentages.width option:option];
    NSLayoutConstraint *h = [self matchHeightToView:view withPercentage:viewPercentages.height option:option];
    return @[w, h];
}

- (NSArray <NSLayoutConstraint *>*)matchSizeToView:(UIView *)view withPercentages:(CGSize)viewPercentages extensions:(CGSize)extensions {
    return [self matchSizeToView:view withPercentages:viewPercentages extensions:extensions option:kMXLEqual];
}

- (NSArray <NSLayoutConstraint *>*)matchSizeToView:(UIView *)view withPercentages:(CGSize)viewPercentages extensions:(CGSize)extensions option:(NSLayoutRelation)option {
    NSLayoutConstraint *w = [self matchWidthToView:view withPercentage:viewPercentages.width extension:extensions.width option:option];
    NSLayoutConstraint *h = [self matchHeightToView:view withPercentage:viewPercentages.height extension:extensions.height option:option];
    return @[w, h];
}

- (NSLayoutConstraint *)setLayoutWidth:(CGFloat)layoutWidth {
    return [self setLayoutWidth:layoutWidth option:kMXLEqual];
}

- (NSLayoutConstraint *)setLayoutWidth:(CGFloat)layoutWidth option:(NSLayoutRelation)option {
    return [self applyConstraint:[NSLayoutConstraint constraintWithItem:self
                                                       attribute:NSLayoutAttributeWidth
                                                       relatedBy:option
                                                          toItem:nil
                                                       attribute:NSLayoutAttributeWidth
                                                      multiplier:0.0f
                                                        constant:layoutWidth]];
}

- (NSLayoutConstraint *)matchWidthToView:(UIView *)view withExtension:(CGFloat)extension {
    return [self matchWidthToView:view withExtension:extension option:kMXLEqual];
}

- (NSLayoutConstraint *)matchWidthToView:(UIView *)view withExtension:(CGFloat)extension option:(NSLayoutRelation)option {
    return [self matchWidthToView:view withPercentage:1.0f extension:extension option:option];
}

- (NSLayoutConstraint *)matchWidthToView:(UIView *)view withPercentage:(CGFloat)viewWidthPercentage {
    return [self matchWidthToView:view withPercentage:viewWidthPercentage option:kMXLEqual];
}

- (NSLayoutConstraint *)matchWidthToView:(UIView *)view withPercentage:(CGFloat)viewWidthPercentage option:(NSLayoutRelation)option {
    return [self matchWidthToView:view withPercentage:viewWidthPercentage extension:0.0f option:option];
}

- (NSLayoutConstraint *)matchWidthToView:(UIView *)view withPercentage:(CGFloat)viewWidthPercentage extension:(CGFloat)extension {
    return [self matchWidthToView:view withPercentage:viewWidthPercentage extension:extension option:kMXLEqual];
}

- (NSLayoutConstraint *)matchWidthToView:(UIView *)view withPercentage:(CGFloat)viewWidthPercentage extension:(CGFloat)extension option:(NSLayoutRelation)option {
    return [self applyConstraint:[NSLayoutConstraint constraintWithItem:self
                                                              attribute:NSLayoutAttributeWidth
                                                              relatedBy:option
                                                                 toItem:view
                                                              attribute:NSLayoutAttributeWidth
                                                             multiplier:viewWidthPercentage
                                                               constant:extension]];
}

//- (NSLayoutConstraint *)matchWidthToRightOfView:(UIView *)view withExtension:(CGFloat)extension {
//    return [self matchWidthToRightOfView:view withExtension:extension option:kMXLEqual];
//}
//
//- (NSLayoutConstraint *)matchWidthToRightOfView:(UIView *)view withExtension:(CGFloat)extension option:(NSLayoutRelation)option {
//    return [self applyConstraint:[NSLayoutConstraint constraintWithItem:self
//                                                       attribute:NSLayoutAttributeWidth
//                                                       relatedBy:option
//                                                          toItem:view
//                                                       attribute:NSLayoutAttributeRight
//                                                      multiplier:1.0f
//                                                        constant:extension]];
//}

- (NSLayoutConstraint *)setLayoutHeight:(CGFloat)layoutHeight {
    return [self setLayoutHeight:layoutHeight option:kMXLEqual];
}

- (NSLayoutConstraint *)setLayoutHeight:(CGFloat)layoutHeight option:(NSLayoutRelation)option {
    return [self applyConstraint:[NSLayoutConstraint constraintWithItem:self
                                                       attribute:NSLayoutAttributeHeight
                                                       relatedBy:option
                                                          toItem:nil
                                                       attribute:NSLayoutAttributeHeight
                                                      multiplier:0.0f
                                                        constant:layoutHeight]];
}

- (NSLayoutConstraint *)matchHeightToView:(UIView *)view withExtension:(CGFloat)extension {
    return [self matchHeightToView:view withExtension:extension option:kMXLEqual];
}

- (NSLayoutConstraint *)matchHeightToView:(UIView *)view withExtension:(CGFloat)extension option:(NSLayoutRelation)option {
    return [self matchHeightToView:view withPercentage:1.0f extension:extension option:option];
}

- (NSLayoutConstraint *)matchHeightToView:(UIView *)view withPercentage:(CGFloat)viewHeightPercentage {
    return [self matchHeightToView:view withPercentage:viewHeightPercentage option:kMXLEqual];
}

- (NSLayoutConstraint *)matchHeightToView:(UIView *)view withPercentage:(CGFloat)viewHeightPercentage option:(NSLayoutRelation)option {
    return [self matchHeightToView:view withPercentage:viewHeightPercentage extension:0.0f option:option];
}

- (NSLayoutConstraint *)matchHeightToView:(UIView *)view withPercentage:(CGFloat)viewHeightPercentage extension:(CGFloat)extension {
    return [self matchWidthToView:view withPercentage:viewHeightPercentage extension:extension option:kMXLEqual];
}

- (NSLayoutConstraint *)matchHeightToView:(UIView *)view withPercentage:(CGFloat)viewHeightPercentage extension:(CGFloat)extension option:(NSLayoutRelation)option {
    return [self applyConstraint:[NSLayoutConstraint constraintWithItem:self
                                                              attribute:NSLayoutAttributeHeight
                                                              relatedBy:option
                                                                 toItem:view
                                                              attribute:NSLayoutAttributeHeight
                                                             multiplier:viewHeightPercentage
                                                               constant:extension]];
}

//- (NSLayoutConstraint *)matchHeightToBottomOfView:(UIView *)view withExtension:(CGFloat)extension {
//    return [self applyConstraint:[NSLayoutConstraint constraintWithItem:self
//                                                       attribute:NSLayoutAttributeHeight
//                                                       relatedBy:NSLayoutRelationEqual
//                                                          toItem:view
//                                                       attribute:NSLayoutAttributeBottom
//                                                      multiplier:1.0f
//                                                        constant:extension]];
//}

- (NSArray <NSLayoutConstraint *>*)matchBoundsToView:(UIView *)view edgeInsets:(UIEdgeInsets)edgeInsets {
    return [self matchBoundsToView:view edgeInsets:edgeInsets option:kMXLEqual];
}

- (NSArray <NSLayoutConstraint *>*)matchBoundsToView:(UIView *)view edgeInsets:(UIEdgeInsets)edgeInsets option:(NSLayoutRelation)option {
    NSArray <NSLayoutConstraint *>*origin = [self alignOriginToView:view padding:CGPointMake(edgeInsets.left, edgeInsets.top) option:option];
    NSArray <NSLayoutConstraint *>*size = [self matchSizeToView:view withExtensions:CGSizeMake(-(edgeInsets.left + edgeInsets.right), -(edgeInsets.top + edgeInsets.bottom)) option:option];
    return @[origin[0], origin[1], size[0], size[1]];
}

#pragma mark Aspect Ratio

- (NSLayoutConstraint *)matchAspectRatioToView:(UIView *)view {
    return [self matchAspectRatioToView:view withExtension:0.0f];
}

- (NSLayoutConstraint *)matchAspectRatioToView:(UIView *)view withExtension:(CGFloat)extension {
    return [self matchAspectRatioToView:view withExtension:extension option:kMXLEqual];
}

- (NSLayoutConstraint *)matchAspectRatioToView:(UIView *)view withExtension:(CGFloat)extension option:(NSLayoutRelation)option {
    return [self matchAttribute:NSLayoutAttributeWidth toItem:view attribute:NSLayoutAttributeHeight multiplier:1.000f constant:extension option:option];
}

- (NSLayoutConstraint *)setAspectRatioWithProportion:(CGFloat)proportion {
    return [self setAspectRatioWithProportion:proportion withExtension:0.0f];
}

- (NSLayoutConstraint *)setAspectRatioWithProportion:(CGFloat)proportion withExtension:(CGFloat)extension {
    return [self setAspectRatioWithProportion:proportion withExtension:extension option:kMXLEqual];
}

- (NSLayoutConstraint *)setAspectRatioWithProportion:(CGFloat)proportion withExtension:(CGFloat)extension option:(NSLayoutRelation)option {
    return [self matchAttribute:NSLayoutAttributeWidth toItem:self attribute:NSLayoutAttributeHeight multiplier:proportion constant:extension option:option];
}

#pragma mark Custom

- (NSLayoutConstraint *)matchAttribute:(NSLayoutAttribute)attr1 toItem:(UIView *)view attribute:(NSLayoutAttribute)attr2 multiplier:(CGFloat)multiplier constant:(CGFloat)c option:(NSLayoutRelation)option {
    return [self applyConstraint:[NSLayoutConstraint constraintWithItem:self
                                                              attribute:attr1
                                                              relatedBy:option
                                                                 toItem:view
                                                              attribute:attr2
                                                             multiplier:multiplier
                                                               constant:c]];
}

@end
