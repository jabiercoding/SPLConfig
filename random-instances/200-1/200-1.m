A1_ : A1+ :: _A1 ;

A1 : A3 [C4] A5 C6 A7 A8* [C9] :: A2 ;

A3 : C23 C24 [C25] C26 C27 :: _A3 ;

A5 : C50 C51 [C52] C53 A54 A55* C56 C57 :: _A5 ;

A54 : C76 [C77] [C78] A79+ A80 [C81] [C82] :: _A54 ;

A79 : C86
	| C87
	| C102 C103 [C104] [C105] C106 :: A88
	| C89
	| C90
	| C107 [C108] [A109] C110 C111 [C112] [C113] C114 [C115] C116 :: A91
	| C92
	| C93 ;

A109 : C121 C122 [C123] C124 [C125] [C126] [A127] [C128] [C129] C130 :: _A109 ;

A127 : C198 C199 :: _A127 ;

A80 : A117 C118 C119 C120 :: _A80 ;

A117 : C155 C156 [C157] [A158] C159 [C160] [C161] C162 [C163] [C164] :: _A117 ;

A158 : C165
	| C166
	| C167
	| C168
	| C169
	| C170
	| C171
	| C172
	| C173
	| C174 ;

A55 : C192
	| C193
	| C194
	| C195
	| C196
	| C197 ;

A7 : C17 C18 [A19] [C20] [A21] [C22] :: _A7 ;

A19 : C99
	| C135 A136* [C137] C138 :: A100
	| C101 ;

A136 : C175
	| C176
	| C177
	| C178
	| A179
	| C180
	| C181
	| C182
	| C183 ;

A179 : C184
	| C185
	| C186
	| C187
	| C188
	| C189
	| C190
	| C191 ;

A21 : A41 [C42] C43 [C44] A45 [C46] [C47] [C48] C49 :: _A21 ;

A41 : C65 A66+ C67 [C68] :: _A41 ;

A66 : C145
	| C146
	| C147
	| C148
	| C149
	| C150
	| C151
	| C152
	| C153
	| C154 ;

A45 : C131
	| C132
	| C133
	| C134 ;

A8 : A10
	| A38 C39 [C40] :: A11
	| C12 ;

A10 : A13
	| C14
	| A15+ :: A15_
	| C16 ;

A13 : C69 [C70] [C71] A72* [C73] [C74] A75 :: A28
	| C29
	| A30+ :: A30_
	| C31
	| C32
	| A33
	| C34
	| C35
	| C36 ;

A72 : C139
	| C140
	| C141
	| C142
	| C143
	| C144 ;

A75 : C83 C84 C85 :: _A75 ;

A30 : C58
	| C59
	| C60
	| C61
	| C62
	| C63
	| C64 ;

A33 : C200 ;

A15 : C37 ;

A38 : C94 [C95] [C96] [C97] C98 :: _A38 ;

%%

not (not ((not A88 implies C16) and not C183) and not C169) or C161 ;
(C192 iff not C168) and not C108 or not C181 iff C86 ;
not (A41 and C141) implies C146 ;
not ((C150 or A10 or not C124) and A21) implies C111 ;
(not C124 iff C143) implies not A1 ;
not (C110 or C94 or not A5) implies C184 ;
C146 or C130 or not C105 ;
(not (not C99 implies C44) iff not C151 iff not C83) or C163 ;
not ((not C16 or not C34) and A2) or not C181 ;
not A75 or C25 ;
C148 or not C196 ;
not C128 or not C114 ;
(not A79 implies not C35) and C78 implies A54 ;
(not C167 iff C52) or C114 ;
not C123 and C95 implies C139 ;
not (not C35 and C67) iff C199 ;
((not C97 implies C98) implies not C124) and A55 ;
not (not C69 or not C31 implies C95) or A13 ;
C189 and C22 ;
not (not A136 iff A1) implies not C200 ;

