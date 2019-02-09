#ifndef kmem_h
#define kmem_h

#include <mach/port.h>
#include <stdint.h>

extern uint64_t task_port_kaddr;
extern mach_port_t tfp0;

#define IO_BITS_ACTIVE 0x80000000
#define IKOT_TASK 2
#define IKOT_NONE 0

void increase_limits(void);
void prepare_for_rw_with_fake_tfp0(mach_port_t fake_tfp0);

uint32_t rk32(uint64_t kaddr);
uint64_t rk64(uint64_t kaddr);

void wk32(uint64_t kaddr, uint32_t val);
void wk64(uint64_t kaddr, uint64_t val);

#endif
