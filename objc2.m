//
//  objc2.m
//  Objective-C 2.0
//

#import <Foundation/Foundation.h>
#import <dispatch/dispatch.h>

int main(int argc, const char * argv[])
{    
    @autoreleasepool {
        int multiplier = 7;
        int (^myBlock)(int) = ^(int num) {
            return num * multiplier;
        };
         
        NSLog(@"%d", myBlock(3));

        dispatch_queue_t queue = dispatch_queue_create(NULL, NULL);
        dispatch_sync(queue, ^{
            printf("Hello, world from a dispatch queue!\n");
        });

        dispatch_release(queue);        
    }           
    return 0;
}

