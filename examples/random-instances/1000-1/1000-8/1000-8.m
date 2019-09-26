A1 : A66 C67 :: A2
	| C3
	| A27+ [A28] [A29] [A30] A31* [C32] [C33] A34 C35 C36 :: A4
	| A5
	| C6
	| A7+ :: A7_
	| C8
	| A9
	| A10 ;

A66 : A68 A69 :: _A66 ;

A68 : C96
	| A141 [C142] A143 [C144] [C145] [C146] C147 A148 A149 A150 :: A97
	| A98
	| C99
	| C100
	| A101
	| A102+ :: A102_
	| C469 A470 [C471] :: A103
	| A104 ;

A141 : C256 C257 C258 C259 C260 C261 C262 C263 :: _A141 ;

A143 : C449
	| C450
	| C451
	| C452 ;

A148 : C831
	| C832
	| C833
	| C834
	| C835
	| C836
	| C837 ;

A149 : C309
	| A315+ [C316] C317 C318 :: A310 ;

A315 : C319
	| C320
	| C321
	| C322
	| C323
	| C324
	| C325
	| C326 ;

A150 : A165+ [C166] A167 C168 C169 [C170] [C171] [C172] :: _A150 ;

A165 : C719
	| C720 ;

A167 : C335
	| C336
	| C337
	| C338
	| C530 [C531] C532 C533 C534 [C535] [C536] A537+ :: A339 ;

A537 : C787
	| C788
	| C789
	| C790 ;

A98 : C190 ;

A101 : C453 [C454] C455 [C456] [C457] [C458] [C459] [C460] A461 :: A243
	| C244 ;

A461 : C925 [C926] C927 :: _A461 ;

A102 : C641 C642 [A643] C644 [C645] [C646] [C647] [C648] C649 [C650] :: A220
	| C221
	| C222
	| C223
	| C305 [C306] C307 [C308] :: A224
	| A225 ;

A643 : C798 ;

A225 : C548 :: _A225 ;

A470 : A493 C494 C495 A496+ [C497] C498 [C499] [C500] :: _A470 ;

A493 : C572 [C573] C574 C575 [C576] [C577] [C578] A579 :: _A493 ;

A579 : C986 [C987] [C988] [C989] C990 C991 :: _A579 ;

A496 : C600
	| C601
	| C602
	| C603
	| C604
	| C605
	| C606
	| C607
	| C608 ;

A104 : C255 :: _A104 ;

A69 : C480 [C481] C482 [C483] :: _A69 ;

A27 : C992 [C993] [C994] [C995] :: A286
	| C655 [C656] [C657] :: A287
	| C288
	| C521 [C522] C523 [C524] [C525] [C526] [C527] C528 [C529] :: A289
	| C290
	| C354 C355 C356 [C357] [C358] [C359] [A360] [C361] C362 :: A291
	| C292
	| A293
	| C294 ;

A360 : C971 [C972] C973 :: _A360 ;

A293 : A876+ :: A876_
	| C877
	| C878
	| C879
	| C880
	| C881
	| C882 ;

A876 : C921
	| C922
	| C923
	| C924 ;

A28 : C278 C279 C280 [C281] C282 C283 C284 C285 :: _A28 ;

A29 : C91 [C92] [A93] :: _A29 ;

A93 : C885 :: _A93 ;

A30 : C871 [C872] C873 C874 [C875] :: _A30 ;

A31 : A51+ :: A51_ ;

A51 : C58
	| C173 C174 :: A59
	| A105+ C106 [C107] C108 C109 A110 [C111] C112 :: A60
	| C61
	| C62
	| C63
	| C161 C162 [C163] C164 :: A64 ;

A105 : A580+ [C581] C582 [C583] :: A446
	| C447
	| C484 C485 C486 C487 C488 C489 A490 [C491] [A492] :: A448 ;

A580 : C863
	| C864
	| C865
	| C866
	| C867
	| C868 ;

A490 : C721
	| C722
	| C723
	| C934 C935 [C936] [C937] [C938] [C939] [C940] C941 C942 :: A724
	| C725
	| C726
	| C727
	| C728
	| C729
	| C730 ;

A492 : A593 [C594] [C595] [C596] C597 [C598] A599 :: _A492 ;

A593 : C754
	| C755
	| C756
	| C757
	| C758
	| C759
	| C760
	| C761 ;

A599 : C735 [C736] C737 [C738] [C739] C740 [C741] [C742] C743 :: _A599 ;

A110 : C155 C156 A157+ A158 C159 A160 :: _A110 ;

A157 : C175
	| A176+ :: A176_
	| C177
	| C178
	| C179
	| C702 [C703] C704 C705 [C706] C707 [C708] C709 A710 :: A180
	| C226 [C227] A228 A229 A230 A231* [C232] [C233] A234 [C235] :: A181
	| C182
	| C183 ;

A176 : C184
	| C617 A618* [C619] :: A185
	| C186
	| C191 [A192] [C193] A194 A195 A196 [A197] [C198] [C199] C200 :: A187
	| A188 ;

A618 : C902
	| C903
	| C904
	| C905
	| C906
	| C907
	| C908
	| C909
	| C910
	| C911 ;

A192 : C415 :: _A192 ;

A194 : C566 A567* :: _A194 ;

A567 : C983
	| C984 ;

A195 : C340 [C341] C342 [C343] A344 C345 :: _A195 ;

A344 : C609
	| C610 ;

A196 : C611 C612 [C613] [C614] C615 [C616] :: _A196 ;

A197 : C406 :: _A197 ;

A188 : C236
	| C855 C856 [C857] [C858] :: A237
	| C584 [C585] A586 [C587] A588 [C589] C590 C591 C592 :: A238
	| A239+ :: A239_
	| C240
	| C241
	| C242 ;

A586 : C731
	| C732
	| C733
	| C734 ;

A588 : C959 C960 [C961] C962 C963 C964 :: _A588 ;

A239 : C511
	| A512 ;

A512 : C949
	| C950
	| C951
	| C952 ;

A710 : C791 [A792] A793+ C794 [C795] C796 C797 :: _A710 ;

A792 : C891 [C892] [C893] C894 [C895] :: _A792 ;

A793 : C886
	| C887
	| C888
	| C889
	| C890 ;

A228 : C679 C680 C681 C682 :: _A228 ;

A229 : A373 [C374] [C375] C376 [C377] C378 C379 [A380] :: _A229 ;

A373 : C472 C473 [C474] A475+ [C476] [C477] [C478] C479 :: _A373 ;

A475 : C930 ;

A380 : C513 [C514] C515 C516 [A517] C518 C519 [C520] :: _A380 ;

A517 : C846 [C847] C848 C849 C850 [C851] :: _A517 ;

A230 : C295 [C296] [C297] C298 C299 [C300] [C301] [A302] A303* C304 :: _A230 ;

A302 : C369
	| C370
	| C371
	| C372 ;

A303 : C896
	| C897
	| C898
	| C899
	| C900
	| C901 ;

A231 : C245
	| C246
	| C247
	| C248
	| C249
	| C250
	| C251
	| C252
	| A253
	| C254 ;

A253 : C629
	| C630 ;

A234 : C422
	| C423 ;

A158 : C556 [C557] [C558] C559 C560 [C561] C562 C563 [A564] [C565] :: _A158 ;

A564 : C943 [C944] [C945] [C946] C947 C948 :: _A564 ;

A160 : C346 [C347] A348 A349* A350* C351 [C352] C353 :: _A160 ;

A348 : C549 [C550] [C551] [C552] C553 [A554] :: _A348 ;

A554 : C852
	| C853
	| C854 ;

A349 : C434
	| C435
	| C436
	| C437
	| C438 ;

A350 : C683
	| C684
	| C685 ;

A34 : C538 [C539] [C540] [C541] [C542] [A543] C544 C545 [C546] C547 :: _A34 ;

A543 : C651
	| C652
	| C653
	| C654 ;

A5 : C128
	| C859 C860 [C861] [C862] :: A129
	| C130
	| A131+ :: A131_
	| C132
	| C133 ;

A131 : C928
	| C929 ;

A7 : A52+ A53 C54 [A55] [C56] [A57] :: A11
	| C363 C364 C365 C366 [C367] C368 :: A12
	| A13
	| C14
	| C15
	| A70+ [C71] [C72] [C73] [C74] [A75] :: A16
	| C17
	| C390 [A391] [C392] [C393] A394 :: A18
	| A20 [A21] [C22] A23 [C24] A25* C26 :: A19 ;

A52 : C113
	| A134 [C135] [C136] [C137] C138 [A139] [C140] :: A114
	| C115
	| C116
	| C117
	| C118 ;

A134 : A330+ :: A330_
	| C331
	| C332
	| C333
	| C334 ;

A330 : C395 ;

A139 : A264 C265 C266 [C267] C268 A269+ :: _A139 ;

A264 : C311
	| C312
	| C313
	| C314 ;

A269 : C381
	| A382
	| C383
	| C384
	| C385
	| C386
	| C387
	| C388
	| A396 [C397] [A398] [C399] C400 C401 [C402] [C403] C404 C405 :: A389 ;

A382 : C555 ;

A396 : C838 C839 C840 C841 [C842] [C843] [C844] [C845] :: _A396 ;

A398 : C416 A417 [A418] C419 [C420] [A421] :: _A398 ;

A417 : C568 [A569] C570 C571 :: _A417 ;

A569 : C744 [C745] C746 C747 [C748] [C749] [C750] [C751] C752 C753 :: _A569 ;

A418 : C813
	| C814
	| C815
	| C816
	| C817
	| C818 ;

A421 : C717 [C718] :: _A421 ;

A53 : C94 :: _A53 ;

A55 : A79 [C80] :: _A55 ;

A79 : A466 C467 [C468] :: _A79 ;

A466 : C769 C770 C771 C772 [C773] C774 C775 C776 C777 C778 :: _A466 ;

A57 : C95 :: _A57 ;

A13 : A76
	| A77
	| C78 ;

A76 : C439
	| C440
	| C869 [C870] :: A441
	| C442
	| C443
	| C444
	| C445 ;

A77 : C501
	| C502
	| C503
	| C504
	| C505
	| C806 [C807] [C808] [C809] C810 [C811] [C812] :: A506
	| C507
	| C508
	| C509
	| C510 ;

A70 : C327
	| C779 [C780] C781 [C782] [C783] [C784] C785 [C786] :: A328
	| C329 ;

A75 : C119 C120 [C121] C122 [C123] [C124] [C125] [A126] [C127] :: _A75 ;

A126 : C151 C152 C153 [A154] :: _A126 ;

A154 : C201
	| C202
	| C203
	| C204
	| C931 C932 C933 :: A205
	| C206
	| C207
	| C208
	| C209
	| C210 ;

A391 : C974 C975 [C976] [C977] [C978] C979 C980 C981 C982 :: _A391 ;

A394 : C631 C632 [C633] C634 [C635] [C636] A637 C638 [C639] C640 :: _A394 ;

A637 : C675 C676 [A677] [C678] :: _A637 ;

A677 : C996 [C997] C998 C999 [C1000] :: _A677 ;

A20 : C426 C427 [C428] A429* A430 [C431] [A432] C433 :: _A20 ;

A429 : C819
	| C820
	| C821
	| C822
	| C823
	| C824 ;

A430 : C953 [C954] [C955] C956 C957 C958 :: _A430 ;

A432 : C686 [C687] [C688] C689 [C690] [C691] :: _A432 ;

A21 : A211 :: _A21 ;

A211 : C462 A463 [C464] C465 :: A270
	| C271
	| C272
	| C273
	| C274
	| C275
	| C276
	| C799 C800 [C801] C802 [C803] C804 [C805] :: A277 ;

A463 : C659 [C660] :: _A463 ;

A23 : C965
	| C966
	| C967
	| C968 ;

A25 : A37+ :: A37_
	| A38
	| C212 [C213] [C214] [C215] A216 A217 A218 [C219] :: A39
	| C40
	| C41
	| C42
	| A43+ :: A43_
	| A44+ :: A44_
	| C45 ;

A37 : C46
	| C883 C884 :: A47
	| A48
	| C49
	| C50 ;

A48 : C620
	| C621
	| C622
	| C623
	| C624
	| C625
	| C626
	| A627+ :: A627_
	| C628 ;

A627 : C692
	| C693
	| C694
	| C695
	| C696
	| C697
	| A698+ :: A698_
	| A699
	| C700
	| C701 ;

A698 : C969 ;

A699 : C912
	| C913
	| C914
	| C915
	| C916
	| C917
	| C918
	| C919
	| C920 ;

A38 : C985 :: _A38 ;

A216 : C658 :: _A216 ;

A217 : C825
	| C826
	| C827
	| C828
	| C829
	| C830 ;

A218 : C424
	| C425 ;

A43 : C407
	| C408
	| C409
	| C410
	| C411
	| C667 [C668] C669 [C670] [C671] [C672] C673 [C674] :: A412
	| C413
	| C414 ;

A44 : A661+ :: A661_
	| C662
	| C663
	| C664
	| C665
	| C666 ;

A661 : C970 ;

A9 : A81
	| C82
	| C83
	| C84
	| C85
	| C86
	| C87
	| C88
	| C89
	| C90 ;

A81 : A189 :: _A81 ;

A189 : C762
	| C763
	| C764
	| C765
	| C766
	| C767
	| C768 ;

A10 : C711 C712 C713 C714 [C715] C716 :: A65 ;

%%

(not (C540 or C651) implies not A28) implies not A382 ;
not (not ((A216 and not C227 implies A4) implies C480) and not C87) ;
not ((not C660 implies not C767) and C169) ;
(C913 implies not A417) and C872 or C919 iff C450 ;
not (C776 and C951) and A220 iff C613 ;
not (not C227 and C576) iff C937 ;
(not C905 iff not C954) or C624 ;
not (not A187 or not C756 iff C457) iff not C325 ;
(not ((not A70 iff C830) and C645) iff C898) implies not A231 ;
C311 iff C399 ;
not ((C305 implies not C313) implies not C193) implies C411 ;
not C744 iff not C961 ;
not C615 implies not C733 ;
C351 or not C501 ;
(not (A217 iff C928) implies not A98) implies not C828 ;
C577 implies A65 ;
not (((A234 iff A466) and not C941 or not C227) and not C483) ;
not C774 or C137 ;
not (not (C89 iff not C156 iff not A43) implies A490) iff not A253 ;
not ((A234 or C621) and not C541) implies not C606 ;
not (A76 and not C428) and not C420 iff not C334 ;
(not ((not C679 or C946) and not C468) iff not C252) or not A586 ;
not ((C392 iff not C332) or A60) and not C313 ;
not (C450 and not C464 and A580 iff not C400) or not C478 ;
not (not (not C549 iff not C660) or C428 or A220) ;
not (((C318 iff C863) implies not C534) implies C614) ;
not ((not A79 iff not C353) implies C146) or not C795 or C106 ;
(C256 or A181) and not A270 or not C866 ;
not ((not C924 iff not C888) implies not C340) and C751 implies C996 ;
C797 implies A38 ;
C718 implies not C834 ;
C591 iff C500 ;
not C906 and C929 or not A43 implies not C200 ;
not (((C424 implies not C471) implies A580) or C359) ;
not (not (not C954 and not A18) iff not A373) and C311 implies C404 ;
C980 implies not C642 iff not C273 ;
not C680 or not C529 ;
C604 iff not C899 ;
(C408 iff A34) and not C481 ;
not (not C153 and not C721) implies C819 ;
not (C550 iff not C106) ;
not C799 and C495 implies not C656 ;
not C95 iff not C314 ;
((not C246 or not C266 implies not C439) implies not C860) or C469 ;
(C111 iff not C602) and C400 implies not C462 ;
(not (not C477 iff C971) implies C376) or C799 implies not C843 ;
C323 and A29 or C872 implies C591 ;
A216 implies not C142 ;
not (C41 iff C826 iff C816) and C175 iff C788 ;
not C507 or C123 ;
(not (C692 implies C340 iff not C332) implies C560) or C992 ;
not C980 iff not A44 ;
(not C896 or A12) and C786 implies C559 ;
not ((C815 iff not C22 iff C773) and C91 and C140) ;
not C494 and A69 or not C948 ;
C86 implies C936 ;
not C757 iff not C374 ;
not (C687 iff not A579 iff A328) ;
A793 or not C159 ;
C78 or not C191 ;
not ((not (not (C445 iff C407) or C351) implies C280) and C772) ;
(C411 and not C617 implies not A373) implies not C258 ;
((C874 or C845 implies C824) implies not C947) or not C737 ;
not ((not (not C422 iff C735) implies C122) or A302) implies not C331 ;
((not C591 implies C92 iff not A490) implies C86) implies not C914 ;
C361 implies C574 ;
A537 implies not A463 ;
not C445 and not C290 or C908 or C774 ;
(not C426 iff C519 iff C680) or C648 implies not A28 ;
not C720 or A396 or not A330 iff not C759 ;
not (not (not C730 or not C494) and not C560) ;
((C521 implies C917) implies not C241) implies not C235 ;
not (not C737 or not A7) or A4 or not C688 ;
not ((not C825 or C763 iff C479) or not C140) implies C911 ;
not (not (C551 iff A303) and not C416) ;
(not C507 iff not C207 iff not C235) and not C634 ;
((C164 implies C998) and C557 implies A234) or C940 ;
not ((not C486 or C680 implies C82) or C914) ;
(not C632 iff not C84 iff not C591) or not A567 ;
not (not C336 and C998 and not C468) or not C650 ;
(not (not C812 implies not A28) implies not C284) or C617 ;
C845 implies not C705 ;
not (not (not C854 iff not C826) iff C607) or C377 iff not C379 ;
not (not (C683 iff C959) and C776 iff not A224) ;
(C300 iff not C232) implies C934 ;
(not A160 or not C844) and A506 iff C40 ;
(not (C782 or not C450) iff not C483) or not C884 or not C327 ;
not ((not (C173 and C17 iff C609) or not C292) and C435) ;
(C555 implies not C334 iff not C125) or not C508 ;
((not A239 iff not A34) implies not A12) and not C957 ;
C717 implies C483 ;
not A239 or C868 ;
not C342 and C563 or not C985 ;
(not C283 implies not C208 iff not C201) and not C128 ;
not ((not (not C670 and C739) iff not C454) implies not C209) or not C742 ;
not (((not C408 iff A216) implies C591) implies not A217) or not A724 ;
(not C709 iff C799) or not C41 or not A150 ;
not ((C214 implies A293) and not C529) or not C156 ;
C502 and not A10 iff not C1000 iff C761 ;
not (not C790 implies C664) ;

