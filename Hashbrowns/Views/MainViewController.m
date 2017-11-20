#import "MainViewController.h"
#import "HashDisplayViewController.h"

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

- (void)prepareForSegue:(NSStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"DisplayHashes"]) {
        HashDisplayViewController *destination = [segue destinationController];
        destination.inputValue = [self.textArea stringValue];
    }
}
@end
