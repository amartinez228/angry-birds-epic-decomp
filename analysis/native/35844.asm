
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

006f6eaa:
  6f6eaa:	push   ebp
  6f6eab:	mov    ebp,esp
  6f6ead:	push   ebx
  6f6eae:	push   edi
  6f6eaf:	push   esi
  6f6eb0:	and    esp,0xfffffff0
  6f6eb3:	sub    esp,0x1e0
  6f6eb9:	call   6f6ebe
  6f6ebe:	pop    ebx
  6f6ebf:	add    ebx,0x181b086
  6f6ec5:	mov    esi,DWORD PTR [ebp+0xc]
  6f6ec8:	mov    edi,DWORD PTR [ebp+0x8]
  6f6ecb:	mov    al,BYTE PTR [ebx+0x5f81b]
  6f6ed1:	test   al,al
  6f6ed3:	jne    6f6eec
  6f6ed5:	lea    eax,[ebx-0x65fa7c]
  6f6edb:	mov    eax,DWORD PTR [eax]
  6f6edd:	mov    DWORD PTR [esp],eax
  6f6ee0:	call   1ca6e8
  6f6ee5:	mov    BYTE PTR [ebx+0x5f81b],0x1
  6f6eec:	xorps  xmm0,xmm0
  6f6eef:	movaps XMMWORD PTR [esp+0x1c0],xmm0
  6f6ef7:	movaps XMMWORD PTR [esp+0x1a0],xmm0
  6f6eff:	mov    DWORD PTR [esp+0x1b0],0x0
  6f6f0a:	movaps XMMWORD PTR [esp+0x190],xmm0
  6f6f12:	movaps XMMWORD PTR [esp+0x170],xmm0
  6f6f1a:	mov    DWORD PTR [esp+0x180],0x0
  6f6f25:	mov    DWORD PTR [esp+0x16c],0x0
  6f6f30:	mov    DWORD PTR [esp+0x168],0x0
  6f6f3b:	mov    DWORD PTR [esp+0x164],0x0
  6f6f46:	movaps XMMWORD PTR [esp+0x150],xmm0
  6f6f4e:	movaps XMMWORD PTR [esp+0x130],xmm0
  6f6f56:	mov    DWORD PTR [esp+0x140],0x0
  6f6f61:	movaps XMMWORD PTR [esp+0x120],xmm0
  6f6f69:	mov    DWORD PTR [esp+0x11c],0x0
  6f6f74:	mov    DWORD PTR [esp+0x118],0x0
  6f6f7f:	mov    DWORD PTR [edi+0x64],0x42700000
  6f6f86:	lea    eax,[ebx+0x4ac3c]
  6f6f8c:	mov    eax,DWORD PTR [eax]
  6f6f8e:	mov    DWORD PTR [esp+0x4],eax
  6f6f92:	mov    DWORD PTR [esp],edi
  6f6f95:	call   1606f69  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::.ctor | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::.ctor | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::.ctor | +3 other aliases
  6f6f9a:	mov    DWORD PTR [edi+0xc],esi
  6f6f9d:	lea    esi,[ebx+0x4a210]
  6f6fa3:	mov    eax,DWORD PTR [esi]
  6f6fa5:	mov    DWORD PTR [esp+0x4],eax
  6f6fa9:	mov    DWORD PTR [esp],edi
  6f6fac:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  6f6fb1:	test   eax,eax
  6f6fb3:	je     6fa135
  6f6fb9:	mov    DWORD PTR [esp],eax
  6f6fbc:	mov    DWORD PTR [esp+0x4],0x0
  6f6fc4:	call   179cd75  ; ABH.Shared.Models.PlayerData::get_Inventory
  6f6fc9:	mov    DWORD PTR [esp+0x64],eax
  6f6fcd:	lea    eax,[ebx+0x45824]
  6f6fd3:	mov    eax,DWORD PTR [eax]
  6f6fd5:	mov    DWORD PTR [esp],eax
  6f6fd8:	call   20bfb2
  6f6fdd:	mov    edi,eax
  6f6fdf:	mov    eax,DWORD PTR [esp+0x64]
  6f6fe3:	mov    DWORD PTR [esp+0x4],eax
  6f6fe7:	mov    DWORD PTR [esp],edi
  6f6fea:	call   6c2d24  ; ABH.GameDatas.InventoryGameData::.ctor
  6f6fef:	mov    eax,DWORD PTR [ebp+0x8]
  6f6ff2:	mov    ecx,eax
  6f6ff4:	mov    DWORD PTR [ecx+0x10],edi
  6f6ff7:	mov    eax,DWORD PTR [esi]
  6f6ff9:	mov    DWORD PTR [esp+0x44],esi
  6f6ffd:	mov    DWORD PTR [esp+0x4],eax
  6f7001:	mov    DWORD PTR [esp],ecx
  6f7004:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  6f7009:	test   eax,eax
  6f700b:	je     6fa135
  6f7011:	mov    DWORD PTR [esp],eax
  6f7014:	mov    DWORD PTR [esp+0x4],0x0
  6f701c:	call   179cdbb  ; ABH.Shared.Models.PlayerData::get_World
  6f7021:	mov    esi,eax
  6f7023:	lea    eax,[ebx+0x45f14]
  6f7029:	mov    eax,DWORD PTR [eax]
  6f702b:	mov    DWORD PTR [esp],eax
  6f702e:	call   20bfb2
  6f7033:	mov    edi,eax
  6f7035:	mov    DWORD PTR [esp+0x4],esi
  6f7039:	mov    DWORD PTR [esp],edi
  6f703c:	call   6fa1b1  ; ABH.GameDatas.WorldGameData::.ctor
  6f7041:	mov    eax,DWORD PTR [ebp+0x8]
  6f7044:	mov    DWORD PTR [eax+0x14],edi
  6f7047:	mov    esi,DWORD PTR [ebp+0xc]
  6f704a:	test   esi,esi
  6f704c:	je     6fa135
  6f7052:	mov    DWORD PTR [esp],esi
  6f7055:	mov    DWORD PTR [esp+0x4],0x0
  6f705d:	call   179cd3b  ; ABH.Shared.Models.PlayerData::get_RandomDecisionSeed
  6f7062:	fstp   DWORD PTR [esp+0x6c]
  6f7066:	movss  xmm0,DWORD PTR [esp+0x6c]
  6f706c:	xorps  xmm1,xmm1
  6f706f:	ucomiss xmm0,xmm1
  6f7072:	mov    edi,DWORD PTR [esp+0x44]
  6f7076:	jne    6f70b2
  6f7078:	jp     6f70b2
  6f707a:	mov    DWORD PTR [esp+0xc],0x0
  6f7082:	mov    DWORD PTR [esp+0x8],0x7f7fffff
  6f708a:	mov    DWORD PTR [esp+0x4],0x0
  6f7092:	mov    DWORD PTR [esp],0x0
  6f7099:	call   167ea91  ; UnityEngine.Random::Range
  6f709e:	fstp   DWORD PTR [esp+0x4]
  6f70a2:	mov    DWORD PTR [esp],esi
  6f70a5:	mov    DWORD PTR [esp+0x8],0x0
  6f70ad:	call   179dae0  ; ABH.Shared.Models.PlayerData::set_RandomDecisionSeed
  6f70b2:	mov    eax,DWORD PTR [edi]
  6f70b4:	mov    DWORD PTR [esp+0x4],eax
  6f70b8:	mov    eax,DWORD PTR [ebp+0x8]
  6f70bb:	mov    DWORD PTR [esp],eax
  6f70be:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  6f70c3:	test   eax,eax
  6f70c5:	je     6fa135
  6f70cb:	mov    DWORD PTR [esp],eax
  6f70ce:	mov    DWORD PTR [esp+0x4],0x0
  6f70d6:	call   179cb55  ; ABH.Shared.Models.PlayerData::get_SocialEnvironment
  6f70db:	mov    esi,eax
  6f70dd:	lea    eax,[ebx+0x45f18]
  6f70e3:	mov    eax,DWORD PTR [eax]
  6f70e5:	mov    DWORD PTR [esp],eax
  6f70e8:	call   20bfb2
  6f70ed:	mov    edi,eax
  6f70ef:	mov    DWORD PTR [esp+0x4],esi
  6f70f3:	mov    DWORD PTR [esp],edi
  6f70f6:	call   6fa834  ; ABH.GameDatas.SocialEnvironmentGameData::.ctor
  6f70fb:	mov    esi,DWORD PTR [ebp+0x8]
  6f70fe:	mov    DWORD PTR [esi+0x18],edi
  6f7101:	mov    DWORD PTR [esp+0x4],0x0
  6f7109:	mov    DWORD PTR [esp],0x0
  6f7110:	call   dae708  ; ContentLoader::get_Instance
  6f7115:	mov    edi,eax
  6f7117:	lea    eax,[ebx+0x44ebc]
  6f711d:	mov    eax,DWORD PTR [eax]
  6f711f:	test   BYTE PTR [eax+0xb2],0x1
  6f7126:	je     6f7136
  6f7128:	cmp    DWORD PTR [eax+0x60],0x0
  6f712c:	jne    6f7136
  6f712e:	mov    DWORD PTR [esp],eax
  6f7131:	call   1db0b8
  6f7136:	mov    DWORD PTR [esp+0x4],edi
  6f713a:	mov    DWORD PTR [esp+0xc],0x0
  6f7142:	mov    DWORD PTR [esp+0x8],0x0
  6f714a:	mov    DWORD PTR [esp],0x0
  6f7151:	call   167a0e6  ; UnityEngine.Object::op_Inequality
  6f7156:	test   al,al
  6f7158:	mov    edi,esi
  6f715a:	je     6f729e
  6f7160:	mov    DWORD PTR [esp+0x4],0x0
  6f7168:	mov    DWORD PTR [esp],0x0
  6f716f:	call   dae708  ; ContentLoader::get_Instance
  6f7174:	test   eax,eax
  6f7176:	je     6fa135
  6f717c:	mov    eax,DWORD PTR [eax+0x80]
  6f7182:	test   eax,eax
  6f7184:	je     6fa135
  6f718a:	mov    DWORD PTR [esp],eax
  6f718d:	mov    DWORD PTR [esp+0x4],0x0
  6f7195:	call   11579de  ; BeaconConnectionMgr::get_CachedSocialEnvironmentGameData
  6f719a:	test   eax,eax
  6f719c:	je     6f729e
  6f71a2:	mov    eax,DWORD PTR [edi+0x18]
  6f71a5:	test   eax,eax
  6f71a7:	je     6fa135
  6f71ad:	lea    ecx,[ebx+0x4abf0]
  6f71b3:	mov    DWORD PTR [esp+0x64],ecx
  6f71b7:	mov    ecx,DWORD PTR [ecx]
  6f71b9:	mov    DWORD PTR [esp+0x4],ecx
  6f71bd:	mov    DWORD PTR [esp],eax
  6f71c0:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  6f71c5:	mov    esi,eax
  6f71c7:	mov    DWORD PTR [esp+0x4],0x0
  6f71cf:	mov    DWORD PTR [esp],0x0
  6f71d6:	mov    edi,ebx
  6f71d8:	call   dae708  ; ContentLoader::get_Instance
  6f71dd:	test   eax,eax
  6f71df:	je     6fa133
  6f71e5:	mov    eax,DWORD PTR [eax+0x80]
  6f71eb:	test   eax,eax
  6f71ed:	je     6fa133
  6f71f3:	mov    DWORD PTR [esp],eax
  6f71f6:	mov    DWORD PTR [esp+0x4],0x0
  6f71fe:	mov    ebx,edi
  6f7200:	call   11579de  ; BeaconConnectionMgr::get_CachedSocialEnvironmentGameData
  6f7205:	test   eax,eax
  6f7207:	je     6fa135
  6f720d:	mov    DWORD PTR [esp],eax
  6f7210:	mov    DWORD PTR [esp+0x4],0x0
  6f7218:	call   179edfe  ; ABH.Shared.Models.SocialEnvironmentData::get_IdLoginEmail
  6f721d:	test   esi,esi
  6f721f:	je     6fa135
  6f7225:	mov    DWORD PTR [esp+0x4],eax
  6f7229:	mov    DWORD PTR [esp],esi
  6f722c:	mov    DWORD PTR [esp+0x8],0x0
  6f7234:	call   179ee0e  ; ABH.Shared.Models.SocialEnvironmentData::set_IdLoginEmail
  6f7239:	mov    DWORD PTR [esp+0x4],0x0
  6f7241:	mov    DWORD PTR [esp],0x0
  6f7248:	mov    edi,ebx
  6f724a:	call   dae708  ; ContentLoader::get_Instance
  6f724f:	test   eax,eax
  6f7251:	je     6fa133
  6f7257:	mov    ecx,DWORD PTR [ebp+0x8]
  6f725a:	mov    ecx,DWORD PTR [ecx+0x18]
  6f725d:	test   ecx,ecx
  6f725f:	je     6fa133
  6f7265:	mov    esi,DWORD PTR [eax+0x80]
  6f726b:	mov    eax,DWORD PTR [esp+0x64]
  6f726f:	mov    eax,DWORD PTR [eax]
  6f7271:	mov    DWORD PTR [esp+0x4],eax
  6f7275:	mov    DWORD PTR [esp],ecx
  6f7278:	mov    ebx,edi
  6f727a:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  6f727f:	test   esi,esi
  6f7281:	je     6fa135
  6f7287:	mov    DWORD PTR [esp+0x4],eax
  6f728b:	mov    DWORD PTR [esp],esi
  6f728e:	mov    DWORD PTR [esp+0x8],0x0
  6f7296:	call   11579ee  ; BeaconConnectionMgr::set_CachedSocialEnvironmentGameData
  6f729b:	mov    edi,DWORD PTR [ebp+0x8]
  6f729e:	lea    eax,[ebx+0x458b8]
  6f72a4:	mov    eax,DWORD PTR [eax]
  6f72a6:	mov    DWORD PTR [esp],eax
  6f72a9:	call   20bfb2
  6f72ae:	mov    esi,eax
  6f72b0:	lea    eax,[ebx+0x4a1cc]
  6f72b6:	mov    eax,DWORD PTR [eax]
  6f72b8:	mov    DWORD PTR [esp+0x4],eax
  6f72bc:	mov    DWORD PTR [esp],esi
  6f72bf:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  6f72c4:	mov    DWORD PTR [edi+0x30],esi
  6f72c7:	mov    eax,DWORD PTR [ebp+0xc]
  6f72ca:	mov    DWORD PTR [esp],eax
  6f72cd:	mov    DWORD PTR [esp+0x4],0x0
  6f72d5:	call   179cafc  ; ABH.Shared.Models.PlayerData::get_Birds
  6f72da:	test   eax,eax
  6f72dc:	je     6fa135
  6f72e2:	lea    ecx,[ebx+0x49850]
  6f72e8:	mov    ecx,DWORD PTR [ecx]
  6f72ea:	mov    DWORD PTR [esp+0x8],ecx
  6f72ee:	mov    DWORD PTR [esp+0x4],eax
  6f72f2:	lea    eax,[esp+0x108]
  6f72f9:	mov    DWORD PTR [esp],eax
  6f72fc:	call   4c350f  ; shared address: System.Collections.Generic.List`1<object>::GetEnumerator | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::GetEnumerator | System.Collections.Generic.List`1<System.Net.Cookie>::GetEnumerator | +129 other aliases
  6f7301:	sub    esp,0x4
  6f7304:	movsd  xmm0,QWORD PTR [esp+0x108]
  6f730d:	movsd  xmm1,QWORD PTR [esp+0x110]
  6f7316:	movsd  QWORD PTR [esp+0x1c8],xmm1
  6f731f:	movsd  QWORD PTR [esp+0x1c0],xmm0
  6f7328:	lea    eax,[ebx+0x49858]
  6f732e:	mov    DWORD PTR [esp+0x60],eax
  6f7332:	mov    eax,DWORD PTR [esp+0x60]
  6f7336:	mov    eax,DWORD PTR [eax]
  6f7338:	mov    DWORD PTR [esp+0x4],eax
  6f733c:	lea    eax,[esp+0x1c0]
  6f7343:	mov    DWORD PTR [esp],eax
  6f7346:	call   447e4e
  6f734b:	test   al,al
  6f734d:	je     6f7402
  6f7353:	lea    eax,[ebx+0x49854]
  6f7359:	mov    eax,DWORD PTR [eax]
  6f735b:	mov    DWORD PTR [esp+0x4],eax
  6f735f:	lea    eax,[esp+0x1c0]
  6f7366:	mov    DWORD PTR [esp],eax
  6f7369:	call   447f1e
  6f736e:	mov    edi,eax
  6f7370:	mov    eax,DWORD PTR [ebp+0x8]
  6f7373:	mov    eax,DWORD PTR [eax+0x30]
  6f7376:	mov    DWORD PTR [esp+0x64],eax
  6f737a:	lea    eax,[ebx+0x45918]
  6f7380:	mov    eax,DWORD PTR [eax]
  6f7382:	mov    DWORD PTR [esp],eax
  6f7385:	call   20bfb2
  6f738a:	mov    esi,eax
  6f738c:	mov    DWORD PTR [esp+0x4],edi
  6f7390:	mov    DWORD PTR [esp],esi
  6f7393:	call   6c2ba9  ; ABH.GameDatas.BirdGameData::.ctor
  6f7398:	mov    ecx,DWORD PTR [esp+0x64]
  6f739c:	test   ecx,ecx
  6f739e:	je     6f77ca
  6f73a4:	lea    eax,[ebx+0x4ac40]
  6f73aa:	mov    eax,DWORD PTR [eax]
  6f73ac:	mov    DWORD PTR [esp+0x8],eax
  6f73b0:	mov    DWORD PTR [esp+0x4],esi
  6f73b4:	mov    DWORD PTR [esp],ecx
  6f73b7:	call   4c23b4  ; shared address: System.Collections.Generic.List`1<object>::Add | System.Collections.Generic.List`1<string>::Add | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::Add | +157 other aliases
  6f73bc:	jmp    6f7332
  6f73c1:	cmp    edx,0x1
  6f73c4:	jne    6fa143
  6f73ca:	mov    DWORD PTR [esp],eax
  6f73cd:	call   1ba3f0
  6f73d2:	mov    esi,DWORD PTR [eax]
  6f73d4:	call   1b9ce0
  6f73d9:	lea    eax,[ebx+0x4985c]
  6f73df:	mov    eax,DWORD PTR [eax]
  6f73e1:	mov    DWORD PTR [esp+0x4],eax
  6f73e5:	lea    eax,[esp+0x1c0]
  6f73ec:	mov    DWORD PTR [esp],eax
  6f73ef:	call   447df6
  6f73f4:	test   esi,esi
  6f73f6:	je     6f741d
  6f73f8:	mov    DWORD PTR [esp],esi
  6f73fb:	call   1fbb20
  6f7400:	jmp    6f741d
  6f7402:	lea    eax,[ebx+0x4985c]
  6f7408:	mov    eax,DWORD PTR [eax]
  6f740a:	mov    DWORD PTR [esp+0x4],eax
  6f740e:	lea    eax,[esp+0x1c0]
  6f7415:	mov    DWORD PTR [esp],eax
  6f7418:	call   447df6
  6f741d:	mov    esi,DWORD PTR [ebp+0xc]
  6f7420:	mov    DWORD PTR [esp],esi
  6f7423:	mov    DWORD PTR [esp+0x4],0x0
  6f742b:	call   179ccc9  ; ABH.Shared.Models.PlayerData::get_PvPBanner
  6f7430:	test   eax,eax
  6f7432:	je     6f748a
  6f7434:	mov    DWORD PTR [esp],esi
  6f7437:	mov    DWORD PTR [esp+0x4],0x0
  6f743f:	call   179ccc9  ; ABH.Shared.Models.PlayerData::get_PvPBanner
  6f7444:	mov    esi,eax
  6f7446:	lea    eax,[ebx+0x45f1c]
  6f744c:	mov    eax,DWORD PTR [eax]
  6f744e:	mov    DWORD PTR [esp],eax
  6f7451:	call   20bfb2
  6f7456:	mov    edi,eax
  6f7458:	mov    DWORD PTR [esp+0x4],esi
  6f745c:	mov    esi,DWORD PTR [ebp+0xc]
  6f745f:	mov    DWORD PTR [esp],edi
  6f7462:	mov    DWORD PTR [esp+0x8],0x0
  6f746a:	call   eab860  ; ABH.GameDatas.BannerGameData::.ctor
  6f746f:	mov    eax,DWORD PTR [ebp+0x8]
  6f7472:	mov    DWORD PTR [eax+0x1c],edi
  6f7475:	mov    DWORD PTR [esp+0x5c],0x0
  6f747d:	mov    DWORD PTR [esp+0x60],0x0
  6f7485:	jmp    6f7880
  6f748a:	mov    eax,DWORD PTR [esp+0x44]
  6f748e:	mov    eax,DWORD PTR [eax]
  6f7490:	mov    DWORD PTR [esp+0x4],eax
  6f7494:	mov    edi,DWORD PTR [ebp+0x8]
  6f7497:	mov    DWORD PTR [esp],edi
  6f749a:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  6f749f:	test   eax,eax
  6f74a1:	je     6fa135
  6f74a7:	mov    DWORD PTR [esp],eax
  6f74aa:	mov    DWORD PTR [esp+0x4],0x0
  6f74b2:	call   179cbbe  ; ABH.Shared.Models.PlayerData::get_Level
  6f74b7:	mov    DWORD PTR [esp+0x64],eax
  6f74bb:	lea    eax,[ebx+0x45f1c]
  6f74c1:	mov    eax,DWORD PTR [eax]
  6f74c3:	mov    DWORD PTR [esp],eax
  6f74c6:	call   20bfb2
  6f74cb:	mov    esi,eax
  6f74cd:	lea    eax,[ebx+0x57288]  ; literal "bird_banner"
  6f74d3:	mov    eax,DWORD PTR [eax]
  6f74d5:	mov    ecx,DWORD PTR [esp+0x64]
  6f74d9:	mov    DWORD PTR [esp+0x8],ecx
  6f74dd:	mov    DWORD PTR [esp+0x4],eax
  6f74e1:	mov    DWORD PTR [esp],esi
  6f74e4:	mov    DWORD PTR [esp+0xc],0x0
  6f74ec:	call   eab499  ; ABH.GameDatas.BannerGameData::.ctor
  6f74f1:	mov    DWORD PTR [edi+0x1c],esi
  6f74f4:	test   esi,esi
  6f74f6:	je     6fa135
  6f74fc:	mov    DWORD PTR [esp],esi
  6f74ff:	mov    DWORD PTR [esp+0x4],0x0
  6f7507:	call   eabbf3  ; ABH.GameDatas.BannerGameData::get_Data
  6f750c:	mov    DWORD PTR [esp+0x4],eax
  6f7510:	mov    eax,DWORD PTR [ebp+0xc]
  6f7513:	mov    esi,eax
  6f7515:	mov    DWORD PTR [esp],esi
  6f7518:	mov    DWORD PTR [esp+0x8],0x0
  6f7520:	call   179d598  ; ABH.Shared.Models.PlayerData::set_PvPBanner
  6f7525:	mov    DWORD PTR [esp],esi
  6f7528:	mov    DWORD PTR [esp+0x4],0x0
  6f7530:	call   179ccc9  ; ABH.Shared.Models.PlayerData::get_PvPBanner
  6f7535:	mov    esi,eax
  6f7537:	mov    eax,DWORD PTR [esp+0x44]
  6f753b:	mov    eax,DWORD PTR [eax]
  6f753d:	mov    DWORD PTR [esp+0x4],eax
  6f7541:	mov    DWORD PTR [esp],edi
  6f7544:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  6f7549:	test   eax,eax
  6f754b:	je     6fa135
  6f7551:	mov    DWORD PTR [esp],eax
  6f7554:	mov    DWORD PTR [esp+0x4],0x0
  6f755c:	call   179cbbe  ; ABH.Shared.Models.PlayerData::get_Level
  6f7561:	test   esi,esi
  6f7563:	je     6fa135
  6f7569:	mov    DWORD PTR [esp+0x4],eax
  6f756d:	mov    DWORD PTR [esp],esi
  6f7570:	mov    DWORD PTR [esp+0x8],0x0
  6f7578:	call   179a0d3  ; ABH.Shared.Models.Character.BannerData::set_Level
  6f757d:	mov    eax,DWORD PTR [edi+0x1c]
  6f7580:	test   eax,eax
  6f7582:	je     6fa135
  6f7588:	mov    DWORD PTR [esp],eax
  6f758b:	mov    DWORD PTR [esp+0x4],0x0
  6f7593:	call   eabbe3  ; ABH.GameDatas.BannerGameData::get_InventoryGameData
  6f7598:	test   eax,eax
  6f759a:	je     6fa135
  6f75a0:	mov    eax,DWORD PTR [eax+0x10]
  6f75a3:	test   eax,eax
  6f75a5:	je     6fa135
  6f75ab:	lea    ecx,[ebx+0x4ac44]
  6f75b1:	mov    ecx,DWORD PTR [ecx]
  6f75b3:	mov    DWORD PTR [esp+0x4],ecx
  6f75b7:	mov    DWORD PTR [esp],eax
  6f75ba:	call   5a175a  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e68190(kind=0x15,data=0x1f27644)>::get_Values | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, object>::get_Values
  6f75bf:	test   eax,eax
  6f75c1:	je     6fa135
  6f75c7:	lea    ecx,[ebx+0x4ac48]
  6f75cd:	mov    ecx,DWORD PTR [ecx]
  6f75cf:	mov    DWORD PTR [esp+0x8],ecx
  6f75d3:	mov    DWORD PTR [esp+0x4],eax
  6f75d7:	lea    eax,[esp+0xf0]
  6f75de:	mov    DWORD PTR [esp],eax
  6f75e1:	call   1229ff0  ; shared address: System.Collections.Generic.Dictionary`2+ValueCollection<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e68190(kind=0x15,data=0x1f27644)>::GetEnumerator | System.Collections.Generic.Dictionary`2+ValueCollection<ABH.Shared.Generic.InventoryItemType, object>::GetEnumerator
  6f75e6:	sub    esp,0x4
  6f75e9:	mov    eax,DWORD PTR [esp+0x100]
  6f75f0:	mov    DWORD PTR [esp+0x1b0],eax
  6f75f7:	movsd  xmm0,QWORD PTR [esp+0xf0]
  6f7600:	movsd  xmm1,QWORD PTR [esp+0xf8]
  6f7609:	movsd  QWORD PTR [esp+0x1a8],xmm1
  6f7612:	movsd  QWORD PTR [esp+0x1a0],xmm0
  6f761b:	mov    DWORD PTR [esp+0x60],0x0
  6f7623:	lea    eax,[ebx+0x4ac50]
  6f7629:	mov    DWORD PTR [esp+0x58],eax
  6f762d:	mov    edi,ebx
  6f762f:	mov    DWORD PTR [esp+0x5c],0x0
  6f7637:	mov    eax,DWORD PTR [esp+0x58]
  6f763b:	mov    eax,DWORD PTR [eax]
  6f763d:	mov    DWORD PTR [esp+0x4],eax
  6f7641:	lea    eax,[esp+0x1a0]
  6f7648:	mov    DWORD PTR [esp],eax
  6f764b:	mov    ebx,edi
  6f764d:	call   1222bc3
  6f7652:	test   al,al
  6f7654:	je     6f77d9
  6f765a:	lea    eax,[edi+0x4ac4c]
  6f7660:	mov    eax,DWORD PTR [eax]
  6f7662:	mov    DWORD PTR [esp+0x4],eax
  6f7666:	lea    eax,[esp+0x1a0]
  6f766d:	mov    DWORD PTR [esp],eax
  6f7670:	mov    ebx,edi
  6f7672:	call   1222c52
  6f7677:	test   eax,eax
  6f7679:	je     6f7803
  6f767f:	lea    ecx,[edi+0x4a81c]
  6f7685:	mov    ecx,DWORD PTR [ecx]
  6f7687:	mov    DWORD PTR [esp+0x8],ecx
  6f768b:	mov    DWORD PTR [esp+0x4],eax
  6f768f:	lea    eax,[esp+0xe0]
  6f7696:	mov    DWORD PTR [esp],eax
  6f7699:	mov    ebx,edi
  6f769b:	call   4c350f  ; shared address: System.Collections.Generic.List`1<object>::GetEnumerator | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::GetEnumerator | System.Collections.Generic.List`1<System.Net.Cookie>::GetEnumerator | +129 other aliases
  6f76a0:	sub    esp,0x4
  6f76a3:	movsd  xmm0,QWORD PTR [esp+0xe0]
  6f76ac:	movsd  xmm1,QWORD PTR [esp+0xe8]
  6f76b5:	movsd  QWORD PTR [esp+0x198],xmm1
  6f76be:	movsd  QWORD PTR [esp+0x190],xmm0
  6f76c7:	mov    ebx,edi
  6f76c9:	lea    eax,[ebx+0x4a824]
  6f76cf:	mov    eax,DWORD PTR [eax]
  6f76d1:	mov    DWORD PTR [esp+0x4],eax
  6f76d5:	lea    eax,[esp+0x190]
  6f76dc:	mov    DWORD PTR [esp],eax
  6f76df:	call   447e4e
  6f76e4:	mov    edi,ebx
  6f76e6:	mov    esi,0x1ed
  6f76eb:	test   al,al
  6f76ed:	je     6f772e
  6f76ef:	mov    ebx,edi
  6f76f1:	lea    eax,[ebx+0x4a820]
  6f76f7:	mov    eax,DWORD PTR [eax]
  6f76f9:	mov    DWORD PTR [esp+0x4],eax
  6f76fd:	lea    eax,[esp+0x190]
  6f7704:	mov    DWORD PTR [esp],eax
  6f7707:	call   447f1e
  6f770c:	mov    ecx,DWORD PTR [ebp+0x8]
  6f770f:	mov    ecx,DWORD PTR [ecx+0x10]
  6f7712:	test   ecx,ecx
  6f7714:	je     6f7734
  6f7716:	mov    DWORD PTR [esp+0x4],eax
  6f771a:	mov    DWORD PTR [esp],ecx
  6f771d:	mov    DWORD PTR [esp+0x8],0x0
  6f7725:	call   6e3d8d  ; ABH.GameDatas.InventoryGameData::AddNewItemToInventory
  6f772a:	jmp    6f76c9
  6f772c:	jmp    6f773e
  6f772e:	mov    eax,DWORD PTR [esp+0x5c]
  6f7732:	jmp    6f775e
  6f7734:	call   1fbc48
  6f7739:	jmp    6fa16d
  6f773e:	cmp    edx,0x1
  6f7741:	jne    6f780f
  6f7747:	mov    DWORD PTR [esp],eax
  6f774a:	call   1ba3f0
  6f774f:	mov    esi,DWORD PTR [eax]
  6f7751:	mov    edi,ebx
  6f7753:	call   1b9ce0
  6f7758:	mov    eax,esi
  6f775a:	mov    esi,DWORD PTR [esp+0x60]
  6f775e:	mov    DWORD PTR [esp+0x64],eax
  6f7762:	mov    DWORD PTR [esp+0x60],esi
  6f7766:	lea    eax,[edi+0x4a828]
  6f776c:	mov    eax,DWORD PTR [eax]
  6f776e:	mov    DWORD PTR [esp+0x4],eax
  6f7772:	lea    eax,[esp+0x190]
  6f7779:	mov    DWORD PTR [esp],eax
  6f777c:	mov    ebx,edi
  6f777e:	call   447df6
  6f7783:	mov    eax,DWORD PTR [esp+0x64]
  6f7787:	mov    DWORD PTR [esp+0x60],0x0
  6f778f:	cmp    esi,0x1ed
  6f7795:	mov    DWORD PTR [esp+0x5c],eax
  6f7799:	je     6f7637
  6f779f:	mov    DWORD PTR [esp+0x5c],0x0
  6f77a7:	test   eax,eax
  6f77a9:	mov    DWORD PTR [esp+0x60],esi
  6f77ad:	je     6f7637
  6f77b3:	mov    DWORD PTR [esp+0x60],esi
  6f77b7:	mov    DWORD PTR [esp],eax
  6f77ba:	mov    ebx,edi
  6f77bc:	call   1fbb20
  6f77c1:	jmp    6f7637
  6f77c6:	mov    ebx,edi
  6f77c8:	jmp    6f780f
  6f77ca:	call   1fbc48
  6f77cf:	jmp    6fa18a
  6f77d4:	jmp    6f73c1
  6f77d9:	mov    ebx,edi
  6f77db:	lea    eax,[ebx+0x4ac54]
  6f77e1:	mov    eax,DWORD PTR [eax]
  6f77e3:	mov    DWORD PTR [esp+0x4],eax
  6f77e7:	lea    eax,[esp+0x1a0]
  6f77ee:	mov    DWORD PTR [esp],eax
  6f77f1:	call   1222b3a
  6f77f6:	mov    DWORD PTR [esp+0x60],0x0
  6f77fe:	mov    esi,DWORD PTR [ebp+0xc]
  6f7801:	jmp    6f7880
  6f7803:	mov    ebx,edi
  6f7805:	call   1fbc48
  6f780a:	jmp    6fa18f
  6f780f:	mov    ecx,0x1
  6f7814:	cmp    edx,ecx
  6f7816:	jne    6fa143
  6f781c:	mov    DWORD PTR [esp],eax
  6f781f:	call   1ba3f0
  6f7824:	mov    esi,DWORD PTR [eax]
  6f7826:	call   1b9ce0
  6f782b:	lea    eax,[ebx+0x4ac54]
  6f7831:	mov    eax,DWORD PTR [eax]
  6f7833:	mov    DWORD PTR [esp+0x4],eax
  6f7837:	lea    eax,[esp+0x1a0]
  6f783e:	mov    DWORD PTR [esp],eax
  6f7841:	mov    edi,ebx
  6f7843:	call   1222b3a
  6f7848:	cmp    DWORD PTR [esp+0x60],0x20c
  6f7850:	jne    6f7860
  6f7852:	mov    DWORD PTR [esp+0x5c],esi
  6f7856:	mov    DWORD PTR [esp+0x60],0x0
  6f785e:	jmp    6f787b
  6f7860:	mov    DWORD PTR [esp+0x5c],0x0
  6f7868:	test   esi,esi
  6f786a:	je     6f787b
  6f786c:	mov    DWORD PTR [esp],esi
  6f786f:	mov    ebx,edi
  6f7871:	call   1fbb20
  6f7876:	mov    esi,DWORD PTR [ebp+0xc]
  6f7879:	jmp    6f7880
  6f787b:	mov    ebx,edi
  6f787d:	mov    esi,DWORD PTR [ebp+0xc]
  6f7880:	mov    DWORD PTR [esp],esi
  6f7883:	mov    DWORD PTR [esp+0x4],0x0
  6f788b:	call   179cf58  ; ABH.Shared.Models.PlayerData::get_CurrentClassUpgradeShopOffers
  6f7890:	test   eax,eax
  6f7892:	jne    6f78d2
  6f7894:	lea    eax,[ebx+0x43ba4]
  6f789a:	mov    eax,DWORD PTR [eax]
  6f789c:	mov    DWORD PTR [esp],eax
  6f789f:	call   20bfb2
  6f78a4:	mov    edi,esi
  6f78a6:	mov    esi,eax
  6f78a8:	lea    eax,[ebx+0x48c1c]
  6f78ae:	mov    eax,DWORD PTR [eax]
  6f78b0:	mov    DWORD PTR [esp+0x4],eax
  6f78b4:	mov    DWORD PTR [esp],esi
  6f78b7:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  6f78bc:	mov    DWORD PTR [esp+0x4],esi
  6f78c0:	mov    esi,edi
  6f78c2:	mov    DWORD PTR [esp],esi
  6f78c5:	mov    DWORD PTR [esp+0x8],0x0
  6f78cd:	call   179cf68  ; ABH.Shared.Models.PlayerData::set_CurrentClassUpgradeShopOffers
  6f78d2:	mov    DWORD PTR [esp],esi
  6f78d5:	mov    DWORD PTR [esp+0x4],0x0
  6f78dd:	call   179d289  ; ABH.Shared.Models.PlayerData::get_SponsoredAdUses
  6f78e2:	test   eax,eax
  6f78e4:	jne    6f7924
  6f78e6:	lea    eax,[ebx+0x45438]
  6f78ec:	mov    eax,DWORD PTR [eax]
  6f78ee:	mov    DWORD PTR [esp],eax
  6f78f1:	call   20bfb2
  6f78f6:	mov    edi,esi
  6f78f8:	mov    esi,eax
  6f78fa:	lea    eax,[ebx+0x49834]
  6f7900:	mov    eax,DWORD PTR [eax]
  6f7902:	mov    DWORD PTR [esp+0x4],eax
  6f7906:	mov    DWORD PTR [esp],esi
  6f7909:	call   61fb90  ; shared address: System.Collections.Generic.Dictionary`2<string, uint>::.ctor | System.Collections.Generic.Dictionary`2<object, uint>::.ctor
  6f790e:	mov    DWORD PTR [esp+0x4],esi
  6f7912:	mov    esi,edi
  6f7914:	mov    DWORD PTR [esp],esi
  6f7917:	mov    DWORD PTR [esp+0x8],0x0
  6f791f:	call   179d29c  ; ABH.Shared.Models.PlayerData::set_SponsoredAdUses
  6f7924:	mov    DWORD PTR [esp],esi
  6f7927:	mov    DWORD PTR [esp+0x4],0x0
  6f792f:	call   179d050  ; ABH.Shared.Models.PlayerData::get_CurrentSpecialShopOffers
  6f7934:	test   eax,eax
  6f7936:	jne    6f7976
  6f7938:	lea    eax,[ebx+0x45538]
  6f793e:	mov    eax,DWORD PTR [eax]
  6f7940:	mov    DWORD PTR [esp],eax
  6f7943:	call   20bfb2
  6f7948:	mov    edi,esi
  6f794a:	mov    esi,eax
  6f794c:	lea    eax,[ebx+0x499b0]
  6f7952:	mov    eax,DWORD PTR [eax]
  6f7954:	mov    DWORD PTR [esp+0x4],eax
  6f7958:	mov    DWORD PTR [esp],esi
  6f795b:	call   60b56f  ; shared address: System.Collections.Generic.Dictionary`2<string, System.DateTime>::.ctor | System.Collections.Generic.Dictionary`2<object, System.DateTime>::.ctor
  6f7960:	mov    DWORD PTR [esp+0x4],esi
  6f7964:	mov    esi,edi
  6f7966:	mov    DWORD PTR [esp],esi
  6f7969:	mov    DWORD PTR [esp+0x8],0x0
  6f7971:	call   179d060  ; ABH.Shared.Models.PlayerData::set_CurrentSpecialShopOffers
  6f7976:	mov    DWORD PTR [esp],esi
  6f7979:	mov    DWORD PTR [esp+0x4],0x0
  6f7981:	call   179d0dc  ; ABH.Shared.Models.PlayerData::get_TemporaryOpenHotspots
  6f7986:	test   eax,eax
  6f7988:	jne    6f79c8
  6f798a:	lea    eax,[ebx+0x43ba4]
  6f7990:	mov    eax,DWORD PTR [eax]
  6f7992:	mov    DWORD PTR [esp],eax
  6f7995:	call   20bfb2
  6f799a:	mov    edi,esi
  6f799c:	mov    esi,eax
  6f799e:	lea    eax,[ebx+0x48c1c]
  6f79a4:	mov    eax,DWORD PTR [eax]
  6f79a6:	mov    DWORD PTR [esp+0x4],eax
  6f79aa:	mov    DWORD PTR [esp],esi
  6f79ad:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  6f79b2:	mov    DWORD PTR [esp+0x4],esi
  6f79b6:	mov    esi,edi
  6f79b8:	mov    DWORD PTR [esp],esi
  6f79bb:	mov    DWORD PTR [esp+0x8],0x0
  6f79c3:	call   179d0ec  ; ABH.Shared.Models.PlayerData::set_TemporaryOpenHotspots
  6f79c8:	mov    DWORD PTR [esp],esi
  6f79cb:	mov    DWORD PTR [esp+0x4],0x0
  6f79d3:	call   179d0ff  ; ABH.Shared.Models.PlayerData::get_ShopOffersNew
  6f79d8:	test   eax,eax
  6f79da:	jne    6f7a1a
  6f79dc:	lea    eax,[ebx+0x444fc]
  6f79e2:	mov    eax,DWORD PTR [eax]
  6f79e4:	mov    DWORD PTR [esp],eax
  6f79e7:	call   20bfb2
  6f79ec:	mov    edi,esi
  6f79ee:	mov    esi,eax
  6f79f0:	lea    eax,[ebx+0x495e0]
  6f79f6:	mov    eax,DWORD PTR [eax]
  6f79f8:	mov    DWORD PTR [esp+0x4],eax
  6f79fc:	mov    DWORD PTR [esp],esi
  6f79ff:	call   602db7  ; shared address: System.Collections.Generic.Dictionary`2<string, bool>::.ctor | System.Collections.Generic.Dictionary`2<object, bool>::.ctor
  6f7a04:	mov    DWORD PTR [esp+0x4],esi
  6f7a08:	mov    esi,edi
  6f7a0a:	mov    DWORD PTR [esp],esi
  6f7a0d:	mov    DWORD PTR [esp+0x8],0x0
  6f7a15:	call   179d10f  ; ABH.Shared.Models.PlayerData::set_ShopOffersNew
  6f7a1a:	mov    DWORD PTR [esp],esi
  6f7a1d:	mov    DWORD PTR [esp+0x4],0x0
  6f7a25:	call   179d122  ; ABH.Shared.Models.PlayerData::get_DungeonsAlreadyPlayedToday
  6f7a2a:	test   eax,eax
  6f7a2c:	jne    6f7a6c
  6f7a2e:	lea    eax,[ebx+0x43ba4]
  6f7a34:	mov    eax,DWORD PTR [eax]
  6f7a36:	mov    DWORD PTR [esp],eax
  6f7a39:	call   20bfb2
  6f7a3e:	mov    edi,esi
  6f7a40:	mov    esi,eax
  6f7a42:	lea    eax,[ebx+0x48c1c]
  6f7a48:	mov    eax,DWORD PTR [eax]
  6f7a4a:	mov    DWORD PTR [esp+0x4],eax
  6f7a4e:	mov    DWORD PTR [esp],esi
  6f7a51:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  6f7a56:	mov    DWORD PTR [esp+0x4],esi
  6f7a5a:	mov    esi,edi
  6f7a5c:	mov    DWORD PTR [esp],esi
  6f7a5f:	mov    DWORD PTR [esp+0x8],0x0
  6f7a67:	call   179d132  ; ABH.Shared.Models.PlayerData::set_DungeonsAlreadyPlayedToday
  6f7a6c:	mov    DWORD PTR [esp],esi
  6f7a6f:	mov    DWORD PTR [esp+0x4],0x0
  6f7a77:	call   179d5c4  ; ABH.Shared.Models.PlayerData::get_PvpObjectives
  6f7a7c:	test   eax,eax
  6f7a7e:	jne    6f7abe
  6f7a80:	lea    eax,[ebx+0x45548]
  6f7a86:	mov    eax,DWORD PTR [eax]
  6f7a88:	mov    DWORD PTR [esp],eax
  6f7a8b:	call   20bfb2
  6f7a90:	mov    edi,esi
  6f7a92:	mov    esi,eax
  6f7a94:	lea    eax,[ebx+0x499bc]
  6f7a9a:	mov    eax,DWORD PTR [eax]
  6f7a9c:	mov    DWORD PTR [esp+0x4],eax
  6f7aa0:	mov    DWORD PTR [esp],esi
  6f7aa3:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  6f7aa8:	mov    DWORD PTR [esp+0x4],esi
  6f7aac:	mov    esi,edi
  6f7aae:	mov    DWORD PTR [esp],esi
  6f7ab1:	mov    DWORD PTR [esp+0x8],0x0
  6f7ab9:	call   179d5d7  ; ABH.Shared.Models.PlayerData::set_PvpObjectives
  6f7abe:	mov    DWORD PTR [esp],esi
  6f7ac1:	mov    DWORD PTR [esp+0x4],0x0
  6f7ac9:	call   179d6fc  ; ABH.Shared.Models.PlayerData::get_AchievementTracking
  6f7ace:	test   eax,eax
  6f7ad0:	jne    6f7b0c
  6f7ad2:	lea    eax,[ebx+0x45484]
  6f7ad8:	mov    eax,DWORD PTR [eax]
  6f7ada:	mov    DWORD PTR [esp],eax
  6f7add:	call   20bfb2
  6f7ae2:	mov    edi,esi
  6f7ae4:	mov    esi,eax
  6f7ae6:	mov    DWORD PTR [esp],esi
  6f7ae9:	mov    DWORD PTR [esp+0x4],0x0
  6f7af1:	call   17996e2  ; ABH.Shared.Models.AchievementData::.ctor
  6f7af6:	mov    DWORD PTR [esp+0x4],esi
  6f7afa:	mov    esi,edi
  6f7afc:	mov    DWORD PTR [esp],esi
  6f7aff:	mov    DWORD PTR [esp+0x8],0x0
  6f7b07:	call   179d70f  ; ABH.Shared.Models.PlayerData::set_AchievementTracking
  6f7b0c:	mov    DWORD PTR [esp],esi
  6f7b0f:	mov    DWORD PTR [esp+0x4],0x0
  6f7b17:	call   179dc44  ; ABH.Shared.Models.PlayerData::get_EquippedSkins
  6f7b1c:	test   eax,eax
  6f7b1e:	jne    6f7b5c
  6f7b20:	lea    eax,[ebx+0x44d10]
  6f7b26:	mov    eax,DWORD PTR [eax]
  6f7b28:	mov    DWORD PTR [esp],eax
  6f7b2b:	call   20bfb2
  6f7b30:	mov    edi,esi
  6f7b32:	mov    esi,eax
  6f7b34:	lea    eax,[ebx+0x49298]
  6f7b3a:	mov    eax,DWORD PTR [eax]
  6f7b3c:	mov    DWORD PTR [esp+0x4],eax
  6f7b40:	mov    DWORD PTR [esp],esi
  6f7b43:	call   617b0b  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, unresolved-type@0x1e5f010(kind=0x15,data=0x1f172e4)>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, System.Xml.XmlQualifiedName>::.ctor | +55 other aliases
  6f7b48:	mov    DWORD PTR [esp+0x4],esi
  6f7b4c:	mov    DWORD PTR [esp],edi
  6f7b4f:	mov    DWORD PTR [esp+0x8],0x0
  6f7b57:	call   179dc57  ; ABH.Shared.Models.PlayerData::set_EquippedSkins
  6f7b5c:	mov    eax,DWORD PTR [ebp+0x8]
  6f7b5f:	mov    esi,eax
  6f7b61:	mov    DWORD PTR [esp],esi
  6f7b64:	call   6fa9cd  ; ABH.GameDatas.PlayerGameData::AddExperienceChangedHandler
  6f7b69:	mov    eax,DWORD PTR [esp+0x44]
  6f7b6d:	mov    eax,DWORD PTR [eax]
  6f7b6f:	mov    DWORD PTR [esp+0x4],eax
  6f7b73:	mov    DWORD PTR [esp],esi
  6f7b76:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  6f7b7b:	test   eax,eax
  6f7b7d:	je     6fa135
  6f7b83:	mov    DWORD PTR [esp],eax
  6f7b86:	mov    DWORD PTR [esp+0x8],0x0
  6f7b8e:	mov    DWORD PTR [esp+0x4],0x1
  6f7b96:	call   179de9a  ; ABH.Shared.Models.PlayerData::set_CinematricIntroStarted
  6f7b9b:	lea    eax,[ebx+0x45820]
  6f7ba1:	mov    DWORD PTR [esp+0x38],eax
  6f7ba5:	mov    eax,DWORD PTR [eax]
  6f7ba7:	test   BYTE PTR [eax+0xb2],0x1
  6f7bae:	je     6f7bbe
  6f7bb0:	cmp    DWORD PTR [eax+0x60],0x0
  6f7bb4:	jne    6f7bbe
  6f7bb6:	mov    DWORD PTR [esp],eax
  6f7bb9:	call   1db0b8
  6f7bbe:	mov    DWORD PTR [esp+0x4],0x0
  6f7bc6:	mov    DWORD PTR [esp],0x0
  6f7bcd:	call   107cf95  ; DIContainerBalancing::get_Service
  6f7bd2:	test   eax,eax
  6f7bd4:	je     6fa135
  6f7bda:	lea    ecx,[ebx+0x4ac58]
  6f7be0:	mov    DWORD PTR [esp+0x48],ecx
  6f7be4:	mov    DWORD PTR [esp+0x68],ebx
  6f7be8:	mov    edx,DWORD PTR [ecx]
  6f7bea:	mov    DWORD PTR [esp+0x58],edx
  6f7bee:	mov    ecx,DWORD PTR [edx+0xc]
  6f7bf1:	movzx  ebx,WORD PTR [edx+0x2c]
  6f7bf5:	mov    edx,DWORD PTR [eax]
  6f7bf7:	mov    DWORD PTR [esp+0x64],eax
  6f7bfb:	movzx  eax,WORD PTR [edx+0xaa]
  6f7c02:	test   eax,eax
  6f7c04:	je     6f7c15
  6f7c06:	mov    esi,DWORD PTR [edx+0x4c]
  6f7c09:	xor    edi,edi
  6f7c0b:	cmp    DWORD PTR [esi+edi*8],ecx
  6f7c0e:	je     6f7c2f
  6f7c10:	inc    edi
  6f7c11:	cmp    edi,eax
  6f7c13:	jb     6f7c0b
  6f7c15:	mov    DWORD PTR [esp+0x8],ebx
  6f7c19:	mov    DWORD PTR [esp+0x4],ecx
  6f7c1d:	mov    esi,DWORD PTR [esp+0x64]
  6f7c21:	mov    DWORD PTR [esp],esi
  6f7c24:	mov    ebx,DWORD PTR [esp+0x68]
  6f7c28:	call   1c1964
  6f7c2d:	jmp    6f7c42
  6f7c2f:	add    ebx,DWORD PTR [esi+edi*8+0x4]
  6f7c33:	lea    eax,[edx+ebx*8+0xb4]
  6f7c3a:	mov    ebx,DWORD PTR [esp+0x68]
  6f7c3e:	mov    esi,DWORD PTR [esp+0x64]
  6f7c42:	mov    eax,DWORD PTR [eax+0x4]
  6f7c45:	mov    ecx,DWORD PTR [esp+0x58]
  6f7c49:	mov    DWORD PTR [esp+0x4],ecx
  6f7c4d:	mov    DWORD PTR [esp],eax
  6f7c50:	call   1da450
  6f7c55:	mov    DWORD PTR [esp+0x4],eax
  6f7c59:	mov    DWORD PTR [esp],esi
  6f7c5c:	call   DWORD PTR [eax]
  6f7c5e:	mov    esi,eax
  6f7c60:	lea    eax,[ebx+0x45f20]
  6f7c66:	mov    DWORD PTR [esp+0x58],eax
  6f7c6a:	mov    eax,DWORD PTR [eax]
  6f7c6c:	mov    eax,DWORD PTR [eax+0x50]
  6f7c6f:	cmp    DWORD PTR [eax+0x4],0x0
  6f7c73:	jne    6f7cd6
  6f7c75:	lea    eax,[ebx+0x4ac5c]
  6f7c7b:	mov    eax,DWORD PTR [eax]
  6f7c7d:	mov    DWORD PTR [esp+0x64],eax
  6f7c81:	lea    eax,[ebx+0x45f24]
  6f7c87:	mov    eax,DWORD PTR [eax]
  6f7c89:	mov    DWORD PTR [esp],eax
  6f7c8c:	call   20bfb2
  6f7c91:	mov    edi,eax
  6f7c93:	mov    eax,DWORD PTR [esp+0x64]
  6f7c97:	mov    DWORD PTR [esp+0xd8],eax
  6f7c9e:	lea    eax,[ebx+0x4ac60]
  6f7ca4:	mov    eax,DWORD PTR [eax]
  6f7ca6:	mov    DWORD PTR [esp+0xc],eax
  6f7caa:	mov    eax,DWORD PTR [esp+0xd8]
  6f7cb1:	mov    DWORD PTR [esp+0x8],eax
  6f7cb5:	mov    DWORD PTR [esp],edi
  6f7cb8:	mov    DWORD PTR [esp+0x4],0x0
  6f7cc0:	call   159e10c  ; shared address: System.Func`2<System.Reflection.MemberInfo, bool>::.ctor | System.Func`2<System.Reflection.ConstructorInfo, bool>::.ctor | System.Func`2<System.Reflection.FieldInfo, bool>::.ctor | +68 other aliases
  6f7cc5:	mov    ecx,DWORD PTR [esp+0x58]
  6f7cc9:	mov    eax,DWORD PTR [ecx]
  6f7ccb:	mov    eax,DWORD PTR [eax+0x50]
  6f7cce:	mov    DWORD PTR [eax+0x4],edi
  6f7cd1:	mov    eax,DWORD PTR [ecx]
  6f7cd3:	mov    eax,DWORD PTR [eax+0x50]
  6f7cd6:	mov    eax,DWORD PTR [eax+0x4]
  6f7cd9:	lea    ecx,[ebx+0x4ac64]
  6f7cdf:	mov    DWORD PTR [esp+0x40],ecx
  6f7ce3:	mov    ecx,DWORD PTR [ecx]
  6f7ce5:	mov    DWORD PTR [esp+0xc],ecx
  6f7ce9:	mov    DWORD PTR [esp+0x8],eax
  6f7ced:	mov    DWORD PTR [esp+0x4],esi
  6f7cf1:	mov    DWORD PTR [esp],0x0
  6f7cf8:	call   9c0237  ; shared address: System.Linq.Enumerable::Where | System.Linq.Enumerable::Where | System.Linq.Enumerable::Where | +38 other aliases
  6f7cfd:	mov    esi,eax
  6f7cff:	test   esi,esi
  6f7d01:	je     6fa135
  6f7d07:	lea    eax,[ebx+0x45f28]
  6f7d0d:	mov    DWORD PTR [esp+0x3c],eax
  6f7d11:	mov    eax,DWORD PTR [eax]
  6f7d13:	mov    ebx,DWORD PTR [esi]
  6f7d15:	movzx  edx,WORD PTR [ebx+0xaa]
  6f7d1c:	test   edx,edx
  6f7d1e:	je     6f7d2f
  6f7d20:	mov    edi,DWORD PTR [ebx+0x4c]
  6f7d23:	xor    ecx,ecx
  6f7d25:	cmp    DWORD PTR [edi+ecx*8],eax
  6f7d28:	je     6f7d4b
  6f7d2a:	inc    ecx
  6f7d2b:	cmp    ecx,edx
  6f7d2d:	jb     6f7d25
  6f7d2f:	mov    DWORD PTR [esp+0x4],eax
  6f7d33:	mov    DWORD PTR [esp],esi
  6f7d36:	mov    DWORD PTR [esp+0x8],0x0
  6f7d3e:	mov    ebx,DWORD PTR [esp+0x68]
  6f7d42:	call   1c1964
  6f7d47:	mov    ecx,eax
  6f7d49:	jmp    6f7d5a
  6f7d4b:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  6f7d4f:	lea    ecx,[ebx+eax*8+0xb4]
  6f7d56:	mov    ebx,DWORD PTR [esp+0x68]
  6f7d5a:	mov    eax,DWORD PTR [ecx+0x4]
  6f7d5d:	mov    DWORD PTR [esp+0x4],eax
  6f7d61:	mov    DWORD PTR [esp],esi
  6f7d64:	call   DWORD PTR [ecx]
  6f7d66:	mov    DWORD PTR [esp+0x64],eax
  6f7d6a:	test   eax,eax
  6f7d6c:	je     6f8269
  6f7d72:	lea    eax,[ebx+0x4319c]
  6f7d78:	mov    DWORD PTR [esp+0x4c],eax
  6f7d7c:	mov    DWORD PTR [esp+0x68],ebx
  6f7d80:	mov    eax,DWORD PTR [esp+0x4c]
  6f7d84:	mov    eax,DWORD PTR [eax]
  6f7d86:	mov    ebx,DWORD PTR [esp+0x64]
  6f7d8a:	mov    ecx,DWORD PTR [ebx]
  6f7d8c:	movzx  edx,WORD PTR [ecx+0xaa]
  6f7d93:	test   edx,edx
  6f7d95:	je     6f7da6
  6f7d97:	mov    esi,DWORD PTR [ecx+0x4c]
  6f7d9a:	xor    edi,edi
  6f7d9c:	cmp    DWORD PTR [esi+edi*8],eax
  6f7d9f:	je     6f7dc4
  6f7da1:	inc    edi
  6f7da2:	cmp    edi,edx
  6f7da4:	jb     6f7d9c
  6f7da6:	mov    DWORD PTR [esp+0x4],eax
  6f7daa:	mov    DWORD PTR [esp],ebx
  6f7dad:	mov    DWORD PTR [esp+0x8],0x1
  6f7db5:	mov    ebx,DWORD PTR [esp+0x68]
  6f7db9:	call   1c1964
  6f7dbe:	mov    ebx,DWORD PTR [esp+0x64]
  6f7dc2:	jmp    6f7dcf
  6f7dc4:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  6f7dc8:	lea    eax,[ecx+eax*8+0xbc]
  6f7dcf:	mov    ecx,DWORD PTR [eax]
  6f7dd1:	mov    eax,DWORD PTR [eax+0x4]
  6f7dd4:	mov    DWORD PTR [esp+0x4],eax
  6f7dd8:	mov    DWORD PTR [esp],ebx
  6f7ddb:	mov    ebx,DWORD PTR [esp+0x68]
  6f7ddf:	call   ecx
  6f7de1:	test   al,al
  6f7de3:	je     6fa01c
  6f7de9:	mov    eax,DWORD PTR [esp+0x68]
  6f7ded:	lea    eax,[eax+0x45f2c]
  6f7df3:	mov    eax,DWORD PTR [eax]
  6f7df5:	mov    ebx,DWORD PTR [esp+0x64]
  6f7df9:	mov    ecx,DWORD PTR [ebx]
  6f7dfb:	movzx  edx,WORD PTR [ecx+0xaa]
  6f7e02:	test   edx,edx
  6f7e04:	je     6f7e15
  6f7e06:	mov    esi,DWORD PTR [ecx+0x4c]
  6f7e09:	xor    edi,edi
  6f7e0b:	cmp    DWORD PTR [esi+edi*8],eax
  6f7e0e:	je     6f7e33
  6f7e10:	inc    edi
  6f7e11:	cmp    edi,edx
  6f7e13:	jb     6f7e0b
  6f7e15:	mov    DWORD PTR [esp+0x4],eax
  6f7e19:	mov    DWORD PTR [esp],ebx
  6f7e1c:	mov    DWORD PTR [esp+0x8],0x0
  6f7e24:	mov    ebx,DWORD PTR [esp+0x68]
  6f7e28:	call   1c1964
  6f7e2d:	mov    ebx,DWORD PTR [esp+0x64]
  6f7e31:	jmp    6f7e3e
  6f7e33:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  6f7e37:	lea    eax,[ecx+eax*8+0xb4]
  6f7e3e:	mov    ecx,DWORD PTR [eax]
  6f7e40:	mov    eax,DWORD PTR [eax+0x4]
  6f7e43:	mov    DWORD PTR [esp+0x4],eax
  6f7e47:	mov    DWORD PTR [esp],ebx
  6f7e4a:	mov    ebx,DWORD PTR [esp+0x68]
  6f7e4e:	call   ecx
  6f7e50:	mov    edi,eax
  6f7e52:	mov    DWORD PTR [esp+0x4],0x0
  6f7e5a:	mov    DWORD PTR [esp],0x0
  6f7e61:	mov    ebx,DWORD PTR [esp+0x68]
  6f7e65:	call   10924ed  ; DIContainerLogic::get_RequirementService
  6f7e6a:	mov    esi,eax
  6f7e6c:	test   edi,edi
  6f7e6e:	je     6fa03f
  6f7e74:	mov    DWORD PTR [esp],edi
  6f7e77:	mov    DWORD PTR [esp+0x54],edi
  6f7e7b:	mov    DWORD PTR [esp+0x4],0x0
  6f7e83:	mov    ebx,DWORD PTR [esp+0x68]
  6f7e87:	call   16ffc3f  ; ABH.Shared.BalancingData.ConditionalInventoryBalancingData::get_DropRequirements
  6f7e8c:	test   esi,esi
  6f7e8e:	je     6fa04d
  6f7e94:	mov    DWORD PTR [esp+0x50],eax
  6f7e98:	mov    eax,DWORD PTR [esp+0x68]
  6f7e9c:	lea    eax,[eax+0x45ef8]
  6f7ea2:	mov    DWORD PTR [esp+0x34],eax
  6f7ea6:	mov    eax,DWORD PTR [eax]
  6f7ea8:	mov    ebx,DWORD PTR [esi]
  6f7eaa:	movzx  edx,WORD PTR [ebx+0xaa]
  6f7eb1:	test   edx,edx
  6f7eb3:	je     6f7ec4
  6f7eb5:	mov    edi,DWORD PTR [ebx+0x4c]
  6f7eb8:	xor    ecx,ecx
  6f7eba:	cmp    DWORD PTR [edi+ecx*8],eax
  6f7ebd:	je     6f7ee2
  6f7ebf:	inc    ecx
  6f7ec0:	cmp    ecx,edx
  6f7ec2:	jb     6f7eba
  6f7ec4:	mov    DWORD PTR [esp+0x4],eax
  6f7ec8:	mov    DWORD PTR [esp],esi
  6f7ecb:	mov    DWORD PTR [esp+0x8],0x4
  6f7ed3:	mov    ebx,DWORD PTR [esp+0x68]
  6f7ed7:	call   1c1964
  6f7edc:	mov    edx,DWORD PTR [esp+0x50]
  6f7ee0:	jmp    6f7ef1
  6f7ee2:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  6f7ee6:	lea    eax,[ebx+eax*8+0xd4]
  6f7eed:	mov    edx,DWORD PTR [esp+0x50]
  6f7ef1:	mov    ecx,DWORD PTR [eax]
  6f7ef3:	mov    eax,DWORD PTR [eax+0x4]
  6f7ef6:	mov    DWORD PTR [esp+0xc],eax
  6f7efa:	mov    DWORD PTR [esp+0x8],edx
  6f7efe:	mov    eax,DWORD PTR [ebp+0x8]
  6f7f01:	mov    DWORD PTR [esp+0x4],eax
  6f7f05:	mov    DWORD PTR [esp],esi
  6f7f08:	mov    ebx,DWORD PTR [esp+0x68]
  6f7f0c:	call   ecx
  6f7f0e:	test   al,al
  6f7f10:	je     6f7d80
  6f7f16:	mov    DWORD PTR [esp+0x4],0x0
  6f7f1e:	mov    DWORD PTR [esp],0x0
  6f7f25:	mov    ebx,DWORD PTR [esp+0x68]
  6f7f29:	call   10924ed  ; DIContainerLogic::get_RequirementService
  6f7f2e:	mov    esi,eax
  6f7f30:	mov    eax,DWORD PTR [esp+0x54]
  6f7f34:	mov    DWORD PTR [esp],eax
  6f7f37:	mov    DWORD PTR [esp+0x4],0x0
  6f7f3f:	mov    ebx,DWORD PTR [esp+0x68]
  6f7f43:	call   16ffc3f  ; ABH.Shared.BalancingData.ConditionalInventoryBalancingData::get_DropRequirements
  6f7f48:	mov    DWORD PTR [esp+0x50],eax
  6f7f4c:	mov    eax,DWORD PTR [esp+0x54]
  6f7f50:	mov    DWORD PTR [esp],eax
  6f7f53:	mov    DWORD PTR [esp+0x4],0x0
  6f7f5b:	mov    ebx,DWORD PTR [esp+0x68]
  6f7f5f:	call   16ffc1c  ; ABH.Shared.BalancingData.ConditionalInventoryBalancingData::get_NameId
  6f7f64:	mov    edi,eax
  6f7f66:	mov    eax,DWORD PTR [esp+0x68]
  6f7f6a:	lea    eax,[eax+0x430e4]
  6f7f70:	mov    DWORD PTR [esp+0x2c],eax
  6f7f74:	mov    eax,DWORD PTR [eax]
  6f7f76:	test   BYTE PTR [eax+0xb2],0x1
  6f7f7d:	je     6f7f91
  6f7f7f:	cmp    DWORD PTR [eax+0x60],0x0
  6f7f83:	jne    6f7f91
  6f7f85:	mov    DWORD PTR [esp],eax
  6f7f88:	mov    ebx,DWORD PTR [esp+0x68]
  6f7f8c:	call   1db0b8
  6f7f91:	mov    ebx,DWORD PTR [esp+0x68]
  6f7f95:	lea    eax,[ebx+0x5728c]  ; literal "cond_inv_"
  6f7f9b:	mov    DWORD PTR [esp+0x28],eax
  6f7f9f:	mov    eax,DWORD PTR [eax]
  6f7fa1:	mov    DWORD PTR [esp+0x8],edi
  6f7fa5:	mov    DWORD PTR [esp+0x4],eax
  6f7fa9:	mov    DWORD PTR [esp+0xc],0x0
  6f7fb1:	mov    DWORD PTR [esp],0x0
  6f7fb8:	call   ca462a  ; System.String::Concat
  6f7fbd:	test   esi,esi
  6f7fbf:	je     6fa0b0
  6f7fc5:	mov    DWORD PTR [esp+0x30],eax
  6f7fc9:	mov    eax,DWORD PTR [esp+0x34]
  6f7fcd:	mov    eax,DWORD PTR [eax]
  6f7fcf:	mov    ecx,DWORD PTR [esi]
  6f7fd1:	mov    ebx,esi
  6f7fd3:	movzx  edx,WORD PTR [ecx+0xaa]
  6f7fda:	test   edx,edx
  6f7fdc:	je     6f7fed
  6f7fde:	mov    esi,DWORD PTR [ecx+0x4c]
  6f7fe1:	xor    edi,edi
  6f7fe3:	cmp    DWORD PTR [esi+edi*8],eax
  6f7fe6:	je     6f800d
  6f7fe8:	inc    edi
  6f7fe9:	cmp    edi,edx
  6f7feb:	jb     6f7fe3
  6f7fed:	mov    DWORD PTR [esp+0x4],eax
  6f7ff1:	mov    esi,ebx
  6f7ff3:	mov    DWORD PTR [esp],esi
  6f7ff6:	mov    DWORD PTR [esp+0x8],0x7
  6f7ffe:	mov    ebx,DWORD PTR [esp+0x68]
  6f8002:	call   1c1964
  6f8007:	mov    edx,DWORD PTR [esp+0x30]
  6f800b:	jmp    6f801e
  6f800d:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  6f8011:	lea    eax,[ecx+eax*8+0xec]
  6f8018:	mov    esi,ebx
  6f801a:	mov    edx,DWORD PTR [esp+0x30]
  6f801e:	mov    ecx,DWORD PTR [eax]
  6f8020:	mov    eax,DWORD PTR [eax+0x4]
  6f8023:	mov    DWORD PTR [esp+0x10],eax
  6f8027:	mov    DWORD PTR [esp+0xc],edx
  6f802b:	mov    eax,DWORD PTR [esp+0x50]
  6f802f:	mov    DWORD PTR [esp+0x8],eax
  6f8033:	mov    eax,DWORD PTR [ebp+0x8]
  6f8036:	mov    DWORD PTR [esp+0x4],eax
  6f803a:	mov    DWORD PTR [esp],esi
  6f803d:	mov    ebx,DWORD PTR [esp+0x68]
  6f8041:	call   ecx
  6f8043:	test   al,al
  6f8045:	je     6f7d80
  6f804b:	mov    eax,DWORD PTR [esp+0x54]
  6f804f:	mov    DWORD PTR [esp],eax
  6f8052:	mov    DWORD PTR [esp+0x4],0x0
  6f805a:	mov    ebx,DWORD PTR [esp+0x68]
  6f805e:	call   16ffc1c  ; ABH.Shared.BalancingData.ConditionalInventoryBalancingData::get_NameId
  6f8063:	mov    esi,eax
  6f8065:	mov    eax,DWORD PTR [esp+0x2c]
  6f8069:	mov    eax,DWORD PTR [eax]
  6f806b:	test   BYTE PTR [eax+0xb2],0x1
  6f8072:	je     6f8086
  6f8074:	cmp    DWORD PTR [eax+0x60],0x0
  6f8078:	jne    6f8086
  6f807a:	mov    DWORD PTR [esp],eax
  6f807d:	mov    ebx,DWORD PTR [esp+0x68]
  6f8081:	call   1db0b8
  6f8086:	mov    ebx,DWORD PTR [esp+0x68]
  6f808a:	lea    eax,[ebx+0x57290]  ; literal "[PlayerGameData] Adding Conditional Inventory: "
  6f8090:	mov    eax,DWORD PTR [eax]
  6f8092:	mov    DWORD PTR [esp+0x8],esi
  6f8096:	mov    DWORD PTR [esp+0x4],eax
  6f809a:	mov    DWORD PTR [esp+0xc],0x0
  6f80a2:	mov    DWORD PTR [esp],0x0
  6f80a9:	call   ca462a  ; System.String::Concat
  6f80ae:	mov    DWORD PTR [esp+0x4],eax
  6f80b2:	mov    DWORD PTR [esp+0x8],0x0
  6f80ba:	mov    DWORD PTR [esp],0x0
  6f80c1:	mov    ebx,DWORD PTR [esp+0x68]
  6f80c5:	call   1068c69  ; DebugLog::Log
  6f80ca:	mov    DWORD PTR [esp+0x4],0x0
  6f80d2:	mov    DWORD PTR [esp],0x0
  6f80d9:	mov    ebx,DWORD PTR [esp+0x68]
  6f80dd:	call   106f816  ; DIContainerLogic::GetLootOperationService
  6f80e2:	mov    DWORD PTR [esp+0x50],eax
  6f80e6:	mov    eax,DWORD PTR [ebp+0x8]
  6f80e9:	mov    eax,DWORD PTR [eax+0x10]
  6f80ec:	mov    DWORD PTR [esp+0x34],eax
  6f80f0:	mov    DWORD PTR [esp+0x4],0x0
  6f80f8:	mov    DWORD PTR [esp],0x0
  6f80ff:	mov    ebx,DWORD PTR [esp+0x68]
  6f8103:	call   106f816  ; DIContainerLogic::GetLootOperationService
  6f8108:	mov    esi,eax
  6f810a:	mov    eax,DWORD PTR [esp+0x54]
  6f810e:	mov    DWORD PTR [esp],eax
  6f8111:	mov    DWORD PTR [esp+0x4],0x0
  6f8119:	mov    ebx,DWORD PTR [esp+0x68]
  6f811d:	call   16ffc62  ; ABH.Shared.BalancingData.ConditionalInventoryBalancingData::get_Content
  6f8122:	mov    edi,eax
  6f8124:	mov    eax,DWORD PTR [esp+0x54]
  6f8128:	mov    DWORD PTR [esp],eax
  6f812b:	mov    DWORD PTR [esp+0x4],0x0
  6f8133:	mov    ebx,DWORD PTR [esp+0x68]
  6f8137:	call   16ffc85  ; ABH.Shared.BalancingData.ConditionalInventoryBalancingData::get_InitializingLevel
  6f813c:	test   eax,eax
  6f813e:	jle    6f815a
  6f8140:	mov    eax,DWORD PTR [esp+0x54]
  6f8144:	mov    DWORD PTR [esp],eax
  6f8147:	mov    DWORD PTR [esp+0x4],0x0
  6f814f:	mov    ebx,DWORD PTR [esp+0x68]
  6f8153:	call   16ffc85  ; ABH.Shared.BalancingData.ConditionalInventoryBalancingData::get_InitializingLevel
  6f8158:	jmp    6f818f
  6f815a:	mov    eax,DWORD PTR [esp+0x44]
  6f815e:	mov    eax,DWORD PTR [eax]
  6f8160:	mov    DWORD PTR [esp+0x4],eax
  6f8164:	mov    eax,DWORD PTR [ebp+0x8]
  6f8167:	mov    DWORD PTR [esp],eax
  6f816a:	mov    ebx,DWORD PTR [esp+0x68]
  6f816e:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  6f8173:	test   eax,eax
  6f8175:	je     6fa0da
  6f817b:	mov    DWORD PTR [esp],eax
  6f817e:	mov    DWORD PTR [esp+0x4],0x0
  6f8186:	mov    ebx,DWORD PTR [esp+0x68]
  6f818a:	call   179cbbe  ; ABH.Shared.Models.PlayerData::get_Level
  6f818f:	test   esi,esi
  6f8191:	je     6fa0be
  6f8197:	mov    DWORD PTR [esp+0x8],eax
  6f819b:	mov    DWORD PTR [esp+0x4],edi
  6f819f:	mov    DWORD PTR [esp],esi
  6f81a2:	mov    DWORD PTR [esp+0xc],0x0
  6f81aa:	mov    ebx,DWORD PTR [esp+0x68]
  6f81ae:	call   5003b2  ; ABH.Services.Logic.LootOperations::GenerateLoot
  6f81b3:	mov    esi,eax
  6f81b5:	mov    eax,DWORD PTR [esp+0x54]
  6f81b9:	mov    DWORD PTR [esp],eax
  6f81bc:	mov    DWORD PTR [esp+0x4],0x0
  6f81c4:	mov    ebx,DWORD PTR [esp+0x68]
  6f81c8:	call   16ffc1c  ; ABH.Shared.BalancingData.ConditionalInventoryBalancingData::get_NameId
  6f81cd:	mov    edi,eax
  6f81cf:	mov    eax,DWORD PTR [esp+0x2c]
  6f81d3:	mov    eax,DWORD PTR [eax]
  6f81d5:	test   BYTE PTR [eax+0xb2],0x1
  6f81dc:	je     6f81f0
  6f81de:	cmp    DWORD PTR [eax+0x60],0x0
  6f81e2:	jne    6f81f0
  6f81e4:	mov    DWORD PTR [esp],eax
  6f81e7:	mov    ebx,DWORD PTR [esp+0x68]
  6f81eb:	call   1db0b8
  6f81f0:	mov    eax,DWORD PTR [esp+0x28]
  6f81f4:	mov    eax,DWORD PTR [eax]
  6f81f6:	mov    DWORD PTR [esp+0x8],edi
  6f81fa:	mov    DWORD PTR [esp+0x4],eax
  6f81fe:	mov    DWORD PTR [esp+0xc],0x0
  6f8206:	mov    DWORD PTR [esp],0x0
  6f820d:	mov    ebx,DWORD PTR [esp+0x68]
  6f8211:	call   ca462a  ; System.String::Concat
  6f8216:	mov    ecx,DWORD PTR [esp+0x50]
  6f821a:	test   ecx,ecx
  6f821c:	je     6fa0cc
  6f8222:	mov    DWORD PTR [esp+0x10],eax
  6f8226:	mov    DWORD PTR [esp+0xc],esi
  6f822a:	mov    eax,DWORD PTR [esp+0x34]
  6f822e:	mov    DWORD PTR [esp+0x4],eax
  6f8232:	mov    DWORD PTR [esp],ecx
  6f8235:	mov    DWORD PTR [esp+0x1c],0x0
  6f823d:	mov    DWORD PTR [esp+0x18],0x1
  6f8245:	mov    DWORD PTR [esp+0x14],0x0
  6f824d:	mov    DWORD PTR [esp+0x8],0x1
  6f8255:	mov    ebx,DWORD PTR [esp+0x68]
  6f8259:	call   515c3c  ; ABH.Services.Logic.LootOperations::RewardLoot
  6f825e:	jmp    6f7d80
  6f8263:	mov    ebx,DWORD PTR [esp+0x68]
  6f8267:	jmp    6f8273
  6f8269:	call   1fbc48
  6f826e:	jmp    6fa15a
  6f8273:	cmp    edx,0x1
  6f8276:	jne    6fa143
  6f827c:	mov    DWORD PTR [esp],eax
  6f827f:	call   1ba3f0
  6f8284:	mov    esi,DWORD PTR [eax]
  6f8286:	call   1b9ce0
  6f828b:	mov    ecx,DWORD PTR [esp+0x64]
  6f828f:	test   ecx,ecx
  6f8291:	je     6f82f4
  6f8293:	mov    DWORD PTR [esp+0x5c],esi
  6f8297:	lea    eax,[ebx+0x431a4]
  6f829d:	mov    eax,DWORD PTR [eax]
  6f829f:	mov    ecx,DWORD PTR [ecx]
  6f82a1:	movzx  edx,WORD PTR [ecx+0xaa]
  6f82a8:	test   edx,edx
  6f82aa:	je     6f82bb
  6f82ac:	mov    esi,DWORD PTR [ecx+0x4c]
  6f82af:	xor    edi,edi
  6f82b1:	cmp    DWORD PTR [esi+edi*8],eax
  6f82b4:	je     6f82d5
  6f82b6:	inc    edi
  6f82b7:	cmp    edi,edx
  6f82b9:	jb     6f82b1
  6f82bb:	mov    DWORD PTR [esp+0x4],eax
  6f82bf:	mov    esi,DWORD PTR [esp+0x64]
  6f82c3:	mov    DWORD PTR [esp],esi
  6f82c6:	mov    DWORD PTR [esp+0x8],0x0
  6f82ce:	call   1c1964
  6f82d3:	jmp    6f82e4
  6f82d5:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  6f82d9:	lea    eax,[ecx+eax*8+0xb4]
  6f82e0:	mov    esi,DWORD PTR [esp+0x64]
  6f82e4:	mov    ecx,DWORD PTR [eax+0x4]
  6f82e7:	mov    DWORD PTR [esp+0x4],ecx
  6f82eb:	mov    DWORD PTR [esp],esi
  6f82ee:	call   DWORD PTR [eax]
  6f82f0:	mov    esi,DWORD PTR [esp+0x5c]
  6f82f4:	cmp    DWORD PTR [esp+0x60],0x40a
  6f82fc:	jne    6f830a
  6f82fe:	mov    DWORD PTR [esp+0x60],0x0
  6f8306:	mov    edi,esi
  6f8308:	jmp    6f8318
  6f830a:	xor    edi,edi
  6f830c:	test   esi,esi
  6f830e:	je     6f8318
  6f8310:	mov    DWORD PTR [esp],esi
  6f8313:	call   1fbb20
  6f8318:	mov    eax,DWORD PTR [esp+0x38]
  6f831c:	mov    eax,DWORD PTR [eax]
  6f831e:	test   BYTE PTR [eax+0xb2],0x1
  6f8325:	je     6f8335
  6f8327:	cmp    DWORD PTR [eax+0x60],0x0
  6f832b:	jne    6f8335
  6f832d:	mov    DWORD PTR [esp],eax
  6f8330:	call   1db0b8
  6f8335:	mov    DWORD PTR [esp+0x4c],edi
  6f8339:	mov    DWORD PTR [esp+0x4],0x0
  6f8341:	mov    DWORD PTR [esp],0x0
  6f8348:	mov    DWORD PTR [esp+0x68],ebx
  6f834c:	call   107cf95  ; DIContainerBalancing::get_Service
  6f8351:	mov    esi,eax
  6f8353:	test   esi,esi
  6f8355:	je     6fa12d
  6f835b:	mov    eax,DWORD PTR [esp+0x48]
  6f835f:	mov    eax,DWORD PTR [eax]
  6f8361:	mov    DWORD PTR [esp+0x5c],eax
  6f8365:	mov    ecx,DWORD PTR [eax+0xc]
  6f8368:	movzx  ebx,WORD PTR [eax+0x2c]
  6f836c:	mov    edx,DWORD PTR [esi]
  6f836e:	mov    DWORD PTR [esp+0x64],esi
  6f8372:	movzx  eax,WORD PTR [edx+0xaa]
  6f8379:	test   eax,eax
  6f837b:	je     6f838c
  6f837d:	mov    esi,DWORD PTR [edx+0x4c]
  6f8380:	xor    edi,edi
  6f8382:	cmp    DWORD PTR [esi+edi*8],ecx
  6f8385:	je     6f83a6
  6f8387:	inc    edi
  6f8388:	cmp    edi,eax
  6f838a:	jb     6f8382
  6f838c:	mov    DWORD PTR [esp+0x8],ebx
  6f8390:	mov    DWORD PTR [esp+0x4],ecx
  6f8394:	mov    esi,DWORD PTR [esp+0x64]
  6f8398:	mov    DWORD PTR [esp],esi
  6f839b:	mov    ebx,DWORD PTR [esp+0x68]
  6f839f:	call   1c1964
  6f83a4:	jmp    6f83b9
  6f83a6:	add    ebx,DWORD PTR [esi+edi*8+0x4]
  6f83aa:	lea    eax,[edx+ebx*8+0xb4]
  6f83b1:	mov    ebx,DWORD PTR [esp+0x68]
  6f83b5:	mov    esi,DWORD PTR [esp+0x64]
  6f83b9:	mov    eax,DWORD PTR [eax+0x4]
  6f83bc:	mov    ecx,DWORD PTR [esp+0x5c]
  6f83c0:	mov    DWORD PTR [esp+0x4],ecx
  6f83c4:	mov    DWORD PTR [esp],eax
  6f83c7:	call   1da450
  6f83cc:	mov    DWORD PTR [esp+0x4],eax
  6f83d0:	mov    DWORD PTR [esp],esi
  6f83d3:	call   DWORD PTR [eax]
  6f83d5:	mov    esi,eax
  6f83d7:	mov    eax,DWORD PTR [esp+0x58]
  6f83db:	mov    eax,DWORD PTR [eax]
  6f83dd:	mov    eax,DWORD PTR [eax+0x50]
  6f83e0:	cmp    DWORD PTR [eax+0x8],0x0
  6f83e4:	jne    6f8447
  6f83e6:	lea    eax,[ebx+0x4ac68]
  6f83ec:	mov    eax,DWORD PTR [eax]
  6f83ee:	mov    DWORD PTR [esp+0x64],eax
  6f83f2:	lea    eax,[ebx+0x45f24]
  6f83f8:	mov    eax,DWORD PTR [eax]
  6f83fa:	mov    DWORD PTR [esp],eax
  6f83fd:	call   20bfb2
  6f8402:	mov    edi,eax
  6f8404:	mov    eax,DWORD PTR [esp+0x64]
  6f8408:	mov    DWORD PTR [esp+0xd0],eax
  6f840f:	lea    eax,[ebx+0x4ac60]
  6f8415:	mov    eax,DWORD PTR [eax]
  6f8417:	mov    DWORD PTR [esp+0xc],eax
  6f841b:	mov    eax,DWORD PTR [esp+0xd0]
  6f8422:	mov    DWORD PTR [esp+0x8],eax
  6f8426:	mov    DWORD PTR [esp],edi
  6f8429:	mov    DWORD PTR [esp+0x4],0x0
  6f8431:	call   159e10c  ; shared address: System.Func`2<System.Reflection.MemberInfo, bool>::.ctor | System.Func`2<System.Reflection.ConstructorInfo, bool>::.ctor | System.Func`2<System.Reflection.FieldInfo, bool>::.ctor | +68 other aliases
  6f8436:	mov    ecx,DWORD PTR [esp+0x58]
  6f843a:	mov    eax,DWORD PTR [ecx]
  6f843c:	mov    eax,DWORD PTR [eax+0x50]
  6f843f:	mov    DWORD PTR [eax+0x8],edi
  6f8442:	mov    eax,DWORD PTR [ecx]
  6f8444:	mov    eax,DWORD PTR [eax+0x50]
  6f8447:	mov    eax,DWORD PTR [eax+0x8]
  6f844a:	mov    ecx,DWORD PTR [esp+0x40]
  6f844e:	mov    ecx,DWORD PTR [ecx]
  6f8450:	mov    DWORD PTR [esp+0xc],ecx
  6f8454:	mov    DWORD PTR [esp+0x8],eax
  6f8458:	mov    DWORD PTR [esp+0x4],esi
  6f845c:	mov    DWORD PTR [esp],0x0
  6f8463:	call   9c0237  ; shared address: System.Linq.Enumerable::Where | System.Linq.Enumerable::Where | System.Linq.Enumerable::Where | +38 other aliases
  6f8468:	mov    esi,eax
  6f846a:	test   esi,esi
  6f846c:	je     6fa12d
  6f8472:	mov    eax,DWORD PTR [esp+0x3c]
  6f8476:	mov    eax,DWORD PTR [eax]
  6f8478:	mov    ebx,DWORD PTR [esi]
  6f847a:	movzx  edx,WORD PTR [ebx+0xaa]
  6f8481:	test   edx,edx
  6f8483:	je     6f8494
  6f8485:	mov    edi,DWORD PTR [ebx+0x4c]
  6f8488:	xor    ecx,ecx
  6f848a:	cmp    DWORD PTR [edi+ecx*8],eax
  6f848d:	je     6f84b0
  6f848f:	inc    ecx
  6f8490:	cmp    ecx,edx
  6f8492:	jb     6f848a
  6f8494:	mov    DWORD PTR [esp+0x4],eax
  6f8498:	mov    DWORD PTR [esp],esi
  6f849b:	mov    DWORD PTR [esp+0x8],0x0
  6f84a3:	mov    ebx,DWORD PTR [esp+0x68]
  6f84a7:	call   1c1964
  6f84ac:	mov    ecx,eax
  6f84ae:	jmp    6f84bf
  6f84b0:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  6f84b4:	lea    ecx,[ebx+eax*8+0xb4]
  6f84bb:	mov    ebx,DWORD PTR [esp+0x68]
  6f84bf:	mov    eax,DWORD PTR [ecx+0x4]
  6f84c2:	mov    DWORD PTR [esp+0x4],eax
  6f84c6:	mov    DWORD PTR [esp],esi
  6f84c9:	call   DWORD PTR [ecx]
  6f84cb:	mov    DWORD PTR [esp+0x64],eax
  6f84cf:	test   eax,eax
  6f84d1:	je     6f8b57
  6f84d7:	lea    eax,[ebx+0x4319c]
  6f84dd:	mov    DWORD PTR [esp+0x50],eax
  6f84e1:	mov    DWORD PTR [esp+0x68],ebx
  6f84e5:	mov    eax,DWORD PTR [esp+0x50]
  6f84e9:	mov    eax,DWORD PTR [eax]
  6f84eb:	mov    ebx,DWORD PTR [esp+0x64]
  6f84ef:	mov    ecx,DWORD PTR [ebx]
  6f84f1:	movzx  edx,WORD PTR [ecx+0xaa]
  6f84f8:	test   edx,edx
  6f84fa:	je     6f850b
  6f84fc:	mov    esi,DWORD PTR [ecx+0x4c]
  6f84ff:	xor    edi,edi
  6f8501:	cmp    DWORD PTR [esi+edi*8],eax
  6f8504:	je     6f8529
  6f8506:	inc    edi
  6f8507:	cmp    edi,edx
  6f8509:	jb     6f8501
  6f850b:	mov    DWORD PTR [esp+0x4],eax
  6f850f:	mov    DWORD PTR [esp],ebx
  6f8512:	mov    DWORD PTR [esp+0x8],0x1
  6f851a:	mov    ebx,DWORD PTR [esp+0x68]
  6f851e:	call   1c1964
  6f8523:	mov    ebx,DWORD PTR [esp+0x64]
  6f8527:	jmp    6f8534
  6f8529:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  6f852d:	lea    eax,[ecx+eax*8+0xbc]
  6f8534:	mov    ecx,DWORD PTR [eax]
  6f8536:	mov    eax,DWORD PTR [eax+0x4]
  6f8539:	mov    DWORD PTR [esp+0x4],eax
  6f853d:	mov    DWORD PTR [esp],ebx
  6f8540:	mov    ebx,DWORD PTR [esp+0x68]
  6f8544:	call   ecx
  6f8546:	test   al,al
  6f8548:	je     6f9f17
  6f854e:	mov    eax,DWORD PTR [esp+0x68]
  6f8552:	lea    eax,[eax+0x45f2c]
  6f8558:	mov    eax,DWORD PTR [eax]
  6f855a:	mov    ebx,DWORD PTR [esp+0x64]
  6f855e:	mov    ecx,DWORD PTR [ebx]
  6f8560:	movzx  edx,WORD PTR [ecx+0xaa]
  6f8567:	test   edx,edx
  6f8569:	je     6f857a
  6f856b:	mov    esi,DWORD PTR [ecx+0x4c]
  6f856e:	xor    edi,edi
  6f8570:	cmp    DWORD PTR [esi+edi*8],eax
  6f8573:	je     6f8598
  6f8575:	inc    edi
  6f8576:	cmp    edi,edx
  6f8578:	jb     6f8570
  6f857a:	mov    DWORD PTR [esp+0x4],eax
  6f857e:	mov    DWORD PTR [esp],ebx
  6f8581:	mov    DWORD PTR [esp+0x8],0x0
  6f8589:	mov    ebx,DWORD PTR [esp+0x68]
  6f858d:	call   1c1964
  6f8592:	mov    ebx,DWORD PTR [esp+0x64]
  6f8596:	jmp    6f85a3
  6f8598:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  6f859c:	lea    eax,[ecx+eax*8+0xb4]
  6f85a3:	mov    ecx,DWORD PTR [eax]
  6f85a5:	mov    eax,DWORD PTR [eax+0x4]
  6f85a8:	mov    DWORD PTR [esp+0x4],eax
  6f85ac:	mov    DWORD PTR [esp],ebx
  6f85af:	mov    ebx,DWORD PTR [esp+0x68]
  6f85b3:	call   ecx
  6f85b5:	mov    edi,eax
  6f85b7:	mov    DWORD PTR [esp+0x4],0x0
  6f85bf:	mov    DWORD PTR [esp],0x0
  6f85c6:	mov    ebx,DWORD PTR [esp+0x68]
  6f85ca:	call   10924ed  ; DIContainerLogic::get_RequirementService
  6f85cf:	mov    esi,eax
  6f85d1:	test   edi,edi
  6f85d3:	je     6fa00e
  6f85d9:	mov    DWORD PTR [esp],edi
  6f85dc:	mov    DWORD PTR [esp+0x5c],edi
  6f85e0:	mov    DWORD PTR [esp+0x4],0x0
  6f85e8:	mov    ebx,DWORD PTR [esp+0x68]
  6f85ec:	call   16ffc3f  ; ABH.Shared.BalancingData.ConditionalInventoryBalancingData::get_DropRequirements
  6f85f1:	test   esi,esi
  6f85f3:	je     6fa031
  6f85f9:	mov    DWORD PTR [esp+0x54],eax
  6f85fd:	mov    eax,DWORD PTR [esp+0x68]
  6f8601:	lea    eax,[eax+0x45ef8]
  6f8607:	mov    DWORD PTR [esp+0x48],eax
  6f860b:	mov    eax,DWORD PTR [eax]
  6f860d:	mov    ebx,DWORD PTR [esi]
  6f860f:	movzx  edx,WORD PTR [ebx+0xaa]
  6f8616:	test   edx,edx
  6f8618:	je     6f8629
  6f861a:	mov    edi,DWORD PTR [ebx+0x4c]
  6f861d:	xor    ecx,ecx
  6f861f:	cmp    DWORD PTR [edi+ecx*8],eax
  6f8622:	je     6f8647
  6f8624:	inc    ecx
  6f8625:	cmp    ecx,edx
  6f8627:	jb     6f861f
  6f8629:	mov    DWORD PTR [esp+0x4],eax
  6f862d:	mov    DWORD PTR [esp],esi
  6f8630:	mov    DWORD PTR [esp+0x8],0x4
  6f8638:	mov    ebx,DWORD PTR [esp+0x68]
  6f863c:	call   1c1964
  6f8641:	mov    edx,DWORD PTR [esp+0x54]
  6f8645:	jmp    6f8656
  6f8647:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  6f864b:	lea    eax,[ebx+eax*8+0xd4]
  6f8652:	mov    edx,DWORD PTR [esp+0x54]
  6f8656:	mov    ecx,DWORD PTR [eax]
  6f8658:	mov    eax,DWORD PTR [eax+0x4]
  6f865b:	mov    DWORD PTR [esp+0xc],eax
  6f865f:	mov    DWORD PTR [esp+0x8],edx
  6f8663:	mov    eax,DWORD PTR [ebp+0x8]
  6f8666:	mov    DWORD PTR [esp+0x4],eax
  6f866a:	mov    DWORD PTR [esp],esi
  6f866d:	mov    ebx,DWORD PTR [esp+0x68]
  6f8671:	call   ecx
  6f8673:	test   al,al
  6f8675:	je     6f84e5
  6f867b:	mov    DWORD PTR [esp+0x4],0x0
  6f8683:	mov    DWORD PTR [esp],0x0
  6f868a:	mov    ebx,DWORD PTR [esp+0x68]
  6f868e:	call   10924ed  ; DIContainerLogic::get_RequirementService
  6f8693:	mov    esi,eax
  6f8695:	mov    eax,DWORD PTR [esp+0x5c]
  6f8699:	mov    DWORD PTR [esp],eax
  6f869c:	mov    DWORD PTR [esp+0x4],0x0
  6f86a4:	mov    ebx,DWORD PTR [esp+0x68]
  6f86a8:	call   16ffc3f  ; ABH.Shared.BalancingData.ConditionalInventoryBalancingData::get_DropRequirements
  6f86ad:	mov    DWORD PTR [esp+0x54],eax
  6f86b1:	mov    eax,DWORD PTR [esp+0x5c]
  6f86b5:	mov    DWORD PTR [esp],eax
  6f86b8:	mov    DWORD PTR [esp+0x4],0x0
  6f86c0:	mov    ebx,DWORD PTR [esp+0x68]
  6f86c4:	call   16ffc1c  ; ABH.Shared.BalancingData.ConditionalInventoryBalancingData::get_NameId
  6f86c9:	mov    edi,eax
  6f86cb:	mov    eax,DWORD PTR [esp+0x68]
  6f86cf:	lea    eax,[eax+0x430e4]
  6f86d5:	mov    DWORD PTR [esp+0x3c],eax
  6f86d9:	mov    eax,DWORD PTR [eax]
  6f86db:	test   BYTE PTR [eax+0xb2],0x1
  6f86e2:	je     6f86f6
  6f86e4:	cmp    DWORD PTR [eax+0x60],0x0
  6f86e8:	jne    6f86f6
  6f86ea:	mov    DWORD PTR [esp],eax
  6f86ed:	mov    ebx,DWORD PTR [esp+0x68]
  6f86f1:	call   1db0b8
  6f86f6:	mov    ebx,DWORD PTR [esp+0x68]
  6f86fa:	lea    eax,[ebx+0x5728c]  ; literal "cond_inv_"
  6f8700:	mov    DWORD PTR [esp+0x34],eax
  6f8704:	mov    eax,DWORD PTR [eax]
  6f8706:	mov    DWORD PTR [esp+0x8],edi
  6f870a:	mov    DWORD PTR [esp+0x4],eax
  6f870e:	mov    DWORD PTR [esp+0xc],0x0
  6f8716:	mov    DWORD PTR [esp],0x0
  6f871d:	call   ca462a  ; System.String::Concat
  6f8722:	test   esi,esi
  6f8724:	je     6fa0a2
  6f872a:	mov    DWORD PTR [esp+0x40],eax
  6f872e:	mov    eax,DWORD PTR [esp+0x48]
  6f8732:	mov    eax,DWORD PTR [eax]
  6f8734:	mov    ecx,DWORD PTR [esi]
  6f8736:	mov    ebx,esi
  6f8738:	movzx  edx,WORD PTR [ecx+0xaa]
  6f873f:	test   edx,edx
  6f8741:	je     6f8752
  6f8743:	mov    esi,DWORD PTR [ecx+0x4c]
  6f8746:	xor    edi,edi
  6f8748:	cmp    DWORD PTR [esi+edi*8],eax
  6f874b:	je     6f8772
  6f874d:	inc    edi
  6f874e:	cmp    edi,edx
  6f8750:	jb     6f8748
  6f8752:	mov    DWORD PTR [esp+0x4],eax
  6f8756:	mov    esi,ebx
  6f8758:	mov    DWORD PTR [esp],esi
  6f875b:	mov    DWORD PTR [esp+0x8],0x7
  6f8763:	mov    ebx,DWORD PTR [esp+0x68]
  6f8767:	call   1c1964
  6f876c:	mov    edx,DWORD PTR [esp+0x40]
  6f8770:	jmp    6f8783
  6f8772:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  6f8776:	lea    eax,[ecx+eax*8+0xec]
  6f877d:	mov    esi,ebx
  6f877f:	mov    edx,DWORD PTR [esp+0x40]
  6f8783:	mov    ecx,DWORD PTR [eax]
  6f8785:	mov    eax,DWORD PTR [eax+0x4]
  6f8788:	mov    DWORD PTR [esp+0x10],eax
  6f878c:	mov    DWORD PTR [esp+0xc],edx
  6f8790:	mov    eax,DWORD PTR [esp+0x54]
  6f8794:	mov    DWORD PTR [esp+0x8],eax
  6f8798:	mov    eax,DWORD PTR [ebp+0x8]
  6f879b:	mov    DWORD PTR [esp+0x4],eax
  6f879f:	mov    DWORD PTR [esp],esi
  6f87a2:	mov    ebx,DWORD PTR [esp+0x68]
  6f87a6:	call   ecx
  6f87a8:	test   al,al
  6f87aa:	je     6f84e5
  6f87b0:	mov    eax,DWORD PTR [esp+0x5c]
  6f87b4:	mov    DWORD PTR [esp],eax
  6f87b7:	mov    DWORD PTR [esp+0x4],0x0
  6f87bf:	mov    ebx,DWORD PTR [esp+0x68]
  6f87c3:	call   16ffc1c  ; ABH.Shared.BalancingData.ConditionalInventoryBalancingData::get_NameId
  6f87c8:	mov    esi,eax
  6f87ca:	mov    eax,DWORD PTR [esp+0x3c]
  6f87ce:	mov    eax,DWORD PTR [eax]
  6f87d0:	test   BYTE PTR [eax+0xb2],0x1
  6f87d7:	je     6f87eb
  6f87d9:	cmp    DWORD PTR [eax+0x60],0x0
  6f87dd:	jne    6f87eb
  6f87df:	mov    DWORD PTR [esp],eax
  6f87e2:	mov    ebx,DWORD PTR [esp+0x68]
  6f87e6:	call   1db0b8
  6f87eb:	mov    ebx,DWORD PTR [esp+0x68]
  6f87ef:	lea    eax,[ebx+0x57294]  ; literal "[PlayerGameData] Removing Conditional Inventory: "
  6f87f5:	mov    eax,DWORD PTR [eax]
  6f87f7:	mov    DWORD PTR [esp+0x8],esi
  6f87fb:	mov    DWORD PTR [esp+0x4],eax
  6f87ff:	mov    DWORD PTR [esp+0xc],0x0
  6f8807:	mov    DWORD PTR [esp],0x0
  6f880e:	call   ca462a  ; System.String::Concat
  6f8813:	mov    DWORD PTR [esp+0x4],eax
  6f8817:	mov    DWORD PTR [esp+0x8],0x0
  6f881f:	mov    DWORD PTR [esp],0x0
  6f8826:	mov    ebx,DWORD PTR [esp+0x68]
  6f882a:	call   1068c69  ; DebugLog::Log
  6f882f:	mov    DWORD PTR [esp+0x4],0x0
  6f8837:	mov    DWORD PTR [esp],0x0
  6f883e:	mov    ebx,DWORD PTR [esp+0x68]
  6f8842:	call   106f816  ; DIContainerLogic::GetLootOperationService
  6f8847:	mov    esi,eax
  6f8849:	mov    eax,DWORD PTR [esp+0x5c]
  6f884d:	mov    DWORD PTR [esp],eax
  6f8850:	mov    DWORD PTR [esp+0x4],0x0
  6f8858:	mov    ebx,DWORD PTR [esp+0x68]
  6f885c:	call   16ffc62  ; ABH.Shared.BalancingData.ConditionalInventoryBalancingData::get_Content
  6f8861:	mov    edi,eax
  6f8863:	mov    eax,DWORD PTR [esp+0x5c]
  6f8867:	mov    DWORD PTR [esp],eax
  6f886a:	mov    DWORD PTR [esp+0x4],0x0
  6f8872:	mov    ebx,DWORD PTR [esp+0x68]
  6f8876:	call   16ffc85  ; ABH.Shared.BalancingData.ConditionalInventoryBalancingData::get_InitializingLevel
  6f887b:	test   eax,eax
  6f887d:	jle    6f8899
  6f887f:	mov    eax,DWORD PTR [esp+0x5c]
  6f8883:	mov    DWORD PTR [esp],eax
  6f8886:	mov    DWORD PTR [esp+0x4],0x0
  6f888e:	mov    ebx,DWORD PTR [esp+0x68]
  6f8892:	call   16ffc85  ; ABH.Shared.BalancingData.ConditionalInventoryBalancingData::get_InitializingLevel
  6f8897:	jmp    6f88ce
  6f8899:	mov    eax,DWORD PTR [esp+0x44]
  6f889d:	mov    eax,DWORD PTR [eax]
  6f889f:	mov    DWORD PTR [esp+0x4],eax
  6f88a3:	mov    eax,DWORD PTR [ebp+0x8]
  6f88a6:	mov    DWORD PTR [esp],eax
  6f88a9:	mov    ebx,DWORD PTR [esp+0x68]
  6f88ad:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  6f88b2:	test   eax,eax
  6f88b4:	je     6fa11f
  6f88ba:	mov    DWORD PTR [esp],eax
  6f88bd:	mov    DWORD PTR [esp+0x4],0x0
  6f88c5:	mov    ebx,DWORD PTR [esp+0x68]
  6f88c9:	call   179cbbe  ; ABH.Shared.Models.PlayerData::get_Level
  6f88ce:	test   esi,esi
  6f88d0:	je     6fa0e8
  6f88d6:	mov    DWORD PTR [esp+0x8],eax
  6f88da:	mov    DWORD PTR [esp+0x4],edi
  6f88de:	mov    DWORD PTR [esp],esi
  6f88e1:	mov    DWORD PTR [esp+0xc],0x0
  6f88e9:	mov    ebx,DWORD PTR [esp+0x68]
  6f88ed:	call   5003b2  ; ABH.Services.Logic.LootOperations::GenerateLoot
  6f88f2:	mov    esi,eax
  6f88f4:	test   esi,esi
  6f88f6:	je     6fa0f6
  6f88fc:	mov    ebx,DWORD PTR [esp+0x68]
  6f8900:	lea    eax,[ebx+0x4ac6c]
  6f8906:	mov    eax,DWORD PTR [eax]
  6f8908:	mov    DWORD PTR [esp+0x4],eax
  6f890c:	mov    DWORD PTR [esp],esi
  6f890f:	call   61b443  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::get_Keys | System.Collections.Generic.Dictionary`2<string, string>::get_Keys | System.Collections.Generic.Dictionary`2<string, object>::get_Keys | +10 other aliases
  6f8914:	test   eax,eax
  6f8916:	je     6fa104
  6f891c:	mov    ebx,DWORD PTR [esp+0x68]
  6f8920:	lea    ecx,[ebx+0x4ac70]
  6f8926:	mov    ecx,DWORD PTR [ecx]
  6f8928:	mov    DWORD PTR [esp+0x8],ecx
  6f892c:	mov    DWORD PTR [esp+0x4],eax
  6f8930:	lea    eax,[esp+0xb8]
  6f8937:	mov    DWORD PTR [esp],eax
  6f893a:	call   15a7778  ; shared address: System.Collections.Generic.Dictionary`2+KeyCollection<object, object>::GetEnumerator | System.Collections.Generic.Dictionary`2+KeyCollection<string, string>::GetEnumerator | System.Collections.Generic.Dictionary`2+KeyCollection<string, object>::GetEnumerator | +10 other aliases
  6f893f:	sub    esp,0x4
  6f8942:	mov    DWORD PTR [esp+0x30],esi
  6f8946:	mov    eax,DWORD PTR [esp+0xc8]
  6f894d:	mov    DWORD PTR [esp+0x180],eax
  6f8954:	movsd  xmm0,QWORD PTR [esp+0xb8]
  6f895d:	movsd  xmm1,QWORD PTR [esp+0xc0]
  6f8966:	movsd  QWORD PTR [esp+0x178],xmm1
  6f896f:	movsd  QWORD PTR [esp+0x170],xmm0
  6f8978:	mov    ebx,DWORD PTR [esp+0x68]
  6f897c:	lea    eax,[ebx+0x4ac7c]
  6f8982:	mov    eax,DWORD PTR [eax]
  6f8984:	mov    DWORD PTR [esp+0x4],eax
  6f8988:	lea    eax,[esp+0x170]
  6f898f:	mov    DWORD PTR [esp],eax
  6f8992:	call   11ad1d2
  6f8997:	mov    edi,0x548
  6f899c:	test   al,al
  6f899e:	je     6f8ab1
  6f89a4:	mov    ebx,DWORD PTR [esp+0x68]
  6f89a8:	lea    eax,[ebx+0x4ac74]
  6f89ae:	mov    eax,DWORD PTR [eax]
  6f89b0:	mov    DWORD PTR [esp+0x4],eax
  6f89b4:	lea    eax,[esp+0x170]
  6f89bb:	mov    DWORD PTR [esp],eax
  6f89be:	call   11ad261
  6f89c3:	mov    DWORD PTR [esp+0x54],eax
  6f89c7:	lea    eax,[ebx+0x4ac78]
  6f89cd:	mov    eax,DWORD PTR [eax]
  6f89cf:	mov    DWORD PTR [esp+0x8],eax
  6f89d3:	mov    eax,DWORD PTR [esp+0x54]
  6f89d7:	mov    DWORD PTR [esp+0x4],eax
  6f89db:	mov    eax,DWORD PTR [esp+0x30]
  6f89df:	mov    DWORD PTR [esp],eax
  6f89e2:	call   618b6e  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::get_Item | System.Collections.Generic.Dictionary`2<string, object>::get_Item | System.Collections.Generic.Dictionary`2<string, string>::get_Item | +34 other aliases
  6f89e7:	mov    esi,eax
  6f89e9:	mov    DWORD PTR [esp+0x4],0x0
  6f89f1:	mov    DWORD PTR [esp],0x0
  6f89f8:	call   106b137  ; DIContainerLogic::get_InventoryService
  6f89fd:	mov    edi,eax
  6f89ff:	test   esi,esi
  6f8a01:	je     6f8ab7
  6f8a07:	mov    eax,DWORD PTR [ebp+0x8]
  6f8a0a:	mov    eax,DWORD PTR [eax+0x10]
  6f8a0d:	mov    DWORD PTR [esp+0x48],eax
  6f8a11:	mov    DWORD PTR [esp],esi
  6f8a14:	mov    DWORD PTR [esp+0x4],0x0
  6f8a1c:	call   179b2a6  ; ABH.Shared.Models.Generic.LootInfoData::get_Value
  6f8a21:	mov    DWORD PTR [esp+0x40],eax
  6f8a25:	mov    eax,DWORD PTR [esp+0x5c]
  6f8a29:	mov    DWORD PTR [esp],eax
  6f8a2c:	mov    DWORD PTR [esp+0x4],0x0
  6f8a34:	call   16ffc1c  ; ABH.Shared.BalancingData.ConditionalInventoryBalancingData::get_NameId
  6f8a39:	mov    esi,eax
  6f8a3b:	mov    eax,DWORD PTR [esp+0x3c]
  6f8a3f:	mov    eax,DWORD PTR [eax]
  6f8a41:	test   BYTE PTR [eax+0xb2],0x1
  6f8a48:	je     6f8a58
  6f8a4a:	cmp    DWORD PTR [eax+0x60],0x0
  6f8a4e:	jne    6f8a58
  6f8a50:	mov    DWORD PTR [esp],eax
  6f8a53:	call   1db0b8
  6f8a58:	mov    eax,DWORD PTR [esp+0x34]
  6f8a5c:	mov    eax,DWORD PTR [eax]
  6f8a5e:	mov    DWORD PTR [esp+0x8],esi
  6f8a62:	mov    DWORD PTR [esp+0x4],eax
  6f8a66:	mov    DWORD PTR [esp+0xc],0x0
  6f8a6e:	mov    DWORD PTR [esp],0x0
  6f8a75:	call   ca462a  ; System.String::Concat
  6f8a7a:	test   edi,edi
  6f8a7c:	je     6f8ac1
  6f8a7e:	mov    DWORD PTR [esp+0x10],eax
  6f8a82:	mov    eax,DWORD PTR [esp+0x40]
  6f8a86:	mov    DWORD PTR [esp+0xc],eax
  6f8a8a:	mov    eax,DWORD PTR [esp+0x54]
  6f8a8e:	mov    DWORD PTR [esp+0x8],eax
  6f8a92:	mov    eax,DWORD PTR [esp+0x48]
  6f8a96:	mov    DWORD PTR [esp+0x4],eax
  6f8a9a:	mov    DWORD PTR [esp],edi
  6f8a9d:	mov    DWORD PTR [esp+0x14],0x0
  6f8aa5:	call   4fa47f  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::RemoveItem
  6f8aaa:	jmp    6f897c
  6f8aaf:	jmp    6f8acb
  6f8ab1:	mov    esi,DWORD PTR [esp+0x4c]
  6f8ab5:	jmp    6f8aeb
  6f8ab7:	call   1fbc48
  6f8abc:	jmp    6fa194
  6f8ac1:	call   1fbc48
  6f8ac6:	jmp    6fa199
  6f8acb:	cmp    edx,0x1
  6f8ace:	jne    6fa112
  6f8ad4:	mov    DWORD PTR [esp],eax
  6f8ad7:	call   1ba3f0
  6f8adc:	mov    DWORD PTR [esp+0x68],ebx
  6f8ae0:	mov    esi,DWORD PTR [eax]
  6f8ae2:	call   1b9ce0
  6f8ae7:	mov    edi,DWORD PTR [esp+0x60]
  6f8aeb:	mov    DWORD PTR [esp+0x60],edi
  6f8aef:	mov    ebx,DWORD PTR [esp+0x68]
  6f8af3:	lea    eax,[ebx+0x4ac80]
  6f8af9:	mov    eax,DWORD PTR [eax]
  6f8afb:	mov    DWORD PTR [esp+0x4],eax
  6f8aff:	lea    eax,[esp+0x170]
  6f8b06:	mov    DWORD PTR [esp],eax
  6f8b09:	call   11ad167
  6f8b0e:	mov    DWORD PTR [esp+0x60],0x0
  6f8b16:	cmp    edi,0x548
  6f8b1c:	mov    DWORD PTR [esp+0x4c],esi
  6f8b20:	je     6f84e5
  6f8b26:	mov    DWORD PTR [esp+0x4c],0x0
  6f8b2e:	test   esi,esi
  6f8b30:	mov    DWORD PTR [esp+0x60],edi
  6f8b34:	je     6f84e5
  6f8b3a:	mov    DWORD PTR [esp+0x60],edi
  6f8b3e:	mov    DWORD PTR [esp],esi
  6f8b41:	mov    ebx,DWORD PTR [esp+0x68]
  6f8b45:	call   1fbb20
  6f8b4a:	jmp    6f84e5
  6f8b4f:	jmp    6f8b51
  6f8b51:	mov    ebx,DWORD PTR [esp+0x68]
  6f8b55:	jmp    6f8b61
  6f8b57:	call   1fbc48
  6f8b5c:	jmp    6fa15f
  6f8b61:	mov    esi,DWORD PTR [ebp+0x8]
  6f8b64:	mov    ecx,0x1
  6f8b69:	cmp    edx,ecx
  6f8b6b:	jne    6fa143
  6f8b71:	mov    DWORD PTR [esp],eax
  6f8b74:	call   1ba3f0
  6f8b79:	mov    edi,DWORD PTR [eax]
  6f8b7b:	call   1b9ce0
  6f8b80:	mov    ecx,DWORD PTR [esp+0x64]
  6f8b84:	test   ecx,ecx
  6f8b86:	je     6f8bec
  6f8b88:	mov    DWORD PTR [esp+0x4c],edi
  6f8b8c:	lea    eax,[ebx+0x431a4]
  6f8b92:	mov    eax,DWORD PTR [eax]
  6f8b94:	mov    ecx,DWORD PTR [ecx]
  6f8b96:	movzx  edx,WORD PTR [ecx+0xaa]
  6f8b9d:	test   edx,edx
  6f8b9f:	je     6f8bb0
  6f8ba1:	mov    esi,DWORD PTR [ecx+0x4c]
  6f8ba4:	xor    edi,edi
  6f8ba6:	cmp    DWORD PTR [esi+edi*8],eax
  6f8ba9:	je     6f8bca
  6f8bab:	inc    edi
  6f8bac:	cmp    edi,edx
  6f8bae:	jb     6f8ba6
  6f8bb0:	mov    DWORD PTR [esp+0x4],eax
  6f8bb4:	mov    esi,DWORD PTR [esp+0x64]
  6f8bb8:	mov    DWORD PTR [esp],esi
  6f8bbb:	mov    DWORD PTR [esp+0x8],0x0
  6f8bc3:	call   1c1964
  6f8bc8:	jmp    6f8bd9
  6f8bca:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  6f8bce:	lea    eax,[ecx+eax*8+0xb4]
  6f8bd5:	mov    esi,DWORD PTR [esp+0x64]
  6f8bd9:	mov    ecx,DWORD PTR [eax+0x4]
  6f8bdc:	mov    DWORD PTR [esp+0x4],ecx
  6f8be0:	mov    DWORD PTR [esp],esi
  6f8be3:	call   DWORD PTR [eax]
  6f8be5:	mov    esi,DWORD PTR [ebp+0x8]
  6f8be8:	mov    edi,DWORD PTR [esp+0x4c]
  6f8bec:	cmp    DWORD PTR [esp+0x60],0x568
  6f8bf4:	jne    6f8c04
  6f8bf6:	mov    DWORD PTR [esp+0x60],0x0
  6f8bfe:	mov    DWORD PTR [esp+0x4c],edi
  6f8c02:	jmp    6f8c18
  6f8c04:	mov    DWORD PTR [esp+0x4c],0x0
  6f8c0c:	test   edi,edi
  6f8c0e:	je     6f8c18
  6f8c10:	mov    DWORD PTR [esp],edi
  6f8c13:	call   1fbb20
  6f8c18:	mov    DWORD PTR [esp+0x16c],0x0
  6f8c23:	mov    DWORD PTR [esp+0x4],0x0
  6f8c2b:	mov    DWORD PTR [esp],0x0
  6f8c32:	call   106b137  ; DIContainerLogic::get_InventoryService
  6f8c37:	test   eax,eax
  6f8c39:	je     6fa135
  6f8c3f:	mov    ecx,DWORD PTR [esi+0x10]
  6f8c42:	lea    edi,[ebx+0x56e5c]  ; literal "event_energy"
  6f8c48:	mov    edx,DWORD PTR [edi]
  6f8c4a:	lea    esi,[esp+0x16c]
  6f8c51:	mov    DWORD PTR [esp+0xc],esi
  6f8c55:	mov    DWORD PTR [esp+0x8],edx
  6f8c59:	mov    DWORD PTR [esp+0x4],ecx
  6f8c5d:	mov    DWORD PTR [esp],eax
  6f8c60:	mov    DWORD PTR [esp+0x10],0x0
  6f8c68:	call   4fe577  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::TryGetItemGameData
  6f8c6d:	test   al,al
  6f8c6f:	jne    6f8d24
  6f8c75:	mov    eax,DWORD PTR [esp+0x38]
  6f8c79:	mov    eax,DWORD PTR [eax]
  6f8c7b:	test   BYTE PTR [eax+0xb2],0x1
  6f8c82:	je     6f8c92
  6f8c84:	cmp    DWORD PTR [eax+0x60],0x0
  6f8c88:	jne    6f8c92
  6f8c8a:	mov    DWORD PTR [esp],eax
  6f8c8d:	call   1db0b8
  6f8c92:	mov    DWORD PTR [esp+0x4],0x0
  6f8c9a:	mov    DWORD PTR [esp],0x0
  6f8ca1:	call   106ecf4  ; DIContainerBalancing::get_GameConstantsBalancingDataProvider
  6f8ca6:	test   eax,eax
  6f8ca8:	je     6fa135
  6f8cae:	mov    DWORD PTR [esp],eax
  6f8cb1:	mov    DWORD PTR [esp+0x4],0x0
  6f8cb9:	call   ab9099  ; ABH.Shared.BalancingData.GameConstantsBalancingDataProvider::get_EventItemMaxCap
  6f8cbe:	mov    esi,eax
  6f8cc0:	mov    DWORD PTR [esp+0x4],0x0
  6f8cc8:	mov    DWORD PTR [esp],0x0
  6f8ccf:	call   106b137  ; DIContainerLogic::get_InventoryService
  6f8cd4:	test   eax,eax
  6f8cd6:	je     6fa135
  6f8cdc:	mov    ecx,DWORD PTR [ebp+0x8]
  6f8cdf:	mov    ecx,DWORD PTR [ecx+0x10]
  6f8ce2:	mov    edx,DWORD PTR [edi]
  6f8ce4:	lea    edi,[ebx+0x57298]  ; literal "repair_energy"
  6f8cea:	mov    edi,DWORD PTR [edi]
  6f8cec:	mov    DWORD PTR [esp+0x18],edi
  6f8cf0:	mov    DWORD PTR [esp+0x14],esi
  6f8cf4:	mov    DWORD PTR [esp+0x10],edx
  6f8cf8:	mov    DWORD PTR [esp+0x4],ecx
  6f8cfc:	mov    DWORD PTR [esp],eax
  6f8cff:	mov    DWORD PTR [esp+0x20],0x0
  6f8d07:	mov    DWORD PTR [esp+0x1c],0x0
  6f8d0f:	mov    DWORD PTR [esp+0xc],0x1
  6f8d17:	mov    DWORD PTR [esp+0x8],0x1
  6f8d1f:	call   500411  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::AddItem
  6f8d24:	mov    DWORD PTR [esp+0x4],0x0
  6f8d2c:	mov    DWORD PTR [esp],0x0
  6f8d33:	call   1092c85  ; DIContainerLogic::get_WorldMapService
  6f8d38:	test   eax,eax
  6f8d3a:	je     6fa135
  6f8d40:	mov    edi,DWORD PTR [ebp+0x8]
  6f8d43:	mov    ecx,DWORD PTR [edi+0x14]
  6f8d46:	mov    DWORD PTR [esp+0x8],edi
  6f8d4a:	mov    DWORD PTR [esp+0x4],ecx
  6f8d4e:	mov    DWORD PTR [esp],eax
  6f8d51:	mov    DWORD PTR [esp+0xc],0x0
  6f8d59:	call   ab7c37  ; ABH.Services.Logic.WorldMapService::FixPlayerProgression
  6f8d5e:	mov    DWORD PTR [esp+0x4],0x0
  6f8d66:	mov    DWORD PTR [esp],0x0
  6f8d6d:	call   106b137  ; DIContainerLogic::get_InventoryService
  6f8d72:	test   eax,eax
  6f8d74:	je     6fa135
  6f8d7a:	mov    ecx,DWORD PTR [edi+0x10]
  6f8d7d:	mov    DWORD PTR [esp+0x4],ecx
  6f8d81:	mov    DWORD PTR [esp],eax
  6f8d84:	mov    DWORD PTR [esp+0x8],0x0
  6f8d8c:	call   56e5f4  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::FixPotionsInInventory
  6f8d91:	mov    DWORD PTR [esp+0x4],0x0
  6f8d99:	mov    DWORD PTR [esp],0x0
  6f8da0:	call   106b137  ; DIContainerLogic::get_InventoryService
  6f8da5:	test   eax,eax
  6f8da7:	je     6fa135
  6f8dad:	mov    DWORD PTR [esp+0x4],edi
  6f8db1:	mov    DWORD PTR [esp],eax
  6f8db4:	mov    DWORD PTR [esp+0x8],0x0
  6f8dbc:	call   57a795  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::FixSeason10MissingTrophy
  6f8dc1:	mov    DWORD PTR [esp],edi
  6f8dc4:	call   6fac72  ; ABH.GameDatas.PlayerGameData::ConvertUpgradeClassesToSkins
  6f8dc9:	mov    DWORD PTR [esp],edi
  6f8dcc:	call   6fb47d  ; ABH.GameDatas.PlayerGameData::InitSkinSet
  6f8dd1:	mov    DWORD PTR [esp],edi
  6f8dd4:	call   6fc19e  ; ABH.GameDatas.PlayerGameData::RecheckExperienceProgress
  6f8dd9:	mov    DWORD PTR [esp],edi
  6f8ddc:	call   6fc50f  ; ABH.GameDatas.PlayerGameData::RecheckMasteryProgress
  6f8de1:	mov    eax,DWORD PTR [esp+0x44]
  6f8de5:	mov    eax,DWORD PTR [eax]
  6f8de7:	mov    DWORD PTR [esp+0x4],eax
  6f8deb:	mov    DWORD PTR [esp],edi
  6f8dee:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  6f8df3:	test   eax,eax
  6f8df5:	je     6fa135
  6f8dfb:	mov    DWORD PTR [esp],eax
  6f8dfe:	mov    DWORD PTR [esp+0x4],0x0
  6f8e06:	call   179de33  ; ABH.Shared.Models.PlayerData::get_ConvertionFor153
  6f8e0b:	test   al,al
  6f8e0d:	jne    6f8ffe
  6f8e13:	mov    DWORD PTR [esp],edi
  6f8e16:	call   6fcbe8  ; ABH.GameDatas.PlayerGameData::ConvertMasteryTo60
  6f8e1b:	mov    eax,DWORD PTR [esp+0x44]
  6f8e1f:	mov    eax,DWORD PTR [eax]
  6f8e21:	mov    DWORD PTR [esp+0x4],eax
  6f8e25:	mov    DWORD PTR [esp],edi
  6f8e28:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  6f8e2d:	test   eax,eax
  6f8e2f:	je     6fa135
  6f8e35:	mov    DWORD PTR [esp],eax
  6f8e38:	mov    DWORD PTR [esp+0x4],0x0
  6f8e40:	call   179d904  ; ABH.Shared.Models.PlayerData::get_BossIntrosPlayed
  6f8e45:	test   eax,eax
  6f8e47:	jne    6f8ea2
  6f8e49:	mov    eax,DWORD PTR [esp+0x44]
  6f8e4d:	mov    eax,DWORD PTR [eax]
  6f8e4f:	mov    DWORD PTR [esp+0x4],eax
  6f8e53:	mov    DWORD PTR [esp],edi
  6f8e56:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  6f8e5b:	mov    esi,eax
  6f8e5d:	lea    eax,[ebx+0x43ba4]
  6f8e63:	mov    eax,DWORD PTR [eax]
  6f8e65:	mov    DWORD PTR [esp],eax
  6f8e68:	call   20bfb2
  6f8e6d:	mov    edi,eax
  6f8e6f:	lea    eax,[ebx+0x48c1c]
  6f8e75:	mov    eax,DWORD PTR [eax]
  6f8e77:	mov    DWORD PTR [esp+0x4],eax
  6f8e7b:	mov    DWORD PTR [esp],edi
  6f8e7e:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  6f8e83:	test   esi,esi
  6f8e85:	je     6fa135
  6f8e8b:	mov    DWORD PTR [esp+0x4],edi
  6f8e8f:	mov    DWORD PTR [esp],esi
  6f8e92:	mov    DWORD PTR [esp+0x8],0x0
  6f8e9a:	call   179d917  ; ABH.Shared.Models.PlayerData::set_BossIntrosPlayed
  6f8e9f:	mov    edi,DWORD PTR [ebp+0x8]
  6f8ea2:	mov    eax,DWORD PTR [esp+0x44]
  6f8ea6:	mov    eax,DWORD PTR [eax]
  6f8ea8:	mov    DWORD PTR [esp+0x4],eax
  6f8eac:	mov    DWORD PTR [esp],edi
  6f8eaf:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  6f8eb4:	test   eax,eax
  6f8eb6:	je     6fa135
  6f8ebc:	mov    DWORD PTR [esp],eax
  6f8ebf:	mov    DWORD PTR [esp+0x4],0x0
  6f8ec7:	call   179d904  ; ABH.Shared.Models.PlayerData::get_BossIntrosPlayed
  6f8ecc:	test   eax,eax
  6f8ece:	je     6fa135
  6f8ed4:	lea    ecx,[ebx+0x49e60]
  6f8eda:	mov    ecx,DWORD PTR [ecx]
  6f8edc:	mov    DWORD PTR [esp+0x4],ecx
  6f8ee0:	mov    DWORD PTR [esp],eax
  6f8ee3:	call   4c2ace  ; shared address: System.Collections.Generic.List`1<object>::Clear | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::Clear | System.Collections.Generic.List`1<System.Runtime.Serialization.DataMemberInfo>::Clear | +49 other aliases
  6f8ee8:	mov    eax,DWORD PTR [edi+0x10]
  6f8eeb:	test   eax,eax
  6f8eed:	je     6fa135
  6f8ef3:	mov    eax,DWORD PTR [eax+0x10]
  6f8ef6:	test   eax,eax
  6f8ef8:	je     6fa135
  6f8efe:	lea    ecx,[ebx+0x49f74]
  6f8f04:	mov    ecx,DWORD PTR [ecx]
  6f8f06:	mov    DWORD PTR [esp+0x8],ecx
  6f8f0a:	mov    DWORD PTR [esp],eax
  6f8f0d:	mov    DWORD PTR [esp+0x4],0x14
  6f8f15:	call   59ef98  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e68190(kind=0x15,data=0x1f27644)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e6b810(kind=0x15,data=0x1f2d694)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, BaseItemSlot>::get_Item | +2 other aliases
  6f8f1a:	test   eax,eax
  6f8f1c:	je     6fa135
  6f8f22:	lea    ecx,[ebx+0x4a82c]
  6f8f28:	mov    ecx,DWORD PTR [ecx]
  6f8f2a:	mov    DWORD PTR [esp+0x4],ecx
  6f8f2e:	mov    DWORD PTR [esp],eax
  6f8f31:	call   4c2ace  ; shared address: System.Collections.Generic.List`1<object>::Clear | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::Clear | System.Collections.Generic.List`1<System.Runtime.Serialization.DataMemberInfo>::Clear | +49 other aliases
  6f8f36:	mov    eax,DWORD PTR [edi+0x10]
  6f8f39:	test   eax,eax
  6f8f3b:	je     6fa135
  6f8f41:	lea    ecx,[ebx+0x49f7c]
  6f8f47:	mov    ecx,DWORD PTR [ecx]
  6f8f49:	mov    DWORD PTR [esp+0x4],ecx
  6f8f4d:	mov    DWORD PTR [esp],eax
  6f8f50:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  6f8f55:	test   eax,eax
  6f8f57:	je     6fa135
  6f8f5d:	mov    DWORD PTR [esp],eax
  6f8f60:	mov    DWORD PTR [esp+0x4],0x0
  6f8f68:	call   179bac0  ; ABH.Shared.Models.InventoryData::get_EventItems
  6f8f6d:	test   eax,eax
  6f8f6f:	je     6fa135
  6f8f75:	lea    ecx,[ebx+0x4ac84]
  6f8f7b:	mov    ecx,DWORD PTR [ecx]
  6f8f7d:	mov    DWORD PTR [esp+0x4],ecx
  6f8f81:	mov    DWORD PTR [esp],eax
  6f8f84:	call   4c2ace  ; shared address: System.Collections.Generic.List`1<object>::Clear | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::Clear | System.Collections.Generic.List`1<System.Runtime.Serialization.DataMemberInfo>::Clear | +49 other aliases
  6f8f89:	mov    DWORD PTR [esp+0x4],0x0
  6f8f91:	mov    DWORD PTR [esp],0x0
  6f8f98:	call   106b137  ; DIContainerLogic::get_InventoryService
  6f8f9d:	test   eax,eax
  6f8f9f:	je     6fa135
  6f8fa5:	mov    ecx,DWORD PTR [edi+0x10]
  6f8fa8:	mov    DWORD PTR [esp+0x4],ecx
  6f8fac:	mov    DWORD PTR [esp],eax
  6f8faf:	mov    DWORD PTR [esp+0x8],0x0
  6f8fb7:	call   56dce9  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::MapPotionRecipes
  6f8fbc:	mov    DWORD PTR [esp],edi
  6f8fbf:	call   6fd9af  ; ABH.GameDatas.PlayerGameData::AddXPotionIfNeeded
  6f8fc4:	mov    DWORD PTR [esp],edi
  6f8fc7:	call   6fda9a  ; ABH.GameDatas.PlayerGameData::MoveFromDeprecatedHotSpots
  6f8fcc:	mov    eax,DWORD PTR [esp+0x44]
  6f8fd0:	mov    eax,DWORD PTR [eax]
  6f8fd2:	mov    DWORD PTR [esp+0x4],eax
  6f8fd6:	mov    DWORD PTR [esp],edi
  6f8fd9:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  6f8fde:	test   eax,eax
  6f8fe0:	je     6fa135
  6f8fe6:	mov    DWORD PTR [esp],eax
  6f8fe9:	mov    DWORD PTR [esp+0x8],0x0
  6f8ff1:	mov    DWORD PTR [esp+0x4],0x1
  6f8ff9:	call   179de47  ; ABH.Shared.Models.PlayerData::set_ConvertionFor153
  6f8ffe:	mov    DWORD PTR [esp],edi
  6f9001:	call   6fded0  ; ABH.GameDatas.PlayerGameData::CleanUpSaleLists
  6f9006:	mov    eax,DWORD PTR [edi+0x14]
  6f9009:	test   eax,eax
  6f900b:	je     6f923b
  6f9011:	mov    eax,DWORD PTR [eax+0x10]
  6f9014:	test   eax,eax
  6f9016:	je     6f923b
  6f901c:	lea    ecx,[ebx+0x5729c]  ; literal "hotspot_003_battleground"
  6f9022:	mov    ecx,DWORD PTR [ecx]
  6f9024:	lea    esi,[ebx+0x4ac88]
  6f902a:	mov    edx,DWORD PTR [esi]
  6f902c:	mov    DWORD PTR [esp+0x8],edx
  6f9030:	mov    DWORD PTR [esp+0x4],ecx
  6f9034:	mov    DWORD PTR [esp],eax
  6f9037:	call   61ac0c  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::Remove | System.Collections.Generic.Dictionary`2<string, object>::Remove | System.Collections.Generic.Dictionary`2<System.IAsyncResult, System.AsyncCallback>::Remove | +18 other aliases
  6f903c:	test   al,al
  6f903e:	je     6f912a
  6f9044:	mov    eax,DWORD PTR [edi+0x14]
  6f9047:	test   eax,eax
  6f9049:	je     6fa135
  6f904f:	mov    DWORD PTR [esp+0x64],esi
  6f9053:	lea    ecx,[ebx+0x4ac8c]
  6f9059:	mov    ecx,DWORD PTR [ecx]
  6f905b:	mov    DWORD PTR [esp+0x4],ecx
  6f905f:	mov    DWORD PTR [esp],eax
  6f9062:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  6f9067:	test   eax,eax
  6f9069:	je     6fa135
  6f906f:	mov    DWORD PTR [esp],eax
  6f9072:	mov    DWORD PTR [esp+0x4],0x0
  6f907a:	mov    esi,ebx
  6f907c:	call   179f2ed  ; ABH.Shared.Models.WorldData::get_HotSpotInstances
  6f9081:	mov    edx,eax
  6f9083:	mov    eax,DWORD PTR [esp+0x58]
  6f9087:	mov    eax,DWORD PTR [eax]
  6f9089:	mov    eax,DWORD PTR [eax+0x50]
  6f908c:	cmp    DWORD PTR [eax+0xc],0x0
  6f9090:	jne    6f90f8
  6f9092:	mov    ebx,esi
  6f9094:	lea    eax,[ebx+0x4ac90]
  6f909a:	mov    esi,DWORD PTR [eax]
  6f909c:	lea    eax,[ebx+0x45f30]
  6f90a2:	mov    eax,DWORD PTR [eax]
  6f90a4:	mov    DWORD PTR [esp],eax
  6f90a7:	mov    DWORD PTR [esp+0x5c],edx
  6f90ab:	call   20bfb2
  6f90b0:	mov    DWORD PTR [esp+0x54],eax
  6f90b4:	mov    DWORD PTR [esp+0xb0],esi
  6f90bb:	lea    ecx,[ebx+0x4ac94]
  6f90c1:	mov    ecx,DWORD PTR [ecx]
  6f90c3:	mov    DWORD PTR [esp+0xc],ecx
  6f90c7:	mov    ecx,DWORD PTR [esp+0xb0]
  6f90ce:	mov    DWORD PTR [esp+0x8],ecx
  6f90d2:	mov    DWORD PTR [esp],eax
  6f90d5:	mov    DWORD PTR [esp+0x4],0x0
  6f90dd:	mov    esi,ebx
  6f90df:	call   16bd39a  ; shared address: System.Predicate`1<object>::.ctor | System.Predicate`1<ABH.Shared.Models.Generic.SaleItemDetails>::.ctor | System.Predicate`1<Rcs.Leaderboard+Score>::.ctor | +10 other aliases
  6f90e4:	mov    edx,DWORD PTR [esp+0x5c]
  6f90e8:	mov    eax,DWORD PTR [esp+0x58]
  6f90ec:	mov    eax,DWORD PTR [eax]
  6f90ee:	mov    eax,DWORD PTR [eax+0x50]
  6f90f1:	mov    ecx,DWORD PTR [esp+0x54]
  6f90f5:	mov    DWORD PTR [eax+0xc],ecx
  6f90f8:	test   edx,edx
  6f90fa:	je     6fa177
  6f9100:	mov    eax,DWORD PTR [esp+0x58]
  6f9104:	mov    eax,DWORD PTR [eax]
  6f9106:	mov    eax,DWORD PTR [eax+0x50]
  6f9109:	mov    eax,DWORD PTR [eax+0xc]
  6f910c:	lea    ecx,[esi+0x4ac98]
  6f9112:	mov    ecx,DWORD PTR [ecx]
  6f9114:	mov    DWORD PTR [esp+0x8],ecx
  6f9118:	mov    DWORD PTR [esp+0x4],eax
  6f911c:	mov    DWORD PTR [esp],edx
  6f911f:	mov    ebx,esi
  6f9121:	call   4c3f9a  ; shared address: System.Collections.Generic.List`1<object>::RemoveAll | System.Collections.Generic.List`1<ABH.Shared.Models.HotspotData>::RemoveAll | System.Collections.Generic.List`1<ABH.GameDatas.MailboxMessages.CustomMessageGameData>::RemoveAll
  6f9126:	mov    esi,DWORD PTR [esp+0x64]
  6f912a:	mov    eax,DWORD PTR [edi+0x14]
  6f912d:	test   eax,eax
  6f912f:	je     6fa135
  6f9135:	mov    eax,DWORD PTR [eax+0x10]
  6f9138:	test   eax,eax
  6f913a:	je     6fa135
  6f9140:	lea    ecx,[ebx+0x572a0]  ; literal "hotspot_005_battleground"
  6f9146:	mov    ecx,DWORD PTR [ecx]
  6f9148:	mov    edx,DWORD PTR [esi]
  6f914a:	mov    DWORD PTR [esp+0x8],edx
  6f914e:	mov    DWORD PTR [esp+0x4],ecx
  6f9152:	mov    DWORD PTR [esp],eax
  6f9155:	call   61ac0c  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::Remove | System.Collections.Generic.Dictionary`2<string, object>::Remove | System.Collections.Generic.Dictionary`2<System.IAsyncResult, System.AsyncCallback>::Remove | +18 other aliases
  6f915a:	test   al,al
  6f915c:	je     6f923b
  6f9162:	mov    eax,DWORD PTR [edi+0x14]
  6f9165:	test   eax,eax
  6f9167:	je     6fa135
  6f916d:	lea    ecx,[ebx+0x4ac8c]
  6f9173:	mov    ecx,DWORD PTR [ecx]
  6f9175:	mov    DWORD PTR [esp+0x4],ecx
  6f9179:	mov    DWORD PTR [esp],eax
  6f917c:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  6f9181:	test   eax,eax
  6f9183:	je     6fa135
  6f9189:	mov    DWORD PTR [esp],eax
  6f918c:	mov    DWORD PTR [esp+0x4],0x0
  6f9194:	mov    edi,ebx
  6f9196:	call   179f2ed  ; ABH.Shared.Models.WorldData::get_HotSpotInstances
  6f919b:	mov    esi,eax
  6f919d:	mov    eax,DWORD PTR [esp+0x58]
  6f91a1:	mov    eax,DWORD PTR [eax]
  6f91a3:	mov    eax,DWORD PTR [eax+0x50]
  6f91a6:	cmp    DWORD PTR [eax+0x10],0x0
  6f91aa:	jne    6f920a
  6f91ac:	mov    ebx,edi
  6f91ae:	lea    eax,[ebx+0x4ac9c]
  6f91b4:	mov    edi,DWORD PTR [eax]
  6f91b6:	lea    eax,[ebx+0x45f30]
  6f91bc:	mov    eax,DWORD PTR [eax]
  6f91be:	mov    DWORD PTR [esp],eax
  6f91c1:	call   20bfb2
  6f91c6:	mov    DWORD PTR [esp+0x64],eax
  6f91ca:	mov    DWORD PTR [esp+0xa8],edi
  6f91d1:	lea    ecx,[ebx+0x4ac94]
  6f91d7:	mov    ecx,DWORD PTR [ecx]
  6f91d9:	mov    DWORD PTR [esp+0xc],ecx
  6f91dd:	mov    ecx,DWORD PTR [esp+0xa8]
  6f91e4:	mov    DWORD PTR [esp+0x8],ecx
  6f91e8:	mov    DWORD PTR [esp],eax
  6f91eb:	mov    DWORD PTR [esp+0x4],0x0
  6f91f3:	mov    edi,ebx
  6f91f5:	call   16bd39a  ; shared address: System.Predicate`1<object>::.ctor | System.Predicate`1<ABH.Shared.Models.Generic.SaleItemDetails>::.ctor | System.Predicate`1<Rcs.Leaderboard+Score>::.ctor | +10 other aliases
  6f91fa:	mov    eax,DWORD PTR [esp+0x58]
  6f91fe:	mov    eax,DWORD PTR [eax]
  6f9200:	mov    eax,DWORD PTR [eax+0x50]
  6f9203:	mov    ecx,DWORD PTR [esp+0x64]
  6f9207:	mov    DWORD PTR [eax+0x10],ecx
  6f920a:	test   esi,esi
  6f920c:	je     6fa133
  6f9212:	mov    eax,DWORD PTR [esp+0x58]
  6f9216:	mov    eax,DWORD PTR [eax]
  6f9218:	mov    eax,DWORD PTR [eax+0x50]
  6f921b:	mov    eax,DWORD PTR [eax+0x10]
  6f921e:	lea    ecx,[edi+0x4ac98]
  6f9224:	mov    ecx,DWORD PTR [ecx]
  6f9226:	mov    DWORD PTR [esp+0x8],ecx
  6f922a:	mov    DWORD PTR [esp+0x4],eax
  6f922e:	mov    DWORD PTR [esp],esi
  6f9231:	mov    ebx,edi
  6f9233:	call   4c3f9a  ; shared address: System.Collections.Generic.List`1<object>::RemoveAll | System.Collections.Generic.List`1<ABH.Shared.Models.HotspotData>::RemoveAll | System.Collections.Generic.List`1<ABH.GameDatas.MailboxMessages.CustomMessageGameData>::RemoveAll
  6f9238:	mov    edi,DWORD PTR [ebp+0x8]
  6f923b:	mov    eax,DWORD PTR [esp+0x44]
  6f923f:	mov    eax,DWORD PTR [eax]
  6f9241:	mov    DWORD PTR [esp+0x4],eax
  6f9245:	mov    DWORD PTR [esp],edi
  6f9248:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  6f924d:	test   eax,eax
  6f924f:	je     6fa135
  6f9255:	mov    DWORD PTR [esp],eax
  6f9258:	mov    DWORD PTR [esp+0x4],0x0
  6f9260:	call   179ce84  ; ABH.Shared.Models.PlayerData::get_TutorialTracks
  6f9265:	test   eax,eax
  6f9267:	je     6f930f
  6f926d:	mov    eax,DWORD PTR [esp+0x44]
  6f9271:	mov    eax,DWORD PTR [eax]
  6f9273:	mov    DWORD PTR [esp+0x4],eax
  6f9277:	mov    DWORD PTR [esp],edi
  6f927a:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  6f927f:	test   eax,eax
  6f9281:	je     6fa135
  6f9287:	mov    DWORD PTR [esp],eax
  6f928a:	mov    DWORD PTR [esp+0x4],0x0
  6f9292:	call   179ce84  ; ABH.Shared.Models.PlayerData::get_TutorialTracks
  6f9297:	test   eax,eax
  6f9299:	je     6fa135
  6f929f:	lea    esi,[ebx+0x572a4]  ; literal "tutorial_equip_crafted_item"
  6f92a5:	mov    ecx,DWORD PTR [esi]
  6f92a7:	lea    edx,[ebx+0x4a974]
  6f92ad:	mov    edx,DWORD PTR [edx]
  6f92af:	mov    DWORD PTR [esp+0x8],edx
  6f92b3:	mov    DWORD PTR [esp+0x4],ecx
  6f92b7:	mov    DWORD PTR [esp],eax
  6f92ba:	call   61219e  ; shared address: System.Collections.Generic.Dictionary`2<string, int>::ContainsKey | System.Collections.Generic.Dictionary`2<object, int>::ContainsKey
  6f92bf:	test   al,al
  6f92c1:	je     6f930f
  6f92c3:	mov    eax,DWORD PTR [esp+0x44]
  6f92c7:	mov    eax,DWORD PTR [eax]
  6f92c9:	mov    DWORD PTR [esp+0x4],eax
  6f92cd:	mov    DWORD PTR [esp],edi
  6f92d0:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  6f92d5:	test   eax,eax
  6f92d7:	je     6fa135
  6f92dd:	mov    DWORD PTR [esp],eax
  6f92e0:	mov    DWORD PTR [esp+0x4],0x0
  6f92e8:	call   179ce84  ; ABH.Shared.Models.PlayerData::get_TutorialTracks
  6f92ed:	test   eax,eax
  6f92ef:	je     6fa135
  6f92f5:	mov    ecx,DWORD PTR [esi]
  6f92f7:	lea    edx,[ebx+0x4aca0]
  6f92fd:	mov    edx,DWORD PTR [edx]
  6f92ff:	mov    DWORD PTR [esp+0x8],edx
  6f9303:	mov    DWORD PTR [esp+0x4],ecx
  6f9307:	mov    DWORD PTR [esp],eax
  6f930a:	call   612ab1  ; shared address: System.Collections.Generic.Dictionary`2<string, int>::Remove | System.Collections.Generic.Dictionary`2<UnityEngine.Font, int>::Remove | System.Collections.Generic.Dictionary`2<object, int>::Remove
  6f930f:	mov    DWORD PTR [esp+0x4],0x0
  6f9317:	mov    DWORD PTR [esp],0x0
  6f931e:	call   106b137  ; DIContainerLogic::get_InventoryService
  6f9323:	test   eax,eax
  6f9325:	je     6fa135
  6f932b:	mov    ecx,DWORD PTR [edi+0x10]
  6f932e:	lea    edx,[ebx+0x572a8]  ; literal "pvp_league_crown_max"
  6f9334:	mov    DWORD PTR [esp+0x64],edx
  6f9338:	mov    edx,DWORD PTR [edx]
  6f933a:	lea    esi,[esp+0x168]
  6f9341:	mov    DWORD PTR [esp+0xc],esi
  6f9345:	mov    DWORD PTR [esp+0x8],edx
  6f9349:	mov    DWORD PTR [esp+0x4],ecx
  6f934d:	mov    DWORD PTR [esp],eax
  6f9350:	mov    DWORD PTR [esp+0x10],0x0
  6f9358:	call   4fe577  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::TryGetItemGameData
  6f935d:	test   al,al
  6f935f:	jne    6f9502
  6f9365:	mov    DWORD PTR [esp+0x4],0x0
  6f936d:	mov    DWORD PTR [esp],0x0
  6f9374:	call   106b137  ; DIContainerLogic::get_InventoryService
  6f9379:	test   eax,eax
  6f937b:	je     6fa135
  6f9381:	mov    ecx,DWORD PTR [edi+0x10]
  6f9384:	lea    edx,[ebx+0x572ac]  ; literal "pvp_league_crown"
  6f938a:	mov    edx,DWORD PTR [edx]
  6f938c:	lea    esi,[esp+0x164]
  6f9393:	mov    DWORD PTR [esp+0xc],esi
  6f9397:	mov    DWORD PTR [esp+0x8],edx
  6f939b:	mov    DWORD PTR [esp+0x4],ecx
  6f939f:	mov    DWORD PTR [esp],eax
  6f93a2:	mov    DWORD PTR [esp+0x10],0x0
  6f93aa:	call   4fe577  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::TryGetItemGameData
  6f93af:	test   al,al
  6f93b1:	je     6f9502
  6f93b7:	mov    DWORD PTR [esp+0x4],0x0
  6f93bf:	mov    DWORD PTR [esp],0x0
  6f93c6:	call   106b137  ; DIContainerLogic::get_InventoryService
  6f93cb:	mov    DWORD PTR [esp+0x5c],eax
  6f93cf:	mov    edx,DWORD PTR [esp+0x164]
  6f93d6:	test   edx,edx
  6f93d8:	je     6fa135
  6f93de:	mov    eax,DWORD PTR [edi+0x10]
  6f93e1:	mov    DWORD PTR [esp+0x54],eax
  6f93e5:	lea    eax,[ebx+0x45854]
  6f93eb:	mov    eax,DWORD PTR [eax]
  6f93ed:	mov    ecx,DWORD PTR [edx]
  6f93ef:	mov    DWORD PTR [esp+0x58],edx
  6f93f3:	movzx  edx,WORD PTR [ecx+0xaa]
  6f93fa:	test   edx,edx
  6f93fc:	je     6f940d
  6f93fe:	mov    esi,DWORD PTR [ecx+0x4c]
  6f9401:	xor    edi,edi
  6f9403:	cmp    DWORD PTR [esi+edi*8],eax
  6f9406:	je     6f9429
  6f9408:	inc    edi
  6f9409:	cmp    edi,edx
  6f940b:	jb     6f9403
  6f940d:	mov    DWORD PTR [esp+0x4],eax
  6f9411:	mov    esi,DWORD PTR [esp+0x58]
  6f9415:	mov    DWORD PTR [esp],esi
  6f9418:	mov    DWORD PTR [esp+0x8],0x1
  6f9420:	call   1c1964
  6f9425:	mov    ecx,eax
  6f9427:	jmp    6f9438
  6f9429:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  6f942d:	lea    ecx,[ecx+eax*8+0xbc]
  6f9434:	mov    esi,DWORD PTR [esp+0x58]
  6f9438:	mov    eax,DWORD PTR [ecx+0x4]
  6f943b:	mov    DWORD PTR [esp+0x4],eax
  6f943f:	mov    DWORD PTR [esp],esi
  6f9442:	call   DWORD PTR [ecx]
  6f9444:	mov    edi,eax
  6f9446:	test   edi,edi
  6f9448:	je     6fa135
  6f944e:	lea    eax,[ebx+0x45850]
  6f9454:	mov    eax,DWORD PTR [eax]
  6f9456:	mov    ebx,DWORD PTR [edi]
  6f9458:	movzx  edx,WORD PTR [ebx+0xaa]
  6f945f:	test   edx,edx
  6f9461:	je     6f9472
  6f9463:	mov    esi,DWORD PTR [ebx+0x4c]
  6f9466:	xor    ecx,ecx
  6f9468:	cmp    DWORD PTR [esi+ecx*8],eax
  6f946b:	je     6f948e
  6f946d:	inc    ecx
  6f946e:	cmp    ecx,edx
  6f9470:	jb     6f9468
  6f9472:	mov    DWORD PTR [esp+0x4],eax
  6f9476:	mov    DWORD PTR [esp],edi
  6f9479:	mov    DWORD PTR [esp+0x8],0x2
  6f9481:	mov    ebx,DWORD PTR [esp+0x68]
  6f9485:	call   1c1964
  6f948a:	mov    ecx,eax
  6f948c:	jmp    6f949d
  6f948e:	mov    eax,DWORD PTR [esi+ecx*8+0x4]
  6f9492:	lea    ecx,[ebx+eax*8+0xc4]
  6f9499:	mov    ebx,DWORD PTR [esp+0x68]
  6f949d:	mov    eax,DWORD PTR [ecx+0x4]
  6f94a0:	mov    DWORD PTR [esp+0x4],eax
  6f94a4:	mov    DWORD PTR [esp],edi
  6f94a7:	call   DWORD PTR [ecx]
  6f94a9:	mov    esi,DWORD PTR [esp+0x5c]
  6f94ad:	test   esi,esi
  6f94af:	je     6fa135
  6f94b5:	mov    ecx,DWORD PTR [esp+0x64]
  6f94b9:	mov    ecx,DWORD PTR [ecx]
  6f94bb:	lea    edx,[ebx+0x572b0]  ; literal "FirstLoadOfNewVersion"
  6f94c1:	mov    edx,DWORD PTR [edx]
  6f94c3:	mov    DWORD PTR [esp+0x18],edx
  6f94c7:	mov    DWORD PTR [esp+0x10],ecx
  6f94cb:	mov    DWORD PTR [esp+0x8],eax
  6f94cf:	mov    eax,DWORD PTR [esp+0x54]
  6f94d3:	mov    DWORD PTR [esp+0x4],eax
  6f94d7:	mov    DWORD PTR [esp],esi
  6f94da:	mov    DWORD PTR [esp+0x20],0x0
  6f94e2:	mov    DWORD PTR [esp+0x1c],0x0
  6f94ea:	mov    DWORD PTR [esp+0x14],0x1
  6f94f2:	mov    DWORD PTR [esp+0xc],0x1
  6f94fa:	call   500411  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::AddItem
  6f94ff:	mov    edi,DWORD PTR [ebp+0x8]
  6f9502:	mov    eax,DWORD PTR [edi+0x30]
  6f9505:	test   eax,eax
  6f9507:	je     6fa135
  6f950d:	lea    ecx,[ebx+0x4a92c]
  6f9513:	mov    ecx,DWORD PTR [ecx]
  6f9515:	mov    DWORD PTR [esp+0x8],ecx
  6f9519:	mov    DWORD PTR [esp+0x4],eax
  6f951d:	lea    eax,[esp+0x98]
  6f9524:	mov    DWORD PTR [esp],eax
  6f9527:	call   4c350f  ; shared address: System.Collections.Generic.List`1<object>::GetEnumerator | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::GetEnumerator | System.Collections.Generic.List`1<System.Net.Cookie>::GetEnumerator | +129 other aliases
  6f952c:	sub    esp,0x4
  6f952f:	movsd  xmm0,QWORD PTR [esp+0x98]
  6f9538:	movsd  xmm1,QWORD PTR [esp+0xa0]
  6f9541:	movsd  QWORD PTR [esp+0x158],xmm1
  6f954a:	movsd  QWORD PTR [esp+0x150],xmm0
  6f9553:	lea    eax,[ebx+0x4a934]
  6f9559:	mov    DWORD PTR [esp+0x3c],eax
  6f955d:	mov    esi,ebx
  6f955f:	jmp    6f9b78
  6f9564:	lea    eax,[esi+0x4a930]
  6f956a:	mov    eax,DWORD PTR [eax]
  6f956c:	mov    DWORD PTR [esp+0x4],eax
  6f9570:	lea    eax,[esp+0x150]
  6f9577:	mov    DWORD PTR [esp],eax
  6f957a:	mov    ebx,esi
  6f957c:	call   447f1e
  6f9581:	mov    edi,eax
  6f9583:	test   edi,edi
  6f9585:	je     6f9bac
  6f958b:	mov    eax,DWORD PTR [edi+0x18]
  6f958e:	test   eax,eax
  6f9590:	je     6f9bb8
  6f9596:	mov    eax,DWORD PTR [eax+0x10]
  6f9599:	test   eax,eax
  6f959b:	je     6f9bc6
  6f95a1:	mov    esi,DWORD PTR [esp+0x68]
  6f95a5:	lea    ecx,[esi+0x4ac44]
  6f95ab:	mov    ecx,DWORD PTR [ecx]
  6f95ad:	mov    DWORD PTR [esp+0x4],ecx
  6f95b1:	mov    DWORD PTR [esp],eax
  6f95b4:	mov    ebx,esi
  6f95b6:	call   5a175a  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e68190(kind=0x15,data=0x1f27644)>::get_Values | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, object>::get_Values
  6f95bb:	test   eax,eax
  6f95bd:	je     6f9bd4
  6f95c3:	lea    ecx,[esi+0x4ac48]
  6f95c9:	mov    ecx,DWORD PTR [ecx]
  6f95cb:	mov    DWORD PTR [esp+0x8],ecx
  6f95cf:	mov    DWORD PTR [esp+0x4],eax
  6f95d3:	lea    eax,[esp+0x80]
  6f95da:	mov    DWORD PTR [esp],eax
  6f95dd:	mov    ebx,esi
  6f95df:	call   1229ff0  ; shared address: System.Collections.Generic.Dictionary`2+ValueCollection<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e68190(kind=0x15,data=0x1f27644)>::GetEnumerator | System.Collections.Generic.Dictionary`2+ValueCollection<ABH.Shared.Generic.InventoryItemType, object>::GetEnumerator
  6f95e4:	sub    esp,0x4
  6f95e7:	mov    DWORD PTR [esp+0x40],edi
  6f95eb:	mov    eax,DWORD PTR [esp+0x90]
  6f95f2:	mov    DWORD PTR [esp+0x140],eax
  6f95f9:	movsd  xmm0,QWORD PTR [esp+0x80]
  6f9602:	movsd  xmm1,QWORD PTR [esp+0x88]
  6f960b:	movsd  QWORD PTR [esp+0x138],xmm1
  6f9614:	movsd  QWORD PTR [esp+0x130],xmm0
  6f961d:	lea    eax,[esi+0x4ac50]
  6f9623:	mov    eax,DWORD PTR [eax]
  6f9625:	mov    DWORD PTR [esp+0x4],eax
  6f9629:	lea    eax,[esp+0x130]
  6f9630:	mov    DWORD PTR [esp],eax
  6f9633:	mov    ebx,esi
  6f9635:	call   1222bc3
  6f963a:	mov    edi,0x8e1
  6f963f:	test   al,al
  6f9641:	je     6f9b61
  6f9647:	lea    eax,[esi+0x4ac4c]
  6f964d:	mov    eax,DWORD PTR [eax]
  6f964f:	mov    DWORD PTR [esp+0x4],eax
  6f9653:	lea    eax,[esp+0x130]
  6f965a:	mov    DWORD PTR [esp],eax
  6f965d:	mov    ebx,esi
  6f965f:	call   1222c52
  6f9664:	lea    ecx,[esi+0x458bc]
  6f966a:	mov    DWORD PTR [esp+0x48],ecx
  6f966e:	mov    ecx,DWORD PTR [ecx]
  6f9670:	mov    DWORD PTR [esp],ecx
  6f9673:	mov    ebx,esi
  6f9675:	mov    edi,eax
  6f9677:	call   20bfb2
  6f967c:	mov    ecx,edi
  6f967e:	mov    edi,eax
  6f9680:	lea    eax,[esi+0x4a80c]
  6f9686:	mov    eax,DWORD PTR [eax]
  6f9688:	mov    DWORD PTR [esp+0x8],eax
  6f968c:	mov    DWORD PTR [esp+0x4],ecx
  6f9690:	mov    DWORD PTR [esp],edi
  6f9693:	mov    ebx,esi
  6f9695:	call   4c167f  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<System.Reflection.MemberInfo>::.ctor | System.Collections.Generic.List`1<System.Reflection.PropertyInfo>::.ctor | +8 other aliases
  6f969a:	test   edi,edi
  6f969c:	je     6f9b67
  6f96a2:	lea    eax,[esi+0x4a81c]
  6f96a8:	mov    eax,DWORD PTR [eax]
  6f96aa:	mov    DWORD PTR [esp+0x8],eax
  6f96ae:	mov    DWORD PTR [esp+0x4],edi
  6f96b2:	lea    eax,[esp+0x70]
  6f96b6:	mov    DWORD PTR [esp],eax
  6f96b9:	mov    ebx,esi
  6f96bb:	call   4c350f  ; shared address: System.Collections.Generic.List`1<object>::GetEnumerator | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::GetEnumerator | System.Collections.Generic.List`1<System.Net.Cookie>::GetEnumerator | +129 other aliases
  6f96c0:	sub    esp,0x4
  6f96c3:	movsd  xmm0,QWORD PTR [esp+0x70]
  6f96c9:	movsd  xmm1,QWORD PTR [esp+0x78]
  6f96cf:	movsd  QWORD PTR [esp+0x128],xmm1
  6f96d8:	movsd  QWORD PTR [esp+0x120],xmm0
  6f96e1:	mov    edi,esi
  6f96e3:	lea    eax,[edi+0x4a824]
  6f96e9:	mov    eax,DWORD PTR [eax]
  6f96eb:	mov    DWORD PTR [esp+0x4],eax
  6f96ef:	lea    eax,[esp+0x120]
  6f96f6:	mov    DWORD PTR [esp],eax
  6f96f9:	mov    ebx,edi
  6f96fb:	call   447e4e
  6f9700:	mov    ecx,0x8c2
  6f9705:	test   al,al
  6f9707:	je     6f9a06
  6f970d:	lea    eax,[edi+0x4a820]
  6f9713:	mov    eax,DWORD PTR [eax]
  6f9715:	mov    DWORD PTR [esp+0x4],eax
  6f9719:	lea    eax,[esp+0x120]
  6f9720:	mov    DWORD PTR [esp],eax
  6f9723:	mov    ebx,edi
  6f9725:	call   447f1e
  6f972a:	mov    esi,eax
  6f972c:	mov    DWORD PTR [esp+0x4],0x0
  6f9734:	mov    DWORD PTR [esp],0x0
  6f973b:	mov    ebx,edi
  6f973d:	call   106b137  ; DIContainerLogic::get_InventoryService
  6f9742:	mov    DWORD PTR [esp+0x5c],eax
  6f9746:	test   esi,esi
  6f9748:	je     6f9a0e
  6f974e:	mov    eax,DWORD PTR [ebp+0x8]
  6f9751:	mov    eax,DWORD PTR [eax+0x10]
  6f9754:	mov    DWORD PTR [esp+0x58],eax
  6f9758:	lea    ebx,[edi+0x45854]
  6f975e:	mov    eax,DWORD PTR [ebx]
  6f9760:	mov    ecx,DWORD PTR [esi]
  6f9762:	mov    DWORD PTR [esp+0x64],esi
  6f9766:	movzx  edx,WORD PTR [ecx+0xaa]
  6f976d:	test   edx,edx
  6f976f:	je     6f9780
  6f9771:	mov    edi,DWORD PTR [ecx+0x4c]
  6f9774:	xor    esi,esi
  6f9776:	cmp    DWORD PTR [edi+esi*8],eax
  6f9779:	je     6f97a4
  6f977b:	inc    esi
  6f977c:	cmp    esi,edx
  6f977e:	jb     6f9776
  6f9780:	mov    DWORD PTR [esp+0x50],ebx
  6f9784:	mov    DWORD PTR [esp+0x4],eax
  6f9788:	mov    esi,DWORD PTR [esp+0x64]
  6f978c:	mov    DWORD PTR [esp],esi
  6f978f:	mov    DWORD PTR [esp+0x8],0x0
  6f9797:	mov    edi,DWORD PTR [esp+0x68]
  6f979b:	mov    ebx,edi
  6f979d:	call   1c1964
  6f97a2:	jmp    6f97bb
  6f97a4:	mov    DWORD PTR [esp+0x50],ebx
  6f97a8:	mov    eax,DWORD PTR [edi+esi*8+0x4]
  6f97ac:	lea    eax,[ecx+eax*8+0xb4]
  6f97b3:	mov    edi,DWORD PTR [esp+0x68]
  6f97b7:	mov    esi,DWORD PTR [esp+0x64]
  6f97bb:	mov    ecx,DWORD PTR [eax]
  6f97bd:	mov    eax,DWORD PTR [eax+0x4]
  6f97c0:	mov    DWORD PTR [esp+0x4],eax
  6f97c4:	mov    DWORD PTR [esp],esi
  6f97c7:	mov    ebx,edi
  6f97c9:	call   ecx
  6f97cb:	test   eax,eax
  6f97cd:	je     6f9a1a
  6f97d3:	mov    DWORD PTR [esp+0x64],esi
  6f97d7:	lea    ecx,[edi+0x45858]
  6f97dd:	mov    edi,DWORD PTR [ecx]
  6f97df:	mov    ebx,DWORD PTR [eax]
  6f97e1:	mov    DWORD PTR [esp+0x54],eax
  6f97e5:	movzx  edx,WORD PTR [ebx+0xaa]
  6f97ec:	test   edx,edx
  6f97ee:	je     6f97ff
  6f97f0:	mov    esi,DWORD PTR [ebx+0x4c]
  6f97f3:	xor    ecx,ecx
  6f97f5:	cmp    DWORD PTR [esi+ecx*8],edi
  6f97f8:	je     6f9821
  6f97fa:	inc    ecx
  6f97fb:	cmp    ecx,edx
  6f97fd:	jb     6f97f5
  6f97ff:	mov    DWORD PTR [esp+0x4],edi
  6f9803:	mov    esi,DWORD PTR [esp+0x54]
  6f9807:	mov    DWORD PTR [esp],esi
  6f980a:	mov    DWORD PTR [esp+0x8],0x0
  6f9812:	mov    edi,DWORD PTR [esp+0x68]
  6f9816:	mov    ebx,edi
  6f9818:	call   1c1964
  6f981d:	mov    edx,esi
  6f981f:	jmp    6f9834
  6f9821:	mov    eax,DWORD PTR [esi+ecx*8+0x4]
  6f9825:	lea    eax,[ebx+eax*8+0xb4]
  6f982c:	mov    edi,DWORD PTR [esp+0x68]
  6f9830:	mov    edx,DWORD PTR [esp+0x54]
  6f9834:	mov    ecx,DWORD PTR [eax]
  6f9836:	mov    eax,DWORD PTR [eax+0x4]
  6f9839:	mov    DWORD PTR [esp+0x4],eax
  6f983d:	mov    DWORD PTR [esp],edx
  6f9840:	mov    ebx,edi
  6f9842:	call   ecx
  6f9844:	mov    edx,DWORD PTR [esp+0x5c]
  6f9848:	test   edx,edx
  6f984a:	je     6f9a26
  6f9850:	lea    ecx,[esp+0x11c]
  6f9857:	mov    DWORD PTR [esp+0xc],ecx
  6f985b:	mov    DWORD PTR [esp+0x8],eax
  6f985f:	mov    eax,DWORD PTR [esp+0x58]
  6f9863:	mov    DWORD PTR [esp+0x4],eax
  6f9867:	mov    DWORD PTR [esp],edx
  6f986a:	mov    DWORD PTR [esp+0x10],0x0
  6f9872:	mov    ebx,edi
  6f9874:	call   4fe577  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::TryGetItemGameData
  6f9879:	test   al,al
  6f987b:	je     6f96e3
  6f9881:	mov    DWORD PTR [esp+0x4],0x0
  6f9889:	mov    DWORD PTR [esp],0x0
  6f9890:	mov    ebx,edi
  6f9892:	call   106b137  ; DIContainerLogic::get_InventoryService
  6f9897:	mov    DWORD PTR [esp+0x5c],eax
  6f989b:	mov    eax,DWORD PTR [esp+0x48]
  6f989f:	mov    eax,DWORD PTR [eax]
  6f98a1:	mov    DWORD PTR [esp],eax
  6f98a4:	mov    ebx,edi
  6f98a6:	call   20bfb2
  6f98ab:	mov    esi,eax
  6f98ad:	lea    eax,[edi+0x4a1d0]
  6f98b3:	mov    eax,DWORD PTR [eax]
  6f98b5:	mov    DWORD PTR [esp+0x4],eax
  6f98b9:	mov    DWORD PTR [esp],esi
  6f98bc:	mov    ebx,edi
  6f98be:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  6f98c3:	test   esi,esi
  6f98c5:	je     6f9a32
  6f98cb:	mov    eax,DWORD PTR [esp+0x11c]
  6f98d2:	lea    ecx,[edi+0x4a7f0]
  6f98d8:	mov    ecx,DWORD PTR [ecx]
  6f98da:	mov    DWORD PTR [esp+0x8],ecx
  6f98de:	mov    DWORD PTR [esp+0x4],eax
  6f98e2:	mov    DWORD PTR [esp],esi
  6f98e5:	mov    DWORD PTR [esp+0x58],esi
  6f98e9:	mov    ebx,edi
  6f98eb:	call   4c23b4  ; shared address: System.Collections.Generic.List`1<object>::Add | System.Collections.Generic.List`1<string>::Add | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::Add | +157 other aliases
  6f98f0:	mov    eax,DWORD PTR [esp+0x50]
  6f98f4:	mov    eax,DWORD PTR [eax]
  6f98f6:	mov    ecx,DWORD PTR [esp+0x64]
  6f98fa:	mov    ecx,DWORD PTR [ecx]
  6f98fc:	movzx  edx,WORD PTR [ecx+0xaa]
  6f9903:	test   edx,edx
  6f9905:	je     6f9916
  6f9907:	mov    edi,DWORD PTR [ecx+0x4c]
  6f990a:	xor    esi,esi
  6f990c:	cmp    DWORD PTR [edi+esi*8],eax
  6f990f:	je     6f9936
  6f9911:	inc    esi
  6f9912:	cmp    esi,edx
  6f9914:	jb     6f990c
  6f9916:	mov    DWORD PTR [esp+0x4],eax
  6f991a:	mov    esi,DWORD PTR [esp+0x64]
  6f991e:	mov    DWORD PTR [esp],esi
  6f9921:	mov    DWORD PTR [esp+0x8],0x0
  6f9929:	mov    edi,DWORD PTR [esp+0x68]
  6f992d:	mov    ebx,edi
  6f992f:	call   1c1964
  6f9934:	jmp    6f9949
  6f9936:	mov    eax,DWORD PTR [edi+esi*8+0x4]
  6f993a:	lea    eax,[ecx+eax*8+0xb4]
  6f9941:	mov    edi,DWORD PTR [esp+0x68]
  6f9945:	mov    esi,DWORD PTR [esp+0x64]
  6f9949:	mov    ecx,DWORD PTR [eax]
  6f994b:	mov    eax,DWORD PTR [eax+0x4]
  6f994e:	mov    DWORD PTR [esp+0x4],eax
  6f9952:	mov    DWORD PTR [esp],esi
  6f9955:	mov    ebx,edi
  6f9957:	call   ecx
  6f9959:	test   eax,eax
  6f995b:	je     6f9a3e
  6f9961:	lea    ecx,[edi+0x45578]
  6f9967:	mov    edi,DWORD PTR [ecx]
  6f9969:	mov    ecx,DWORD PTR [eax]
  6f996b:	mov    DWORD PTR [esp+0x64],eax
  6f996f:	movzx  edx,WORD PTR [ecx+0xaa]
  6f9976:	test   edx,edx
  6f9978:	je     6f9989
  6f997a:	mov    esi,DWORD PTR [ecx+0x4c]
  6f997d:	xor    ebx,ebx
  6f997f:	cmp    DWORD PTR [esi+ebx*8],edi
  6f9982:	je     6f99a9
  6f9984:	inc    ebx
  6f9985:	cmp    ebx,edx
  6f9987:	jb     6f997f
  6f9989:	mov    DWORD PTR [esp+0x4],edi
  6f998d:	mov    esi,DWORD PTR [esp+0x64]
  6f9991:	mov    DWORD PTR [esp],esi
  6f9994:	mov    DWORD PTR [esp+0x8],0x2
  6f999c:	mov    edi,DWORD PTR [esp+0x68]
  6f99a0:	mov    ebx,edi
  6f99a2:	call   1c1964
  6f99a7:	jmp    6f99bc
  6f99a9:	mov    eax,DWORD PTR [esi+ebx*8+0x4]
  6f99ad:	lea    eax,[ecx+eax*8+0xc4]
  6f99b4:	mov    edi,DWORD PTR [esp+0x68]
  6f99b8:	mov    esi,DWORD PTR [esp+0x64]
  6f99bc:	mov    ecx,DWORD PTR [eax]
  6f99be:	mov    eax,DWORD PTR [eax+0x4]
  6f99c1:	mov    DWORD PTR [esp+0x4],eax
  6f99c5:	mov    DWORD PTR [esp],esi
  6f99c8:	mov    ebx,edi
  6f99ca:	call   ecx
  6f99cc:	mov    edx,DWORD PTR [esp+0x5c]
  6f99d0:	test   edx,edx
  6f99d2:	je     6f9a4a
  6f99d4:	mov    ecx,DWORD PTR [esp+0x40]
  6f99d8:	mov    ecx,DWORD PTR [ecx+0x18]
  6f99db:	mov    DWORD PTR [esp+0xc],ecx
  6f99df:	mov    DWORD PTR [esp+0x8],eax
  6f99e3:	mov    eax,DWORD PTR [esp+0x58]
  6f99e7:	mov    DWORD PTR [esp+0x4],eax
  6f99eb:	mov    DWORD PTR [esp],edx
  6f99ee:	mov    DWORD PTR [esp+0x10],0x0
  6f99f6:	mov    ebx,edi
  6f99f8:	call   57726b  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::EquipBirdWithItem
  6f99fd:	jmp    6f96e3
  6f9a02:	mov    ebx,edi
  6f9a04:	jmp    6f9a56
  6f9a06:	mov    esi,edi
  6f9a08:	mov    edi,DWORD PTR [esp+0x4c]
  6f9a0c:	jmp    6f9a74
  6f9a0e:	mov    ebx,edi
  6f9a10:	call   1fbc48
  6f9a15:	jmp    6fa14b
  6f9a1a:	mov    ebx,edi
  6f9a1c:	call   1fbc48
  6f9a21:	jmp    6fa150
  6f9a26:	mov    ebx,edi
  6f9a28:	call   1fbc48
  6f9a2d:	jmp    6fa155
  6f9a32:	mov    ebx,edi
  6f9a34:	call   1fbc48
  6f9a39:	jmp    6fa17b
  6f9a3e:	mov    ebx,edi
  6f9a40:	call   1fbc48
  6f9a45:	jmp    6fa180
  6f9a4a:	mov    ebx,edi
  6f9a4c:	call   1fbc48
  6f9a51:	jmp    6fa185
  6f9a56:	cmp    edx,0x1
  6f9a59:	jne    6f9ae0
  6f9a5f:	mov    DWORD PTR [esp],eax
  6f9a62:	call   1ba3f0
  6f9a67:	mov    edi,DWORD PTR [eax]
  6f9a69:	mov    esi,ebx
  6f9a6b:	call   1b9ce0
  6f9a70:	mov    ecx,DWORD PTR [esp+0x60]
  6f9a74:	mov    DWORD PTR [esp+0x64],edi
  6f9a78:	mov    DWORD PTR [esp+0x60],ecx
  6f9a7c:	lea    eax,[esi+0x4a828]
  6f9a82:	mov    eax,DWORD PTR [eax]
  6f9a84:	mov    DWORD PTR [esp+0x4],eax
  6f9a88:	lea    eax,[esp+0x120]
  6f9a8f:	mov    DWORD PTR [esp],eax
  6f9a92:	mov    ebx,esi
  6f9a94:	mov    edi,ecx
  6f9a96:	call   447df6
  6f9a9b:	mov    ecx,DWORD PTR [esp+0x64]
  6f9a9f:	mov    DWORD PTR [esp+0x60],0x0
  6f9aa7:	cmp    edi,0x8c2
  6f9aad:	mov    DWORD PTR [esp+0x4c],ecx
  6f9ab1:	je     6f961d
  6f9ab7:	mov    DWORD PTR [esp+0x4c],0x0
  6f9abf:	test   ecx,ecx
  6f9ac1:	mov    DWORD PTR [esp+0x60],edi
  6f9ac5:	je     6f961d
  6f9acb:	mov    DWORD PTR [esp+0x60],edi
  6f9acf:	mov    DWORD PTR [esp],ecx
  6f9ad2:	mov    ebx,esi
  6f9ad4:	call   1fbb20
  6f9ad9:	jmp    6f961d
  6f9ade:	mov    ebx,esi
  6f9ae0:	mov    ecx,0x1
  6f9ae5:	cmp    edx,ecx
  6f9ae7:	jne    6f9f0f
  6f9aed:	mov    DWORD PTR [esp],eax
  6f9af0:	call   1ba3f0
  6f9af5:	mov    edi,DWORD PTR [eax]
  6f9af7:	mov    esi,ebx
  6f9af9:	call   1b9ce0
  6f9afe:	mov    eax,edi
  6f9b00:	mov    edi,DWORD PTR [esp+0x60]
  6f9b04:	mov    DWORD PTR [esp+0x64],eax
  6f9b08:	mov    DWORD PTR [esp+0x60],edi
  6f9b0c:	lea    eax,[esi+0x4ac54]
  6f9b12:	mov    eax,DWORD PTR [eax]
  6f9b14:	mov    DWORD PTR [esp+0x4],eax
  6f9b18:	lea    eax,[esp+0x130]
  6f9b1f:	mov    DWORD PTR [esp],eax
  6f9b22:	mov    ebx,esi
  6f9b24:	call   1222b3a
  6f9b29:	mov    eax,DWORD PTR [esp+0x64]
  6f9b2d:	mov    DWORD PTR [esp+0x60],0x0
  6f9b35:	cmp    edi,0x8e1
  6f9b3b:	mov    DWORD PTR [esp+0x4c],eax
  6f9b3f:	je     6f9b78
  6f9b41:	mov    DWORD PTR [esp+0x4c],0x0
  6f9b49:	test   eax,eax
  6f9b4b:	mov    DWORD PTR [esp+0x60],edi
  6f9b4f:	je     6f9b78
  6f9b51:	mov    DWORD PTR [esp+0x60],edi
  6f9b55:	mov    DWORD PTR [esp],eax
  6f9b58:	mov    ebx,esi
  6f9b5a:	call   1fbb20
  6f9b5f:	jmp    6f9b78
  6f9b61:	mov    eax,DWORD PTR [esp+0x4c]
  6f9b65:	jmp    6f9b04
  6f9b67:	mov    ebx,esi
  6f9b69:	call   1fbc48
  6f9b6e:	jmp    6fa172
  6f9b73:	jmp    6f9ae0
  6f9b78:	mov    eax,DWORD PTR [esp+0x3c]
  6f9b7c:	mov    eax,DWORD PTR [eax]
  6f9b7e:	mov    DWORD PTR [esp+0x4],eax
  6f9b82:	lea    eax,[esp+0x150]
  6f9b89:	mov    DWORD PTR [esp],eax
  6f9b8c:	mov    ebx,esi
  6f9b8e:	call   447e4e
  6f9b93:	test   al,al
  6f9b95:	jne    6f9564
  6f9b9b:	mov    DWORD PTR [esp+0x60],0x900
  6f9ba3:	mov    ebx,esi
  6f9ba5:	mov    esi,DWORD PTR [ebp+0x8]
  6f9ba8:	jmp    6f9c07
  6f9baa:	jmp    6f9be0
  6f9bac:	mov    ebx,esi
  6f9bae:	call   1fbc48
  6f9bb3:	jmp    6fa164
  6f9bb8:	mov    ebx,DWORD PTR [esp+0x68]
  6f9bbc:	call   1fbc48
  6f9bc1:	jmp    6fa164
  6f9bc6:	mov    ebx,DWORD PTR [esp+0x68]
  6f9bca:	call   1fbc48
  6f9bcf:	jmp    6fa164
  6f9bd4:	mov    ebx,esi
  6f9bd6:	call   1fbc48
  6f9bdb:	jmp    6fa164
  6f9be0:	mov    esi,DWORD PTR [ebp+0x8]
  6f9be3:	mov    ecx,0x1
  6f9be8:	cmp    edx,ecx
  6f9bea:	jne    6fa13f
  6f9bf0:	mov    DWORD PTR [esp],eax
  6f9bf3:	mov    ebx,DWORD PTR [esp+0x68]
  6f9bf7:	call   1ba3f0
  6f9bfc:	mov    eax,DWORD PTR [eax]
  6f9bfe:	mov    DWORD PTR [esp+0x4c],eax
  6f9c02:	call   1b9ce0
  6f9c07:	lea    eax,[ebx+0x4a938]
  6f9c0d:	mov    eax,DWORD PTR [eax]
  6f9c0f:	mov    DWORD PTR [esp+0x4],eax
  6f9c13:	lea    eax,[esp+0x150]
  6f9c1a:	mov    DWORD PTR [esp],eax
  6f9c1d:	mov    edi,ebx
  6f9c1f:	call   447df6
  6f9c24:	cmp    DWORD PTR [esp+0x60],0x900
  6f9c2c:	mov    eax,DWORD PTR [esp+0x4c]
  6f9c30:	je     6f9c40
  6f9c32:	test   eax,eax
  6f9c34:	je     6f9c40
  6f9c36:	mov    DWORD PTR [esp],eax
  6f9c39:	mov    ebx,edi
  6f9c3b:	call   1fbb20
  6f9c40:	mov    DWORD PTR [esp+0x4],0x0
  6f9c48:	mov    DWORD PTR [esp],0x0
  6f9c4f:	mov    ebx,edi
  6f9c51:	call   1074d4d  ; DIContainerConfig::GetClientConfig
  6f9c56:	test   eax,eax
  6f9c58:	je     6fa135
  6f9c5e:	mov    DWORD PTR [esp],eax
  6f9c61:	mov    DWORD PTR [esp+0x4],0x0
  6f9c69:	call   16ff84e  ; ABH.Shared.BalancingData.ClientConfigBalancingData::get_ApplyMinusBillionFix
  6f9c6e:	test   al,al
  6f9c70:	je     6f9cd5
  6f9c72:	mov    DWORD PTR [esp+0x4],0x0
  6f9c7a:	mov    DWORD PTR [esp],0x0
  6f9c81:	call   106b137  ; DIContainerLogic::get_InventoryService
  6f9c86:	test   eax,eax
  6f9c88:	je     6fa135
  6f9c8e:	mov    ecx,DWORD PTR [esi+0x10]
  6f9c91:	mov    DWORD PTR [esp+0x4],ecx
  6f9c95:	mov    DWORD PTR [esp],eax
  6f9c98:	mov    DWORD PTR [esp+0x8],0x0
  6f9ca0:	call   5784fb  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::FixInventory
  6f9ca5:	mov    DWORD PTR [esp+0x4],0x0
  6f9cad:	mov    DWORD PTR [esp],0x0
  6f9cb4:	call   106b137  ; DIContainerLogic::get_InventoryService
  6f9cb9:	test   eax,eax
  6f9cbb:	je     6fa135
  6f9cc1:	mov    DWORD PTR [esp+0x4],esi
  6f9cc5:	mov    DWORD PTR [esp],eax
  6f9cc8:	mov    DWORD PTR [esp+0x8],0x0
  6f9cd0:	call   579f3e  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::FixInventoryOfBirds
  6f9cd5:	mov    DWORD PTR [esp+0x4],0x0
  6f9cdd:	mov    DWORD PTR [esp],0x0
  6f9ce4:	call   106b137  ; DIContainerLogic::get_InventoryService
  6f9ce9:	test   eax,eax
  6f9ceb:	je     6fa135
  6f9cf1:	mov    DWORD PTR [esp+0x4],esi
  6f9cf5:	mov    DWORD PTR [esp],eax
  6f9cf8:	mov    DWORD PTR [esp+0x8],0x0
  6f9d00:	mov    edi,ebx
  6f9d02:	call   57a4d2  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::FixStampCount
  6f9d07:	mov    eax,DWORD PTR [esp+0x38]
  6f9d0b:	mov    eax,DWORD PTR [eax]
  6f9d0d:	test   BYTE PTR [eax+0xb2],0x1
  6f9d14:	je     6f9d26
  6f9d16:	cmp    DWORD PTR [eax+0x60],0x0
  6f9d1a:	jne    6f9d26
  6f9d1c:	mov    DWORD PTR [esp],eax
  6f9d1f:	mov    ebx,edi
  6f9d21:	call   1db0b8
  6f9d26:	mov    DWORD PTR [esp+0x4],0x0
  6f9d2e:	mov    DWORD PTR [esp],0x0
  6f9d35:	mov    ebx,edi
  6f9d37:	call   106ecf4  ; DIContainerBalancing::get_GameConstantsBalancingDataProvider
  6f9d3c:	test   eax,eax
  6f9d3e:	je     6fa135
  6f9d44:	mov    DWORD PTR [esp],eax
  6f9d47:	mov    DWORD PTR [esp+0x4],0x0
  6f9d4f:	call   ab9276  ; ABH.Shared.BalancingData.GameConstantsBalancingDataProvider::get_IsLimeGreen
  6f9d54:	test   al,al
  6f9d56:	je     6f9d68
  6f9d58:	mov    eax,DWORD PTR [esi+0x10]
  6f9d5b:	mov    DWORD PTR [esp+0x8],eax
  6f9d5f:	mov    DWORD PTR [esp+0x4],esi
  6f9d63:	call   6fe282  ; ABH.GameDatas.PlayerGameData::ValidateProfileForLimeGreen
  6f9d68:	mov    eax,DWORD PTR [esp+0x44]
  6f9d6c:	mov    eax,DWORD PTR [eax]
  6f9d6e:	mov    DWORD PTR [esp+0x4],eax
  6f9d72:	mov    DWORD PTR [esp],esi
  6f9d75:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  6f9d7a:	test   eax,eax
  6f9d7c:	je     6fa135
  6f9d82:	mov    DWORD PTR [esp],eax
  6f9d85:	mov    DWORD PTR [esp+0x4],0x0
  6f9d8d:	call   179d6fc  ; ABH.Shared.Models.PlayerData::get_AchievementTracking
  6f9d92:	mov    edi,eax
  6f9d94:	test   edi,edi
  6f9d96:	je     6fa135
  6f9d9c:	mov    DWORD PTR [esp],edi
  6f9d9f:	mov    DWORD PTR [esp+0x4],0x0
  6f9da7:	call   179957a  ; ABH.Shared.Models.AchievementData::get_Pvpunlocked
  6f9dac:	test   al,al
  6f9dae:	jne    6fa09a
  6f9db4:	mov    DWORD PTR [esp+0x4],0x0
  6f9dbc:	mov    DWORD PTR [esp],0x0
  6f9dc3:	call   106b137  ; DIContainerLogic::get_InventoryService
  6f9dc8:	test   eax,eax
  6f9dca:	je     6fa135
  6f9dd0:	mov    ecx,DWORD PTR [esi+0x10]
  6f9dd3:	lea    edx,[ebx+0x572b4]  ; literal "unlock_pvp"
  6f9dd9:	mov    DWORD PTR [esp+0x64],edx
  6f9ddd:	mov    edx,DWORD PTR [edx]
  6f9ddf:	lea    esi,[esp+0x118]
  6f9de6:	mov    DWORD PTR [esp+0xc],esi
  6f9dea:	mov    DWORD PTR [esp+0x8],edx
  6f9dee:	mov    DWORD PTR [esp+0x4],ecx
  6f9df2:	mov    DWORD PTR [esp],eax
  6f9df5:	mov    DWORD PTR [esp+0x10],0x0
  6f9dfd:	call   4fe577  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::TryGetItemGameData
  6f9e02:	test   al,al
  6f9e04:	je     6fa09a
  6f9e0a:	mov    DWORD PTR [esp+0x60],edi
  6f9e0e:	mov    edi,DWORD PTR [esp+0x118]
  6f9e15:	test   edi,edi
  6f9e17:	je     6fa135
  6f9e1d:	lea    eax,[ebx+0x45854]
  6f9e23:	mov    eax,DWORD PTR [eax]
  6f9e25:	mov    ecx,DWORD PTR [edi]
  6f9e27:	movzx  edx,WORD PTR [ecx+0xaa]
  6f9e2e:	test   edx,edx
  6f9e30:	je     6f9e41
  6f9e32:	mov    esi,DWORD PTR [ecx+0x4c]
  6f9e35:	xor    ebx,ebx
  6f9e37:	cmp    DWORD PTR [esi+ebx*8],eax
  6f9e3a:	je     6f9e5d
  6f9e3c:	inc    ebx
  6f9e3d:	cmp    ebx,edx
  6f9e3f:	jb     6f9e37
  6f9e41:	mov    DWORD PTR [esp+0x4],eax
  6f9e45:	mov    DWORD PTR [esp],edi
  6f9e48:	mov    DWORD PTR [esp+0x8],0x7
  6f9e50:	mov    ebx,DWORD PTR [esp+0x68]
  6f9e54:	call   1c1964
  6f9e59:	mov    ecx,eax
  6f9e5b:	jmp    6f9e6c
  6f9e5d:	mov    eax,DWORD PTR [esi+ebx*8+0x4]
  6f9e61:	lea    ecx,[ecx+eax*8+0xec]
  6f9e68:	mov    ebx,DWORD PTR [esp+0x68]
  6f9e6c:	mov    eax,DWORD PTR [ecx+0x4]
  6f9e6f:	mov    DWORD PTR [esp+0x4],eax
  6f9e73:	mov    DWORD PTR [esp],edi
  6f9e76:	call   DWORD PTR [ecx]
  6f9e78:	test   eax,eax
  6f9e7a:	jle    6fa09a
  6f9e80:	lea    eax,[ebx+0x4584c]
  6f9e86:	mov    DWORD PTR [esp+0x5c],eax
  6f9e8a:	mov    eax,DWORD PTR [eax]
  6f9e8c:	test   BYTE PTR [eax+0xb2],0x1
  6f9e93:	je     6f9ea3
  6f9e95:	cmp    DWORD PTR [eax+0x60],0x0
  6f9e99:	jne    6f9ea3
  6f9e9b:	mov    DWORD PTR [esp],eax
  6f9e9e:	call   1db0b8
  6f9ea3:	mov    DWORD PTR [esp+0x4],0x0
  6f9eab:	mov    DWORD PTR [esp],0x0
  6f9eb2:	call   1066af2  ; DIContainerInfrastructure::GetAchievementService
  6f9eb7:	mov    edi,eax
  6f9eb9:	test   edi,edi
  6f9ebb:	je     6fa135
  6f9ec1:	lea    eax,[ebx+0x45f34]
  6f9ec7:	mov    DWORD PTR [esp+0x58],eax
  6f9ecb:	mov    eax,DWORD PTR [eax]
  6f9ecd:	mov    ecx,DWORD PTR [esp+0x64]
  6f9ed1:	mov    ecx,DWORD PTR [ecx]
  6f9ed3:	mov    DWORD PTR [esp+0x64],ecx
  6f9ed7:	mov    ecx,DWORD PTR [edi]
  6f9ed9:	movzx  edx,WORD PTR [ecx+0xaa]
  6f9ee0:	test   edx,edx
  6f9ee2:	je     6f9ef3
  6f9ee4:	mov    esi,DWORD PTR [ecx+0x4c]
  6f9ee7:	xor    ebx,ebx
  6f9ee9:	cmp    DWORD PTR [esi+ebx*8],eax
  6f9eec:	je     6f9f2f
  6f9eee:	inc    ebx
  6f9eef:	cmp    ebx,edx
  6f9ef1:	jb     6f9ee9
  6f9ef3:	mov    DWORD PTR [esp+0x4],eax
  6f9ef7:	mov    DWORD PTR [esp],edi
  6f9efa:	mov    DWORD PTR [esp+0x8],0x4
  6f9f02:	mov    ebx,DWORD PTR [esp+0x68]
  6f9f06:	call   1c1964
  6f9f0b:	mov    ecx,eax
  6f9f0d:	jmp    6f9f3e
  6f9f0f:	mov    esi,DWORD PTR [ebp+0x8]
  6f9f12:	jmp    6f9be8
  6f9f17:	mov    DWORD PTR [esp+0x60],0x568
  6f9f1f:	mov    ebx,DWORD PTR [esp+0x68]
  6f9f23:	mov    esi,DWORD PTR [ebp+0x8]
  6f9f26:	mov    edi,DWORD PTR [esp+0x4c]
  6f9f2a:	jmp    6f8b80
  6f9f2f:	mov    eax,DWORD PTR [esi+ebx*8+0x4]
  6f9f33:	lea    ecx,[ecx+eax*8+0xd4]
  6f9f3a:	mov    ebx,DWORD PTR [esp+0x68]
  6f9f3e:	mov    eax,DWORD PTR [ecx+0x4]
  6f9f41:	mov    DWORD PTR [esp+0x8],eax
  6f9f45:	mov    eax,DWORD PTR [esp+0x64]
  6f9f49:	mov    DWORD PTR [esp+0x4],eax
  6f9f4d:	mov    DWORD PTR [esp],edi
  6f9f50:	call   DWORD PTR [ecx]
  6f9f52:	mov    esi,eax
  6f9f54:	lea    eax,[ebx+0x430e4]
  6f9f5a:	mov    eax,DWORD PTR [eax]
  6f9f5c:	test   BYTE PTR [eax+0xb2],0x1
  6f9f63:	je     6f9f73
  6f9f65:	cmp    DWORD PTR [eax+0x60],0x0
  6f9f69:	jne    6f9f73
  6f9f6b:	mov    DWORD PTR [esp],eax
  6f9f6e:	call   1db0b8
  6f9f73:	mov    DWORD PTR [esp+0x4],esi
  6f9f77:	mov    DWORD PTR [esp+0x8],0x0
  6f9f7f:	mov    DWORD PTR [esp],0x0
  6f9f86:	call   cbedf7  ; System.String::IsNullOrEmpty
  6f9f8b:	test   al,al
  6f9f8d:	jne    6fa09a
  6f9f93:	mov    eax,DWORD PTR [esp+0x5c]
  6f9f97:	mov    eax,DWORD PTR [eax]
  6f9f99:	test   BYTE PTR [eax+0xb2],0x1
  6f9fa0:	je     6f9fb0
  6f9fa2:	cmp    DWORD PTR [eax+0x60],0x0
  6f9fa6:	jne    6f9fb0
  6f9fa8:	mov    DWORD PTR [esp],eax
  6f9fab:	call   1db0b8
  6f9fb0:	mov    DWORD PTR [esp+0x64],esi
  6f9fb4:	mov    DWORD PTR [esp+0x4],0x0
  6f9fbc:	mov    DWORD PTR [esp],0x0
  6f9fc3:	call   1066af2  ; DIContainerInfrastructure::GetAchievementService
  6f9fc8:	mov    edi,eax
  6f9fca:	test   edi,edi
  6f9fcc:	je     6fa12d
  6f9fd2:	mov    eax,DWORD PTR [esp+0x58]
  6f9fd6:	mov    eax,DWORD PTR [eax]
  6f9fd8:	mov    ecx,DWORD PTR [edi]
  6f9fda:	movzx  edx,WORD PTR [ecx+0xaa]
  6f9fe1:	test   edx,edx
  6f9fe3:	je     6f9ff4
  6f9fe5:	mov    esi,DWORD PTR [ecx+0x4c]
  6f9fe8:	xor    ebx,ebx
  6f9fea:	cmp    DWORD PTR [esi+ebx*8],eax
  6f9fed:	je     6fa05b
  6f9fef:	inc    ebx
  6f9ff0:	cmp    ebx,edx
  6f9ff2:	jb     6f9fea
  6f9ff4:	mov    DWORD PTR [esp+0x4],eax
  6f9ff8:	mov    DWORD PTR [esp],edi
  6f9ffb:	mov    DWORD PTR [esp+0x8],0x3
  6fa003:	mov    ebx,DWORD PTR [esp+0x68]
  6fa007:	call   1c1964
  6fa00c:	jmp    6fa06a
  6fa00e:	mov    ebx,DWORD PTR [esp+0x68]
  6fa012:	call   1fbc48
  6fa017:	call   6b106a
  6fa01c:	mov    DWORD PTR [esp+0x60],0x40a
  6fa024:	mov    ebx,DWORD PTR [esp+0x68]
  6fa028:	mov    esi,DWORD PTR [esp+0x5c]
  6fa02c:	jmp    6f828b
  6fa031:	mov    ebx,DWORD PTR [esp+0x68]
  6fa035:	call   1fbc48
  6fa03a:	call   6b106a
  6fa03f:	mov    ebx,DWORD PTR [esp+0x68]
  6fa043:	call   1fbc48
  6fa048:	call   6b106a
  6fa04d:	mov    ebx,DWORD PTR [esp+0x68]
  6fa051:	call   1fbc48
  6fa056:	call   6b106a
  6fa05b:	mov    eax,DWORD PTR [esi+ebx*8+0x4]
  6fa05f:	lea    eax,[ecx+eax*8+0xcc]
  6fa066:	mov    ebx,DWORD PTR [esp+0x68]
  6fa06a:	mov    ecx,DWORD PTR [eax+0x4]
  6fa06d:	mov    DWORD PTR [esp+0x8],ecx
  6fa071:	mov    ecx,DWORD PTR [esp+0x64]
  6fa075:	mov    DWORD PTR [esp+0x4],ecx
  6fa079:	mov    DWORD PTR [esp],edi
  6fa07c:	call   DWORD PTR [eax]
  6fa07e:	mov    eax,DWORD PTR [esp+0x60]
  6fa082:	mov    DWORD PTR [esp],eax
  6fa085:	mov    DWORD PTR [esp+0x8],0x0
  6fa08d:	mov    DWORD PTR [esp+0x4],0x1
  6fa095:	call   179958b  ; ABH.Shared.Models.AchievementData::set_Pvpunlocked
  6fa09a:	lea    esp,[ebp-0xc]
  6fa09d:	pop    esi
  6fa09e:	pop    edi
  6fa09f:	pop    ebx
  6fa0a0:	pop    ebp
  6fa0a1:	ret
  6fa0a2:	mov    ebx,DWORD PTR [esp+0x68]
  6fa0a6:	call   1fbc48
  6fa0ab:	call   6b106a
  6fa0b0:	mov    ebx,DWORD PTR [esp+0x68]
  6fa0b4:	call   1fbc48
  6fa0b9:	call   6b106a
  6fa0be:	mov    ebx,DWORD PTR [esp+0x68]
  6fa0c2:	call   1fbc48
  6fa0c7:	call   6b106a
  6fa0cc:	mov    ebx,DWORD PTR [esp+0x68]
  6fa0d0:	call   1fbc48
  6fa0d5:	call   6b106a
  6fa0da:	mov    ebx,DWORD PTR [esp+0x68]
  6fa0de:	call   1fbc48
  6fa0e3:	call   6b106a
  6fa0e8:	mov    ebx,DWORD PTR [esp+0x68]
  6fa0ec:	call   1fbc48
  6fa0f1:	call   6b106a
  6fa0f6:	mov    ebx,DWORD PTR [esp+0x68]
  6fa0fa:	call   1fbc48
  6fa0ff:	call   6b106a
  6fa104:	mov    ebx,DWORD PTR [esp+0x68]
  6fa108:	call   1fbc48
  6fa10d:	call   6b106a
  6fa112:	mov    ecx,0x1
  6fa117:	mov    esi,DWORD PTR [ebp+0x8]
  6fa11a:	jmp    6f8b69
  6fa11f:	mov    ebx,DWORD PTR [esp+0x68]
  6fa123:	call   1fbc48
  6fa128:	call   6b106a
  6fa12d:	mov    ebx,DWORD PTR [esp+0x68]
  6fa131:	jmp    6fa135
  6fa133:	mov    ebx,edi
  6fa135:	call   1fbc48
  6fa13a:	call   6b106a
  6fa13f:	mov    ebx,DWORD PTR [esp+0x68]
  6fa143:	mov    DWORD PTR [esp],eax
  6fa146:	call   1b9bd0
  6fa14b:	call   6b106a
  6fa150:	call   6b106a
  6fa155:	call   6b106a
  6fa15a:	call   6b106a
  6fa15f:	call   6b106a
  6fa164:	mov    ebx,DWORD PTR [esp+0x68]
  6fa168:	call   6b106a
  6fa16d:	call   6b106a
  6fa172:	call   6b106a
  6fa177:	mov    ebx,esi
  6fa179:	jmp    6fa135
  6fa17b:	call   6b106a
  6fa180:	call   6b106a
  6fa185:	call   6b106a
  6fa18a:	call   6b106a
  6fa18f:	call   6b106a
  6fa194:	call   6b106a
  6fa199:	call   6b106a