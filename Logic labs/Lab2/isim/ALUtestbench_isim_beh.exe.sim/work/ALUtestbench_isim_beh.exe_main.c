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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000003630000996_1366144890_init();
    work_m_00000000003090230238_3334423463_init();
    work_m_00000000001991665089_1325424955_init();
    work_m_00000000001063236406_2192718384_init();
    work_m_00000000000911151292_1225149981_init();
    work_m_00000000002834362758_0886308060_init();
    work_m_00000000004145352888_4113489253_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000004145352888_4113489253");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
