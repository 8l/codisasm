#ifndef SYMBOL_H
#define SYMBOL_H

#include "lhs_types.h"
/*!
 @file symbol.h
 @brief Define the node symbols used during extraction and automata.
 */

/*!
 @brief The node symbol, corresponding to the king of instruction
 or a path pointer when the graph is converted in a tree
 */
enum {
  /*!
   @brief Initial symbol.
   */
  S_SYMB_INIT = 0,

  /*!
   @brief Procedure return.
   */
  S_INST_RET, //1

  /*!
   @brief Procedure call.
   */
  S_INST_CALL, //2

  /*!
   @brief Unconditional jump.
   */
  S_INST_JMP, //3

  /*!
   @brief End instruction.
   */
  S_INST_END, //4

  /*!
   @brief System call.
   */
  S_INST_SCALL, //5

  /*!
   @brief Unreachable instruction.
   */
  S_INST_UREACH, //6

  /*!
   @brief Undefined instruction.
   */
  S_INST_UNDEF, //7

  /*!
   @brief Conditional jump.
   */
  S_INST_JCC, //8

  /*!
   @brief Sequential instruction.
   */
  S_INST_SEQ, //9

  /*!
   @brief Path symbol. (For graph to tree transformation)
   */
  S_SYMB_PATH, //10

  /*! 
   @brief Last symbol;
   */
  S_SYMB_END //11
};

/*!
 @brief Symbol enum is mapped on a uint32_t.

 Using directly enums is always a bad idea for code portability. The use of
 uint32_t allows compliance with C++.
 */
typedef uint32_t symb_t;

#endif /* SYMBOL_H */
