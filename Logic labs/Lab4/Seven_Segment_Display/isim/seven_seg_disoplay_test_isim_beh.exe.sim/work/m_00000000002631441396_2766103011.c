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
static const char *ng0 = "//ad/eng/users/n/r/nrjbasu/Desktop/Logic labs/Lab4/seven_segment_driver.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {0U, 0U};
static unsigned int ng3[] = {14U, 0U};
static unsigned int ng4[] = {1U, 0U};
static unsigned int ng5[] = {13U, 0U};
static unsigned int ng6[] = {2U, 0U};
static unsigned int ng7[] = {11U, 0U};
static unsigned int ng8[] = {7U, 0U};



static void Always_37_0(char *t0)
{
    char t14[8];
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
    int t13;
    unsigned int t15;

LAB0:    t1 = (t0 + 3488U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 3808);
    *((int *)t2) = 1;
    t3 = (t0 + 3520);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(38, ng0);

LAB5:    xsi_set_current_line(39, ng0);
    t4 = (t0 + 1528U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(46, ng0);

LAB10:    xsi_set_current_line(48, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);

LAB11:    t5 = ((char*)((ng2)));
    t13 = xsi_vlog_unsigned_case_compare(t4, 2, t5, 2);
    if (t13 == 1)
        goto LAB12;

LAB13:    t2 = ((char*)((ng4)));
    t13 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t13 == 1)
        goto LAB14;

LAB15:    t2 = ((char*)((ng6)));
    t13 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t13 == 1)
        goto LAB16;

LAB17:
LAB19:
LAB18:    xsi_set_current_line(64, ng0);

LAB24:    xsi_set_current_line(65, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(66, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    memset(t14, 0, 8);
    t2 = (t14 + 4);
    t5 = (t3 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (t6 >> 12);
    *((unsigned int *)t14) = t7;
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 12);
    *((unsigned int *)t2) = t9;
    t10 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t10 & 15U);
    t15 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t15 & 15U);
    t11 = (t0 + 2248);
    xsi_vlogvar_assign_value(t11, t14, 0, 0, 4);
    xsi_set_current_line(67, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t11 = ((char*)((ng4)));
    memset(t14, 0, 8);
    xsi_vlog_unsigned_add(t14, 2, t5, 2, t11, 2);
    t12 = (t0 + 2568);
    xsi_vlogvar_assign_value(t12, t14, 0, 0, 2);

LAB20:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(40, ng0);

LAB9:    xsi_set_current_line(41, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 2408);
    xsi_vlogvar_assign_value(t12, t11, 0, 0, 4);
    xsi_set_current_line(42, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(43, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    goto LAB8;

LAB12:    xsi_set_current_line(49, ng0);

LAB21:    xsi_set_current_line(50, ng0);
    t11 = ((char*)((ng3)));
    t12 = (t0 + 2408);
    xsi_vlogvar_assign_value(t12, t11, 0, 0, 4);
    xsi_set_current_line(51, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    memset(t14, 0, 8);
    t2 = (t14 + 4);
    t5 = (t3 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (t6 >> 0);
    *((unsigned int *)t14) = t7;
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 0);
    *((unsigned int *)t2) = t9;
    t10 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t10 & 15U);
    t15 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t15 & 15U);
    t11 = (t0 + 2248);
    xsi_vlogvar_assign_value(t11, t14, 0, 0, 4);
    xsi_set_current_line(52, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t11 = ((char*)((ng4)));
    memset(t14, 0, 8);
    xsi_vlog_unsigned_add(t14, 2, t5, 2, t11, 2);
    t12 = (t0 + 2568);
    xsi_vlogvar_assign_value(t12, t14, 0, 0, 2);
    goto LAB20;

LAB14:    xsi_set_current_line(54, ng0);

LAB22:    xsi_set_current_line(55, ng0);
    t3 = ((char*)((ng5)));
    t5 = (t0 + 2408);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 4);
    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    memset(t14, 0, 8);
    t2 = (t14 + 4);
    t5 = (t3 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (t6 >> 4);
    *((unsigned int *)t14) = t7;
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 4);
    *((unsigned int *)t2) = t9;
    t10 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t10 & 15U);
    t15 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t15 & 15U);
    t11 = (t0 + 2248);
    xsi_vlogvar_assign_value(t11, t14, 0, 0, 4);
    xsi_set_current_line(57, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t11 = ((char*)((ng4)));
    memset(t14, 0, 8);
    xsi_vlog_unsigned_add(t14, 2, t5, 2, t11, 2);
    t12 = (t0 + 2568);
    xsi_vlogvar_assign_value(t12, t14, 0, 0, 2);
    goto LAB20;

LAB16:    xsi_set_current_line(59, ng0);

LAB23:    xsi_set_current_line(60, ng0);
    t3 = ((char*)((ng7)));
    t5 = (t0 + 2408);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 4);
    xsi_set_current_line(61, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    memset(t14, 0, 8);
    t2 = (t14 + 4);
    t5 = (t3 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (t6 >> 8);
    *((unsigned int *)t14) = t7;
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 8);
    *((unsigned int *)t2) = t9;
    t10 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t10 & 15U);
    t15 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t15 & 15U);
    t11 = (t0 + 2248);
    xsi_vlogvar_assign_value(t11, t14, 0, 0, 4);
    xsi_set_current_line(62, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t11 = ((char*)((ng4)));
    memset(t14, 0, 8);
    xsi_vlog_unsigned_add(t14, 2, t5, 2, t11, 2);
    t12 = (t0 + 2568);
    xsi_vlogvar_assign_value(t12, t14, 0, 0, 2);
    goto LAB20;

}


extern void work_m_00000000002631441396_2766103011_init()
{
	static char *pe[] = {(void *)Always_37_0};
	xsi_register_didat("work_m_00000000002631441396_2766103011", "isim/seven_seg_disoplay_test_isim_beh.exe.sim/work/m_00000000002631441396_2766103011.didat");
	xsi_register_executes(pe);
}
