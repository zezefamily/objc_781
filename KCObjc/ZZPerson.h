//
//  ZZPerson.h
//  KCObjc
//
//  Created by 泽泽 on 2020/9/14.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZZPerson : NSObject
{
    NSString *nickName;
}
@property (nonatomic,copy) NSString *zz_name;

- (void)testInstanceMethod0;
- (void)testInstanceMethod1;

+ (void)testClassMethod0;
+ (void)testClassMethod1;

@end

NS_ASSUME_NONNULL_END
