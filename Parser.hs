{-# OPTIONS_GHC -w #-}
module Parser where

import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.1.1

data HappyAbsSyn t4 t5
	= HappyTerminal (Token)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,203) ([49184,1203,32,0,0,0,65504,1203,0,0,0,0,49184,1203,49184,1203,0,512,0,16,49184,1203,0,16,0,512,65504,1459,0,16384,49184,1203,65504,1203,65504,1207,0,0,49184,1203,49184,1203,49184,1203,49184,1203,49184,1203,49184,1203,49184,1203,49184,1203,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,49184,1203,0,0,0,0,0,12416,0,0,49184,1203,65504,3251,0,64,0,12416,0,0,0,0,65504,1211,49184,1203,0,64,49184,1203,49184,1203,0,0,0,0,0,12416,0,0,0,256,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exp","Type","num","'+'","'-'","'*'","'=='","'>'","'<'","'&&'","'||'","true","false","if","while","then","else","var","'\\\\'","'->'","'('","')'","'='","let","in","Bool","Num","':'","%eof"]
        bit_start = st Prelude.* 32
        bit_end = (st Prelude.+ 1) Prelude.* 32
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..31]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (6) = happyShift action_2
action_0 (15) = happyShift action_4
action_0 (16) = happyShift action_5
action_0 (17) = happyShift action_6
action_0 (18) = happyShift action_7
action_0 (21) = happyShift action_8
action_0 (22) = happyShift action_9
action_0 (24) = happyShift action_10
action_0 (27) = happyShift action_11
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (6) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (6) = happyShift action_2
action_3 (7) = happyShift action_19
action_3 (8) = happyShift action_20
action_3 (9) = happyShift action_21
action_3 (10) = happyShift action_22
action_3 (11) = happyShift action_23
action_3 (12) = happyShift action_24
action_3 (13) = happyShift action_25
action_3 (14) = happyShift action_26
action_3 (15) = happyShift action_4
action_3 (16) = happyShift action_5
action_3 (17) = happyShift action_6
action_3 (18) = happyShift action_7
action_3 (21) = happyShift action_8
action_3 (22) = happyShift action_9
action_3 (24) = happyShift action_10
action_3 (27) = happyShift action_11
action_3 (32) = happyAccept
action_3 (4) = happyGoto action_18
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_2

action_5 _ = happyReduce_3

action_6 (6) = happyShift action_2
action_6 (15) = happyShift action_4
action_6 (16) = happyShift action_5
action_6 (17) = happyShift action_6
action_6 (18) = happyShift action_7
action_6 (21) = happyShift action_8
action_6 (22) = happyShift action_9
action_6 (24) = happyShift action_10
action_6 (27) = happyShift action_11
action_6 (4) = happyGoto action_17
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (6) = happyShift action_2
action_7 (15) = happyShift action_4
action_7 (16) = happyShift action_5
action_7 (17) = happyShift action_6
action_7 (18) = happyShift action_7
action_7 (21) = happyShift action_8
action_7 (22) = happyShift action_9
action_7 (24) = happyShift action_10
action_7 (27) = happyShift action_11
action_7 (4) = happyGoto action_16
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (26) = happyShift action_15
action_8 _ = happyReduce_15

action_9 (21) = happyShift action_14
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (6) = happyShift action_2
action_10 (15) = happyShift action_4
action_10 (16) = happyShift action_5
action_10 (17) = happyShift action_6
action_10 (18) = happyShift action_7
action_10 (21) = happyShift action_8
action_10 (22) = happyShift action_9
action_10 (24) = happyShift action_10
action_10 (27) = happyShift action_11
action_10 (4) = happyGoto action_13
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (21) = happyShift action_12
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (26) = happyShift action_40
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (6) = happyShift action_2
action_13 (7) = happyShift action_19
action_13 (8) = happyShift action_20
action_13 (9) = happyShift action_21
action_13 (10) = happyShift action_22
action_13 (11) = happyShift action_23
action_13 (12) = happyShift action_24
action_13 (13) = happyShift action_25
action_13 (14) = happyShift action_26
action_13 (15) = happyShift action_4
action_13 (16) = happyShift action_5
action_13 (17) = happyShift action_6
action_13 (18) = happyShift action_7
action_13 (21) = happyShift action_8
action_13 (22) = happyShift action_9
action_13 (24) = happyShift action_10
action_13 (25) = happyShift action_39
action_13 (27) = happyShift action_11
action_13 (4) = happyGoto action_18
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (31) = happyShift action_38
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (6) = happyShift action_2
action_15 (15) = happyShift action_4
action_15 (16) = happyShift action_5
action_15 (17) = happyShift action_6
action_15 (18) = happyShift action_7
action_15 (21) = happyShift action_8
action_15 (22) = happyShift action_9
action_15 (24) = happyShift action_10
action_15 (27) = happyShift action_11
action_15 (4) = happyGoto action_37
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (6) = happyShift action_2
action_16 (7) = happyShift action_19
action_16 (8) = happyShift action_20
action_16 (9) = happyShift action_21
action_16 (10) = happyShift action_22
action_16 (11) = happyShift action_23
action_16 (12) = happyShift action_24
action_16 (13) = happyShift action_25
action_16 (14) = happyShift action_26
action_16 (15) = happyShift action_4
action_16 (16) = happyShift action_5
action_16 (17) = happyShift action_6
action_16 (18) = happyShift action_7
action_16 (21) = happyShift action_8
action_16 (22) = happyShift action_9
action_16 (24) = happyShift action_10
action_16 (27) = happyShift action_11
action_16 (4) = happyGoto action_36
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (6) = happyShift action_2
action_17 (7) = happyShift action_19
action_17 (8) = happyShift action_20
action_17 (9) = happyShift action_21
action_17 (10) = happyShift action_22
action_17 (11) = happyShift action_23
action_17 (12) = happyShift action_24
action_17 (13) = happyShift action_25
action_17 (14) = happyShift action_26
action_17 (15) = happyShift action_4
action_17 (16) = happyShift action_5
action_17 (17) = happyShift action_6
action_17 (18) = happyShift action_7
action_17 (19) = happyShift action_35
action_17 (21) = happyShift action_8
action_17 (22) = happyShift action_9
action_17 (24) = happyShift action_10
action_17 (27) = happyShift action_11
action_17 (4) = happyGoto action_18
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (6) = happyShift action_2
action_18 (7) = happyShift action_19
action_18 (8) = happyShift action_20
action_18 (9) = happyShift action_21
action_18 (10) = happyShift action_22
action_18 (11) = happyShift action_23
action_18 (12) = happyShift action_24
action_18 (13) = happyShift action_25
action_18 (14) = happyShift action_26
action_18 (15) = happyShift action_4
action_18 (16) = happyShift action_5
action_18 (17) = happyShift action_6
action_18 (18) = happyShift action_7
action_18 (21) = happyShift action_8
action_18 (22) = happyShift action_9
action_18 (24) = happyShift action_10
action_18 (27) = happyShift action_11
action_18 (4) = happyGoto action_18
action_18 _ = happyReduce_17

action_19 (6) = happyShift action_2
action_19 (15) = happyShift action_4
action_19 (16) = happyShift action_5
action_19 (17) = happyShift action_6
action_19 (18) = happyShift action_7
action_19 (21) = happyShift action_8
action_19 (22) = happyShift action_9
action_19 (24) = happyShift action_10
action_19 (27) = happyShift action_11
action_19 (4) = happyGoto action_34
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (6) = happyShift action_2
action_20 (15) = happyShift action_4
action_20 (16) = happyShift action_5
action_20 (17) = happyShift action_6
action_20 (18) = happyShift action_7
action_20 (21) = happyShift action_8
action_20 (22) = happyShift action_9
action_20 (24) = happyShift action_10
action_20 (27) = happyShift action_11
action_20 (4) = happyGoto action_33
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (6) = happyShift action_2
action_21 (15) = happyShift action_4
action_21 (16) = happyShift action_5
action_21 (17) = happyShift action_6
action_21 (18) = happyShift action_7
action_21 (21) = happyShift action_8
action_21 (22) = happyShift action_9
action_21 (24) = happyShift action_10
action_21 (27) = happyShift action_11
action_21 (4) = happyGoto action_32
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (6) = happyShift action_2
action_22 (15) = happyShift action_4
action_22 (16) = happyShift action_5
action_22 (17) = happyShift action_6
action_22 (18) = happyShift action_7
action_22 (21) = happyShift action_8
action_22 (22) = happyShift action_9
action_22 (24) = happyShift action_10
action_22 (27) = happyShift action_11
action_22 (4) = happyGoto action_31
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (6) = happyShift action_2
action_23 (15) = happyShift action_4
action_23 (16) = happyShift action_5
action_23 (17) = happyShift action_6
action_23 (18) = happyShift action_7
action_23 (21) = happyShift action_8
action_23 (22) = happyShift action_9
action_23 (24) = happyShift action_10
action_23 (27) = happyShift action_11
action_23 (4) = happyGoto action_30
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (6) = happyShift action_2
action_24 (15) = happyShift action_4
action_24 (16) = happyShift action_5
action_24 (17) = happyShift action_6
action_24 (18) = happyShift action_7
action_24 (21) = happyShift action_8
action_24 (22) = happyShift action_9
action_24 (24) = happyShift action_10
action_24 (27) = happyShift action_11
action_24 (4) = happyGoto action_29
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (6) = happyShift action_2
action_25 (15) = happyShift action_4
action_25 (16) = happyShift action_5
action_25 (17) = happyShift action_6
action_25 (18) = happyShift action_7
action_25 (21) = happyShift action_8
action_25 (22) = happyShift action_9
action_25 (24) = happyShift action_10
action_25 (27) = happyShift action_11
action_25 (4) = happyGoto action_28
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (6) = happyShift action_2
action_26 (15) = happyShift action_4
action_26 (16) = happyShift action_5
action_26 (17) = happyShift action_6
action_26 (18) = happyShift action_7
action_26 (21) = happyShift action_8
action_26 (22) = happyShift action_9
action_26 (24) = happyShift action_10
action_26 (27) = happyShift action_11
action_26 (4) = happyGoto action_27
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (6) = happyShift action_2
action_27 (7) = happyShift action_19
action_27 (8) = happyShift action_20
action_27 (9) = happyShift action_21
action_27 (10) = happyShift action_22
action_27 (11) = happyShift action_23
action_27 (12) = happyShift action_24
action_27 (13) = happyShift action_25
action_27 (14) = happyShift action_26
action_27 (15) = happyShift action_4
action_27 (16) = happyShift action_5
action_27 (17) = happyShift action_6
action_27 (18) = happyShift action_7
action_27 (21) = happyShift action_8
action_27 (22) = happyShift action_9
action_27 (24) = happyShift action_10
action_27 (27) = happyShift action_11
action_27 (4) = happyGoto action_18
action_27 _ = happyReduce_12

action_28 (6) = happyShift action_2
action_28 (7) = happyShift action_19
action_28 (8) = happyShift action_20
action_28 (9) = happyShift action_21
action_28 (10) = happyShift action_22
action_28 (11) = happyShift action_23
action_28 (12) = happyShift action_24
action_28 (13) = happyShift action_25
action_28 (14) = happyShift action_26
action_28 (15) = happyShift action_4
action_28 (16) = happyShift action_5
action_28 (17) = happyShift action_6
action_28 (18) = happyShift action_7
action_28 (21) = happyShift action_8
action_28 (22) = happyShift action_9
action_28 (24) = happyShift action_10
action_28 (27) = happyShift action_11
action_28 (4) = happyGoto action_18
action_28 _ = happyReduce_11

action_29 (6) = happyShift action_2
action_29 (7) = happyShift action_19
action_29 (8) = happyShift action_20
action_29 (9) = happyShift action_21
action_29 (10) = happyShift action_22
action_29 (11) = happyShift action_23
action_29 (12) = happyShift action_24
action_29 (13) = happyShift action_25
action_29 (14) = happyShift action_26
action_29 (15) = happyShift action_4
action_29 (16) = happyShift action_5
action_29 (17) = happyShift action_6
action_29 (18) = happyShift action_7
action_29 (21) = happyShift action_8
action_29 (22) = happyShift action_9
action_29 (24) = happyShift action_10
action_29 (27) = happyShift action_11
action_29 (4) = happyGoto action_18
action_29 _ = happyReduce_10

action_30 (6) = happyShift action_2
action_30 (7) = happyShift action_19
action_30 (8) = happyShift action_20
action_30 (9) = happyShift action_21
action_30 (10) = happyShift action_22
action_30 (11) = happyShift action_23
action_30 (12) = happyShift action_24
action_30 (13) = happyShift action_25
action_30 (14) = happyShift action_26
action_30 (15) = happyShift action_4
action_30 (16) = happyShift action_5
action_30 (17) = happyShift action_6
action_30 (18) = happyShift action_7
action_30 (21) = happyShift action_8
action_30 (22) = happyShift action_9
action_30 (24) = happyShift action_10
action_30 (27) = happyShift action_11
action_30 (4) = happyGoto action_18
action_30 _ = happyReduce_9

action_31 (6) = happyShift action_2
action_31 (7) = happyShift action_19
action_31 (8) = happyShift action_20
action_31 (9) = happyShift action_21
action_31 (10) = happyShift action_22
action_31 (11) = happyShift action_23
action_31 (12) = happyShift action_24
action_31 (13) = happyShift action_25
action_31 (14) = happyShift action_26
action_31 (15) = happyShift action_4
action_31 (16) = happyShift action_5
action_31 (17) = happyShift action_6
action_31 (18) = happyShift action_7
action_31 (21) = happyShift action_8
action_31 (22) = happyShift action_9
action_31 (24) = happyShift action_10
action_31 (27) = happyShift action_11
action_31 (4) = happyGoto action_18
action_31 _ = happyReduce_8

action_32 (6) = happyShift action_2
action_32 (7) = happyShift action_19
action_32 (8) = happyShift action_20
action_32 (9) = happyShift action_21
action_32 (10) = happyShift action_22
action_32 (11) = happyShift action_23
action_32 (12) = happyShift action_24
action_32 (13) = happyShift action_25
action_32 (14) = happyShift action_26
action_32 (15) = happyShift action_4
action_32 (16) = happyShift action_5
action_32 (17) = happyShift action_6
action_32 (18) = happyShift action_7
action_32 (21) = happyShift action_8
action_32 (22) = happyShift action_9
action_32 (24) = happyShift action_10
action_32 (27) = happyShift action_11
action_32 (4) = happyGoto action_18
action_32 _ = happyReduce_7

action_33 (6) = happyShift action_2
action_33 (7) = happyShift action_19
action_33 (8) = happyShift action_20
action_33 (9) = happyShift action_21
action_33 (10) = happyShift action_22
action_33 (11) = happyShift action_23
action_33 (12) = happyShift action_24
action_33 (13) = happyShift action_25
action_33 (14) = happyShift action_26
action_33 (15) = happyShift action_4
action_33 (16) = happyShift action_5
action_33 (17) = happyShift action_6
action_33 (18) = happyShift action_7
action_33 (21) = happyShift action_8
action_33 (22) = happyShift action_9
action_33 (24) = happyShift action_10
action_33 (27) = happyShift action_11
action_33 (4) = happyGoto action_18
action_33 _ = happyReduce_6

action_34 (6) = happyShift action_2
action_34 (8) = happyShift action_20
action_34 (9) = happyShift action_21
action_34 (10) = happyShift action_22
action_34 (11) = happyShift action_23
action_34 (12) = happyShift action_24
action_34 (13) = happyShift action_25
action_34 (14) = happyShift action_26
action_34 (15) = happyShift action_4
action_34 (16) = happyShift action_5
action_34 (17) = happyShift action_6
action_34 (18) = happyShift action_7
action_34 (21) = happyShift action_8
action_34 (22) = happyShift action_9
action_34 (24) = happyShift action_10
action_34 (27) = happyShift action_11
action_34 (4) = happyGoto action_18
action_34 _ = happyReduce_5

action_35 (6) = happyShift action_2
action_35 (15) = happyShift action_4
action_35 (16) = happyShift action_5
action_35 (17) = happyShift action_6
action_35 (18) = happyShift action_7
action_35 (21) = happyShift action_8
action_35 (22) = happyShift action_9
action_35 (24) = happyShift action_10
action_35 (27) = happyShift action_11
action_35 (4) = happyGoto action_46
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (6) = happyShift action_2
action_36 (7) = happyShift action_19
action_36 (8) = happyShift action_20
action_36 (9) = happyShift action_21
action_36 (10) = happyShift action_22
action_36 (11) = happyShift action_23
action_36 (12) = happyShift action_24
action_36 (13) = happyShift action_25
action_36 (14) = happyShift action_26
action_36 (15) = happyShift action_4
action_36 (16) = happyShift action_5
action_36 (17) = happyShift action_6
action_36 (18) = happyShift action_7
action_36 (21) = happyShift action_8
action_36 (22) = happyShift action_9
action_36 (24) = happyShift action_10
action_36 (27) = happyShift action_11
action_36 (4) = happyGoto action_18
action_36 _ = happyReduce_14

action_37 (6) = happyShift action_2
action_37 (7) = happyShift action_19
action_37 (8) = happyShift action_20
action_37 (9) = happyShift action_21
action_37 (10) = happyShift action_22
action_37 (11) = happyShift action_23
action_37 (12) = happyShift action_24
action_37 (13) = happyShift action_25
action_37 (14) = happyShift action_26
action_37 (15) = happyShift action_4
action_37 (16) = happyShift action_5
action_37 (17) = happyShift action_6
action_37 (18) = happyShift action_7
action_37 (21) = happyShift action_8
action_37 (22) = happyShift action_9
action_37 (24) = happyShift action_10
action_37 (27) = happyShift action_11
action_37 (4) = happyGoto action_18
action_37 _ = happyReduce_4

action_38 (24) = happyShift action_43
action_38 (29) = happyShift action_44
action_38 (30) = happyShift action_45
action_38 (5) = happyGoto action_42
action_38 _ = happyFail (happyExpListPerState 38)

action_39 _ = happyReduce_18

action_40 (6) = happyShift action_2
action_40 (15) = happyShift action_4
action_40 (16) = happyShift action_5
action_40 (17) = happyShift action_6
action_40 (18) = happyShift action_7
action_40 (21) = happyShift action_8
action_40 (22) = happyShift action_9
action_40 (24) = happyShift action_10
action_40 (27) = happyShift action_11
action_40 (4) = happyGoto action_41
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (6) = happyShift action_2
action_41 (7) = happyShift action_19
action_41 (8) = happyShift action_20
action_41 (9) = happyShift action_21
action_41 (10) = happyShift action_22
action_41 (11) = happyShift action_23
action_41 (12) = happyShift action_24
action_41 (13) = happyShift action_25
action_41 (14) = happyShift action_26
action_41 (15) = happyShift action_4
action_41 (16) = happyShift action_5
action_41 (17) = happyShift action_6
action_41 (18) = happyShift action_7
action_41 (21) = happyShift action_8
action_41 (22) = happyShift action_9
action_41 (24) = happyShift action_10
action_41 (27) = happyShift action_11
action_41 (28) = happyShift action_50
action_41 (4) = happyGoto action_18
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (23) = happyShift action_49
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (24) = happyShift action_43
action_43 (29) = happyShift action_44
action_43 (30) = happyShift action_45
action_43 (5) = happyGoto action_48
action_43 _ = happyFail (happyExpListPerState 43)

action_44 _ = happyReduce_20

action_45 _ = happyReduce_21

action_46 (6) = happyShift action_2
action_46 (7) = happyShift action_19
action_46 (8) = happyShift action_20
action_46 (9) = happyShift action_21
action_46 (10) = happyShift action_22
action_46 (11) = happyShift action_23
action_46 (12) = happyShift action_24
action_46 (13) = happyShift action_25
action_46 (14) = happyShift action_26
action_46 (15) = happyShift action_4
action_46 (16) = happyShift action_5
action_46 (17) = happyShift action_6
action_46 (18) = happyShift action_7
action_46 (20) = happyShift action_47
action_46 (21) = happyShift action_8
action_46 (22) = happyShift action_9
action_46 (24) = happyShift action_10
action_46 (27) = happyShift action_11
action_46 (4) = happyGoto action_18
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (6) = happyShift action_2
action_47 (15) = happyShift action_4
action_47 (16) = happyShift action_5
action_47 (17) = happyShift action_6
action_47 (18) = happyShift action_7
action_47 (21) = happyShift action_8
action_47 (22) = happyShift action_9
action_47 (24) = happyShift action_10
action_47 (27) = happyShift action_11
action_47 (4) = happyGoto action_54
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (23) = happyShift action_53
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (6) = happyShift action_2
action_49 (15) = happyShift action_4
action_49 (16) = happyShift action_5
action_49 (17) = happyShift action_6
action_49 (18) = happyShift action_7
action_49 (21) = happyShift action_8
action_49 (22) = happyShift action_9
action_49 (24) = happyShift action_10
action_49 (27) = happyShift action_11
action_49 (4) = happyGoto action_52
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (6) = happyShift action_2
action_50 (15) = happyShift action_4
action_50 (16) = happyShift action_5
action_50 (17) = happyShift action_6
action_50 (18) = happyShift action_7
action_50 (21) = happyShift action_8
action_50 (22) = happyShift action_9
action_50 (24) = happyShift action_10
action_50 (27) = happyShift action_11
action_50 (4) = happyGoto action_51
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (6) = happyShift action_2
action_51 (7) = happyShift action_19
action_51 (8) = happyShift action_20
action_51 (9) = happyShift action_21
action_51 (10) = happyShift action_22
action_51 (11) = happyShift action_23
action_51 (12) = happyShift action_24
action_51 (13) = happyShift action_25
action_51 (14) = happyShift action_26
action_51 (15) = happyShift action_4
action_51 (16) = happyShift action_5
action_51 (17) = happyShift action_6
action_51 (18) = happyShift action_7
action_51 (21) = happyShift action_8
action_51 (22) = happyShift action_9
action_51 (24) = happyShift action_10
action_51 (27) = happyShift action_11
action_51 (4) = happyGoto action_18
action_51 _ = happyReduce_19

action_52 (6) = happyShift action_2
action_52 (7) = happyShift action_19
action_52 (8) = happyShift action_20
action_52 (9) = happyShift action_21
action_52 (10) = happyShift action_22
action_52 (11) = happyShift action_23
action_52 (12) = happyShift action_24
action_52 (13) = happyShift action_25
action_52 (14) = happyShift action_26
action_52 (15) = happyShift action_4
action_52 (16) = happyShift action_5
action_52 (17) = happyShift action_6
action_52 (18) = happyShift action_7
action_52 (21) = happyShift action_8
action_52 (22) = happyShift action_9
action_52 (24) = happyShift action_10
action_52 (27) = happyShift action_11
action_52 (4) = happyGoto action_18
action_52 _ = happyReduce_16

action_53 (24) = happyShift action_43
action_53 (29) = happyShift action_44
action_53 (30) = happyShift action_45
action_53 (5) = happyGoto action_55
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (6) = happyShift action_2
action_54 (7) = happyShift action_19
action_54 (8) = happyShift action_20
action_54 (9) = happyShift action_21
action_54 (10) = happyShift action_22
action_54 (11) = happyShift action_23
action_54 (12) = happyShift action_24
action_54 (13) = happyShift action_25
action_54 (14) = happyShift action_26
action_54 (15) = happyShift action_4
action_54 (16) = happyShift action_5
action_54 (17) = happyShift action_6
action_54 (18) = happyShift action_7
action_54 (21) = happyShift action_8
action_54 (22) = happyShift action_9
action_54 (24) = happyShift action_10
action_54 (27) = happyShift action_11
action_54 (4) = happyGoto action_18
action_54 _ = happyReduce_13

action_55 (25) = happyShift action_56
action_55 _ = happyFail (happyExpListPerState 55)

action_56 _ = happyReduce_22

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyTerminal (TokenNum happy_var_1))
	 =  HappyAbsSyn4
		 (Num happy_var_1
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 _
	 =  HappyAbsSyn4
		 (BTrue
	)

happyReduce_3 = happySpecReduce_1  4 happyReduction_3
happyReduction_3 _
	 =  HappyAbsSyn4
		 (BFalse
	)

happyReduce_4 = happySpecReduce_3  4 happyReduction_4
happyReduction_4 (HappyAbsSyn4  happy_var_3)
	_
	(HappyTerminal (TokenVar happy_var_1))
	 =  HappyAbsSyn4
		 (Eq happy_var_1 happy_var_3
	)
happyReduction_4 _ _ _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_3  4 happyReduction_5
happyReduction_5 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Add happy_var_1 happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  4 happyReduction_6
happyReduction_6 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  4 happyReduction_7
happyReduction_7 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Mul happy_var_1 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  4 happyReduction_8
happyReduction_8 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Equal happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  4 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Great happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  4 happyReduction_10
happyReduction_10 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Less happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  4 happyReduction_11
happyReduction_11 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (And happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  4 happyReduction_12
happyReduction_12 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Or happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happyReduce 6 4 happyReduction_13
happyReduction_13 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_14 = happySpecReduce_3  4 happyReduction_14
happyReduction_14 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (While happy_var_2 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_1  4 happyReduction_15
happyReduction_15 (HappyTerminal (TokenVar happy_var_1))
	 =  HappyAbsSyn4
		 (Var happy_var_1
	)
happyReduction_15 _  = notHappyAtAll 

happyReduce_16 = happyReduce 6 4 happyReduction_16
happyReduction_16 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Lam happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_17 = happySpecReduce_2  4 happyReduction_17
happyReduction_17 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (App happy_var_1 happy_var_2
	)
happyReduction_17 _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  4 happyReduction_18
happyReduction_18 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Paren happy_var_2
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happyReduce 6 4 happyReduction_19
happyReduction_19 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Let happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_20 = happySpecReduce_1  5 happyReduction_20
happyReduction_20 _
	 =  HappyAbsSyn5
		 (TBool
	)

happyReduce_21 = happySpecReduce_1  5 happyReduction_21
happyReduction_21 _
	 =  HappyAbsSyn5
		 (TNum
	)

happyReduce_22 = happyReduce 5 5 happyReduction_22
happyReduction_22 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (TFun happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 32 32 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenNum happy_dollar_dollar -> cont 6;
	TokenAdd -> cont 7;
	TokenSub -> cont 8;
	TokenMul -> cont 9;
	TokenEqual -> cont 10;
	TokenGreat -> cont 11;
	TokenLess -> cont 12;
	TokenAnd -> cont 13;
	TokenOr -> cont 14;
	TokenTrue -> cont 15;
	TokenFalse -> cont 16;
	TokenIf -> cont 17;
	TokenWhile -> cont 18;
	TokenThen -> cont 19;
	TokenElse -> cont 20;
	TokenVar happy_dollar_dollar -> cont 21;
	TokenLam -> cont 22;
	TokenArrow -> cont 23;
	TokenLParen -> cont 24;
	TokenRParen -> cont 25;
	TokenEq -> cont 26;
	TokenLet -> cont 27;
	TokenIn -> cont 28;
	TokenBoolean -> cont 29;
	TokenNumber -> cont 30;
	TokenColon -> cont 31;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 32 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Prelude.Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Prelude.Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (Prelude.>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (Prelude.return)
happyThen1 m k tks = (Prelude.>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (Prelude.return) a
happyError' :: () => ([(Token)], [Prelude.String]) -> HappyIdentity a
happyError' = HappyIdentity Prelude.. (\(tokens, _) -> parserError tokens)
parser tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parserError :: [Token] -> a 
parserError _ = error "Syntax error!"
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Prelude.Int Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action









































indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x Prelude.< y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `Prelude.div` 16)) (bit `Prelude.mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Prelude.Int ->                    -- token number
         Prelude.Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k Prelude.- ((1) :: Prelude.Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Prelude.Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n Prelude.- ((1) :: Prelude.Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n Prelude.- ((1)::Prelude.Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ((HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = Prelude.error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `Prelude.seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
