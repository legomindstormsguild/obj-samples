#import <Foundation/Foundation.h>

@interface Container: NSObject
{
    NSString* _value;
}
@property(retain) NSString* value;
@end

	
@implementation Container

-(void)setValue:(NSString*)value {
    [value autorelease];
    [_value release];
    _value = value;
    [_value retain];
}

-(NSString*)value {
    return _value;
}
	
-(void)dealloc {
    [_value release];
    [super dealloc];
}

@end

int main (int argc, const char * argv[])
{
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    NSLog (@"Hello World");
        
    Container* container = [[[Container alloc]init]autorelease];
    container.value = @"it blend?";

    NSLog (@"Will %@",container.value);
    [pool drain];
    return 0;
}