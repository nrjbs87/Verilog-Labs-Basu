/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xa0883be4 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "//ad/eng/users/n/r/nrjbasu/Desktop/Logic labs/Lab4/Debouncer.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {1U, 0U};
static int ng3[] = {1, 0};



static void Always_32_0(char *t0)
{
    char t16[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t17;
    char *t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    char *t26;

LAB0:    t1 = (t0 + 2984U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 3304);
    *((int *)t2) = 1;
    t3 = (t0 + 3016);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(33, ng0);
    t4 = (t0 + 1344U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB5;

LAB6:    xsi_set_current_line(47, ng0);

LAB19:    xsi_set_current_line(48, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1744);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(49, ng0);
    t2 = (t0 + 1904);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t16, 0, 8);
    xsi_vlog_unsigned_add(t16, 26, t4, 26, t5, 26);
    t11 = (t0 + 1904);
    xsi_vlogvar_assign_value(t11, t16, 0, 0, 26);

LAB7:    goto LAB2;

LAB5:    xsi_set_current_line(34, ng0);

LAB8:    xsi_set_current_line(35, ng0);
    t11 = (t0 + 1904);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t0 + 472);
    t15 = *((char **)t14);
    memset(t16, 0, 8);
    t14 = (t13 + 4);
    if (*((unsigned int *)t14) != 0)
        goto LAB10;

LAB9:    t17 = (t15 + 4);
    if (*((unsigned int *)t17) != 0)
        goto LAB10;

LAB13:    if (*((unsigned int *)t13) < *((unsigned int *)t15))
        goto LAB11;

LAB12:    t19 = (t16 + 4);
    t20 = *((unsigned int *)t19);
    t21 = (~(t20));
    t22 = *((unsigned int *)t16);
    t23 = (t22 & t21);
    t24 = (t23 != 0);
    if (t24 > 0)
        goto LAB14;

LAB15:    xsi_set_current_line(41, ng0);

LAB18:    xsi_set_current_line(42, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1744);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(43, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1904);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 26);

LAB16:    goto LAB7;

LAB10:    t18 = (t16 + 4);
    *((unsigned int *)t16) = 1;
    *((unsigned int *)t18) = 1;
    goto LAB12;

LAB11:    *((unsigned int *)t16) = 1;
    goto LAB12;

LAB14:    xsi_set_current_line(36, ng0);

LAB17:    xsi_set_current_line(37, ng0);
    t25 = ((char*)((ng1)));
    t26 = (t0 + 1744);
    xsi_vlogvar_assign_value(t26, t25, 0, 0, 1);
    xsi_set_current_line(38, ng0);
    t2 = (t0 + 1904);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t16, 0, 8);
    xsi_vlog_unsigned_add(t16, 26, t4, 26, t5, 26);
    t11 = (t0 + 1904);
    xsi_vlogvar_assign_value(t11, t16, 0, 0, 26);
    goto LAB16;

}


extern void work_m_00000000003791857241_1418117064_init()
{
	static char *pe[] = {(void *)Always_32_0};
	xsi_register_didat("work_m_00000000003791857241_1418117064", "isim/seven_seg_disoplay_test_isim_beh.exe.sim/work/m_00000000003791857241_1418117064.didat");
	xsi_register_executes(pe);
}
