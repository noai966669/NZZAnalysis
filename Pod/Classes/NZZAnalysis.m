
#import "NZZAnalysis.h"
#import <MobClick.h>

@implementation NZZAnalysis
/**
 *  将page的key值转化为value值，value值为页面名
 *
 *  @param key 在plist文件中页面的key值
 *
 *  @return 页面名
 */
+ (NSString *)key2Value:(NSString *)key{
    NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"customInfo_nameOfPage" ofType:@"plist"];
    NSDictionary *valuesOfKey=[[NSDictionary alloc] initWithContentsOfFile:plistPath];
    return [valuesOfKey valueForKey:key];
}

+ (void)beginLogPageView:(NSString *)key{
    [MobClick beginLogPageView:[self key2Value:key]];
}

+ (void)endLogPageView:(NSString *)key{
    [MobClick endLogPageView:[self key2Value:key]];
}

+ (void)startWithAppkey:(NSString *)key{
    [MobClick startWithAppkey:key reportPolicy:BATCH channelId:nil];
    [MobClick setLogEnabled:NO];
    [MobClick setCrashReportEnabled:NO];
}

@end
