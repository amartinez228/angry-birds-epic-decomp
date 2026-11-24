
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00ec11c6:
  ec11c6:	push   ebp
  ec11c7:	mov    ebp,esp
  ec11c9:	push   ebx
  ec11ca:	push   edi
  ec11cb:	push   esi
  ec11cc:	and    esp,0xfffffff0
  ec11cf:	sub    esp,0x40
  ec11d2:	call   ec11d7
  ec11d7:	pop    ebx
  ec11d8:	add    ebx,0x1050d6d
  ec11de:	mov    edi,DWORD PTR [ebp+0x8]
  ec11e1:	mov    al,BYTE PTR [ebx+0x626d8]
  ec11e7:	test   al,al
  ec11e9:	jne    ec1202
  ec11eb:	lea    eax,[ebx-0x66fb94]
  ec11f1:	mov    eax,DWORD PTR [eax]
  ec11f3:	mov    DWORD PTR [esp],eax
  ec11f6:	call   1ca6e8
  ec11fb:	mov    BYTE PTR [ebx+0x626d8],0x1
  ec1202:	lea    eax,[ebx+0x43ba4]
  ec1208:	mov    eax,DWORD PTR [eax]
  ec120a:	mov    DWORD PTR [esp],eax
  ec120d:	call   20bfb2
  ec1212:	mov    esi,eax
  ec1214:	lea    eax,[ebx+0x48c1c]
  ec121a:	mov    eax,DWORD PTR [eax]
  ec121c:	mov    DWORD PTR [esp+0x4],eax
  ec1220:	mov    DWORD PTR [esp],esi
  ec1223:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  ec1228:	mov    DWORD PTR [edi+0x10],esi
  ec122b:	lea    eax,[ebx+0x458b8]
  ec1231:	mov    eax,DWORD PTR [eax]
  ec1233:	mov    DWORD PTR [esp],eax
  ec1236:	call   20bfb2
  ec123b:	mov    esi,eax
  ec123d:	lea    eax,[ebx+0x4a1cc]
  ec1243:	mov    eax,DWORD PTR [eax]
  ec1245:	mov    DWORD PTR [esp+0x4],eax
  ec1249:	mov    DWORD PTR [esp],esi
  ec124c:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  ec1251:	mov    DWORD PTR [edi+0x38],esi
  ec1254:	lea    eax,[ebx+0x45890]
  ec125a:	mov    DWORD PTR [esp+0x28],eax
  ec125e:	mov    eax,DWORD PTR [eax]
  ec1260:	mov    DWORD PTR [esp],eax
  ec1263:	call   20bfb2
  ec1268:	mov    esi,eax
  ec126a:	lea    eax,[ebx+0x4a074]
  ec1270:	mov    DWORD PTR [esp+0x2c],eax
  ec1274:	mov    eax,DWORD PTR [eax]
  ec1276:	mov    DWORD PTR [esp+0x4],eax
  ec127a:	mov    DWORD PTR [esp],esi
  ec127d:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  ec1282:	mov    DWORD PTR [edi+0x50],esi
  ec1285:	mov    esi,DWORD PTR [esp+0x28]
  ec1289:	mov    eax,DWORD PTR [esi]
  ec128b:	mov    DWORD PTR [esp],eax
  ec128e:	call   20bfb2
  ec1293:	mov    edi,eax
  ec1295:	mov    eax,DWORD PTR [esp+0x2c]
  ec1299:	mov    eax,DWORD PTR [eax]
  ec129b:	mov    DWORD PTR [esp+0x4],eax
  ec129f:	mov    DWORD PTR [esp],edi
  ec12a2:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  ec12a7:	mov    eax,DWORD PTR [ebp+0x8]
  ec12aa:	mov    DWORD PTR [eax+0x54],edi
  ec12ad:	mov    eax,DWORD PTR [esi]
  ec12af:	mov    DWORD PTR [esp],eax
  ec12b2:	call   20bfb2
  ec12b7:	mov    esi,eax
  ec12b9:	mov    eax,DWORD PTR [esp+0x2c]
  ec12bd:	mov    eax,DWORD PTR [eax]
  ec12bf:	mov    DWORD PTR [esp+0x4],eax
  ec12c3:	mov    DWORD PTR [esp],esi
  ec12c6:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  ec12cb:	mov    edi,DWORD PTR [ebp+0x8]
  ec12ce:	mov    DWORD PTR [edi+0x58],esi
  ec12d1:	mov    eax,DWORD PTR [esp+0x28]
  ec12d5:	mov    eax,DWORD PTR [eax]
  ec12d7:	mov    DWORD PTR [esp],eax
  ec12da:	call   20bfb2
  ec12df:	mov    esi,eax
  ec12e1:	mov    eax,DWORD PTR [esp+0x2c]
  ec12e5:	mov    eax,DWORD PTR [eax]
  ec12e7:	mov    DWORD PTR [esp+0x4],eax
  ec12eb:	mov    DWORD PTR [esp],esi
  ec12ee:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  ec12f3:	mov    DWORD PTR [edi+0x5c],esi
  ec12f6:	mov    eax,DWORD PTR [esp+0x28]
  ec12fa:	mov    eax,DWORD PTR [eax]
  ec12fc:	mov    DWORD PTR [esp],eax
  ec12ff:	call   20bfb2
  ec1304:	mov    esi,eax
  ec1306:	mov    eax,DWORD PTR [esp+0x2c]
  ec130a:	mov    eax,DWORD PTR [eax]
  ec130c:	mov    DWORD PTR [esp+0x4],eax
  ec1310:	mov    DWORD PTR [esp],esi
  ec1313:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  ec1318:	mov    DWORD PTR [edi+0x60],esi
  ec131b:	lea    eax,[ebx+0x458bc]
  ec1321:	mov    eax,DWORD PTR [eax]
  ec1323:	mov    DWORD PTR [esp],eax
  ec1326:	call   20bfb2
  ec132b:	mov    esi,eax
  ec132d:	lea    eax,[ebx+0x4a1d0]
  ec1333:	mov    eax,DWORD PTR [eax]
  ec1335:	mov    DWORD PTR [esp+0x4],eax
  ec1339:	mov    DWORD PTR [esp],esi
  ec133c:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  ec1341:	mov    DWORD PTR [edi+0x64],esi
  ec1344:	lea    eax,[ebx+0x458c0]
  ec134a:	mov    eax,DWORD PTR [eax]
  ec134c:	mov    DWORD PTR [esp],eax
  ec134f:	call   20bfb2
  ec1354:	mov    esi,eax
  ec1356:	lea    eax,[ebx+0x4a1d4]
  ec135c:	mov    eax,DWORD PTR [eax]
  ec135e:	mov    DWORD PTR [esp+0x4],eax
  ec1362:	mov    DWORD PTR [esp],esi
  ec1365:	call   1241693  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, string>::.ctor | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e67f90(kind=0x15,data=0x1f272e4)>::.ctor | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e62fa0(kind=0x15,data=0x1f1e554)>::.ctor | +2 other aliases
  ec136a:	mov    DWORD PTR [edi+0x68],esi
  ec136d:	lea    eax,[ebx+0x458c4]
  ec1373:	mov    eax,DWORD PTR [eax]
  ec1375:	mov    DWORD PTR [esp],eax
  ec1378:	call   20bfb2
  ec137d:	mov    esi,eax
  ec137f:	lea    eax,[ebx+0x4a1d8]
  ec1385:	mov    eax,DWORD PTR [eax]
  ec1387:	mov    DWORD PTR [esp+0x4],eax
  ec138b:	mov    DWORD PTR [esp],esi
  ec138e:	call   1241693  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, string>::.ctor | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e67f90(kind=0x15,data=0x1f272e4)>::.ctor | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e62fa0(kind=0x15,data=0x1f1e554)>::.ctor | +2 other aliases
  ec1393:	mov    DWORD PTR [edi+0x6c],esi
  ec1396:	lea    eax,[ebx+0x458c8]
  ec139c:	mov    eax,DWORD PTR [eax]
  ec139e:	mov    DWORD PTR [esp],eax
  ec13a1:	call   20bfb2
  ec13a6:	mov    esi,eax
  ec13a8:	lea    eax,[ebx+0x4a1dc]
  ec13ae:	mov    eax,DWORD PTR [eax]
  ec13b0:	mov    DWORD PTR [esp+0x4],eax
  ec13b4:	mov    DWORD PTR [esp],esi
  ec13b7:	call   1241693  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, string>::.ctor | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e67f90(kind=0x15,data=0x1f272e4)>::.ctor | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e62fa0(kind=0x15,data=0x1f1e554)>::.ctor | +2 other aliases
  ec13bc:	mov    DWORD PTR [edi+0x70],esi
  ec13bf:	lea    eax,[ebx+0x43134]
  ec13c5:	mov    DWORD PTR [esp+0x20],eax
  ec13c9:	mov    eax,DWORD PTR [eax]
  ec13cb:	mov    DWORD PTR [esp],eax
  ec13ce:	call   20bfb2
  ec13d3:	mov    esi,eax
  ec13d5:	lea    eax,[ebx+0x49284]
  ec13db:	mov    DWORD PTR [esp+0x1c],eax
  ec13df:	mov    eax,DWORD PTR [eax]
  ec13e1:	mov    DWORD PTR [esp+0x4],eax
  ec13e5:	mov    DWORD PTR [esp],esi
  ec13e8:	call   60f980  ; shared address: System.Collections.Generic.Dictionary`2<string, int>::.ctor | System.Collections.Generic.Dictionary`2<UnityEngine.Font, int>::.ctor | System.Collections.Generic.Dictionary`2<object, int>::.ctor
  ec13ed:	mov    eax,edi
  ec13ef:	mov    DWORD PTR [eax+0x74],esi
  ec13f2:	mov    WORD PTR [eax+0x100],0x101
  ec13fb:	mov    DWORD PTR [esp],eax
  ec13fe:	mov    DWORD PTR [esp+0x4],0x0
  ec1406:	call   124632e  ; System.Object::.ctor
  ec140b:	mov    DWORD PTR [esp+0x4],0x0
  ec1413:	mov    DWORD PTR [esp],0x0
  ec141a:	call   1066c60  ; DIContainerLogic::GetTimingService
  ec141f:	mov    esi,eax
  ec1421:	test   esi,esi
  ec1423:	je     ec174e
  ec1429:	lea    eax,[ebx+0x458cc]
  ec142f:	mov    eax,DWORD PTR [eax]
  ec1431:	mov    ecx,DWORD PTR [esi]
  ec1433:	mov    DWORD PTR [esp+0x2c],ecx
  ec1437:	movzx  edx,WORD PTR [ecx+0xaa]
  ec143e:	test   edx,edx
  ec1440:	je     ec1455
  ec1442:	mov    ecx,DWORD PTR [esp+0x2c]
  ec1446:	mov    edi,DWORD PTR [ecx+0x4c]
  ec1449:	xor    ecx,ecx
  ec144b:	cmp    DWORD PTR [edi+ecx*8],eax
  ec144e:	je     ec146b
  ec1450:	inc    ecx
  ec1451:	cmp    ecx,edx
  ec1453:	jb     ec144b
  ec1455:	mov    DWORD PTR [esp+0x4],eax
  ec1459:	mov    DWORD PTR [esp],esi
  ec145c:	mov    DWORD PTR [esp+0x8],0x2
  ec1464:	call   1c1964
  ec1469:	jmp    ec147a
  ec146b:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  ec146f:	mov    ecx,DWORD PTR [esp+0x2c]
  ec1473:	lea    eax,[ecx+eax*8+0xc4]
  ec147a:	mov    ecx,DWORD PTR [eax+0x4]
  ec147d:	mov    DWORD PTR [esp+0x8],ecx
  ec1481:	mov    DWORD PTR [esp+0x4],esi
  ec1485:	lea    ecx,[esp+0x30]
  ec1489:	mov    DWORD PTR [esp],ecx
  ec148c:	call   DWORD PTR [eax]
  ec148e:	sub    esp,0x4
  ec1491:	mov    eax,DWORD PTR [esp+0x38]
  ec1495:	mov    ecx,DWORD PTR [ebp+0x8]
  ec1498:	mov    DWORD PTR [ecx+0x88],eax
  ec149e:	movsd  xmm0,QWORD PTR [esp+0x30]
  ec14a4:	movsd  QWORD PTR [ecx+0x80],xmm0
  ec14ac:	lea    eax,[ebx+0x45820]
  ec14b2:	mov    DWORD PTR [esp+0x18],eax
  ec14b6:	mov    eax,DWORD PTR [eax]
  ec14b8:	test   BYTE PTR [eax+0xb2],0x1
  ec14bf:	je     ec14cf
  ec14c1:	cmp    DWORD PTR [eax+0x60],0x0
  ec14c5:	jne    ec14cf
  ec14c7:	mov    DWORD PTR [esp],eax
  ec14ca:	call   1db0b8
  ec14cf:	mov    DWORD PTR [esp+0x4],0x0
  ec14d7:	mov    DWORD PTR [esp],0x0
  ec14de:	call   107cf95  ; DIContainerBalancing::get_Service
  ec14e3:	test   eax,eax
  ec14e5:	je     ec174e
  ec14eb:	lea    ecx,[ebx+0x4a1e0]
  ec14f1:	mov    edx,DWORD PTR [ecx]
  ec14f3:	mov    DWORD PTR [esp+0x2c],edx
  ec14f7:	mov    ecx,DWORD PTR [edx+0xc]
  ec14fa:	movzx  edx,WORD PTR [edx+0x2c]
  ec14fe:	mov    DWORD PTR [esp+0x24],edx
  ec1502:	mov    edx,DWORD PTR [eax]
  ec1504:	mov    DWORD PTR [esp+0x28],eax
  ec1508:	movzx  eax,WORD PTR [edx+0xaa]
  ec150f:	test   eax,eax
  ec1511:	je     ec1522
  ec1513:	mov    esi,DWORD PTR [edx+0x4c]
  ec1516:	xor    edi,edi
  ec1518:	cmp    DWORD PTR [esi+edi*8],ecx
  ec151b:	je     ec153c
  ec151d:	inc    edi
  ec151e:	cmp    edi,eax
  ec1520:	jb     ec1518
  ec1522:	mov    eax,DWORD PTR [esp+0x24]
  ec1526:	mov    DWORD PTR [esp+0x8],eax
  ec152a:	mov    DWORD PTR [esp+0x4],ecx
  ec152e:	mov    esi,DWORD PTR [esp+0x28]
  ec1532:	mov    DWORD PTR [esp],esi
  ec1535:	call   1c1964
  ec153a:	jmp    ec154f
  ec153c:	mov    eax,DWORD PTR [esp+0x24]
  ec1540:	add    eax,DWORD PTR [esi+edi*8+0x4]
  ec1544:	lea    eax,[edx+eax*8+0xb4]
  ec154b:	mov    esi,DWORD PTR [esp+0x28]
  ec154f:	mov    eax,DWORD PTR [eax+0x4]
  ec1552:	mov    ecx,DWORD PTR [esp+0x2c]
  ec1556:	mov    DWORD PTR [esp+0x4],ecx
  ec155a:	mov    DWORD PTR [esp],eax
  ec155d:	call   1da450
  ec1562:	mov    DWORD PTR [esp+0x8],eax
  ec1566:	mov    ecx,DWORD PTR [ebp+0xc]
  ec1569:	mov    DWORD PTR [esp+0x4],ecx
  ec156d:	mov    DWORD PTR [esp],esi
  ec1570:	call   DWORD PTR [eax]
  ec1572:	mov    ecx,DWORD PTR [ebp+0x8]
  ec1575:	mov    DWORD PTR [ecx+0xc],eax
  ec1578:	test   eax,eax
  ec157a:	jne    ec1651
  ec1580:	mov    cl,BYTE PTR [ebp+0x10]
  ec1583:	test   cl,cl
  ec1585:	je     ec1651
  ec158b:	mov    eax,DWORD PTR [esp+0x18]
  ec158f:	mov    eax,DWORD PTR [eax]
  ec1591:	test   BYTE PTR [eax+0xb2],0x1
  ec1598:	je     ec15a8
  ec159a:	cmp    DWORD PTR [eax+0x60],0x0
  ec159e:	jne    ec15a8
  ec15a0:	mov    DWORD PTR [esp],eax
  ec15a3:	call   1db0b8
  ec15a8:	mov    DWORD PTR [esp+0x4],0x0
  ec15b0:	mov    DWORD PTR [esp],0x0
  ec15b7:	call   107cf95  ; DIContainerBalancing::get_Service
  ec15bc:	test   eax,eax
  ec15be:	je     ec174e
  ec15c4:	lea    ecx,[ebx+0x4a1e4]
  ec15ca:	mov    edx,DWORD PTR [ecx]
  ec15cc:	mov    DWORD PTR [esp+0x28],edx
  ec15d0:	mov    ecx,DWORD PTR [edx+0xc]
  ec15d3:	movzx  edx,WORD PTR [edx+0x2c]
  ec15d7:	mov    DWORD PTR [esp+0x24],edx
  ec15db:	mov    edx,DWORD PTR [eax]
  ec15dd:	mov    DWORD PTR [esp+0x2c],eax
  ec15e1:	movzx  eax,WORD PTR [edx+0xaa]
  ec15e8:	test   eax,eax
  ec15ea:	je     ec15fb
  ec15ec:	mov    esi,DWORD PTR [edx+0x4c]
  ec15ef:	xor    edi,edi
  ec15f1:	cmp    DWORD PTR [esi+edi*8],ecx
  ec15f4:	je     ec1615
  ec15f6:	inc    edi
  ec15f7:	cmp    edi,eax
  ec15f9:	jb     ec15f1
  ec15fb:	mov    eax,DWORD PTR [esp+0x24]
  ec15ff:	mov    DWORD PTR [esp+0x8],eax
  ec1603:	mov    DWORD PTR [esp+0x4],ecx
  ec1607:	mov    esi,DWORD PTR [esp+0x2c]
  ec160b:	mov    DWORD PTR [esp],esi
  ec160e:	call   1c1964
  ec1613:	jmp    ec1628
  ec1615:	mov    eax,DWORD PTR [esp+0x24]
  ec1619:	add    eax,DWORD PTR [esi+edi*8+0x4]
  ec161d:	lea    eax,[edx+eax*8+0xb4]
  ec1624:	mov    esi,DWORD PTR [esp+0x2c]
  ec1628:	mov    eax,DWORD PTR [eax+0x4]
  ec162b:	mov    ecx,DWORD PTR [esp+0x28]
  ec162f:	mov    DWORD PTR [esp+0x4],ecx
  ec1633:	mov    DWORD PTR [esp],eax
  ec1636:	call   1da450
  ec163b:	mov    DWORD PTR [esp+0x8],eax
  ec163f:	mov    ecx,DWORD PTR [ebp+0xc]
  ec1642:	mov    DWORD PTR [esp+0x4],ecx
  ec1646:	mov    DWORD PTR [esp],esi
  ec1649:	call   DWORD PTR [eax]
  ec164b:	mov    ecx,DWORD PTR [ebp+0x8]
  ec164e:	mov    DWORD PTR [ecx+0xc],eax
  ec1651:	test   eax,eax
  ec1653:	je     ec174e
  ec1659:	mov    DWORD PTR [esp],eax
  ec165c:	mov    DWORD PTR [esp+0x4],0x0
  ec1664:	call   16fe4a5  ; ABH.Shared.BalancingData.BattleBalancingData::get_BackgroundAssetId
  ec1669:	mov    ecx,DWORD PTR [ebp+0x8]
  ec166c:	mov    edi,ecx
  ec166e:	mov    DWORD PTR [edi+0xf8],eax
  ec1674:	lea    eax,[ebx+0x458d0]
  ec167a:	mov    eax,DWORD PTR [eax]
  ec167c:	mov    DWORD PTR [esp],eax
  ec167f:	call   20bfb2
  ec1684:	mov    esi,eax
  ec1686:	mov    DWORD PTR [esp],esi
  ec1689:	call   ec0d55  ; ABH.GameDatas.Battle.BattleEndGameData::.ctor
  ec168e:	mov    eax,DWORD PTR [edi+0xc]
  ec1691:	test   eax,eax
  ec1693:	je     ec174e
  ec1699:	mov    DWORD PTR [esp],eax
  ec169c:	mov    DWORD PTR [esp+0x4],0x0
  ec16a4:	call   16fe3b0  ; ABH.Shared.BalancingData.BattleBalancingData::get_BaseLevel
  ec16a9:	test   esi,esi
  ec16ab:	je     ec174e
  ec16b1:	mov    DWORD PTR [esi+0x44],eax
  ec16b4:	mov    eax,DWORD PTR [esp+0x20]
  ec16b8:	mov    eax,DWORD PTR [eax]
  ec16ba:	mov    DWORD PTR [esp],eax
  ec16bd:	call   20bfb2
  ec16c2:	mov    edi,eax
  ec16c4:	mov    eax,DWORD PTR [esp+0x1c]
  ec16c8:	mov    eax,DWORD PTR [eax]
  ec16ca:	mov    DWORD PTR [esp+0x4],eax
  ec16ce:	mov    DWORD PTR [esp],edi
  ec16d1:	call   60f980  ; shared address: System.Collections.Generic.Dictionary`2<string, int>::.ctor | System.Collections.Generic.Dictionary`2<UnityEngine.Font, int>::.ctor | System.Collections.Generic.Dictionary`2<object, int>::.ctor
  ec16d6:	mov    DWORD PTR [esi+0xc],edi
  ec16d9:	lea    eax,[ebx+0x45834]
  ec16df:	mov    eax,DWORD PTR [eax]
  ec16e1:	mov    DWORD PTR [esp],eax
  ec16e4:	call   20bfb2
  ec16e9:	mov    edi,eax
  ec16eb:	lea    eax,[ebx+0x49f9c]
  ec16f1:	mov    eax,DWORD PTR [eax]
  ec16f3:	mov    DWORD PTR [esp+0x4],eax
  ec16f7:	mov    DWORD PTR [esp],edi
  ec16fa:	call   617b0b  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, unresolved-type@0x1e5f010(kind=0x15,data=0x1f172e4)>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, System.Xml.XmlQualifiedName>::.ctor | +55 other aliases
  ec16ff:	mov    DWORD PTR [esi+0x10],edi
  ec1702:	mov    DWORD PTR [esi+0x20],0x0
  ec1709:	mov    DWORD PTR [esi+0x1c],0x2
  ec1710:	lea    eax,[ebx+0x45494]
  ec1716:	mov    eax,DWORD PTR [eax]
  ec1718:	mov    DWORD PTR [esp],eax
  ec171b:	call   20bfb2
  ec1720:	mov    edi,eax
  ec1722:	lea    eax,[ebx+0x49878]
  ec1728:	mov    eax,DWORD PTR [eax]
  ec172a:	mov    DWORD PTR [esp+0x4],eax
  ec172e:	mov    DWORD PTR [esp],edi
  ec1731:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  ec1736:	mov    DWORD PTR [esi+0x8],edi
  ec1739:	mov    DWORD PTR [esi+0x2c],0x0
  ec1740:	mov    eax,DWORD PTR [ebp+0x8]
  ec1743:	mov    DWORD PTR [eax+0x14],esi
  ec1746:	lea    esp,[ebp-0xc]
  ec1749:	pop    esi
  ec174a:	pop    edi
  ec174b:	pop    ebx
  ec174c:	pop    ebp
  ec174d:	ret
  ec174e:	call   1fbc48
  ec1753:	call   ebbb41