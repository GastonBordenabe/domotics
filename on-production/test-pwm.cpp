#include "dimmer_ctl.h"
#include <time.h>
#include <iostream>
//#include <fstream>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h> //for usleep
#include "GPIO.h"


#include <prussdrv.h>
#include <pruss_intc_mapping.h>

#define PRU_NUM 0
static void *pru0DataMemory;
static unsigned int *pru0DataMemory_int;


using namespace lighting;
using namespace std;
using namespace exploringBB;

unsigned int diff(timespec start, timespec end)
{ // returns milliseconds
  unsigned int temp;
  if ((end.tv_nsec-start.tv_nsec)<0) {
    temp = end.tv_sec-start.tv_sec-1;
    temp = (1000000000+end.tv_nsec-start.tv_nsec)/1000000 + temp*1000;
  } else {
    temp = end.tv_sec-start.tv_sec;
    temp = (end.tv_nsec-start.tv_nsec)/1000000 + temp*1000;
  }
  return temp;
}


int main(int argc, char *argv[])
{
  if(getuid()!=0){
    printf("You must run this program as root. Exiting.\n");
    exit(EXIT_FAILURE);
  }

  mosqpp::lib_init();


  GPIO SW1(4); //gpio1[28] | P9_12
  GPIO SW2(51);
  GPIO SW3(50);
  GPIO SW4(60);
  GPIO SW5(115); // Cocina quincho
  GPIO BELL(14); // Timbre


  SW1.setDirection(INPUT);
  SW2.setDirection(INPUT);
  SW3.setDirection(INPUT);
  SW4.setDirection(INPUT);
  SW5.setDirection(INPUT);
  BELL.setDirection(INPUT);


  DIMMER LT1((char *)"autohome", (char *)"localhost", 1883, (char *)"LT1"); // Patio
  DIMMER LT2((char *)"aut2", (char *)"localhost", 1883, (char *)"LT2");  // Salon quincho
  DIMMER LT3((char *)"aut3", (char *)"localhost", 1883, (char *)"LT3");  // Ingreso quincho
  DIMMER LT4((char *)"aut4", (char *)"localhost", 1883, (char *)"LT4");  // Baño
  DIMMER LT5((char *)"aut5", (char *)"localhost", 1883, (char *)"LT5"); // Cocina quincho

  unsigned int previus_scan;
  timespec prevt, actualt;


  // Initialize structure used by prussdrv_pruintc_intc
  // PRUSS_INTC_INITDATA is found in pruss_intc_mapping.h
  tpruss_intc_initdata pruss_intc_initdata = PRUSS_INTC_INITDATA;

  // Allocate and initialize memory
  prussdrv_init ();
  prussdrv_open (PRU_EVTOUT_0);

  // Map PRU's INTC
  prussdrv_pruintc_init(&pruss_intc_initdata);

  // place the samples in memory
  prussdrv_map_prumem(PRUSS0_PRU0_DATARAM, &pru0DataMemory);
  pru0DataMemory_int = (unsigned int *) pru0DataMemory;

  // Load and execute binary on PRU
  prussdrv_exec_program (PRU_NUM, "/pru2/pwm.bin");




  for (int r = 0; r<32; r++)
    *(pru0DataMemory_int+r) = 0;

  do{
    clock_gettime(CLOCK_MONOTONIC, &actualt);
    previus_scan = diff(prevt, actualt);
    prevt = actualt;

    int bell = BELL.getValue();
    LT1.dloop(SW1.getValue(), previus_scan, bell); // Patio
    LT2.dloop(SW2.getValue(), previus_scan, bell); // Salon quincho
    LT3.dloop(SW3.getValue(), previus_scan, bell); // Ingreso quincho
    LT4.dloop(SW4.getValue(), previus_scan, bell); // Baño quincho
    LT5.dloop(SW5.getValue(), previus_scan, bell); // Cocina quincho


    //    cout << SW1.getValue() << endl;


    // SLOT 10 {47, 27, 22, 62}
    // GPIO 27
    unsigned int LTDuty = LT1.getDuty(); // Patio quincho
    *(pru0DataMemory_int+5) = LTDuty; //P8_17

    // GPIO 47
    LTDuty = LT2.getDuty();          // Salon quincho
    *(pru0DataMemory_int+13) = LTDuty;

    // GPIO 22
    LTDuty = LT3.getDuty();  // Ingreso quincho
    *(pru0DataMemory_int+2) = LTDuty;

    // GPIO 62
    LTDuty = LT4.getDuty(); // Baño quincho
    *(pru0DataMemory_int+17) = LTDuty;


    // SLOT 9 {36, 32, 86, 87}
    // GPIO 36  Cocina Quincho
    LTDuty = LT5.getDuty();
    *(pru0DataMemory_int+19) = LTDuty;



    usleep(50);      // sleep for ten millisecond



  }while(1);


  mosqpp::lib_cleanup();
  return 0;
}
