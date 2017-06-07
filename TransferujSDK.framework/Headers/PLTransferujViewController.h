#import <UIKit/UIKit.h>

@class WKWebView;
@class PLTransferujPayment;

@protocol PLTransferujPaymentDelegate <NSObject>

/***********************************
 ******* Payment did succeed.
 ***********************************/
- (void)transferujDidSucceedWithPayment:(PLTransferujPayment *)payment;

/***********************************
 ******* Payment failed.
 ***********************************/
- (void)transferujDidFailedWithPayment:(PLTransferujPayment *)payment;

@end

@interface PLTransferujViewController : UIViewController <UIWebViewDelegate>

/***********************************
 ******* Implement this delegate to get payment success/fail responses.
 ***********************************/
@property (weak, nonatomic) id<PLTransferujPaymentDelegate> delegate;

/***********************************
 ******* Set this property before before view presentation.
 ******* For seciurity purposes make sure you use MD5 hash instead security code.
 ******* Use security code only if there is no possibility to calculate MD5 on the server-side.
 ***********************************/
@property (weak, nonatomic) PLTransferujPayment *payment;

/***********************************
 ******* Creates default if not set.
 ***********************************/
@property (strong, nonatomic) UIActivityIndicatorView *activityIndicatorView;

@end
