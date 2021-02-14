/* ************************************************************************
 *  (c) by Karl-Heinz Kuebbeler, Project Transistor Tester
 *  
 *  File:       7x12_vertikal_LSB_1.h
 *  Function:   (table of the bits for the 7x12 character set)
 *              - 16 bytes per character
 *              - first byte: first vertical line (left to right)
 *              - ninth byte: first vertical line (left to right) 
 *              - bit #0: top / bit #7: bottom (vertically flipped)
 * 
 * History:     Date        Sign    Kommentar 
 *              2021-01-26  Bohu    ISO 8859 2 & 15 charakter added & FR
 * ************************************************************************ */

#ifdef LCD_CYRILLIC
 #define CHAR_COUNT 0xa0
#else
 #if defined LANG_FRANCAIS
  #define a_grave   0x10 /* e0 */
  #define a_circ    0x11 /* e2 */
  #define a_elig    0x12 /* e6 */
  #define c_cedil   0x13 /* e7 */
  #define e_acute   0x14 /* e9 */
  #define e_circ    0x15 /* ea */
  #define e_grave   0x16 /* e8 */
  #define e_uml     0x17 /* eb */ 
  #define i_circ    0x18 /* ee */
  #define i_uml     0x19 /* ef */
  #define o_circ    0x1a /* f4 */
  #define o_elig    0x1b /* bd */
  #define u_grave   0x1c /* f9 */
  #define u_circ    0x1d /* fb */
  #define u_uml     0x1e /* fc */
  #define y_uml     0x1f /* ff */
 #ifdef WITH_CAPITAL_SPECIALS
  #define A_grave   0x80 /* e0 */
  #define A_circ    0x81 /* e2 */
  #define A_elig    0x82 /* e6 */
  #define C_cedil   0x83 /* e7 */
  #define E_acute   0x84 /* e9 */
  #define E_circ    0x85 /* ea */
  #define E_grave   0x86 /* e8 */
  #define E_uml     0x87 /* eb */
  #define I_circ    0x88 /* ee */
  #define I_uml     0x89 /* ef */
  #define O_circ    0x8a /* f4 */
  #define O_elig    0x8b /* bd */
  #define U_grave   0x8c /* f9 */
  #define U_circ    0x8d /* fb */
  #define U_uml     0x8e /* fc */
  #define Y_uml     0x8f /* ff */
  #define CHAR_COUNT    0x90
 #else
  #define A_grave   a_grave
  #define A_circ    a_circ
  #define A_elig    a_elig
  #define C_cedil   c_cedil
  #define E_acute   e_acute
  #define E_circ    e_circ
  #define E_grave   e_grave
  #define E_uml     e_uml
  #define I_circ    i_circ
  #define I_uml     i_uml
  #define O_circ    o_circ
  #define O_elig    o_elig
  #define U_grave   u_grave
  #define U_circ    u_circ
  #define U_uml     u_uml
  #define Y_uml     y_uml
  #define CHAR_COUNT    0x80
 #endif
 #elif defined LANG_CZECH || defined LANG_SLOVAK
  #define a_acute   0x10 /* e1 */
  #define a_uml     0x11 /* e4 */
  #define c_caron   0x12 /* e8 */
  #define d_caron   0x13 /* ef */
  #define e_acute   0x14 /* e9 */
  #define e_caron   0x15 /* ec */
  #define i_acute   0x16 /* ed */
  #define l_acute   0x17 /* e5 */
  #define l_caron   0x18 /* b5 */
  #define n_caron   0x19 /* f2 */
  #define o_acute   0x1a /* f3 */
  #define o_uml     0x1b /* f6 */
  #define o_circ    0x1c /* f4 */
  #define r_acute   0x1d /* e0 */
  #define r_caron   0x1e /* f8 */
  #define s_caron   0x1f /* b9 */
  #define t_caron   0x80 /* bb */
  #define u_acute   0x81 /* fa */
  #define u_uml     0x82 /* fc */
  #define u_ring    0x83 /* f9 */
  #define y_acute   0x84 /* fd */
  #define z_caron   0x85 /* b9 */
  #ifdef WITH_CAPITAL_SPECIALS
   #define A_acute  0x86 /* c1 */
   #define A_uml    0x87 /* c4 */
   #define C_caron  0x88 /* c8 */
   #define D_caron  0x89 /* cf */
   #define E_acute  0x8a /* c9 */
   #define E_caron  0x8b /* cc */
   #define I_acute  0x8c /* cd */
   #define L_acute  0x8d /* c5 */
   #define L_caron  0x8e /* a5 */
   #define N_caron  0x8f /* d2 */
   #define O_acute  0x90 /* d3 */
   #define O_uml    0x91 /* d6 */
   #define O_circ   0x92 /* d4 */
   #define R_acute  0x93 /* c0 */
   #define R_caron  0x94 /* d8 */
   #define S_caron  0x95 /* a9 */
   #define T_caron  0x96 /* ab */
   #define U_acute  0x97 /* da */
   #define U_uml    0x98 /* dc */
   #define Y_acute  0x99 /* dd */
   #define Z_caron  0x9a /* ae */
   #define CHAR_COUNT   0x9b
  #else
   #define A_acute  a_acute
   #define A_uml    a_uml
   #define C_caron  c_caron
   #define D_caron  d_caron
   #define E_acute  e_acute
   #define E_caron  e_caron
   #define I_acute  i_acute
   #define L_acute  l_acute
   #define L_caron  l_caron
   #define N_caron  n_caron
   #define O_acute  o_acute
   #define O_uml    o_uml
   #define O_circ   o_circ
   #define R_acute  r_acute
   #define R_caron  r_caron
   #define S_caron  s_caron
   #define T_caron  t_caron
   #define U_acute  u_acute
   #define U_uml    u_uml
   #define Y_acute  y_acute
   #define Z_caron  z_caron
   #define CHAR_COUNT   0x86
  #endif
 #elif defined LANG_SERBIAN || LANG_CROATIAN || LANG_SLOWENIAN || LANG_BOSNIAN
  #define c_acute	0x10 /* e6 */
  #define c_caron	0x11 /* e8 */
  #define d_eth		0x12 /* f0 */
  #define s_caron	0x13 /* b9 */
  #define z_caron	0x14 /* be */
  #define C_acute	0x15 /* c6 */
  #define C_caron	0x16 /* c8 */
  #define D_eth		0x17 /* d0 */
  #define S_caron	0x18 /* a9 */
  #define Z_caron	0x19 /* ae */
  #define CHAR_COUNT   128 // 0x7f + 1
 #elif defined LANG_POLISH
  #define a_ogon    0x10 /* b1 */
  #define c_acute   0x11 /* e6 */
  #define e_ogon    0x12 /* ea */
  #define l_stroke  0x13 /* b3 */
  #define n_acute   0x14 /* f1 */
  #define o_acute   0x15 /* f3 */
  #define s_acute   0x16 /* b6 */
  #define z_acute   0x17 /* bc */
  #define z_dot     0x18 /* bf */
  #define A_ogon    0x19 /* a1 */
  #define C_acute   0x1a /* c6 */
  #define E_ogon    0x1b /* ca */
  #define L_stroke  0x1c /* a3 */
  #define N_acute   0x1d /* d1 */
  #define O_acute   0x1e /* d3 */
  #define S_acute   0x1f /* a6 */
  #define Z_acute   0x80 /* ac */
  #define Z_dot     0x81 /* ae */
  #define CHAR_COUNT 0x82
 #elif defined LANG_GERMAN || defined LANG_ALBANIAN
  #define a_uml     0x10 /* e4 */
  #define c_cedil   0x11 /* e7 */
  #define e_uml     0x12 /* eb */
  #define o_uml     0x13 /* f6 */
  #define s_sharp   0x14 /* df */
  #define u_uml     0x15 /* fc */
  #define A_uml     0x16 /* c4 */
  #define C_cedil   0x17 /* c7 */
  #define E_uml     0x18 /* d6 */
  #define O_uml     0x19 /* d6 */
  #define U_uml     0x1a /* dc */
  #define CHAR_COUNT    128 // 0x7f + 1
 #elif defined LANG_HUNGARIAN
  #define a_acute   0x10 /* e1 */
  #define e_acute   0x11 /* e9 */
  #define o_acute   0x12 /* f3 */
  #define o_dblac   0x13 /* f5 */
  #define o_uml     0x14 /* f6 */
  #define u_acute   0x15 /* fa */
  #define u_dblac   0x16 /* fb */
  #define u_uml     0x17 /* fc */
  #define A_acute   0x18 /* c1 */
  #define E_acute   0x19 /* c9 */
  #define O_acute   0x1a /* d3 */
  #define O_dblac   0x1b /* d5 */
  #define O_uml     0x1c /* d6 */
  #define U_acute   0x1d /* da */
  #define U_dblac   0x1e /* db */
  #define U_uml     0x1f /* dc */
  #define CHAR_COUNT   128 // 0x7f + 1
 #elif defined LANG_ROMANIAN  || LANG_DANISH
  #define a_circ    0x10 /* e2 */
  #define a_breve   0x11 /* e3 */
  #define i_circ    0x12 /* ee */
  #define s_cedil   0x13 /* ba */
  #define t_cedil   0x14 /* fe */
  #define A_circ    0x15 /* c2 */
  #define A_breve   0x16 /* c3 */
  #define I_circ    0x17 /* ce */
  #define S_cedil   0x18 /* aa */
  #define T_cedil   0x19 /* de */
  #define a_ring    0x1a /* e5 */
  #define a_elig    0x1b /* e6 */
  #define o_slash   0x1c /* f8 */
  #define A_ring    0x1d /* c5 */
  #define A_elig    0x1e /* c6 */
  #define O_slash   0x1f /* d8 */
  #define CHAR_COUNT   128 // 0x7f + 1
 #else
  #define CHAR_COUNT 128
 #endif
#endif

#define LastChar (CHAR_COUNT - 1)

#if defined(MAIN_C)
const unsigned char PROGMEM font[CHAR_COUNT][(FONT_WIDTH * ((FONT_HEIGHT + 7)/8))]=
{
{0x40,0xF0,0x10,0x10,0x10,0xF0,0x40,
 0x00,0x01,0x01,0x01,0x01,0x01,0x00},  /* 0x00 Resistor3 */
{0x40,0xF8,0xF0,0xE0,0x40,0xF8,0x40,
 0x00,0x03,0x01,0x00,0x00,0x03,0x00},  /* 0x01 Diode1 */
{0x40,0xF8,0x40,0xE0,0xF0,0xF8,0x40,
 0x00,0x03,0x00,0x00,0x01,0x03,0x00},  /* 0x02 Diode2 */
{0x00,0x00,0x00,0x00,0x00,0x00,0x00,
 0x00,0x00,0x00,0x00,0x00,0x00,0x00},  /* 0x03 leer */
{0x40,0xFC,0xFC,0x00,0xFC,0xFC,0x40,
 0x00,0x07,0x07,0x00,0x07,0x07,0x00},  /* 0x04 Capacitor */
{0x00,0x00,0x00,0x00,0x00,0x00,0x00,
 0x00,0x00,0x00,0x00,0x00,0x00,0x00},  /* 0x05 leer */
{0x40,0xF8,0x08,0x08,0x08,0x08,0x08,
 0x00,0x03,0x02,0x02,0x02,0x02,0x02},  /* 0x06 Resistor1 */
{0x08,0x08,0x08,0x08,0x08,0xF8,0x40,
 0x02,0x02,0x02,0x02,0x02,0x03,0x00},  /* 0x07 Resistor2 */
{0x40,0x40,0x40,0x40,0x40,0x40,0x40,
 0x00,0x00,0x00,0x00,0x00,0x00,0x00},  /* 0x08 Line */
{0x40,0x40,0x80,0x00,0xC0,0x20,0xC0,
 0x00,0x00,0x01,0x02,0x02,0x01,0x02},  /* 0x09 Inductor1 */
{0x00,0xC0,0x20,0xC0,0x00,0x80,0x40,
 0x02,0x02,0x01,0x02,0x02,0x01,0x00},  /* 0x0a Inductor2 */
{0x00,0x00,0x00,0x00,0x00,0x00,0x00,
 0x00,0x00,0x00,0x00,0x00,0x00,0x00},  /* 0x0b leer */
{0x00,0xFC,0x02,0x12,0x12,0xEC,0x00,
 0x04,0x03,0x00,0x01,0x01,0x00,0x00},  /* 0x0c Beta */
{0xE0,0x10,0x10,0x10,0xE0,0x00,0x00,
 0x04,0x07,0x00,0x07,0x04,0x00,0x00},  /* 0x0d Omega */
{0x00,0x00,0xF0,0x00,0x00,0xF0,0x00,
 0x04,0x02,0x03,0x02,0x01,0x03,0x00},  /* 0x0e mu */
{0x00,0x0C,0x12,0x12,0x0C,0x00,0x00,
 0x00,0x00,0x00,0x00,0x00,0x00,0x00},  /* 0x0f Degree */
 #if defined LANG_FRANCAIS
/* ---F---- ISO8859-15---------------- */
{0x80,0x49,0x4A,0x48,0x48,0xF0,0x00,
 0x03,0x04,0x04,0x04,0x02,0x07,0x00},  /* 0x10 a_grave   e0 */
{0x80,0x4A,0x49,0x4A,0x48,0xF0,0x00,
 0x03,0x04,0x04,0x04,0x02,0x07,0x00},  /* 0x11 a_circ    e2 */
{0x00,0x88,0x88,0xE8,0x90,0xE0,0x00,
 0x03,0x04,0x04,0x07,0x04,0x02,0x00},  /* 0x12 a_elig    e6 */
{0xF0,0x08,0x08,0x08,0x08,0x30,0x00,
 0x03,0x04,0x02,0x0A,0x0A,0x05,0x00},  /* 0x13 c_cedil   e7 */
{0xF0,0x88,0x88,0x8A,0x89,0x70,0x00,
 0x03,0x04,0x04,0x04,0x04,0x00,0x00},  /* 0x14 e_acute   e9 */
{0xF0,0x8A,0x89,0x8A,0x88,0x70,0x00,
 0x03,0x04,0x04,0x04,0x04,0x00,0x00},  /* 0x15 e_circ    ea */
{0xF0,0x89,0x8A,0x88,0x88,0x70,0x00,
 0x03,0x04,0x04,0x04,0x04,0x00,0x00},  /* 0x16 e_grave   e8 */
{0xF0,0x8A,0x88,0x88,0x8A,0x70,0x00,
 0x03,0x04,0x04,0x04,0x04,0x00,0x00},  /* 0x17 e_uml     eb */
{0x00,0x02,0x09,0xFA,0x00,0x00,0x00,
 0x00,0x00,0x00,0x07,0x00,0x00,0x00},  /* 0x18 i_circ    ce */
{0x00,0x02,0x08,0xF8,0x02,0x00,0x00,
 0x00,0x00,0x00,0x07,0x00,0x00,0x00},  /* 0x19 i_uml     ef */
{0xF0,0x08,0x0A,0x09,0x0A,0xF0,0x00,
 0x03,0x04,0x04,0x04,0x04,0x03,0x00},  /* 0x1a o_circ    f4 */
{0xF0,0x08,0xF8,0x48,0x48,0x70,0x00,
 0x03,0x04,0x07,0x04,0x04,0x02,0x00},  /* 0x1b o_elig    bd */
{0xF8,0x01,0x02,0x00,0x00,0xF8,0x00,
 0x03,0x04,0x04,0x04,0x02,0x07,0x00},  /* 0x1c u_grave   f9 */
{0xF8,0x02,0x01,0x02,0x00,0xF8,0x00,
 0x03,0x04,0x04,0x04,0x02,0x07,0x00},  /* 0x1d u_circ    fb */
{0xF8,0x02,0x00,0x00,0x02,0xF8,0x00,
 0x03,0x04,0x04,0x04,0x02,0x07,0x00},  /* 0x1e u_uml     fc */
{0xF8,0x02,0x00,0x00,0x82,0xF8,0x00,
 0x04,0x09,0x09,0x09,0x08,0x07,0x00},  /* 0x1f y_uml     ff */
 #elif defined LANG_CZECH || LANG_SLOVAK
/* ---CZ-SL----- ISO8859-2----------- */
{0x80,0x48,0x48,0x4A,0x49,0xF0,0x00,
 0x03,0x04,0x04,0x04,0x02,0x07,0x00},  /* 0x10  a_acute e1  */
{0x80,0x4A,0x48,0x4A,0x48,0xF0,0x00,
 0x03,0x04,0x04,0x04,0x02,0x07,0x00},  /* 0x11  a_uml   e4  */
{0xF0,0x08,0x09,0x0A,0x09,0x30,0x00,
 0x03,0x04,0x04,0x04,0x04,0x02,0x00},  /* 0x12  c_caron e8  */
{0xF0,0x08,0x08,0x08,0x10,0xFE,0x03,
 0x03,0x04,0x04,0x04,0x04,0x07,0x00},  /* 0x13  d_caron ef  */
{0xF0,0x88,0x88,0x8A,0x89,0x70,0x00,
 0x03,0x04,0x04,0x04,0x04,0x00,0x00},  /* 0x14  e_acute e9  */
{0xF0,0x88,0x89,0x8A,0x89,0x70,0x00,
 0x03,0x04,0x04,0x04,0x04,0x00,0x00},  /* 0x15  e_caron ec  */
{0x00,0x00,0x08,0xFA,0x01,0x00,0x00,
 0x00,0x00,0x00,0x07,0x00,0x00,0x00},  /* 0x16  i_acute ed  */
{0x00,0x00,0x04,0xFE,0x01,0x00,0x00,
 0x00,0x00,0x00,0x03,0x04,0x00,0x00},  /* 0x17  l_acute e5  */
{0x00,0x00,0x02,0xFE,0x03,0x00,0x00,
 0x00,0x00,0x00,0x03,0x04,0x00,0x00},  /* 0x18  l_caron b5  */
{0xF8,0x20,0x11,0x0A,0x09,0xF0,0x00,
 0x07,0x00,0x00,0x00,0x00,0x07,0x00},  /* 0x19  n_caron f2  */
{0xF0,0x08,0x08,0x0A,0x09,0xF0,0x00,
 0x03,0x04,0x04,0x04,0x04,0x03,0x00},  /* 0x1a  o_acute f3  */
{0xF0,0x0A,0x08,0x08,0x0A,0xF0,0x00,
 0x03,0x04,0x04,0x04,0x04,0x03,0x00},  /* 0x1b  o_uml   f6  */
{0xF0,0x0A,0x09,0x0A,0x08,0xF0,0x00,
 0x03,0x04,0x04,0x04,0x04,0x03,0x00},  /* 0x1c  o_circ  f4  */
{0xF8,0x20,0x10,0x0A,0x09,0x30,0x00,
 0x07,0x00,0x00,0x00,0x00,0x00,0x00},  /* 0x1d  r_acute e0  */
{0xF8,0x20,0x11,0x0A,0x09,0x30,0x00,
 0x07,0x00,0x00,0x00,0x00,0x00,0x00},  /* 0x1e  r_caron f8  */
{0x30,0x48,0x49,0x8A,0x89,0x10,0x00,
 0x02,0x04,0x04,0x04,0x04,0x03,0x00},  /* 0x1f  s_caron a8  */
 #elif defined LANG_SERBIAN || LANG_CROATIAN || LANG_SLOWENIAN || LANG_BOSNIAN
/* -SRB-HR-SLO-BIH--ISO8859-2-------- */
{0xF0,0x08,0x08,0x0A,0x09,0x30,0x00,
 0x03,0x04,0x04,0x04,0x04,0x02,0x00},  /* 0x10  c_acute e6  */
{0xF0,0x08,0x09,0x0A,0x09,0x30,0x00,
 0x03,0x04,0x04,0x04,0x04,0x02,0x00},  /* 0x11  c_caron e8  */
{0xE0,0x10,0x08,0x08,0x12,0xFF,0x02,
 0x03,0x04,0x04,0x04,0x04,0x07,0x00},  /* 0x12  d_eth   f0  */
{0x30,0x48,0x49,0x8A,0x89,0x10,0x00,
 0x02,0x04,0x04,0x04,0x04,0x03,0x00},  /* 0x13  s_caron b9  */
{0x08,0x08,0x89,0x4A,0x29,0x18,0x00,
 0x06,0x05,0x04,0x04,0x04,0x04,0x00},  /* 0x14  z_caron be  */
{0xF8,0x04,0x04,0x06,0x05,0x18,0x00,
 0x03,0x04,0x04,0x04,0x04,0x03,0x00},  /* 0x15  C_acute c6  */
{0xF8,0x04,0x05,0x06,0x05,0x18,0x00,
 0x03,0x04,0x04,0x04,0x04,0x03,0x00},  /* 0x16  C_caron a9 */
{0x20,0xFE,0x22,0x02,0x02,0xFC,0x00,
 0x00,0x07,0x04,0x04,0x04,0x03,0x00},  /* 0x17  D_eth   d0  */
{0x38,0x45,0x46,0x45,0x44,0x88,0x00,
 0x02,0x04,0x04,0x04,0x04,0x03,0x00},  /* 0x18  S_caron a9  */
{0x04,0x84,0x45,0x26,0x15,0x0C,0x00,
 0x07,0x04,0x04,0x04,0x04,0x04,0x00},  /* 0x19  Z_caron ae  */
{0x00,0x00,0x00,0x00,0x00,0x00,0x00,
 0x00,0x00,0x00,0x00,0x00,0x00,0x00},  /* 0x1a  leer */
{0x00,0x00,0x00,0x00,0x00,0x00,0x00,
 0x00,0x00,0x00,0x00,0x00,0x00,0x00},  /* 0x1b  leer */
{0x00,0x00,0x00,0x00,0x00,0x00,0x00,
 0x00,0x00,0x00,0x00,0x00,0x00,0x00},  /* 0x1c  leer */
{0x00,0x00,0x00,0x00,0x00,0x00,0x00,
 0x00,0x00,0x00,0x00,0x00,0x00,0x00},  /* 0x1d  leer */
{0x00,0x00,0x00,0x00,0x00,0x00,0x00,
 0x00,0x00,0x00,0x00,0x00,0x00,0x00},  /* 0x1e  leer */
{0x00,0x00,0x00,0x00,0x00,0x00,0x00,
 0x00,0x00,0x00,0x00,0x00,0x00,0x00},  /* 0x1f  leer */
 #elif defined LANG_POLISH
/* ---PL---  ISO8859-2  ------------- */
{0x80,0x48,0x48,0x48,0x48,0xF0,0x00,
 0x03,0x04,0x04,0x04,0x0A,0x0B,0x00},  /* 0x10  a_ogon  b1  */
{0xF0,0x08,0x08,0x0A,0x09,0x30,0x00,
 0x03,0x04,0x04,0x04,0x04,0x02,0x00},  /* 0x11  c_acute e6  */
{0xF0,0x88,0x88,0x88,0x88,0x70,0x00,
 0x01,0x02,0x06,0x0A,0x0A,0x00,0x00},  /* 0x12  e_ogon  ea  */
{0x00,0x00,0x42,0xFC,0x20,0x00,0x00,
 0x00,0x00,0x00,0x03,0x04,0x00,0x00},  /* 0x13  l_stroke b3 */
{0xF8,0x20,0x10,0x0A,0x09,0xF0,0x00,
 0x07,0x00,0x00,0x00,0x00,0x07,0x00},  /* 0x14  n_acute f1  */
{0xF0,0x08,0x08,0x0A,0x09,0xF0,0x00,
 0x03,0x04,0x04,0x04,0x04,0x03,0x00},  /* 0x15  o_acute f3  */
{0x30,0x48,0x48,0x8A,0x89,0x10,0x00,
 0x02,0x04,0x04,0x04,0x04,0x03,0x00},  /* 0x16  s_acute b6  */
{0x08,0x08,0x88,0x4A,0x29,0x18,0x00,
 0x06,0x05,0x04,0x04,0x04,0x04,0x00},  /* 0x17  z_acute bc  */
{0x08,0x08,0x89,0x49,0x28,0x18,0x00,
 0x06,0x05,0x04,0x04,0x04,0x04,0x00},  /* 0x18  z_dot   bf  */
{0xF0,0x4C,0x42,0x42,0x4C,0xF0,0x00,
 0x07,0x00,0x00,0x02,0x05,0x05,0x00},  /* 0x19  A_ogon  a1  */
{0xF8,0x04,0x04,0x06,0x05,0x18,0x00,
 0x03,0x04,0x04,0x04,0x04,0x03,0x00},  /* 0x1a  C_acute c6  */
{0xFE,0x22,0x22,0x22,0x22,0x02,0x00,
 0x03,0x02,0x02,0x06,0x0A,0x0A,0x00},  /* 0x1b  E_ogon  ca  */
{0x40,0xFE,0x20,0x00,0x00,0x00,0x00,
 0x07,0x04,0x04,0x04,0x04,0x04,0x00},  /* 0x1c  L_stroke a3 */
{0x00,0xFE,0x1C,0x72,0xC1,0xFE,0x00,
 0x00,0x07,0x00,0x00,0x01,0x07,0x00},  /* 0x1d  N_acute d1  **/ 
{0xF8,0x04,0x04,0x06,0x05,0xF8,0x00,
 0x03,0x04,0x04,0x04,0x04,0x03,0x00},  /* 0x1e  O_acute d3 */
{0x38,0x44,0x46,0x45,0x44,0x88,0x00,
 0x02,0x04,0x04,0x04,0x04,0x03,0x00},  /* 0x1f  S_acute a6  */
#elif defined LANG_GERMAN || LANG_ALBANIAN
/*---D---AL---ISO8859-2--------- */
{0x80,0x4A,0x48,0x4A,0x48,0xF0,0x00,
 0x03,0x04,0x04,0x04,0x02,0x07,0x00},  /* 0x10  a_uml   e4  */
{0xF0,0x08,0x08,0x08,0x08,0x30,0x00,
 0x03,0x04,0x02,0x0A,0x0A,0x05,0x00},  /* 0x11 c_cedil   e7 */
{0xF0,0x8A,0x88,0x88,0x8A,0x70,0x00,
 0x03,0x04,0x04,0x04,0x04,0x00,0x00},  /* 0x12  e_uml   eb  */
{0xF0,0x0A,0x08,0x08,0x0A,0xF0,0x00,
 0x03,0x04,0x04,0x04,0x04,0x03,0x00},  /* 0x13  o_uml   f6  */
{0x00,0xFC,0x02,0x12,0x2C,0xC0,0x00, 
 0x00,0x07,0x00,0x01,0x02,0x01,0x00},  /* 0x14  s_sharp df  */
{0xF8,0x02,0x00,0x00,0x02,0xF8,0x00,
 0x03,0x04,0x04,0x04,0x02,0x07,0x00},  /* 0x15  u_uml   fc  */
{0xE0,0x99,0x84,0x84,0x99,0xE0,0x00,
 0x07,0x00,0x00,0x00,0x00,0x07,0x00},  /* 0x16  A_uml   c4  */
{0xFC,0x02,0x02,0x02,0x02,0x8C,0x00,
 0x01,0x0A,0x0A,0x04,0x02,0x01,0x00},  /* 0x17  C_cedil c7  */
{0xFC,0x44,0x45,0x44,0x45,0x04,0x00,
 0x07,0x04,0x04,0x04,0x04,0x04,0x00},  /* 0x18  E_uml   cb  */
{0xF8,0x05,0x04,0x04,0x05,0xF8,0x00,
 0x03,0x04,0x04,0x04,0x04,0x03,0x00},  /* 0x19  O_uml   d6  */
{0xFC,0x01,0x00,0x01,0x00,0xFC,0x00,
 0x03,0x04,0x04,0x04,0x04,0x03,0x00},  /* 0x1a  U_uml   dc  **/ 
{0x00,0x00,0x00,0x00,0x00,0x00,0x00,
 0x00,0x00,0x00,0x00,0x00,0x00,0x00},  /* 0x1b  leer */
{0x00,0x00,0x00,0x00,0x00,0x00,0x00,
 0x00,0x00,0x00,0x00,0x00,0x00,0x00},  /* 0x1c  leer */
{0x00,0x00,0x00,0x00,0x00,0x00,0x00,
 0x00,0x00,0x00,0x00,0x00,0x00,0x00},  /* 0x1d  leer */
{0x00,0x00,0x00,0x00,0x00,0x00,0x00,
 0x00,0x00,0x00,0x00,0x00,0x00,0x00},  /* 0x1e  leer */
{0x00,0x00,0x00,0x00,0x00,0x00,0x00,
 0x00,0x00,0x00,0x00,0x00,0x00,0x00},  /* 0x1f  leer */
 #elif defined LANG_HUNGARIAN
/* ---H----  ISO8859-2  ------------- */
{0x80,0x48,0x48,0x4A,0x49,0xF0,0x00,
 0x03,0x04,0x04,0x04,0x02,0x07,0x00},  /* 0x10  a_acute e1  */
{0xF0,0x88,0x88,0x8A,0x89,0x70,0x00,
 0x03,0x04,0x04,0x04,0x04,0x00,0x00},  /* 0x11  e_acute e9  */
{0xF0,0x08,0x08,0x0A,0x09,0xF0,0x00,
 0x03,0x04,0x04,0x04,0x04,0x03,0x00},  /* 0x12  o_acute f3  */
{0xF0,0x0A,0x08,0x08,0x0A,0xF0,0x00,
 0x03,0x04,0x04,0x04,0x04,0x03,0x00},  /* 0x13  o_dblac f5  */
{0xF0,0x0A,0x08,0x08,0x0A,0xF0,0x00,
 0x03,0x04,0x04,0x04,0x04,0x03,0x00},  /* 0x14  o_uml   f6  */
{0xF8,0x00,0x02,0x01,0x00,0xF8,0x00,
 0x03,0x04,0x04,0x04,0x02,0x07,0x00},  /* 0x15  u_acute fa  */
{0xF8,0x00,0x03,0x00,0x03,0xF8,0x00,
 0x03,0x04,0x04,0x04,0x02,0x07,0x00},  /* 0x16  u_dblac fb  */
{0xF8,0x02,0x00,0x00,0x02,0xF8,0x00,
 0x03,0x04,0x04,0x04,0x02,0x07,0x00},  /* 0x17  u_uml   fc  */
{0xC0,0x30,0x08,0x0A,0x31,0xC0,0x00,
 0x07,0x01,0x01,0x01,0x01,0x07,0x00},  /* 0x18  A_acute c1  */
{0xFC,0x44,0x44,0x46,0x45,0x04,0x00,
 0x07,0x04,0x04,0x04,0x04,0x04,0x00},  /* 0x19  E_acute c9  */
{0xF8,0x04,0x04,0x06,0x05,0xF8,0x00,
 0x03,0x04,0x04,0x04,0x04,0x03,0x00},  /* 0x1a  O_acute d3 */
{0xF0,0x0B,0x08,0x08,0x0B,0xF0,0x00,
 0x03,0x04,0x04,0x04,0x04,0x03,0x00},  /* 0x1b  O_dblac d5  */
{0xF8,0x05,0x04,0x04,0x05,0xF8,0x00,
 0x03,0x04,0x04,0x04,0x04,0x03,0x00},  /* 0x1c  O_uml   d6  */
{0xFE,0x00,0x02,0x01,0x00,0xFE,0x00,
 0x03,0x04,0x04,0x04,0x04,0x03,0x00},  /* 0x1d  U_acute da  */
{0xFC,0x03,0x00,0x03,0x00,0xFC,0x00,
 0x03,0x04,0x04,0x04,0x04,0x03,0x00},  /* 0x1e  U_dblac db  */
{0xFC,0x01,0x00,0x00,0x01,0xFC,0x00,
 0x03,0x04,0x04,0x04,0x04,0x03,0x00},  /* 0x1f  U_uml   dc  */ 
 #elif defined LANG_ROMANIAN  || LANG_DANISH
/* ----RO--ISO-8859-2--------------- */
{0x80,0x4A,0x49,0x4A,0x48,0xF0,0x00,
 0x03,0x04,0x04,0x04,0x02,0x07,0x00},  /* 0x10  a_circ  e2  */
{0x80,0x49,0x4A,0x49,0x48,0xF0,0x00,
 0x03,0x04,0x04,0x04,0x02,0x07,0x00},  /* 0x11  a_breve e3  */
{0x00,0x02,0x09,0xFA,0x00,0x00,0x00,
 0x00,0x00,0x00,0x07,0x00,0x00,0x00},  /* 0x12  i_circ  ee  */
{0x30,0x48,0x48,0x88,0x88,0x10,0x00,
 0x01,0x02,0x0A,0x0A,0x06,0x01,0x00},  /* 0x13  s-cedil ba  */
{0x00,0x10,0xFE,0x10,0x10,0x00,0x00,
 0x00,0x00,0x0A,0x0A,0x04,0x02,0x00},  /* 0x14  t-cedil fe  */
{0xC0,0x30,0x0A,0x09,0x32,0xC0,0x00,
 0x07,0x01,0x01,0x01,0x01,0x07,0x00},  /* 0x15  A_circ  c2  */
{0xC0,0x30,0x09,0x0A,0x31,0xC0,0x00,
 0x07,0x01,0x01,0x01,0x01,0x07,0x00},  /* 0x16  A_breve c3  */
{0x00,0x00,0x0A,0xF9,0x0A,0x00,0x00,
 0x00,0x00,0x04,0x07,0x04,0x00,0x00},  /* 0x17  I_circ  ce  */
{0x0C,0x12,0x22,0x22,0x42,0x8C,0x00,
 0x03,0x0A,0x0A,0x06,0x02,0x01,0x00},  /* 0x18  S-cedil aa  */
{0x00,0x02,0x02,0xF9,0x02,0x02,0x00,
 0x00,0x00,0x08,0x0B,0x04,0x00,0x00},  /* 0x19  T-cedil de  */
/* ----DK---ISO-8859-15------- */
{0x80,0x4A,0x4D,0x4A,0x48,0xF0,0x00,
 0x03,0x04,0x04,0x04,0x02,0x07,0x00},  /* 0x1a  a_ring  e5  */
{0xF0,0x08,0xF8,0x48,0x48,0x70,0x00,
 0x03,0x04,0x07,0x04,0x04,0x02,0x00},  /* 0x1b  a_elig  e6  */
{0xE0,0x10,0x08,0x88,0x50,0xE0,0x00,
 0x01,0x02,0x05,0x04,0x02,0x01,0x00},  /* 0x1c  o_slash f8  */
{0xC0,0x30,0x0A,0x0D,0x32,0xC0,0x00,
 0x07,0x01,0x01,0x01,0x01,0x07,0x00},  /* 0x1d  A_ring  c5  */
{0xF8,0x24,0x22,0xFE,0x22,0x02,0x00,
 0x07,0x00,0x00,0x07,0x04,0x04,0x00},  /* 0x1e  A_elig  c6  */
{0xF8,0x84,0x42,0x22,0x14,0xF8,0x00,
 0x01,0x02,0x04,0x04,0x02,0x01,0x00},  /* 0x1f  O_slash d8  */
 #else
{0x08,0xF8,0x00,0x00,0xF8,0x08,0x00,
 0x00,0x00,0x01,0x05,0x07,0x04,0x00},  /* 0x10 Cyr_tsch */
{0xF8,0x00,0xF0,0x00,0xF8,0x00,0x00,
 0x07,0x04,0x07,0x04,0x07,0x00,0x00},  /* 0x11 Cyr_sch */
{0x38,0x08,0xF8,0x40,0x20,0xC0,0x00,
 0x00,0x04,0x07,0x04,0x04,0x03,0x00},  /* 0x12 Cyr_hh */
{0xF8,0x40,0x20,0xC0,0x00,0xF8,0x00,
 0x07,0x04,0x04,0x03,0x00,0x07,0x00},  /* 0x13 Cyr_y */
{0x08,0xF8,0x40,0x20,0x20,0xC0,0x00,
 0x04,0x07,0x04,0x04,0x04,0x03,0x00},  /* 0x14 Cyr_ww */
{0x38,0x10,0x48,0x48,0x50,0xE0,0x00,
 0x01,0x02,0x04,0x04,0x02,0x01,0x00},  /* 0x15 Cyr_e */
{0xF8,0x40,0xF0,0x08,0x08,0xF0,0x00,
 0x07,0x00,0x03,0x04,0x04,0x03,0x00},  /* 0x16 Cyr_ju */
{0x70,0x88,0x88,0x88,0xF0,0x08,0x00,
 0x04,0x06,0x01,0x00,0x07,0x04,0x00},  /* 0x17 Cyr_ja */
{0x00,0xF8,0x04,0x02,0xFE,0x02,0x00,
 0x0C,0x07,0x04,0x04,0x07,0x0C,0x00},  /* 0x18 Cry_D */
{0xFE,0x00,0x00,0x00,0xFE,0x00,0x00,
 0x07,0x04,0x04,0x04,0x07,0x0C,0x00},  /* 0x19 Cyr_C */
{0xFE,0x00,0xFE,0x00,0xFE,0x00,0x00,
 0x07,0x04,0x07,0x04,0x07,0x0C,0x00},  /* 0x1a Cyr_Schtsch*/
{0x00,0xE0,0x10,0x08,0xF8,0x08,0x00,
 0x0C,0x07,0x04,0x04,0x07,0x0C,0x00},  /* 0x1b Cyr_d */
{0xE0,0x14,0xFC,0x14,0xE0,0x00,0x00,
 0x01,0x0A,0x0F,0x0A,0x01,0x00,0x00},  /* 0x1c ,Cyr_f */
{0xF8,0x00,0x00,0x00,0xF8,0x00,0x00,
 0x07,0x04,0x04,0x04,0x07,0x0C,0x00},  /* 0x1d Cyr_c */
{0xF8,0x00,0xF8,0x00,0xF8,0x00,0x00,
 0x07,0x04,0x07,0x04,0x07,0x0C,0x00},  /* 0x1e Cyr_scht */
{0x00,0x00,0x00,0x00,0x00,0x00,0x00,
 0x00,0x00,0x00,0x00,0x00,0x00,0x00},  /* 0x1f  */
 #endif
/* ----ASCII-0x20-0x79---------------------------- */
{0x00,0x00,0x00,0x00,0x00,0x00,0x00,
 0x00,0x00,0x00,0x00,0x00,0x00,0x00},  /* 0x20 ' ' */
{0x00,0x00,0x3C,0xFE,0x3C,0x00,0x00,
 0x00,0x00,0x00,0x1B,0x00,0x00,0x00},  /* 0x21 '!' */
{0x00,0x16,0x0E,0x00,0x16,0x0E,0x00,
 0x00,0x00,0x00,0x00,0x00,0x00,0x00},  /* 0x22 '"' */
{0x08,0xFE,0x08,0x08,0xFE,0x08,0x00,
 0x01,0x07,0x01,0x01,0x07,0x01,0x00},  /* 0x23 '#' */
{0x38,0xFE,0x44,0x84,0xFE,0x08,0x00,
 0x04,0x1F,0x08,0x08,0x1F,0x07,0x00},  /* 0x24 '$' */
{0x1C,0x14,0x9C,0x40,0x20,0x18,0x00,
 0x06,0x01,0x00,0x0E,0x0A,0x0E,0x00},  /* 0x25 '%' */
{0x88,0x54,0x22,0x54,0x88,0xC0,0x00,
 0x03,0x04,0x04,0x02,0x01,0x06,0x00},  /* 0x26 '&' */
{0x00,0x00,0x16,0x0E,0x00,0x00,0x00,
 0x00,0x00,0x00,0x00,0x00,0x00,0x00},  /* 0x27 ''' */
{0xF0,0x08,0x04,0x02,0x02,0x00,0x00,
 0x03,0x04,0x08,0x10,0x10,0x00,0x00},  /* 0x28 '(' */
{0x00,0x02,0x02,0x04,0x08,0xF0,0x00,
 0x00,0x10,0x10,0x08,0x04,0x03,0x00},  /* 0x29 ')' */
{0x48,0x50,0xE0,0xE0,0x50,0x48,0x00,
 0x02,0x01,0x00,0x00,0x01,0x02,0x00},  /* 0x2a '*' */
{0x00,0x40,0x40,0xF0,0x40,0x40,0x00,
 0x00,0x00,0x00,0x01,0x00,0x00,0x00},  /* 0x2b '+' */
{0x00,0x00,0x00,0x00,0x00,0x00,0x00,
 0x00,0x00,0x16,0x0E,0x00,0x00,0x00},  /* 0x2c ',' */
{0x40,0x40,0x40,0x40,0x40,0x40,0x00,
 0x00,0x00,0x00,0x00,0x00,0x00,0x00},  /* 0x2d '-' */
{0x00,0x00,0x00,0x00,0x00,0x00,0x00,
 0x00,0x00,0x06,0x06,0x00,0x00,0x00},  /* 0x2e '.' */
{0x00,0x80,0x60,0x18,0x06,0x00,0x00,
 0x06,0x01,0x00,0x00,0x00,0x00,0x00},  /* 0x2f '/' */
{0xF8,0x84,0x42,0x22,0x14,0xF8,0x00,
 0x01,0x02,0x04,0x04,0x02,0x01,0x00},  /* 0x30 '0' */
{0x00,0x08,0x04,0xFE,0x00,0x00,0x00,
 0x00,0x00,0x00,0x07,0x00,0x00,0x00},  /* 0x31 '1' */
{0x18,0x04,0x82,0x42,0x24,0x18,0x00,
 0x06,0x05,0x04,0x04,0x04,0x04,0x00},  /* 0x32 '2' */
{0x0C,0x02,0x02,0x22,0x54,0x88,0x00,
 0x03,0x04,0x04,0x04,0x02,0x01,0x00},  /* 0x33 '3' */
{0xC0,0xB0,0x8C,0x82,0xFE,0x80,0x00,
 0x00,0x00,0x00,0x00,0x07,0x00,0x00},  /* 0x34 '4' */
{0x3E,0x22,0x12,0x12,0x22,0xC2,0x00,
 0x01,0x02,0x04,0x04,0x02,0x01,0x00},  /* 0x35 '5' */
{0xF8,0x24,0x12,0x12,0x22,0xC4,0x00,
 0x01,0x02,0x04,0x04,0x02,0x01,0x00},  /* 0x36 '6' */
{0x02,0x82,0x42,0x22,0x12,0x0E,0x00,
 0x00,0x07,0x00,0x00,0x00,0x00,0x00},  /* 0x37 '7' */
{0x88,0x54,0x22,0x22,0x54,0x88,0x00,
 0x01,0x02,0x04,0x04,0x02,0x01,0x00},  /* 0x38 '8' */
{0x38,0x44,0x82,0x82,0x44,0xF8,0x00,
 0x02,0x04,0x04,0x04,0x02,0x01,0x00},  /* 0x39 '9' */
{0x00,0x00,0x30,0x30,0x00,0x00,0x00,
 0x00,0x00,0x06,0x06,0x00,0x00,0x00},  /* 0x3a ':' */
{0x00,0x00,0x30,0x30,0x00,0x00,0x00,
 0x00,0x00,0x0A,0x06,0x00,0x00,0x00},  /* 0x3b ';' */
{0x00,0x40,0xA0,0x10,0x08,0x04,0x00,
 0x00,0x00,0x00,0x01,0x02,0x04,0x00},  /* 0x3c '<' */
{0x20,0x20,0x20,0x20,0x20,0x20,0x00,
 0x01,0x01,0x01,0x01,0x01,0x01,0x00},  /* 0x3d '=' */
{0x00,0x04,0x08,0x10,0xA0,0x40,0x00,
 0x00,0x04,0x02,0x01,0x00,0x00,0x00},  /* 0x3e '>' */
{0x18,0x04,0x82,0x42,0x24,0x18,0x00,
 0x00,0x00,0x0D,0x00,0x00,0x00,0x00},  /* 0x3f '?' */
{0xF8,0x04,0x62,0x92,0x94,0xF8,0x00,
 0x01,0x02,0x04,0x04,0x04,0x02,0x00},  /* 0x40 '@' */
{0xF0,0x4C,0x42,0x42,0x4C,0xF0,0x00,
 0x07,0x00,0x00,0x00,0x00,0x07,0x00},  /* 0x41 'A' */
{0xFE,0x22,0x22,0x22,0x22,0xDC,0x00,
 0x07,0x04,0x04,0x04,0x04,0x03,0x00},  /* 0x42 'B' */
{0xFC,0x02,0x02,0x02,0x02,0x0C,0x00,
 0x03,0x04,0x04,0x04,0x04,0x03,0x00},  /* 0x43 'C' */
{0xFE,0x02,0x02,0x02,0x02,0xFC,0x00,
 0x07,0x04,0x04,0x04,0x04,0x03,0x00},  /* 0x44 'D' */
{0xFE,0x22,0x22,0x22,0x22,0x02,0x00,
 0x07,0x04,0x04,0x04,0x04,0x04,0x00},  /* 0x45 'E' */
{0xFE,0x22,0x22,0x22,0x02,0x02,0x00,
 0x07,0x00,0x00,0x00,0x00,0x00,0x00},  /* 0x46 'F' */
{0xFC,0x02,0x02,0x42,0x42,0xCC,0x00,
 0x03,0x04,0x04,0x04,0x02,0x07,0x00},  /* 0x47 'G' */
{0xFE,0x20,0x20,0x20,0x20,0xFE,0x00,
 0x07,0x00,0x00,0x00,0x00,0x07,0x00},  /* 0x48 'H' */
{0x00,0x00,0x02,0xFE,0x02,0x00,0x00,
 0x00,0x00,0x04,0x07,0x04,0x00,0x00},  /* 0x49 'I' */
{0x00,0x00,0x00,0x00,0xFE,0x00,0x00,
 0x00,0x02,0x04,0x04,0x03,0x00,0x00},  /* 0x4a 'J' */
{0xFE,0x60,0x90,0x08,0x04,0x02,0x00,
 0x07,0x00,0x00,0x01,0x02,0x04,0x00},  /* 0x4b 'K' */
{0xFE,0x00,0x00,0x00,0x00,0x00,0x00,
 0x07,0x04,0x04,0x04,0x04,0x04,0x00},  /* 0x4c 'L' */
{0xFE,0x0C,0x30,0x30,0x0C,0xFE,0x00,
 0x07,0x00,0x00,0x00,0x00,0x07,0x00},  /* 0x4d 'M' */
{0x00,0xFE,0x1C,0x70,0xC0,0xFE,0x00,
 0x00,0x07,0x00,0x00,0x01,0x07,0x00},  /* 0x4e 'N' **/ 
{0xFC,0x02,0x02,0x02,0x02,0xFC,0x00,
 0x03,0x04,0x04,0x04,0x04,0x03,0x00},  /* 0x4f 'O' */
{0xFE,0x42,0x42,0x42,0x42,0x3C,0x00,
 0x07,0x00,0x00,0x00,0x00,0x00,0x00},  /* 0x50 'P' */
{0xFC,0x02,0x02,0x02,0x02,0xFC,0x00,
 0x03,0x04,0x04,0x05,0x02,0x05,0x00},  /* 0x51 'Q' */
{0xFE,0x42,0xC2,0x42,0x42,0x3C,0x00,
 0x07,0x00,0x00,0x01,0x02,0x04,0x00},  /* 0x52 'R' */
{0x0C,0x12,0x22,0x22,0x42,0x8C,0x00,
 0x03,0x04,0x04,0x04,0x04,0x03,0x00},  /* 0x53 'S' */
{0x00,0x02,0x02,0xFE,0x02,0x02,0x00,
 0x00,0x00,0x00,0x07,0x00,0x00,0x00},  /* 0x54 'T' */
{0xFE,0x00,0x00,0x00,0x00,0xFE,0x00,
 0x03,0x04,0x04,0x04,0x04,0x03,0x00},  /* 0x55 'U' */
{0x00,0x7E,0xC0,0x00,0xC0,0x7E,0x00,
 0x00,0x00,0x01,0x07,0x01,0x00,0x00},  /* 0x56 'V' */
{0x00,0xFE,0x80,0xF8,0x80,0xFE,0x00,
 0x00,0x00,0x07,0x01,0x07,0x00,0x00},  /* 0x57 'W' */
{0x06,0x98,0x60,0x60,0x98,0x06,0x00,
 0x06,0x01,0x00,0x00,0x01,0x06,0x00},  /* 0x58 'X' */
{0x00,0x1E,0x20,0xC0,0x20,0x1E,0x00,
 0x00,0x00,0x00,0x07,0x00,0x00,0x00},  /* 0x59 'Y' */
{0x02,0x82,0x42,0x22,0x12,0x0E,0x00,
 0x07,0x04,0x04,0x04,0x04,0x04,0x00},  /* 0x5a 'Z' */
{0x00,0xFE,0x02,0x02,0x02,0x00,0x00,
 0x00,0x0F,0x08,0x08,0x08,0x00,0x00},  /* 0x5b '[' */
{0x06,0x18,0x60,0x80,0x00,0x00,0x00,
 0x00,0x00,0x00,0x01,0x06,0x00,0x00},  /* 0x5c '\' */
{0x00,0x02,0x02,0x02,0xFE,0x00,0x00,
 0x00,0x08,0x08,0x08,0x0F,0x00,0x00},  /* 0x5d ']' */
{0x00,0x08,0x04,0x02,0x04,0x08,0x00,
 0x00,0x00,0x00,0x00,0x00,0x00,0x00},  /* 0x5e '^' */
{0x00,0x00,0x00,0x00,0x00,0x00,0x00,
 0x08,0x08,0x08,0x08,0x08,0x08,0x08},  /* 0x5f '_' */
{0x00,0x00,0x0E,0x16,0x00,0x00,0x00,
 0x00,0x00,0x00,0x00,0x00,0x00,0x00},  /* 0x60 '`' */
{0x80,0x48,0x48,0x48,0x48,0xF0,0x00,
 0x03,0x04,0x04,0x04,0x02,0x07,0x00},  /* 0x61 'a' */
{0xFE,0x10,0x08,0x08,0x08,0xF0,0x00,
 0x07,0x04,0x04,0x04,0x04,0x03,0x00},  /* 0x62 'b' */
{0xF0,0x08,0x08,0x08,0x08,0x30,0x00,
 0x03,0x04,0x04,0x04,0x04,0x02,0x00},  /* 0x63 'c' */
{0xF0,0x08,0x08,0x08,0x10,0xFE,0x00,
 0x03,0x04,0x04,0x04,0x04,0x07,0x00},  /* 0x64 'd' */
{0xF0,0x88,0x88,0x88,0x88,0x70,0x00,
 0x03,0x04,0x04,0x04,0x04,0x04,0x00},  /* 0x65 'e' */
{0x00,0x10,0xFC,0x12,0x12,0x04,0x00,
 0x00,0x00,0x07,0x00,0x00,0x00,0x00},  /* 0x66 'f' */
{0xF0,0x08,0x08,0x08,0x08,0xF0,0x00,
 0x04,0x09,0x09,0x09,0x09,0x07,0x00},  /* 0x67 'g' */
{0xFE,0x20,0x10,0x08,0x08,0xF0,0x00,
 0x07,0x00,0x00,0x00,0x00,0x07,0x00},  /* 0x68 'h' */
{0x00,0x00,0x08,0xFA,0x00,0x00,0x00,
 0x00,0x00,0x00,0x07,0x00,0x00,0x00},  /* 0x69 'i' */
{0x00,0x00,0x00,0xFA,0x00,0x00,0x00,
 0x04,0x08,0x08,0x07,0x00,0x00,0x00},  /* 0x6a 'j' */
{0xFE,0x40,0xA0,0x10,0x08,0x00,0x00,
 0x07,0x00,0x00,0x01,0x02,0x04,0x00},  /* 0x6b 'k' */
{0x00,0x00,0x02,0xFE,0x00,0x00,0x00,
 0x00,0x00,0x00,0x03,0x04,0x00,0x00},  /* 0x6c 'l' */
{0x00,0xF8,0x08,0xF0,0x08,0xF0,0x00,
 0x00,0x07,0x00,0x07,0x00,0x07,0x00},  /* 0x6d 'm' **/ 
{0xF8,0x20,0x10,0x08,0x08,0xF0,0x00,
 0x07,0x00,0x00,0x00,0x00,0x07,0x00},  /* 0x6e 'n' */
{0xF0,0x08,0x08,0x08,0x08,0xF0,0x00,
 0x03,0x04,0x04,0x04,0x04,0x03,0x00},  /* 0x6f 'o' */
{0xF8,0x10,0x08,0x08,0x08,0xF0,0x00,
 0x0F,0x01,0x02,0x02,0x02,0x01,0x00},  /* 0x70 'p' */
{0xF0,0x08,0x08,0x08,0x10,0xF8,0x00,
 0x01,0x02,0x02,0x02,0x01,0x0F,0x00},  /* 0x71 'q' */
{0xF8,0x20,0x10,0x08,0x08,0x30,0x00,
 0x07,0x00,0x00,0x00,0x00,0x00,0x00},  /* 0x72 'r' */
{0x30,0x48,0x48,0x88,0x88,0x10,0x00,
 0x02,0x04,0x04,0x04,0x04,0x03,0x00},  /* 0x73 's' */
{0x00,0x10,0xFE,0x10,0x10,0x00,0x00,
 0x00,0x00,0x03,0x04,0x04,0x02,0x00},  /* 0x74 't' */
{0xF8,0x00,0x00,0x00,0x00,0xF8,0x00,
 0x03,0x04,0x04,0x04,0x02,0x07,0x00},  /* 0x75 'u' */
{0x00,0x78,0xC0,0x00,0xC0,0x78,0x00,
 0x00,0x00,0x01,0x07,0x01,0x00,0x00},  /* 0x76 'v' **/
{0x00,0xF8,0x80,0xC0,0x80,0xF8,0x00,
 0x00,0x00,0x07,0x01,0x07,0x00,0x00},  /* 0x77 'w' **/
{0x18,0x60,0x80,0x80,0x60,0x18,0x00,
 0x06,0x01,0x00,0x00,0x01,0x06,0x00},  /* 0x78 'x' */
{0xF8,0x00,0x00,0x00,0x80,0xF8,0x00,
 0x04,0x09,0x09,0x09,0x08,0x07,0x00},  /* 0x79 'y' */
{0x08,0x08,0x88,0x48,0x28,0x18,0x00,
 0x06,0x05,0x04,0x04,0x04,0x04,0x00},  /* 0x7a 'z' */
{0x00,0x40,0xA0,0x1C,0x02,0x02,0x00,
 0x00,0x00,0x00,0x07,0x08,0x08,0x00},  /* 0x7b '{' */
{0x00,0x00,0x00,0xFE,0x00,0x00,0x00,
 0x00,0x00,0x00,0x1F,0x00,0x00,0x00},  /* 0x7c '|' **/
{0x00,0x02,0x02,0x1C,0xA0,0x40,0x00,
 0x00,0x08,0x08,0x07,0x00,0x00,0x00},  /* 0x7d '}' */
{0x04,0x02,0x01,0x02,0x04,0x02,0x01,
 0x00,0x00,0x00,0x00,0x00,0x00,0x00},  /* 0x7e '~' */
{0xE0,0x10,0x08,0x04,0x08,0x10,0xE0,
 0x01,0x01,0x01,0x01,0x01,0x01,0x01},  /* 0x7f  */
 #if defined LANG_FRANCAIS
  #ifdef WITH_CAPITAL_SPECIALS
/* ---F---  ISO8859-15  ------ */
{0xC0,0x30,0x09,0x0A,0x30,0xC0,0x00,
 0x07,0x01,0x01,0x01,0x01,0x07,0x00},  /* 0x80 A_grave c0 */
{0xC0,0x30,0x0A,0x09,0x32,0xC0,0x00,
 0x07,0x01,0x01,0x01,0x01,0x07,0x00},  /* 0x81 A_circ  c2 */
{0xF8,0x24,0x22,0xFE,0x22,0x02,0x00,
 0x07,0x00,0x00,0x07,0x04,0x04,0x00},  /* 0x82 A_elig  c6 */
{0xFC,0x02,0x02,0x02,0x02,0x8C,0x00,
 0x01,0x0A,0x0A,0x04,0x02,0x01,0x00},  /* 0x83 C_cedil c7 */
{0xFC,0x44,0x44,0x46,0x45,0x04,0x00,
 0x07,0x04,0x04,0x04,0x04,0x04,0x00},  /* 0x84 E_acute c9 */
{0xFC,0x46,0x45,0x46,0x44,0x04,0x00,
 0x07,0x04,0x04,0x04,0x04,0x04,0x00},  /* 0x85 E_circ  ca */
{0xFC,0x44,0x45,0x46,0x44,0x04,0x00,
 0x07,0x04,0x04,0x04,0x04,0x04,0x00},  /* 0x86 E_grave c8 */
{0xFC,0x45,0x44,0x44,0x45,0x04,0x00,
 0x07,0x04,0x04,0x04,0x04,0x04,0x00},  /* 0x87 E_uml   cb */
{0x00,0x00,0x0A,0xF9,0x0A,0x00,0x00,
 0x00,0x00,0x04,0x07,0x04,0x00,0x00},  /* 0x88 I_circ  ce */
{0x00,0x00,0x05,0xFC,0x05,0x00,0x00,
 0x00,0x00,0x04,0x07,0x04,0x00,0x00},  /* 0x89 I_uml   cf */
{0xF8,0x06,0x05,0x05,0x06,0xF8,0x00,
 0x03,0x04,0x04,0x04,0x04,0x03,0x00},  /* 0x8a O_circ  d4 */
{0xFC,0x02,0x02,0xFE,0x22,0x22,0x00,
 0x03,0x04,0x04,0x07,0x04,0x04,0x00},  /* 0x8b O_elig  bc */
{0xFC,0x00,0x01,0x02,0x00,0xFC,0x00,
 0x03,0x04,0x04,0x04,0x04,0x03,0x00},  /* 0x8c U_grave d9 */
{0xFC,0x02,0x01,0x02,0x00,0xFC,0x00,
 0x03,0x04,0x04,0x04,0x04,0x03,0x00},  /* 0x8d U_circ  db */
{0xFC,0x01,0x00,0x00,0x01,0xFC,0x00,
 0x03,0x04,0x04,0x04,0x04,0x03,0x00},  /* 0x8e U_uml   dc */
{0x00,0x3C,0x41,0x80,0x41,0x3C,0x00,
 0x00,0x00,0x00,0x07,0x00,0x00,0x00},  /* 0x8f Y_uml   be */
  #endif
 #elif defined LANG_CZECH || defined LANG_SLOVAK 
/* ---CZ-SL----- ISO8859-2----------- */
{0x00,0x10,0xFE,0x10,0x13,0x00,0x00,
 0x00,0x00,0x03,0x04,0x04,0x02,0x00},  /* 0x80 t_caron bb */
{0xF8,0x00,0x02,0x01,0x00,0xF8,0x00,
 0x03,0x04,0x04,0x04,0x02,0x07,0x00},  /* 0x81 u_acute fa */
{0xF8,0x02,0x00,0x00,0x02,0xF8,0x00,
 0x03,0x04,0x04,0x04,0x02,0x07,0x00},  /* 0x82 u_uml   fc */
{0xF8,0x00,0x02,0x05,0x02,0xF8,0x00,
 0x03,0x04,0x04,0x04,0x02,0x07,0x00},  /* 0x83 u_ring  f9 */
{0xF8,0x00,0x02,0x01,0x80,0xF8,0x00,
 0x04,0x09,0x09,0x09,0x08,0x07,0x00},  /* 0x84 y_acute fd */
{0x08,0x08,0x89,0x4A,0x29,0x18,0x00,
 0x06,0x05,0x04,0x04,0x04,0x04,0x00},  /* 0x85 z_caron be */
  #ifdef WITH_CAPITAL_SPECIALS
{0xC0,0x30,0x08,0x0A,0x31,0xC0,0x00,
 0x07,0x01,0x01,0x01,0x01,0x07,0x00},  /* 0x86 A_acute c1 */
{0xE0,0x99,0x84,0x84,0x99,0xE0,0x00,
 0x07,0x00,0x00,0x00,0x00,0x07,0x00},  /* 0x87 A_uml   c4 */
{0xF8,0x04,0x05,0x06,0x05,0x18,0x00,
 0x03,0x04,0x04,0x04,0x04,0x03,0x00},  /* 0x88 C_caron c8 */
{0xFC,0x05,0x06,0x05,0x04,0xF8,0x00,
 0x07,0x04,0x04,0x04,0x04,0x03,0x00},  /* 0x89 D_caron cf */
{0xFC,0x44,0x44,0x46,0x45,0x04,0x00,
 0x07,0x04,0x04,0x04,0x04,0x04,0x00},  /* 0x8a E_acute c9 */
{0xFC,0x44,0x45,0x46,0x45,0x04,0x00,
 0x07,0x04,0x04,0x04,0x04,0x04,0x00},  /* 0x8b E_caron cc */
{0x00,0x00,0x04,0xFE,0x05,0x00,0x00,
 0x00,0x00,0x04,0x07,0x04,0x00,0x00},  /* 0x8c I_acute cd */
{0xFE,0x00,0x02,0x01,0x00,0x00,0x00,
 0x07,0x04,0x04,0x04,0x04,0x04,0x00},  /* 0x8d L_acute c5 */
{0xFE,0x00,0x06,0x00,0x00,0x00,0x00,
 0x07,0x04,0x04,0x04,0x04,0x04,0x00},  /* 0x8e L_caron a5 */
{0x00,0xFE,0x1D,0x72,0xC1,0xFE,0x00,
 0x00,0x07,0x00,0x00,0x01,0x07,0x00},  /* 0x8f N_caron d2 */
{0xF8,0x04,0x04,0x06,0x05,0xF8,0x00,
 0x03,0x04,0x04,0x04,0x04,0x03,0x00},  /* 0x90 O_acute d3 */
{0xF8,0x05,0x04,0x04,0x05,0xF8,0x00,
 0x03,0x04,0x04,0x04,0x04,0x03,0x00},  /* 0x91 O_uml   d6  */
{0xF8,0x06,0x05,0x05,0x06,0xF8,0x00,
 0x03,0x04,0x04,0x04,0x04,0x03,0x00},  /* 0x92 O_circ  d4 */
{0xFC,0x84,0x84,0x86,0x85,0x78,0x00,
 0x07,0x00,0x00,0x01,0x02,0x04,0x00},  /* 0x93 R_acute c0 */
{0xFC,0x84,0x85,0x86,0x85,0x78,0x00,
 0x07,0x00,0x00,0x01,0x02,0x04,0x00},  /* 0x94 R_caron d8 */
{0x38,0x45,0x46,0x45,0x44,0x88,0x00,
 0x02,0x04,0x04,0x04,0x04,0x03,0x00},  /* 0x95 S_caron a9 */
{0x00,0x04,0x05,0xFE,0x05,0x04,0x00,
 0x00,0x00,0x00,0x07,0x00,0x00,0x00},  /* 0x96 T_caron ab */
{0xFE,0x00,0x02,0x01,0x00,0xFE,0x00,
 0x03,0x04,0x04,0x04,0x04,0x03,0x00},  /* 0x97 U_acute da */
{0xFC,0x01,0x00,0x01,0x00,0xFC,0x00,
 0x03,0x04,0x04,0x04,0x04,0x03,0x00},  /* 0x98 U_uml   dc */
{0x00,0x1E,0x20,0xC3,0x20,0x1E,0x00,
 0x00,0x00,0x00,0x07,0x00,0x00,0x00},  /* 0x99 Y_acute dd **/
{0x04,0x84,0x45,0x26,0x15,0x0C,0x00,
 0x07,0x04,0x04,0x04,0x04,0x04,0x00},  /* 0x9a Z_caron ae */
  #endif
 #elif defined LANG_POLISH 
/* ---PL---  ISO8859-2  ------------- */
{0x04,0x84,0x44,0x26,0x15,0x0C,0x00,
 0x07,0x04,0x04,0x04,0x04,0x04,0x00},  /* 0x80 Z_acute ac */
{0x04,0x84,0x45,0x25,0x14,0x0C,0x00,
 0x07,0x04,0x04,0x04,0x04,0x04,0x00},  /* 0x81 Z_dot   af */
 #elif defined LCD_CYRILLIC     	
{0x02,0xFE,0x22,0x12,0x12,0xE6,0x00,
 0x04,0x07,0x04,0x04,0x04,0x03,0x00},  /* 0x80 Cyr_B  */
{0x02,0xFE,0x02,0x02,0x02,0x06,0x00,
 0x04,0x07,0x04,0x00,0x00,0x00,0x00},  /* 0x81 Cyr_G  */
{0x16,0xF6,0x90,0xD0,0x16,0x36,0x00,
 0x04,0x07,0x04,0x05,0x04,0x06,0x00},  /* 0x82 Cyr_Jo  */
{0x00,0xDE,0x70,0xFE,0x70,0xDE,0x00,
 0x00,0x07,0x00,0x07,0x00,0x07,0x00},  /* 0x83 Cyr_Tsch */
{0x0E,0x04,0x22,0x22,0x54,0x88,0x00,
 0x02,0x04,0x04,0x04,0x02,0x01,0x00},  /* 0x84 Cyr_Z  */
{0x00,0xFE,0xC0,0x70,0x1C,0xFE,0x00,
 0x00,0x07,0x01,0x00,0x00,0x07,0x00},  /* 0x85 Cyr_I  */
{0x00,0xF8,0x82,0xC6,0x62,0xF8,0x00,
 0x00,0x07,0x01,0x00,0x00,0x07,0x00},  /* 0x86 Cyr_J  */
{0x00,0xF8,0x04,0x02,0xFE,0x02,0x00,
 0x04,0x07,0x00,0x04,0x07,0x04,0x00},  /* 0x87 Cyr_L  */
{0x00,0xFE,0x02,0x02,0x02,0xFE,0x00,
 0x00,0x07,0x00,0x00,0x00,0x07,0x00},  /* 0x88 Cyr_P  */
{0x02,0x3E,0x40,0x40,0xFE,0x02,0x00,
 0x00,0x02,0x04,0x04,0x03,0x00,0x00},  /* 0x89 Cyr_U  */
{0xE0,0x10,0x0A,0xFE,0x0A,0x10,0xE0,
 0x00,0x01,0x0A,0x0F,0x0A,0x01,0x00},  /* 0x8a Cyr_F */
{0x02,0x7E,0x80,0x42,0xFE,0x02,0x00,
 0x00,0x00,0x00,0x04,0x07,0x04,0x00},  /* 0x8b Cyr_Tsch */
{0x00,0xFE,0x00,0xFE,0x00,0xFE,0x00,
 0x00,0x07,0x04,0x07,0x04,0x07,0x00},  /* 0x8c Cyr_Sch */
{0x02,0xFE,0x42,0x20,0x20,0xC0,0x00,
 0x04,0x07,0x04,0x04,0x04,0x03,0x00},  /* 0x8d Cyr_HH */
{0xFE,0x40,0x20,0xC0,0x00,0xFE,0x00,
 0x07,0x04,0x04,0x03,0x00,0x07,0x00},  /* 0x8e Cyr_Y */
{0x0E,0x04,0x72,0x22,0x24,0xF8,0x00,
 0x02,0x04,0x04,0x04,0x02,0x01,0x00},  /* 0x8f Cyr_E */
{0xFE,0x20,0xFC,0x02,0x02,0xFC,0x00,
 0x07,0x00,0x03,0x04,0x04,0x03,0x00},  /* 0x90 Cyr_Ju */
{0x3C,0x42,0xC2,0x42,0xFE,0x02,0x00,
 0x04,0x07,0x01,0x00,0x07,0x04,0x00},  /* 0x91 Cyr_Ja */
{0x00,0xF0,0x48,0x24,0x26,0xC2,0x00,
 0x00,0x03,0x04,0x04,0x04,0x03,0x00},  /* 0x92 Cyr_b */
{0x08,0xF8,0x48,0x48,0x48,0xB0,0x00,
 0x04,0x07,0x04,0x04,0x04,0x03,0x00},  /* 0x93 Cyr_v */
{0x08,0xF8,0x08,0x08,0x08,0x18,0x00,
 0x04,0x07,0x04,0x00,0x00,0x00,0x00},  /* 0x94 Cyr_g */
{0xC6,0xA6,0x90,0x90,0xA6,0xC6,0x00,
 0x01,0x02,0x04,0x04,0x04,0x00,0x00},  /* 0x95 Cyr_jo */
{0x00,0xB8,0xC0,0xF8,0xC0,0xB8,0x00,
 0x00,0x07,0x00,0x07,0x00,0x07,0x00},  /* 0x96 Cyr_zsch */
{0x38,0x10,0x08,0x48,0xA8,0x10,0x00,
 0x03,0x04,0x04,0x04,0x04,0x03,0x00},  /* 0x97 Cyr_z */
{0x00,0xF8,0x80,0xC0,0x60,0xF8,0x00,
 0x00,0x07,0x01,0x00,0x00,0x07,0x00},  /* 0x98 Cyr_i */
{0x00,0xF0,0x00,0x8C,0xC6,0xF0,0x00,
 0x00,0x07,0x03,0x01,0x00,0x07,0x00},  /* 0x99 Cyr_j */
{0x08,0xF8,0x48,0xE0,0x38,0x08,0x00,
 0x04,0x07,0x04,0x01,0x07,0x04,0x00},  /* 0x9a Cyr_k */
{0x00,0xE0,0x10,0x08,0xF8,0x08,0x00,
 0x04,0x07,0x00,0x04,0x07,0x04,0x00},  /* 0x9b Cyr_l */
{0x00,0xF8,0x70,0xC0,0x70,0xF8,0x00,
 0x00,0x07,0x00,0x01,0x00,0x07,0x00},  /* 0x9c Cyr_m */
{0x00,0xF8,0x40,0x40,0x40,0xF8,0x00,
 0x00,0x07,0x00,0x00,0x00,0x07,0x00},  /* 0x9d Cyr_n */
{0x00,0xF8,0x08,0x08,0x08,0xF8,0x00,
 0x00,0x07,0x00,0x00,0x00,0x07,0x00},  /* 0x9e Cyr_p */
{0x00,0x38,0x08,0xF8,0x08,0x38,0x00,
 0x00,0x00,0x04,0x07,0x04,0x00,0x00},  /* 0x9f Cyr_t */
 #endif
};
#else
 #ifndef __ASSEMBLER__
extern const unsigned char PROGMEM font[CHAR_COUNT][(FONT_WIDTH * ((FONT_HEIGHT + 7)/8))];
 #endif
#endif
/* ****************************** EOF ***************************************** */