//
//  testdelegate.h
//  testdelegate
//
//  Created by kangyu on 2020/6/26.
//  Copyright © 2020 kangyu. All rights reserved.
//

//#import <Foundation/Foundation.h>
//
//NS_ASSUME_NONNULL_BEGIN
//
//@protocol testdelegate <NSObject>
//
//@end
//
//NS_ASSUME_NONNULL_END

#import <Foundation/Foundation.h>

@protocol PrintProtocolDelegate
- (void)processCompleted;

@end

@interface PrintClass :NSObject {
   id delegate;
}

- (void) printDetails;
- (void) setDelegate:(id)newDelegate;
@end



@interface SampleClass:NSObject<PrintProtocolDelegate>
- (void)startAction;

@end


@implementation PrintClass
- (void)printDetails {
   NSLog(@"Printing Details");
   [delegate processCompleted];
}

- (void) setDelegate:(id)newDelegate {
   delegate = newDelegate;
}

@end

@implementation SampleClass
- (void)startAction {
   PrintClass *printClass = [[PrintClass alloc]init];
   [printClass setDelegate:self];
   [printClass printDetails];
}

-(void)processCompleted {
   NSLog(@"Printing Process Completed");
}

@end
