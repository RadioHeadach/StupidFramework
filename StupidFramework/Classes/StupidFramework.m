//
// Created by Bowjob David on 2023/4/21.
//

#import "StupidFramework.h"
#import <UIKit/UIKit.h>

@implementation StupidFramework

- (void)stupid {
    NSLog(@"HOW STUPID YOU ARE");
}

- (UIImage *)stupidPic {
    UIImage *img = [UIImage imageNamed:@"6569431_and_application_applications_code_coding_icon"];
    NSLog(NSStringFromCGSize(img.size));
    return img;
}

- (NSString *)stupidJson {
    return [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"Stupid" ofType:@"json"]] options:kNilOptions error:nil];
}
@end