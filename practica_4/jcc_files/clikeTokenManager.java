/* Generated By:JavaCC: Do not edit this line. clikeTokenManager.java */
package traductor;
import java.io.*;
import lib.symbolTable.*;
import java.util.*;
import lib.symbolTable.exceptions.*;
import lib.errores.ErrorSemantico;
import lib.tools.codeGeneration.*;
import lib.tools.codeGeneration.PCodeInstruction.OpCode;

/** Token Manager. */
public class clikeTokenManager implements clikeConstants
{

  /** Debug output. */
  public static  java.io.PrintStream debugStream = System.out;
  /** Set debug output. */
  public static  void setDebugStream(java.io.PrintStream ds) { debugStream = ds; }
private static final int jjStopStringLiteralDfa_0(int pos, long active0)
{
   switch (pos)
   {
      case 0:
         if ((active0 & 0x7fffc00000000L) != 0L)
         {
            jjmatchedKind = 55;
            return 11;
         }
         if ((active0 & 0x800000L) != 0L)
            return 12;
         return -1;
      case 1:
         if ((active0 & 0x7fff400000000L) != 0L)
         {
            jjmatchedKind = 55;
            jjmatchedPos = 1;
            return 11;
         }
         if ((active0 & 0x800000000L) != 0L)
            return 11;
         return -1;
      case 2:
         if ((active0 & 0x2008000000000L) != 0L)
            return 11;
         if ((active0 & 0x5ff7400000000L) != 0L)
         {
            if (jjmatchedPos != 2)
            {
               jjmatchedKind = 55;
               jjmatchedPos = 2;
            }
            return 11;
         }
         return -1;
      case 3:
         if ((active0 & 0x5667000000000L) != 0L)
            return 11;
         if ((active0 & 0x2990400000000L) != 0L)
         {
            if (jjmatchedPos != 3)
            {
               jjmatchedKind = 55;
               jjmatchedPos = 3;
            }
            return 11;
         }
         return -1;
      case 4:
         if ((active0 & 0x6c00000000000L) != 0L)
         {
            if (jjmatchedPos != 4)
            {
               jjmatchedKind = 55;
               jjmatchedPos = 4;
            }
            return 11;
         }
         if ((active0 & 0x190400000000L) != 0L)
            return 11;
         return -1;
      case 5:
         if ((active0 & 0x800000000000L) != 0L)
            return 11;
         if ((active0 & 0x6500000000000L) != 0L)
         {
            jjmatchedKind = 55;
            jjmatchedPos = 5;
            return 11;
         }
         return -1;
      case 6:
         if ((active0 & 0x400000000000L) != 0L)
            return 11;
         if ((active0 & 0x6100000000000L) != 0L)
         {
            jjmatchedKind = 55;
            jjmatchedPos = 6;
            return 11;
         }
         return -1;
      default :
         return -1;
   }
}
private static final int jjStartNfa_0(int pos, long active0)
{
   return jjMoveNfa_0(jjStopStringLiteralDfa_0(pos, active0), pos + 1);
}
static private int jjStopAtPos(int pos, int kind)
{
   jjmatchedKind = kind;
   jjmatchedPos = pos;
   return pos + 1;
}
static private int jjStartNfaWithStates_0(int pos, int kind, int state)
{
   jjmatchedKind = kind;
   jjmatchedPos = pos;
   try { curChar = input_stream.readChar(); }
   catch(java.io.IOException e) { return pos + 1; }
   return jjMoveNfa_0(state, pos + 1);
}
static private int jjMoveStringLiteralDfa0_0()
{
   switch(curChar)
   {
      case 33:
         jjmatchedKind = 33;
         return jjMoveStringLiteralDfa1_0(0x20000000L);
      case 37:
         return jjStopAtPos(0, 24);
      case 38:
         jjmatchedKind = 17;
         return jjMoveStringLiteralDfa1_0(0x100000000L);
      case 40:
         return jjStopAtPos(0, 13);
      case 41:
         return jjStopAtPos(0, 14);
      case 42:
         return jjStopAtPos(0, 22);
      case 43:
         return jjStopAtPos(0, 20);
      case 44:
         return jjStopAtPos(0, 52);
      case 45:
         return jjStopAtPos(0, 21);
      case 47:
         return jjStartNfaWithStates_0(0, 23, 12);
      case 59:
         return jjStopAtPos(0, 18);
      case 60:
         jjmatchedKind = 25;
         return jjMoveStringLiteralDfa1_0(0x8000000L);
      case 61:
         jjmatchedKind = 19;
         return jjMoveStringLiteralDfa1_0(0x40000000L);
      case 62:
         jjmatchedKind = 26;
         return jjMoveStringLiteralDfa1_0(0x10000000L);
      case 91:
         return jjStopAtPos(0, 15);
      case 93:
         return jjStopAtPos(0, 16);
      case 98:
         return jjMoveStringLiteralDfa1_0(0x2000000000L);
      case 99:
         return jjMoveStringLiteralDfa1_0(0x4004000000000L);
      case 101:
         return jjMoveStringLiteralDfa1_0(0x1000000000L);
      case 102:
         return jjMoveStringLiteralDfa1_0(0x10000000000L);
      case 105:
         return jjMoveStringLiteralDfa1_0(0x2008800000000L);
      case 109:
         return jjMoveStringLiteralDfa1_0(0x1000000000000L);
      case 112:
         return jjMoveStringLiteralDfa1_0(0x180000000000L);
      case 114:
         return jjMoveStringLiteralDfa1_0(0xe00000000000L);
      case 116:
         return jjMoveStringLiteralDfa1_0(0x20000000000L);
      case 118:
         return jjMoveStringLiteralDfa1_0(0x40000000000L);
      case 119:
         return jjMoveStringLiteralDfa1_0(0x400000000L);
      case 123:
         return jjStopAtPos(0, 11);
      case 124:
         return jjMoveStringLiteralDfa1_0(0x80000000L);
      case 125:
         return jjStopAtPos(0, 12);
      default :
         return jjMoveNfa_0(0, 0);
   }
}
static private int jjMoveStringLiteralDfa1_0(long active0)
{
   try { curChar = input_stream.readChar(); }
   catch(java.io.IOException e) {
      jjStopStringLiteralDfa_0(0, active0);
      return 1;
   }
   switch(curChar)
   {
      case 38:
         if ((active0 & 0x100000000L) != 0L)
            return jjStopAtPos(1, 32);
         break;
      case 61:
         if ((active0 & 0x8000000L) != 0L)
            return jjStopAtPos(1, 27);
         else if ((active0 & 0x10000000L) != 0L)
            return jjStopAtPos(1, 28);
         else if ((active0 & 0x20000000L) != 0L)
            return jjStopAtPos(1, 29);
         else if ((active0 & 0x40000000L) != 0L)
            return jjStopAtPos(1, 30);
         break;
      case 97:
         return jjMoveStringLiteralDfa2_0(active0, 0x1010000000000L);
      case 101:
         return jjMoveStringLiteralDfa2_0(active0, 0xe00000000000L);
      case 102:
         if ((active0 & 0x800000000L) != 0L)
            return jjStartNfaWithStates_0(1, 35, 11);
         break;
      case 104:
         return jjMoveStringLiteralDfa2_0(active0, 0x4004400000000L);
      case 108:
         return jjMoveStringLiteralDfa2_0(active0, 0x1000000000L);
      case 110:
         return jjMoveStringLiteralDfa2_0(active0, 0x2008000000000L);
      case 111:
         return jjMoveStringLiteralDfa2_0(active0, 0x42000000000L);
      case 114:
         return jjMoveStringLiteralDfa2_0(active0, 0x1a0000000000L);
      case 124:
         if ((active0 & 0x80000000L) != 0L)
            return jjStopAtPos(1, 31);
         break;
      default :
         break;
   }
   return jjStartNfa_0(0, active0);
}
static private int jjMoveStringLiteralDfa2_0(long old0, long active0)
{
   if (((active0 &= old0)) == 0L)
      return jjStartNfa_0(0, old0); 
   try { curChar = input_stream.readChar(); }
   catch(java.io.IOException e) {
      jjStopStringLiteralDfa_0(1, active0);
      return 2;
   }
   switch(curChar)
   {
      case 97:
         return jjMoveStringLiteralDfa3_0(active0, 0x4604000000000L);
      case 105:
         return jjMoveStringLiteralDfa3_0(active0, 0x11c0400000000L);
      case 108:
         return jjMoveStringLiteralDfa3_0(active0, 0x10000000000L);
      case 111:
         return jjMoveStringLiteralDfa3_0(active0, 0x2000000000L);
      case 115:
         return jjMoveStringLiteralDfa3_0(active0, 0x1000000000L);
      case 116:
         if ((active0 & 0x8000000000L) != 0L)
         {
            jjmatchedKind = 39;
            jjmatchedPos = 2;
         }
         return jjMoveStringLiteralDfa3_0(active0, 0x2800000000000L);
      case 117:
         return jjMoveStringLiteralDfa3_0(active0, 0x20000000000L);
      default :
         break;
   }
   return jjStartNfa_0(1, active0);
}
static private int jjMoveStringLiteralDfa3_0(long old0, long active0)
{
   if (((active0 &= old0)) == 0L)
      return jjStartNfa_0(1, old0); 
   try { curChar = input_stream.readChar(); }
   catch(java.io.IOException e) {
      jjStopStringLiteralDfa_0(2, active0);
      return 3;
   }
   switch(curChar)
   {
      case 50:
         return jjMoveStringLiteralDfa4_0(active0, 0x2000000000000L);
      case 100:
         if ((active0 & 0x40000000000L) != 0L)
            return jjStartNfaWithStates_0(3, 42, 11);
         else if ((active0 & 0x200000000000L) != 0L)
         {
            jjmatchedKind = 45;
            jjmatchedPos = 3;
         }
         return jjMoveStringLiteralDfa4_0(active0, 0x400000000000L);
      case 101:
         if ((active0 & 0x1000000000L) != 0L)
            return jjStartNfaWithStates_0(3, 36, 11);
         else if ((active0 & 0x20000000000L) != 0L)
            return jjStartNfaWithStates_0(3, 41, 11);
         break;
      case 108:
         if ((active0 & 0x2000000000L) != 0L)
            return jjStartNfaWithStates_0(3, 37, 11);
         return jjMoveStringLiteralDfa4_0(active0, 0x400000000L);
      case 110:
         if ((active0 & 0x1000000000000L) != 0L)
            return jjStartNfaWithStates_0(3, 48, 11);
         return jjMoveStringLiteralDfa4_0(active0, 0x180000000000L);
      case 114:
         if ((active0 & 0x4000000000L) != 0L)
         {
            jjmatchedKind = 38;
            jjmatchedPos = 3;
         }
         return jjMoveStringLiteralDfa4_0(active0, 0x4000000000000L);
      case 115:
         return jjMoveStringLiteralDfa4_0(active0, 0x10000000000L);
      case 117:
         return jjMoveStringLiteralDfa4_0(active0, 0x800000000000L);
      default :
         break;
   }
   return jjStartNfa_0(2, active0);
}
static private int jjMoveStringLiteralDfa4_0(long old0, long active0)
{
   if (((active0 &= old0)) == 0L)
      return jjStartNfa_0(2, old0); 
   try { curChar = input_stream.readChar(); }
   catch(java.io.IOException e) {
      jjStopStringLiteralDfa_0(3, active0);
      return 4;
   }
   switch(curChar)
   {
      case 50:
         return jjMoveStringLiteralDfa5_0(active0, 0x4000000000000L);
      case 95:
         return jjMoveStringLiteralDfa5_0(active0, 0x400000000000L);
      case 99:
         return jjMoveStringLiteralDfa5_0(active0, 0x2000000000000L);
      case 101:
         if ((active0 & 0x400000000L) != 0L)
            return jjStartNfaWithStates_0(4, 34, 11);
         else if ((active0 & 0x10000000000L) != 0L)
            return jjStartNfaWithStates_0(4, 40, 11);
         break;
      case 114:
         return jjMoveStringLiteralDfa5_0(active0, 0x800000000000L);
      case 116:
         if ((active0 & 0x80000000000L) != 0L)
         {
            jjmatchedKind = 43;
            jjmatchedPos = 4;
         }
         return jjMoveStringLiteralDfa5_0(active0, 0x100000000000L);
      default :
         break;
   }
   return jjStartNfa_0(3, active0);
}
static private int jjMoveStringLiteralDfa5_0(long old0, long active0)
{
   if (((active0 &= old0)) == 0L)
      return jjStartNfa_0(3, old0); 
   try { curChar = input_stream.readChar(); }
   catch(java.io.IOException e) {
      jjStopStringLiteralDfa_0(4, active0);
      return 5;
   }
   switch(curChar)
   {
      case 95:
         return jjMoveStringLiteralDfa6_0(active0, 0x100000000000L);
      case 104:
         return jjMoveStringLiteralDfa6_0(active0, 0x2000000000000L);
      case 105:
         return jjMoveStringLiteralDfa6_0(active0, 0x4000000000000L);
      case 108:
         return jjMoveStringLiteralDfa6_0(active0, 0x400000000000L);
      case 110:
         if ((active0 & 0x800000000000L) != 0L)
            return jjStartNfaWithStates_0(5, 47, 11);
         break;
      default :
         break;
   }
   return jjStartNfa_0(4, active0);
}
static private int jjMoveStringLiteralDfa6_0(long old0, long active0)
{
   if (((active0 &= old0)) == 0L)
      return jjStartNfa_0(4, old0); 
   try { curChar = input_stream.readChar(); }
   catch(java.io.IOException e) {
      jjStopStringLiteralDfa_0(5, active0);
      return 6;
   }
   switch(curChar)
   {
      case 97:
         return jjMoveStringLiteralDfa7_0(active0, 0x2000000000000L);
      case 108:
         return jjMoveStringLiteralDfa7_0(active0, 0x100000000000L);
      case 110:
         if ((active0 & 0x400000000000L) != 0L)
            return jjStartNfaWithStates_0(6, 46, 11);
         return jjMoveStringLiteralDfa7_0(active0, 0x4000000000000L);
      default :
         break;
   }
   return jjStartNfa_0(5, active0);
}
static private int jjMoveStringLiteralDfa7_0(long old0, long active0)
{
   if (((active0 &= old0)) == 0L)
      return jjStartNfa_0(5, old0); 
   try { curChar = input_stream.readChar(); }
   catch(java.io.IOException e) {
      jjStopStringLiteralDfa_0(6, active0);
      return 7;
   }
   switch(curChar)
   {
      case 110:
         if ((active0 & 0x100000000000L) != 0L)
            return jjStartNfaWithStates_0(7, 44, 11);
         break;
      case 114:
         if ((active0 & 0x2000000000000L) != 0L)
            return jjStartNfaWithStates_0(7, 49, 11);
         break;
      case 116:
         if ((active0 & 0x4000000000000L) != 0L)
            return jjStartNfaWithStates_0(7, 50, 11);
         break;
      default :
         break;
   }
   return jjStartNfa_0(6, active0);
}
static final long[] jjbitVec0 = {
   0x0L, 0x0L, 0xffffffffffffffffL, 0xffffffffffffffffL
};
static private int jjMoveNfa_0(int startState, int curPos)
{
   //int[] nextStates; // not used
   int startsAt = 0;
   jjnewStateCnt = 15;
   int i = 1;
   jjstateSet[0] = startState;
   //int j; // not used
   int kind = 0x7fffffff;
   for (;;)
   {
      if (++jjround == 0x7fffffff)
         ReInitRounds();
      if (curChar < 64)
      {
         long l = 1L << curChar;
         do
         {
            switch(jjstateSet[--i])
            {
               case 0:
                  if ((0x3ff000000000000L & l) != 0L)
                  {
                     if (kind > 55)
                        kind = 55;
                     jjCheckNAdd(11);
                  }
                  else if (curChar == 47)
                     jjstateSet[jjnewStateCnt++] = 12;
                  else if (curChar == 39)
                     jjAddStates(0, 1);
                  else if (curChar == 34)
                     jjCheckNAddStates(2, 4);
                  if ((0x3ff000000000000L & l) != 0L)
                  {
                     if (kind > 53)
                        kind = 53;
                     jjCheckNAdd(5);
                  }
                  break;
               case 1:
                  if ((0xfffffffbfffffbffL & l) != 0L)
                     jjCheckNAddStates(2, 4);
                  break;
               case 2:
                  if (curChar == 34)
                     jjCheckNAddStates(2, 4);
                  break;
               case 3:
                  if (curChar == 34)
                     jjstateSet[jjnewStateCnt++] = 2;
                  break;
               case 4:
                  if (curChar == 34 && kind > 51)
                     kind = 51;
                  break;
               case 5:
                  if ((0x3ff000000000000L & l) == 0L)
                     break;
                  if (kind > 53)
                     kind = 53;
                  jjCheckNAdd(5);
                  break;
               case 6:
                  if (curChar == 39)
                     jjAddStates(0, 1);
                  break;
               case 7:
                  if ((0xfffffffbfffffbffL & l) != 0L)
                     jjCheckNAdd(8);
                  break;
               case 8:
                  if (curChar == 39 && kind > 54)
                     kind = 54;
                  break;
               case 9:
                  if (curChar == 34)
                     jjCheckNAdd(8);
                  break;
               case 10:
                  if (curChar == 34)
                     jjstateSet[jjnewStateCnt++] = 9;
                  break;
               case 11:
                  if ((0x3ff000000000000L & l) == 0L)
                     break;
                  if (kind > 55)
                     kind = 55;
                  jjCheckNAdd(11);
                  break;
               case 12:
                  if (curChar != 47)
                     break;
                  if (kind > 57)
                     kind = 57;
                  jjCheckNAdd(13);
                  break;
               case 13:
                  if ((0xfffffffffffffbffL & l) == 0L)
                     break;
                  if (kind > 57)
                     kind = 57;
                  jjCheckNAdd(13);
                  break;
               case 14:
                  if (curChar == 47)
                     jjstateSet[jjnewStateCnt++] = 12;
                  break;
               default : break;
            }
         } while(i != startsAt);
      }
      else if (curChar < 128)
      {
         long l = 1L << (curChar & 077);
         do
         {
            switch(jjstateSet[--i])
            {
               case 0:
               case 11:
                  if ((0x7fffffe87fffffeL & l) == 0L)
                     break;
                  if (kind > 55)
                     kind = 55;
                  jjCheckNAdd(11);
                  break;
               case 1:
                  jjAddStates(2, 4);
                  break;
               case 7:
                  jjstateSet[jjnewStateCnt++] = 8;
                  break;
               case 13:
                  if (kind > 57)
                     kind = 57;
                  jjstateSet[jjnewStateCnt++] = 13;
                  break;
               default : break;
            }
         } while(i != startsAt);
      }
      else
      {
         int i2 = (curChar & 0xff) >> 6;
         long l2 = 1L << (curChar & 077);
         do
         {
            switch(jjstateSet[--i])
            {
               case 1:
                  if ((jjbitVec0[i2] & l2) != 0L)
                     jjAddStates(2, 4);
                  break;
               case 7:
                  if ((jjbitVec0[i2] & l2) != 0L)
                     jjstateSet[jjnewStateCnt++] = 8;
                  break;
               case 13:
                  if ((jjbitVec0[i2] & l2) == 0L)
                     break;
                  if (kind > 57)
                     kind = 57;
                  jjstateSet[jjnewStateCnt++] = 13;
                  break;
               default : break;
            }
         } while(i != startsAt);
      }
      if (kind != 0x7fffffff)
      {
         jjmatchedKind = kind;
         jjmatchedPos = curPos;
         kind = 0x7fffffff;
      }
      ++curPos;
      if ((i = jjnewStateCnt) == (startsAt = 15 - (jjnewStateCnt = startsAt)))
         return curPos;
      try { curChar = input_stream.readChar(); }
      catch(java.io.IOException e) { return curPos; }
   }
}
static final int[] jjnextStates = {
   7, 10, 1, 3, 4, 
};

/** Token literal values. */
public static final String[] jjstrLiteralImages = {
"", null, null, null, null, null, null, null, null, null, null, "\173", 
"\175", "\50", "\51", "\133", "\135", "\46", "\73", "\75", "\53", "\55", "\52", "\57", 
"\45", "\74", "\76", "\74\75", "\76\75", "\41\75", "\75\75", "\174\174", "\46\46", 
"\41", "\167\150\151\154\145", "\151\146", "\145\154\163\145", "\142\157\157\154", 
"\143\150\141\162", "\151\156\164", "\146\141\154\163\145", "\164\162\165\145", 
"\166\157\151\144", "\160\162\151\156\164", "\160\162\151\156\164\137\154\156", 
"\162\145\141\144", "\162\145\141\144\137\154\156", "\162\145\164\165\162\156", 
"\155\141\151\156", "\151\156\164\62\143\150\141\162", "\143\150\141\162\62\151\156\164", null, 
"\54", null, null, null, null, null, };

/** Lexer state names. */
public static final String[] lexStateNames = {
   "DEFAULT", 
};
static final long[] jjtoToken = {
   0xfffffffffff801L, 
};
static final long[] jjtoSkip = {
   0x30000000000001eL, 
};
static final long[] jjtoSpecial = {
   0x300000000000000L, 
};
static protected SimpleCharStream input_stream;
static private final int[] jjrounds = new int[15];
static private final int[] jjstateSet = new int[30];
static StringBuffer image;
static int jjimageLen;
static int lengthOfMatch;
static protected char curChar;
/** Constructor. */
public clikeTokenManager(SimpleCharStream stream){
   if (input_stream != null)
      throw new TokenMgrError("ERROR: Second call to constructor of static lexer. You must use ReInit() to initialize the static variables.", TokenMgrError.STATIC_LEXER_ERROR);
   input_stream = stream;
}

/** Constructor. */
public clikeTokenManager(SimpleCharStream stream, int lexState){
   this(stream);
   SwitchTo(lexState);
}

/** Reinitialise parser. */
static public void ReInit(SimpleCharStream stream)
{
   jjmatchedPos = jjnewStateCnt = 0;
   curLexState = defaultLexState;
   input_stream = stream;
   ReInitRounds();
}
static private void ReInitRounds()
{
   int i;
   jjround = 0x80000001;
   for (i = 15; i-- > 0;)
      jjrounds[i] = 0x80000000;
}

/** Reinitialise parser. */
static public void ReInit(SimpleCharStream stream, int lexState)
{
   ReInit(stream);
   SwitchTo(lexState);
}

/** Switch to specified lex state. */
static public void SwitchTo(int lexState)
{
   if (lexState >= 1 || lexState < 0)
      throw new TokenMgrError("Error: Ignoring invalid lexical state : " + lexState + ". State unchanged.", TokenMgrError.INVALID_LEXICAL_STATE);
   else
      curLexState = lexState;
}

static protected Token jjFillToken()
{
   final Token t;
   final String tokenImage;
   final int beginLine;
   final int endLine;
   final int beginColumn;
   final int endColumn;
   String im = jjstrLiteralImages[jjmatchedKind];
   tokenImage = (im == null) ? input_stream.GetImage() : im;
   beginLine = input_stream.getBeginLine();
   beginColumn = input_stream.getBeginColumn();
   endLine = input_stream.getEndLine();
   endColumn = input_stream.getEndColumn();
   t = Token.newToken(jjmatchedKind, tokenImage);

   t.beginLine = beginLine;
   t.endLine = endLine;
   t.beginColumn = beginColumn;
   t.endColumn = endColumn;

   return t;
}

static int curLexState = 0;
static int defaultLexState = 0;
static int jjnewStateCnt;
static int jjround;
static int jjmatchedPos;
static int jjmatchedKind;

/** Get the next Token. */
public static Token getNextToken() 
{
  //int kind;
  Token specialToken = null;
  Token matchedToken;
  int curPos = 0;

  EOFLoop :
  for (;;)
  {   
   try   
   {     
      curChar = input_stream.BeginToken();
   }     
   catch(java.io.IOException e)
   {        
      jjmatchedKind = 0;
      matchedToken = jjFillToken();
      matchedToken.specialToken = specialToken;
      return matchedToken;
   }
   image = null;
   jjimageLen = 0;

   try { input_stream.backup(0);
      while (curChar <= 32 && (0x100002600L & (1L << curChar)) != 0L)
         curChar = input_stream.BeginToken();
   }
   catch (java.io.IOException e1) { continue EOFLoop; }
   jjmatchedKind = 0x7fffffff;
   jjmatchedPos = 0;
   curPos = jjMoveStringLiteralDfa0_0();
   if (jjmatchedPos == 0 && jjmatchedKind > 56)
   {
      jjmatchedKind = 56;
   }
   if (jjmatchedKind != 0x7fffffff)
   {
      if (jjmatchedPos + 1 < curPos)
         input_stream.backup(curPos - jjmatchedPos - 1);
      if ((jjtoToken[jjmatchedKind >> 6] & (1L << (jjmatchedKind & 077))) != 0L)
      {
         matchedToken = jjFillToken();
         matchedToken.specialToken = specialToken;
         return matchedToken;
      }
      else
      {
         if ((jjtoSpecial[jjmatchedKind >> 6] & (1L << (jjmatchedKind & 077))) != 0L)
         {
            matchedToken = jjFillToken();
            if (specialToken == null)
               specialToken = matchedToken;
            else
            {
               matchedToken.specialToken = specialToken;
               specialToken = (specialToken.next = matchedToken);
            }
            SkipLexicalActions(matchedToken);
         }
         else 
            SkipLexicalActions(null);
         continue EOFLoop;
      }
   }
   int error_line = input_stream.getEndLine();
   int error_column = input_stream.getEndColumn();
   String error_after = null;
   boolean EOFSeen = false;
   try { input_stream.readChar(); input_stream.backup(1); }
   catch (java.io.IOException e1) {
      EOFSeen = true;
      error_after = curPos <= 1 ? "" : input_stream.GetImage();
      if (curChar == '\n' || curChar == '\r') {
         error_line++;
         error_column = 0;
      }
      else
         error_column++;
   }
   if (!EOFSeen) {
      input_stream.backup(1);
      error_after = curPos <= 1 ? "" : input_stream.GetImage();
   }
   throw new TokenMgrError(EOFSeen, curLexState, error_line, error_column, error_after, curChar, TokenMgrError.LEXICAL_ERROR);
  }
}

static void SkipLexicalActions(Token matchedToken)
{
   switch(jjmatchedKind)
   {
      case 56 :
         if (image == null)
            image = new StringBuffer();
         image.append(input_stream.GetSuffix(jjimageLen + (lengthOfMatch = jjmatchedPos + 1)));
                System.err.println("ERROR LEXICO: ("+ matchedToken.beginLine + "," + matchedToken.beginColumn + ") :simbolo no reconocido: " + matchedToken);
                matchedToken.image = " ";
         break;
      default :
         break;
   }
}
static private void jjCheckNAdd(int state)
{
   if (jjrounds[state] != jjround)
   {
      jjstateSet[jjnewStateCnt++] = state;
      jjrounds[state] = jjround;
   }
}
static private void jjAddStates(int start, int end)
{
   do {
      jjstateSet[jjnewStateCnt++] = jjnextStates[start];
   } while (start++ != end);
}
static private void jjCheckNAddTwoStates(int state1, int state2)
{
   jjCheckNAdd(state1);
   jjCheckNAdd(state2);
}

static private void jjCheckNAddStates(int start, int end)
{
   do {
      jjCheckNAdd(jjnextStates[start]);
   } while (start++ != end);
}

}