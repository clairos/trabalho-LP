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
happyExpList = Happy_Data_Array.listArray (0,183) ([49184,601,16,0,0,0,16380,75,0,0,0,32768,26368,9,0,0,2048,4096,11488,1,512,0,8192,65024,11679,0,0,65409,2415,0,0,49184,601,57360,300,28680,150,14340,75,39938,37,52737,32786,26368,16393,45952,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,49184,601,0,3104,0,0,14340,75,40958,101,0,1,0,97,0,0,0,61440,12031,2049,38512,0,1024,512,9628,256,4814,0,0,0,0,0,6208,0,0,0,32,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exp","Type","num","'+'","'-'","'*'","'=='","'>'","'<'","'&&'","'||'","true","false","if","then","else","var","'\\\\'","'->'","'('","')'","'='","let","in","Bool","Num","':'","%eof"]
        bit_start = st Prelude.* 31
        bit_end = (st Prelude.+ 1) Prelude.* 31
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..30]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (6) = happyShift action_2
action_0 (15) = happyShift action_4
action_0 (16) = happyShift action_5
action_0 (17) = happyShift action_6
action_0 (20) = happyShift action_7
action_0 (21) = happyShift action_8
action_0 (23) = happyShift action_9
action_0 (26) = happyShift action_10
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (6) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (6) = happyShift action_2
action_3 (7) = happyShift action_16
action_3 (8) = happyShift action_17
action_3 (9) = happyShift action_18
action_3 (10) = happyShift action_19
action_3 (11) = happyShift action_20
action_3 (12) = happyShift action_21
action_3 (13) = happyShift action_22
action_3 (14) = happyShift action_23
action_3 (15) = happyShift action_4
action_3 (16) = happyShift action_5
action_3 (17) = happyShift action_6
action_3 (20) = happyShift action_7
action_3 (21) = happyShift action_8
action_3 (23) = happyShift action_9
action_3 (26) = happyShift action_10
action_3 (31) = happyAccept
action_3 (4) = happyGoto action_15
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_2

action_5 _ = happyReduce_3

action_6 (6) = happyShift action_2
action_6 (15) = happyShift action_4
action_6 (16) = happyShift action_5
action_6 (17) = happyShift action_6
action_6 (20) = happyShift action_7
action_6 (21) = happyShift action_8
action_6 (23) = happyShift action_9
action_6 (26) = happyShift action_10
action_6 (4) = happyGoto action_14
action_6 _ = happyFail (happyExpListPerState 6)

action_7 _ = happyReduce_13

action_8 (20) = happyShift action_13
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (6) = happyShift action_2
action_9 (15) = happyShift action_4
action_9 (16) = happyShift action_5
action_9 (17) = happyShift action_6
action_9 (20) = happyShift action_7
action_9 (21) = happyShift action_8
action_9 (23) = happyShift action_9
action_9 (26) = happyShift action_10
action_9 (4) = happyGoto action_12
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (20) = happyShift action_11
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (25) = happyShift action_35
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (6) = happyShift action_2
action_12 (7) = happyShift action_16
action_12 (8) = happyShift action_17
action_12 (9) = happyShift action_18
action_12 (10) = happyShift action_19
action_12 (11) = happyShift action_20
action_12 (12) = happyShift action_21
action_12 (13) = happyShift action_22
action_12 (14) = happyShift action_23
action_12 (15) = happyShift action_4
action_12 (16) = happyShift action_5
action_12 (17) = happyShift action_6
action_12 (20) = happyShift action_7
action_12 (21) = happyShift action_8
action_12 (23) = happyShift action_9
action_12 (24) = happyShift action_34
action_12 (26) = happyShift action_10
action_12 (4) = happyGoto action_15
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (30) = happyShift action_33
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (6) = happyShift action_2
action_14 (7) = happyShift action_16
action_14 (8) = happyShift action_17
action_14 (9) = happyShift action_18
action_14 (10) = happyShift action_19
action_14 (11) = happyShift action_20
action_14 (12) = happyShift action_21
action_14 (13) = happyShift action_22
action_14 (14) = happyShift action_23
action_14 (15) = happyShift action_4
action_14 (16) = happyShift action_5
action_14 (17) = happyShift action_6
action_14 (18) = happyShift action_32
action_14 (20) = happyShift action_7
action_14 (21) = happyShift action_8
action_14 (23) = happyShift action_9
action_14 (26) = happyShift action_10
action_14 (4) = happyGoto action_15
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (6) = happyShift action_2
action_15 (7) = happyShift action_16
action_15 (8) = happyShift action_17
action_15 (9) = happyShift action_18
action_15 (10) = happyShift action_19
action_15 (11) = happyShift action_20
action_15 (12) = happyShift action_21
action_15 (13) = happyShift action_22
action_15 (14) = happyShift action_23
action_15 (15) = happyShift action_4
action_15 (16) = happyShift action_5
action_15 (17) = happyShift action_6
action_15 (20) = happyShift action_7
action_15 (21) = happyShift action_8
action_15 (23) = happyShift action_9
action_15 (26) = happyShift action_10
action_15 (4) = happyGoto action_15
action_15 _ = happyReduce_15

action_16 (6) = happyShift action_2
action_16 (15) = happyShift action_4
action_16 (16) = happyShift action_5
action_16 (17) = happyShift action_6
action_16 (20) = happyShift action_7
action_16 (21) = happyShift action_8
action_16 (23) = happyShift action_9
action_16 (26) = happyShift action_10
action_16 (4) = happyGoto action_31
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (6) = happyShift action_2
action_17 (15) = happyShift action_4
action_17 (16) = happyShift action_5
action_17 (17) = happyShift action_6
action_17 (20) = happyShift action_7
action_17 (21) = happyShift action_8
action_17 (23) = happyShift action_9
action_17 (26) = happyShift action_10
action_17 (4) = happyGoto action_30
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (6) = happyShift action_2
action_18 (15) = happyShift action_4
action_18 (16) = happyShift action_5
action_18 (17) = happyShift action_6
action_18 (20) = happyShift action_7
action_18 (21) = happyShift action_8
action_18 (23) = happyShift action_9
action_18 (26) = happyShift action_10
action_18 (4) = happyGoto action_29
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (6) = happyShift action_2
action_19 (15) = happyShift action_4
action_19 (16) = happyShift action_5
action_19 (17) = happyShift action_6
action_19 (20) = happyShift action_7
action_19 (21) = happyShift action_8
action_19 (23) = happyShift action_9
action_19 (26) = happyShift action_10
action_19 (4) = happyGoto action_28
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (6) = happyShift action_2
action_20 (15) = happyShift action_4
action_20 (16) = happyShift action_5
action_20 (17) = happyShift action_6
action_20 (20) = happyShift action_7
action_20 (21) = happyShift action_8
action_20 (23) = happyShift action_9
action_20 (26) = happyShift action_10
action_20 (4) = happyGoto action_27
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (6) = happyShift action_2
action_21 (15) = happyShift action_4
action_21 (16) = happyShift action_5
action_21 (17) = happyShift action_6
action_21 (20) = happyShift action_7
action_21 (21) = happyShift action_8
action_21 (23) = happyShift action_9
action_21 (26) = happyShift action_10
action_21 (4) = happyGoto action_26
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (6) = happyShift action_2
action_22 (15) = happyShift action_4
action_22 (16) = happyShift action_5
action_22 (17) = happyShift action_6
action_22 (20) = happyShift action_7
action_22 (21) = happyShift action_8
action_22 (23) = happyShift action_9
action_22 (26) = happyShift action_10
action_22 (4) = happyGoto action_25
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (6) = happyShift action_2
action_23 (15) = happyShift action_4
action_23 (16) = happyShift action_5
action_23 (17) = happyShift action_6
action_23 (20) = happyShift action_7
action_23 (21) = happyShift action_8
action_23 (23) = happyShift action_9
action_23 (26) = happyShift action_10
action_23 (4) = happyGoto action_24
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (6) = happyShift action_2
action_24 (7) = happyShift action_16
action_24 (8) = happyShift action_17
action_24 (9) = happyShift action_18
action_24 (10) = happyShift action_19
action_24 (11) = happyShift action_20
action_24 (12) = happyShift action_21
action_24 (13) = happyShift action_22
action_24 (14) = happyShift action_23
action_24 (15) = happyShift action_4
action_24 (16) = happyShift action_5
action_24 (17) = happyShift action_6
action_24 (20) = happyShift action_7
action_24 (21) = happyShift action_8
action_24 (23) = happyShift action_9
action_24 (26) = happyShift action_10
action_24 (4) = happyGoto action_15
action_24 _ = happyReduce_11

action_25 (6) = happyShift action_2
action_25 (7) = happyShift action_16
action_25 (8) = happyShift action_17
action_25 (9) = happyShift action_18
action_25 (10) = happyShift action_19
action_25 (11) = happyShift action_20
action_25 (12) = happyShift action_21
action_25 (13) = happyShift action_22
action_25 (14) = happyShift action_23
action_25 (15) = happyShift action_4
action_25 (16) = happyShift action_5
action_25 (17) = happyShift action_6
action_25 (20) = happyShift action_7
action_25 (21) = happyShift action_8
action_25 (23) = happyShift action_9
action_25 (26) = happyShift action_10
action_25 (4) = happyGoto action_15
action_25 _ = happyReduce_10

action_26 (6) = happyShift action_2
action_26 (7) = happyShift action_16
action_26 (8) = happyShift action_17
action_26 (9) = happyShift action_18
action_26 (10) = happyShift action_19
action_26 (11) = happyShift action_20
action_26 (12) = happyShift action_21
action_26 (13) = happyShift action_22
action_26 (14) = happyShift action_23
action_26 (15) = happyShift action_4
action_26 (16) = happyShift action_5
action_26 (17) = happyShift action_6
action_26 (20) = happyShift action_7
action_26 (21) = happyShift action_8
action_26 (23) = happyShift action_9
action_26 (26) = happyShift action_10
action_26 (4) = happyGoto action_15
action_26 _ = happyReduce_9

action_27 (6) = happyShift action_2
action_27 (7) = happyShift action_16
action_27 (8) = happyShift action_17
action_27 (9) = happyShift action_18
action_27 (10) = happyShift action_19
action_27 (11) = happyShift action_20
action_27 (12) = happyShift action_21
action_27 (13) = happyShift action_22
action_27 (14) = happyShift action_23
action_27 (15) = happyShift action_4
action_27 (16) = happyShift action_5
action_27 (17) = happyShift action_6
action_27 (20) = happyShift action_7
action_27 (21) = happyShift action_8
action_27 (23) = happyShift action_9
action_27 (26) = happyShift action_10
action_27 (4) = happyGoto action_15
action_27 _ = happyReduce_8

action_28 (6) = happyShift action_2
action_28 (7) = happyShift action_16
action_28 (8) = happyShift action_17
action_28 (9) = happyShift action_18
action_28 (10) = happyShift action_19
action_28 (11) = happyShift action_20
action_28 (12) = happyShift action_21
action_28 (13) = happyShift action_22
action_28 (14) = happyShift action_23
action_28 (15) = happyShift action_4
action_28 (16) = happyShift action_5
action_28 (17) = happyShift action_6
action_28 (20) = happyShift action_7
action_28 (21) = happyShift action_8
action_28 (23) = happyShift action_9
action_28 (26) = happyShift action_10
action_28 (4) = happyGoto action_15
action_28 _ = happyReduce_7

action_29 (6) = happyShift action_2
action_29 (7) = happyShift action_16
action_29 (8) = happyShift action_17
action_29 (9) = happyShift action_18
action_29 (10) = happyShift action_19
action_29 (11) = happyShift action_20
action_29 (12) = happyShift action_21
action_29 (13) = happyShift action_22
action_29 (14) = happyShift action_23
action_29 (15) = happyShift action_4
action_29 (16) = happyShift action_5
action_29 (17) = happyShift action_6
action_29 (20) = happyShift action_7
action_29 (21) = happyShift action_8
action_29 (23) = happyShift action_9
action_29 (26) = happyShift action_10
action_29 (4) = happyGoto action_15
action_29 _ = happyReduce_6

action_30 (6) = happyShift action_2
action_30 (7) = happyShift action_16
action_30 (8) = happyShift action_17
action_30 (9) = happyShift action_18
action_30 (10) = happyShift action_19
action_30 (11) = happyShift action_20
action_30 (12) = happyShift action_21
action_30 (13) = happyShift action_22
action_30 (14) = happyShift action_23
action_30 (15) = happyShift action_4
action_30 (16) = happyShift action_5
action_30 (17) = happyShift action_6
action_30 (20) = happyShift action_7
action_30 (21) = happyShift action_8
action_30 (23) = happyShift action_9
action_30 (26) = happyShift action_10
action_30 (4) = happyGoto action_15
action_30 _ = happyReduce_5

action_31 (6) = happyShift action_2
action_31 (8) = happyShift action_17
action_31 (9) = happyShift action_18
action_31 (10) = happyShift action_19
action_31 (11) = happyShift action_20
action_31 (12) = happyShift action_21
action_31 (13) = happyShift action_22
action_31 (14) = happyShift action_23
action_31 (15) = happyShift action_4
action_31 (16) = happyShift action_5
action_31 (17) = happyShift action_6
action_31 (20) = happyShift action_7
action_31 (21) = happyShift action_8
action_31 (23) = happyShift action_9
action_31 (26) = happyShift action_10
action_31 (4) = happyGoto action_15
action_31 _ = happyReduce_4

action_32 (6) = happyShift action_2
action_32 (15) = happyShift action_4
action_32 (16) = happyShift action_5
action_32 (17) = happyShift action_6
action_32 (20) = happyShift action_7
action_32 (21) = happyShift action_8
action_32 (23) = happyShift action_9
action_32 (26) = happyShift action_10
action_32 (4) = happyGoto action_41
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (23) = happyShift action_38
action_33 (28) = happyShift action_39
action_33 (29) = happyShift action_40
action_33 (5) = happyGoto action_37
action_33 _ = happyFail (happyExpListPerState 33)

action_34 _ = happyReduce_16

action_35 (6) = happyShift action_2
action_35 (15) = happyShift action_4
action_35 (16) = happyShift action_5
action_35 (17) = happyShift action_6
action_35 (20) = happyShift action_7
action_35 (21) = happyShift action_8
action_35 (23) = happyShift action_9
action_35 (26) = happyShift action_10
action_35 (4) = happyGoto action_36
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (6) = happyShift action_2
action_36 (7) = happyShift action_16
action_36 (8) = happyShift action_17
action_36 (9) = happyShift action_18
action_36 (10) = happyShift action_19
action_36 (11) = happyShift action_20
action_36 (12) = happyShift action_21
action_36 (13) = happyShift action_22
action_36 (14) = happyShift action_23
action_36 (15) = happyShift action_4
action_36 (16) = happyShift action_5
action_36 (17) = happyShift action_6
action_36 (20) = happyShift action_7
action_36 (21) = happyShift action_8
action_36 (23) = happyShift action_9
action_36 (26) = happyShift action_10
action_36 (27) = happyShift action_45
action_36 (4) = happyGoto action_15
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (22) = happyShift action_44
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (23) = happyShift action_38
action_38 (28) = happyShift action_39
action_38 (29) = happyShift action_40
action_38 (5) = happyGoto action_43
action_38 _ = happyFail (happyExpListPerState 38)

action_39 _ = happyReduce_18

action_40 _ = happyReduce_19

action_41 (6) = happyShift action_2
action_41 (7) = happyShift action_16
action_41 (8) = happyShift action_17
action_41 (9) = happyShift action_18
action_41 (10) = happyShift action_19
action_41 (11) = happyShift action_20
action_41 (12) = happyShift action_21
action_41 (13) = happyShift action_22
action_41 (14) = happyShift action_23
action_41 (15) = happyShift action_4
action_41 (16) = happyShift action_5
action_41 (17) = happyShift action_6
action_41 (19) = happyShift action_42
action_41 (20) = happyShift action_7
action_41 (21) = happyShift action_8
action_41 (23) = happyShift action_9
action_41 (26) = happyShift action_10
action_41 (4) = happyGoto action_15
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (6) = happyShift action_2
action_42 (15) = happyShift action_4
action_42 (16) = happyShift action_5
action_42 (17) = happyShift action_6
action_42 (20) = happyShift action_7
action_42 (21) = happyShift action_8
action_42 (23) = happyShift action_9
action_42 (26) = happyShift action_10
action_42 (4) = happyGoto action_49
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (22) = happyShift action_48
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (6) = happyShift action_2
action_44 (15) = happyShift action_4
action_44 (16) = happyShift action_5
action_44 (17) = happyShift action_6
action_44 (20) = happyShift action_7
action_44 (21) = happyShift action_8
action_44 (23) = happyShift action_9
action_44 (26) = happyShift action_10
action_44 (4) = happyGoto action_47
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (6) = happyShift action_2
action_45 (15) = happyShift action_4
action_45 (16) = happyShift action_5
action_45 (17) = happyShift action_6
action_45 (20) = happyShift action_7
action_45 (21) = happyShift action_8
action_45 (23) = happyShift action_9
action_45 (26) = happyShift action_10
action_45 (4) = happyGoto action_46
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (6) = happyShift action_2
action_46 (7) = happyShift action_16
action_46 (8) = happyShift action_17
action_46 (9) = happyShift action_18
action_46 (10) = happyShift action_19
action_46 (11) = happyShift action_20
action_46 (12) = happyShift action_21
action_46 (13) = happyShift action_22
action_46 (14) = happyShift action_23
action_46 (15) = happyShift action_4
action_46 (16) = happyShift action_5
action_46 (17) = happyShift action_6
action_46 (20) = happyShift action_7
action_46 (21) = happyShift action_8
action_46 (23) = happyShift action_9
action_46 (26) = happyShift action_10
action_46 (4) = happyGoto action_15
action_46 _ = happyReduce_17

action_47 (6) = happyShift action_2
action_47 (7) = happyShift action_16
action_47 (8) = happyShift action_17
action_47 (9) = happyShift action_18
action_47 (10) = happyShift action_19
action_47 (11) = happyShift action_20
action_47 (12) = happyShift action_21
action_47 (13) = happyShift action_22
action_47 (14) = happyShift action_23
action_47 (15) = happyShift action_4
action_47 (16) = happyShift action_5
action_47 (17) = happyShift action_6
action_47 (20) = happyShift action_7
action_47 (21) = happyShift action_8
action_47 (23) = happyShift action_9
action_47 (26) = happyShift action_10
action_47 (4) = happyGoto action_15
action_47 _ = happyReduce_14

action_48 (23) = happyShift action_38
action_48 (28) = happyShift action_39
action_48 (29) = happyShift action_40
action_48 (5) = happyGoto action_50
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (6) = happyShift action_2
action_49 (7) = happyShift action_16
action_49 (8) = happyShift action_17
action_49 (9) = happyShift action_18
action_49 (10) = happyShift action_19
action_49 (11) = happyShift action_20
action_49 (12) = happyShift action_21
action_49 (13) = happyShift action_22
action_49 (14) = happyShift action_23
action_49 (15) = happyShift action_4
action_49 (16) = happyShift action_5
action_49 (17) = happyShift action_6
action_49 (20) = happyShift action_7
action_49 (21) = happyShift action_8
action_49 (23) = happyShift action_9
action_49 (26) = happyShift action_10
action_49 (4) = happyGoto action_15
action_49 _ = happyReduce_12

action_50 (24) = happyShift action_51
action_50 _ = happyFail (happyExpListPerState 50)

action_51 _ = happyReduce_20

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
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Add happy_var_1 happy_var_3
	)
happyReduction_4 _ _ _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_3  4 happyReduction_5
happyReduction_5 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  4 happyReduction_6
happyReduction_6 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Mul happy_var_1 happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  4 happyReduction_7
happyReduction_7 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Equal happy_var_1 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  4 happyReduction_8
happyReduction_8 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Great happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  4 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Less happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  4 happyReduction_10
happyReduction_10 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (And happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  4 happyReduction_11
happyReduction_11 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Or happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happyReduce 6 4 happyReduction_12
happyReduction_12 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_13 = happySpecReduce_1  4 happyReduction_13
happyReduction_13 (HappyTerminal (TokenVar happy_var_1))
	 =  HappyAbsSyn4
		 (Var happy_var_1
	)
happyReduction_13 _  = notHappyAtAll 

happyReduce_14 = happyReduce 6 4 happyReduction_14
happyReduction_14 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Lam happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_15 = happySpecReduce_2  4 happyReduction_15
happyReduction_15 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (App happy_var_1 happy_var_2
	)
happyReduction_15 _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  4 happyReduction_16
happyReduction_16 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Paren happy_var_2
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happyReduce 6 4 happyReduction_17
happyReduction_17 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Let happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_18 = happySpecReduce_1  5 happyReduction_18
happyReduction_18 _
	 =  HappyAbsSyn5
		 (TBool
	)

happyReduce_19 = happySpecReduce_1  5 happyReduction_19
happyReduction_19 _
	 =  HappyAbsSyn5
		 (TNum
	)

happyReduce_20 = happyReduce 5 5 happyReduction_20
happyReduction_20 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (TFun happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 31 31 notHappyAtAll (HappyState action) sts stk []

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
	TokenThen -> cont 18;
	TokenElse -> cont 19;
	TokenVar happy_dollar_dollar -> cont 20;
	TokenLam -> cont 21;
	TokenArrow -> cont 22;
	TokenLParen -> cont 23;
	TokenRParen -> cont 24;
	TokenEq -> cont 25;
	TokenLet -> cont 26;
	TokenIn -> cont 27;
	TokenBoolean -> cont 28;
	TokenNumber -> cont 29;
	TokenColon -> cont 30;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 31 tk tks = happyError' (tks, explist)
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
