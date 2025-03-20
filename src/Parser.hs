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
happyExpList = Happy_Data_Array.listArray (0,491) ([32768,0,0,0,0,0,0,0,0,0,16384,0,0,0,0,2,0,0,64,0,0,0,0,0,8,0,0,0,32,0,0,0,0,0,34120,191,0,43264,38896,2047,0,0,0,0,49828,95,0,0,8,0,0,256,0,0,57682,47,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2704,383,0,20992,12257,0,16384,64554,65525,1,0,256,0,43264,40944,2047,8192,65077,65522,0,2,0,0,2048,0,0,45056,32522,32761,0,0,0,0,10816,1532,0,18432,49029,0,0,61609,23,0,5408,766,0,41984,24514,0,32768,63572,11,0,2704,383,0,20992,12257,0,16384,64554,5,0,34120,191,0,43264,6128,0,8192,65045,2,0,49828,95,16,21632,3064,575,36864,32522,18401,0,57682,64559,8,10816,1532,270,18432,49029,8192,0,61609,23,4,5408,766,128,41984,24514,4320,32768,63572,7179,2,2704,57727,127,20992,12257,4094,16384,64554,5,0,34120,191,0,43264,6128,0,0,64,0,0,0,0,0,0,0,0,36864,32522,1,0,0,0,0,0,2,0,0,41120,0,0,61673,65431,7,5408,62206,255,46080,24514,8190,32768,63572,11,0,2704,383,0,8192,0,0,0,0,0,1,0,0,0,0,16,0,0,0,0,0,20480,80,0,0,2570,0,0,0,0,0,0,128,0,0,2048,0,0,16384,0,0,4096,20,0,32768,642,0,41984,24514,0,32768,63572,65483,3,2704,63871,127,20992,12261,4095,0,0,0,0,32768,160,0,0,0,0,0,0,0,0,0,0,0,0,2570,0,0,0,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseTok","Program","FuncDecl","ArgList","Term","Lit","ListLit","Clauses","Pattern","Pattern1","Pattern2","Pattern2s","PatternsWithComma","def","':='","if","then","else","fun","'=>'","let","in","match","with","'|'","'#'","end","id","int","float","string","true","false","'('","')'","'['","']'","','","'||'","'&&'","'+'","'-'","'*'","'/'","'%'","'++'","'<'","'>'","'=='","'::'","%eof"]
        bit_start = st Prelude.* 53
        bit_end = (st Prelude.+ 1) Prelude.* 53
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..52]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (16) = happyShift action_4
action_0 (4) = happyGoto action_2
action_0 (5) = happyGoto action_3
action_0 _ = happyReduce_1

action_1 _ = happyFail (happyExpListPerState 1)

action_2 (53) = happyAccept
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (16) = happyShift action_4
action_3 (4) = happyGoto action_6
action_3 (5) = happyGoto action_3
action_3 _ = happyReduce_1

action_4 (30) = happyShift action_5
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (30) = happyShift action_8
action_5 (6) = happyGoto action_7
action_5 _ = happyReduce_4

action_6 _ = happyReduce_2

action_7 (17) = happyShift action_10
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (30) = happyShift action_8
action_8 (6) = happyGoto action_9
action_8 _ = happyReduce_4

action_9 _ = happyReduce_5

action_10 (18) = happyShift action_13
action_10 (21) = happyShift action_14
action_10 (23) = happyShift action_15
action_10 (25) = happyShift action_16
action_10 (30) = happyShift action_17
action_10 (31) = happyShift action_18
action_10 (32) = happyShift action_19
action_10 (33) = happyShift action_20
action_10 (34) = happyShift action_21
action_10 (35) = happyShift action_22
action_10 (36) = happyShift action_23
action_10 (38) = happyShift action_24
action_10 (7) = happyGoto action_11
action_10 (8) = happyGoto action_12
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (18) = happyShift action_13
action_11 (21) = happyShift action_14
action_11 (23) = happyShift action_15
action_11 (25) = happyShift action_16
action_11 (30) = happyShift action_17
action_11 (31) = happyShift action_18
action_11 (32) = happyShift action_19
action_11 (33) = happyShift action_20
action_11 (34) = happyShift action_21
action_11 (35) = happyShift action_22
action_11 (36) = happyShift action_23
action_11 (38) = happyShift action_24
action_11 (41) = happyShift action_33
action_11 (42) = happyShift action_34
action_11 (43) = happyShift action_35
action_11 (44) = happyShift action_36
action_11 (45) = happyShift action_37
action_11 (46) = happyShift action_38
action_11 (47) = happyShift action_39
action_11 (48) = happyShift action_40
action_11 (49) = happyShift action_41
action_11 (50) = happyShift action_42
action_11 (51) = happyShift action_43
action_11 (52) = happyShift action_44
action_11 (7) = happyGoto action_32
action_11 (8) = happyGoto action_12
action_11 _ = happyReduce_3

action_12 _ = happyReduce_25

action_13 (18) = happyShift action_13
action_13 (21) = happyShift action_14
action_13 (23) = happyShift action_15
action_13 (25) = happyShift action_16
action_13 (30) = happyShift action_17
action_13 (31) = happyShift action_18
action_13 (32) = happyShift action_19
action_13 (33) = happyShift action_20
action_13 (34) = happyShift action_21
action_13 (35) = happyShift action_22
action_13 (36) = happyShift action_23
action_13 (38) = happyShift action_24
action_13 (7) = happyGoto action_31
action_13 (8) = happyGoto action_12
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (30) = happyShift action_30
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (30) = happyShift action_29
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (18) = happyShift action_13
action_16 (21) = happyShift action_14
action_16 (23) = happyShift action_15
action_16 (25) = happyShift action_16
action_16 (30) = happyShift action_17
action_16 (31) = happyShift action_18
action_16 (32) = happyShift action_19
action_16 (33) = happyShift action_20
action_16 (34) = happyShift action_21
action_16 (35) = happyShift action_22
action_16 (36) = happyShift action_23
action_16 (38) = happyShift action_24
action_16 (7) = happyGoto action_28
action_16 (8) = happyGoto action_12
action_16 _ = happyFail (happyExpListPerState 16)

action_17 _ = happyReduce_23

action_18 _ = happyReduce_28

action_19 _ = happyReduce_27

action_20 _ = happyReduce_26

action_21 _ = happyReduce_29

action_22 _ = happyReduce_30

action_23 (18) = happyShift action_13
action_23 (21) = happyShift action_14
action_23 (23) = happyShift action_15
action_23 (25) = happyShift action_16
action_23 (30) = happyShift action_17
action_23 (31) = happyShift action_18
action_23 (32) = happyShift action_19
action_23 (33) = happyShift action_20
action_23 (34) = happyShift action_21
action_23 (35) = happyShift action_22
action_23 (36) = happyShift action_23
action_23 (38) = happyShift action_24
action_23 (7) = happyGoto action_27
action_23 (8) = happyGoto action_12
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (18) = happyShift action_13
action_24 (21) = happyShift action_14
action_24 (23) = happyShift action_15
action_24 (25) = happyShift action_16
action_24 (30) = happyShift action_17
action_24 (31) = happyShift action_18
action_24 (32) = happyShift action_19
action_24 (33) = happyShift action_20
action_24 (34) = happyShift action_21
action_24 (35) = happyShift action_22
action_24 (36) = happyShift action_23
action_24 (38) = happyShift action_24
action_24 (7) = happyGoto action_25
action_24 (8) = happyGoto action_12
action_24 (9) = happyGoto action_26
action_24 _ = happyReduce_32

action_25 (18) = happyShift action_13
action_25 (21) = happyShift action_14
action_25 (23) = happyShift action_15
action_25 (25) = happyShift action_16
action_25 (30) = happyShift action_17
action_25 (31) = happyShift action_18
action_25 (32) = happyShift action_19
action_25 (33) = happyShift action_20
action_25 (34) = happyShift action_21
action_25 (35) = happyShift action_22
action_25 (36) = happyShift action_23
action_25 (38) = happyShift action_24
action_25 (40) = happyShift action_63
action_25 (41) = happyShift action_33
action_25 (42) = happyShift action_34
action_25 (43) = happyShift action_35
action_25 (44) = happyShift action_36
action_25 (45) = happyShift action_37
action_25 (46) = happyShift action_38
action_25 (47) = happyShift action_39
action_25 (48) = happyShift action_40
action_25 (49) = happyShift action_41
action_25 (50) = happyShift action_42
action_25 (51) = happyShift action_43
action_25 (52) = happyShift action_44
action_25 (7) = happyGoto action_32
action_25 (8) = happyGoto action_12
action_25 _ = happyReduce_33

action_26 (39) = happyShift action_62
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (18) = happyShift action_13
action_27 (21) = happyShift action_14
action_27 (23) = happyShift action_15
action_27 (25) = happyShift action_16
action_27 (30) = happyShift action_17
action_27 (31) = happyShift action_18
action_27 (32) = happyShift action_19
action_27 (33) = happyShift action_20
action_27 (34) = happyShift action_21
action_27 (35) = happyShift action_22
action_27 (36) = happyShift action_23
action_27 (37) = happyShift action_61
action_27 (38) = happyShift action_24
action_27 (41) = happyShift action_33
action_27 (42) = happyShift action_34
action_27 (43) = happyShift action_35
action_27 (44) = happyShift action_36
action_27 (45) = happyShift action_37
action_27 (46) = happyShift action_38
action_27 (47) = happyShift action_39
action_27 (48) = happyShift action_40
action_27 (49) = happyShift action_41
action_27 (50) = happyShift action_42
action_27 (51) = happyShift action_43
action_27 (52) = happyShift action_44
action_27 (7) = happyGoto action_32
action_27 (8) = happyGoto action_12
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (18) = happyShift action_13
action_28 (21) = happyShift action_14
action_28 (23) = happyShift action_15
action_28 (25) = happyShift action_16
action_28 (26) = happyShift action_60
action_28 (30) = happyShift action_17
action_28 (31) = happyShift action_18
action_28 (32) = happyShift action_19
action_28 (33) = happyShift action_20
action_28 (34) = happyShift action_21
action_28 (35) = happyShift action_22
action_28 (36) = happyShift action_23
action_28 (38) = happyShift action_24
action_28 (41) = happyShift action_33
action_28 (42) = happyShift action_34
action_28 (43) = happyShift action_35
action_28 (44) = happyShift action_36
action_28 (45) = happyShift action_37
action_28 (46) = happyShift action_38
action_28 (47) = happyShift action_39
action_28 (48) = happyShift action_40
action_28 (49) = happyShift action_41
action_28 (50) = happyShift action_42
action_28 (51) = happyShift action_43
action_28 (52) = happyShift action_44
action_28 (7) = happyGoto action_32
action_28 (8) = happyGoto action_12
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (17) = happyShift action_59
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (22) = happyShift action_58
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (18) = happyShift action_13
action_31 (19) = happyShift action_57
action_31 (21) = happyShift action_14
action_31 (23) = happyShift action_15
action_31 (25) = happyShift action_16
action_31 (30) = happyShift action_17
action_31 (31) = happyShift action_18
action_31 (32) = happyShift action_19
action_31 (33) = happyShift action_20
action_31 (34) = happyShift action_21
action_31 (35) = happyShift action_22
action_31 (36) = happyShift action_23
action_31 (38) = happyShift action_24
action_31 (41) = happyShift action_33
action_31 (42) = happyShift action_34
action_31 (43) = happyShift action_35
action_31 (44) = happyShift action_36
action_31 (45) = happyShift action_37
action_31 (46) = happyShift action_38
action_31 (47) = happyShift action_39
action_31 (48) = happyShift action_40
action_31 (49) = happyShift action_41
action_31 (50) = happyShift action_42
action_31 (51) = happyShift action_43
action_31 (52) = happyShift action_44
action_31 (7) = happyGoto action_32
action_31 (8) = happyGoto action_12
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (7) = happyGoto action_32
action_32 (8) = happyGoto action_12
action_32 _ = happyReduce_10

action_33 (18) = happyShift action_13
action_33 (21) = happyShift action_14
action_33 (23) = happyShift action_15
action_33 (25) = happyShift action_16
action_33 (30) = happyShift action_17
action_33 (31) = happyShift action_18
action_33 (32) = happyShift action_19
action_33 (33) = happyShift action_20
action_33 (34) = happyShift action_21
action_33 (35) = happyShift action_22
action_33 (36) = happyShift action_23
action_33 (38) = happyShift action_24
action_33 (7) = happyGoto action_56
action_33 (8) = happyGoto action_12
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (18) = happyShift action_13
action_34 (21) = happyShift action_14
action_34 (23) = happyShift action_15
action_34 (25) = happyShift action_16
action_34 (30) = happyShift action_17
action_34 (31) = happyShift action_18
action_34 (32) = happyShift action_19
action_34 (33) = happyShift action_20
action_34 (34) = happyShift action_21
action_34 (35) = happyShift action_22
action_34 (36) = happyShift action_23
action_34 (38) = happyShift action_24
action_34 (7) = happyGoto action_55
action_34 (8) = happyGoto action_12
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (18) = happyShift action_13
action_35 (21) = happyShift action_14
action_35 (23) = happyShift action_15
action_35 (25) = happyShift action_16
action_35 (30) = happyShift action_17
action_35 (31) = happyShift action_18
action_35 (32) = happyShift action_19
action_35 (33) = happyShift action_20
action_35 (34) = happyShift action_21
action_35 (35) = happyShift action_22
action_35 (36) = happyShift action_23
action_35 (38) = happyShift action_24
action_35 (7) = happyGoto action_54
action_35 (8) = happyGoto action_12
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (18) = happyShift action_13
action_36 (21) = happyShift action_14
action_36 (23) = happyShift action_15
action_36 (25) = happyShift action_16
action_36 (30) = happyShift action_17
action_36 (31) = happyShift action_18
action_36 (32) = happyShift action_19
action_36 (33) = happyShift action_20
action_36 (34) = happyShift action_21
action_36 (35) = happyShift action_22
action_36 (36) = happyShift action_23
action_36 (38) = happyShift action_24
action_36 (7) = happyGoto action_53
action_36 (8) = happyGoto action_12
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (18) = happyShift action_13
action_37 (21) = happyShift action_14
action_37 (23) = happyShift action_15
action_37 (25) = happyShift action_16
action_37 (30) = happyShift action_17
action_37 (31) = happyShift action_18
action_37 (32) = happyShift action_19
action_37 (33) = happyShift action_20
action_37 (34) = happyShift action_21
action_37 (35) = happyShift action_22
action_37 (36) = happyShift action_23
action_37 (38) = happyShift action_24
action_37 (7) = happyGoto action_52
action_37 (8) = happyGoto action_12
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (18) = happyShift action_13
action_38 (21) = happyShift action_14
action_38 (23) = happyShift action_15
action_38 (25) = happyShift action_16
action_38 (30) = happyShift action_17
action_38 (31) = happyShift action_18
action_38 (32) = happyShift action_19
action_38 (33) = happyShift action_20
action_38 (34) = happyShift action_21
action_38 (35) = happyShift action_22
action_38 (36) = happyShift action_23
action_38 (38) = happyShift action_24
action_38 (7) = happyGoto action_51
action_38 (8) = happyGoto action_12
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (18) = happyShift action_13
action_39 (21) = happyShift action_14
action_39 (23) = happyShift action_15
action_39 (25) = happyShift action_16
action_39 (30) = happyShift action_17
action_39 (31) = happyShift action_18
action_39 (32) = happyShift action_19
action_39 (33) = happyShift action_20
action_39 (34) = happyShift action_21
action_39 (35) = happyShift action_22
action_39 (36) = happyShift action_23
action_39 (38) = happyShift action_24
action_39 (7) = happyGoto action_50
action_39 (8) = happyGoto action_12
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (18) = happyShift action_13
action_40 (21) = happyShift action_14
action_40 (23) = happyShift action_15
action_40 (25) = happyShift action_16
action_40 (30) = happyShift action_17
action_40 (31) = happyShift action_18
action_40 (32) = happyShift action_19
action_40 (33) = happyShift action_20
action_40 (34) = happyShift action_21
action_40 (35) = happyShift action_22
action_40 (36) = happyShift action_23
action_40 (38) = happyShift action_24
action_40 (7) = happyGoto action_49
action_40 (8) = happyGoto action_12
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (18) = happyShift action_13
action_41 (21) = happyShift action_14
action_41 (23) = happyShift action_15
action_41 (25) = happyShift action_16
action_41 (30) = happyShift action_17
action_41 (31) = happyShift action_18
action_41 (32) = happyShift action_19
action_41 (33) = happyShift action_20
action_41 (34) = happyShift action_21
action_41 (35) = happyShift action_22
action_41 (36) = happyShift action_23
action_41 (38) = happyShift action_24
action_41 (7) = happyGoto action_48
action_41 (8) = happyGoto action_12
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (18) = happyShift action_13
action_42 (21) = happyShift action_14
action_42 (23) = happyShift action_15
action_42 (25) = happyShift action_16
action_42 (30) = happyShift action_17
action_42 (31) = happyShift action_18
action_42 (32) = happyShift action_19
action_42 (33) = happyShift action_20
action_42 (34) = happyShift action_21
action_42 (35) = happyShift action_22
action_42 (36) = happyShift action_23
action_42 (38) = happyShift action_24
action_42 (7) = happyGoto action_47
action_42 (8) = happyGoto action_12
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (18) = happyShift action_13
action_43 (21) = happyShift action_14
action_43 (23) = happyShift action_15
action_43 (25) = happyShift action_16
action_43 (30) = happyShift action_17
action_43 (31) = happyShift action_18
action_43 (32) = happyShift action_19
action_43 (33) = happyShift action_20
action_43 (34) = happyShift action_21
action_43 (35) = happyShift action_22
action_43 (36) = happyShift action_23
action_43 (38) = happyShift action_24
action_43 (7) = happyGoto action_46
action_43 (8) = happyGoto action_12
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (18) = happyShift action_13
action_44 (21) = happyShift action_14
action_44 (23) = happyShift action_15
action_44 (25) = happyShift action_16
action_44 (30) = happyShift action_17
action_44 (31) = happyShift action_18
action_44 (32) = happyShift action_19
action_44 (33) = happyShift action_20
action_44 (34) = happyShift action_21
action_44 (35) = happyShift action_22
action_44 (36) = happyShift action_23
action_44 (38) = happyShift action_24
action_44 (7) = happyGoto action_45
action_44 (8) = happyGoto action_12
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (18) = happyShift action_13
action_45 (21) = happyShift action_14
action_45 (23) = happyShift action_15
action_45 (25) = happyShift action_16
action_45 (30) = happyShift action_17
action_45 (31) = happyShift action_18
action_45 (32) = happyShift action_19
action_45 (33) = happyShift action_20
action_45 (34) = happyShift action_21
action_45 (35) = happyShift action_22
action_45 (36) = happyShift action_23
action_45 (38) = happyShift action_24
action_45 (52) = happyShift action_44
action_45 (7) = happyGoto action_32
action_45 (8) = happyGoto action_12
action_45 _ = happyReduce_22

action_46 (18) = happyShift action_13
action_46 (21) = happyShift action_14
action_46 (23) = happyShift action_15
action_46 (25) = happyShift action_16
action_46 (30) = happyShift action_17
action_46 (31) = happyShift action_18
action_46 (32) = happyShift action_19
action_46 (33) = happyShift action_20
action_46 (34) = happyShift action_21
action_46 (35) = happyShift action_22
action_46 (36) = happyShift action_23
action_46 (38) = happyShift action_24
action_46 (43) = happyShift action_35
action_46 (44) = happyShift action_36
action_46 (45) = happyShift action_37
action_46 (46) = happyShift action_38
action_46 (47) = happyShift action_39
action_46 (48) = happyShift action_40
action_46 (49) = happyFail []
action_46 (50) = happyFail []
action_46 (51) = happyFail []
action_46 (52) = happyShift action_44
action_46 (7) = happyGoto action_32
action_46 (8) = happyGoto action_12
action_46 _ = happyReduce_21

action_47 (18) = happyShift action_13
action_47 (21) = happyShift action_14
action_47 (23) = happyShift action_15
action_47 (25) = happyShift action_16
action_47 (30) = happyShift action_17
action_47 (31) = happyShift action_18
action_47 (32) = happyShift action_19
action_47 (33) = happyShift action_20
action_47 (34) = happyShift action_21
action_47 (35) = happyShift action_22
action_47 (36) = happyShift action_23
action_47 (38) = happyShift action_24
action_47 (43) = happyShift action_35
action_47 (44) = happyShift action_36
action_47 (45) = happyShift action_37
action_47 (46) = happyShift action_38
action_47 (47) = happyShift action_39
action_47 (48) = happyShift action_40
action_47 (49) = happyFail []
action_47 (50) = happyFail []
action_47 (51) = happyFail []
action_47 (52) = happyShift action_44
action_47 (7) = happyGoto action_32
action_47 (8) = happyGoto action_12
action_47 _ = happyReduce_20

action_48 (18) = happyShift action_13
action_48 (21) = happyShift action_14
action_48 (23) = happyShift action_15
action_48 (25) = happyShift action_16
action_48 (30) = happyShift action_17
action_48 (31) = happyShift action_18
action_48 (32) = happyShift action_19
action_48 (33) = happyShift action_20
action_48 (34) = happyShift action_21
action_48 (35) = happyShift action_22
action_48 (36) = happyShift action_23
action_48 (38) = happyShift action_24
action_48 (43) = happyShift action_35
action_48 (44) = happyShift action_36
action_48 (45) = happyShift action_37
action_48 (46) = happyShift action_38
action_48 (47) = happyShift action_39
action_48 (48) = happyShift action_40
action_48 (49) = happyFail []
action_48 (50) = happyFail []
action_48 (51) = happyFail []
action_48 (52) = happyShift action_44
action_48 (7) = happyGoto action_32
action_48 (8) = happyGoto action_12
action_48 _ = happyReduce_19

action_49 (18) = happyShift action_13
action_49 (21) = happyShift action_14
action_49 (23) = happyShift action_15
action_49 (25) = happyShift action_16
action_49 (30) = happyShift action_17
action_49 (31) = happyShift action_18
action_49 (32) = happyShift action_19
action_49 (33) = happyShift action_20
action_49 (34) = happyShift action_21
action_49 (35) = happyShift action_22
action_49 (36) = happyShift action_23
action_49 (38) = happyShift action_24
action_49 (45) = happyShift action_37
action_49 (46) = happyShift action_38
action_49 (47) = happyShift action_39
action_49 (52) = happyShift action_44
action_49 (7) = happyGoto action_32
action_49 (8) = happyGoto action_12
action_49 _ = happyReduce_18

action_50 (18) = happyShift action_13
action_50 (21) = happyShift action_14
action_50 (23) = happyShift action_15
action_50 (25) = happyShift action_16
action_50 (30) = happyShift action_17
action_50 (31) = happyShift action_18
action_50 (32) = happyShift action_19
action_50 (33) = happyShift action_20
action_50 (34) = happyShift action_21
action_50 (35) = happyShift action_22
action_50 (36) = happyShift action_23
action_50 (38) = happyShift action_24
action_50 (52) = happyShift action_44
action_50 (7) = happyGoto action_32
action_50 (8) = happyGoto action_12
action_50 _ = happyReduce_17

action_51 (18) = happyShift action_13
action_51 (21) = happyShift action_14
action_51 (23) = happyShift action_15
action_51 (25) = happyShift action_16
action_51 (30) = happyShift action_17
action_51 (31) = happyShift action_18
action_51 (32) = happyShift action_19
action_51 (33) = happyShift action_20
action_51 (34) = happyShift action_21
action_51 (35) = happyShift action_22
action_51 (36) = happyShift action_23
action_51 (38) = happyShift action_24
action_51 (52) = happyShift action_44
action_51 (7) = happyGoto action_32
action_51 (8) = happyGoto action_12
action_51 _ = happyReduce_16

action_52 (18) = happyShift action_13
action_52 (21) = happyShift action_14
action_52 (23) = happyShift action_15
action_52 (25) = happyShift action_16
action_52 (30) = happyShift action_17
action_52 (31) = happyShift action_18
action_52 (32) = happyShift action_19
action_52 (33) = happyShift action_20
action_52 (34) = happyShift action_21
action_52 (35) = happyShift action_22
action_52 (36) = happyShift action_23
action_52 (38) = happyShift action_24
action_52 (52) = happyShift action_44
action_52 (7) = happyGoto action_32
action_52 (8) = happyGoto action_12
action_52 _ = happyReduce_15

action_53 (18) = happyShift action_13
action_53 (21) = happyShift action_14
action_53 (23) = happyShift action_15
action_53 (25) = happyShift action_16
action_53 (30) = happyShift action_17
action_53 (31) = happyShift action_18
action_53 (32) = happyShift action_19
action_53 (33) = happyShift action_20
action_53 (34) = happyShift action_21
action_53 (35) = happyShift action_22
action_53 (36) = happyShift action_23
action_53 (38) = happyShift action_24
action_53 (45) = happyShift action_37
action_53 (46) = happyShift action_38
action_53 (47) = happyShift action_39
action_53 (52) = happyShift action_44
action_53 (7) = happyGoto action_32
action_53 (8) = happyGoto action_12
action_53 _ = happyReduce_14

action_54 (18) = happyShift action_13
action_54 (21) = happyShift action_14
action_54 (23) = happyShift action_15
action_54 (25) = happyShift action_16
action_54 (30) = happyShift action_17
action_54 (31) = happyShift action_18
action_54 (32) = happyShift action_19
action_54 (33) = happyShift action_20
action_54 (34) = happyShift action_21
action_54 (35) = happyShift action_22
action_54 (36) = happyShift action_23
action_54 (38) = happyShift action_24
action_54 (45) = happyShift action_37
action_54 (46) = happyShift action_38
action_54 (47) = happyShift action_39
action_54 (52) = happyShift action_44
action_54 (7) = happyGoto action_32
action_54 (8) = happyGoto action_12
action_54 _ = happyReduce_13

action_55 (18) = happyShift action_13
action_55 (21) = happyShift action_14
action_55 (23) = happyShift action_15
action_55 (25) = happyShift action_16
action_55 (30) = happyShift action_17
action_55 (31) = happyShift action_18
action_55 (32) = happyShift action_19
action_55 (33) = happyShift action_20
action_55 (34) = happyShift action_21
action_55 (35) = happyShift action_22
action_55 (36) = happyShift action_23
action_55 (38) = happyShift action_24
action_55 (43) = happyShift action_35
action_55 (44) = happyShift action_36
action_55 (45) = happyShift action_37
action_55 (46) = happyShift action_38
action_55 (47) = happyShift action_39
action_55 (48) = happyShift action_40
action_55 (49) = happyShift action_41
action_55 (50) = happyShift action_42
action_55 (51) = happyShift action_43
action_55 (52) = happyShift action_44
action_55 (7) = happyGoto action_32
action_55 (8) = happyGoto action_12
action_55 _ = happyReduce_12

action_56 (18) = happyShift action_13
action_56 (21) = happyShift action_14
action_56 (23) = happyShift action_15
action_56 (25) = happyShift action_16
action_56 (30) = happyShift action_17
action_56 (31) = happyShift action_18
action_56 (32) = happyShift action_19
action_56 (33) = happyShift action_20
action_56 (34) = happyShift action_21
action_56 (35) = happyShift action_22
action_56 (36) = happyShift action_23
action_56 (38) = happyShift action_24
action_56 (42) = happyShift action_34
action_56 (43) = happyShift action_35
action_56 (44) = happyShift action_36
action_56 (45) = happyShift action_37
action_56 (46) = happyShift action_38
action_56 (47) = happyShift action_39
action_56 (48) = happyShift action_40
action_56 (49) = happyShift action_41
action_56 (50) = happyShift action_42
action_56 (51) = happyShift action_43
action_56 (52) = happyShift action_44
action_56 (7) = happyGoto action_32
action_56 (8) = happyGoto action_12
action_56 _ = happyReduce_11

action_57 (18) = happyShift action_13
action_57 (21) = happyShift action_14
action_57 (23) = happyShift action_15
action_57 (25) = happyShift action_16
action_57 (30) = happyShift action_17
action_57 (31) = happyShift action_18
action_57 (32) = happyShift action_19
action_57 (33) = happyShift action_20
action_57 (34) = happyShift action_21
action_57 (35) = happyShift action_22
action_57 (36) = happyShift action_23
action_57 (38) = happyShift action_24
action_57 (7) = happyGoto action_69
action_57 (8) = happyGoto action_12
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (18) = happyShift action_13
action_58 (21) = happyShift action_14
action_58 (23) = happyShift action_15
action_58 (25) = happyShift action_16
action_58 (30) = happyShift action_17
action_58 (31) = happyShift action_18
action_58 (32) = happyShift action_19
action_58 (33) = happyShift action_20
action_58 (34) = happyShift action_21
action_58 (35) = happyShift action_22
action_58 (36) = happyShift action_23
action_58 (38) = happyShift action_24
action_58 (7) = happyGoto action_68
action_58 (8) = happyGoto action_12
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (18) = happyShift action_13
action_59 (21) = happyShift action_14
action_59 (23) = happyShift action_15
action_59 (25) = happyShift action_16
action_59 (30) = happyShift action_17
action_59 (31) = happyShift action_18
action_59 (32) = happyShift action_19
action_59 (33) = happyShift action_20
action_59 (34) = happyShift action_21
action_59 (35) = happyShift action_22
action_59 (36) = happyShift action_23
action_59 (38) = happyShift action_24
action_59 (7) = happyGoto action_67
action_59 (8) = happyGoto action_12
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (27) = happyShift action_66
action_60 (10) = happyGoto action_65
action_60 _ = happyReduce_35

action_61 _ = happyReduce_24

action_62 _ = happyReduce_31

action_63 (18) = happyShift action_13
action_63 (21) = happyShift action_14
action_63 (23) = happyShift action_15
action_63 (25) = happyShift action_16
action_63 (30) = happyShift action_17
action_63 (31) = happyShift action_18
action_63 (32) = happyShift action_19
action_63 (33) = happyShift action_20
action_63 (34) = happyShift action_21
action_63 (35) = happyShift action_22
action_63 (36) = happyShift action_23
action_63 (38) = happyShift action_24
action_63 (7) = happyGoto action_25
action_63 (8) = happyGoto action_12
action_63 (9) = happyGoto action_64
action_63 _ = happyReduce_32

action_64 _ = happyReduce_34

action_65 (29) = happyShift action_79
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (28) = happyShift action_75
action_66 (30) = happyShift action_76
action_66 (36) = happyShift action_77
action_66 (38) = happyShift action_78
action_66 (11) = happyGoto action_72
action_66 (12) = happyGoto action_73
action_66 (13) = happyGoto action_74
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (18) = happyShift action_13
action_67 (21) = happyShift action_14
action_67 (23) = happyShift action_15
action_67 (24) = happyShift action_71
action_67 (25) = happyShift action_16
action_67 (30) = happyShift action_17
action_67 (31) = happyShift action_18
action_67 (32) = happyShift action_19
action_67 (33) = happyShift action_20
action_67 (34) = happyShift action_21
action_67 (35) = happyShift action_22
action_67 (36) = happyShift action_23
action_67 (38) = happyShift action_24
action_67 (41) = happyShift action_33
action_67 (42) = happyShift action_34
action_67 (43) = happyShift action_35
action_67 (44) = happyShift action_36
action_67 (45) = happyShift action_37
action_67 (46) = happyShift action_38
action_67 (47) = happyShift action_39
action_67 (48) = happyShift action_40
action_67 (49) = happyShift action_41
action_67 (50) = happyShift action_42
action_67 (51) = happyShift action_43
action_67 (52) = happyShift action_44
action_67 (7) = happyGoto action_32
action_67 (8) = happyGoto action_12
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (18) = happyShift action_13
action_68 (21) = happyShift action_14
action_68 (23) = happyShift action_15
action_68 (25) = happyShift action_16
action_68 (30) = happyShift action_17
action_68 (31) = happyShift action_18
action_68 (32) = happyShift action_19
action_68 (33) = happyShift action_20
action_68 (34) = happyShift action_21
action_68 (35) = happyShift action_22
action_68 (36) = happyShift action_23
action_68 (38) = happyShift action_24
action_68 (41) = happyShift action_33
action_68 (42) = happyShift action_34
action_68 (43) = happyShift action_35
action_68 (44) = happyShift action_36
action_68 (45) = happyShift action_37
action_68 (46) = happyShift action_38
action_68 (47) = happyShift action_39
action_68 (48) = happyShift action_40
action_68 (49) = happyShift action_41
action_68 (50) = happyShift action_42
action_68 (51) = happyShift action_43
action_68 (52) = happyShift action_44
action_68 (7) = happyGoto action_32
action_68 (8) = happyGoto action_12
action_68 _ = happyReduce_8

action_69 (18) = happyShift action_13
action_69 (20) = happyShift action_70
action_69 (21) = happyShift action_14
action_69 (23) = happyShift action_15
action_69 (25) = happyShift action_16
action_69 (30) = happyShift action_17
action_69 (31) = happyShift action_18
action_69 (32) = happyShift action_19
action_69 (33) = happyShift action_20
action_69 (34) = happyShift action_21
action_69 (35) = happyShift action_22
action_69 (36) = happyShift action_23
action_69 (38) = happyShift action_24
action_69 (41) = happyShift action_33
action_69 (42) = happyShift action_34
action_69 (43) = happyShift action_35
action_69 (44) = happyShift action_36
action_69 (45) = happyShift action_37
action_69 (46) = happyShift action_38
action_69 (47) = happyShift action_39
action_69 (48) = happyShift action_40
action_69 (49) = happyShift action_41
action_69 (50) = happyShift action_42
action_69 (51) = happyShift action_43
action_69 (52) = happyShift action_44
action_69 (7) = happyGoto action_32
action_69 (8) = happyGoto action_12
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (18) = happyShift action_13
action_70 (21) = happyShift action_14
action_70 (23) = happyShift action_15
action_70 (25) = happyShift action_16
action_70 (30) = happyShift action_17
action_70 (31) = happyShift action_18
action_70 (32) = happyShift action_19
action_70 (33) = happyShift action_20
action_70 (34) = happyShift action_21
action_70 (35) = happyShift action_22
action_70 (36) = happyShift action_23
action_70 (38) = happyShift action_24
action_70 (7) = happyGoto action_87
action_70 (8) = happyGoto action_12
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (18) = happyShift action_13
action_71 (21) = happyShift action_14
action_71 (23) = happyShift action_15
action_71 (25) = happyShift action_16
action_71 (30) = happyShift action_17
action_71 (31) = happyShift action_18
action_71 (32) = happyShift action_19
action_71 (33) = happyShift action_20
action_71 (34) = happyShift action_21
action_71 (35) = happyShift action_22
action_71 (36) = happyShift action_23
action_71 (38) = happyShift action_24
action_71 (7) = happyGoto action_86
action_71 (8) = happyGoto action_12
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (22) = happyShift action_85
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (52) = happyShift action_84
action_73 _ = happyReduce_38

action_74 _ = happyReduce_40

action_75 (30) = happyShift action_83
action_75 _ = happyFail (happyExpListPerState 75)

action_76 _ = happyReduce_43

action_77 (28) = happyShift action_75
action_77 (30) = happyShift action_76
action_77 (36) = happyShift action_77
action_77 (38) = happyShift action_78
action_77 (11) = happyGoto action_82
action_77 (12) = happyGoto action_73
action_77 (13) = happyGoto action_74
action_77 _ = happyFail (happyExpListPerState 77)

action_78 (28) = happyShift action_75
action_78 (30) = happyShift action_76
action_78 (36) = happyShift action_77
action_78 (38) = happyShift action_78
action_78 (11) = happyGoto action_80
action_78 (12) = happyGoto action_73
action_78 (13) = happyGoto action_74
action_78 (15) = happyGoto action_81
action_78 _ = happyReduce_46

action_79 _ = happyReduce_9

action_80 (40) = happyShift action_94
action_80 _ = happyReduce_47

action_81 (39) = happyShift action_93
action_81 _ = happyFail (happyExpListPerState 81)

action_82 (37) = happyShift action_92
action_82 _ = happyFail (happyExpListPerState 82)

action_83 (30) = happyShift action_76
action_83 (36) = happyShift action_77
action_83 (38) = happyShift action_78
action_83 (13) = happyGoto action_90
action_83 (14) = happyGoto action_91
action_83 _ = happyReduce_44

action_84 (28) = happyShift action_75
action_84 (30) = happyShift action_76
action_84 (36) = happyShift action_77
action_84 (38) = happyShift action_78
action_84 (11) = happyGoto action_89
action_84 (12) = happyGoto action_73
action_84 (13) = happyGoto action_74
action_84 _ = happyFail (happyExpListPerState 84)

action_85 (18) = happyShift action_13
action_85 (21) = happyShift action_14
action_85 (23) = happyShift action_15
action_85 (25) = happyShift action_16
action_85 (30) = happyShift action_17
action_85 (31) = happyShift action_18
action_85 (32) = happyShift action_19
action_85 (33) = happyShift action_20
action_85 (34) = happyShift action_21
action_85 (35) = happyShift action_22
action_85 (36) = happyShift action_23
action_85 (38) = happyShift action_24
action_85 (7) = happyGoto action_88
action_85 (8) = happyGoto action_12
action_85 _ = happyFail (happyExpListPerState 85)

action_86 (18) = happyShift action_13
action_86 (21) = happyShift action_14
action_86 (23) = happyShift action_15
action_86 (25) = happyShift action_16
action_86 (30) = happyShift action_17
action_86 (31) = happyShift action_18
action_86 (32) = happyShift action_19
action_86 (33) = happyShift action_20
action_86 (34) = happyShift action_21
action_86 (35) = happyShift action_22
action_86 (36) = happyShift action_23
action_86 (38) = happyShift action_24
action_86 (41) = happyShift action_33
action_86 (42) = happyShift action_34
action_86 (43) = happyShift action_35
action_86 (44) = happyShift action_36
action_86 (45) = happyShift action_37
action_86 (46) = happyShift action_38
action_86 (47) = happyShift action_39
action_86 (48) = happyShift action_40
action_86 (49) = happyShift action_41
action_86 (50) = happyShift action_42
action_86 (51) = happyShift action_43
action_86 (52) = happyShift action_44
action_86 (7) = happyGoto action_32
action_86 (8) = happyGoto action_12
action_86 _ = happyReduce_6

action_87 (18) = happyShift action_13
action_87 (21) = happyShift action_14
action_87 (23) = happyShift action_15
action_87 (25) = happyShift action_16
action_87 (30) = happyShift action_17
action_87 (31) = happyShift action_18
action_87 (32) = happyShift action_19
action_87 (33) = happyShift action_20
action_87 (34) = happyShift action_21
action_87 (35) = happyShift action_22
action_87 (36) = happyShift action_23
action_87 (38) = happyShift action_24
action_87 (41) = happyShift action_33
action_87 (42) = happyShift action_34
action_87 (43) = happyShift action_35
action_87 (44) = happyShift action_36
action_87 (45) = happyShift action_37
action_87 (46) = happyShift action_38
action_87 (47) = happyShift action_39
action_87 (48) = happyShift action_40
action_87 (49) = happyShift action_41
action_87 (50) = happyShift action_42
action_87 (51) = happyShift action_43
action_87 (52) = happyShift action_44
action_87 (7) = happyGoto action_32
action_87 (8) = happyGoto action_12
action_87 _ = happyReduce_7

action_88 (18) = happyShift action_13
action_88 (21) = happyShift action_14
action_88 (23) = happyShift action_15
action_88 (25) = happyShift action_16
action_88 (27) = happyShift action_66
action_88 (30) = happyShift action_17
action_88 (31) = happyShift action_18
action_88 (32) = happyShift action_19
action_88 (33) = happyShift action_20
action_88 (34) = happyShift action_21
action_88 (35) = happyShift action_22
action_88 (36) = happyShift action_23
action_88 (38) = happyShift action_24
action_88 (41) = happyShift action_33
action_88 (42) = happyShift action_34
action_88 (43) = happyShift action_35
action_88 (44) = happyShift action_36
action_88 (45) = happyShift action_37
action_88 (46) = happyShift action_38
action_88 (47) = happyShift action_39
action_88 (48) = happyShift action_40
action_88 (49) = happyShift action_41
action_88 (50) = happyShift action_42
action_88 (51) = happyShift action_43
action_88 (52) = happyShift action_44
action_88 (7) = happyGoto action_32
action_88 (8) = happyGoto action_12
action_88 (10) = happyGoto action_97
action_88 _ = happyReduce_35

action_89 _ = happyReduce_37

action_90 (30) = happyShift action_76
action_90 (36) = happyShift action_77
action_90 (38) = happyShift action_78
action_90 (13) = happyGoto action_90
action_90 (14) = happyGoto action_96
action_90 _ = happyReduce_44

action_91 _ = happyReduce_39

action_92 _ = happyReduce_41

action_93 _ = happyReduce_42

action_94 (28) = happyShift action_75
action_94 (30) = happyShift action_76
action_94 (36) = happyShift action_77
action_94 (38) = happyShift action_78
action_94 (11) = happyGoto action_80
action_94 (12) = happyGoto action_73
action_94 (13) = happyGoto action_74
action_94 (15) = happyGoto action_95
action_94 _ = happyReduce_46

action_95 _ = happyReduce_48

action_96 _ = happyReduce_45

action_97 _ = happyReduce_36

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

happyReduce_9 = happyMonadReduce 5 7 happyReduction_9
happyReduction_9 (_ `HappyStk`
	(HappyAbsSyn10  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ Match happy_var_2 happy_var_4))
	) (\r -> happyReturn (HappyAbsSyn7 r))

happyReduce_10 = happyMonadReduce 2 7 happyReduction_10
happyReduction_10 ((HappyAbsSyn7  happy_var_2) `HappyStk`
	(HappyAbsSyn7  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ App happy_var_1 happy_var_2))
	) (\r -> happyReturn (HappyAbsSyn7 r))

happyReduce_11 = happyMonadReduce 3 7 happyReduction_11
happyReduction_11 ((HappyAbsSyn7  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ makeOp happy_var_1 happy_var_3 OpOr))
	) (\r -> happyReturn (HappyAbsSyn7 r))

happyReduce_12 = happyMonadReduce 3 7 happyReduction_12
happyReduction_12 ((HappyAbsSyn7  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ makeOp happy_var_1 happy_var_3 OpAnd))
	) (\r -> happyReturn (HappyAbsSyn7 r))

happyReduce_13 = happyMonadReduce 3 7 happyReduction_13
happyReduction_13 ((HappyAbsSyn7  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ makeOp happy_var_1 happy_var_3 OpPlus))
	) (\r -> happyReturn (HappyAbsSyn7 r))

happyReduce_14 = happyMonadReduce 3 7 happyReduction_14
happyReduction_14 ((HappyAbsSyn7  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ makeOp happy_var_1 happy_var_3 OpMin))
	) (\r -> happyReturn (HappyAbsSyn7 r))

happyReduce_15 = happyMonadReduce 3 7 happyReduction_15
happyReduction_15 ((HappyAbsSyn7  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ makeOp happy_var_1 happy_var_3 OpMul))
	) (\r -> happyReturn (HappyAbsSyn7 r))

happyReduce_16 = happyMonadReduce 3 7 happyReduction_16
happyReduction_16 ((HappyAbsSyn7  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ makeOp happy_var_1 happy_var_3 OpDiv))
	) (\r -> happyReturn (HappyAbsSyn7 r))

happyReduce_17 = happyMonadReduce 3 7 happyReduction_17
happyReduction_17 ((HappyAbsSyn7  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ makeOp happy_var_1 happy_var_3 OpMod))
	) (\r -> happyReturn (HappyAbsSyn7 r))

happyReduce_18 = happyMonadReduce 3 7 happyReduction_18
happyReduction_18 ((HappyAbsSyn7  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ makeOp happy_var_1 happy_var_3 OpAppend))
	) (\r -> happyReturn (HappyAbsSyn7 r))

happyReduce_19 = happyMonadReduce 3 7 happyReduction_19
happyReduction_19 ((HappyAbsSyn7  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ makeOp happy_var_1 happy_var_3 OpLT))
	) (\r -> happyReturn (HappyAbsSyn7 r))

happyReduce_20 = happyMonadReduce 3 7 happyReduction_20
happyReduction_20 ((HappyAbsSyn7  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ makeOp happy_var_1 happy_var_3 OpGT))
	) (\r -> happyReturn (HappyAbsSyn7 r))

happyReduce_21 = happyMonadReduce 3 7 happyReduction_21
happyReduction_21 ((HappyAbsSyn7  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ makeOp happy_var_1 happy_var_3 OpEQ))
	) (\r -> happyReturn (HappyAbsSyn7 r))

happyReduce_22 = happyMonadReduce 3 7 happyReduction_22
happyReduction_22 ((HappyAbsSyn7  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ makeOp happy_var_1 happy_var_3 OpCons))
	) (\r -> happyReturn (HappyAbsSyn7 r))

happyReduce_23 = happyMonadReduce 1 7 happyReduction_23
happyReduction_23 ((HappyTerminal (T.Id happy_var_1)) `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ Id happy_var_1))
	) (\r -> happyReturn (HappyAbsSyn7 r))

happyReduce_24 = happyMonadReduce 3 7 happyReduction_24
happyReduction_24 (_ `HappyStk`
	(HappyAbsSyn7  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ happy_var_2))
	) (\r -> happyReturn (HappyAbsSyn7 r))

happyReduce_25 = happyMonadReduce 1 7 happyReduction_25
happyReduction_25 ((HappyAbsSyn8  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ Lit happy_var_1))
	) (\r -> happyReturn (HappyAbsSyn7 r))

happyReduce_26 = happyMonadReduce 1 8 happyReduction_26
happyReduction_26 ((HappyTerminal (T.String happy_var_1)) `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ LitStr happy_var_1))
	) (\r -> happyReturn (HappyAbsSyn8 r))

happyReduce_27 = happyMonadReduce 1 8 happyReduction_27
happyReduction_27 ((HappyTerminal (T.Float happy_var_1)) `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ LitFloat happy_var_1))
	) (\r -> happyReturn (HappyAbsSyn8 r))

happyReduce_28 = happyMonadReduce 1 8 happyReduction_28
happyReduction_28 ((HappyTerminal (T.Int happy_var_1)) `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ LitInt happy_var_1))
	) (\r -> happyReturn (HappyAbsSyn8 r))

happyReduce_29 = happyMonadReduce 1 8 happyReduction_29
happyReduction_29 (_ `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ LitBool True))
	) (\r -> happyReturn (HappyAbsSyn8 r))

happyReduce_30 = happyMonadReduce 1 8 happyReduction_30
happyReduction_30 (_ `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ LitBool False))
	) (\r -> happyReturn (HappyAbsSyn8 r))

happyReduce_31 = happyMonadReduce 3 8 happyReduction_31
happyReduction_31 (_ `HappyStk`
	(HappyAbsSyn9  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ LitList happy_var_2))
	) (\r -> happyReturn (HappyAbsSyn8 r))

happyReduce_32 = happyMonadReduce 0 9 happyReduction_32
happyReduction_32 (happyRest) tk
	 = happyThen ((( pure $ []))
	) (\r -> happyReturn (HappyAbsSyn9 r))

happyReduce_33 = happyMonadReduce 1 9 happyReduction_33
happyReduction_33 ((HappyAbsSyn7  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ [happy_var_1]))
	) (\r -> happyReturn (HappyAbsSyn9 r))

happyReduce_34 = happyMonadReduce 3 9 happyReduction_34
happyReduction_34 ((HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ happy_var_1 : happy_var_3))
	) (\r -> happyReturn (HappyAbsSyn9 r))

happyReduce_35 = happyMonadReduce 0 10 happyReduction_35
happyReduction_35 (happyRest) tk
	 = happyThen ((( pure $ []))
	) (\r -> happyReturn (HappyAbsSyn10 r))

happyReduce_36 = happyMonadReduce 5 10 happyReduction_36
happyReduction_36 ((HappyAbsSyn10  happy_var_5) `HappyStk`
	(HappyAbsSyn7  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ Clause happy_var_2 happy_var_4 : happy_var_5))
	) (\r -> happyReturn (HappyAbsSyn10 r))

happyReduce_37 = happyMonadReduce 3 11 happyReduction_37
happyReduction_37 ((HappyAbsSyn11  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn12  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ PListCons happy_var_1 happy_var_3))
	) (\r -> happyReturn (HappyAbsSyn11 r))

happyReduce_38 = happyMonadReduce 1 11 happyReduction_38
happyReduction_38 ((HappyAbsSyn12  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( pure happy_var_1))
	) (\r -> happyReturn (HappyAbsSyn11 r))

happyReduce_39 = happyMonadReduce 3 12 happyReduction_39
happyReduction_39 ((HappyAbsSyn14  happy_var_3) `HappyStk`
	(HappyTerminal (T.Id happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ PCon happy_var_2 happy_var_3))
	) (\r -> happyReturn (HappyAbsSyn12 r))

happyReduce_40 = happyMonadReduce 1 12 happyReduction_40
happyReduction_40 ((HappyAbsSyn13  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( pure happy_var_1))
	) (\r -> happyReturn (HappyAbsSyn12 r))

happyReduce_41 = happyMonadReduce 3 13 happyReduction_41
happyReduction_41 (_ `HappyStk`
	(HappyAbsSyn11  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ happy_var_2))
	) (\r -> happyReturn (HappyAbsSyn13 r))

happyReduce_42 = happyMonadReduce 3 13 happyReduction_42
happyReduction_42 (_ `HappyStk`
	(HappyAbsSyn14  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ PList happy_var_2))
	) (\r -> happyReturn (HappyAbsSyn13 r))

happyReduce_43 = happyMonadReduce 1 13 happyReduction_43
happyReduction_43 ((HappyTerminal (T.Id happy_var_1)) `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ PVar happy_var_1))
	) (\r -> happyReturn (HappyAbsSyn13 r))

happyReduce_44 = happyMonadReduce 0 14 happyReduction_44
happyReduction_44 (happyRest) tk
	 = happyThen ((( pure $ []))
	) (\r -> happyReturn (HappyAbsSyn14 r))

happyReduce_45 = happyMonadReduce 2 14 happyReduction_45
happyReduction_45 ((HappyAbsSyn14  happy_var_2) `HappyStk`
	(HappyAbsSyn13  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ happy_var_1 : happy_var_2))
	) (\r -> happyReturn (HappyAbsSyn14 r))

happyReduce_46 = happyMonadReduce 0 15 happyReduction_46
happyReduction_46 (happyRest) tk
	 = happyThen ((( pure $ []))
	) (\r -> happyReturn (HappyAbsSyn14 r))

happyReduce_47 = happyMonadReduce 1 15 happyReduction_47
happyReduction_47 ((HappyAbsSyn11  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ [happy_var_1]))
	) (\r -> happyReturn (HappyAbsSyn14 r))

happyReduce_48 = happyMonadReduce 3 15 happyReduction_48
happyReduction_48 ((HappyAbsSyn14  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( pure $ happy_var_1 : happy_var_3))
	) (\r -> happyReturn (HappyAbsSyn14 r))

happyNewToken action sts stk [] =
	action 53 53 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	T.Def -> cont 16;
	T.DefEq -> cont 17;
	T.If -> cont 18;
	T.Then -> cont 19;
	T.Else -> cont 20;
	T.Fun -> cont 21;
	T.FunTo -> cont 22;
	T.Let -> cont 23;
	T.In -> cont 24;
	T.Match -> cont 25;
	T.With -> cont 26;
	T.Bar -> cont 27;
	T.ConsLead -> cont 28;
	T.End -> cont 29;
	T.Id happy_dollar_dollar -> cont 30;
	T.Int happy_dollar_dollar -> cont 31;
	T.Float happy_dollar_dollar -> cont 32;
	T.String happy_dollar_dollar -> cont 33;
	T.TTrue -> cont 34;
	T.TFalse -> cont 35;
	T.ParenL -> cont 36;
	T.ParenR -> cont 37;
	T.BracketL -> cont 38;
	T.BracketR -> cont 39;
	T.Comma -> cont 40;
	T.Op "||" -> cont 41;
	T.Op "&&" -> cont 42;
	T.Op "+" -> cont 43;
	T.Op "-" -> cont 44;
	T.Op "*" -> cont 45;
	T.Op "/" -> cont 46;
	T.Op "%" -> cont 47;
	T.Op "++" -> cont 48;
	T.Op "<" -> cont 49;
	T.Op ">" -> cont 50;
	T.Op "==" -> cont 51;
	T.Op "::" -> cont 52;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 53 tk tks = happyError' (tks, explist)
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
        | OpOr   | OpAnd | OpMod | OpCons | OpAppend 
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
