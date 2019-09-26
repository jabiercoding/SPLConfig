A1 : A2 [A3] A4 [C5] A6* [C7] [A8] A9 A10+ :: _A1 ;

A2 : C1045 C1046 [A1047] :: _A2 ;

A1047 : C1845 [C1846] [C1847] [C1848] :: _A1047 ;

A3 : A120+ C121 [C122] C123 A124 :: _A3 ;

A120 : C884 [A885] C886 C887 :: A439
	| A440
	| A441+ :: A441_
	| C442
	| C443
	| C444 ;

A885 : C1931 [C1932] C1933 :: _A885 ;

A440 : C1179 :: _A440 ;

A441 : C736
	| C737
	| C738
	| C739 ;

A124 : C404 [C405] C406 C407 [C408] [C409] A410 C411 :: _A124 ;

A410 : C587
	| C588
	| A589+ :: A589_
	| A590 ;

A589 : C676
	| C677
	| C678
	| C679
	| C680 ;

A590 : C1361 :: _A590 ;

A4 : C35 A36+ A37 C38 :: A11
	| A17 A18+ C19 A20 A21 A22* [A23] [C24] :: A12
	| A483+ C484 [C485] [C486] C487 A488 [C489] :: A13
	| A14
	| C15
	| A94 [C95] [C96] C97 A98 C99 [A100] :: A16 ;

A36 : C76
	| A77+ :: A77_
	| C78 ;

A77 : C693
	| C694
	| C930 [C931] [A932] :: A695
	| C696
	| C697
	| C698 ;

A932 : C1413 C1414 :: _A932 ;

A37 : C1216 :: _A37 ;

A17 : C875 :: _A17 ;

A18 : C1503
	| C1504
	| C1505
	| C1506
	| C1507
	| C1508 ;

A20 : C337 [C338] A339 C340 [C341] C342 [C343] [C344] :: _A20 ;

A339 : A707+ [C708] [C709] :: _A339 ;

A707 : C974
	| C975
	| C976
	| C977
	| C978 ;

A21 : C115
	| C116
	| C117
	| C118
	| C119 ;

A22 : C267
	| C268
	| C269
	| C270
	| C271 ;

A23 : C1114
	| C1115
	| C1116
	| C1117
	| C1889 C1890 C1891 C1892 :: A1118
	| C1119 ;

A483 : C1779 C1780 [C1781] :: A1625
	| C1626
	| C1627
	| C1897 [C1898] [C1899] C1900 :: A1628
	| C1629
	| C1630
	| C1631
	| C1632
	| C1633 ;

A488 : C1825
	| C1826
	| C1827
	| C1828
	| C1829 ;

A14 : A109 :: _A14 ;

A109 : A345+ :: A345_
	| A346+ :: A346_
	| C1007 [C1008] [A1009] [C1010] [C1011] C1012 C1013 :: A347
	| C348
	| C349
	| C376 [C377] [C378] [C379] [C380] C381 [C382] [C383] C384 :: A350
	| A1208 [C1209] [C1210] [C1211] [A1212] [C1213] C1214 A1215* :: A351
	| C352
	| C353
	| C354 ;

A345 : C719
	| C720
	| C721
	| C722
	| C723
	| C1557 C1558 [C1559] C1560 [C1561] :: A724 ;

A346 : C1621
	| C1622
	| C1623
	| C1624 ;

A1009 : C1428
	| C1429
	| C1430 ;

A1208 : C1893 :: _A1208 ;

A1212 : C1955
	| C1956
	| C1957
	| C1958
	| C1959
	| C1960 ;

A1215 : C1758
	| C1759
	| C1760
	| C1761
	| C1762
	| C1763
	| C1764
	| C1765
	| C1766
	| C1767 ;

A94 : A159+ C160 A161+ A162+ A163 C164 [C165] [A166] A167 :: _A94 ;

A159 : C1596
	| C1597
	| C1598
	| C1599
	| C1600
	| C1601
	| C1602
	| C1603
	| C1604 ;

A161 : C529
	| C530
	| A745 [C746] C747 C748 [A749] [C750] [C751] C752 C753 C754 :: A531
	| C532
	| C533
	| C534
	| C535
	| C578 C579 [C580] C581 [C582] C583 [C584] [C585] [C586] :: A536
	| A537 ;

A745 : C1250 C1251 C1252 C1253 C1254 :: _A745 ;

A749 : C1140
	| C1141
	| C1142
	| C1143 ;

A537 : C606 ;

A162 : C782
	| C783
	| C784
	| C785
	| C786
	| C787
	| C788
	| C789
	| C790
	| A791+ :: A791_ ;

A791 : C1000
	| C1078 C1079 C1080 [C1081] C1082 [C1083] [C1084] A1085 C1086 :: A1001
	| C1002
	| C1003
	| C1004
	| C1005
	| C1006 ;

A1085 : C1709
	| C1710
	| C1711
	| C1712
	| C1713
	| C1714
	| C1715 ;

A163 : C1501
	| C1502 ;

A166 : A285+ C286 C287 C288 [A289] :: _A166 ;

A285 : C636
	| A637+ :: A637_
	| C638
	| C639
	| C640
	| C641
	| C642
	| A643
	| C1180 A1181 :: A644
	| C645 ;

A637 : C958
	| C959
	| C960
	| A961+ :: A961_
	| C962
	| C963
	| C964
	| C965
	| C966 ;

A961 : C1750
	| C1751
	| C1752
	| C1753
	| C1754
	| C1755
	| C1756
	| C1757 ;

A643 : C910 ;

A1181 : C1950
	| C1951
	| C1952
	| C1953 ;

A289 : C755 [C756] [C757] [C758] C759 [C760] [C761] [C762] :: _A289 ;

A167 : C1014 [C1015] [C1016] [C1017] [A1018] [C1019] [C1020] [C1021] A1022 C1023 :: _A167 ;

A1018 : C1411
	| A1412 ;

A1412 : C1509
	| C1510
	| C1511
	| C1512
	| C1513 ;

A1022 : C1799
	| C1800
	| C1801
	| C1802
	| C1803
	| C1804
	| C1805
	| C1806
	| C1807 ;

A98 : C135 A136 A137 A138 A139 A140 [C141] :: _A98 ;

A136 : C1071 A1072 [C1073] [C1074] [C1075] [C1076] C1077 :: _A136 ;

A1072 : C1524
	| C1525
	| C1526
	| C1527
	| C1528
	| C1529 ;

A137 : C202 [C203] C204 [C205] C206 C207 [C208] :: _A137 ;

A138 : C177 A178 C179 :: _A138 ;

A178 : C888 C889 :: _A178 ;

A139 : A144
	| C145
	| C146
	| A147+ :: A147_
	| C148 ;

A144 : C1399 C1400 [C1401] [C1402] [C1403] [C1404] :: A275
	| C276
	| C277
	| A278
	| C279
	| C808 [C809] [C810] C811 [C812] :: A280 ;

A278 : C852
	| C853
	| C854
	| A855
	| C856
	| C857
	| C858
	| C859 ;

A855 : C1982 C1983 [C1984] :: A1674
	| C1675
	| C1676
	| C1677 ;

A147 : C355
	| C356
	| C898 [C899] :: A357
	| C358
	| C598 [A599] A600 C601 C602 [C603] C604 :: A359 ;

A599 : C1265 [C1266] C1267 [C1268] C1269 C1270 [C1271] C1272 [C1273] [C1274] :: _A599 ;

A600 : A605 :: _A600 ;

A605 : C794
	| C795
	| C796
	| C797
	| A798+ :: A798_
	| C799 ;

A798 : A989 C990 C991 C992 C993 C994 C995 C996 C997 :: A946
	| C1659 C1660 [C1661] [C1662] C1663 C1664 C1665 [C1666] C1667 :: A947
	| C948
	| C949 ;

A989 : A1097 [A1098] C1099 [C1100] C1101 [C1102] C1103 C1104 C1105 [C1106] :: _A989 ;

A1097 : C1198 [A1199] C1200 [C1201] [C1202] C1203 [C1204] [C1205] C1206 C1207 :: _A1097 ;

A1199 : C1887 C1888 :: _A1199 ;

A1098 : C1120 [C1121] [C1122] [C1123] C1124 :: _A1098 ;

A140 : C882 [C883] :: A142
	| C143 ;

A100 : A302 C303 [C304] [C305] A306* [C307] [C308] C309 A310 :: _A100 ;

A302 : C425 C426 C427 C428 :: _A302 ;

A306 : C740
	| C741
	| C742
	| A743
	| A744 ;

A743 : C1360 :: _A743 ;

A744 : C1867 C1868 C1869 C1870 :: A1634
	| C1635
	| C1636
	| C1637
	| C1638
	| C1639
	| C1871 C1872 [C1873] [C1874] C1875 C1876 C1877 [C1878] C1879 [C1880] :: A1640
	| C1641
	| C1985 [C1986] [C1987] C1988 C1989 [C1990] C1991 [C1992] :: A1642
	| C1643 ;

A310 : C1304
	| C1305
	| C1306
	| C1307
	| C1308 ;

A6 : C46
	| A47+ :: A47_
	| A48+ :: A48_
	| A50+ [C51] C52 [C53] C54 C55 [A56] A57 A58* A59+ :: A49 ;

A47 : C1961
	| C1962
	| C1963
	| C1964
	| C1965
	| C1966 ;

A48 : C290
	| C291
	| C292
	| C1255 C1256 A1257 C1258 [C1259] [C1260] [C1261] C1262 C1263 [C1264] :: A293
	| A294+ :: A294_
	| C295
	| C296
	| C297
	| C298 ;

A1257 : C1605 [C1606] [C1607] [C1608] [C1609] C1610 C1611 [A1612] [C1613] C1614 :: _A1257 ;

A1612 : C1809 C1810 :: _A1612 ;

A294 : C1967
	| C1968
	| C1969
	| C1970
	| C1971
	| C1972
	| C1973
	| C1974
	| C1975
	| C1976 ;

A50 : C299
	| C300 ;

A56 : C168
	| C169
	| A170+ :: A170_
	| C234 A235 A236* [C237] C238 [C239] [C240] A241 C242 :: A171
	| C172
	| C173
	| C174
	| C175
	| C176 ;

A170 : C463
	| C464
	| C465
	| C466 ;

A235 : C477 [C478] C479 [C480] C481 C482 :: _A235 ;

A236 : C632
	| C652 C653 [C654] A655+ [C656] [A657] :: A633
	| A634
	| C635 ;

A655 : C833
	| C834
	| A835+ :: A835_
	| C836
	| C837
	| C838
	| C839
	| C840
	| C893 C894 C895 C896 A897+ :: A841 ;

A835 : C950
	| C951
	| C952
	| C953 ;

A897 : C1025 ;

A657 : C911 C912 :: _A657 ;

A634 : C706 ;

A241 : A445+ C446 [C447] C448 [A449] [C450] A451 A452+ A453 :: _A241 ;

A445 : C781 ;

A449 : C1321 C1322 [C1323] C1324 [C1325] C1326 [C1327] C1328 [C1329] C1330 :: _A449 ;

A451 : C688 [C689] C690 C691 C692 :: _A451 ;

A452 : C1479 ;

A453 : C1894 [C1895] [C1896] :: _A453 ;

A57 : C155
	| C156
	| C157
	| C158 ;

A58 : A91 [A92] [C93] :: A79
	| C80
	| C81
	| C82
	| A1351 C1352 C1353 [A1354] [C1355] [A1356] [C1357] [C1358] [C1359] :: A83
	| C272 C273 A274 :: A84
	| A1318 [C1319] [C1320] :: A85 ;

A91 : A101+ :: A101_
	| C125 [C126] A127 A128* A129 [C130] C131 [C132] A133+ [C134] :: A102
	| C103 ;

A101 : C1788
	| C1789
	| C1790
	| C1791
	| C1792
	| C1793
	| C1794
	| C1795
	| C1796
	| C1797 ;

A127 : A925 A926 C927 C928 [C929] :: A261 ;

A925 : C1144
	| C1145
	| C1146
	| C1147
	| C1148
	| C1149
	| C1150 ;

A926 : C933 [C934] [C935] :: _A926 ;

A128 : C180
	| C181
	| C182
	| C183
	| A312+ [C313] [A314] C315 [C316] A317 [C318] [C319] C320 :: A184
	| C185
	| C186
	| C187
	| C188
	| C189 ;

A312 : C1452
	| C1453
	| C1454
	| C1455
	| C1456
	| C1457
	| C1458
	| C1459
	| C1460 ;

A314 : C1368
	| C1369
	| C1370
	| C1371
	| C1372 ;

A317 : C1768
	| C1769
	| C1770
	| C1771
	| C1772
	| C1773
	| C1774
	| C1775 ;

A129 : C209 ;

A133 : A190+ :: A190_
	| C1151 A1152 [C1153] C1154 [C1155] [C1156] A1157 :: A191 ;

A190 : A210+ :: A210_
	| C211
	| C212
	| C213
	| C214
	| C215
	| C216
	| C217 ;

A210 : C226
	| C227
	| A228+ :: A228_
	| C229
	| A230
	| A231+ :: A231_
	| C232
	| C233 ;

A228 : C566
	| C567
	| C568
	| A569
	| C570
	| C571 ;

A569 : C597 :: _A569 ;

A230 : C1535
	| C1536 ;

A231 : C367
	| C842 [C843] [A844] A845* C846 C847 [C848] [C849] [C850] [C851] :: A368
	| C369
	| C1547 C1548 C1549 [C1550] [C1551] [C1552] C1553 C1554 [C1555] [C1556] :: A370
	| C371
	| C372
	| C373
	| C374
	| C375 ;

A844 : C1296 C1297 [A1298] C1299 A1300 C1301 C1302 [C1303] :: _A844 ;

A1298 : C1716
	| C1717
	| C1718
	| C1719
	| C1720
	| C1721
	| C1722
	| C1723
	| C1724
	| C1725 ;

A1300 : C1668 [C1669] [C1670] [C1671] [C1672] C1673 :: _A1300 ;

A845 : C967
	| C968
	| C969
	| C970
	| C971
	| C972
	| C973 ;

A1152 : C1441 C1442 [C1443] C1444 [C1445] [C1446] [C1447] [C1448] C1449 [A1450] :: _A1152 ;

A1450 : C1685 [C1686] [C1687] C1688 [C1689] C1690 :: _A1450 ;

A1157 : C1275
	| C1276
	| C1277
	| C1278
	| C1279
	| C1280
	| C1281
	| C1730 [C1731] [A1732] C1733 [C1734] C1735 C1736 C1737 [C1738] C1739 :: A1282
	| C1283
	| C1284 ;

A1732 : C1866 ;

A92 : C710 C711 [C712] C713 [C714] C715 C716 C717 C718 :: _A92 ;

A1351 : C1926
	| C1927
	| C1928
	| C1929
	| C1930 ;

A1354 : A1433+ [A1434] A1435 C1436 [C1437] C1438 [A1439] [C1440] :: _A1354 ;

A1433 : C1649
	| C1650
	| C1651
	| C1652
	| C1653
	| C1654
	| C1655
	| C1656
	| C1657
	| C1658 ;

A1434 : C1782 C1783 C1784 C1785 C1786 C1787 :: _A1434 ;

A1435 : C1830
	| C1831
	| C1832
	| C1833
	| C1834
	| C1835 ;

A1439 : C1469 [C1470] [C1471] [C1472] [C1473] C1474 :: _A1439 ;

A1356 : C1691 :: _A1356 ;

A274 : C763
	| C764
	| C765
	| C766
	| C767 ;

A1318 : C1994 C1995 [C1996] [C1997] [C1998] :: _A1318 ;

A59 : C250 A251 [A252] [C253] [C254] :: A60
	| C61
	| C62
	| C63
	| C64
	| A65+ :: A65_ ;

A251 : C391
	| C392
	| A393+ :: A393_
	| A394+ :: A394_
	| C1170 C1171 :: A395
	| C1516 C1517 C1518 C1519 C1520 C1521 C1522 C1523 :: A396
	| C397
	| C398
	| C399 ;

A393 : C658
	| A659
	| A660
	| C661
	| C877 C878 [A879] [C880] [C881] :: A662
	| C663
	| C664
	| C665 ;

A659 : C1798 ;

A660 : C860
	| C861
	| C862
	| C863
	| C864
	| C865 ;

A879 : C1493 C1494 [C1495] C1496 A1497+ [C1498] C1499 :: _A879 ;

A1497 : C1776
	| C1777
	| C1778 ;

A394 : A467+ :: A467_
	| A468
	| C469
	| C470
	| C1849 [C1850] [C1851] [C1852] [C1853] :: A471
	| C1057 A1058* C1059 :: A472
	| C473
	| C474
	| A475
	| C476 ;

A467 : A1048
	| C1049
	| C1050
	| C1051
	| C1052
	| C1053
	| C1054
	| C1055
	| C1056 ;

A1048 : C1726
	| A1727+ :: A1727_
	| C1728
	| C1729 ;

A1727 : C1977
	| C1978
	| C1979
	| C1980
	| C1981 ;

A468 : C490
	| A538 C539 [C540] C541 C542 [C543] C544 :: A491
	| A492
	| C493
	| C494
	| C495
	| C496
	| C619 C620 [C621] A622 A623 A624 :: A497
	| C498
	| C499 ;

A538 : C617 C618 :: _A538 ;

A492 : C1500 ;

A622 : C681 [C682] [C683] C684 [A685] A686 C687 :: _A622 ;

A685 : C1808 :: _A685 ;

A686 : C1168
	| C1169 ;

A623 : C1901 [C1902] [C1903] C1904 C1905 :: _A623 ;

A624 : C1172
	| C1173
	| C1174
	| C1175
	| C1176
	| C1177
	| C1178 ;

A1058 : A1935+ :: A1935_ ;

A1935 : C1948
	| C1949 ;

A475 : C876 :: _A475 ;

A252 : C400 C401 A402+ [C403] :: _A252 ;

A402 : A412
	| C413
	| C414
	| C1289 C1290 A1291 C1292 C1293 C1294 [C1295] :: A415
	| C416
	| C417
	| C418
	| C419 ;

A412 : A454
	| C455
	| C456
	| C1224 [C1225] [C1226] C1227 C1228 C1229 C1230 [C1231] C1232 :: A457
	| C646 A647 [C648] C649 A650* C651 :: A458
	| C459
	| C460 ;

A454 : C1405 [C1406] C1407 [C1408] [C1409] [C1410] :: A505 ;

A647 : C792 [C793] :: _A647 ;

A650 : C890
	| A891+ :: A891_
	| C892 ;

A891 : C1480
	| C1481
	| C1482 ;

A1291 : C1699 C1700 C1701 [C1702] C1703 [C1704] C1705 [A1706] C1707 C1708 :: _A1291 ;

A1706 : C1811 C1812 C1813 A1814+ :: _A1706 ;

A1814 : C1943
	| C1944
	| C1945
	| C1946
	| C1947 ;

A65 : C301 ;

A8 : C311 ;

A9 : C385 [A386] C387 C388 [C389] [A390] :: _A9 ;

A386 : C699
	| A700+ :: A700_
	| C701
	| C702
	| C703
	| C704
	| C705 ;

A700 : C1107
	| C1108
	| C1109
	| C1110
	| C1111
	| C1112
	| C1113 ;

A390 : C424 ;

A10 : C25
	| C26
	| C27
	| C28
	| A29
	| A262+ C263 C264 [C265] [C266] :: A30
	| A31+ :: A31_
	| A32+ :: A32_
	| C33
	| A34+ :: A34_ ;

A29 : C1530 [C1531] C1532 C1533 C1534 :: A88
	| C89
	| C90 ;

A262 : C1644
	| C1645
	| C1646
	| C1647
	| C1648 ;

A31 : C149
	| C150
	| C151
	| C152
	| A153
	| C154 ;

A153 : C506
	| C507
	| C508
	| A778+ C779 C780 :: A509
	| C866 C867 [C868] [C869] [C870] C871 C872 C873 [C874] :: A510
	| C1420 C1421 [C1422] C1423 A1424 C1425 [C1426] [A1427] :: A511
	| C591 C592 C593 [A594] A595* C596 :: A512
	| C513 ;

A778 : C1567 [C1568] [C1569] C1570 C1571 C1572 [C1573] C1574 C1575 [C1576] :: A1024 ;

A1424 : C1514 [C1515] :: _A1424 ;

A1427 : C1615 C1616 [C1617] C1618 C1619 [C1620] :: _A1427 ;

A594 : C1934 ;

A595 : C1859
	| C1860
	| C1861
	| C1936 C1937 [C1938] [C1939] [C1940] C1941 [C1942] :: A1862
	| C1863
	| C1864
	| C1865 ;

A32 : C39
	| A40+ :: A40_
	| A41+ :: A41_
	| A42+ :: A42_
	| C43
	| C44
	| A45+ :: A45_ ;

A40 : C514
	| C515
	| C516
	| A517+ :: A517_
	| C518 ;

A517 : C768
	| C769
	| C770
	| A771
	| C772
	| C1125 C1126 C1127 [C1128] [C1129] A1130* :: A773
	| C774
	| C775
	| C776
	| C777 ;

A771 : C1692
	| C1693
	| C1694 ;

A1130 : C1562
	| C1563
	| C1564
	| C1565
	| C1566 ;

A41 : A420
	| C421
	| C422
	| C423 ;

A420 : C1382
	| C1383
	| C1384
	| C1385 ;

A42 : A104
	| C105
	| C725 C726 [C727] [A728] :: A106
	| C1218 [C1219] C1220 C1221 A1222* [C1223] :: A107
	| A110 A111 C112 C113 A114 :: A108 ;

A104 : C1240
	| C1241
	| C1242
	| A1243
	| C1244
	| C1245
	| C1246
	| A1247+ :: A1247_
	| C1248
	| C1249 ;

A1243 : C1373
	| C1374
	| C1375
	| C1376
	| C1377
	| C1415 [C1416] C1417 [C1418] C1419 :: A1378
	| A1379+ :: A1379_
	| C1380
	| C1381 ;

A1379 : C1916
	| C1917
	| C1918
	| C1919
	| C1920
	| C1921
	| C1922
	| C1923
	| C1924
	| C1925 ;

A1247 : C1906
	| C1907
	| C1908
	| C1909
	| C1910
	| C1911
	| C1912
	| C1913
	| C1914
	| C1915 ;

A728 : C981
	| A982+ :: A982_
	| C983
	| C984 ;

A982 : C1461
	| C1462
	| C1463
	| C1464
	| C1465
	| C1466
	| C1467
	| C1468 ;

A1222 : A1331+ :: A1331_
	| C1332
	| C1333
	| C1334
	| C1335
	| C1336
	| C1337
	| C1338
	| C1339
	| C1340 ;

A1331 : C1678
	| C1679
	| C1680
	| C1681
	| C1682
	| C1683
	| C1684 ;

A110 : A255 C256 [C257] [A258] C259 A260 :: _A110 ;

A255 : C1217 ;

A258 : C729 C730 C731 [C732] [C733] [C734] C735 :: _A258 ;

A260 : C360
	| C361
	| C362
	| C363
	| A364+ :: A364_
	| C365
	| C366 ;

A364 : C813
	| C814 ;

A111 : A192
	| C193
	| C194
	| A1182 C1183 C1184 [C1185] C1186 C1187 [C1188] :: A195
	| C196
	| A197+ :: A197_
	| A607 [A608] [C609] C610 A611 [C612] [C613] [C614] [C615] [C616] :: A198
	| A199+ :: A199_
	| C200
	| C429 [C430] C431 [C432] A433 [A434] C435 C436 [C437] [C438] :: A201 ;

A192 : A555 [C556] C557 [C558] :: A321
	| C322
	| C323
	| C324
	| C325
	| C326
	| C327
	| C328 ;

A555 : C954 [C955] [C956] C957 :: _A555 ;

A1182 : C1483 [C1484] [C1485] C1486 [C1487] [C1488] C1489 C1490 [C1491] C1492 :: _A1182 ;

A197 : C218
	| A219
	| C220
	| C221
	| C222
	| C223
	| C998 C999 :: A224
	| C225 ;

A219 : C936
	| C937
	| C938
	| C939
	| C940
	| C941
	| C942
	| C943
	| A944+ :: A944_
	| C945 ;

A944 : C1060
	| C1061
	| C1062
	| A1063+ :: A1063_
	| C1064
	| C1065
	| C1066 ;

A1063 : A1131+ :: A1131_
	| C1132
	| C1133
	| C1134
	| C1135
	| C1136
	| C1137
	| C1138
	| C1139 ;

A1131 : C1286
	| C1287
	| C1288 ;

A607 : C900 [C901] C902 C903 C904 C905 [C906] C907 [C908] [C909] :: _A607 ;

A608 : A815 [C816] C817 C818 C819 [C820] [C821] A822+ :: _A608 ;

A815 : A1478+ :: A1478_ ;

A1478 : C1577
	| C1578 ;

A822 : C1026
	| C1027
	| C1028
	| C1029
	| C1030
	| A1031
	| C1032
	| C1033
	| C1034
	| C1035 ;

A1031 : C1158
	| C1159
	| C1160
	| C1161
	| C1162
	| C1163
	| C1164
	| C1165
	| C1166
	| C1167 ;

A611 : A1087 C1088 [C1089] [C1090] C1091 C1092 C1093 [C1094] C1095 C1096 :: _A611 ;

A1087 : C1396
	| C1397
	| C1398 ;

A199 : C1315
	| C1316
	| C1317 ;

A433 : C559 C560 C561 [C562] C563 [C564] C565 :: _A433 ;

A434 : C913 C914 :: _A434 ;

A114 : C915 C916 C917 C918 C919 [A920] A921 [C922] C923 A924 :: _A114 ;

A920 : C1233 [C1234] C1235 [C1236] [C1237] C1238 [C1239] :: _A920 ;

A921 : C1854
	| C1855
	| C1856
	| C1857
	| C1858 ;

A924 : C1036 [C1037] [C1038] C1039 A1040 C1041 A1042 [A1043] C1044 :: _A924 ;

A1040 : C1999 C2000 :: _A1040 ;

A1042 : C1189 A1190 [C1191] [C1192] [C1193] C1194 [C1195] C1196 [C1197] :: _A1042 ;

A1190 : C1579
	| C1580
	| C1581
	| C1582
	| C1583
	| C1584
	| C1585
	| C1586
	| C1587
	| C1588 ;

A1043 : C1341
	| C1342
	| C1343
	| C1344
	| C1345
	| C1346
	| C1347 ;

A45 : C666
	| C667
	| C668
	| C669
	| C670
	| C823 C824 A825 [C826] A827 [C828] C829 C830 C831 [C832] :: A671
	| C672
	| A673
	| C674
	| A675+ :: A675_ ;

A825 : A1067+ [C1068] [A1069] [C1070] :: _A825 ;

A1067 : C1475
	| C1476
	| C1477 ;

A1069 : C1348 [C1349] C1350 :: _A1069 ;

A827 : C1836 C1837 C1838 C1839 [C1840] C1841 C1842 [C1843] C1844 :: _A827 ;

A673 : C1285 :: _A673 ;

A675 : C1695
	| C1696
	| C1697
	| C1698 ;

A34 : C86 C87 :: A66
	| A281 [C282] C283 C284 :: A67
	| C68
	| A69
	| C70
	| A71+ :: A71_
	| A72
	| C73
	| C574 C575 C576 C577 :: A74
	| C75 ;

A281 : C545
	| A546+ :: A546_
	| C547
	| A548
	| C549
	| C550
	| C551
	| A552
	| C1431 A1432 :: A553
	| C554 ;

A546 : C985
	| C986
	| C987
	| C988 ;

A548 : C1993 :: _A548 ;

A552 : C572
	| C573 ;

A1432 : C1740 C1741 [C1742] [C1743] [C1744] [C1745] C1746 [C1747] [C1748] C1749 :: _A1432 ;

A69 : C1451 ;

A71 : C243
	| C244
	| C245
	| C246
	| C625 C626 C627 C628 C629 C630 C631 :: A247
	| C248
	| C249 ;

A72 : C329
	| C330
	| A331+ :: A331_
	| C519 C520 [C521] C522 A523 C524 [C525] [C526] [C527] [A528] :: A332
	| C500 C501 [C502] C503 [A504] :: A333
	| A334
	| C335
	| C336 ;

A331 : C800
	| C801
	| C802
	| C803
	| C804
	| C1362 [C1363] [C1364] [C1365] C1366 [C1367] :: A805
	| C806
	| A807+ :: A807_ ;

A807 : C1815
	| C1816
	| C1817
	| C1818
	| C1819
	| C1820
	| C1821
	| C1822
	| C1823
	| C1824 ;

A523 : C1309 [C1310] [C1311] A1312+ [C1313] C1314 :: _A523 ;

A1312 : C1386
	| C1387
	| C1388
	| C1389
	| C1390
	| C1391
	| C1392
	| C1393
	| C1394
	| A1537+ [C1538] [C1539] [C1540] C1541 [C1542] C1543 C1544 [C1545] [C1546] :: A1395 ;

A1537 : C1881
	| A1882
	| C1883
	| C1884
	| C1885
	| C1886 ;

A1882 : C1954 :: _A1882 ;

A528 : C979
	| C980 ;

A504 : C1589
	| C1590
	| C1591
	| C1592
	| C1593
	| C1594
	| C1595 ;

A334 : C461
	| C462 ;

%%

not (not C905 iff not C202) ;
(not C463 or not C698) and C1555 and not C1076 or A1182 ;
(A228 or not A1152 implies C1523 iff A807) and not C691 ;
(not C1580 implies not C980) and A41 iff A321 ;
C427 or C541 implies A822 ;
not (((not C1912 implies C1973) implies C658) or C1805 iff C1528) ;
((C618 iff C196) and A129 implies not C1068) or not C1890 ;
not (((not C1385 implies not C179) or C270) and A1625 implies C547) ;
not C383 implies not C1062 ;
not C1544 implies C750 ;
not (not C1513 or A199 implies C375) ;
(C1284 implies C1512) implies C725 ;
not ((not (not C1593 iff C443) iff C1610) and C1819) ;
(C1229 iff not A491) and not C378 iff not A982 iff C1716 ;
not (C304 or not C1191 or C155 iff not C717) ;
(C1147 implies A339) and C39 ;
not (C1895 implies not C405) implies not C62 ;
not (not C763 implies A14) ;
not (C965 or not A1072 iff not C1563) ;
(A1247 iff C203 iff not C1899) or not C499 ;
(not (not C1873 or C837) or C1598 iff C863) or not A644 ;
not ((not C1997 and C1583 iff not A110) implies A743) implies not C1781 ;
not C1646 and C263 ;
not ((not (not C522 or not C1398) implies not C291) or C1572 iff not A944) ;
not ((not (C1468 or not C1956) implies C354) and A37) and not A224 ;
not (not (not C1183 iff C1238) iff C1167) ;
not ((not C478 implies C1507) or not C341) iff not A1318 ;
not C1521 and C1460 ;
(A624 implies C28) and not C948 and C1955 implies not C175 ;
(C1456 iff A92) implies not C713 ;
not C1572 iff not A45 iff not C1033 ;
not C1263 iff not C908 ;
not ((C1851 iff C1868 iff not A555) or not C1070) ;
C1809 implies not C1007 iff not C734 ;
(not ((not A395 implies C1183) and not A467) implies C1988) or not C430 ;
not (C1017 and not C1239) or not C1289 ;
((C1942 implies not C1656) implies not C1883) or not C593 ;
(not C141 or C833 iff C496) or not C320 ;
not (not C541 implies C1487) iff A546 ;
((not C1729 and not C1934 implies A622) implies not A891) or C1317 ;
(((A285 implies not C955) implies not C1122) implies not C1545) and A190 ;
(not (C1418 iff not C1765) implies C1599 iff C279) implies not C90 ;
not (C639 and not C1868) ;
(not C1931 iff C1498) or C1806 iff not C1253 ;
(not ((C82 implies not C770) implies A261) iff C373) or not C400 ;
((not C974 iff C1515 iff C1146) implies A1312) implies C1813 ;
not ((not C1823 implies not A778 iff not C1304) or A142 iff C172) ;
not (not (C1638 iff not C1947) and not A8) ;
not (A106 and not C875 and not C400) or not A8 or C903 ;
C1980 implies C923 ;
((not A314 iff not C1284 iff C103) implies C187) or not C1025 ;
(not (not C1751 or A1642) iff A201) implies C130 ;
(C828 iff not C295) implies not C651 ;
(C1902 implies not A749) or C1333 ;
C974 or A1727 ;
not (C188 iff not C330) ;
not C1849 iff A855 ;
not (not ((not (not C1077 and not C1661) iff C1626) and not C1191) iff not C1808) ;
C1585 iff not C1843 iff not C730 ;
not (not C583 and not C727 or C428) or C1441 iff not A50 ;
C1302 and not C918 implies A1018 ;
C1054 and not C1325 or C1707 ;
(C893 implies not C1203) implies not A1433 ;
not ((not (not C545 implies not C1246) or C443) and C1757) ;
(A548 iff not C1707) and C587 iff C651 ;
not C1140 or C1055 ;
C297 iff C1993 ;
not (not ((not C1136 implies not C315) implies C1666) and C1233) ;
not (C245 or A275) and not C461 implies not A275 ;
C530 and C1520 implies C212 ;
not ((C709 iff A101) implies not C249) implies not C873 ;
not C1397 implies not C1817 ;
not C884 iff C1938 ;
(not ((A1642 iff C1811) and not A100) implies C435) implies not C894 ;
(not A1098 or not C1136) and C935 ;
not (not C1783 iff not C1647) and A1706 ;
not C991 iff C134 ;
not (A166 iff not C176 iff not A350) implies C1803 ;
not C1441 iff A1130 ;
(not C186 implies C1041) and C266 ;
not C1502 or C1597 ;
not (not C105 implies not C288) and not C1164 iff not C678 iff not C628 ;
not (C409 iff C455) or C1781 ;
not ((not C1062 implies not C1204) and C1070 and C1276) ;
(not C1843 iff C1966) implies not C580 ;
not ((not C864 and not C1850 implies A536) and C910 and not C277) ;
not (not A161 iff not C1204) or not C1359 implies not A331 ;
(A412 iff not A695) implies C1297 ;
not C818 or not C1449 ;
not (C1388 and C663) ;
A74 iff not C1494 ;
not ((not C1348 iff C381) and C1172) ;
not (C1490 or not C1496 implies C1581) ;
((not (C729 and C1303) iff not C33) implies not C406) or not C586 ;
not (not A167 implies not A386) ;
not (not ((not A98 implies not C1241) or A255) and C941 or not C1302) ;
not (not (C1925 and A251) implies not C1857) iff A449 ;
(not (C692 and not C414) or not C354 implies not C1810) implies not C371 ;
not A523 or C152 ;
not (C308 and not C239) ;
not C288 or not C1329 ;
(not C612 iff C1045) and not C1597 implies C819 ;
not ((A339 implies not C1975) or C889) implies C1860 ;
not A142 implies not A594 ;
not (not C1694 implies C1125) implies C790 ;
not (not (A137 or not C1808 or C499 or C1329) and A599) ;
not ((not A1300 or not C1146) and not C1522 implies A497) implies not C970 ;
(not (C952 iff not C227) and C915 iff not C1507) or C1044 ;
not (not C1852 implies C1959) ;
(not (C821 or not C1295) implies C914) and not C1607 ;
not (((C1505 iff C1785) implies not C716) or A83) ;
(not C168 iff not C888) implies C933 ;
C381 and C535 and not C705 iff C1304 ;
not (not C1580 and not C1308) ;
(not (not C689 iff C1484) implies not C1393) implies not C970 ;
not (not C779 and C369) ;
((C753 implies C1902) and not C1890 implies A184) or C1958 ;
C324 iff C788 ;
not A235 or not C683 or C1850 ;
C1452 iff not C1210 ;
(C786 implies not A49) implies not C720 ;
(not A472 iff C832) or C1248 or A294 ;
not (C1091 and C1581 and C1851) ;
(not C1881 or A1412 iff not C909) and not C358 ;
(not ((not C769 or not A1356) and not C502) iff not C698) or C1809 ;
not C1025 and not C1921 ;
not (not C1736 implies not C1340 iff A410) ;
not (not C1377 or C1302) or C1244 or C1046 implies not C397 ;
not (C1865 and C811) and not C1562 implies C1661 iff not A439 ;
not (not ((not C1184 implies C1748) or C89) and not C1781) ;
not ((C1565 or not C972 or not C1523) and not C1224) implies not C1365 ;
(C389 implies C1888) implies not C1196 ;
not (C1139 iff not C813) ;
C1979 and A1215 implies C322 ;
C232 and not C980 ;
not (not C913 and not C1870 implies C1285 iff not C1843) ;
(not C266 or not A771) and not C1894 ;
not (not ((C1881 iff C1007) or C1396) iff not C702 iff C1016) ;
not ((not C1012 implies not C1005) and not C1123 implies C699) implies A468 ;
not C1256 and not A536 implies not C211 ;
not ((not C1774 iff not C951) and not C1192) ;
not ((not ((not C1583 or A536) and C1954) iff C719) implies C561) ;
(A255 and C508 or C176 or A396) and A281 ;
C487 and A807 implies not C1859 ;
not (not A1215 or not A822) iff C1255 iff not A230 ;
not (C986 implies C1853) ;
not ((not C889 or C1390 or not C1443) and not C209 iff not C268) ;
(C298 iff C1481) or A3 ;
not (not C1077 and C1147 implies C1092) implies not C143 ;
not (not ((C1000 implies not C1065) implies C1951) and A773 implies not C407) ;
A85 and not C551 ;
not A314 iff C1960 ;
C933 or not C1377 iff C648 ;
(A199 iff not C1027 iff not C1104) implies not A231 ;
not (not C1184 or not A1427 or not C1178) or not C1728 ;
(not A83 iff C1739) or not C1977 implies C853 ;
not ((not (A1640 and not C680) implies not C1554) or not C1221 iff not C1329) ;
A110 iff C1615 ;
not ((A1435 or not C213) and C547) or not C1441 ;
C1029 or C1611 ;
not ((C1964 and not C1191 iff not C1056) and C1148) ;
not (not ((not C203 implies C1249) and C1881) or C1977) implies A332 ;
not (not ((C1335 implies not C1716 iff C131) or not A111) iff not C341) ;
A743 or not C1334 or C636 or A393 or not C1479 ;
not (C514 implies C851 iff C383) iff C1055 ;
(not (not C502 iff C1180) implies not C1715) or not C1068 iff not C591 ;
C890 or not C254 ;
not (C1326 and C1049 and C1802 or C348) ;
not (not ((C1161 implies not C382) or C1518 implies A700) iff C360) ;
(C616 iff C1609) implies not C1173 ;
not C708 implies not C843 ;
not (not (C1902 and C112) iff C1202) ;
(A1298 and not A1727 iff C1244) or C1587 ;
not C75 and C526 or C603 or not A647 ;
not A1354 iff not A1199 ;
not (C571 or not C39 implies C894) implies not C196 ;
(not (not C1647 and C1401) implies C381) or not C1341 ;
((not (C1776 and not A483) iff C399) implies C1671) and not C1113 ;
(not C1373 or A4 implies A744) implies not C1865 ;
not (C1993 implies not C1647) and C1227 iff not C628 ;
not ((not A989 implies C385) and not C1474 iff C1252) ;
not (not C520 or C1766) ;
not A920 iff not C903 ;
not ((C1377 implies A228) and not C1939) and not A1356 ;
not ((not ((not A129 or not C168) and A317) implies not C931) and C398) ;
not ((not C46 implies not C795) and C754) ;
((C1272 iff not C181) implies not A60) or C1861 ;
(not C1071 iff C912 iff not A128) and not C602 and not A961 ;
(C1926 or C362) and C1713 implies not A599 ;
not C760 and not C974 ;
C1322 and not C856 iff C217 iff not C746 ;
not (not C809 implies C465) ;
(not (not C1656 and A110 and C432) iff not C1895) and not A433 ;
not C1511 iff not C1891 ;
(not C913 iff C1189) or not C1168 or A83 implies not C361 ;
not ((not C775 implies C1237) implies not C416) ;
(C1153 and not C28 implies C1145) and C1708 or not A420 ;
(C1193 or not C735) and not A1379 implies C547 ;
not C155 iff not A926 iff not C1583 ;
not ((not (not (not A345 implies not C1947) or not C1958) or not C1029) and not C1863) ;

