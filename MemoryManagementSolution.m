```objectivec
#import <Foundation/Foundation.h>

@interface MyClass : NSObject
@end

@implementation MyClass
- (void)dealloc {
    NSLog(@"MyClass deallocated");
    [super dealloc];
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        MyClass *obj = [[MyClass alloc] init];
        // ... use obj ...
        [obj release]; // Correctly release the object
    }
    return 0;
}

// Example of safe autorelease usage
- (void)someMethod {
    MyClass *anotherObj = [[[MyClass alloc] init] autorelease];
    // ... use anotherObj ...
    // No need to manually release; autorelease pool will handle it
}
```