//
//  main.m
//  KCObjc
//
//  Created by Cooci on 2020/7/24.
//  0x00007ffffffffff8ULL
#import <Foundation/Foundation.h>
#import "ZZPerson.h"
#import <objc/runtime.h>

//获取一个类中的所有方法并输出
void zzObjc_getMethodList(Class pClass){
    unsigned int count = 0;
    Method *methods = class_copyMethodList(pClass, &count);
    for (unsigned int i=0; i < count; i++) {
        Method const method = methods[i];
        //获取方法名
        NSString *key = NSStringFromSelector(method_getName(method));
        NSLog(@"\nMethod, name: %@", key);
    }
    free(methods);
}

void zzMethodInClass(Class pClass){
    /*
     - (void)testInstanceMethod0;
     - (void)testInstanceMethod1;
     + (void)testClassMethod0;
     + (void)testClassMethod1;
     */
    const char *className = class_getName(pClass);
    //获取pClass的元类
    Class metaClass = objc_getMetaClass(className);
    //在类对象中获取 testInstanceMethod0 实例方法
    Method method1 = class_getInstanceMethod(pClass, @selector(testInstanceMethod0));
    //在元类对象中获取 testInstanceMethod0 实例方法
    Method method2 = class_getInstanceMethod(metaClass, @selector(testInstanceMethod0));
    //在类对象中获取 testClassMethod0 实例方法
//    Method method3 = class_getInstanceMethod(pClass, @selector(testClassMethod0));
    Method method3 = class_getClassMethod(pClass, @selector(testClassMethod0));
    //在元类对象中获取 testClassMethod0 实例方法
    Method method4 = class_getInstanceMethod(metaClass, @selector(testClassMethod0));
    
    NSLog(@"\nmethod1：%p\nmethod2：%p\nmethod3：%p\nmethod4：%p",method1,method2,method3,method4);
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        NSObject *objc1 = [NSObject alloc];
        ZZPerson *person = [ZZPerson alloc];
        person.zz_name = @"zezefamily";
    
//        Class class = object_getClass(person);
//        zzMethodInClass(class);
        //我上岛咖啡就是垃圾分类圣诞节福利啥的 
        NSLog(@"xxxx");
        //这里我新添加了东细 老实交代发了几十块的房间里睡大觉

        //alksdjfljsdkfjsldkjf 添加 添加添加
        //分支写了ABCDEFG
        //新增ADALSKDJSLGHSKDLFJSDLKFJDSFS
        
        
    }
    return 0;
}
