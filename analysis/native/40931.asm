
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

004fe6e7:
  4fe6e7:	push   ebp
  4fe6e8:	mov    ebp,esp
  4fe6ea:	push   ebx
  4fe6eb:	push   edi
  4fe6ec:	push   esi
  4fe6ed:	and    esp,0xfffffff0
  4fe6f0:	sub    esp,0x80
  4fe6f6:	call   4fe6fb
  4fe6fb:	pop    ebx
  4fe6fc:	add    ebx,0x1a13849
  4fe702:	mov    al,BYTE PTR [ebx+0x5d4db]
  4fe708:	test   al,al
  4fe70a:	jne    4fe723
  4fe70c:	lea    eax,[ebx-0x66f4c8]
  4fe712:	mov    eax,DWORD PTR [eax]
  4fe714:	mov    DWORD PTR [esp],eax
  4fe717:	call   1ca6e8
  4fe71c:	mov    BYTE PTR [ebx+0x5d4db],0x1
  4fe723:	mov    esi,DWORD PTR [ebp+0xc]
  4fe726:	mov    DWORD PTR [esp+0x74],0x0
  4fe72e:	mov    DWORD PTR [esp+0x6c],0x0
  4fe736:	mov    DWORD PTR [esp+0x68],0x0
  4fe73e:	mov    DWORD PTR [esp+0x64],0x0
  4fe746:	lea    eax,[ebx+0x4584c]
  4fe74c:	mov    DWORD PTR [esp+0x30],eax
  4fe750:	mov    eax,DWORD PTR [eax]
  4fe752:	test   BYTE PTR [eax+0xb2],0x1
  4fe759:	je     4fe769
  4fe75b:	cmp    DWORD PTR [eax+0x60],0x0
  4fe75f:	jne    4fe769
  4fe761:	mov    DWORD PTR [esp],eax
  4fe764:	call   1db0b8
  4fe769:	mov    DWORD PTR [esp+0x4],0x0
  4fe771:	mov    DWORD PTR [esp],0x0
  4fe778:	mov    DWORD PTR [esp+0x44],ebx
  4fe77c:	call   106970e  ; DIContainerInfrastructure::GetCurrentPlayer
  4fe781:	test   esi,esi
  4fe783:	je     4ff467
  4fe789:	mov    DWORD PTR [esp+0x40],eax
  4fe78d:	mov    eax,DWORD PTR [esi+0x14]
  4fe790:	test   eax,eax
  4fe792:	je     4ff467
  4fe798:	mov    ecx,DWORD PTR [ebp+0x8]
  4fe79b:	mov    DWORD PTR [eax+0x1c],0x0
  4fe7a2:	mov    edi,DWORD PTR [esi+0x14]
  4fe7a5:	mov    DWORD PTR [esp+0x4],esi
  4fe7a9:	mov    DWORD PTR [esp],ecx
  4fe7ac:	mov    DWORD PTR [esp+0x8],0x1
  4fe7b4:	mov    ebx,DWORD PTR [esp+0x44]
  4fe7b8:	call   4ff479  ; ABH.Services.Logic.BattleService::EvaluateFinalBattleScore
  4fe7bd:	test   edi,edi
  4fe7bf:	je     4ff46b
  4fe7c5:	mov    DWORD PTR [edi+0x34],eax
  4fe7c8:	mov    edi,DWORD PTR [esi+0x14]
  4fe7cb:	mov    DWORD PTR [esp+0x4],esi
  4fe7cf:	mov    eax,DWORD PTR [ebp+0x8]
  4fe7d2:	mov    DWORD PTR [esp],eax
  4fe7d5:	mov    DWORD PTR [esp+0x8],0x0
  4fe7dd:	call   4ff479  ; ABH.Services.Logic.BattleService::EvaluateFinalBattleScore
  4fe7e2:	test   edi,edi
  4fe7e4:	je     4ff46b
  4fe7ea:	mov    DWORD PTR [edi+0x30],eax
  4fe7ed:	mov    edi,DWORD PTR [esi+0x14]
  4fe7f0:	mov    DWORD PTR [esp+0x4],esi
  4fe7f4:	mov    eax,DWORD PTR [ebp+0x8]
  4fe7f7:	mov    DWORD PTR [esp],eax
  4fe7fa:	call   4ff887  ; ABH.Services.Logic.BattleService::EvaluateBattlePerformance
  4fe7ff:	test   edi,edi
  4fe801:	je     4ff46b
  4fe807:	mov    DWORD PTR [edi+0x20],eax
  4fe80a:	mov    DWORD PTR [esp+0x4],esi
  4fe80e:	mov    DWORD PTR [esp+0x8],0x0
  4fe816:	call   4fd0a2  ; ABH.Services.Logic.BattleService::ReportBattleToAnalytics
  4fe81b:	mov    DWORD PTR [esp],esi
  4fe81e:	mov    DWORD PTR [esp+0x4],0x0
  4fe826:	call   ec1758  ; ABH.GameDatas.Battle.BattleGameData::get_Balancing
  4fe82b:	test   eax,eax
  4fe82d:	je     4ff46b
  4fe833:	mov    DWORD PTR [esp],eax
  4fe836:	mov    DWORD PTR [esp+0x4],0x0
  4fe83e:	call   16fe38d  ; ABH.Shared.BalancingData.BattleBalancingData::get_NameId
  4fe843:	mov    esi,eax
  4fe845:	lea    eax,[ebx+0x430e4]
  4fe84b:	mov    DWORD PTR [esp+0x3c],eax
  4fe84f:	mov    eax,DWORD PTR [eax]
  4fe851:	test   BYTE PTR [eax+0xb2],0x1
  4fe858:	je     4fe868
  4fe85a:	cmp    DWORD PTR [eax+0x60],0x0
  4fe85e:	jne    4fe868
  4fe860:	mov    DWORD PTR [esp],eax
  4fe863:	call   1db0b8
  4fe868:	lea    eax,[ebx+0x57530]  ; literal "battle_047"
  4fe86e:	mov    eax,DWORD PTR [eax]
  4fe870:	mov    DWORD PTR [esp+0x8],eax
  4fe874:	mov    DWORD PTR [esp+0x4],esi
  4fe878:	mov    DWORD PTR [esp+0xc],0x0
  4fe880:	mov    DWORD PTR [esp],0x0
  4fe887:	call   ca24cf  ; System.String::op_Equality
  4fe88c:	test   al,al
  4fe88e:	je     4fe8c4
  4fe890:	mov    DWORD PTR [esp+0x4],0x0
  4fe898:	mov    DWORD PTR [esp],0x0
  4fe89f:	call   10935cb  ; DIContainerLogic::get_NotificationPopupController
  4fe8a4:	test   eax,eax
  4fe8a6:	je     4ff46b
  4fe8ac:	mov    DWORD PTR [esp],eax
  4fe8af:	mov    DWORD PTR [esp+0x8],0x0
  4fe8b7:	mov    DWORD PTR [esp+0x4],0x0
  4fe8bf:	call   7702e6  ; NotificationPopupController::RequestNotificationPopupForReason
  4fe8c4:	mov    eax,DWORD PTR [ebp+0xc]
  4fe8c7:	mov    DWORD PTR [esp],eax
  4fe8ca:	mov    DWORD PTR [esp+0x4],0x0
  4fe8d2:	call   ec1758  ; ABH.GameDatas.Battle.BattleGameData::get_Balancing
  4fe8d7:	test   eax,eax
  4fe8d9:	je     4ff46b
  4fe8df:	mov    DWORD PTR [esp],eax
  4fe8e2:	mov    DWORD PTR [esp+0x4],0x0
  4fe8ea:	mov    edi,ebx
  4fe8ec:	call   16fe38d  ; ABH.Shared.BalancingData.BattleBalancingData::get_NameId
  4fe8f1:	mov    esi,eax
  4fe8f3:	mov    eax,DWORD PTR [esp+0x3c]
  4fe8f7:	mov    eax,DWORD PTR [eax]
  4fe8f9:	test   BYTE PTR [eax+0xb2],0x1
  4fe900:	je     4fe912
  4fe902:	cmp    DWORD PTR [eax+0x60],0x0
  4fe906:	jne    4fe912
  4fe908:	mov    DWORD PTR [esp],eax
  4fe90b:	mov    ebx,edi
  4fe90d:	call   1db0b8
  4fe912:	lea    eax,[edi+0x57534]
  4fe918:	mov    eax,DWORD PTR [eax]
  4fe91a:	mov    DWORD PTR [esp+0x8],eax
  4fe91e:	mov    DWORD PTR [esp+0x4],esi
  4fe922:	mov    ebx,edi
  4fe924:	mov    DWORD PTR [esp+0xc],0x0
  4fe92c:	mov    DWORD PTR [esp],0x0
  4fe933:	call   ca24cf  ; System.String::op_Equality
  4fe938:	test   al,al
  4fe93a:	je     4fe970
  4fe93c:	mov    DWORD PTR [esp+0x4],0x0
  4fe944:	mov    DWORD PTR [esp],0x0
  4fe94b:	call   10935cb  ; DIContainerLogic::get_NotificationPopupController
  4fe950:	test   eax,eax
  4fe952:	je     4ff46b
  4fe958:	mov    DWORD PTR [esp],eax
  4fe95b:	mov    DWORD PTR [esp+0x8],0x0
  4fe963:	mov    DWORD PTR [esp+0x4],0x4
  4fe96b:	call   7702e6  ; NotificationPopupController::RequestNotificationPopupForReason
  4fe970:	mov    esi,DWORD PTR [ebp+0xc]
  4fe973:	mov    DWORD PTR [esp],esi
  4fe976:	mov    DWORD PTR [esp+0x4],0x0
  4fe97e:	call   ec186c  ; ABH.GameDatas.Battle.BattleGameData::get_IsBossBattle
  4fe983:	test   al,al
  4fe985:	mov    edi,DWORD PTR [esp+0x40]
  4fe989:	je     4fe9b3
  4fe98b:	mov    DWORD PTR [esp+0x4],0x0
  4fe993:	mov    DWORD PTR [esp],0x0
  4fe99a:	call   109283f  ; DIContainerLogic::get_EventSystemService
  4fe99f:	test   eax,eax
  4fe9a1:	je     4ff46b
  4fe9a7:	mov    DWORD PTR [esp+0x4],edi
  4fe9ab:	mov    DWORD PTR [esp],eax
  4fe9ae:	call   4ffb80  ; ABH.Services.Logic.EventSystemService::HandleBossBattleWon
  4fe9b3:	mov    eax,DWORD PTR [esi+0xf8]
  4fe9b9:	test   eax,eax
  4fe9bb:	je     4ff46b
  4fe9c1:	lea    ecx,[ebx+0x57538]  ; literal "Castle"
  4fe9c7:	mov    ecx,DWORD PTR [ecx]
  4fe9c9:	mov    DWORD PTR [esp+0x4],ecx
  4fe9cd:	mov    DWORD PTR [esp],eax
  4fe9d0:	mov    DWORD PTR [esp+0x8],0x0
  4fe9d8:	call   cbedc0  ; System.String::Contains
  4fe9dd:	test   al,al
  4fe9df:	je     4fea15
  4fe9e1:	mov    DWORD PTR [esp+0x4],0x0
  4fe9e9:	mov    DWORD PTR [esp],0x0
  4fe9f0:	call   1093546  ; DIContainerLogic::get_RateAppController
  4fe9f5:	test   eax,eax
  4fe9f7:	je     4ff46b
  4fe9fd:	mov    DWORD PTR [esp],eax
  4fea00:	mov    DWORD PTR [esp+0x8],0x0
  4fea08:	mov    DWORD PTR [esp+0x4],0x4
  4fea10:	call   852b10  ; RateAppController::RequestRatePopupForReason
  4fea15:	mov    DWORD PTR [esp],esi
  4fea18:	mov    DWORD PTR [esp+0x4],0x0
  4fea20:	call   ec18c0  ; ABH.GameDatas.Battle.BattleGameData::get_IsDungeon
  4fea25:	test   al,al
  4fea27:	je     4fea5d
  4fea29:	mov    DWORD PTR [esp+0x4],0x0
  4fea31:	mov    DWORD PTR [esp],0x0
  4fea38:	call   1093546  ; DIContainerLogic::get_RateAppController
  4fea3d:	test   eax,eax
  4fea3f:	je     4ff46b
  4fea45:	mov    DWORD PTR [esp],eax
  4fea48:	mov    DWORD PTR [esp+0x8],0x0
  4fea50:	mov    DWORD PTR [esp+0x4],0x6
  4fea58:	call   852b10  ; RateAppController::RequestRatePopupForReason
  4fea5d:	test   edi,edi
  4fea5f:	je     4ff46b
  4fea65:	mov    DWORD PTR [esp],edi
  4fea68:	mov    DWORD PTR [esp+0x8],0x0
  4fea70:	mov    DWORD PTR [esp+0x4],0x0
  4fea78:	call   6de547  ; ABH.GameDatas.PlayerGameData::GetLevelRange
  4fea7d:	mov    DWORD PTR [esp+0x74],eax
  4fea81:	mov    eax,DWORD PTR [esp+0x3c]
  4fea85:	mov    eax,DWORD PTR [eax]
  4fea87:	test   BYTE PTR [eax+0xb2],0x1
  4fea8e:	je     4feaa4
  4fea90:	cmp    DWORD PTR [eax+0x60],0x0
  4fea94:	jne    4feaa4
  4fea96:	mov    DWORD PTR [esp],eax
  4fea99:	call   1db0b8
  4fea9e:	mov    eax,DWORD PTR [esp+0x3c]
  4feaa2:	mov    eax,DWORD PTR [eax]
  4feaa4:	mov    eax,DWORD PTR [eax+0x50]
  4feaa7:	mov    edi,DWORD PTR [eax]
  4feaa9:	mov    DWORD PTR [esp],esi
  4feaac:	mov    DWORD PTR [esp+0x4],0x0
  4feab4:	call   ec1758  ; ABH.GameDatas.Battle.BattleGameData::get_Balancing
  4feab9:	test   eax,eax
  4feabb:	je     4ff46b
  4feac1:	mov    DWORD PTR [esp],eax
  4feac4:	mov    DWORD PTR [esp+0x4],0x0
  4feacc:	call   16fe3f6  ; ABH.Shared.BalancingData.BattleBalancingData::get_LootTableWheel
  4fead1:	test   eax,eax
  4fead3:	je     4feb9b
  4fead9:	mov    DWORD PTR [esp],esi
  4feadc:	mov    DWORD PTR [esp+0x4],0x0
  4feae4:	call   ec1758  ; ABH.GameDatas.Battle.BattleGameData::get_Balancing
  4feae9:	test   eax,eax
  4feaeb:	je     4ff46b
  4feaf1:	mov    DWORD PTR [esp],eax
  4feaf4:	mov    DWORD PTR [esp+0x4],0x0
  4feafc:	call   16fe3f6  ; ABH.Shared.BalancingData.BattleBalancingData::get_LootTableWheel
  4feb01:	lea    ecx,[ebx+0x4a950]
  4feb07:	mov    ecx,DWORD PTR [ecx]
  4feb09:	mov    DWORD PTR [esp+0xc],ecx
  4feb0d:	mov    DWORD PTR [esp+0x8],eax
  4feb11:	lea    eax,[esp+0x58]
  4feb15:	mov    DWORD PTR [esp],eax
  4feb18:	mov    DWORD PTR [esp+0x4],0x0
  4feb20:	call   9c5d31  ; shared address: AOTHelper::FirstOrDefault | AOTHelper::FirstOrDefault
  4feb25:	sub    esp,0x4
  4feb28:	movsd  xmm0,QWORD PTR [esp+0x58]
  4feb2e:	movsd  QWORD PTR [esp+0x68],xmm0
  4feb34:	lea    eax,[ebx+0x499dc]
  4feb3a:	mov    eax,DWORD PTR [eax]
  4feb3c:	mov    DWORD PTR [esp+0x4],eax
  4feb40:	lea    eax,[esp+0x68]
  4feb44:	mov    DWORD PTR [esp],eax
  4feb47:	call   16ab7a2
  4feb4c:	mov    esi,eax
  4feb4e:	lea    eax,[ebx+0x512f4]  ; literal "00"
  4feb54:	mov    eax,DWORD PTR [eax]
  4feb56:	mov    DWORD PTR [esp+0x4],eax
  4feb5a:	lea    eax,[esp+0x74]
  4feb5e:	mov    DWORD PTR [esp],eax
  4feb61:	mov    DWORD PTR [esp+0x8],0x0
  4feb69:	call   fea004
  4feb6e:	test   esi,esi
  4feb70:	je     4ff46b
  4feb76:	lea    ecx,[ebx+0x57118]  ; literal "{levelrange}"
  4feb7c:	mov    ecx,DWORD PTR [ecx]
  4feb7e:	mov    DWORD PTR [esp+0x8],eax
  4feb82:	mov    DWORD PTR [esp+0x4],ecx
  4feb86:	mov    DWORD PTR [esp],esi
  4feb89:	mov    DWORD PTR [esp+0xc],0x0
  4feb91:	call   cbfb3e  ; System.String::Replace
  4feb96:	mov    edi,eax
  4feb98:	mov    esi,DWORD PTR [ebp+0xc]
  4feb9b:	mov    DWORD PTR [esp+0x64],0x0
  4feba3:	mov    DWORD PTR [esp],esi
  4feba6:	mov    DWORD PTR [esp+0x4],0x0
  4febae:	call   ec1758  ; ABH.GameDatas.Battle.BattleGameData::get_Balancing
  4febb3:	test   eax,eax
  4febb5:	je     4ff46b
  4febbb:	mov    DWORD PTR [esp],eax
  4febbe:	mov    DWORD PTR [esp+0x4],0x0
  4febc6:	call   16fe3f6  ; ABH.Shared.BalancingData.BattleBalancingData::get_LootTableWheel
  4febcb:	test   eax,eax
  4febcd:	je     4fec98
  4febd3:	lea    eax,[ebx+0x45820]
  4febd9:	mov    eax,DWORD PTR [eax]
  4febdb:	test   BYTE PTR [eax+0xb2],0x1
  4febe2:	je     4febf2
  4febe4:	cmp    DWORD PTR [eax+0x60],0x0
  4febe8:	jne    4febf2
  4febea:	mov    DWORD PTR [esp],eax
  4febed:	call   1db0b8
  4febf2:	mov    DWORD PTR [esp+0x4],0x0
  4febfa:	mov    DWORD PTR [esp],0x0
  4fec01:	call   1089c7f  ; DIContainerBalancing::get_LootTableBalancingDataPovider
  4fec06:	test   eax,eax
  4fec08:	je     4ff46b
  4fec0e:	lea    ecx,[esp+0x64]
  4fec12:	mov    DWORD PTR [esp+0x8],ecx
  4fec16:	mov    DWORD PTR [esp+0x4],edi
  4fec1a:	mov    DWORD PTR [esp],eax
  4fec1d:	mov    DWORD PTR [esp+0xc],0x0
  4fec25:	call   abdae6  ; ABH.Shared.BalancingData.LootTableBalancingDataProvider::TryGetBalancingData
  4fec2a:	test   al,al
  4fec2c:	je     4fec98
  4fec2e:	mov    eax,DWORD PTR [esp+0x64]
  4fec32:	mov    DWORD PTR [esp+0x8],eax
  4fec36:	mov    DWORD PTR [esp+0x4],esi
  4fec3a:	mov    edi,ebx
  4fec3c:	call   4fff40  ; ABH.Services.Logic.BattleService::CheckForBonusLoot
  4fec41:	mov    DWORD PTR [esp+0x64],eax
  4fec45:	mov    ecx,DWORD PTR [esi+0x14]
  4fec48:	test   ecx,ecx
  4fec4a:	je     4ff475
  4fec50:	mov    DWORD PTR [ecx+0x70],eax
  4fec53:	mov    eax,DWORD PTR [esp+0x64]
  4fec57:	test   eax,eax
  4fec59:	je     4ff475
  4fec5f:	mov    esi,DWORD PTR [esi+0x14]
  4fec62:	mov    DWORD PTR [esp],eax
  4fec65:	mov    DWORD PTR [esp+0x4],0x0
  4fec6d:	mov    ebx,edi
  4fec6f:	call   1701787  ; ABH.Shared.BalancingData.LootTableBalancingData::get_LootTableEntries
  4fec74:	test   esi,esi
  4fec76:	je     4ff46b
  4fec7c:	mov    DWORD PTR [esi+0x8],eax
  4fec7f:	mov    DWORD PTR [esp+0x4],0x0
  4fec87:	mov    DWORD PTR [esp],0x0
  4fec8e:	call   106b137  ; DIContainerLogic::get_InventoryService
  4fec93:	mov    esi,DWORD PTR [ebp+0xc]
  4fec96:	jmp    4feccc
  4fec98:	lea    eax,[ebx+0x5753c]  ; literal "No Wheel LootTable set for battle "
  4fec9e:	mov    eax,DWORD PTR [eax]
  4feca0:	mov    DWORD PTR [esp+0x4],eax
  4feca4:	mov    DWORD PTR [esp+0x8],0x0
  4fecac:	mov    DWORD PTR [esp],0x0
  4fecb3:	call   108148a  ; DebugLog::Error
  4fecb8:	mov    DWORD PTR [esp+0x4],0x0
  4fecc0:	mov    DWORD PTR [esp],0x0
  4fecc7:	call   106b137  ; DIContainerLogic::get_InventoryService
  4feccc:	test   eax,eax
  4fecce:	je     4ff46b
  4fecd4:	mov    ecx,DWORD PTR [esi+0x78]
  4fecd7:	lea    edi,[ebx+0x57540]  ; literal "unlock_reroll_failed_roll"
  4fecdd:	mov    edx,DWORD PTR [edi]
  4fecdf:	mov    DWORD PTR [esp+0x8],edx
  4fece3:	mov    DWORD PTR [esp+0x4],ecx
  4fece7:	mov    DWORD PTR [esp],eax
  4fecea:	call   4fa160  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::GetItemValue
  4fecef:	test   eax,eax
  4fecf1:	jle    4fed8e
  4fecf7:	mov    DWORD PTR [esp+0x4],0x0
  4fecff:	mov    DWORD PTR [esp],0x0
  4fed06:	call   106b137  ; DIContainerLogic::get_InventoryService
  4fed0b:	mov    DWORD PTR [esp+0x38],eax
  4fed0f:	mov    eax,DWORD PTR [esi+0x78]
  4fed12:	mov    DWORD PTR [esp+0x34],eax
  4fed16:	mov    DWORD PTR [esp+0x4],0x0
  4fed1e:	mov    DWORD PTR [esp],0x0
  4fed25:	call   106b137  ; DIContainerLogic::get_InventoryService
  4fed2a:	test   eax,eax
  4fed2c:	je     4ff46b
  4fed32:	mov    ecx,DWORD PTR [esi+0x78]
  4fed35:	mov    edx,DWORD PTR [edi]
  4fed37:	mov    DWORD PTR [esp+0x8],edx
  4fed3b:	mov    DWORD PTR [esp+0x4],ecx
  4fed3f:	mov    DWORD PTR [esp],eax
  4fed42:	call   4fa160  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::GetItemValue
  4fed47:	cmp    DWORD PTR [esp+0x38],0x0
  4fed4c:	je     4ff46b
  4fed52:	mov    ecx,DWORD PTR [edi]
  4fed54:	lea    edx,[ebx+0x57544]  ; literal "tutorial"
  4fed5a:	mov    edx,DWORD PTR [edx]
  4fed5c:	mov    DWORD PTR [esp+0x10],edx
  4fed60:	mov    DWORD PTR [esp+0xc],eax
  4fed64:	mov    DWORD PTR [esp+0x8],ecx
  4fed68:	mov    eax,DWORD PTR [esp+0x34]
  4fed6c:	mov    DWORD PTR [esp+0x4],eax
  4fed70:	mov    eax,DWORD PTR [esp+0x38]
  4fed74:	mov    DWORD PTR [esp],eax
  4fed77:	call   4fa47f  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::RemoveItem
  4fed7c:	mov    eax,DWORD PTR [esi+0x14]
  4fed7f:	test   eax,eax
  4fed81:	je     4ff46b
  4fed87:	mov    DWORD PTR [eax+0x28],0x1
  4fed8e:	mov    edi,DWORD PTR [esi+0x14]
  4fed91:	test   edi,edi
  4fed93:	je     4ff46b
  4fed99:	cmp    DWORD PTR [edi+0x70],0x0
  4fed9d:	je     4fef54
  4feda3:	mov    DWORD PTR [esp+0x4],0x0
  4fedab:	mov    DWORD PTR [esp],0x0
  4fedb2:	call   106f816  ; DIContainerLogic::GetLootOperationService
  4fedb7:	mov    DWORD PTR [esp+0x38],eax
  4fedbb:	lea    eax,[ebx+0x43134]
  4fedc1:	mov    eax,DWORD PTR [eax]
  4fedc3:	mov    DWORD PTR [esp],eax
  4fedc6:	call   20bfb2
  4fedcb:	mov    DWORD PTR [esp+0x44],ebx
  4fedcf:	mov    esi,eax
  4fedd1:	lea    eax,[ebx+0x49284]
  4fedd7:	mov    eax,DWORD PTR [eax]
  4fedd9:	mov    DWORD PTR [esp+0x4],eax
  4feddd:	mov    DWORD PTR [esp],esi
  4fede0:	call   60f980  ; shared address: System.Collections.Generic.Dictionary`2<string, int>::.ctor | System.Collections.Generic.Dictionary`2<UnityEngine.Font, int>::.ctor | System.Collections.Generic.Dictionary`2<object, int>::.ctor
  4fede5:	mov    eax,DWORD PTR [ebp+0xc]
  4fede8:	mov    eax,DWORD PTR [eax+0x14]
  4fedeb:	test   eax,eax
  4feded:	je     4ff467
  4fedf3:	mov    eax,DWORD PTR [eax+0x70]
  4fedf6:	test   eax,eax
  4fedf8:	je     4ff467
  4fedfe:	mov    DWORD PTR [esp],eax
  4fee01:	mov    DWORD PTR [esp+0x4],0x0
  4fee09:	mov    ebx,DWORD PTR [esp+0x44]
  4fee0d:	call   1701764  ; ABH.Shared.BalancingData.LootTableBalancingData::get_NameId
  4fee12:	test   esi,esi
  4fee14:	je     4ff46b
  4fee1a:	lea    ecx,[ebx+0x48b98]
  4fee20:	mov    ecx,DWORD PTR [ecx]
  4fee22:	mov    DWORD PTR [esp+0xc],ecx
  4fee26:	mov    DWORD PTR [esp+0x4],eax
  4fee2a:	mov    DWORD PTR [esp],esi
  4fee2d:	mov    DWORD PTR [esp+0x8],0x1
  4fee35:	call   611c0d  ; shared address: System.Collections.Generic.Dictionary`2<string, int>::Add | System.Collections.Generic.Dictionary`2<object, int>::Add | System.Collections.Generic.Dictionary`2<System.Type, int>::Add
  4fee3a:	mov    eax,DWORD PTR [ebp+0xc]
  4fee3d:	mov    eax,DWORD PTR [eax+0x14]
  4fee40:	test   eax,eax
  4fee42:	je     4ff467
  4fee48:	mov    ebx,DWORD PTR [esp+0x38]
  4fee4c:	test   ebx,ebx
  4fee4e:	je     4ff467
  4fee54:	mov    ecx,DWORD PTR [eax+0x20]
  4fee57:	mov    edx,DWORD PTR [eax+0x44]
  4fee5a:	lea    eax,[eax+0x28]
  4fee5d:	mov    DWORD PTR [esp+0x14],eax
  4fee61:	mov    DWORD PTR [esp+0xc],ecx
  4fee65:	mov    DWORD PTR [esp+0x8],edx
  4fee69:	mov    DWORD PTR [esp+0x4],esi
  4fee6d:	mov    DWORD PTR [esp],ebx
  4fee70:	mov    DWORD PTR [esp+0x18],0x0
  4fee78:	mov    DWORD PTR [esp+0x10],0x0
  4fee80:	mov    ebx,DWORD PTR [esp+0x44]
  4fee84:	call   57c9e7  ; ABH.Services.Logic.LootOperations::GenerateLoot
  4fee89:	mov    DWORD PTR [edi+0x10],eax
  4fee8c:	mov    edi,DWORD PTR [ebp+0xc]
  4fee8f:	mov    eax,DWORD PTR [edi+0x14]
  4fee92:	mov    DWORD PTR [esp+0x38],eax
  4fee96:	mov    DWORD PTR [esp+0x4],0x0
  4fee9e:	mov    DWORD PTR [esp],0x0
  4feea5:	call   106f816  ; DIContainerLogic::GetLootOperationService
  4feeaa:	mov    esi,eax
  4feeac:	mov    DWORD PTR [esp],edi
  4feeaf:	mov    DWORD PTR [esp+0x4],0x0
  4feeb7:	call   ec1758  ; ABH.GameDatas.Battle.BattleGameData::get_Balancing
  4feebc:	test   eax,eax
  4feebe:	je     4ff46b
  4feec4:	mov    DWORD PTR [esp],eax
  4feec7:	mov    DWORD PTR [esp+0x4],0x0
  4feecf:	call   16fe419  ; ABH.Shared.BalancingData.BattleBalancingData::get_LootTableAdditional
  4feed4:	mov    ecx,DWORD PTR [edi+0x14]
  4feed7:	test   ecx,ecx
  4feed9:	je     4ff467
  4feedf:	test   esi,esi
  4feee1:	je     4ff467
  4feee7:	mov    ecx,DWORD PTR [ecx+0x44]
  4feeea:	mov    DWORD PTR [esp+0x78],0x0
  4feef2:	lea    edx,[esp+0x78]
  4feef6:	mov    DWORD PTR [esp+0x14],edx
  4feefa:	mov    DWORD PTR [esp+0x8],ecx
  4feefe:	mov    DWORD PTR [esp+0x4],eax
  4fef02:	mov    DWORD PTR [esp],esi
  4fef05:	mov    DWORD PTR [esp+0x18],0x0
  4fef0d:	mov    DWORD PTR [esp+0x10],0x0
  4fef15:	mov    DWORD PTR [esp+0xc],0x1
  4fef1d:	mov    ebx,DWORD PTR [esp+0x44]
  4fef21:	call   57c9e7  ; ABH.Services.Logic.LootOperations::GenerateLoot
  4fef26:	mov    ecx,DWORD PTR [esp+0x38]
  4fef2a:	test   ecx,ecx
  4fef2c:	je     4ff46b
  4fef32:	mov    DWORD PTR [ecx+0x14],eax
  4fef35:	mov    esi,DWORD PTR [ebp+0xc]
  4fef38:	mov    edi,DWORD PTR [esi+0x14]
  4fef3b:	mov    DWORD PTR [esp],esi
  4fef3e:	mov    DWORD PTR [esp+0x4],0x0
  4fef46:	call   ec1768  ; ABH.GameDatas.Battle.BattleGameData::get_CurrentWaveIndex
  4fef4b:	test   edi,edi
  4fef4d:	jne    4fef67
  4fef4f:	jmp    4ff46b
  4fef54:	mov    esi,DWORD PTR [ebp+0xc]
  4fef57:	mov    DWORD PTR [esp],esi
  4fef5a:	mov    DWORD PTR [esp+0x4],0x0
  4fef62:	call   ec1768  ; ABH.GameDatas.Battle.BattleGameData::get_CurrentWaveIndex
  4fef67:	mov    DWORD PTR [edi+0x2c],eax
  4fef6a:	mov    eax,DWORD PTR [esi+0x14]
  4fef6d:	mov    DWORD PTR [esp+0x38],eax
  4fef71:	mov    DWORD PTR [esp+0x4],0x0
  4fef79:	mov    DWORD PTR [esp],0x0
  4fef80:	call   1066c60  ; DIContainerLogic::GetTimingService
  4fef85:	mov    esi,eax
  4fef87:	test   esi,esi
  4fef89:	je     4ff46b
  4fef8f:	lea    eax,[ebx+0x458cc]
  4fef95:	mov    DWORD PTR [esp+0x44],ebx
  4fef99:	mov    eax,DWORD PTR [eax]
  4fef9b:	mov    ebx,DWORD PTR [esi]
  4fef9d:	movzx  edx,WORD PTR [ebx+0xaa]
  4fefa4:	test   edx,edx
  4fefa6:	je     4fefb7
  4fefa8:	mov    edi,DWORD PTR [ebx+0x4c]
  4fefab:	xor    ecx,ecx
  4fefad:	cmp    DWORD PTR [edi+ecx*8],eax
  4fefb0:	je     4fefd1
  4fefb2:	inc    ecx
  4fefb3:	cmp    ecx,edx
  4fefb5:	jb     4fefad
  4fefb7:	mov    DWORD PTR [esp+0x4],eax
  4fefbb:	mov    DWORD PTR [esp],esi
  4fefbe:	mov    DWORD PTR [esp+0x8],0x2
  4fefc6:	mov    ebx,DWORD PTR [esp+0x44]
  4fefca:	call   1c1964
  4fefcf:	jmp    4fefe0
  4fefd1:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  4fefd5:	lea    eax,[ebx+eax*8+0xc4]
  4fefdc:	mov    ebx,DWORD PTR [esp+0x44]
  4fefe0:	mov    ecx,DWORD PTR [eax+0x4]
  4fefe3:	mov    DWORD PTR [esp+0x8],ecx
  4fefe7:	mov    DWORD PTR [esp+0x4],esi
  4fefeb:	lea    ecx,[esp+0x48]
  4fefef:	mov    DWORD PTR [esp],ecx
  4feff2:	call   DWORD PTR [eax]
  4feff4:	sub    esp,0x4
  4feff7:	mov    ecx,DWORD PTR [esp+0x38]
  4feffb:	test   ecx,ecx
  4feffd:	mov    edi,DWORD PTR [esp+0x40]
  4ff001:	je     4ff46b
  4ff007:	movsd  xmm0,QWORD PTR [esp+0x48]
  4ff00d:	mov    eax,DWORD PTR [esp+0x50]
  4ff011:	mov    DWORD PTR [ecx+0x40],eax
  4ff014:	movsd  QWORD PTR [ecx+0x38],xmm0
  4ff019:	mov    esi,DWORD PTR [ebp+0xc]
  4ff01c:	mov    DWORD PTR [esp],esi
  4ff01f:	mov    DWORD PTR [esp+0x4],0x0
  4ff027:	call   eb49ac  ; ABH.GameDatas.Battle.BattleGameData::get_IsPvP
  4ff02c:	test   al,al
  4ff02e:	je     4ff425
  4ff034:	mov    DWORD PTR [esp+0x4],0x0
  4ff03c:	mov    DWORD PTR [esp],0x0
  4ff043:	call   106b137  ; DIContainerLogic::get_InventoryService
  4ff048:	test   eax,eax
  4ff04a:	je     4ff46b
  4ff050:	mov    ecx,DWORD PTR [esi+0x78]
  4ff053:	lea    edx,[ebx+0x57548]  ; literal "pvp_won_battles"
  4ff059:	mov    edx,DWORD PTR [edx]
  4ff05b:	mov    edi,esi
  4ff05d:	lea    esi,[ebx+0x5754c]  ; literal "PvPBattleWon"
  4ff063:	mov    esi,DWORD PTR [esi]
  4ff065:	mov    DWORD PTR [esp+0x18],esi
  4ff069:	mov    DWORD PTR [esp+0x10],edx
  4ff06d:	mov    DWORD PTR [esp+0x4],ecx
  4ff071:	mov    DWORD PTR [esp],eax
  4ff074:	mov    DWORD PTR [esp+0x1c],0x0
  4ff07c:	mov    DWORD PTR [esp+0x14],0x1
  4ff084:	mov    DWORD PTR [esp+0xc],0x1
  4ff08c:	mov    DWORD PTR [esp+0x8],0x1
  4ff094:	call   500411  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::AddItem
  4ff099:	mov    DWORD PTR [esp+0x4],0x0
  4ff0a1:	mov    DWORD PTR [esp],0x0
  4ff0a8:	call   106b137  ; DIContainerLogic::get_InventoryService
  4ff0ad:	test   eax,eax
  4ff0af:	je     4ff46b
  4ff0b5:	mov    ecx,DWORD PTR [edi+0x78]
  4ff0b8:	lea    edx,[ebx+0x57550]  ; literal "pvp_energy"
  4ff0be:	mov    edx,DWORD PTR [edx]
  4ff0c0:	lea    esi,[ebx+0x57554]  ; literal "refund_won_pvp_battle"
  4ff0c6:	mov    esi,DWORD PTR [esi]
  4ff0c8:	mov    DWORD PTR [esp+0x18],esi
  4ff0cc:	mov    DWORD PTR [esp+0x10],edx
  4ff0d0:	mov    DWORD PTR [esp+0x4],ecx
  4ff0d4:	mov    DWORD PTR [esp],eax
  4ff0d7:	mov    DWORD PTR [esp+0x1c],0x0
  4ff0df:	mov    DWORD PTR [esp+0x14],0x1
  4ff0e7:	mov    DWORD PTR [esp+0xc],0x1
  4ff0ef:	mov    DWORD PTR [esp+0x8],0x1
  4ff0f7:	call   500411  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::AddItem
  4ff0fc:	mov    DWORD PTR [esp+0x4],0x0
  4ff104:	mov    DWORD PTR [esp],0x0
  4ff10b:	call   1093343  ; DIContainerLogic::GetPvpObjectivesService
  4ff110:	test   eax,eax
  4ff112:	je     4ff46b
  4ff118:	mov    DWORD PTR [esp+0x4],edi
  4ff11c:	mov    DWORD PTR [esp],eax
  4ff11f:	mov    DWORD PTR [esp+0x8],0x0
  4ff127:	call   8093db  ; PvPObjectivesService::BattleWon
  4ff12c:	lea    esi,[ebx+0x4a210]
  4ff132:	mov    eax,DWORD PTR [esi]
  4ff134:	mov    DWORD PTR [esp+0x4],eax
  4ff138:	mov    edi,DWORD PTR [esp+0x40]
  4ff13c:	mov    DWORD PTR [esp],edi
  4ff13f:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  4ff144:	test   eax,eax
  4ff146:	je     4ff46b
  4ff14c:	mov    DWORD PTR [esp],eax
  4ff14f:	mov    DWORD PTR [esp+0x4],0x0
  4ff157:	call   179d725  ; ABH.Shared.Models.PlayerData::get_EnterNicknameTutorialDone
  4ff15c:	cmp    eax,0x1
  4ff15f:	ja     4ff18f
  4ff161:	mov    eax,DWORD PTR [esi]
  4ff163:	mov    DWORD PTR [esp+0x4],eax
  4ff167:	mov    DWORD PTR [esp],edi
  4ff16a:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  4ff16f:	test   eax,eax
  4ff171:	je     4ff46b
  4ff177:	mov    DWORD PTR [esp],eax
  4ff17a:	mov    DWORD PTR [esp+0x8],0x0
  4ff182:	mov    DWORD PTR [esp+0x4],0x1
  4ff18a:	call   179d738  ; ABH.Shared.Models.PlayerData::set_EnterNicknameTutorialDone
  4ff18f:	mov    eax,DWORD PTR [esi]
  4ff191:	mov    DWORD PTR [esp+0x4],eax
  4ff195:	mov    DWORD PTR [esp],edi
  4ff198:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  4ff19d:	test   eax,eax
  4ff19f:	je     4ff46b
  4ff1a5:	mov    DWORD PTR [esp],eax
  4ff1a8:	mov    DWORD PTR [esp+0x4],0x0
  4ff1b0:	call   179d6fc  ; ABH.Shared.Models.PlayerData::get_AchievementTracking
  4ff1b5:	mov    edi,eax
  4ff1b7:	test   edi,edi
  4ff1b9:	mov    esi,DWORD PTR [ebp+0xc]
  4ff1bc:	je     4ff46b
  4ff1c2:	mov    DWORD PTR [esp],edi
  4ff1c5:	mov    DWORD PTR [esp+0x4],0x0
  4ff1cd:	call   17994a7  ; ABH.Shared.Models.AchievementData::get_PvpfightsWon
  4ff1d2:	inc    eax
  4ff1d3:	mov    DWORD PTR [esp+0x4],eax
  4ff1d7:	mov    DWORD PTR [esp],edi
  4ff1da:	mov    DWORD PTR [esp+0x8],0x0
  4ff1e2:	call   17994b7  ; ABH.Shared.Models.AchievementData::set_PvpfightsWon
  4ff1e7:	mov    DWORD PTR [esp],edi
  4ff1ea:	mov    DWORD PTR [esp+0x4],0x0
  4ff1f2:	call   17994a7  ; ABH.Shared.Models.AchievementData::get_PvpfightsWon
  4ff1f7:	cmp    eax,0x64
  4ff1fa:	jl     4ff3df
  4ff200:	mov    DWORD PTR [esp],edi
  4ff203:	mov    DWORD PTR [esp+0x4],0x0
  4ff20b:	call   1799676  ; ABH.Shared.Models.AchievementData::get_PvpfightsWonAchieved
  4ff210:	test   al,al
  4ff212:	jne    4ff3df
  4ff218:	mov    eax,DWORD PTR [esp+0x30]
  4ff21c:	mov    eax,DWORD PTR [eax]
  4ff21e:	test   BYTE PTR [eax+0xb2],0x1
  4ff225:	je     4ff235
  4ff227:	cmp    DWORD PTR [eax+0x60],0x0
  4ff22b:	jne    4ff235
  4ff22d:	mov    DWORD PTR [esp],eax
  4ff230:	call   1db0b8
  4ff235:	mov    DWORD PTR [esp+0x2c],edi
  4ff239:	mov    DWORD PTR [esp+0x4],0x0
  4ff241:	mov    DWORD PTR [esp],0x0
  4ff248:	call   1066af2  ; DIContainerInfrastructure::GetAchievementService
  4ff24d:	test   eax,eax
  4ff24f:	je     4ff46b
  4ff255:	lea    ecx,[ebx+0x45f34]
  4ff25b:	mov    DWORD PTR [esp+0x28],ecx
  4ff25f:	mov    edi,DWORD PTR [ecx]
  4ff261:	lea    ecx,[ebx+0x57558]  ; literal "winArenaBattles"
  4ff267:	mov    ecx,DWORD PTR [ecx]
  4ff269:	mov    DWORD PTR [esp+0x34],ecx
  4ff26d:	mov    ecx,DWORD PTR [eax]
  4ff26f:	mov    DWORD PTR [esp+0x38],eax
  4ff273:	movzx  edx,WORD PTR [ecx+0xaa]
  4ff27a:	test   edx,edx
  4ff27c:	je     4ff28d
  4ff27e:	mov    esi,DWORD PTR [ecx+0x4c]
  4ff281:	xor    ebx,ebx
  4ff283:	cmp    DWORD PTR [esi+ebx*8],edi
  4ff286:	je     4ff2ad
  4ff288:	inc    ebx
  4ff289:	cmp    ebx,edx
  4ff28b:	jb     4ff283
  4ff28d:	mov    DWORD PTR [esp+0x4],edi
  4ff291:	mov    esi,DWORD PTR [esp+0x38]
  4ff295:	mov    DWORD PTR [esp],esi
  4ff298:	mov    DWORD PTR [esp+0x8],0x4
  4ff2a0:	mov    ebx,DWORD PTR [esp+0x44]
  4ff2a4:	call   1c1964
  4ff2a9:	mov    ecx,eax
  4ff2ab:	jmp    4ff2c0
  4ff2ad:	mov    eax,DWORD PTR [esi+ebx*8+0x4]
  4ff2b1:	lea    ecx,[ecx+eax*8+0xd4]
  4ff2b8:	mov    ebx,DWORD PTR [esp+0x44]
  4ff2bc:	mov    esi,DWORD PTR [esp+0x38]
  4ff2c0:	mov    eax,DWORD PTR [ecx+0x4]
  4ff2c3:	mov    DWORD PTR [esp+0x8],eax
  4ff2c7:	mov    eax,DWORD PTR [esp+0x34]
  4ff2cb:	mov    DWORD PTR [esp+0x4],eax
  4ff2cf:	mov    DWORD PTR [esp],esi
  4ff2d2:	call   DWORD PTR [ecx]
  4ff2d4:	mov    ecx,eax
  4ff2d6:	mov    eax,DWORD PTR [esp+0x3c]
  4ff2da:	mov    eax,DWORD PTR [eax]
  4ff2dc:	test   BYTE PTR [eax+0xb2],0x1
  4ff2e3:	mov    esi,DWORD PTR [ebp+0xc]
  4ff2e6:	je     4ff2fe
  4ff2e8:	cmp    DWORD PTR [eax+0x60],0x0
  4ff2ec:	jne    4ff2fe
  4ff2ee:	mov    DWORD PTR [esp],eax
  4ff2f1:	mov    DWORD PTR [esp+0x38],ecx
  4ff2f5:	call   1db0b8
  4ff2fa:	mov    ecx,DWORD PTR [esp+0x38]
  4ff2fe:	mov    DWORD PTR [esp+0x38],ecx
  4ff302:	mov    DWORD PTR [esp+0x4],ecx
  4ff306:	mov    DWORD PTR [esp+0x8],0x0
  4ff30e:	mov    DWORD PTR [esp],0x0
  4ff315:	call   cbedf7  ; System.String::IsNullOrEmpty
  4ff31a:	test   al,al
  4ff31c:	jne    4ff3df
  4ff322:	mov    eax,DWORD PTR [esp+0x30]
  4ff326:	mov    eax,DWORD PTR [eax]
  4ff328:	test   BYTE PTR [eax+0xb2],0x1
  4ff32f:	je     4ff33f
  4ff331:	cmp    DWORD PTR [eax+0x60],0x0
  4ff335:	jne    4ff33f
  4ff337:	mov    DWORD PTR [esp],eax
  4ff33a:	call   1db0b8
  4ff33f:	mov    DWORD PTR [esp+0x4],0x0
  4ff347:	mov    DWORD PTR [esp],0x0
  4ff34e:	mov    DWORD PTR [esp+0x44],ebx
  4ff352:	call   1066af2  ; DIContainerInfrastructure::GetAchievementService
  4ff357:	mov    esi,eax
  4ff359:	test   esi,esi
  4ff35b:	je     4ff467
  4ff361:	mov    eax,DWORD PTR [esp+0x28]
  4ff365:	mov    eax,DWORD PTR [eax]
  4ff367:	mov    edi,DWORD PTR [esi]
  4ff369:	movzx  edx,WORD PTR [edi+0xaa]
  4ff370:	test   edx,edx
  4ff372:	je     4ff383
  4ff374:	mov    ecx,DWORD PTR [edi+0x4c]
  4ff377:	xor    ebx,ebx
  4ff379:	cmp    DWORD PTR [ecx+ebx*8],eax
  4ff37c:	je     4ff39d
  4ff37e:	inc    ebx
  4ff37f:	cmp    ebx,edx
  4ff381:	jb     4ff379
  4ff383:	mov    DWORD PTR [esp+0x4],eax
  4ff387:	mov    DWORD PTR [esp],esi
  4ff38a:	mov    DWORD PTR [esp+0x8],0x3
  4ff392:	mov    ebx,DWORD PTR [esp+0x44]
  4ff396:	call   1c1964
  4ff39b:	jmp    4ff3ac
  4ff39d:	mov    eax,DWORD PTR [ecx+ebx*8+0x4]
  4ff3a1:	lea    eax,[edi+eax*8+0xcc]
  4ff3a8:	mov    ebx,DWORD PTR [esp+0x44]
  4ff3ac:	mov    ecx,DWORD PTR [eax+0x4]
  4ff3af:	mov    DWORD PTR [esp+0x8],ecx
  4ff3b3:	mov    ecx,DWORD PTR [esp+0x38]
  4ff3b7:	mov    DWORD PTR [esp+0x4],ecx
  4ff3bb:	mov    DWORD PTR [esp],esi
  4ff3be:	call   DWORD PTR [eax]
  4ff3c0:	mov    eax,DWORD PTR [esp+0x2c]
  4ff3c4:	mov    DWORD PTR [esp],eax
  4ff3c7:	mov    DWORD PTR [esp+0x8],0x0
  4ff3cf:	mov    DWORD PTR [esp+0x4],0x1
  4ff3d7:	call   1799687  ; ABH.Shared.Models.AchievementData::set_PvpfightsWonAchieved
  4ff3dc:	mov    esi,DWORD PTR [ebp+0xc]
  4ff3df:	mov    DWORD PTR [esp+0x4],esi
  4ff3e3:	call   5004e6  ; ABH.Services.Logic.BattleService::TrackPlayedClassesForAchievement
  4ff3e8:	mov    DWORD PTR [esp+0x4],0x0
  4ff3f0:	mov    DWORD PTR [esp],0x0
  4ff3f7:	call   1092a62  ; DIContainerLogic::get_PvPSeasonService
  4ff3fc:	test   eax,eax
  4ff3fe:	je     4ff46b
  4ff400:	mov    edi,DWORD PTR [esp+0x40]
  4ff404:	mov    DWORD PTR [esp+0x4],edi
  4ff408:	mov    DWORD PTR [esp],eax
  4ff40b:	mov    DWORD PTR [esp+0x8],0x1
  4ff413:	call   500ecc  ; ABH.Services.Logic.PvPSeasonService::ChangeMatchmakingDifficulty
  4ff418:	mov    DWORD PTR [esp+0x4],0x0
  4ff420:	call   50106c  ; ABH.Services.Logic.BattleService::ChangeFutureCoinFlipChance
  4ff425:	mov    DWORD PTR [esp],edi
  4ff428:	mov    DWORD PTR [esp+0x4],0x0
  4ff430:	call   6cb120  ; ABH.GameDatas.PlayerGameData::SavePlayerData
  4ff435:	mov    DWORD PTR [esp+0x4],esi
  4ff439:	call   50132e  ; ABH.Services.Logic.BattleService::SetGoldenPigDefeatedState
  4ff43e:	mov    DWORD PTR [esp+0x4],esi
  4ff442:	call   5015d6  ; ABH.Services.Logic.BattleService::RemovePassiveFromBirds
  4ff447:	mov    DWORD PTR [esp],esi
  4ff44a:	mov    DWORD PTR [esp+0x8],0x0
  4ff452:	mov    DWORD PTR [esp+0x4],0x0
  4ff45a:	call   ec3ba4  ; ABH.GameDatas.Battle.BattleGameData::RaiseBattleEnded
  4ff45f:	lea    esp,[ebp-0xc]
  4ff462:	pop    esi
  4ff463:	pop    edi
  4ff464:	pop    ebx
  4ff465:	pop    ebp
  4ff466:	ret
  4ff467:	mov    ebx,DWORD PTR [esp+0x44]
  4ff46b:	call   1fbc48
  4ff470:	call   540b98
  4ff475:	mov    ebx,edi
  4ff477:	jmp    4ff46b