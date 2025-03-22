{-# OPTIONS_GHC -w #-}
module Parser where
import qualified Token as T
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.1.1

data HappyAbsSyn t12 t13
	= HappyTerminal (T.Token)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 (Program)
	| HappyAbsSyn5 (FuncDecl)
	| HappyAbsSyn6 ([Var])
	| HappyAbsSyn7 (Term)
	| HappyAbsSyn8 (Lit)
	| HappyAbsSyn9 ([Term])
	| HappyAbsSyn10 ([Clause])
	| HappyAbsSyn11 (Pattern)
	| HappyAbsSyn12 t12
	| HappyAbsSyn13 t13
	| HappyAbsSyn14 ([Pattern])

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,664) ([32768,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,32,0,0,0,1,0,0,0,8192,0,0,0,0,0,0,2,0,0,0,32768,49852,47,128,58368,32277,65529,4,0,0,0,0,34169,95,256,0,0,0,8,0,0,16384,0,0,0,512,0,0,0,16,0,0,32768,0,5604,382,1024,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,22416,1528,4096,32768,49852,47,128,0,0,0,0,44832,60400,10239,0,0,128,0,51200,64555,65523,9,24128,38883,20479,0,1,0,0,0,0,0,8,0,0,16384,0,0,0,512,0,16,0,0,31488,24453,16382,1,0,0,0,16384,57694,23,64,61952,48906,0,2,22416,1528,4096,32768,49852,47,128,58368,32277,1,4,44832,3056,8192,0,34169,95,256,51200,64555,2,8,24128,6113,16384,0,2802,191,512,36864,63575,5,16,48256,12226,32768,0,5604,382,1024,8192,61615,65483,39,30976,24453,4096,1,11208,49916,2191,16384,57694,32279,68,61952,48906,9200,2,22416,1528,4366,32768,49852,47,136,58368,32277,16385,4,44832,3056,8704,0,34169,57439,272,51200,64555,34562,8,24128,6113,18430,0,2802,63679,575,36864,63575,5,16,48256,12226,32768,0,5604,382,1024,8192,61615,11,32,30976,24453,0,1,11208,764,2048,0,1024,0,0,0,0,0,0,0,0,0,32768,49852,47,128,0,0,0,0,0,8,0,0,8192,80,256,51200,64571,65522,9,24128,38881,24575,0,3058,64703,639,36864,63583,65509,19,48256,12226,40959,0,5620,63870,1279,8192,61615,11,32,30976,24453,0,1,11208,764,2048,0,0,0,64,61952,48906,0,2,2048,0,0,0,0,0,8,0,0,0,0,0,0,8192,0,8192,80,256,0,33024,2,8,0,0,0,0,0,0,0,0,0,16,0,0,16384,0,0,0,128,0,0,0,10,32,0,20512,0,1,11208,764,2048,16384,57694,65431,79,0,0,0,2,22416,58872,5119,32768,49852,65327,159,58368,32277,65529,4,4096,0,0,0,38265,65119,319,0,0,0,0,0,5120,16384,0,0,0,0,0,0,0,0,0,0,0,0,32768,320,1024,0,0,0,0,0,0,0,0,0,0,0,16384,57694,23,64,61952,48906,32764,2,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseTok","Program","FuncDecl","ArgList","Term","Lit","ListLit","Clauses","Pattern","Pattern1","Pattern2","Pattern2s","PatternsWithComma","def","':='","if","then","else","fun","exist","forall","for","'=>'","let","in","match","with","'|'","'#'","end","int","float","string","true","false","'('","')'","'['","']'","','","'||'","'&&'","'+'","'-'","'*'","'/'","'%'","'++'","'<'","'>'","'=='","'::'","';'","'@'","':'","id","%eof"]
        bit_start = st Prelude.* 59
        bit_end = (st Prelude.+ 1) Prelude.* 59
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..58]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (16) = happyShift action_4
action_0 (4) = happyGoto action_2
action_0 (5) = happyGoto action_3
action_0 _ = happyReduce_1

action_1 _ = happyFail (happyExpListPerState 1)

action_2 (59) = happyAccept
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (16) = happyShift action_4
action_3 (4) = happyGoto action_6
action_3 (5) = happyGoto action_3
action_3 _ = happyReduce_1

action_4 (58) = happyShift action_5
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (58) = happyShift action_8
action_5 (6) = happyGoto action_7
action_5 _ = happyReduce_4

action_6 _ = happyReduce_2

action_7 (17) = happyShift action_10
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (58) = happyShift action_8
action_8 (6) = happyGoto action_9
action_8 _ = happyReduce_4

action_9 _ = happyReduce_5

action_10 (18) = happyShift action_13
action_10 (21) = happyShift action_14
action_10 (22) = happyShift action_15
action_10 (23) = happyShift action_16
action_10 (24) = happyShift action_17
action_10 (26) = happyShift action_18
action_10 (28) = happyShift action_19
action_10 (33) = happyShift action_20
action_10 (34) = happyShift action_21
action_10 (35) = happyShift action_22
action_10 (36) = happyShift action_23
action_10 (37) = happyShift action_24
action_10 (38) = happyShift action_25
action_10 (40) = happyShift action_26
action_10 (58) = happyShift action_27
action_10 (7) = happyGoto action_11
action_10 (8) = happyGoto action_12
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (18) = happyShift action_13
action_11 (21) = happyShift action_14
action_11 (22) = happyShift action_15
action_11 (23) = happyShift action_16
action_11 (24) = happyShift action_17
action_11 (26) = happyShift action_18
action_11 (28) = happyShift action_19
action_11 (33) = happyShift action_20
action_11 (34) = happyShift action_21
action_11 (35) = happyShift action_22
action_11 (36) = happyShift action_23
action_11 (37) = happyShift action_24
action_11 (38) = happyShift action_25
action_11 (40) = happyShift action_26
action_11 (43) = happyShift action_39
action_11 (44) = happyShift action_40
action_11 (45) = happyShift action_41
action_11 (46) = happyShift action_42
action_11 (47) = happyShift action_43
action_11 (48) = happyShift action_44
action_11 (49) = happyShift action_45
action_11 (50) = happyShift action_46
action_11 (51) = happyShift action_47
action_11 (52) = happyShift action_48
action_11 (53) = happyShift action_49
action_11 (54) = happyShift action_50
action_11 (55) = happyShift action_51
action_11 (58) = happyShift action_27
action_11 (7) = happyGoto action_38
action_11 (8) = happyGoto action_12
action_11 _ = happyReduce_3

action_12 _ = happyReduce_28

action_13 (18) = happyShift action_13
action_13 (21) = happyShift action_14
action_13 (22) = happyShift action_15
action_13 (23) = happyShift action_16
action_13 (24) = happyShift action_17
action_13 (26) = happyShift action_18
action_13 (28) = happyShift action_19
action_13 (33) = happyShift action_20
action_13 (34) = happyShift action_21
action_13 (35) = happyShift action_22
action_13 (36) = happyShift action_23
action_13 (37) = happyShift action_24
action_13 (38) = happyShift action_25
action_13 (40) = happyShift action_26
action_13 (58) = happyShift action_27
action_13 (7) = happyGoto action_37
action_13 (8) = happyGoto action_12
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (58) = happyShift action_36
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (58) = happyShift action_35
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (58) = happyShift action_34
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (58) = happyShift action_33
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (58) = happyShift action_32
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (18) = happyShift action_13
action_19 (21) = happyShift action_14
action_19 (22) = happyShift action_15
action_19 (23) = happyShift action_16
action_19 (24) = happyShift action_17
action_19 (26) = happyShift action_18
action_19 (28) = happyShift action_19
action_19 (33) = happyShift action_20
action_19 (34) = happyShift action_21
action_19 (35) = happyShift action_22
action_19 (36) = happyShift action_23
action_19 (37) = happyShift action_24
action_19 (38) = happyShift action_25
action_19 (40) = happyShift action_26
action_19 (58) = happyShift action_27
action_19 (7) = happyGoto action_31
action_19 (8) = happyGoto action_12
action_19 _ = happyFail (happyExpListPerState 19)

action_20 _ = happyReduce_32

action_21 _ = happyReduce_31

action_22 _ = happyReduce_30

action_23 _ = happyReduce_33

action_24 _ = happyReduce_34

action_25 (18) = happyShift action_13
action_25 (21) = happyShift action_14
action_25 (22) = happyShift action_15
action_25 (23) = happyShift action_16
action_25 (24) = happyShift action_17
action_25 (26) = happyShift action_18
action_25 (28) = happyShift action_19
action_25 (33) = happyShift action_20
action_25 (34) = happyShift action_21
action_25 (35) = happyShift action_22
action_25 (36) = happyShift action_23
action_25 (37) = happyShift action_24
action_25 (38) = happyShift action_25
action_25 (40) = happyShift action_26
action_25 (58) = happyShift action_27
action_25 (7) = happyGoto action_30
action_25 (8) = happyGoto action_12
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (18) = happyShift action_13
action_26 (21) = happyShift action_14
action_26 (22) = happyShift action_15
action_26 (23) = happyShift action_16
action_26 (24) = happyShift action_17
action_26 (26) = happyShift action_18
action_26 (28) = happyShift action_19
action_26 (33) = happyShift action_20
action_26 (34) = happyShift action_21
action_26 (35) = happyShift action_22
action_26 (36) = happyShift action_23
action_26 (37) = happyShift action_24
action_26 (38) = happyShift action_25
action_26 (40) = happyShift action_26
action_26 (58) = happyShift action_27
action_26 (7) = happyGoto action_28
action_26 (8) = happyGoto action_12
action_26 (9) = happyGoto action_29
action_26 _ = happyReduce_36

action_27 _ = happyReduce_29

action_28 (18) = happyShift action_13
action_28 (21) = happyShift action_14
action_28 (22) = happyShift action_15
action_28 (23) = happyShift action_16
action_28 (24) = happyShift action_17
action_28 (26) = happyShift action_18
action_28 (28) = happyShift action_19
action_28 (33) = happyShift action_20
action_28 (34) = happyShift action_21
action_28 (35) = happyShift action_22
action_28 (36) = happyShift action_23
action_28 (37) = happyShift action_24
action_28 (38) = happyShift action_25
action_28 (40) = happyShift action_26
action_28 (42) = happyShift action_74
action_28 (43) = happyShift action_39
action_28 (44) = happyShift action_40
action_28 (45) = happyShift action_41
action_28 (46) = happyShift action_42
action_28 (47) = happyShift action_43
action_28 (48) = happyShift action_44
action_28 (49) = happyShift action_45
action_28 (50) = happyShift action_46
action_28 (51) = happyShift action_47
action_28 (52) = happyShift action_48
action_28 (53) = happyShift action_49
action_28 (54) = happyShift action_50
action_28 (55) = happyShift action_51
action_28 (58) = happyShift action_27
action_28 (7) = happyGoto action_38
action_28 (8) = happyGoto action_12
action_28 _ = happyReduce_37

action_29 (41) = happyShift action_73
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (18) = happyShift action_13
action_30 (21) = happyShift action_14
action_30 (22) = happyShift action_15
action_30 (23) = happyShift action_16
action_30 (24) = happyShift action_17
action_30 (26) = happyShift action_18
action_30 (28) = happyShift action_19
action_30 (33) = happyShift action_20
action_30 (34) = happyShift action_21
action_30 (35) = happyShift action_22
action_30 (36) = happyShift action_23
action_30 (37) = happyShift action_24
action_30 (38) = happyShift action_25
action_30 (39) = happyShift action_72
action_30 (40) = happyShift action_26
action_30 (43) = happyShift action_39
action_30 (44) = happyShift action_40
action_30 (45) = happyShift action_41
action_30 (46) = happyShift action_42
action_30 (47) = happyShift action_43
action_30 (48) = happyShift action_44
action_30 (49) = happyShift action_45
action_30 (50) = happyShift action_46
action_30 (51) = happyShift action_47
action_30 (52) = happyShift action_48
action_30 (53) = happyShift action_49
action_30 (54) = happyShift action_50
action_30 (55) = happyShift action_51
action_30 (58) = happyShift action_27
action_30 (7) = happyGoto action_38
action_30 (8) = happyGoto action_12
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (18) = happyShift action_13
action_31 (21) = happyShift action_14
action_31 (22) = happyShift action_15
action_31 (23) = happyShift action_16
action_31 (24) = happyShift action_17
action_31 (26) = happyShift action_18
action_31 (28) = happyShift action_19
action_31 (29) = happyShift action_71
action_31 (33) = happyShift action_20
action_31 (34) = happyShift action_21
action_31 (35) = happyShift action_22
action_31 (36) = happyShift action_23
action_31 (37) = happyShift action_24
action_31 (38) = happyShift action_25
action_31 (40) = happyShift action_26
action_31 (43) = happyShift action_39
action_31 (44) = happyShift action_40
action_31 (45) = happyShift action_41
action_31 (46) = happyShift action_42
action_31 (47) = happyShift action_43
action_31 (48) = happyShift action_44
action_31 (49) = happyShift action_45
action_31 (50) = happyShift action_46
action_31 (51) = happyShift action_47
action_31 (52) = happyShift action_48
action_31 (53) = happyShift action_49
action_31 (54) = happyShift action_50
action_31 (55) = happyShift action_51
action_31 (58) = happyShift action_27
action_31 (7) = happyGoto action_38
action_31 (8) = happyGoto action_12
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (17) = happyShift action_70
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (57) = happyShift action_69
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (57) = happyShift action_68
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (57) = happyShift action_67
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (25) = happyShift action_66
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (18) = happyShift action_13
action_37 (19) = happyShift action_65
action_37 (21) = happyShift action_14
action_37 (22) = happyShift action_15
action_37 (23) = happyShift action_16
action_37 (24) = happyShift action_17
action_37 (26) = happyShift action_18
action_37 (28) = happyShift action_19
action_37 (33) = happyShift action_20
action_37 (34) = happyShift action_21
action_37 (35) = happyShift action_22
action_37 (36) = happyShift action_23
action_37 (37) = happyShift action_24
action_37 (38) = happyShift action_25
action_37 (40) = happyShift action_26
action_37 (43) = happyShift action_39
action_37 (44) = happyShift action_40
action_37 (45) = happyShift action_41
action_37 (46) = happyShift action_42
action_37 (47) = happyShift action_43
action_37 (48) = happyShift action_44
action_37 (49) = happyShift action_45
action_37 (50) = happyShift action_46
action_37 (51) = happyShift action_47
action_37 (52) = happyShift action_48
action_37 (53) = happyShift action_49
action_37 (54) = happyShift action_50
action_37 (55) = happyShift action_51
action_37 (58) = happyShift action_27
action_37 (7) = happyGoto action_38
action_37 (8) = happyGoto action_12
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (7) = happyGoto action_38
action_38 (8) = happyGoto action_12
action_38 _ = happyReduce_13

action_39 (18) = happyShift action_13
action_39 (21) = happyShift action_14
action_39 (22) = happyShift action_15
action_39 (23) = happyShift action_16
action_39 (24) = happyShift action_17
action_39 (26) = happyShift action_18
action_39 (28) = happyShift action_19
action_39 (33) = happyShift action_20
action_39 (34) = happyShift action_21
action_39 (35) = happyShift action_22
action_39 (36) = happyShift action_23
action_39 (37) = happyShift action_24
action_39 (38) = happyShift action_25
action_39 (40) = happyShift action_26
action_39 (58) = happyShift action_27
action_39 (7) = happyGoto action_64
action_39 (8) = happyGoto action_12
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (18) = happyShift action_13
action_40 (21) = happyShift action_14
action_40 (22) = happyShift action_15
action_40 (23) = happyShift action_16
action_40 (24) = happyShift action_17
action_40 (26) = happyShift action_18
action_40 (28) = happyShift action_19
action_40 (33) = happyShift action_20
action_40 (34) = happyShift action_21
action_40 (35) = happyShift action_22
action_40 (36) = happyShift action_23
action_40 (37) = happyShift action_24
action_40 (38) = happyShift action_25
action_40 (40) = happyShift action_26
action_40 (58) = happyShift action_27
action_40 (7) = happyGoto action_63
action_40 (8) = happyGoto action_12
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (18) = happyShift action_13
action_41 (21) = happyShift action_14
action_41 (22) = happyShift action_15
action_41 (23) = happyShift action_16
action_41 (24) = happyShift action_17
action_41 (26) = happyShift action_18
action_41 (28) = happyShift action_19
action_41 (33) = happyShift action_20
action_41 (34) = happyShift action_21
action_41 (35) = happyShift action_22
action_41 (36) = happyShift action_23
action_41 (37) = happyShift action_24
action_41 (38) = happyShift action_25
action_41 (40) = happyShift action_26
action_41 (58) = happyShift action_27
action_41 (7) = happyGoto action_62
action_41 (8) = happyGoto action_12
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (18) = happyShift action_13
action_42 (21) = happyShift action_14
action_42 (22) = happyShift action_15
action_42 (23) = happyShift action_16
action_42 (24) = happyShift action_17
action_42 (26) = happyShift action_18
action_42 (28) = happyShift action_19
action_42 (33) = happyShift action_20
action_42 (34) = happyShift action_21
action_42 (35) = happyShift action_22
action_42 (36) = happyShift action_23
action_42 (37) = happyShift action_24
action_42 (38) = happyShift action_25
action_42 (40) = happyShift action_26
action_42 (58) = happyShift action_27
action_42 (7) = happyGoto action_61
action_42 (8) = happyGoto action_12
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (18) = happyShift action_13
action_43 (21) = happyShift action_14
action_43 (22) = happyShift action_15
action_43 (23) = happyShift action_16
action_43 (24) = happyShift action_17
action_43 (26) = happyShift action_18
action_43 (28) = happyShift action_19
action_43 (33) = happyShift action_20
action_43 (34) = happyShift action_21
action_43 (35) = happyShift action_22
action_43 (36) = happyShift action_23
action_43 (37) = happyShift action_24
action_43 (38) = happyShift action_25
action_43 (40) = happyShift action_26
action_43 (58) = happyShift action_27
action_43 (7) = happyGoto action_60
action_43 (8) = happyGoto action_12
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (18) = happyShift action_13
action_44 (21) = happyShift action_14
action_44 (22) = happyShift action_15
action_44 (23) = happyShift action_16
action_44 (24) = happyShift action_17
action_44 (26) = happyShift action_18
action_44 (28) = happyShift action_19
action_44 (33) = happyShift action_20
action_44 (34) = happyShift action_21
action_44 (35) = happyShift action_22
action_44 (36) = happyShift action_23
action_44 (37) = happyShift action_24
action_44 (38) = happyShift action_25
action_44 (40) = happyShift action_26
action_44 (58) = happyShift action_27
action_44 (7) = happyGoto action_59
action_44 (8) = happyGoto action_12
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (18) = happyShift action_13
action_45 (21) = happyShift action_14
action_45 (22) = happyShift action_15
action_45 (23) = happyShift action_16
action_45 (24) = happyShift action_17
action_45 (26) = happyShift action_18
action_45 (28) = happyShift action_19
action_45 (33) = happyShift action_20
action_45 (34) = happyShift action_21
action_45 (35) = happyShift action_22
action_45 (36) = happyShift action_23
action_45 (37) = happyShift action_24
action_45 (38) = happyShift action_25
action_45 (40) = happyShift action_26
action_45 (58) = happyShift action_27
action_45 (7) = happyGoto action_58
action_45 (8) = happyGoto action_12
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (18) = happyShift action_13
action_46 (21) = happyShift action_14
action_46 (22) = happyShift action_15
action_46 (23) = happyShift action_16
action_46 (24) = happyShift action_17
action_46 (26) = happyShift action_18
action_46 (28) = happyShift action_19
action_46 (33) = happyShift action_20
action_46 (34) = happyShift action_21
action_46 (35) = happyShift action_22
action_46 (36) = happyShift action_23
action_46 (37) = happyShift action_24
action_46 (38) = happyShift action_25
action_46 (40) = happyShift action_26
action_46 (58) = happyShift action_27
action_46 (7) = happyGoto action_57
action_46 (8) = happyGoto action_12
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (18) = happyShift action_13
action_47 (21) = happyShift action_14
action_47 (22) = happyShift action_15
action_47 (23) = happyShift action_16
action_47 (24) = happyShift action_17
action_47 (26) = happyShift action_18
action_47 (28) = happyShift action_19
action_47 (33) = happyShift action_20
action_47 (34) = happyShift action_21
action_47 (35) = happyShift action_22
action_47 (36) = happyShift action_23
action_47 (37) = happyShift action_24
action_47 (38) = happyShift action_25
action_47 (40) = happyShift action_26
action_47 (58) = happyShift action_27
action_47 (7) = happyGoto action_56
action_47 (8) = happyGoto action_12
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (18) = happyShift action_13
action_48 (21) = happyShift action_14
action_48 (22) = happyShift action_15
action_48 (23) = happyShift action_16
action_48 (24) = happyShift action_17
action_48 (26) = happyShift action_18
action_48 (28) = happyShift action_19
action_48 (33) = happyShift action_20
action_48 (34) = happyShift action_21
action_48 (35) = happyShift action_22
action_48 (36) = happyShift action_23
action_48 (37) = happyShift action_24
action_48 (38) = happyShift action_25
action_48 (40) = happyShift action_26
action_48 (58) = happyShift action_27
action_48 (7) = happyGoto action_55
action_48 (8) = happyGoto action_12
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (18) = happyShift action_13
action_49 (21) = happyShift action_14
action_49 (22) = happyShift action_15
action_49 (23) = happyShift action_16
action_49 (24) = happyShift action_17
action_49 (26) = happyShift action_18
action_49 (28) = happyShift action_19
action_49 (33) = happyShift action_20
action_49 (34) = happyShift action_21
action_49 (35) = happyShift action_22
action_49 (36) = happyShift action_23
action_49 (37) = happyShift action_24
action_49 (38) = happyShift action_25
action_49 (40) = happyShift action_26
action_49 (58) = happyShift action_27
action_49 (7) = happyGoto action_54
action_49 (8) = happyGoto action_12
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (18) = happyShift action_13
action_50 (21) = happyShift action_14
action_50 (22) = happyShift action_15
action_50 (23) = happyShift action_16
action_50 (24) = happyShift action_17
action_50 (26) = happyShift action_18
action_50 (28) = happyShift action_19
action_50 (33) = happyShift action_20
action_50 (34) = happyShift action_21
action_50 (35) = happyShift action_22
action_50 (36) = happyShift action_23
action_50 (37) = happyShift action_24
action_50 (38) = happyShift action_25
action_50 (40) = happyShift action_26
action_50 (58) = happyShift action_27
action_50 (7) = happyGoto action_53
action_50 (8) = happyGoto action_12
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (18) = happyShift action_13
action_51 (21) = happyShift action_14
action_51 (22) = happyShift action_15
action_51 (23) = happyShift action_16
action_51 (24) = happyShift action_17
action_51 (26) = happyShift action_18
action_51 (28) = happyShift action_19
action_51 (33) = happyShift action_20
action_51 (34) = happyShift action_21
action_51 (35) = happyShift action_22
action_51 (36) = happyShift action_23
action_51 (37) = happyShift action_24
action_51 (38) = happyShift action_25
action_51 (40) = happyShift action_26
action_51 (58) = happyShift action_27
action_51 (7) = happyGoto action_52
action_51 (8) = happyGoto action_12
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (18) = happyShift action_13
action_52 (21) = happyShift action_14
action_52 (22) = happyShift action_15
action_52 (23) = happyShift action_16
action_52 (24) = happyShift action_17
action_52 (26) = happyShift action_18
action_52 (28) = happyShift action_19
action_52 (33) = happyShift action_20
action_52 (34) = happyShift action_21
action_52 (35) = happyShift action_22
action_52 (36) = happyShift action_23
action_52 (37) = happyShift action_24
action_52 (38) = happyShift action_25
action_52 (40) = happyShift action_26
action_52 (43) = happyShift action_39
action_52 (44) = happyShift action_40
action_52 (45) = happyShift action_41
action_52 (46) = happyShift action_42
action_52 (47) = happyShift action_43
action_52 (48) = happyShift action_44
action_52 (49) = happyShift action_45
action_52 (50) = happyShift action_46
action_52 (51) = happyShift action_47
action_52 (52) = happyShift action_48
action_52 (53) = happyShift action_49
action_52 (54) = happyShift action_50
action_52 (55) = happyShift action_51
action_52 (58) = happyShift action_27
action_52 (7) = happyGoto action_38
action_52 (8) = happyGoto action_12
action_52 _ = happyReduce_26

action_53 (18) = happyShift action_13
action_53 (21) = happyShift action_14
action_53 (22) = happyShift action_15
action_53 (23) = happyShift action_16
action_53 (24) = happyShift action_17
action_53 (26) = happyShift action_18
action_53 (28) = happyShift action_19
action_53 (33) = happyShift action_20
action_53 (34) = happyShift action_21
action_53 (35) = happyShift action_22
action_53 (36) = happyShift action_23
action_53 (37) = happyShift action_24
action_53 (38) = happyShift action_25
action_53 (40) = happyShift action_26
action_53 (54) = happyShift action_50
action_53 (58) = happyShift action_27
action_53 (7) = happyGoto action_38
action_53 (8) = happyGoto action_12
action_53 _ = happyReduce_25

action_54 (18) = happyShift action_13
action_54 (21) = happyShift action_14
action_54 (22) = happyShift action_15
action_54 (23) = happyShift action_16
action_54 (24) = happyShift action_17
action_54 (26) = happyShift action_18
action_54 (28) = happyShift action_19
action_54 (33) = happyShift action_20
action_54 (34) = happyShift action_21
action_54 (35) = happyShift action_22
action_54 (36) = happyShift action_23
action_54 (37) = happyShift action_24
action_54 (38) = happyShift action_25
action_54 (40) = happyShift action_26
action_54 (45) = happyShift action_41
action_54 (46) = happyShift action_42
action_54 (47) = happyShift action_43
action_54 (48) = happyShift action_44
action_54 (49) = happyShift action_45
action_54 (50) = happyShift action_46
action_54 (51) = happyFail []
action_54 (52) = happyFail []
action_54 (53) = happyFail []
action_54 (54) = happyShift action_50
action_54 (58) = happyShift action_27
action_54 (7) = happyGoto action_38
action_54 (8) = happyGoto action_12
action_54 _ = happyReduce_24

action_55 (18) = happyShift action_13
action_55 (21) = happyShift action_14
action_55 (22) = happyShift action_15
action_55 (23) = happyShift action_16
action_55 (24) = happyShift action_17
action_55 (26) = happyShift action_18
action_55 (28) = happyShift action_19
action_55 (33) = happyShift action_20
action_55 (34) = happyShift action_21
action_55 (35) = happyShift action_22
action_55 (36) = happyShift action_23
action_55 (37) = happyShift action_24
action_55 (38) = happyShift action_25
action_55 (40) = happyShift action_26
action_55 (45) = happyShift action_41
action_55 (46) = happyShift action_42
action_55 (47) = happyShift action_43
action_55 (48) = happyShift action_44
action_55 (49) = happyShift action_45
action_55 (50) = happyShift action_46
action_55 (51) = happyFail []
action_55 (52) = happyFail []
action_55 (53) = happyFail []
action_55 (54) = happyShift action_50
action_55 (58) = happyShift action_27
action_55 (7) = happyGoto action_38
action_55 (8) = happyGoto action_12
action_55 _ = happyReduce_23

action_56 (18) = happyShift action_13
action_56 (21) = happyShift action_14
action_56 (22) = happyShift action_15
action_56 (23) = happyShift action_16
action_56 (24) = happyShift action_17
action_56 (26) = happyShift action_18
action_56 (28) = happyShift action_19
action_56 (33) = happyShift action_20
action_56 (34) = happyShift action_21
action_56 (35) = happyShift action_22
action_56 (36) = happyShift action_23
action_56 (37) = happyShift action_24
action_56 (38) = happyShift action_25
action_56 (40) = happyShift action_26
action_56 (45) = happyShift action_41
action_56 (46) = happyShift action_42
action_56 (47) = happyShift action_43
action_56 (48) = happyShift action_44
action_56 (49) = happyShift action_45
action_56 (50) = happyShift action_46
action_56 (51) = happyFail []
action_56 (52) = happyFail []
action_56 (53) = happyFail []
action_56 (54) = happyShift action_50
action_56 (58) = happyShift action_27
action_56 (7) = happyGoto action_38
action_56 (8) = happyGoto action_12
action_56 _ = happyReduce_22

action_57 (18) = happyShift action_13
action_57 (21) = happyShift action_14
action_57 (22) = happyShift action_15
action_57 (23) = happyShift action_16
action_57 (24) = happyShift action_17
action_57 (26) = happyShift action_18
action_57 (28) = happyShift action_19
action_57 (33) = happyShift action_20
action_57 (34) = happyShift action_21
action_57 (35) = happyShift action_22
action_57 (36) = happyShift action_23
action_57 (37) = happyShift action_24
action_57 (38) = happyShift action_25
action_57 (40) = happyShift action_26
action_57 (47) = happyShift action_43
action_57 (48) = happyShift action_44
action_57 (49) = happyShift action_45
action_57 (54) = happyShift action_50
action_57 (58) = happyShift action_27
action_57 (7) = happyGoto action_38
action_57 (8) = happyGoto action_12
action_57 _ = happyReduce_21

action_58 (18) = happyShift action_13
action_58 (21) = happyShift action_14
action_58 (22) = happyShift action_15
action_58 (23) = happyShift action_16
action_58 (24) = happyShift action_17
action_58 (26) = happyShift action_18
action_58 (28) = happyShift action_19
action_58 (33) = happyShift action_20
action_58 (34) = happyShift action_21
action_58 (35) = happyShift action_22
action_58 (36) = happyShift action_23
action_58 (37) = happyShift action_24
action_58 (38) = happyShift action_25
action_58 (40) = happyShift action_26
action_58 (54) = happyShift action_50
action_58 (58) = happyShift action_27
action_58 (7) = happyGoto action_38
action_58 (8) = happyGoto action_12
action_58 _ = happyReduce_20

action_59 (18) = happyShift action_13
action_59 (21) = happyShift action_14
action_59 (22) = happyShift action_15
action_59 (23) = happyShift action_16
action_59 (24) = happyShift action_17
action_59 (26) = happyShift action_18
action_59 (28) = happyShift action_19
action_59 (33) = happyShift action_20
action_59 (34) = happyShift action_21
action_59 (35) = happyShift action_22
action_59 (36) = happyShift action_23
action_59 (37) = happyShift action_24
action_59 (38) = happyShift action_25
action_59 (40) = happyShift action_26
action_59 (54) = happyShift action_50
action_59 (58) = happyShift action_27
action_59 (7) = happyGoto action_38
action_59 (8) = happyGoto action_12
action_59 _ = happyReduce_19

action_60 (18) = happyShift action_13
action_60 (21) = happyShift action_14
action_60 (22) = happyShift action_15
action_60 (23) = happyShift action_16
action_60 (24) = happyShift action_17
action_60 (26) = happyShift action_18
action_60 (28) = happyShift action_19
action_60 (33) = happyShift action_20
action_60 (34) = happyShift action_21
action_60 (35) = happyShift action_22
action_60 (36) = happyShift action_23
action_60 (37) = happyShift action_24
action_60 (38) = happyShift action_25
action_60 (40) = happyShift action_26
action_60 (54) = happyShift action_50
action_60 (58) = happyShift action_27
action_60 (7) = happyGoto action_38
action_60 (8) = happyGoto action_12
action_60 _ = happyReduce_18

action_61 (18) = happyShift action_13
action_61 (21) = happyShift action_14
action_61 (22) = happyShift action_15
action_61 (23) = happyShift action_16
action_61 (24) = happyShift action_17
action_61 (26) = happyShift action_18
action_61 (28) = happyShift action_19
action_61 (33) = happyShift action_20
action_61 (34) = happyShift action_21
action_61 (35) = happyShift action_22
action_61 (36) = happyShift action_23
action_61 (37) = happyShift action_24
action_61 (38) = happyShift action_25
action_61 (40) = happyShift action_26
action_61 (47) = happyShift action_43
action_61 (48) = happyShift action_44
action_61 (49) = happyShift action_45
action_61 (54) = happyShift action_50
action_61 (58) = happyShift action_27
action_61 (7) = happyGoto action_38
action_61 (8) = happyGoto action_12
action_61 _ = happyReduce_17

action_62 (18) = happyShift action_13
action_62 (21) = happyShift action_14
action_62 (22) = happyShift action_15
action_62 (23) = happyShift action_16
action_62 (24) = happyShift action_17
action_62 (26) = happyShift action_18
action_62 (28) = happyShift action_19
action_62 (33) = happyShift action_20
action_62 (34) = happyShift action_21
action_62 (35) = happyShift action_22
action_62 (36) = happyShift action_23
action_62 (37) = happyShift action_24
action_62 (38) = happyShift action_25
action_62 (40) = happyShift action_26
action_62 (47) = happyShift action_43
action_62 (48) = happyShift action_44
action_62 (49) = happyShift action_45
action_62 (54) = happyShift action_50
action_62 (58) = happyShift action_27
action_62 (7) = happyGoto action_38
action_62 (8) = happyGoto action_12
action_62 _ = happyReduce_16

action_63 (18) = happyShift action_13
action_63 (21) = happyShift action_14
action_63 (22) = happyShift action_15
action_63 (23) = happyShift action_16
action_63 (24) = happyShift action_17
action_63 (26) = happyShift action_18
action_63 (28) = happyShift action_19
action_63 (33) = happyShift action_20
action_63 (34) = happyShift action_21
action_63 (35) = happyShift action_22
action_63 (36) = happyShift action_23
action_63 (37) = happyShift action_24
action_63 (38) = happyShift action_25
action_63 (40) = happyShift action_26
action_63 (45) = happyShift action_41
action_63 (46) = happyShift action_42
action_63 (47) = happyShift action_43
action_63 (48) = happyShift action_44
action_63 (49) = happyShift action_45
action_63 (50) = happyShift action_46
action_63 (51) = happyShift action_47
action_63 (52) = happyShift action_48
action_63 (53) = happyShift action_49
action_63 (54) = happyShift action_50
action_63 (58) = happyShift action_27
action_63 (7) = happyGoto action_38
action_63 (8) = happyGoto action_12
action_63 _ = happyReduce_15

action_64 (18) = happyShift action_13
action_64 (21) = happyShift action_14
action_64 (22) = happyShift action_15
action_64 (23) = happyShift action_16
action_64 (24) = happyShift action_17
action_64 (26) = happyShift action_18
action_64 (28) = happyShift action_19
action_64 (33) = happyShift action_20
action_64 (34) = happyShift action_21
action_64 (35) = happyShift action_22
action_64 (36) = happyShift action_23
action_64 (37) = happyShift action_24
action_64 (38) = happyShift action_25
action_64 (40) = happyShift action_26
action_64 (44) = happyShift action_40
action_64 (45) = happyShift action_41
action_64 (46) = happyShift action_42
action_64 (47) = happyShift action_43
action_64 (48) = happyShift action_44
action_64 (49) = happyShift action_45
action_64 (50) = happyShift action_46
action_64 (51) = happyShift action_47
action_64 (52) = happyShift action_48
action_64 (53) = happyShift action_49
action_64 (54) = happyShift action_50
action_64 (58) = happyShift action_27
action_64 (7) = happyGoto action_38
action_64 (8) = happyGoto action_12
action_64 _ = happyReduce_14

action_65 (18) = happyShift action_13
action_65 (21) = happyShift action_14
action_65 (22) = happyShift action_15
action_65 (23) = happyShift action_16
action_65 (24) = happyShift action_17
action_65 (26) = happyShift action_18
action_65 (28) = happyShift action_19
action_65 (33) = happyShift action_20
action_65 (34) = happyShift action_21
action_65 (35) = happyShift action_22
action_65 (36) = happyShift action_23
action_65 (37) = happyShift action_24
action_65 (38) = happyShift action_25
action_65 (40) = happyShift action_26
action_65 (58) = happyShift action_27
action_65 (7) = happyGoto action_83
action_65 (8) = happyGoto action_12
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (18) = happyShift action_13
action_66 (21) = happyShift action_14
action_66 (22) = happyShift action_15
action_66 (23) = happyShift action_16
action_66 (24) = happyShift action_17
action_66 (26) = happyShift action_18
action_66 (28) = happyShift action_19
action_66 (33) = happyShift action_20
action_66 (34) = happyShift action_21
action_66 (35) = happyShift action_22
action_66 (36) = happyShift action_23
action_66 (37) = happyShift action_24
action_66 (38) = happyShift action_25
action_66 (40) = happyShift action_26
action_66 (58) = happyShift action_27
action_66 (7) = happyGoto action_82
action_66 (8) = happyGoto action_12
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (18) = happyShift action_13
action_67 (21) = happyShift action_14
action_67 (22) = happyShift action_15
action_67 (23) = happyShift action_16
action_67 (24) = happyShift action_17
action_67 (26) = happyShift action_18
action_67 (28) = happyShift action_19
action_67 (33) = happyShift action_20
action_67 (34) = happyShift action_21
action_67 (35) = happyShift action_22
action_67 (36) = happyShift action_23
action_67 (37) = happyShift action_24
action_67 (38) = happyShift action_25
action_67 (40) = happyShift action_26
action_67 (58) = happyShift action_27
action_67 (7) = happyGoto action_81
action_67 (8) = happyGoto action_12
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (18) = happyShift action_13
action_68 (21) = happyShift action_14
action_68 (22) = happyShift action_15
action_68 (23) = happyShift action_16
action_68 (24) = happyShift action_17
action_68 (26) = happyShift action_18
action_68 (28) = happyShift action_19
action_68 (33) = happyShift action_20
action_68 (34) = happyShift action_21
action_68 (35) = happyShift action_22
action_68 (36) = happyShift action_23
action_68 (37) = happyShift action_24
action_68 (38) = happyShift action_25
action_68 (40) = happyShift action_26
action_68 (58) = happyShift action_27
action_68 (7) = happyGoto action_80
action_68 (8) = happyGoto action_12
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (18) = happyShift action_13
action_69 (21) = happyShift action_14
action_69 (22) = happyShift action_15
action_69 (23) = happyShift action_16
action_69 (24) = happyShift action_17
action_69 (26) = happyShift action_18
action_69 (28) = happyShift action_19
action_69 (33) = happyShift action_20
action_69 (34) = happyShift action_21
action_69 (35) = happyShift action_22
action_69 (36) = happyShift action_23
action_69 (37) = happyShift action_24
action_69 (38) = happyShift action_25
action_69 (40) = happyShift action_26
action_69 (58) = happyShift action_27
action_69 (7) = happyGoto action_79
action_69 (8) = happyGoto action_12
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (18) = happyShift action_13
action_70 (21) = happyShift action_14
action_70 (22) = happyShift action_15
action_70 (23) = happyShift action_16
action_70 (24) = happyShift action_17
action_70 (26) = happyShift action_18
action_70 (28) = happyShift action_19
action_70 (33) = happyShift action_20
action_70 (34) = happyShift action_21
action_70 (35) = happyShift action_22
action_70 (36) = happyShift action_23
action_70 (37) = happyShift action_24
action_70 (38) = happyShift action_25
action_70 (40) = happyShift action_26
action_70 (58) = happyShift action_27
action_70 (7) = happyGoto action_78
action_70 (8) = happyGoto action_12
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (30) = happyShift action_77
action_71 (10) = happyGoto action_76
action_71 _ = happyReduce_39

action_72 _ = happyReduce_27

action_73 _ = happyReduce_35

action_74 (18) = happyShift action_13
action_74 (21) = happyShift action_14
action_74 (22) = happyShift action_15
action_74 (23) = happyShift action_16
action_74 (24) = happyShift action_17
action_74 (26) = happyShift action_18
action_74 (28) = happyShift action_19
action_74 (33) = happyShift action_20
action_74 (34) = happyShift action_21
action_74 (35) = happyShift action_22
action_74 (36) = happyShift action_23
action_74 (37) = happyShift action_24
action_74 (38) = happyShift action_25
action_74 (40) = happyShift action_26
action_74 (58) = happyShift action_27
action_74 (7) = happyGoto action_28
action_74 (8) = happyGoto action_12
action_74 (9) = happyGoto action_75
action_74 _ = happyReduce_36

action_75 _ = happyReduce_38

action_76 (32) = happyShift action_96
action_76 _ = happyFail (happyExpListPerState 76)

action_77 (31) = happyShift action_92
action_77 (38) = happyShift action_93
action_77 (40) = happyShift action_94
action_77 (58) = happyShift action_95
action_77 (11) = happyGoto action_89
action_77 (12) = happyGoto action_90
action_77 (13) = happyGoto action_91
action_77 _ = happyFail (happyExpListPerState 77)

action_78 (18) = happyShift action_13
action_78 (21) = happyShift action_14
action_78 (22) = happyShift action_15
action_78 (23) = happyShift action_16
action_78 (24) = happyShift action_17
action_78 (26) = happyShift action_18
action_78 (27) = happyShift action_88
action_78 (28) = happyShift action_19
action_78 (33) = happyShift action_20
action_78 (34) = happyShift action_21
action_78 (35) = happyShift action_22
action_78 (36) = happyShift action_23
action_78 (37) = happyShift action_24
action_78 (38) = happyShift action_25
action_78 (40) = happyShift action_26
action_78 (43) = happyShift action_39
action_78 (44) = happyShift action_40
action_78 (45) = happyShift action_41
action_78 (46) = happyShift action_42
action_78 (47) = happyShift action_43
action_78 (48) = happyShift action_44
action_78 (49) = happyShift action_45
action_78 (50) = happyShift action_46
action_78 (51) = happyShift action_47
action_78 (52) = happyShift action_48
action_78 (53) = happyShift action_49
action_78 (54) = happyShift action_50
action_78 (55) = happyShift action_51
action_78 (58) = happyShift action_27
action_78 (7) = happyGoto action_38
action_78 (8) = happyGoto action_12
action_78 _ = happyFail (happyExpListPerState 78)

action_79 (18) = happyShift action_13
action_79 (21) = happyShift action_14
action_79 (22) = happyShift action_15
action_79 (23) = happyShift action_16
action_79 (24) = happyShift action_17
action_79 (26) = happyShift action_18
action_79 (28) = happyShift action_19
action_79 (33) = happyShift action_20
action_79 (34) = happyShift action_21
action_79 (35) = happyShift action_22
action_79 (36) = happyShift action_23
action_79 (37) = happyShift action_24
action_79 (38) = happyShift action_25
action_79 (40) = happyShift action_26
action_79 (43) = happyShift action_39
action_79 (44) = happyShift action_40
action_79 (45) = happyShift action_41
action_79 (46) = happyShift action_42
action_79 (47) = happyShift action_43
action_79 (48) = happyShift action_44
action_79 (49) = happyShift action_45
action_79 (50) = happyShift action_46
action_79 (51) = happyShift action_47
action_79 (52) = happyShift action_48
action_79 (53) = happyShift action_49
action_79 (54) = happyShift action_50
action_79 (55) = happyShift action_51
action_79 (56) = happyShift action_87
action_79 (58) = happyShift action_27
action_79 (7) = happyGoto action_38
action_79 (8) = happyGoto action_12
action_79 _ = happyFail (happyExpListPerState 79)

action_80 (18) = happyShift action_13
action_80 (21) = happyShift action_14
action_80 (22) = happyShift action_15
action_80 (23) = happyShift action_16
action_80 (24) = happyShift action_17
action_80 (25) = happyShift action_86
action_80 (26) = happyShift action_18
action_80 (28) = happyShift action_19
action_80 (33) = happyShift action_20
action_80 (34) = happyShift action_21
action_80 (35) = happyShift action_22
action_80 (36) = happyShift action_23
action_80 (37) = happyShift action_24
action_80 (38) = happyShift action_25
action_80 (40) = happyShift action_26
action_80 (43) = happyShift action_39
action_80 (44) = happyShift action_40
action_80 (45) = happyShift action_41
action_80 (46) = happyShift action_42
action_80 (47) = happyShift action_43
action_80 (48) = happyShift action_44
action_80 (49) = happyShift action_45
action_80 (50) = happyShift action_46
action_80 (51) = happyShift action_47
action_80 (52) = happyShift action_48
action_80 (53) = happyShift action_49
action_80 (54) = happyShift action_50
action_80 (55) = happyShift action_51
action_80 (58) = happyShift action_27
action_80 (7) = happyGoto action_38
action_80 (8) = happyGoto action_12
action_80 _ = happyFail (happyExpListPerState 80)

action_81 (18) = happyShift action_13
action_81 (21) = happyShift action_14
action_81 (22) = happyShift action_15
action_81 (23) = happyShift action_16
action_81 (24) = happyShift action_17
action_81 (25) = happyShift action_85
action_81 (26) = happyShift action_18
action_81 (28) = happyShift action_19
action_81 (33) = happyShift action_20
action_81 (34) = happyShift action_21
action_81 (35) = happyShift action_22
action_81 (36) = happyShift action_23
action_81 (37) = happyShift action_24
action_81 (38) = happyShift action_25
action_81 (40) = happyShift action_26
action_81 (43) = happyShift action_39
action_81 (44) = happyShift action_40
action_81 (45) = happyShift action_41
action_81 (46) = happyShift action_42
action_81 (47) = happyShift action_43
action_81 (48) = happyShift action_44
action_81 (49) = happyShift action_45
action_81 (50) = happyShift action_46
action_81 (51) = happyShift action_47
action_81 (52) = happyShift action_48
action_81 (53) = happyShift action_49
action_81 (54) = happyShift action_50
action_81 (55) = happyShift action_51
action_81 (58) = happyShift action_27
action_81 (7) = happyGoto action_38
action_81 (8) = happyGoto action_12
action_81 _ = happyFail (happyExpListPerState 81)

action_82 (18) = happyShift action_13
action_82 (21) = happyShift action_14
action_82 (22) = happyShift action_15
action_82 (23) = happyShift action_16
action_82 (24) = happyShift action_17
action_82 (26) = happyShift action_18
action_82 (28) = happyShift action_19
action_82 (33) = happyShift action_20
action_82 (34) = happyShift action_21
action_82 (35) = happyShift action_22
action_82 (36) = happyShift action_23
action_82 (37) = happyShift action_24
action_82 (38) = happyShift action_25
action_82 (40) = happyShift action_26
action_82 (43) = happyShift action_39
action_82 (44) = happyShift action_40
action_82 (45) = happyShift action_41
action_82 (46) = happyShift action_42
action_82 (47) = happyShift action_43
action_82 (48) = happyShift action_44
action_82 (49) = happyShift action_45
action_82 (50) = happyShift action_46
action_82 (51) = happyShift action_47
action_82 (52) = happyShift action_48
action_82 (53) = happyShift action_49
action_82 (54) = happyShift action_50
action_82 (55) = happyShift action_51
action_82 (58) = happyShift action_27
action_82 (7) = happyGoto action_38
action_82 (8) = happyGoto action_12
action_82 _ = happyReduce_8

action_83 (18) = happyShift action_13
action_83 (20) = happyShift action_84
action_83 (21) = happyShift action_14
action_83 (22) = happyShift action_15
action_83 (23) = happyShift action_16
action_83 (24) = happyShift action_17
action_83 (26) = happyShift action_18
action_83 (28) = happyShift action_19
action_83 (33) = happyShift action_20
action_83 (34) = happyShift action_21
action_83 (35) = happyShift action_22
action_83 (36) = happyShift action_23
action_83 (37) = happyShift action_24
action_83 (38) = happyShift action_25
action_83 (40) = happyShift action_26
action_83 (43) = happyShift action_39
action_83 (44) = happyShift action_40
action_83 (45) = happyShift action_41
action_83 (46) = happyShift action_42
action_83 (47) = happyShift action_43
action_83 (48) = happyShift action_44
action_83 (49) = happyShift action_45
action_83 (50) = happyShift action_46
action_83 (51) = happyShift action_47
action_83 (52) = happyShift action_48
action_83 (53) = happyShift action_49
action_83 (54) = happyShift action_50
action_83 (55) = happyShift action_51
action_83 (58) = happyShift action_27
action_83 (7) = happyGoto action_38
action_83 (8) = happyGoto action_12
action_83 _ = happyFail (happyExpListPerState 83)

action_84 (18) = happyShift action_13
action_84 (21) = happyShift action_14
action_84 (22) = happyShift action_15
action_84 (23) = happyShift action_16
action_84 (24) = happyShift action_17
action_84 (26) = happyShift action_18
action_84 (28) = happyShift action_19
action_84 (33) = happyShift action_20
action_84 (34) = happyShift action_21
action_84 (35) = happyShift action_22
action_84 (36) = happyShift action_23
action_84 (37) = happyShift action_24
action_84 (38) = happyShift action_25
action_84 (40) = happyShift action_26
action_84 (58) = happyShift action_27
action_84 (7) = happyGoto action_107
action_84 (8) = happyGoto action_12
action_84 _ = happyFail (happyExpListPerState 84)

action_85 (18) = happyShift action_13
action_85 (21) = happyShift action_14
action_85 (22) = happyShift action_15
action_85 (23) = happyShift action_16
action_85 (24) = happyShift action_17
action_85 (26) = happyShift action_18
action_85 (28) = happyShift action_19
action_85 (33) = happyShift action_20
action_85 (34) = happyShift action_21
action_85 (35) = happyShift action_22
action_85 (36) = happyShift action_23
action_85 (37) = happyShift action_24
action_85 (38) = happyShift action_25
action_85 (40) = happyShift action_26
action_85 (58) = happyShift action_27
action_85 (7) = happyGoto action_106
action_85 (8) = happyGoto action_12
action_85 _ = happyFail (happyExpListPerState 85)

action_86 (18) = happyShift action_13
action_86 (21) = happyShift action_14
action_86 (22) = happyShift action_15
action_86 (23) = happyShift action_16
action_86 (24) = happyShift action_17
action_86 (26) = happyShift action_18
action_86 (28) = happyShift action_19
action_86 (33) = happyShift action_20
action_86 (34) = happyShift action_21
action_86 (35) = happyShift action_22
action_86 (36) = happyShift action_23
action_86 (37) = happyShift action_24
action_86 (38) = happyShift action_25
action_86 (40) = happyShift action_26
action_86 (58) = happyShift action_27
action_86 (7) = happyGoto action_105
action_86 (8) = happyGoto action_12
action_86 _ = happyFail (happyExpListPerState 86)

action_87 (58) = happyShift action_104
action_87 _ = happyFail (happyExpListPerState 87)

action_88 (18) = happyShift action_13
action_88 (21) = happyShift action_14
action_88 (22) = happyShift action_15
action_88 (23) = happyShift action_16
action_88 (24) = happyShift action_17
action_88 (26) = happyShift action_18
action_88 (28) = happyShift action_19
action_88 (33) = happyShift action_20
action_88 (34) = happyShift action_21
action_88 (35) = happyShift action_22
action_88 (36) = happyShift action_23
action_88 (37) = happyShift action_24
action_88 (38) = happyShift action_25
action_88 (40) = happyShift action_26
action_88 (58) = happyShift action_27
action_88 (7) = happyGoto action_103
action_88 (8) = happyGoto action_12
action_88 _ = happyFail (happyExpListPerState 88)

action_89 (25) = happyShift action_102
action_89 _ = happyFail (happyExpListPerState 89)

action_90 (54) = happyShift action_101
action_90 _ = happyReduce_42

action_91 _ = happyReduce_44

action_92 (58) = happyShift action_100
action_92 _ = happyFail (happyExpListPerState 92)

action_93 (31) = happyShift action_92
action_93 (38) = happyShift action_93
action_93 (40) = happyShift action_94
action_93 (58) = happyShift action_95
action_93 (11) = happyGoto action_99
action_93 (12) = happyGoto action_90
action_93 (13) = happyGoto action_91
action_93 _ = happyFail (happyExpListPerState 93)

action_94 (31) = happyShift action_92
action_94 (38) = happyShift action_93
action_94 (40) = happyShift action_94
action_94 (58) = happyShift action_95
action_94 (11) = happyGoto action_97
action_94 (12) = happyGoto action_90
action_94 (13) = happyGoto action_91
action_94 (15) = happyGoto action_98
action_94 _ = happyReduce_50

action_95 _ = happyReduce_47

action_96 _ = happyReduce_12

action_97 (42) = happyShift action_115
action_97 _ = happyReduce_51

action_98 (41) = happyShift action_114
action_98 _ = happyFail (happyExpListPerState 98)

action_99 (39) = happyShift action_113
action_99 _ = happyFail (happyExpListPerState 99)

action_100 (38) = happyShift action_93
action_100 (40) = happyShift action_94
action_100 (58) = happyShift action_95
action_100 (13) = happyGoto action_111
action_100 (14) = happyGoto action_112
action_100 _ = happyReduce_48

action_101 (31) = happyShift action_92
action_101 (38) = happyShift action_93
action_101 (40) = happyShift action_94
action_101 (58) = happyShift action_95
action_101 (11) = happyGoto action_110
action_101 (12) = happyGoto action_90
action_101 (13) = happyGoto action_91
action_101 _ = happyFail (happyExpListPerState 101)

action_102 (18) = happyShift action_13
action_102 (21) = happyShift action_14
action_102 (22) = happyShift action_15
action_102 (23) = happyShift action_16
action_102 (24) = happyShift action_17
action_102 (26) = happyShift action_18
action_102 (28) = happyShift action_19
action_102 (33) = happyShift action_20
action_102 (34) = happyShift action_21
action_102 (35) = happyShift action_22
action_102 (36) = happyShift action_23
action_102 (37) = happyShift action_24
action_102 (38) = happyShift action_25
action_102 (40) = happyShift action_26
action_102 (58) = happyShift action_27
action_102 (7) = happyGoto action_109
action_102 (8) = happyGoto action_12
action_102 _ = happyFail (happyExpListPerState 102)

action_103 (18) = happyShift action_13
action_103 (21) = happyShift action_14
action_103 (22) = happyShift action_15
action_103 (23) = happyShift action_16
action_103 (24) = happyShift action_17
action_103 (26) = happyShift action_18
action_103 (28) = happyShift action_19
action_103 (33) = happyShift action_20
action_103 (34) = happyShift action_21
action_103 (35) = happyShift action_22
action_103 (36) = happyShift action_23
action_103 (37) = happyShift action_24
action_103 (38) = happyShift action_25
action_103 (40) = happyShift action_26
action_103 (43) = happyShift action_39
action_103 (44) = happyShift action_40
action_103 (45) = happyShift action_41
action_103 (46) = happyShift action_42
action_103 (47) = happyShift action_43
action_103 (48) = happyShift action_44
action_103 (49) = happyShift action_45
action_103 (50) = happyShift action_46
action_103 (51) = happyShift action_47
action_103 (52) = happyShift action_48
action_103 (53) = happyShift action_49
action_103 (54) = happyShift action_50
action_103 (55) = happyShift action_51
action_103 (58) = happyShift action_27
action_103 (7) = happyGoto action_38
action_103 (8) = happyGoto action_12
action_103 _ = happyReduce_6

action_104 (58) = happyShift action_8
action_104 (6) = happyGoto action_108
action_104 _ = happyReduce_4

action_105 (18) = happyShift action_13
action_105 (21) = happyShift action_14
action_105 (22) = happyShift action_15
action_105 (23) = happyShift action_16
action_105 (24) = happyShift action_17
action_105 (26) = happyShift action_18
action_105 (28) = happyShift action_19
action_105 (33) = happyShift action_20
action_105 (34) = happyShift action_21
action_105 (35) = happyShift action_22
action_105 (36) = happyShift action_23
action_105 (37) = happyShift action_24
action_105 (38) = happyShift action_25
action_105 (40) = happyShift action_26
action_105 (43) = happyShift action_39
action_105 (44) = happyShift action_40
action_105 (45) = happyShift action_41
action_105 (46) = happyShift action_42
action_105 (47) = happyShift action_43
action_105 (48) = happyShift action_44
action_105 (49) = happyShift action_45
action_105 (50) = happyShift action_46
action_105 (51) = happyShift action_47
action_105 (52) = happyShift action_48
action_105 (53) = happyShift action_49
action_105 (54) = happyShift action_50
action_105 (55) = happyShift action_51
action_105 (58) = happyShift action_27
action_105 (7) = happyGoto action_38
action_105 (8) = happyGoto action_12
action_105 _ = happyReduce_9

action_106 (18) = happyShift action_13
action_106 (21) = happyShift action_14
action_106 (22) = happyShift action_15
action_106 (23) = happyShift action_16
action_106 (24) = happyShift action_17
action_106 (26) = happyShift action_18
action_106 (28) = happyShift action_19
action_106 (33) = happyShift action_20
action_106 (34) = happyShift action_21
action_106 (35) = happyShift action_22
action_106 (36) = happyShift action_23
action_106 (37) = happyShift action_24
action_106 (38) = happyShift action_25
action_106 (40) = happyShift action_26
action_106 (43) = happyShift action_39
action_106 (44) = happyShift action_40
action_106 (45) = happyShift action_41
action_106 (46) = happyShift action_42
action_106 (47) = happyShift action_43
action_106 (48) = happyShift action_44
action_106 (49) = happyShift action_45
action_106 (50) = happyShift action_46
action_106 (51) = happyShift action_47
action_106 (52) = happyShift action_48
action_106 (53) = happyShift action_49
action_106 (54) = happyShift action_50
action_106 (55) = happyShift action_51
action_106 (58) = happyShift action_27
action_106 (7) = happyGoto action_38
action_106 (8) = happyGoto action_12
action_106 _ = happyReduce_10

action_107 (18) = happyShift action_13
action_107 (21) = happyShift action_14
action_107 (22) = happyShift action_15
action_107 (23) = happyShift action_16
action_107 (24) = happyShift action_17
action_107 (26) = happyShift action_18
action_107 (28) = happyShift action_19
action_107 (33) = happyShift action_20
action_107 (34) = happyShift action_21
action_107 (35) = happyShift action_22
action_107 (36) = happyShift action_23
action_107 (37) = happyShift action_24
action_107 (38) = happyShift action_25
action_107 (40) = happyShift action_26
action_107 (43) = happyShift action_39
action_107 (44) = happyShift action_40
action_107 (45) = happyShift action_41
action_107 (46) = happyShift action_42
action_107 (47) = happyShift action_43
action_107 (48) = happyShift action_44
action_107 (49) = happyShift action_45
action_107 (50) = happyShift action_46
action_107 (51) = happyShift action_47
action_107 (52) = happyShift action_48
action_107 (53) = happyShift action_49
action_107 (54) = happyShift action_50
action_107 (55) = happyShift action_51
action_107 (58) = happyShift action_27
action_107 (7) = happyGoto action_38
action_107 (8) = happyGoto action_12
action_107 _ = happyReduce_7

action_108 (25) = happyShift action_119
action_108 _ = happyFail (happyExpListPerState 108)

action_109 (18) = happyShift action_13
action_109 (21) = happyShift action_14
action_109 (22) = happyShift action_15
action_109 (23) = happyShift action_16
action_109 (24) = happyShift action_17
action_109 (26) = happyShift action_18
action_109 (28) = happyShift action_19
action_109 (30) = happyShift action_77
action_109 (33) = happyShift action_20
action_109 (34) = happyShift action_21
action_109 (35) = happyShift action_22
action_109 (36) = happyShift action_23
action_109 (37) = happyShift action_24
action_109 (38) = happyShift action_25
action_109 (40) = happyShift action_26
action_109 (43) = happyShift action_39
action_109 (44) = happyShift action_40
action_109 (45) = happyShift action_41
action_109 (46) = happyShift action_42
action_109 (47) = happyShift action_43
action_109 (48) = happyShift action_44
action_109 (49) = happyShift action_45
action_109 (50) = happyShift action_46
action_109 (51) = happyShift action_47
action_109 (52) = happyShift action_48
action_109 (53) = happyShift action_49
action_109 (54) = happyShift action_50
action_109 (55) = happyShift action_51
action_109 (58) = happyShift action_27
action_109 (7) = happyGoto action_38
action_109 (8) = happyGoto action_12
action_109 (10) = happyGoto action_118
action_109 _ = happyReduce_39

action_110 _ = happyReduce_41

action_111 (38) = happyShift action_93
action_111 (40) = happyShift action_94
action_111 (58) = happyShift action_95
action_111 (13) = happyGoto action_111
action_111 (14) = happyGoto action_117
action_111 _ = happyReduce_48

action_112 _ = happyReduce_43

action_113 _ = happyReduce_45

action_114 _ = happyReduce_46

action_115 (31) = happyShift action_92
action_115 (38) = happyShift action_93
action_115 (40) = happyShift action_94
action_115 (58) = happyShift action_95
action_115 (11) = happyGoto action_97
action_115 (12) = happyGoto action_90
action_115 (13) = happyGoto action_91
action_115 (15) = happyGoto action_116
action_115 _ = happyReduce_50

action_116 _ = happyReduce_52

action_117 _ = happyReduce_49

action_118 _ = happyReduce_40

action_119 (18) = happyShift action_13
action_119 (21) = happyShift action_14
action_119 (22) = happyShift action_15
action_119 (23) = happyShift action_16
action_119 (24) = happyShift action_17
action_119 (26) = happyShift action_18
action_119 (28) = happyShift action_19
action_119 (33) = happyShift action_20
action_119 (34) = happyShift action_21
action_119 (35) = happyShift action_22
action_119 (36) = happyShift action_23
action_119 (37) = happyShift action_24
action_119 (38) = happyShift action_25
action_119 (40) = happyShift action_26
action_119 (58) = happyShift action_27
action_119 (7) = happyGoto action_120
action_119 (8) = happyGoto action_12
action_119 _ = happyFail (happyExpListPerState 119)

action_120 (18) = happyShift action_13
action_120 (21) = happyShift action_14
action_120 (22) = happyShift action_15
action_120 (23) = happyShift action_16
action_120 (24) = happyShift action_17
action_120 (26) = happyShift action_18
action_120 (28) = happyShift action_19
action_120 (33) = happyShift action_20
action_120 (34) = happyShift action_21
action_120 (35) = happyShift action_22
action_120 (36) = happyShift action_23
action_120 (37) = happyShift action_24
action_120 (38) = happyShift action_25
action_120 (40) = happyShift action_26
action_120 (43) = happyShift action_39
action_120 (44) = happyShift action_40
action_120 (45) = happyShift action_41
action_120 (46) = happyShift action_42
action_120 (47) = happyShift action_43
action_120 (48) = happyShift action_44
action_120 (49) = happyShift action_45
action_120 (50) = happyShift action_46
action_120 (51) = happyShift action_47
action_120 (52) = happyShift action_48
action_120 (53) = happyShift action_49
action_120 (54) = happyShift action_50
action_120 (55) = happyShift action_51
action_120 (58) = happyShift action_27
action_120 (7) = happyGoto action_38
action_120 (8) = happyGoto action_12
action_120 _ = happyReduce_11

happyReduce_1 = happyMonadReduce 0 4 happyReduction_1
happyReduction_1 (happyRest) tk
	 = happyThen ((( pure []))
	) (\r -> happyReturn (HappyAbsSyn4 r))

happyReduce_2 = happyMonadReduce 2 4 happyReduction_2
happyReduction_2 ((HappyAbsSyn4  happy_var_2) `HappyStk`
	(HappyAbsSyn5  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ happy_var_1 : happy_var_2))
	) (\r -> happyReturn (HappyAbsSyn4 r))

happyReduce_3 = happyMonadReduce 5 5 happyReduction_3
happyReduction_3 ((HappyAbsSyn7  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	(HappyTerminal (T.Id happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ FuncDecl happy_var_2 happy_var_3 happy_var_5))
	) (\r -> happyReturn (HappyAbsSyn5 r))

happyReduce_4 = happyMonadReduce 0 6 happyReduction_4
happyReduction_4 (happyRest) tk
	 = happyThen ((( pure []))
	) (\r -> happyReturn (HappyAbsSyn6 r))

happyReduce_5 = happyMonadReduce 2 6 happyReduction_5
happyReduction_5 ((HappyAbsSyn6  happy_var_2) `HappyStk`
	(HappyTerminal (T.Id happy_var_1)) `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ happy_var_1 : happy_var_2))
	) (\r -> happyReturn (HappyAbsSyn6 r))

happyReduce_6 = happyMonadReduce 6 7 happyReduction_6
happyReduction_6 ((HappyAbsSyn7  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (T.Id happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ Let happy_var_2 happy_var_4 happy_var_6))
	) (\r -> happyReturn (HappyAbsSyn7 r))

happyReduce_7 = happyMonadReduce 6 7 happyReduction_7
happyReduction_7 ((HappyAbsSyn7  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ If happy_var_2 happy_var_4 happy_var_6))
	) (\r -> happyReturn (HappyAbsSyn7 r))

happyReduce_8 = happyMonadReduce 4 7 happyReduction_8
happyReduction_8 ((HappyAbsSyn7  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (T.Id happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ Lam happy_var_2 happy_var_4))
	) (\r -> happyReturn (HappyAbsSyn7 r))

happyReduce_9 = happyMonadReduce 6 7 happyReduction_9
happyReduction_9 ((HappyAbsSyn7  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (T.Id happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ Forall happy_var_2 happy_var_4 happy_var_6))
	) (\r -> happyReturn (HappyAbsSyn7 r))

happyReduce_10 = happyMonadReduce 6 7 happyReduction_10
happyReduction_10 ((HappyAbsSyn7  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (T.Id happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ Exist happy_var_2 happy_var_4 happy_var_6))
	) (\r -> happyReturn (HappyAbsSyn7 r))

happyReduce_11 = happyMonadReduce 9 7 happyReduction_11
happyReduction_11 ((HappyAbsSyn7  happy_var_9) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_7) `HappyStk`
	(HappyTerminal (T.Id happy_var_6)) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (T.Id happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ For happy_var_2 happy_var_4 (happy_var_6 : happy_var_7) happy_var_9))
	) (\r -> happyReturn (HappyAbsSyn7 r))

happyReduce_12 = happyMonadReduce 5 7 happyReduction_12
happyReduction_12 (_ `HappyStk`
	(HappyAbsSyn10  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ Match happy_var_2 happy_var_4))
	) (\r -> happyReturn (HappyAbsSyn7 r))

happyReduce_13 = happyMonadReduce 2 7 happyReduction_13
happyReduction_13 ((HappyAbsSyn7  happy_var_2) `HappyStk`
	(HappyAbsSyn7  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ App happy_var_1 happy_var_2))
	) (\r -> happyReturn (HappyAbsSyn7 r))

happyReduce_14 = happyMonadReduce 3 7 happyReduction_14
happyReduction_14 ((HappyAbsSyn7  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ makeOp happy_var_1 happy_var_3 OpOr))
	) (\r -> happyReturn (HappyAbsSyn7 r))

happyReduce_15 = happyMonadReduce 3 7 happyReduction_15
happyReduction_15 ((HappyAbsSyn7  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ makeOp happy_var_1 happy_var_3 OpAnd))
	) (\r -> happyReturn (HappyAbsSyn7 r))

happyReduce_16 = happyMonadReduce 3 7 happyReduction_16
happyReduction_16 ((HappyAbsSyn7  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ makeOp happy_var_1 happy_var_3 OpPlus))
	) (\r -> happyReturn (HappyAbsSyn7 r))

happyReduce_17 = happyMonadReduce 3 7 happyReduction_17
happyReduction_17 ((HappyAbsSyn7  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ makeOp happy_var_1 happy_var_3 OpMin))
	) (\r -> happyReturn (HappyAbsSyn7 r))

happyReduce_18 = happyMonadReduce 3 7 happyReduction_18
happyReduction_18 ((HappyAbsSyn7  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ makeOp happy_var_1 happy_var_3 OpMul))
	) (\r -> happyReturn (HappyAbsSyn7 r))

happyReduce_19 = happyMonadReduce 3 7 happyReduction_19
happyReduction_19 ((HappyAbsSyn7  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ makeOp happy_var_1 happy_var_3 OpDiv))
	) (\r -> happyReturn (HappyAbsSyn7 r))

happyReduce_20 = happyMonadReduce 3 7 happyReduction_20
happyReduction_20 ((HappyAbsSyn7  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ makeOp happy_var_1 happy_var_3 OpMod))
	) (\r -> happyReturn (HappyAbsSyn7 r))

happyReduce_21 = happyMonadReduce 3 7 happyReduction_21
happyReduction_21 ((HappyAbsSyn7  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ makeOp happy_var_1 happy_var_3 OpAppend))
	) (\r -> happyReturn (HappyAbsSyn7 r))

happyReduce_22 = happyMonadReduce 3 7 happyReduction_22
happyReduction_22 ((HappyAbsSyn7  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ makeOp happy_var_1 happy_var_3 OpLT))
	) (\r -> happyReturn (HappyAbsSyn7 r))

happyReduce_23 = happyMonadReduce 3 7 happyReduction_23
happyReduction_23 ((HappyAbsSyn7  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ makeOp happy_var_1 happy_var_3 OpGT))
	) (\r -> happyReturn (HappyAbsSyn7 r))

happyReduce_24 = happyMonadReduce 3 7 happyReduction_24
happyReduction_24 ((HappyAbsSyn7  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ makeOp happy_var_1 happy_var_3 OpEQ))
	) (\r -> happyReturn (HappyAbsSyn7 r))

happyReduce_25 = happyMonadReduce 3 7 happyReduction_25
happyReduction_25 ((HappyAbsSyn7  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ makeOp happy_var_1 happy_var_3 OpCons))
	) (\r -> happyReturn (HappyAbsSyn7 r))

happyReduce_26 = happyMonadReduce 3 7 happyReduction_26
happyReduction_26 ((HappyAbsSyn7  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ makeOp happy_var_1 happy_var_3 OpSeq))
	) (\r -> happyReturn (HappyAbsSyn7 r))

happyReduce_27 = happyMonadReduce 3 7 happyReduction_27
happyReduction_27 (_ `HappyStk`
	(HappyAbsSyn7  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ happy_var_2))
	) (\r -> happyReturn (HappyAbsSyn7 r))

happyReduce_28 = happyMonadReduce 1 7 happyReduction_28
happyReduction_28 ((HappyAbsSyn8  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ Lit happy_var_1))
	) (\r -> happyReturn (HappyAbsSyn7 r))

happyReduce_29 = happyMonadReduce 1 7 happyReduction_29
happyReduction_29 ((HappyTerminal (T.Id happy_var_1)) `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ Id happy_var_1))
	) (\r -> happyReturn (HappyAbsSyn7 r))

happyReduce_30 = happyMonadReduce 1 8 happyReduction_30
happyReduction_30 ((HappyTerminal (T.String happy_var_1)) `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ LitStr happy_var_1))
	) (\r -> happyReturn (HappyAbsSyn8 r))

happyReduce_31 = happyMonadReduce 1 8 happyReduction_31
happyReduction_31 ((HappyTerminal (T.Float happy_var_1)) `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ LitFloat happy_var_1))
	) (\r -> happyReturn (HappyAbsSyn8 r))

happyReduce_32 = happyMonadReduce 1 8 happyReduction_32
happyReduction_32 ((HappyTerminal (T.Int happy_var_1)) `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ LitInt happy_var_1))
	) (\r -> happyReturn (HappyAbsSyn8 r))

happyReduce_33 = happyMonadReduce 1 8 happyReduction_33
happyReduction_33 (_ `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ LitBool True))
	) (\r -> happyReturn (HappyAbsSyn8 r))

happyReduce_34 = happyMonadReduce 1 8 happyReduction_34
happyReduction_34 (_ `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ LitBool False))
	) (\r -> happyReturn (HappyAbsSyn8 r))

happyReduce_35 = happyMonadReduce 3 8 happyReduction_35
happyReduction_35 (_ `HappyStk`
	(HappyAbsSyn9  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ LitList happy_var_2))
	) (\r -> happyReturn (HappyAbsSyn8 r))

happyReduce_36 = happyMonadReduce 0 9 happyReduction_36
happyReduction_36 (happyRest) tk
	 = happyThen ((( pure $ []))
	) (\r -> happyReturn (HappyAbsSyn9 r))

happyReduce_37 = happyMonadReduce 1 9 happyReduction_37
happyReduction_37 ((HappyAbsSyn7  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ [happy_var_1]))
	) (\r -> happyReturn (HappyAbsSyn9 r))

happyReduce_38 = happyMonadReduce 3 9 happyReduction_38
happyReduction_38 ((HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ happy_var_1 : happy_var_3))
	) (\r -> happyReturn (HappyAbsSyn9 r))

happyReduce_39 = happyMonadReduce 0 10 happyReduction_39
happyReduction_39 (happyRest) tk
	 = happyThen ((( pure $ []))
	) (\r -> happyReturn (HappyAbsSyn10 r))

happyReduce_40 = happyMonadReduce 5 10 happyReduction_40
happyReduction_40 ((HappyAbsSyn10  happy_var_5) `HappyStk`
	(HappyAbsSyn7  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ Clause happy_var_2 happy_var_4 : happy_var_5))
	) (\r -> happyReturn (HappyAbsSyn10 r))

happyReduce_41 = happyMonadReduce 3 11 happyReduction_41
happyReduction_41 ((HappyAbsSyn11  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn12  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ PListCons happy_var_1 happy_var_3))
	) (\r -> happyReturn (HappyAbsSyn11 r))

happyReduce_42 = happyMonadReduce 1 11 happyReduction_42
happyReduction_42 ((HappyAbsSyn12  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( pure happy_var_1))
	) (\r -> happyReturn (HappyAbsSyn11 r))

happyReduce_43 = happyMonadReduce 3 12 happyReduction_43
happyReduction_43 ((HappyAbsSyn14  happy_var_3) `HappyStk`
	(HappyTerminal (T.Id happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ PCon happy_var_2 happy_var_3))
	) (\r -> happyReturn (HappyAbsSyn12 r))

happyReduce_44 = happyMonadReduce 1 12 happyReduction_44
happyReduction_44 ((HappyAbsSyn13  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( pure happy_var_1))
	) (\r -> happyReturn (HappyAbsSyn12 r))

happyReduce_45 = happyMonadReduce 3 13 happyReduction_45
happyReduction_45 (_ `HappyStk`
	(HappyAbsSyn11  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ happy_var_2))
	) (\r -> happyReturn (HappyAbsSyn13 r))

happyReduce_46 = happyMonadReduce 3 13 happyReduction_46
happyReduction_46 (_ `HappyStk`
	(HappyAbsSyn14  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ PList happy_var_2))
	) (\r -> happyReturn (HappyAbsSyn13 r))

happyReduce_47 = happyMonadReduce 1 13 happyReduction_47
happyReduction_47 ((HappyTerminal (T.Id happy_var_1)) `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ PVar happy_var_1))
	) (\r -> happyReturn (HappyAbsSyn13 r))

happyReduce_48 = happyMonadReduce 0 14 happyReduction_48
happyReduction_48 (happyRest) tk
	 = happyThen ((( pure $ []))
	) (\r -> happyReturn (HappyAbsSyn14 r))

happyReduce_49 = happyMonadReduce 2 14 happyReduction_49
happyReduction_49 ((HappyAbsSyn14  happy_var_2) `HappyStk`
	(HappyAbsSyn13  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ happy_var_1 : happy_var_2))
	) (\r -> happyReturn (HappyAbsSyn14 r))

happyReduce_50 = happyMonadReduce 0 15 happyReduction_50
happyReduction_50 (happyRest) tk
	 = happyThen ((( pure $ []))
	) (\r -> happyReturn (HappyAbsSyn14 r))

happyReduce_51 = happyMonadReduce 1 15 happyReduction_51
happyReduction_51 ((HappyAbsSyn11  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ [happy_var_1]))
	) (\r -> happyReturn (HappyAbsSyn14 r))

happyReduce_52 = happyMonadReduce 3 15 happyReduction_52
happyReduction_52 ((HappyAbsSyn14  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ happy_var_1 : happy_var_3))
	) (\r -> happyReturn (HappyAbsSyn14 r))

happyNewToken action sts stk [] =
	action 59 59 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	T.Def -> cont 16;
	T.DefEq -> cont 17;
	T.If -> cont 18;
	T.Then -> cont 19;
	T.Else -> cont 20;
	T.Fun -> cont 21;
	T.Exist -> cont 22;
	T.Forall -> cont 23;
	T.For -> cont 24;
	T.FunTo -> cont 25;
	T.Let -> cont 26;
	T.In -> cont 27;
	T.Match -> cont 28;
	T.With -> cont 29;
	T.Bar -> cont 30;
	T.ConsLead -> cont 31;
	T.End -> cont 32;
	T.Int happy_dollar_dollar -> cont 33;
	T.Float happy_dollar_dollar -> cont 34;
	T.String happy_dollar_dollar -> cont 35;
	T.TTrue -> cont 36;
	T.TFalse -> cont 37;
	T.ParenL -> cont 38;
	T.ParenR -> cont 39;
	T.BracketL -> cont 40;
	T.BracketR -> cont 41;
	T.Comma -> cont 42;
	T.Op "||" -> cont 43;
	T.Op "&&" -> cont 44;
	T.Op "+" -> cont 45;
	T.Op "-" -> cont 46;
	T.Op "*" -> cont 47;
	T.Op "/" -> cont 48;
	T.Op "%" -> cont 49;
	T.Op "++" -> cont 50;
	T.Op "<" -> cont 51;
	T.Op ">" -> cont 52;
	T.Op "==" -> cont 53;
	T.Op "::" -> cont 54;
	T.Op ";" -> cont 55;
	T.At -> cont 56;
	T.Anno -> cont 57;
	T.Id happy_dollar_dollar -> cont 58;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 59 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

happyThen :: () => Either String a -> (a -> Either String b) -> Either String b
happyThen = (Prelude.>>=)
happyReturn :: () => a -> Either String a
happyReturn = (Prelude.return)
happyThen1 m k tks = (Prelude.>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> Either String a
happyReturn1 = \a tks -> (Prelude.return) a
happyError' :: () => ([(T.Token)], [Prelude.String]) -> Either String a
happyError' = (\(tokens, _) -> parseError tokens)
parseTok tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


makeOp :: Term -> Term -> Op -> Term
makeOp l r op = BiOp op l r   

parse :: String -> Either String Program
parse = parseTok . T.alexScanTokens

parseError tok = Left $ "Parse error in: " ++ show tok ++ "\nExpecting: " -- ++ show exp

data Op = OpPlus | OpMin | OpMul | OpDiv | OpLT | OpGT | OpEQ
        | OpOr   | OpAnd | OpMod | OpCons | OpAppend | OpSeq
  deriving (Show, Eq)

type Var = String
type Constructor = String

type Program = [FuncDecl]

data FuncDecl = FuncDecl
  { funcName :: String
  , arguments :: [Var]
  , funcBody :: Term
  } deriving Show

type ArgList = [String]

data Pattern 
  = PVar Var 
  | PCon Constructor [Pattern]
  | PList [Pattern]
  | PListCons Pattern Pattern 
  deriving (Show, Eq)

data Clause = Clause Pattern Term 
  deriving (Show, Eq)
  
data Lit 
  = LitStr String 
  | LitInt Int 
  | LitFloat Double 
  | LitBool Bool
  | LitList [Term]
  deriving (Show, Eq)

data Term 
  = If Term Term Term 
  | Lit Lit
  | Lam Var Term 
  | Id Var   
  | App Term Term 
  | BiOp Op Term Term
  | Let Var Term Term 
  | Match Term [Clause]

  | Forall Var Term Term 
  | Exist Var Term Term 
  | For Var Term [Var] Term

  deriving (Show, Eq)
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
