/*
 * voucher_swap.h
 * Brandon Azad
 */
#ifndef VOUCHER_SWAP__VOUCHER_SWAP_H_
#define VOUCHER_SWAP__VOUCHER_SWAP_H_
#include <mach/mach.h>

/*
 * voucher_swap
 *
 * Description:
 * 	Run the voucher_swap exploit.
 */
mach_port_t voucher_swap(size_t ool_ports_spray_size);

#endif