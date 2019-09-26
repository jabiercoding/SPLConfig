A1 : A2 [A3] [A4] A5 [A6] A7 A8 [C9] [A10] :: _A1 ;

A2 : C21
	| C36 [A37] [A38] A39 A40 :: A22
	| C23 ;

A37 : C102 C103 [C104] A105* [A106] [C107] A108 [A109] :: _A37 ;

A105 : C584
	| C713 [C714] C715 :: A585
	| C586
	| C587
	| C588
	| C589 ;

A106 : C486
	| C487
	| C488
	| C489
	| C490
	| C491
	| A492 ;

A492 : C501
	| C502
	| C503
	| C504
	| C505
	| C506
	| C771 [C772] [C773] C774 [C775] C776 :: A507
	| C508 ;

A108 : C221
	| C222
	| C223
	| C638 C639 C640 [C641] C642 [C643] :: A224 ;

A109 : C114 [C115] C116 C117 [A118] A119+ A120 A121+ C122 :: _A109 ;

A118 : A194+ :: A194_ ;

A194 : C579
	| A580+ :: A580_
	| C581 ;

A580 : C937
	| C938
	| C939
	| C940
	| C941
	| C942
	| C943
	| C944
	| C945
	| C946 ;

A119 : C243
	| C716 [C717] [C718] [C719] C720 C721 C722 C723 :: A244
	| C245
	| A246
	| C247 ;

A246 : C610 [C611] :: A258
	| C259
	| C297 [A298] A299 C300 C301 [A302] [A303] [C304] [C305] :: A260
	| C261
	| C262
	| C263
	| C264
	| C396 [C397] C398 [A399] C400 [C401] A402 A403 C404 :: A265
	| C266 ;

A298 : C621
	| C622
	| C623
	| C837 [C838] C839 [C840] [C841] :: A624
	| C625
	| C626
	| C627 ;

A299 : C425 [C426] C427 :: _A299 ;

A302 : C796
	| C797
	| C798
	| C799
	| C800
	| A801
	| C802
	| C803
	| C804 ;

A801 : C821
	| C822
	| C823
	| C824
	| C825 ;

A303 : A478
	| A479
	| C480
	| C481
	| C482
	| C483
	| C484
	| C485 ;

A478 : C644
	| C645
	| C646
	| A647+ :: A647_
	| C648
	| C649
	| C650
	| C651
	| C652 ;

A647 : C811
	| C812
	| C813
	| C814
	| C995 C996 C997 [C998] C999 [C1000] :: A815
	| C816
	| C817
	| C818
	| C819
	| C820 ;

A479 : C826
	| C827
	| C828
	| C829
	| C830
	| C831
	| C832 ;

A399 : C889 A890 C891 [C892] C893 [C894] [C895] :: A534
	| C535
	| C536
	| C537
	| C538
	| C539 ;

A890 : C905
	| C906
	| C907
	| C908
	| C909
	| C910
	| C911
	| C912
	| C913 ;

A402 : C454 [C455] A456* [C457] [C458] [C459] [C460] :: _A402 ;

A456 : C948
	| C949
	| C950 ;

A403 : C981 C982 [C983] C984 [C985] C986 :: _A403 ;

A120 : C756
	| C757
	| C758 ;

A121 : C189
	| C190
	| C191
	| C192
	| C193 ;

A38 : A110 [C111] [C112] C113 :: _A38 ;

A110 : C132 C133 [A134] C135 A136* :: _A110 ;

A134 : C208
	| A209
	| C210
	| C211
	| C925 [C926] C927 C928 C929 C930 :: A212 ;

A209 : C338
	| C339
	| C340
	| C341
	| C342
	| C343
	| C344
	| C365 A366 [C367] C368 C369 :: A345 ;

A366 : C516 [C517] C518 [C519] C520 C521 [C522] [A523] A524 :: _A366 ;

A523 : C730 [A731] :: _A523 ;

A731 : C834 C835 [C836] :: _A731 ;

A524 : C739 :: _A524 ;

A136 : C858
	| C859
	| C860
	| C861 ;

A39 : C123 [A124] [C125] C126 A127 C128 A129+ C130 C131 :: _A39 ;

A124 : C174
	| C175
	| C176
	| C177
	| A178+ :: A178_
	| C179
	| C180
	| C181 ;

A178 : C182
	| C392 A393 [C394] [C395] :: A183
	| C370 A371 C372 [C373] C374 C375 A376 C377 [C378] :: A184
	| C185
	| C186
	| C187
	| C188 ;

A393 : C442 C443 [C444] C445 [A446] [C447] [C448] :: _A393 ;

A446 : C558 :: _A446 ;

A371 : C845 C846 [C847] C848 C849 [C850] C851 C852 :: _A371 ;

A376 : A509 C510 C511 [C512] C513 [C514] C515 :: _A376 ;

A509 : C554 C555 [C556] C557 :: _A509 ;

A127 : C248 C249 C250 C251 A252 [C253] [A254] [C255] [A256] [C257] :: _A127 ;

A252 : C290 C291 [C292] [C293] A294 [A295] C296 :: _A252 ;

A294 : C794 [C795] :: _A294 ;

A295 : C842 [C843] C844 :: _A295 ;

A254 : C469 C470 C471 [C472] C473 [C474] [C475] C476 [C477] :: _A254 ;

A256 : C565 ;

A129 : C540
	| C541
	| C542
	| C724 C725 C726 C727 :: A543
	| C544
	| A674 C675 :: A545
	| C546
	| C547
	| C548 ;

A674 : C896 [C897] [C898] C899 C900 C901 C902 [C903] [C904] :: _A674 ;

A40 : A356 ;

A356 : A407 :: _A356 ;

A407 : C805
	| C806
	| C807
	| C808
	| C809
	| C810 ;

A3 : A172 :: _A3 ;

A172 : A415 [C416] [C417] C418 C419 [C420] C421 [C422] [C423] A424 :: _A172 ;

A415 : C759 [C760] A761 [C762] [C763] C764 C765 :: _A415 ;

A761 : C777 ;

A424 : C988
	| C989
	| C990
	| C991
	| C992
	| C993
	| C994 ;

A4 : C84 C85 :: _A4 ;

A5 : C86 A87 [C88] [C89] [C90] :: _A5 ;

A87 : C748 C749 [C750] [C751] [C752] [C753] [C754] [C755] :: _A87 ;

A6 : C11 A12* C13 [C14] :: _A6 ;

A12 : C668 A669* [C670] [C671] [C672] [C673] :: A62
	| C63
	| C64
	| C65
	| C66
	| C67
	| C68
	| A137 [A138] [C139] C140 [C141] A142 C143 [C144] :: A69
	| C213 [A214] [A215] [A216] C217 [C218] [C219] [C220] :: A70 ;

A669 : C786
	| C787 ;

A137 : C612
	| C613
	| C614
	| C615
	| C616
	| C617
	| C957 [C958] C959 C960 :: A618
	| C619
	| C620 ;

A138 : A408+ :: A408_ ;

A408 : C590
	| A591+ :: A591_
	| C592
	| C593
	| C594
	| C595 ;

A591 : C710
	| C711
	| C712 ;

A142 : C145 C146 A147 [C148] [A149] [C150] C151 [C152] :: _A142 ;

A147 : A195+ :: A195_
	| A606 [C607] [C608] [C609] :: A196
	| C197
	| C198 ;

A195 : C267
	| A268+ :: A268_
	| C269
	| C951 C952 C953 C954 C955 C956 :: A270
	| A271
	| A272+ :: A272_
	| C273
	| C274
	| C275
	| C276 ;

A268 : C833 ;

A271 : C405
	| C406 ;

A272 : C872
	| C914 C915 [C916] [C917] C918 :: A873
	| C874
	| C875
	| C876
	| C877
	| C878
	| C879
	| C880
	| C881 ;

A606 : C778 :: _A606 ;

A149 : C199
	| C200
	| C201
	| C379 C380 C381 [C382] C383 C384 [C385] :: A202
	| C203
	| C204
	| A205+ :: A205_
	| C206
	| A433+ A434+ [C435] [C436] [C437] A438+ C439 [C440] A441* :: A207 ;

A205 : C977
	| C978
	| C979
	| C980 ;

A433 : C779
	| C780
	| C781
	| C782
	| C783
	| C784
	| C785 ;

A434 : C947 ;

A438 : C552
	| A553 ;

A553 : C596
	| C597
	| C598
	| C599
	| C600
	| C601
	| C602
	| C603
	| C604
	| C605 ;

A441 : C741
	| C742
	| C788 [C789] C790 C791 [C792] :: A743
	| C744
	| C745
	| C746
	| C747 ;

A214 : C663 [C664] C665 [C666] C667 :: _A214 ;

A215 : C628 C629 C630 C631 C632 [C633] C634 C635 C636 C637 :: _A215 ;

A216 : C882 C883 [C884] [C885] [C886] [C887] C888 :: _A216 ;

A7 : A15 [C16] A17* A18+ A19+ [C20] :: _A7 ;

A15 : C701
	| C702
	| C703
	| C704
	| C705
	| C706
	| C707
	| A708
	| C709 ;

A708 : C931
	| C932
	| C933
	| C934
	| C935
	| C936 ;

A17 : C46
	| C47
	| C48 ;

A18 : C81
	| C82
	| C83 ;

A19 : C239
	| C240
	| C241
	| C242 ;

A8 : A24 [C25] A26+ [C27] A28 C29 C30 :: _A8 ;

A24 : C409
	| C410
	| C411
	| C412
	| C413
	| C414 ;

A26 : A41 C42 [C43] C44 A45 :: A31
	| A32
	| C33
	| C34
	| C35 ;

A41 : C853
	| C854
	| C855
	| C856
	| C857 ;

A45 : A71 A72 [C73] A74 [C75] C76 A77+ A78 [A79] :: _A45 ;

A71 : C331 C332 [C333] C334 C335 [C336] C337 :: A163
	| C164
	| C165
	| C166
	| C167
	| C168 ;

A72 : A287 C288 [C289] :: _A72 ;

A287 : C676 [C677] [C678] C679 [A680] [C681] :: _A287 ;

A680 : C740 :: _A680 ;

A74 : C733
	| C734
	| C735
	| C736
	| C737
	| C738 ;

A77 : C321
	| C322
	| C323
	| C324
	| C325
	| C326
	| C327
	| C328
	| C329
	| C330 ;

A78 : C91 :: _A78 ;

A79 : C92 C93 C94 [C95] [C96] A97 [A98] [C99] [C100] C101 :: _A79 ;

A97 : C653 C654 C655 [C656] C657 [C658] C659 [C660] C661 :: A559
	| C560
	| A561
	| C562
	| C563
	| A564+ :: A564_ ;

A561 : C697
	| C698
	| C699
	| A700 ;

A700 : C793 :: _A700 ;

A564 : C732 ;

A98 : C153 [C154] A155 [C156] C157 C158 C159 [C160] [C161] A162 :: _A98 ;

A155 : C969 C970 C971 C972 [C973] [C974] :: _A155 ;

A162 : C987 :: _A162 ;

A32 : A173+ :: _A32 ;

A173 : C682
	| C683
	| C684
	| C685 ;

A28 : A49 [A50] C51 A52 [C53] [C54] A55 [A56] A57+ :: _A28 ;

A49 : C277 [C278] [C279] [C280] [A281] [C282] [C283] [C284] C285 C286 :: A225
	| C226
	| A227+ :: A227_
	| C228
	| C229
	| C230 ;

A281 : C386 ;

A227 : C525 [C526] [C527] [C528] C529 C530 C531 C532 [C533] :: A306
	| C493 C494 C495 [C496] [A497] A498 C499 [C500] :: A307
	| C308
	| C582 C583 :: A309
	| C310
	| A387 [C388] [C389] A390* [C391] :: A311
	| C312
	| C317 C318 [C319] C320 :: A313
	| C314
	| C315 ;

A497 : C975
	| C976 ;

A498 : C728
	| C729 ;

A387 : C461
	| C462
	| C463
	| C464
	| C465
	| C466
	| C467
	| C468 ;

A390 : C687
	| C688
	| C689
	| C690
	| C691
	| C692
	| C693
	| C694
	| C695
	| C696 ;

A50 : C686 :: _A50 ;

A52 : C80 :: _A52 ;

A55 : C231
	| A232+ :: A232_
	| C233
	| C234
	| A235+ :: A235_
	| C236
	| C237
	| C238 ;

A232 : C357 [C358] C359 [C360] [C361] C362 C363 [A364] :: A316 ;

A364 : C428 [C429] [C430] [C431] [C432] :: _A364 ;

A235 : C453 ;

A56 : C549 C550 [C551] :: _A56 ;

A57 : C346
	| C347
	| C348
	| C349
	| A350+ :: A350_
	| C449 A450+ C451 C452 :: A351
	| A766 A767* A768 C769 [C770] :: A352
	| C353
	| C354
	| C355 ;

A350 : C576
	| C577
	| C578 ;

A450 : C566
	| C567
	| A568
	| C569
	| C570
	| C571
	| C572
	| C573
	| C574
	| C575 ;

A568 : C662 ;

A766 : C961 [C962] C963 C964 [C965] C966 [C967] C968 :: _A766 ;

A767 : C919
	| C920
	| C921
	| C922
	| C923
	| C924 ;

A768 : C862 [C863] C864 C865 [C866] C867 [C868] C869 C870 [C871] :: _A768 ;

A10 : C58
	| C59
	| A60
	| C61 ;

A60 : C169
	| C170
	| C171 ;

%%

(not C781 iff not C249) or C565 ;
(not (C394 implies not C11) or not C894 iff not A119) or not A446 ;
C964 iff C754 ;
C437 implies C734 ;
not (C877 implies not C59 iff C267) ;
(not A207 iff C597) implies A303 ;
not (not (A492 and C435 iff not C326) or not C992 or not A215) ;
not ((not C554 iff C201) or C758) or not C251 ;
(not C633 implies not C203 iff C426 iff not C569) implies not C612 ;
(C817 iff C685) implies C938 iff not C844 iff not C204 ;
(C773 or not A768) and not C324 implies C426 ;
not (not C175 or C582 implies C203) or C310 ;
((C165 or A351) and not C779 implies not C337) and C401 ;
((not C817 implies C887) or C283) and not C650 ;
A260 or C263 iff not A873 ;
not (not ((not C630 iff not C206) implies C735) implies not C353) and C707 ;
not C11 iff not A265 ;
not (not C550 iff not C709) ;
not (not (C320 or not C749) iff C599) and not C699 ;
C411 implies A268 ;
not C410 implies C728 iff not C511 ;
not C886 implies C418 ;
(not C508 iff C283) and not C90 ;
(not C285 or not A399) and not C468 implies not C126 ;
(not C310 implies not A268) and C76 ;
not ((not C542 or not C455 iff C850) implies C468) implies C866 ;
not (((not C842 iff C30) implies not C357) and not C562) ;
(not C490 iff not C29) and C661 ;
(not ((C727 implies A227) or C513) or C506) and C276 ;
(A479 or C504 implies A74) and not C335 ;
not (C868 iff not C211) or not C800 or A507 or not C944 ;
not ((A316 implies not C468) and not C811) implies not C525 iff C548 ;
C946 and not C284 iff C656 ;
not C758 iff not C221 iff not C529 ;
not (C429 iff not C131) ;
not (C973 iff C111) or C331 implies A172 ;
not ((C980 or A316 implies not C82) or not A568 implies C444) ;
not (not C959 implies C360) ;
not (A258 iff A77) ;
not C903 or not C574 or C413 ;
(not C240 implies not A456) or not A580 or not C241 ;
not (C379 or not A215 iff not C383 iff C667) and not C738 ;
not C654 implies not A37 ;
not (not A674 and not C513) or C25 ;
not A109 or C414 implies C398 ;
C181 and C856 or C565 ;
not A202 iff not C592 iff not C711 ;
not (((C495 iff C800 iff not A5) implies not C871) implies not A173) ;
not A743 iff C939 ;
not (not A366 and A408 or A403) or C103 ;
(C634 implies not C611) or not C223 ;
not (not C571 and C151 and not C538 and C940) ;
not A873 iff not A71 ;
not (not (not C276 iff C88) iff C970) implies not C247 ;
C662 or not C581 or A106 or C797 or not A669 ;
not (not C773 iff not C985 iff not C867) and C945 ;
not ((not ((not C793 iff not C699) and A456) implies C420) or not A674) ;
(not (not C353 and not C468 implies C935) iff not C465) or not A163 ;
not A302 implies not C186 ;
(C629 implies C23) and not C736 and C151 implies C328 ;
not (not A60 implies not C892) ;
not C464 or not A585 ;
not C822 implies not C908 ;
not A438 implies C474 iff C683 ;
(not (not A216 iff not C783) implies C191) implies A298 ;
(C394 implies C590) implies not A669 ;
A38 and C289 iff not C916 ;
(not A72 and not C726 implies not C394) and C762 ;
not (not A407 implies A708) or A194 ;
(not (C899 implies not A212) iff not C423) or C976 ;
not C180 and not C909 implies not A399 ;
not C791 implies not C191 iff C340 ;
not (not C234 iff C503) implies not C197 ;
not C213 and not C516 implies C53 ;
not (not C741 or C546) and not A606 or C566 ;
not C826 iff C47 ;
not C573 implies C718 ;
C107 or C167 or C874 iff C664 ;
not (A272 and C807 or not C653) iff not C630 ;
not ((not C720 or not C897 iff C678) implies C885) and not C481 ;
(not C425 implies C435) or C322 or C760 ;
C967 and not C795 or not C744 or A28 ;
C289 or A1 ;
not (((C889 iff C735) implies C472) implies not C868 iff not A105) ;
not (C220 iff not C786) or C740 or C115 ;
(not C533 or not C100 implies not C997) implies not C417 iff not A8 ;
not (not C102 and C231) ;
not (not C864 and not C144) or C590 ;
not (not C861 or not C363) ;
not (C1000 or C477 iff C719) or A119 ;
not ((not C876 iff not C942) or not A119) ;
C223 implies C36 ;
(C644 implies C813) and not A561 implies C47 ;
(not (A56 and C320 iff C575) iff not A390) implies C392 ;
not (not C330 iff C953) ;
not (not (not C58 and not C650) or C848 iff C844) iff not C550 ;
not C462 iff not A624 ;
(not C200 iff C425) and A534 iff C615 ;
(not (C838 iff not C169) implies C830) or not C817 ;
not (C122 and C229 or C941) ;

