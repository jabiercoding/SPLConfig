A1_ : A1+ :: _A1 ;

A1 : C2
	| C3
	| C5 A6 [C7] A8 A9+ [A10] :: A4 ;

A6 : C106
	| A107+ :: A107_
	| C108
	| C109
	| C110 ;

A107 : C183
	| C184
	| C185
	| C186
	| C187 ;

A8 : A11 A12 C13 C14 C15 A16 A17* C18 :: _A8 ;

A11 : C267 [C268] C269 [C270] C271 [C272] :: _A11 ;

A12 : C19 :: _A12 ;

A16 : C65 C66 A67* [C68] [C69] [A70] :: _A16 ;

A67 : C78
	| C341 C342 [C343] C344 :: A79
	| C302 C303 [A304] C305 :: A80
	| C81 ;

A304 : C448 [C449] [C450] [C451] C452 C453 C454 [C455] [C456] :: _A304 ;

A70 : C71
	| A72
	| C73
	| C74
	| C273 [C274] [C275] [C276] [C277] [C278] C279 [C280] A281 C282 :: A75
	| C188 A189+ C190 C191 C192 :: A76
	| C77 ;

A72 : C363
	| C364
	| C365
	| C366
	| A367+ :: A367_
	| C368
	| C369
	| C417 C418 [C419] C420 C421 C422 C423 :: A370
	| C371
	| C372 ;

A367 : C472 ;

A281 : C392
	| C393
	| C394
	| C395
	| C396
	| C397
	| C398
	| C399
	| C400 ;

A189 : C234
	| C235 ;

A17 : C424 C425 C426 [C427] C428 [C429] [C430] [C431] :: A20
	| A21
	| A23 A24* [C25] [C26] [C27] A28* :: A22 ;

A21 : A283 :: _A21 ;

A283 : A290 C291 C292 C293 :: _A283 ;

A290 : C373 [C374] C375 [C376] C377 [C378] [C379] [C380] :: _A290 ;

A23 : C100 [C101] C102 [A103] C104 C105 :: _A23 ;

A103 : C168
	| C169
	| C170
	| C171
	| C172
	| A173+ :: A173_
	| C174
	| C175
	| C193 A194 C195 C196 [C197] [C198] :: A176 ;

A173 : C314
	| C315
	| C316
	| C464 C465 C466 [C467] :: A317
	| C318
	| C319
	| C320
	| C321 ;

A194 : A216+ C217 C218 [C219] [C220] A221 [C222] [A223] C224 :: _A194 ;

A216 : C468
	| C469
	| C470
	| C471 ;

A221 : C294 [C295] C296 [C297] [C298] :: _A221 ;

A223 : C432
	| C433
	| C434
	| C435
	| C436
	| C437
	| C438
	| C439
	| C440 ;

A24 : C332 [C333] C334 [C335] [C336] C337 [C338] C339 C340 :: A91
	| C92
	| C93
	| C477 C478 [C479] [C480] [C481] :: A94
	| A95
	| C492 [C493] C494 C495 C496 C497 C498 [C499] [C500] :: A96
	| A97
	| C98
	| C99 ;

A95 : A129+ :: A129_
	| C136 [C137] C138 A139 [C140] C141 C142 :: A130
	| C131
	| A236 A237+ :: A132
	| C133 ;

A129 : C457
	| C458
	| C459
	| C460
	| C461
	| C462
	| C463 ;

A139 : C206 [C207] C208 [C209] :: _A139 ;

A236 : C245 :: _A236 ;

A237 : C388
	| C389
	| C390
	| C391 ;

A97 : C322
	| C323
	| C324
	| C325
	| C326
	| C327
	| C348 C349 C350 C351 :: A328
	| C329
	| C330
	| C331 ;

A28 : C29
	| C151 C152 [A153] [C154] C155 [C156] C157 :: A30
	| C31
	| A32+ :: A32_
	| C33
	| A34
	| C35
	| C36
	| C37 ;

A153 : C210 C211 C212 [C213] :: _A153 ;

A32 : C266 ;

A34 : A54 [C55] A56* C57 C58 [C59] :: A38
	| C39
	| C40
	| C41
	| C42
	| C246 [C247] C248 C249 [C250] C251 C252 :: A43 ;

A54 : C134 A135 :: _A54 ;

A135 : C352 :: _A135 ;

A56 : C116
	| A117+ :: A117_
	| A118+ :: A118_ ;

A117 : C158
	| C159
	| C160
	| C161
	| A162+ :: A162_
	| C163
	| C164
	| C165
	| C166
	| C167 ;

A162 : C442
	| C443
	| C444
	| C445
	| C446
	| C482 [C483] C484 [C485] :: A447 ;

A118 : C214
	| C215 ;

A9 : C44
	| A45
	| A46
	| C47
	| A48
	| C49
	| C50
	| C415 [C416] :: A51
	| C256 C257 :: A52
	| C53 ;

A45 : C178
	| A179+ :: A179_
	| C180 ;

A179 : C401
	| C402
	| C403
	| C404
	| C405 ;

A46 : C82
	| A83
	| C84
	| C85
	| C86
	| C284 [C285] [C286] [C287] [C288] C289 :: A87
	| A225 [C226] [C227] A228 [C229] [C230] C231 [C232] [C233] :: A88 ;

A83 : C143 [A144] C145 [A146] A147* C148 [C149] [C150] :: A89
	| C90 ;

A144 : C199 C200 C201 C202 [A203] [A204] [C205] :: _A144 ;

A203 : C441 ;

A204 : C265 :: _A204 ;

A146 : C362 :: _A146 ;

A147 : C253
	| C254
	| C255 ;

A225 : C473 [C474] C475 C476 :: _A225 ;

A228 : C238
	| C239
	| C353 C354 C355 C356 C357 [C358] C359 [C360] C361 :: A240
	| C241
	| A242
	| C243
	| C244 ;

A242 : C299
	| C300
	| C301 ;

A48 : C345
	| C346
	| C347 ;

A10 : C60 A61 C62 [A63] [C64] :: _A10 ;

A61 : A111
	| C112
	| C113
	| C114
	| C115 ;

A111 : C258
	| A259
	| C260
	| C261
	| C262
	| A263+ :: A263_
	| C264 ;

A259 : C306
	| C307
	| C308
	| C309
	| C310
	| C311
	| C381 C382 [C383] C384 C385 C386 [C387] :: A312
	| C313 ;

A263 : C406
	| C407
	| C408
	| C409
	| C410
	| C411
	| C412
	| C413
	| C414 ;

A63 : C119 C120 C121 A122* C123 [C124] [C125] C126 C127 [A128] :: _A63 ;

A122 : C177 ;

A128 : C181
	| A182 ;

A182 : C486
	| C487
	| C488
	| C489
	| C490
	| C491 ;

%%

not (not C469 and not C273 implies not A367) ;
not (not (C430 and C360) or not C66) and C500 ;
not ((C482 implies C18) and not C398 implies not C166) implies not C490 ;
C245 or C285 ;
(A122 or not C98) and not C134 ;
not (not C465 and not C345) and C260 implies not A135 ;
(C244 implies not C438) and not C246 and C41 ;
(not (A91 implies C493) and C161 iff not C411) or C226 ;
((not C57 iff C109) and A46 implies C92) and not C486 ;
not A97 and C192 implies not C305 ;
not (C363 and C166) or C473 implies C408 ;
C148 iff not C50 ;
not C322 or not C487 ;
C331 and C417 implies C168 ;
not (not (not C19 or A46) implies C104) or not C285 ;
not (not C35 and A203) ;
not (not (A67 iff A367) iff not C31) or not C402 ;
not ((not C497 implies A1) or C39) implies C174 ;
not (not C477 or not C352 iff C49) ;
not (((C477 iff C275) implies not C165) and C458) or C2 ;
A21 and not C164 or not C185 implies not A54 ;
not C36 or not C195 implies A38 iff not C261 ;
C152 or C64 ;
not ((not C350 iff C112) or C339 iff not A10) ;
not (C358 and not C344 iff C423) ;
C163 or C448 ;
((not C313 iff not C302) or not C341) and not C166 ;
C398 or C374 ;
not (C382 iff not C298) iff not C338 iff not C258 ;
not (not C452 implies not C78 iff not C343) implies not C361 ;
not C493 implies A51 ;
C341 iff not C332 ;
(not C55 or C35) and not C284 or not C424 ;
not (not A16 or not C397) or not C119 or C453 ;
(not C210 implies C476 iff C31) and A132 ;
not (not (not ((C300 implies not C488) implies C58) iff C435) and not C296) ;
not (C218 and not C241 implies C187) ;
not (not A24 and A189) or C453 ;
C448 or not C288 or not C316 ;
not ((not C255 implies C346) and A173) ;
C257 or not C341 ;
not (not A22 iff not A24) implies not C172 ;
((C205 and not C53 iff C488) implies not C232) implies C123 ;
not ((C400 iff C227) implies not A48) ;
((C325 or not C90) and C260 iff not C192) implies not A52 ;
not C430 implies C158 ;
not (not C246 and C338 iff A91) ;
not (not C59 implies not C438) or not C293 ;
not ((C73 implies C155) implies A61) or not C71 or not C224 ;
(C197 and not C385 implies not C233) and A447 implies not C116 ;

