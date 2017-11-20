#import "HashDisplayViewController.h"
#import "NSString+Hashes.h"

@interface HashDisplayViewController ()

@end

@implementation HashDisplayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _md5ValueLabel.stringValue = [self.inputValue md5];
    _sha1ValueLabel.stringValue = [self.inputValue sha1];
    _sha256ValueLabel.stringValue = [self.inputValue sha256];
    _base64ValueLabel.stringValue = [self.inputValue base64];
}

@end
