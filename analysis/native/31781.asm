
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

010c5048:
 10c5048:	push   ebp
 10c5049:	mov    ebp,esp
 10c504b:	push   ebx
 10c504c:	push   edi
 10c504d:	push   esi
 10c504e:	and    esp,0xfffffff0
 10c5051:	sub    esp,0x30
 10c5054:	call   10c5059
 10c5059:	pop    ebx
 10c505a:	add    ebx,0xe4ceeb
 10c5060:	mov    edi,DWORD PTR [ebp+0x8]
 10c5063:	mov    al,BYTE PTR [ebx+0x63610]
 10c5069:	test   al,al
 10c506b:	jne    10c5084
 10c506d:	lea    eax,[ebx-0x65ab9c]
 10c5073:	mov    eax,DWORD PTR [eax]
 10c5075:	mov    DWORD PTR [esp],eax
 10c5078:	call   1ca6e8
 10c507d:	mov    BYTE PTR [ebx+0x63610],0x1
 10c5084:	cmp    BYTE PTR [edi+0x15],0x0
 10c5088:	je     10c50c0
 10c508a:	lea    eax,[ebx+0x4584c]
 10c5090:	mov    eax,DWORD PTR [eax]
 10c5092:	test   BYTE PTR [eax+0xb2],0x1
 10c5099:	je     10c50a9
 10c509b:	cmp    DWORD PTR [eax+0x60],0x0
 10c509f:	jne    10c50a9
 10c50a1:	mov    DWORD PTR [esp],eax
 10c50a4:	call   1db0b8
 10c50a9:	mov    DWORD PTR [esp+0x4],0x0
 10c50b1:	mov    DWORD PTR [esp],0x0
 10c50b8:	call   109007c  ; DIContainerInfrastructure::get_PrimaryMusicSource
 10c50bd:	mov    DWORD PTR [edi+0x2c],eax
 10c50c0:	cmp    BYTE PTR [edi+0x16],0x0
 10c50c4:	je     10c50fc
 10c50c6:	lea    eax,[ebx+0x4584c]
 10c50cc:	mov    eax,DWORD PTR [eax]
 10c50ce:	test   BYTE PTR [eax+0xb2],0x1
 10c50d5:	je     10c50e5
 10c50d7:	cmp    DWORD PTR [eax+0x60],0x0
 10c50db:	jne    10c50e5
 10c50dd:	mov    DWORD PTR [esp],eax
 10c50e0:	call   1db0b8
 10c50e5:	mov    DWORD PTR [esp+0x4],0x0
 10c50ed:	mov    DWORD PTR [esp],0x0
 10c50f4:	call   1090321  ; DIContainerInfrastructure::get_SecondaryMusicSource
 10c50f9:	mov    DWORD PTR [edi+0x2c],eax
 10c50fc:	cmp    BYTE PTR [edi+0x14],0x0
 10c5100:	je     10c51a7
 10c5106:	cmp    BYTE PTR [edi+0x18],0x0
 10c510a:	jne    10c54aa
 10c5110:	mov    esi,DWORD PTR [edi+0x28]
 10c5113:	mov    eax,DWORD PTR [edi+0x2c]
 10c5116:	mov    DWORD PTR [esp+0x28],eax
 10c511a:	lea    eax,[ebx+0x4584c]
 10c5120:	mov    eax,DWORD PTR [eax]
 10c5122:	test   BYTE PTR [eax+0xb2],0x1
 10c5129:	je     10c5139
 10c512b:	cmp    DWORD PTR [eax+0x60],0x0
 10c512f:	jne    10c5139
 10c5131:	mov    DWORD PTR [esp],eax
 10c5134:	call   1db0b8
 10c5139:	mov    DWORD PTR [esp+0x4],esi
 10c513d:	mov    DWORD PTR [esp+0x8],0x0
 10c5145:	mov    DWORD PTR [esp],0x0
 10c514c:	call   108fcf5  ; DIContainerInfrastructure::GetAudioAssetProvider
 10c5151:	mov    esi,eax
 10c5153:	mov    DWORD PTR [esp],edi
 10c5156:	call   10c4f89  ; Sound::GetAssetName
 10c515b:	test   esi,esi
 10c515d:	je     10c54b2
 10c5163:	mov    DWORD PTR [esp+0x4],eax
 10c5167:	mov    DWORD PTR [esp],esi
 10c516a:	mov    DWORD PTR [esp+0x8],0x0
 10c5172:	call   15452b6  ; GenericAssetProvider::GetAudioClip
 10c5177:	mov    ecx,DWORD PTR [esp+0x28]
 10c517b:	test   ecx,ecx
 10c517d:	je     10c54b2
 10c5183:	movss  xmm0,DWORD PTR [edi+0x1c]
 10c5188:	movss  DWORD PTR [esp+0x8],xmm0
 10c518e:	mov    DWORD PTR [esp+0x4],eax
 10c5192:	mov    DWORD PTR [esp],ecx
 10c5195:	mov    DWORD PTR [esp+0xc],0x0
 10c519d:	call   14fcbbb  ; UnityEngine.AudioSource::PlayOneShot
 10c51a2:	jmp    10c54aa
 10c51a7:	mov    eax,DWORD PTR [edi+0x2c]
 10c51aa:	test   eax,eax
 10c51ac:	je     10c54b2
 10c51b2:	movss  xmm0,DWORD PTR [edi+0x20]
 10c51b7:	movss  DWORD PTR [esp+0x28],xmm0
 10c51bd:	movzx  ecx,BYTE PTR [edi+0x17]
 10c51c1:	mov    DWORD PTR [esp+0x4],ecx
 10c51c5:	mov    DWORD PTR [esp],eax
 10c51c8:	mov    DWORD PTR [esp+0x8],0x0
 10c51d0:	call   14fcc34  ; UnityEngine.AudioSource::set_loop
 10c51d5:	mov    eax,DWORD PTR [edi+0x2c]
 10c51d8:	xorps  xmm0,xmm0
 10c51db:	movss  xmm1,DWORD PTR [esp+0x28]
 10c51e1:	ucomiss xmm1,xmm0
 10c51e4:	jbe    10c53d6
 10c51ea:	test   eax,eax
 10c51ec:	je     10c54b2
 10c51f2:	movss  xmm0,DWORD PTR [edi+0x1c]
 10c51f7:	movss  DWORD PTR [esp+0x4],xmm0
 10c51fd:	mov    DWORD PTR [esp],eax
 10c5200:	mov    DWORD PTR [esp+0x8],0x0
 10c5208:	call   14fc7b4  ; UnityEngine.AudioSource::set_volume
 10c520d:	mov    esi,DWORD PTR [edi+0x28]
 10c5210:	lea    eax,[ebx+0x4584c]
 10c5216:	mov    DWORD PTR [esp+0x24],eax
 10c521a:	mov    eax,DWORD PTR [eax]
 10c521c:	test   BYTE PTR [eax+0xb2],0x1
 10c5223:	je     10c5233
 10c5225:	cmp    DWORD PTR [eax+0x60],0x0
 10c5229:	jne    10c5233
 10c522b:	mov    DWORD PTR [esp],eax
 10c522e:	call   1db0b8
 10c5233:	mov    DWORD PTR [esp+0x4],esi
 10c5237:	mov    DWORD PTR [esp+0x8],0x0
 10c523f:	mov    DWORD PTR [esp],0x0
 10c5246:	call   108fcf5  ; DIContainerInfrastructure::GetAudioAssetProvider
 10c524b:	mov    esi,eax
 10c524d:	mov    DWORD PTR [esp],edi
 10c5250:	call   10c4f89  ; Sound::GetAssetName
 10c5255:	test   esi,esi
 10c5257:	je     10c54b2
 10c525d:	mov    DWORD PTR [esp+0x4],eax
 10c5261:	mov    DWORD PTR [esp],esi
 10c5264:	mov    DWORD PTR [esp+0x8],0x0
 10c526c:	call   15452b6  ; GenericAssetProvider::GetAudioClip
 10c5271:	mov    DWORD PTR [esp+0x28],eax
 10c5275:	mov    esi,DWORD PTR [edi+0x2c]
 10c5278:	lea    eax,[ebx+0x44ebc]
 10c527e:	mov    DWORD PTR [esp+0x20],eax
 10c5282:	mov    eax,DWORD PTR [eax]
 10c5284:	test   BYTE PTR [eax+0xb2],0x1
 10c528b:	je     10c529b
 10c528d:	cmp    DWORD PTR [eax+0x60],0x0
 10c5291:	jne    10c529b
 10c5293:	mov    DWORD PTR [esp],eax
 10c5296:	call   1db0b8
 10c529b:	mov    DWORD PTR [esp+0x4],esi
 10c529f:	mov    DWORD PTR [esp+0x8],0x0
 10c52a7:	mov    DWORD PTR [esp],0x0
 10c52ae:	call   1679a11  ; UnityEngine.Object::op_Implicit
 10c52b3:	test   al,al
 10c52b5:	je     10c5319
 10c52b7:	mov    eax,DWORD PTR [edi+0x2c]
 10c52ba:	test   eax,eax
 10c52bc:	je     10c54b2
 10c52c2:	mov    DWORD PTR [esp],eax
 10c52c5:	mov    DWORD PTR [esp+0x4],0x0
 10c52cd:	call   14fc901  ; UnityEngine.AudioSource::get_clip
 10c52d2:	mov    esi,eax
 10c52d4:	mov    eax,DWORD PTR [esp+0x20]
 10c52d8:	mov    eax,DWORD PTR [eax]
 10c52da:	test   BYTE PTR [eax+0xb2],0x1
 10c52e1:	je     10c52f1
 10c52e3:	cmp    DWORD PTR [eax+0x60],0x0
 10c52e7:	jne    10c52f1
 10c52e9:	mov    DWORD PTR [esp],eax
 10c52ec:	call   1db0b8
 10c52f1:	mov    eax,DWORD PTR [esp+0x28]
 10c52f5:	mov    DWORD PTR [esp+0x8],eax
 10c52f9:	mov    DWORD PTR [esp+0x4],esi
 10c52fd:	mov    DWORD PTR [esp+0xc],0x0
 10c5305:	mov    DWORD PTR [esp],0x0
 10c530c:	call   16781a0  ; UnityEngine.Object::op_Equality
 10c5311:	test   al,al
 10c5313:	jne    10c54aa
 10c5319:	mov    eax,DWORD PTR [edi+0x2c]
 10c531c:	test   eax,eax
 10c531e:	je     10c54b2
 10c5324:	movzx  ecx,BYTE PTR [edi+0x18]
 10c5328:	mov    DWORD PTR [esp+0x4],ecx
 10c532c:	mov    DWORD PTR [esp],eax
 10c532f:	mov    DWORD PTR [esp+0x8],0x0
 10c5337:	call   14fcd6b  ; UnityEngine.AudioSource::set_mute
 10c533c:	mov    eax,DWORD PTR [esp+0x24]
 10c5340:	mov    eax,DWORD PTR [eax]
 10c5342:	test   BYTE PTR [eax+0xb2],0x1
 10c5349:	je     10c5359
 10c534b:	cmp    DWORD PTR [eax+0x60],0x0
 10c534f:	jne    10c5359
 10c5351:	mov    DWORD PTR [esp],eax
 10c5354:	call   1db0b8
 10c5359:	mov    DWORD PTR [esp+0x4],0x0
 10c5361:	mov    DWORD PTR [esp],0x0
 10c5368:	call   10768c2  ; DIContainerInfrastructure::get_AudioManager
 10c536d:	mov    esi,eax
 10c536f:	mov    DWORD PTR [esp+0x4],0x0
 10c5377:	mov    DWORD PTR [esp],0x0
 10c537e:	call   10768c2  ; DIContainerInfrastructure::get_AudioManager
 10c5383:	test   eax,eax
 10c5385:	je     10c54b2
 10c538b:	movss  xmm0,DWORD PTR [edi+0x30]
 10c5390:	movss  xmm1,DWORD PTR [edi+0x20]
 10c5395:	mov    eax,DWORD PTR [edi+0x2c]
 10c5398:	movss  DWORD PTR [esp+0x10],xmm0
 10c539e:	movss  DWORD PTR [esp+0xc],xmm1
 10c53a4:	mov    ecx,DWORD PTR [esp+0x28]
 10c53a8:	mov    DWORD PTR [esp+0x8],ecx
 10c53ac:	mov    DWORD PTR [esp+0x4],eax
 10c53b0:	call   10c54bc  ; SoundManager::FadeMusic
 10c53b5:	test   esi,esi
 10c53b7:	je     10c54b2
 10c53bd:	mov    DWORD PTR [esp+0x4],eax
 10c53c1:	mov    DWORD PTR [esp],esi
 10c53c4:	mov    DWORD PTR [esp+0x8],0x0
 10c53cc:	call   139db95  ; UnityEngine.MonoBehaviour::StartCoroutine
 10c53d1:	jmp    10c54aa
 10c53d6:	test   eax,eax
 10c53d8:	je     10c54b2
 10c53de:	movzx  ecx,BYTE PTR [edi+0x18]
 10c53e2:	mov    DWORD PTR [esp+0x4],ecx
 10c53e6:	mov    DWORD PTR [esp],eax
 10c53e9:	mov    DWORD PTR [esp+0x8],0x0
 10c53f1:	call   14fcd6b  ; UnityEngine.AudioSource::set_mute
 10c53f6:	mov    eax,DWORD PTR [edi+0x2c]
 10c53f9:	test   eax,eax
 10c53fb:	je     10c54b2
 10c5401:	movss  xmm0,DWORD PTR [edi+0x1c]
 10c5406:	movss  DWORD PTR [esp+0x4],xmm0
 10c540c:	mov    DWORD PTR [esp],eax
 10c540f:	mov    DWORD PTR [esp+0x8],0x0
 10c5417:	call   14fc7b4  ; UnityEngine.AudioSource::set_volume
 10c541c:	mov    esi,DWORD PTR [edi+0x28]
 10c541f:	lea    eax,[ebx+0x4584c]
 10c5425:	mov    eax,DWORD PTR [eax]
 10c5427:	test   BYTE PTR [eax+0xb2],0x1
 10c542e:	je     10c543e
 10c5430:	cmp    DWORD PTR [eax+0x60],0x0
 10c5434:	jne    10c543e
 10c5436:	mov    DWORD PTR [esp],eax
 10c5439:	call   1db0b8
 10c543e:	mov    DWORD PTR [esp+0x4],esi
 10c5442:	mov    DWORD PTR [esp+0x8],0x0
 10c544a:	mov    DWORD PTR [esp],0x0
 10c5451:	call   108fcf5  ; DIContainerInfrastructure::GetAudioAssetProvider
 10c5456:	mov    esi,eax
 10c5458:	mov    DWORD PTR [esp],edi
 10c545b:	call   10c4f89  ; Sound::GetAssetName
 10c5460:	test   esi,esi
 10c5462:	je     10c54b2
 10c5464:	mov    DWORD PTR [esp+0x4],eax
 10c5468:	mov    DWORD PTR [esp],esi
 10c546b:	mov    DWORD PTR [esp+0x8],0x0
 10c5473:	call   15452b6  ; GenericAssetProvider::GetAudioClip
 10c5478:	mov    ecx,DWORD PTR [edi+0x2c]
 10c547b:	test   ecx,ecx
 10c547d:	je     10c54b2
 10c547f:	mov    DWORD PTR [esp+0x4],eax
 10c5483:	mov    DWORD PTR [esp],ecx
 10c5486:	mov    DWORD PTR [esp+0x8],0x0
 10c548e:	call   14fc960  ; UnityEngine.AudioSource::set_clip
 10c5493:	mov    eax,DWORD PTR [edi+0x2c]
 10c5496:	test   eax,eax
 10c5498:	je     10c54b2
 10c549a:	mov    DWORD PTR [esp],eax
 10c549d:	mov    DWORD PTR [esp+0x4],0x0
 10c54a5:	call   14fca3c  ; UnityEngine.AudioSource::Play
 10c54aa:	lea    esp,[ebp-0xc]
 10c54ad:	pop    esi
 10c54ae:	pop    edi
 10c54af:	pop    ebx
 10c54b0:	pop    ebp
 10c54b1:	ret
 10c54b2:	call   1fbc48
 10c54b7:	call   10a4f7a