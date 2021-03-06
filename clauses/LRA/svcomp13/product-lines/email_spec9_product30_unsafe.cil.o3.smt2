(set-info :origin "SVCOMP13 benchmarks generated by Arie Gurfinkel")
(set-info :status unsat)
(set-logic HORN)
(declare-fun cp-rel-entry () Bool)
(declare-fun cp-rel-__UFO__0
             (Real
              Real
              Real
              Real
              Real
              Real
              Real
              Real
              Real
              Real
              Real
              Real
              Real
              Real
              Real
              Real
              Real
              Real
              Real
              Bool
              Real
              Bool
              Real
              Bool
              Real
              Real)
             Bool)
(declare-fun cp-rel-bb1.i.i.i.i.i67.i.i () Bool)
(declare-fun cp-rel-bb.i
             (Real
              Real
              Real
              Real
              Real
              Real
              Real
              Real
              Real
              Real
              Real
              Real
              Real
              Real
              Real
              Real
              Real
              Real
              Real)
             Bool)
(assert |cp-rel-entry|)
(assert (forall ((?A Real) (?B Real) (?C Real) (?D Real) (?E Real) (?F Real) (?G Real) (?H Real) (?I Real) (?J Real) (?K Real) (?L Real) (?M Real) (?N Real) (?O Real) (?P Real) (?Q Real) (?R Real) (?S Real) (?T Bool) )(let (($x252385 (|cp-rel-bb.i| ?A ?B ?C ?D ?E ?F ?G ?H ?I ?J ?K ?L ?M ?N ?O ?P ?Q ?R ?S)))
(let (($x626001 (= ?T true)))
(let (($x871509 (and |cp-rel-entry| (<= ?S 0.0) (>= ?R 0.0) (<= ?R 0.0) (>= ?Q 0.0) (<= ?Q 0.0) (>= ?P 0.0) (<= ?P 0.0) (>= ?O 456.0) (<= ?O 456.0) (>= ?N 123.0) (<= ?N 123.0) (>= ?M 0.0) (<= ?M 0.0) (>= ?L 0.0) (<= ?L 0.0) (>= ?K 0.0) (<= ?K 0.0) (>= ?J 0.0) (<= ?J 0.0) (>= ?I 0.0) (<= ?I 0.0) (>= ?H 0.0) (<= ?H 0.0) (>= ?G 0.0) (<= ?G 0.0) (>= ?F 0.0) (<= ?F 0.0) (>= ?E 0.0) (<= ?E 0.0) (>= ?D 0.0) (<= ?D 0.0) (>= ?C 0.0) (<= ?C 0.0) (>= ?B 0.0) (<= ?B 0.0) (>= ?A 0.0) (<= ?A 0.0) $x626001 (>= ?S 0.0))))
(=> $x871509 $x252385)))))
)
(assert (forall ((?A Real) (?B Real) (?C Real) (?D Real) (?E Real) (?F Real) (?G Real) (?H Real) (?I Real) (?J Real) (?K Real) (?L Real) (?M Real) (?N Real) (?O Real) (?P Real) (?Q Real) (?R Real) (?S Real) (?T Real) (?U Real) (?V Real) (?W Real) (?X Real) (?Y Real) (?Z Real) (?A1 Real) (?B1 Real) (?C1 Real) (?D1 Real) (?E1 Real) (?F1 Real) (?G1 Real) (?H1 Real) (?I1 Real) (?J1 Real) (?K1 Real) (?L1 Real) (?M1 Bool) (?N1 Bool) (?O1 Bool) (?P1 Bool) (?Q1 Bool) (?R1 Bool) (?S1 Bool) (?T1 Bool) (?U1 Bool) (?V1 Bool) (?W1 Bool) (?X1 Bool) (?Y1 Bool) (?Z1 Bool) (?A2 Bool) (?B2 Bool) (?C2 Bool) (?D2 Bool) (?E2 Bool) (?F2 Bool) (?G2 Bool) (?H2 Bool) (?I2 Bool) (?J2 Bool) (?K2 Bool) (?L2 Bool) (?M2 Bool) (?N2 Bool) (?O2 Bool) (?P2 Bool) (?Q2 Bool) (?R2 Bool) (?S2 Bool) (?T2 Bool) (?U2 Bool) (?V2 Bool) (?W2 Bool) (?X2 Bool) (?Y2 Bool) (?Z2 Bool) (?A3 Bool) (?B3 Bool) (?C3 Bool) (?D3 Bool) (?E3 Bool) (?F3 Bool) (?G3 Bool) (?H3 Bool) (?I3 Bool) (?J3 Bool) (?K3 Bool) (?L3 Bool) (?M3 Bool) (?N3 Bool) (?O3 Bool) (?P3 Bool) (?Q3 Bool) (?R3 Bool) (?S3 Bool) (?T3 Bool) (?U3 Bool) (?V3 Bool) (?W3 Bool) (?X3 Bool) (?Y3 Bool) (?Z3 Bool) (?A4 Bool) (?B4 Bool) (?C4 Bool) (?D4 Bool) (?E4 Bool) (?F4 Bool) (?G4 Bool) (?H4 Bool) (?I4 Bool) (?J4 Bool) (?K4 Bool) (?L4 Bool) (?M4 Bool) (?N4 Bool) (?O4 Real) (?P4 Real) (?Q4 Real) (?R4 Real) (?S4 Real) (?T4 Real) (?U4 Real) (?V4 Real) (?W4 Real) (?X4 Real) (?Y4 Real) (?Z4 Real) )(let (($x850976 (|cp-rel-bb.i| ?T ?U ?V ?W ?X ?Y ?Z ?A1 ?B1 ?C1 ?D1 ?E1 ?F1 ?G1 ?H1 ?I1 ?J1 ?K1 ?L1)))
(let (($x311596 (or (not ?Q1) (and ?M1 ?R1 ?S1))))
(let (($x268261 (or (not ?Q1) ?R1)))
(let (($x225690 (or (not ?T1) (and ?Q1 ?U1 ?V1) (and ?M1 ?W1 (not ?S1)))))
(let (($x224318 (or (not ?T1) (and ?U1 (not ?W1)) (and ?W1 (not ?U1)))))
(let (($x468199 (not ?X1)))
(let (($x245882 (or $x468199 ?Y1)))
(let (($x212078 (not ?B3)))
(let (($x872748 (or $x212078 ?C3)))
(let (($x480405 (not ?P3)))
(let (($x902975 (or $x480405 ?Q3)))
(let (($x477676 (>= ?L1 ?S)))
(let (($x372403 (<= ?L1 ?S)))
(let (($x487507 (>= ?J1 ?Q)))
(let (($x414462 (<= ?J1 ?Q)))
(let (($x372220 (>= ?H1 ?O)))
(let (($x300138 (<= ?H1 ?O)))
(let (($x153073 (>= ?G1 ?N)))
(let (($x331373 (<= ?G1 ?N)))
(let (($x245902 (>= ?F1 ?M)))
(let (($x139111 (<= ?F1 ?M)))
(let (($x163700 (>= ?D1 ?K)))
(let (($x394270 (<= ?D1 ?K)))
(let (($x247586 (>= ?C1 ?J)))
(let (($x369142 (<= ?C1 ?J)))
(let (($x621305 (>= ?B1 ?I)))
(let (($x130619 (<= ?B1 ?I)))
(let (($x344977 (>= ?A1 ?H)))
(let (($x312910 (<= ?A1 ?H)))
(let (($x419865 (>= ?Z ?G)))
(let (($x216046 (<= ?Z ?G)))
(let (($x579111 (>= ?Y ?F)))
(let (($x461767 (<= ?Y ?F)))
(let (($x32145 (>= ?X ?E)))
(let (($x324787 (<= ?X ?E)))
(let (($x316370 (>= ?W ?D)))
(let (($x921121 (<= ?W ?D)))
(let (($x234240 (>= ?V ?C)))
(let (($x350716 (<= ?V ?C)))
(let (($x594038 (>= ?U ?B)))
(let (($x874324 (<= ?U ?B)))
(let (($x845066 (>= ?T ?O4)))
(let (($x476539 (<= ?T ?O4)))
(let (($x465710 (and ?X1 $x476539 $x845066 $x874324 $x594038 $x350716 $x234240 $x921121 $x316370 $x324787 $x32145 $x461767 $x579111 $x216046 $x419865 $x312910 $x344977 $x130619 $x621305 $x369142 $x247586 $x394270 $x163700 (<= ?E1 1.0) (>= ?E1 1.0) $x139111 $x245902 $x331373 $x153073 $x300138 $x372220 (<= ?I1 2.0) (>= ?I1 2.0) $x414462 $x487507 (<= ?K1 456.0) (>= ?K1 456.0) $x372403 $x477676)))
(let (($x557150 (>= ?K1 ?R)))
(let (($x504279 (<= ?K1 ?R)))
(let (($x847142 (>= ?I1 ?P)))
(let (($x807196 (<= ?I1 ?P)))
(let (($x486451 (>= ?E1 ?L)))
(let (($x861876 (<= ?E1 ?L)))
(let (($x459003 (not ?E2)))
(let (($x831868 (and ?Z1 $x459003 $x476539 $x845066 $x874324 $x594038 $x350716 $x234240 $x921121 $x316370 $x324787 $x32145 $x461767 $x579111 $x216046 $x419865 $x312910 $x344977 $x130619 $x621305 $x369142 $x247586 (<= ?D1 1.0) (>= ?D1 1.0) $x861876 $x486451 (<= ?F1 1.0) (>= ?F1 1.0) $x331373 $x153073 $x300138 $x372220 $x807196 $x847142 $x414462 $x487507 $x504279 $x557150 $x372403 $x477676)))
(let (($x158790 (not ?L2)))
(let (($x522772 (and ?G2 $x158790 $x476539 $x845066 $x874324 $x594038 $x350716 $x234240 $x921121 $x316370 $x324787 $x32145 $x461767 $x579111 $x216046 $x419865 $x312910 $x344977 $x130619 $x621305 (<= ?C1 1.0) (>= ?C1 1.0) $x394270 $x163700 $x861876 $x486451 $x139111 $x245902 $x331373 $x153073 (<= ?H1 0.0) (>= ?H1 0.0) $x807196 $x847142 $x414462 $x487507 $x504279 $x557150 $x372403 $x477676)))
(let (($x873318 (and ?N2 (not ?S2) $x476539 $x845066 $x874324 $x594038 $x350716 $x234240 $x921121 $x316370 $x324787 $x32145 $x461767 $x579111 $x216046 $x419865 $x312910 $x344977 (<= ?B1 1.0) (>= ?B1 1.0) $x369142 $x247586 $x394270 $x163700 $x861876 $x486451 $x139111 $x245902 $x331373 $x153073 $x300138 $x372220 $x807196 $x847142 (<= ?J1 1.0) (>= ?J1 1.0) $x504279 $x557150 (<= ?L1 123.0) (>= ?L1 123.0))))
(let (($x358587 (and ?U2 (not ?Z2) $x476539 $x845066 $x874324 $x594038 $x350716 $x234240 $x921121 $x316370 $x324787 $x32145 $x461767 $x579111 $x216046 $x419865 (<= ?A1 1.0) (>= ?A1 1.0) $x130619 $x621305 $x369142 $x247586 $x394270 $x163700 $x861876 $x486451 $x139111 $x245902 $x331373 $x153073 $x300138 $x372220 $x807196 $x847142 $x414462 $x487507 $x504279 $x557150 $x372403 $x477676)))
(let (($x267627 (not ?G3)))
(let (($x858245 (and ?B3 $x267627 $x476539 $x845066 $x874324 $x594038 $x350716 $x234240 $x921121 $x316370 $x324787 $x32145 $x461767 $x579111 (<= ?Z 1.0) (>= ?Z 1.0) $x312910 $x344977 $x130619 $x621305 $x369142 $x247586 $x394270 $x163700 $x861876 $x486451 $x139111 $x245902 $x331373 $x153073 $x300138 $x372220 $x807196 $x847142 $x414462 $x487507 $x504279 $x557150 $x372403 $x477676)))
(let (($x597575 (and ?I3 (not ?N3) $x476539 $x845066 $x874324 $x594038 $x350716 $x234240 $x921121 $x316370 $x324787 $x32145 (<= ?Y 1.0) (>= ?Y 1.0) $x216046 $x419865 $x312910 $x344977 $x130619 $x621305 $x369142 $x247586 $x394270 $x163700 $x861876 $x486451 $x139111 $x245902 $x331373 $x153073 (<= ?H1 666.0) (>= ?H1 666.0) $x807196 $x847142 $x414462 $x487507 $x504279 $x557150 $x372403 $x477676)))
(let (($x140188 (and ?P3 (not ?U3) $x476539 $x845066 $x874324 $x594038 $x350716 $x234240 $x921121 $x316370 (<= ?X 1.0) (>= ?X 1.0) $x461767 $x579111 $x216046 $x419865 $x312910 $x344977 $x130619 $x621305 $x369142 $x247586 $x394270 $x163700 $x861876 $x486451 $x139111 $x245902 $x331373 $x153073 $x300138 $x372220 $x807196 $x847142 $x414462 $x487507 $x504279 $x557150 $x372403 $x477676)))
(let (($x368530 (not ?B4)))
(let (($x506141 (and ?W3 $x368530 $x476539 $x845066 $x874324 $x594038 $x350716 $x234240 (<= ?W 1.0) (>= ?W 1.0) $x324787 $x32145 $x461767 $x579111 $x216046 $x419865 $x312910 $x344977 $x130619 $x621305 $x369142 $x247586 $x394270 $x163700 $x861876 $x486451 $x139111 $x245902 $x331373 $x153073 $x300138 $x372220 $x807196 $x847142 $x414462 $x487507 $x504279 $x557150 $x372403 $x477676)))
(let (($x229751 (and ?D4 (not ?I4) $x476539 $x845066 $x874324 $x594038 (<= ?V 1.0) (>= ?V 1.0) $x921121 $x316370 $x324787 $x32145 $x461767 $x579111 $x216046 $x419865 $x312910 $x344977 $x130619 $x621305 $x369142 $x247586 $x394270 $x163700 $x861876 $x486451 $x139111 $x245902 (<= ?G1 777.0) (>= ?G1 777.0) $x300138 $x372220 $x807196 $x847142 $x414462 $x487507 $x504279 $x557150 $x372403 $x477676)))
(let (($x475253 (and ?K4 (not ?N4) $x476539 $x845066 (<= ?U 1.0) (>= ?U 1.0) $x350716 $x234240 $x921121 $x316370 $x324787 $x32145 $x461767 $x579111 $x216046 $x419865 $x312910 $x344977 $x130619 $x621305 $x369142 $x247586 $x394270 $x163700 $x861876 $x486451 $x139111 $x245902 $x331373 $x153073 $x300138 $x372220 $x807196 $x847142 $x414462 $x487507 $x504279 $x557150 $x372403 $x477676)))
(let (($x644211 (|cp-rel-bb.i| ?A ?B ?C ?D ?E ?F ?G ?H ?I ?J ?K ?L ?M ?N ?O ?P ?Q ?R ?S)))
(let (($x454708 (and $x644211 (= ?M4 (= ?B 0.0)) (= ?I4 (= ?Y4 0.0)) (= ?F4 (= ?C 0.0)) (= ?B4 (= ?X4 0.0)) (= ?Y3 (= ?D 0.0)) (= ?U3 (= ?W4 0.0)) (= ?R3 (= ?E 0.0)) (= ?N3 (= ?V4 0.0)) (= ?K3 (= ?F 0.0)) (= ?G3 (= ?U4 0.0)) (= ?D3 (= ?G 0.0)) (= ?Z2 (= ?T4 0.0)) (= ?W2 (= ?H 0.0)) (= ?S2 (= ?S4 0.0)) (= ?P2 (= ?I 0.0)) (= ?L2 (= ?R4 0.0)) (= ?I2 (= ?J 0.0)) (= ?E2 (= ?Q4 0.0)) (= ?B2 (= ?K 0.0)) (= ?V1 (= ?P4 0.0)) (= ?S1 (= ?L 0.0)) (= ?O4 (+ 1.0 ?A)) (= ?P1 (not (<= ?A 3.0))) (or $x475253 $x229751 $x506141 $x140188 $x597575 $x858245 $x358587 $x873318 $x522772 $x831868 $x465710) (or (not ?K4) ?L4) (or (not ?K4) (and ?G4 ?L4 ?M4)) (or (not ?G4) (and ?H4 (not ?J4)) (and ?J4 (not ?H4))) (or (not ?G4) (and ?D4 ?H4 ?I4) (and ?Z3 ?J4 (not ?F4))) (or (not ?D4) ?E4) (or (not ?D4) (and ?Z3 ?E4 ?F4)) (or (not ?Z3) (and ?A4 (not ?C4)) (and ?C4 (not ?A4))) (or (not ?Z3) (and ?W3 ?A4 ?B4) (and ?S3 ?C4 (not ?Y3))) (or (not ?W3) ?X3) (or (not ?W3) (and ?S3 ?X3 ?Y3)) (or (not ?S3) (and ?T3 (not ?V3)) (and ?V3 (not ?T3))) (or (not ?S3) (and ?P3 ?T3 ?U3) (and ?L3 ?V3 (not ?R3))) $x902975 (or $x480405 (and ?L3 ?Q3 ?R3)) (or (not ?L3) (and ?M3 (not ?O3)) (and ?O3 (not ?M3))) (or (not ?L3) (and ?I3 ?M3 ?N3) (and ?E3 ?O3 (not ?K3))) (or (not ?I3) ?J3) (or (not ?I3) (and ?E3 ?J3 ?K3)) (or (not ?E3) (and ?F3 (not ?H3)) (and ?H3 (not ?F3))) (or (not ?E3) (and ?B3 ?F3 ?G3) (and ?X2 ?H3 (not ?D3))) $x872748 (or $x212078 (and ?X2 ?C3 ?D3)) (or (not ?X2) (and ?Y2 (not ?A3)) (and ?A3 (not ?Y2))) (or (not ?X2) (and ?U2 ?Y2 ?Z2) (and ?Q2 ?A3 (not ?W2))) (or (not ?U2) ?V2) (or (not ?U2) (and ?Q2 ?V2 ?W2)) (or (not ?Q2) (and ?R2 (not ?T2)) (and ?T2 (not ?R2))) (or (not ?Q2) (and ?N2 ?R2 ?S2) (and ?J2 ?T2 (not ?P2))) (or (not ?N2) ?O2) (or (not ?N2) (and ?J2 ?O2 ?P2)) (or (not ?J2) (and ?K2 (not ?M2)) (and ?M2 (not ?K2))) (or (not ?J2) (and ?G2 ?K2 ?L2) (and ?C2 ?M2 (not ?I2))) (or (not ?G2) ?H2) (or (not ?G2) (and ?C2 ?H2 ?I2)) (or (not ?C2) (and ?D2 (not ?F2)) (and ?F2 (not ?D2))) (or (not ?C2) (and ?Z1 ?D2 ?E2) (and ?T1 ?F2 (not ?B2))) (or (not ?Z1) ?A2) (or (not ?Z1) (and ?T1 ?A2 ?B2)) $x245882 (or $x468199 (and ?Q1 ?Y1 (not ?V1))) $x224318 $x225690 $x268261 $x311596 (or (not ?M1) ?O1) (or (not ?M1) (and ?N1 ?O1 (not ?P1))) (= ?N4 (= ?Z4 0.0)))))
(=> $x454708 $x850976))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
)
(assert (forall ((?A Real) (?B Real) (?C Real) (?D Real) (?E Real) (?F Real) (?G Real) (?H Real) (?I Real) (?J Real) (?K Real) (?L Real) (?M Real) (?N Real) (?O Real) (?P Real) (?Q Real) (?R Real) (?S Real) (?T Bool) (?U Bool) (?V Bool) (?W Bool) (?X Bool) (?Y Bool) (?Z Bool) (?A1 Bool) (?B1 Bool) (?C1 Bool) (?D1 Bool) (?E1 Bool) (?F1 Bool) (?G1 Bool) (?H1 Bool) (?I1 Bool) (?J1 Bool) (?K1 Bool) (?L1 Bool) (?M1 Bool) (?N1 Bool) (?O1 Bool) (?P1 Bool) (?Q1 Bool) (?R1 Bool) (?S1 Bool) (?T1 Bool) (?U1 Bool) (?V1 Bool) (?W1 Bool) (?X1 Bool) (?Y1 Bool) (?Z1 Bool) (?A2 Bool) (?B2 Bool) (?C2 Bool) (?D2 Bool) (?E2 Bool) (?F2 Bool) (?G2 Bool) (?H2 Bool) (?I2 Bool) (?J2 Bool) (?K2 Bool) (?L2 Bool) (?M2 Bool) (?N2 Bool) (?O2 Bool) (?P2 Bool) (?Q2 Bool) (?R2 Bool) (?S2 Bool) (?T2 Bool) (?U2 Bool) (?V2 Bool) (?W2 Bool) (?X2 Bool) (?Y2 Bool) (?Z2 Bool) (?A3 Bool) (?B3 Bool) (?C3 Bool) (?D3 Bool) (?E3 Bool) (?F3 Bool) (?G3 Bool) (?H3 Bool) (?I3 Bool) (?J3 Bool) (?K3 Bool) (?L3 Bool) (?M3 Bool) (?N3 Bool) (?O3 Bool) (?P3 Bool) (?Q3 Bool) (?R3 Bool) (?S3 Bool) (?T3 Real) (?U3 Real) (?V3 Real) (?W3 Real) (?X3 Real) (?Y3 Real) (?Z3 Real) (?A4 Real) (?B4 Real) (?C4 Real) (?D4 Real) (?E4 Real) (?F4 Bool) (?G4 Real) (?H4 Bool) (?I4 Real) (?J4 Bool) (?K4 Real) (?L4 Real) (?M4 Bool) (?N4 Bool) (?O4 Bool) (?P4 Bool) (?Q4 Bool) (?R4 Bool) (?S4 Bool) (?T4 Bool) (?U4 Bool) (?V4 Bool) (?W4 Bool) (?X4 Real) (?Y4 Real) (?Z4 Bool) (?A5 Bool) (?B5 Real) (?C5 Real) (?D5 Bool) (?E5 Bool) (?F5 Bool) (?G5 Bool) (?H5 Bool) (?I5 Bool) (?J5 Bool) (?K5 Bool) (?L5 Bool) (?M5 Bool) (?N5 Bool) (?O5 Bool) (?P5 Bool) (?Q5 Bool) (?R5 Bool) (?S5 Bool) (?T5 Bool) (?U5 Bool) (?V5 Bool) (?W5 Bool) (?X5 Bool) (?Y5 Bool) (?Z5 Real) (?A6 Bool) (?B6 Real) (?C6 Bool) (?D6 Bool) (?E6 Bool) (?F6 Bool) (?G6 Bool) (?H6 Bool) (?I6 Bool) (?J6 Real) (?K6 Bool) (?L6 Bool) (?M6 Bool) (?N6 Bool) (?O6 Bool) (?P6 Real) (?Q6 Real) (?R6 Bool) (?S6 Bool) (?T6 Bool) (?U6 Real) (?V6 Bool) (?W6 Bool) (?X6 Bool) (?Y6 Bool) (?Z6 Bool) (?A7 Bool) (?B7 Bool) )(let (($x6055 (|cp-rel-__UFO__0| ?A ?B ?C ?D ?E ?F ?G ?H ?I ?J ?K ?L ?M ?N ?O ?P ?Q ?R ?S ?F4 ?G4 ?H4 ?I4 ?J4 ?K4 ?L4)))
(let (($x394412 (not ?M4)))
(let (($x255209 (or $x394412 (and ?P3 ?N4 ?S3) (and ?L3 ?O4 (not ?R3)) (and ?U ?P4 ?W))))
(let (($x838582 (or $x394412 (and ?N4 (not ?O4) (not ?P4)) (and ?O4 (not ?N4) (not ?P4)) (and ?P4 (not ?N4) (not ?O4)))))
(let (($x789865 (and ?T4 ?Z4 ?A5 (<= ?X4 ?B5) (>= ?X4 ?B5) (<= ?Y4 ?C5) (>= ?Y4 ?C5))))
(let (($x301790 (and ?Q4 ?W4 ?H4 (<= ?X4 ?I4) (>= ?X4 ?I4) (<= ?Y4 ?G4) (>= ?Y4 ?G4))))
(let (($x110419 (not ?V4)))
(let (($x212078 (not ?D5)))
(let (($x872748 (or $x212078 ?E5)))
(let (($x354386 (and ?T4 ?K5 (not ?A5) (<= ?K4 ?I4) (>= ?K4 ?I4) (<= ?L4 ?G4) (>= ?L4 ?G4))))
(let (($x512542 (not ?H4)))
(let (($x789819 (and ?Q4 ?J5 $x512542 (<= ?K4 ?I4) (>= ?K4 ?I4) (<= ?L4 ?G4) (>= ?L4 ?G4))))
(let (($x271679 (and ?V4 ?I5 ?F5 (<= ?K4 ?X4) (>= ?K4 ?X4) (<= ?L4 ?Y4) (>= ?L4 ?Y4))))
(let (($x542321 (and ?D5 ?H5 (<= ?K4 ?X4) (>= ?K4 ?X4) (<= ?L4 ?Y4) (>= ?L4 ?Y4))))
(let (($x311835 (not ?G5)))
(let (($x256607 (or $x311835 (and ?H5 (not ?I5) (not ?J5) (not ?K5)) (and ?I5 (not ?H5) (not ?J5) (not ?K5)) (and ?J5 (not ?H5) (not ?I5) (not ?K5)) (and ?K5 (not ?H5) (not ?I5) (not ?J5)))))
(let (($x561422 (not ?O5)))
(let (($x320565 (or $x561422 ?P5)))
(let (($x480405 (not ?R5)))
(let (($x902975 (or $x480405 ?S5)))
(let (($x231261 (not ?X5)))
(let (($x153977 (or $x231261 (and ?U5 ?Y5 (<= ?Z5 0.0) (>= ?Z5 0.0)) (and ?R5 ?A6 ?W5 (<= ?Z5 ?B6) (>= ?Z5 ?B6)) (and ?O5 ?C6 ?T5 (<= ?Z5 ?B6) (>= ?Z5 ?B6)))))
(let (($x169007 (or $x231261 (and ?Y5 (not ?A6) (not ?C6)) (and ?A6 (not ?Y5) (not ?C6)) (and ?C6 (not ?Y5) (not ?A6)))))
(let (($x393083 (|cp-rel-bb.i| ?A ?B ?C ?D ?E ?F ?G ?H ?I ?J ?K ?L ?M ?N ?O ?P ?Q ?R ?S)))
(let (($x570502 (and $x393083 (= ?B7 (= ?R 0.0)) (= ?A7 (not ?Z6)) (= ?Z6 (and ?Y6 ?F4)) (= ?Y6 (= ?Z5 0.0)) (= ?W5 (or ?X6 ?W6)) (= ?X6 (not (= ?N ?U6))) (= ?W6 (= ?U6 0.0)) (= ?Q5 (and ?T5 ?V6)) (= ?T5 (= ?B6 0.0)) (= ?V6 $x512542) (= ?B6 (ite ?T6 ?K4 1.0)) (= ?U6 (ite ?T6 ?L4 ?S)) (= ?T6 (or ?S6 ?R6)) (= ?S6 (= ?S 0.0)) (= ?R6 (not (= ?Q 1.0))) (= ?Q6 (ite ?J4 ?N ?O)) (= ?N5 (= ?M 0.0)) (= ?F5 (= ?P6 0.0)) (= ?P6 (ite ?O6 ?S 0.0)) (= ?O6 (= ?Q 1.0)) (= ?C5 (ite ?M6 ?G4 0.0)) (= ?B5 (ite ?M6 ?I4 0.0)) (= ?A5 (or ?H4 ?N6)) (= ?N6 (not ?M6)) (= ?M6 (or ?L6 ?H4)) (= ?L6 (or ?K6 ?J4)) (= ?K6 (not (= ?O ?G4))) (= ?S4 (or ?H4 ?J4)) (= ?J4 (= ?O 0.0)) (= ?J6 (ite ?H4 1.0 0.0)) (= ?H4 (= ?G4 0.0)) (= ?G4 (ite ?F4 ?R 0.0)) (= ?F4 (= ?P 2.0)) (= ?S3 (= ?E4 0.0)) (= ?R3 (= ?B 0.0)) (= ?N3 (= ?D4 0.0)) (= ?K3 (= ?C 0.0)) (= ?G3 (= ?C4 0.0)) (= ?D3 (= ?D 0.0)) (= ?Z2 (= ?B4 0.0)) (= ?W2 (= ?E 0.0)) (= ?S2 (= ?A4 0.0)) (= ?P2 (= ?F 0.0)) (= ?L2 (= ?Z3 0.0)) (= ?I2 (= ?G 0.0)) (= ?E2 (= ?Y3 0.0)) (= ?B2 (= ?H 0.0)) (= ?X1 (= ?X3 0.0)) (= ?U1 (= ?I 0.0)) (= ?Q1 (= ?W3 0.0)) (= ?N1 (= ?J 0.0)) (= ?J1 (= ?V3 0.0)) (= ?G1 (= ?K 0.0)) (= ?C1 (= ?U3 0.0)) (= ?Z (= ?L 0.0)) (= ?T3 (+ 1.0 ?A)) (= ?W (not (<= ?A 3.0))) (or ?G6 (and ?G5 ?N5)) (or (not ?G6) (and ?H6 (not ?I6)) (and ?I6 (not ?H6))) (or (not ?G6) (and ?D6 ?H6) (and ?X5 ?I6 ?F6)) (or (not ?D6) ?E6) (or (not ?D6) (and ?X5 ?E6 (not ?F6))) $x169007 $x153977 (or (not ?U5) ?V5) (or (not ?U5) (and ?R5 ?V5 (not ?W5))) $x902975 (or $x480405 (and ?O5 ?S5 (not ?T5))) $x320565 (or $x561422 (and ?L5 ?P5 (not ?Q5))) (or (not ?L5) ?M5) (or (not ?L5) (and ?G5 ?M5 (not ?N5))) $x256607 (or $x311835 $x542321 $x271679 $x789819 $x354386) $x872748 (or $x212078 (and ?V4 ?E5 (not ?F5))) (or $x110419 (and ?W4 (not ?Z4)) (and ?Z4 (not ?W4))) (or $x110419 $x301790 $x789865) (or (not ?T4) ?U4) (or (not ?T4) (and ?M4 ?U4 (not ?S4))) (or (not ?Q4) ?R4) (or (not ?Q4) (and ?M4 ?R4 ?S4)) $x838582 $x255209 (or (not ?P3) ?Q3) (or (not ?P3) (and ?L3 ?Q3 ?R3)) (or (not ?L3) (and ?M3 (not ?O3)) (and ?O3 (not ?M3))) (or (not ?L3) (and ?I3 ?M3 ?N3) (and ?E3 ?O3 (not ?K3))) (or (not ?I3) ?J3) (or (not ?I3) (and ?E3 ?J3 ?K3)) (or (not ?E3) (and ?F3 (not ?H3)) (and ?H3 (not ?F3))) (or (not ?E3) (and ?B3 ?F3 ?G3) (and ?X2 ?H3 (not ?D3))) (or (not ?B3) ?C3) (or (not ?B3) (and ?X2 ?C3 ?D3)) (or (not ?X2) (and ?Y2 (not ?A3)) (and ?A3 (not ?Y2))) (or (not ?X2) (and ?U2 ?Y2 ?Z2) (and ?Q2 ?A3 (not ?W2))) (or (not ?U2) ?V2) (or (not ?U2) (and ?Q2 ?V2 ?W2)) (or (not ?Q2) (and ?R2 (not ?T2)) (and ?T2 (not ?R2))) (or (not ?Q2) (and ?N2 ?R2 ?S2) (and ?J2 ?T2 (not ?P2))) (or (not ?N2) ?O2) (or (not ?N2) (and ?J2 ?O2 ?P2)) (or (not ?J2) (and ?K2 (not ?M2)) (and ?M2 (not ?K2))) (or (not ?J2) (and ?G2 ?K2 ?L2) (and ?C2 ?M2 (not ?I2))) (or (not ?G2) ?H2) (or (not ?G2) (and ?C2 ?H2 ?I2)) (or (not ?C2) (and ?D2 (not ?F2)) (and ?F2 (not ?D2))) (or (not ?C2) (and ?Z1 ?D2 ?E2) (and ?V1 ?F2 (not ?B2))) (or (not ?Z1) ?A2) (or (not ?Z1) (and ?V1 ?A2 ?B2)) (or (not ?V1) (and ?W1 (not ?Y1)) (and ?Y1 (not ?W1))) (or (not ?V1) (and ?S1 ?W1 ?X1) (and ?O1 ?Y1 (not ?U1))) (or (not ?S1) ?T1) (or (not ?S1) (and ?O1 ?T1 ?U1)) (or (not ?O1) (and ?P1 (not ?R1)) (and ?R1 (not ?P1))) (or (not ?O1) (and ?L1 ?P1 ?Q1) (and ?H1 ?R1 (not ?N1))) (or (not ?L1) ?M1) (or (not ?L1) (and ?H1 ?M1 ?N1)) (or (not ?H1) (and ?I1 (not ?K1)) (and ?K1 (not ?I1))) (or (not ?H1) (and ?E1 ?I1 ?J1) (and ?A1 ?K1 (not ?G1))) (or (not ?E1) ?F1) (or (not ?E1) (and ?A1 ?F1 ?G1)) (or (not ?A1) (and ?B1 (not ?D1)) (and ?D1 (not ?B1))) (or (not ?A1) (and ?X ?B1 ?C1) (and ?T ?D1 (not ?Z))) (or (not ?X) ?Y) (or (not ?X) (and ?T ?Y ?Z)) (or (not ?T) ?V) (or (not ?T) (and ?U ?V (not ?W))) (= ?F6 (or ?B7 ?A7)))))
(=> $x570502 $x6055)))))))))))))))))))))))))))
)
(assert (forall ((?A Bool) (?B Real) (?C Bool) (?D Real) (?E Bool) (?F Real) (?G Real) (?H Real) (?I Real) (?J Real) (?K Real) (?L Real) (?M Real) (?N Real) (?O Real) (?P Real) (?Q Real) (?R Real) (?S Real) (?T Real) (?U Real) (?V Real) (?W Real) (?X Real) (?Y Real) (?Z Real) (?A1 Bool) )(let (($x118820 (|cp-rel-__UFO__0| ?H ?I ?J ?K ?L ?M ?N ?O ?P ?Q ?R ?S ?T ?U ?V ?W ?X ?Y ?Z ?A ?B ?C ?D ?E ?F ?G)))
(=> (and $x118820 (= ?A1 true)) $x118820)))
)
(assert (forall ((?A Real) (?B Real) (?C Real) (?D Real) (?E Real) (?F Real) (?G Real) (?H Real) (?I Real) (?J Real) (?K Real) (?L Real) (?M Real) (?N Real) (?O Real) (?P Real) (?Q Real) (?R Real) (?S Real) (?T Bool) (?U Bool) (?V Bool) (?W Bool) (?X Bool) (?Y Bool) (?Z Bool) (?A1 Bool) (?B1 Bool) (?C1 Bool) (?D1 Bool) (?E1 Bool) (?F1 Bool) (?G1 Bool) (?H1 Bool) (?I1 Bool) (?J1 Bool) (?K1 Bool) (?L1 Bool) (?M1 Bool) (?N1 Bool) (?O1 Bool) (?P1 Bool) (?Q1 Bool) (?R1 Bool) (?S1 Bool) (?T1 Bool) (?U1 Bool) (?V1 Bool) (?W1 Bool) (?X1 Bool) (?Y1 Bool) (?Z1 Bool) (?A2 Bool) (?B2 Bool) (?C2 Bool) (?D2 Bool) (?E2 Bool) (?F2 Bool) (?G2 Bool) (?H2 Bool) (?I2 Bool) (?J2 Bool) (?K2 Bool) (?L2 Bool) (?M2 Bool) (?N2 Bool) (?O2 Bool) (?P2 Bool) (?Q2 Bool) (?R2 Bool) (?S2 Bool) (?T2 Bool) (?U2 Bool) (?V2 Bool) (?W2 Bool) (?X2 Bool) (?Y2 Bool) (?Z2 Bool) (?A3 Bool) (?B3 Bool) (?C3 Bool) (?D3 Bool) (?E3 Bool) (?F3 Bool) (?G3 Bool) (?H3 Bool) (?I3 Bool) (?J3 Bool) (?K3 Bool) (?L3 Bool) (?M3 Bool) (?N3 Bool) (?O3 Bool) (?P3 Bool) (?Q3 Bool) (?R3 Bool) (?S3 Bool) (?T3 Real) (?U3 Real) (?V3 Real) (?W3 Real) (?X3 Real) (?Y3 Real) (?Z3 Real) (?A4 Real) (?B4 Real) (?C4 Real) (?D4 Real) (?E4 Real) (?F4 Bool) (?G4 Real) (?H4 Bool) (?I4 Real) (?J4 Bool) (?K4 Real) (?L4 Real) (?M4 Bool) (?N4 Bool) (?O4 Bool) (?P4 Bool) (?Q4 Bool) (?R4 Bool) (?S4 Bool) (?T4 Bool) (?U4 Bool) (?V4 Bool) (?W4 Bool) (?X4 Real) (?Y4 Real) (?Z4 Bool) (?A5 Bool) (?B5 Real) (?C5 Real) (?D5 Bool) (?E5 Bool) (?F5 Bool) (?G5 Bool) (?H5 Bool) (?I5 Bool) (?J5 Bool) (?K5 Bool) (?L5 Bool) (?M5 Bool) (?N5 Bool) (?O5 Bool) (?P5 Bool) (?Q5 Real) (?R5 Real) (?S5 Bool) (?T5 Bool) (?U5 Bool) (?V5 Bool) (?W5 Bool) (?X5 Real) (?Y5 Real) (?Z5 Bool) (?A6 Bool) (?B6 Bool) (?C6 Real) (?D6 Bool) )(let (($x311596 (or (not ?U2) (and ?Q2 ?V2 ?W2))))
(let (($x268261 (or (not ?U2) ?V2)))
(let (($x225690 (or (not ?X2) (and ?U2 ?Y2 ?Z2) (and ?Q2 ?A3 (not ?W2)))))
(let (($x224318 (or (not ?X2) (and ?Y2 (not ?A3)) (and ?A3 (not ?Y2)))))
(let (($x468199 (not ?B3)))
(let (($x245882 (or $x468199 ?C3)))
(let (($x309757 (not ?M4)))
(let (($x503371 (or $x309757 (and ?P3 ?N4 ?S3) (and ?L3 ?O4 (not ?R3)) (and ?U ?P4 ?W))))
(let (($x689036 (or $x309757 (and ?N4 (not ?O4) (not ?P4)) (and ?O4 (not ?N4) (not ?P4)) (and ?P4 (not ?N4) (not ?O4)))))
(let (($x561422 (not ?Q4)))
(let (($x320565 (or $x561422 ?R4)))
(let (($x480405 (not ?T4)))
(let (($x902975 (or $x480405 ?U4)))
(let (($x475663 (and ?T4 ?Z4 ?A5 (<= ?X4 ?B5) (>= ?X4 ?B5) (<= ?Y4 ?C5) (>= ?Y4 ?C5))))
(let (($x93534 (and ?Q4 ?W4 ?H4 (<= ?X4 ?I4) (>= ?X4 ?I4) (<= ?Y4 ?G4) (>= ?Y4 ?G4))))
(let (($x489075 (not ?V4)))
(let (($x306098 (not ?A5)))
(let (($x523845 (and ?T4 ?K5 $x306098 (<= ?K4 ?I4) (>= ?K4 ?I4) (<= ?L4 ?G4) (>= ?L4 ?G4))))
(let (($x276221 (not ?H4)))
(let (($x547024 (and ?Q4 ?J5 $x276221 (<= ?K4 ?I4) (>= ?K4 ?I4) (<= ?L4 ?G4) (>= ?L4 ?G4))))
(let (($x140245 (and ?V4 ?I5 ?F5 (<= ?K4 ?X4) (>= ?K4 ?X4) (<= ?L4 ?Y4) (>= ?L4 ?Y4))))
(let (($x873618 (and ?D5 ?H5 (<= ?K4 ?X4) (>= ?K4 ?X4) (<= ?L4 ?Y4) (>= ?L4 ?Y4))))
(let (($x601582 (not ?G5)))
(let (($x325399 (or $x601582 (and ?H5 (not ?I5) (not ?J5) (not ?K5)) (and ?I5 (not ?H5) (not ?J5) (not ?K5)) (and ?J5 (not ?H5) (not ?I5) (not ?K5)) (and ?K5 (not ?H5) (not ?I5) (not ?J5)))))
(let (($x776250 (|cp-rel-bb.i| ?A ?B ?C ?D ?E ?F ?G ?H ?I ?J ?K ?L ?M ?N ?O ?P ?Q ?R ?S)))
(let (($x66874 (and $x776250 (= ?P5 (= ?Q5 0.0)) (= ?D6 $x276221) (= ?Q5 (ite ?B6 ?K4 1.0)) (= ?C6 (ite ?B6 ?L4 ?S)) (= ?B6 (or ?A6 ?Z5)) (= ?A6 (= ?S 0.0)) (= ?Z5 (not (= ?Q 1.0))) (= ?Y5 (ite ?J4 ?N ?O)) (= ?N5 (= ?M 0.0)) (= ?F5 (= ?X5 0.0)) (= ?X5 (ite ?W5 ?S 0.0)) (= ?W5 (= ?Q 1.0)) (= ?C5 (ite ?U5 ?G4 0.0)) (= ?B5 (ite ?U5 ?I4 0.0)) (= ?A5 (or ?H4 ?V5)) (= ?V5 (not ?U5)) (= ?U5 (or ?T5 ?H4)) (= ?T5 (or ?S5 ?J4)) (= ?S5 (not (= ?O ?G4))) (= ?S4 (or ?H4 ?J4)) (= ?J4 (= ?O 0.0)) (= ?R5 (ite ?H4 1.0 0.0)) (= ?H4 (= ?G4 0.0)) (= ?G4 (ite ?F4 ?R 0.0)) (= ?F4 (= ?P 2.0)) (= ?S3 (= ?E4 0.0)) (= ?R3 (= ?B 0.0)) (= ?N3 (= ?D4 0.0)) (= ?K3 (= ?C 0.0)) (= ?G3 (= ?C4 0.0)) (= ?D3 (= ?D 0.0)) (= ?Z2 (= ?B4 0.0)) (= ?W2 (= ?E 0.0)) (= ?S2 (= ?A4 0.0)) (= ?P2 (= ?F 0.0)) (= ?L2 (= ?Z3 0.0)) (= ?I2 (= ?G 0.0)) (= ?E2 (= ?Y3 0.0)) (= ?B2 (= ?H 0.0)) (= ?X1 (= ?X3 0.0)) (= ?U1 (= ?I 0.0)) (= ?Q1 (= ?W3 0.0)) (= ?N1 (= ?J 0.0)) (= ?J1 (= ?V3 0.0)) (= ?G1 (= ?K 0.0)) (= ?C1 (= ?U3 0.0)) (= ?Z (= ?L 0.0)) (= ?T3 (+ 1.0 ?A)) (= ?W (not (<= ?A 3.0))) (= ?O5 true) (= ?L5 true) (or (not ?L5) ?M5) (or (not ?L5) (and ?G5 ?M5 (not ?N5))) $x325399 (or $x601582 $x873618 $x140245 $x547024 $x523845) (or (not ?D5) ?E5) (or (not ?D5) (and ?V4 ?E5 (not ?F5))) (or $x489075 (and ?W4 (not ?Z4)) (and ?Z4 (not ?W4))) (or $x489075 $x93534 $x475663) $x902975 (or $x480405 (and ?M4 ?U4 (not ?S4))) $x320565 (or $x561422 (and ?M4 ?R4 ?S4)) $x689036 $x503371 (or (not ?P3) ?Q3) (or (not ?P3) (and ?L3 ?Q3 ?R3)) (or (not ?L3) (and ?M3 (not ?O3)) (and ?O3 (not ?M3))) (or (not ?L3) (and ?I3 ?M3 ?N3) (and ?E3 ?O3 (not ?K3))) (or (not ?I3) ?J3) (or (not ?I3) (and ?E3 ?J3 ?K3)) (or (not ?E3) (and ?F3 (not ?H3)) (and ?H3 (not ?F3))) (or (not ?E3) (and ?B3 ?F3 ?G3) (and ?X2 ?H3 (not ?D3))) $x245882 (or $x468199 (and ?X2 ?C3 ?D3)) $x224318 $x225690 $x268261 $x311596 (or (not ?Q2) (and ?R2 (not ?T2)) (and ?T2 (not ?R2))) (or (not ?Q2) (and ?N2 ?R2 ?S2) (and ?J2 ?T2 (not ?P2))) (or (not ?N2) ?O2) (or (not ?N2) (and ?J2 ?O2 ?P2)) (or (not ?J2) (and ?K2 (not ?M2)) (and ?M2 (not ?K2))) (or (not ?J2) (and ?G2 ?K2 ?L2) (and ?C2 ?M2 (not ?I2))) (or (not ?G2) ?H2) (or (not ?G2) (and ?C2 ?H2 ?I2)) (or (not ?C2) (and ?D2 (not ?F2)) (and ?F2 (not ?D2))) (or (not ?C2) (and ?Z1 ?D2 ?E2) (and ?V1 ?F2 (not ?B2))) (or (not ?Z1) ?A2) (or (not ?Z1) (and ?V1 ?A2 ?B2)) (or (not ?V1) (and ?W1 (not ?Y1)) (and ?Y1 (not ?W1))) (or (not ?V1) (and ?S1 ?W1 ?X1) (and ?O1 ?Y1 (not ?U1))) (or (not ?S1) ?T1) (or (not ?S1) (and ?O1 ?T1 ?U1)) (or (not ?O1) (and ?P1 (not ?R1)) (and ?R1 (not ?P1))) (or (not ?O1) (and ?L1 ?P1 ?Q1) (and ?H1 ?R1 (not ?N1))) (or (not ?L1) ?M1) (or (not ?L1) (and ?H1 ?M1 ?N1)) (or (not ?H1) (and ?I1 (not ?K1)) (and ?K1 (not ?I1))) (or (not ?H1) (and ?E1 ?I1 ?J1) (and ?A1 ?K1 (not ?G1))) (or (not ?E1) ?F1) (or (not ?E1) (and ?A1 ?F1 ?G1)) (or (not ?A1) (and ?B1 (not ?D1)) (and ?D1 (not ?B1))) (or (not ?A1) (and ?X ?B1 ?C1) (and ?T ?D1 (not ?Z))) (or (not ?X) ?Y) (or (not ?X) (and ?T ?Y ?Z)) (or (not ?T) ?V) (or (not ?T) (and ?U ?V (not ?W))) (= ?O5 (and ?P5 ?D6)))))
(=> $x66874 |cp-rel-bb1.i.i.i.i.i67.i.i|))))))))))))))))))))))))))))
)
(assert (not cp-rel-bb1.i.i.i.i.i67.i.i))
(check-sat)
