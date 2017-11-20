#import <Cocoa/Cocoa.h>

@interface HashDisplayViewController : NSViewController
@property (weak) IBOutlet NSTextField *md5Label;
@property (weak) IBOutlet NSTextField *sha1Label;
@property (weak) IBOutlet NSTextField *sha256Label;
@property (weak) IBOutlet NSTextField *base64Label;

@property (weak) IBOutlet NSTextField *md5ValueLabel;
@property (weak) IBOutlet NSTextField *sha1ValueLabel;
@property (weak) IBOutlet NSTextField *sha256ValueLabel;
@property (weak) IBOutlet NSTextField *base64ValueLabel;

/// The text content that is used to calculate the hash value to display.
/// This value is passed on the segue from the previous view controller
/// (i.e. the MainViewController).
@property (weak) NSString *inputValue;

@end
