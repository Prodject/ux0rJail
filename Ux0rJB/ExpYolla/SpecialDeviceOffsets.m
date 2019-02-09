#import <Foundation/Foundation.h>
#include <sys/sysctl.h>

#include "SpecialDeviceOffsets.h"
#include "vouncher_swap/voucher_swap/platform.h"

size_t ool;

void init_device_ID(void) {
    
    size_t size;
    int nR = sysctlbyname("hw.machine",NULL, &size,NULL,0);
    char *machine = (char*)malloc(size);
    nR = sysctlbyname("hw.machine", machine, &size,NULL,0);
    NSString *deviceString = [NSString stringWithCString:machine encoding:NSUTF8StringEncoding];
    free(machine);
    
    if ([deviceString isEqualToString:@"iPad7,3"] || [deviceString isEqualToString:@"iPad7,4"]) {
        ool = 0.25 * platform.memory_size;;
        return;
    }
    
    if ([deviceString isEqualToString:@"iPhone10,3"] || [deviceString isEqualToString:@"iPhone10,6"]) {
        ool = 0.25 * platform.memory_size;;
        return;
    }

    
}

//作者：为木子而来
//链接：https://www.jianshu.com/p/6a22f3d45234
//來源：简书
//简书著作权归作者所有，任何形式的转载都请联系作者获得授权并注明出处。

size_t read_ool_size(void) {
    platform_init();
    ool = -1;
    init_device_ID();
    return ool;
}
