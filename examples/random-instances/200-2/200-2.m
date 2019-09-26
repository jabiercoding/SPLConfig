A1 : C2 [A3] A4+ A5 [C6] :: _A1 ;

A3 : C7 A8* :: _A3 ;

A8 : C65 A66+ C67 :: A20
	| C21
	| C22
	| C23
	| C32 C33 C34 A35 A36 A37* C38 :: A24
	| A25+ :: A25_
	| C26
	| C27 ;

A66 : C84
	| C85
	| C142 [C143] C144 [C145] [C146] [C147] [C148] [C149] :: A86
	| C87
	| C88
	| C89
	| C90
	| C91
	| C92
	| C93 ;

A35 : A50 C51 C52 C53 [C54] :: _A35 ;

A50 : C58 [C59] C60 [C61] :: _A50 ;

A36 : C62 C63 C64 :: _A36 ;

A37 : A68
	| A69
	| C70 ;

A68 : C170
	| C171
	| C172
	| C173
	| C174
	| C175 ;

A69 : C163 C164 [C165] [C166] [C167] [C168] [C169] :: A71
	| C137 C138 [C139] C140 [C141] :: A72
	| C73
	| C74
	| C75
	| C76 ;

A25 : C94
	| C95
	| C96
	| C121 A122 [C123] C124 C125 [C126] C127 C128 A129 C130 :: A97
	| C98
	| C99 ;

A122 : C133
	| C134
	| C135
	| A136+ :: A136_ ;

A136 : C150
	| A151
	| C152
	| C153
	| C154 ;

A151 : C155
	| C156 ;

A129 : C186
	| C187 ;

A4 : A9
	| A10+ :: A10_
	| C11
	| C12
	| C13
	| C14
	| A15+ :: A15_ ;

A9 : A49+ :: A49_ ;

A49 : C77
	| C78 ;

A10 : C131
	| C132 ;

A15 : A16
	| A17
	| A18+ :: A18_
	| C19 ;

A16 : C112
	| C113
	| C181 C182 [C183] [C184] [C185] :: A114
	| C115
	| C116
	| C117
	| C118
	| C119
	| C120 ;

A17 : C39
	| A40+ :: A40_
	| A41
	| C42
	| C43
	| C44
	| C45
	| C46
	| C47
	| C48 ;

A40 : C55
	| C56
	| C57 ;

A41 : A100+ :: A100_
	| C101
	| C102
	| C103
	| C104
	| A105
	| C107 C108 C109 [A110] [C111] :: A106 ;

A100 : C160
	| C161
	| C162 ;

A105 : C188
	| C189
	| C190
	| C191
	| C192
	| C193
	| C194
	| C195 ;

A110 : C157 C158 [C159] :: _A110 ;

A18 : C79
	| C80
	| A176+ [C177] [C178] C179 C180 :: A81
	| C82
	| C83 ;

A176 : C196
	| C197
	| C198
	| C199
	| C200 ;

A5 : C28 [C29] C30 [C31] :: _A5 ;

%%

C159 or A41 ;
C173 implies C46 ;
not (not A18 implies C54) and not C21 ;
not ((C33 implies not C59 iff not A40) and not A176) ;
(C94 or C137) and C78 and C171 and A97 ;
not ((C152 implies not C89) or C61) ;
((not C199 iff not C116) or A10 implies C91) or not C134 ;
not (C131 and not C48) ;
(not (C142 and C194) iff not C164) or C164 ;
(A72 or C140 iff C11) and not C120 ;
(not (not C11 and C120) or C193 implies not C126) and not A40 ;
not (not C108 implies C164) implies C23 ;
(not C62 iff not A37) or not C59 iff C195 ;
not (not C182 implies C70) ;
not (not C21 implies not C146) ;
not C174 iff A4 ;
A129 and not C27 or C85 or not C55 ;
A129 or not C118 ;
C150 or not C111 ;
C131 or A97 implies not C139 iff not A41 ;

