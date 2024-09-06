#include <cstdlib>

#include <verilated.h>

#include "VhalfAdder.h"

int main(int argc, char **argv) {
  Verilated::commandArgs(argc, argv);

  VhalfAdder *top = new VhalfAdder;

  while(!Verilated::gotFinish()) {
    top->eval();
  }

  top->final();

  delete top;

  return EXIT_SUCCESS;
}

