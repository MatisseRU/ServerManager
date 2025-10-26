#ifndef UNIV_H
#define UNIV_H

/* Plateform independent includes */
#include <stdio.h>
#include <strings.h>


// PROGRAMMING, REMOVED WHEN PUSHING
//#define PLATEFORM_LINUX 1
//#define PLATEFORM_WINDOWS 1
// PROGRAMMING, REMOVED WHEN PUSHING

#ifdef PLATEFORM_LINUX
    #undef PLATEFORM_WINDOWS
    #include "../platforms/linux/linux.h"
#elif PLATEFORM_WINDOWS
    #undef PLATEFORM_LINUX
    #include "../platforms/windows/windows.h"
#endif





#endif