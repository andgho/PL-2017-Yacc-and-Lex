/* A Bison parser, made by GNU Bison 2.3.  */

/* Skeleton interface for Bison's Yacc-like parsers in C

   Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2, or (at your option)
   any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 51 Franklin Street, Fifth Floor,
   Boston, MA 02110-1301, USA.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     _DECLARATION_ = 258,
     _DO_ = 259,
     _END_ = 260,
     _BEGIN_ = 261,
     _CALL_ = 262,
     _CONST_ = 263,
     _END_DO_ = 264,
     _END_IF_ = 265,
     _ARRAY_ = 266,
     _NUMBER_ = 267,
     _IDENT_ = 268,
     _DOTDOT_ = 269,
     _PROCEDURE_ = 270,
     _TYPE_ = 271,
     _END_FOR_ = 272,
     _END_WHILE_ = 273,
     _VAR_ = 274,
     _WHILE_ = 275,
     _ASSIGN_ = 276,
     _SEMICOLON_ = 277,
     _FOR_ = 278,
     _FUNCTION_ = 279,
     _IF_ = 280,
     _IMPLEMENTATION_ = 281,
     _THEN_ = 282,
     _OF_ = 283
   };
#endif
/* Tokens.  */
#define _DECLARATION_ 258
#define _DO_ 259
#define _END_ 260
#define _BEGIN_ 261
#define _CALL_ 262
#define _CONST_ 263
#define _END_DO_ 264
#define _END_IF_ 265
#define _ARRAY_ 266
#define _NUMBER_ 267
#define _IDENT_ 268
#define _DOTDOT_ 269
#define _PROCEDURE_ 270
#define _TYPE_ 271
#define _END_FOR_ 272
#define _END_WHILE_ 273
#define _VAR_ 274
#define _WHILE_ 275
#define _ASSIGN_ 276
#define _SEMICOLON_ 277
#define _FOR_ 278
#define _FUNCTION_ 279
#define _IF_ 280
#define _IMPLEMENTATION_ 281
#define _THEN_ 282
#define _OF_ 283




#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
# define YYSTYPE_IS_TRIVIAL 1
#endif

extern YYSTYPE yylval;

