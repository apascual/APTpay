#import <UIKit/UIKit.h>

@class PLTransferujPayment;

@protocol PLTransferujPaymentDelegate <NSObject>
- (void)transferujDidSucceedWithPayment:(PLTransferujPayment *)payment;
- (void)transferujDidFailedWithPayment:(PLTransferujPayment *)payment;
@end

@interface PLTransferujViewController : UIViewController <UIWebViewDelegate>

@property (nonatomic, weak) id<PLTransferujPaymentDelegate> delegate;
@property (nonatomic, weak) PLTransferujPayment *payment;

@property (nonatomic, weak) IBOutlet UIWebView *webView;
@property (nonatomic, weak) IBOutlet UIActivityIndicatorView *activityIndicatorView;

@end
