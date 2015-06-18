
#import <Foundation/Foundation.h>

@interface NZZAnalysis : NSObject

/**
 *  页面显示时调用
 *
 *  @param pageName 统计的页面名称
 */
+ (void)beginLogPageView:(NSString *)pageName;

/**
 *  页面消失时调用
 *
 *  @param pageName 统计页面的名称
 */
+ (void)endLogPageView:(NSString *)pageName;
/**
 *  初始化注册统计
 *
 *  @param key 第三方库Key值
 */
+ (void)startWithAppkey:(NSString *)key;

@end
