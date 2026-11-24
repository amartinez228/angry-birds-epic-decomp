
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00eb2f2a:
  eb2f2a:	push   ebp
  eb2f2b:	mov    ebp,esp
  eb2f2d:	push   ebx
  eb2f2e:	push   edi
  eb2f2f:	push   esi
  eb2f30:	and    esp,0xfffffff0
  eb2f33:	sub    esp,0x110
  eb2f39:	call   eb2f3e
  eb2f3e:	pop    ebx
  eb2f3f:	add    ebx,0x105f006
  eb2f45:	mov    al,BYTE PTR [ebx+0x62737]
  eb2f4b:	test   al,al
  eb2f4d:	jne    eb2f66
  eb2f4f:	lea    eax,[ebx-0x65b764]
  eb2f55:	mov    eax,DWORD PTR [eax]
  eb2f57:	mov    DWORD PTR [esp],eax
  eb2f5a:	call   1ca6e8
  eb2f5f:	mov    BYTE PTR [ebx+0x62737],0x1
  eb2f66:	mov    esi,DWORD PTR [ebp+0x18]
  eb2f69:	lea    eax,[ebx+0x430e4]
  eb2f6f:	mov    eax,DWORD PTR [eax]
  eb2f71:	test   BYTE PTR [eax+0xb2],0x1
  eb2f78:	je     eb2f88
  eb2f7a:	cmp    DWORD PTR [eax+0x60],0x0
  eb2f7e:	jne    eb2f88
  eb2f80:	mov    DWORD PTR [esp],eax
  eb2f83:	call   1db0b8
  eb2f88:	mov    DWORD PTR [esp+0x4],esi
  eb2f8c:	mov    DWORD PTR [esp+0x8],0x0
  eb2f94:	mov    DWORD PTR [esp],0x0
  eb2f9b:	call   cbedf7  ; System.String::IsNullOrEmpty
  eb2fa0:	test   al,al
  eb2fa2:	je     eb2fc9
  eb2fa4:	lea    eax,[ebx+0x56b80]  ; literal "no asset ID"
  eb2faa:	mov    eax,DWORD PTR [eax]
  eb2fac:	mov    DWORD PTR [esp+0x4],eax
  eb2fb0:	mov    DWORD PTR [esp+0x8],0x0
  eb2fb8:	mov    DWORD PTR [esp],0x0
  eb2fbf:	call   1068c69  ; DebugLog::Log
  eb2fc4:	jmp    eb3f88
  eb2fc9:	mov    al,BYTE PTR [ebp+0x1c]
  eb2fcc:	mov    esi,DWORD PTR [ebp+0x10]
  eb2fcf:	test   al,al
  eb2fd1:	je     eb30f8
  eb2fd7:	test   esi,esi
  eb2fd9:	je     eb3f92
  eb2fdf:	lea    eax,[ebx+0x45874]
  eb2fe5:	mov    DWORD PTR [esp+0x48],eax
  eb2fe9:	mov    DWORD PTR [esp+0x4c],ebx
  eb2fed:	mov    eax,DWORD PTR [eax]
  eb2fef:	mov    ecx,DWORD PTR [esi]
  eb2ff1:	mov    ebx,esi
  eb2ff3:	movzx  edx,WORD PTR [ecx+0xaa]
  eb2ffa:	test   edx,edx
  eb2ffc:	je     eb300d
  eb2ffe:	mov    edi,DWORD PTR [ecx+0x4c]
  eb3001:	xor    esi,esi
  eb3003:	cmp    DWORD PTR [edi+esi*8],eax
  eb3006:	je     eb302b
  eb3008:	inc    esi
  eb3009:	cmp    esi,edx
  eb300b:	jb     eb3003
  eb300d:	mov    DWORD PTR [esp+0x4],eax
  eb3011:	mov    esi,ebx
  eb3013:	mov    DWORD PTR [esp],esi
  eb3016:	mov    DWORD PTR [esp+0x8],0x11
  eb301e:	mov    ebx,DWORD PTR [esp+0x4c]
  eb3022:	call   1c1964
  eb3027:	mov    ecx,eax
  eb3029:	jmp    eb303c
  eb302b:	mov    eax,DWORD PTR [edi+esi*8+0x4]
  eb302f:	lea    ecx,[ecx+eax*8+0x13c]
  eb3036:	mov    esi,ebx
  eb3038:	mov    ebx,DWORD PTR [esp+0x4c]
  eb303c:	mov    eax,DWORD PTR [ecx+0x4]
  eb303f:	mov    DWORD PTR [esp+0x4],eax
  eb3043:	mov    DWORD PTR [esp],esi
  eb3046:	mov    edi,ebx
  eb3048:	call   DWORD PTR [ecx]
  eb304a:	test   eax,eax
  eb304c:	je     eb3f90
  eb3052:	mov    eax,DWORD PTR [eax+0x68]
  eb3055:	test   eax,eax
  eb3057:	je     eb3f90
  eb305d:	mov    ecx,DWORD PTR [eax+0x1c]
  eb3060:	lea    eax,[edi+0x44ebc]
  eb3066:	mov    eax,DWORD PTR [eax]
  eb3068:	test   BYTE PTR [eax+0xb2],0x1
  eb306f:	je     eb3089
  eb3071:	cmp    DWORD PTR [eax+0x60],0x0
  eb3075:	jne    eb3089
  eb3077:	mov    DWORD PTR [esp],eax
  eb307a:	mov    ebx,edi
  eb307c:	mov    DWORD PTR [esp+0x44],ecx
  eb3080:	call   1db0b8
  eb3085:	mov    ecx,DWORD PTR [esp+0x44]
  eb3089:	mov    DWORD PTR [esp+0x4],ecx
  eb308d:	mov    DWORD PTR [esp+0xc],0x0
  eb3095:	mov    DWORD PTR [esp+0x8],0x0
  eb309d:	mov    DWORD PTR [esp],0x0
  eb30a4:	mov    ebx,edi
  eb30a6:	call   167a0e6  ; UnityEngine.Object::op_Inequality
  eb30ab:	test   al,al
  eb30ad:	je     eb30f8
  eb30af:	mov    eax,DWORD PTR [esp+0x48]
  eb30b3:	mov    eax,DWORD PTR [eax]
  eb30b5:	mov    ecx,DWORD PTR [esi]
  eb30b7:	mov    ebx,esi
  eb30b9:	movzx  edx,WORD PTR [ecx+0xaa]
  eb30c0:	test   edx,edx
  eb30c2:	je     eb30d7
  eb30c4:	mov    esi,DWORD PTR [ecx+0x4c]
  eb30c7:	xor    edi,edi
  eb30c9:	cmp    DWORD PTR [esi+edi*8],eax
  eb30cc:	je     eb317d
  eb30d2:	inc    edi
  eb30d3:	cmp    edi,edx
  eb30d5:	jb     eb30c9
  eb30d7:	mov    DWORD PTR [esp+0x4],eax
  eb30db:	mov    esi,ebx
  eb30dd:	mov    DWORD PTR [esp],esi
  eb30e0:	mov    DWORD PTR [esp+0x8],0x11
  eb30e8:	mov    ebx,DWORD PTR [esp+0x4c]
  eb30ec:	call   1c1964
  eb30f1:	mov    ecx,eax
  eb30f3:	jmp    eb318e
  eb30f8:	test   esi,esi
  eb30fa:	je     eb3f92
  eb3100:	lea    eax,[ebx+0x45874]
  eb3106:	mov    DWORD PTR [esp+0x4c],ebx
  eb310a:	mov    eax,DWORD PTR [eax]
  eb310c:	mov    ecx,DWORD PTR [esi]
  eb310e:	mov    ebx,esi
  eb3110:	movzx  edx,WORD PTR [ecx+0xaa]
  eb3117:	test   edx,edx
  eb3119:	je     eb312a
  eb311b:	mov    esi,DWORD PTR [ecx+0x4c]
  eb311e:	xor    edi,edi
  eb3120:	cmp    DWORD PTR [esi+edi*8],eax
  eb3123:	je     eb3148
  eb3125:	inc    edi
  eb3126:	cmp    edi,edx
  eb3128:	jb     eb3120
  eb312a:	mov    DWORD PTR [esp+0x4],eax
  eb312e:	mov    esi,ebx
  eb3130:	mov    DWORD PTR [esp],esi
  eb3133:	mov    DWORD PTR [esp+0x8],0x11
  eb313b:	mov    ebx,DWORD PTR [esp+0x4c]
  eb313f:	call   1c1964
  eb3144:	mov    ecx,eax
  eb3146:	jmp    eb3159
  eb3148:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  eb314c:	lea    ecx,[ecx+eax*8+0x13c]
  eb3153:	mov    esi,ebx
  eb3155:	mov    ebx,DWORD PTR [esp+0x4c]
  eb3159:	mov    eax,DWORD PTR [ecx+0x4]
  eb315c:	mov    DWORD PTR [esp+0x4],eax
  eb3160:	mov    DWORD PTR [esp],esi
  eb3163:	call   DWORD PTR [ecx]
  eb3165:	test   eax,eax
  eb3167:	je     eb3f92
  eb316d:	mov    eax,DWORD PTR [eax+0x68]
  eb3170:	test   eax,eax
  eb3172:	je     eb3f92
  eb3178:	add    eax,0x18
  eb317b:	jmp    eb31b0
  eb317d:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  eb3181:	lea    ecx,[ecx+eax*8+0x13c]
  eb3188:	mov    esi,ebx
  eb318a:	mov    ebx,DWORD PTR [esp+0x4c]
  eb318e:	mov    eax,DWORD PTR [ecx+0x4]
  eb3191:	mov    DWORD PTR [esp+0x4],eax
  eb3195:	mov    DWORD PTR [esp],esi
  eb3198:	call   DWORD PTR [ecx]
  eb319a:	test   eax,eax
  eb319c:	je     eb3f92
  eb31a2:	mov    eax,DWORD PTR [eax+0x68]
  eb31a5:	test   eax,eax
  eb31a7:	je     eb3f92
  eb31ad:	add    eax,0x1c
  eb31b0:	mov    esi,DWORD PTR [ebp+0x14]
  eb31b3:	test   esi,esi
  eb31b5:	je     eb3f88
  eb31bb:	mov    eax,DWORD PTR [eax]
  eb31bd:	mov    DWORD PTR [esp+0x48],eax
  eb31c1:	lea    edi,[ebx+0x4a048]
  eb31c7:	mov    eax,DWORD PTR [edi]
  eb31c9:	mov    DWORD PTR [esp+0x4],eax
  eb31cd:	mov    DWORD PTR [esp],esi
  eb31d0:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  eb31d5:	cmp    eax,0x1
  eb31d8:	jne    eb3291
  eb31de:	lea    eax,[ebx+0x4a0ac]
  eb31e4:	mov    eax,DWORD PTR [eax]
  eb31e6:	mov    DWORD PTR [esp+0x8],eax
  eb31ea:	mov    DWORD PTR [esp],esi
  eb31ed:	mov    DWORD PTR [esp+0x4],0x0
  eb31f5:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
  eb31fa:	mov    esi,eax
  eb31fc:	lea    eax,[ebx+0x4584c]
  eb3202:	mov    eax,DWORD PTR [eax]
  eb3204:	test   BYTE PTR [eax+0xb2],0x1
  eb320b:	je     eb321b
  eb320d:	cmp    DWORD PTR [eax+0x60],0x0
  eb3211:	jne    eb321b
  eb3213:	mov    DWORD PTR [esp],eax
  eb3216:	call   1db0b8
  eb321b:	mov    DWORD PTR [esp+0x3c],esi
  eb321f:	mov    DWORD PTR [esp+0x4],0x0
  eb3227:	mov    DWORD PTR [esp],0x0
  eb322e:	call   1068a45  ; DIContainerInfrastructure::get_ProjectileAssetProvider
  eb3233:	mov    DWORD PTR [esp+0x40],eax
  eb3237:	mov    edx,DWORD PTR [ebp+0x10]
  eb323a:	test   edx,edx
  eb323c:	je     eb3f92
  eb3242:	lea    eax,[ebx+0x45874]
  eb3248:	mov    DWORD PTR [esp+0x44],eax
  eb324c:	mov    eax,DWORD PTR [eax]
  eb324e:	mov    ecx,DWORD PTR [edx]
  eb3250:	mov    ebx,edx
  eb3252:	movzx  edx,WORD PTR [ecx+0xaa]
  eb3259:	test   edx,edx
  eb325b:	je     eb3270
  eb325d:	mov    edi,DWORD PTR [ecx+0x4c]
  eb3260:	xor    esi,esi
  eb3262:	cmp    DWORD PTR [edi+esi*8],eax
  eb3265:	je     eb3339
  eb326b:	inc    esi
  eb326c:	cmp    esi,edx
  eb326e:	jb     eb3262
  eb3270:	mov    DWORD PTR [esp+0x4],eax
  eb3274:	mov    esi,ebx
  eb3276:	mov    DWORD PTR [esp],esi
  eb3279:	mov    DWORD PTR [esp+0x8],0x11
  eb3281:	mov    ebx,DWORD PTR [esp+0x4c]
  eb3285:	call   1c1964
  eb328a:	mov    ecx,eax
  eb328c:	jmp    eb334a
  eb3291:	mov    eax,DWORD PTR [edi]
  eb3293:	mov    DWORD PTR [esp+0x4],eax
  eb3297:	mov    DWORD PTR [esp],esi
  eb329a:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  eb329f:	cmp    eax,0x2
  eb32a2:	jl     eb3f88
  eb32a8:	lea    eax,[ebx+0x4584c]
  eb32ae:	mov    eax,DWORD PTR [eax]
  eb32b0:	test   BYTE PTR [eax+0xb2],0x1
  eb32b7:	je     eb32c7
  eb32b9:	cmp    DWORD PTR [eax+0x60],0x0
  eb32bd:	jne    eb32c7
  eb32bf:	mov    DWORD PTR [esp],eax
  eb32c2:	call   1db0b8
  eb32c7:	mov    DWORD PTR [esp+0x4],0x0
  eb32cf:	mov    DWORD PTR [esp],0x0
  eb32d6:	call   1068a45  ; DIContainerInfrastructure::get_ProjectileAssetProvider
  eb32db:	mov    DWORD PTR [esp+0x40],eax
  eb32df:	mov    edx,DWORD PTR [ebp+0x10]
  eb32e2:	test   edx,edx
  eb32e4:	je     eb3f92
  eb32ea:	lea    eax,[ebx+0x45874]
  eb32f0:	mov    DWORD PTR [esp+0x44],eax
  eb32f4:	mov    eax,DWORD PTR [eax]
  eb32f6:	mov    ecx,DWORD PTR [edx]
  eb32f8:	mov    ebx,edx
  eb32fa:	movzx  edx,WORD PTR [ecx+0xaa]
  eb3301:	test   edx,edx
  eb3303:	je     eb3318
  eb3305:	mov    edi,DWORD PTR [ecx+0x4c]
  eb3308:	xor    esi,esi
  eb330a:	cmp    DWORD PTR [edi+esi*8],eax
  eb330d:	je     eb3542
  eb3313:	inc    esi
  eb3314:	cmp    esi,edx
  eb3316:	jb     eb330a
  eb3318:	mov    DWORD PTR [esp+0x4],eax
  eb331c:	mov    esi,ebx
  eb331e:	mov    DWORD PTR [esp],esi
  eb3321:	mov    DWORD PTR [esp+0x8],0x11
  eb3329:	mov    ebx,DWORD PTR [esp+0x4c]
  eb332d:	call   1c1964
  eb3332:	mov    ecx,eax
  eb3334:	jmp    eb3553
  eb3339:	mov    eax,DWORD PTR [edi+esi*8+0x4]
  eb333d:	lea    ecx,[ecx+eax*8+0x13c]
  eb3344:	mov    esi,ebx
  eb3346:	mov    ebx,DWORD PTR [esp+0x4c]
  eb334a:	mov    eax,DWORD PTR [ecx+0x4]
  eb334d:	mov    DWORD PTR [esp+0x4],eax
  eb3351:	mov    DWORD PTR [esp],esi
  eb3354:	call   DWORD PTR [ecx]
  eb3356:	test   eax,eax
  eb3358:	je     eb3f92
  eb335e:	mov    eax,DWORD PTR [eax+0x14]
  eb3361:	test   eax,eax
  eb3363:	mov    esi,DWORD PTR [esp+0x48]
  eb3367:	je     eb3f92
  eb336d:	test   esi,esi
  eb336f:	je     eb3f92
  eb3375:	mov    edi,DWORD PTR [eax+0x58]
  eb3378:	mov    DWORD PTR [esp+0x4],esi
  eb337c:	lea    eax,[esp+0x100]
  eb3383:	mov    DWORD PTR [esp],eax
  eb3386:	mov    DWORD PTR [esp+0x8],0x0
  eb338e:	call   17760ae  ; UnityEngine.Transform::get_position
  eb3393:	sub    esp,0x4
  eb3396:	lea    eax,[esp+0xf0]
  eb339d:	mov    DWORD PTR [esp],eax
  eb33a0:	mov    DWORD PTR [esp+0x8],0x0
  eb33a8:	mov    DWORD PTR [esp+0x4],0x0
  eb33b0:	call   167e3be  ; UnityEngine.Quaternion::get_identity
  eb33b5:	sub    esp,0x4
  eb33b8:	mov    ecx,DWORD PTR [esp+0x40]
  eb33bc:	test   ecx,ecx
  eb33be:	je     eb3f92
  eb33c4:	movsd  xmm0,QWORD PTR [esp+0xf0]
  eb33cd:	movsd  xmm1,QWORD PTR [esp+0xf8]
  eb33d6:	movsd  QWORD PTR [esp+0x20],xmm1
  eb33dc:	movsd  QWORD PTR [esp+0x18],xmm0
  eb33e2:	mov    eax,DWORD PTR [esp+0x108]
  eb33e9:	mov    DWORD PTR [esp+0x14],eax
  eb33ed:	movsd  xmm0,QWORD PTR [esp+0x100]
  eb33f6:	movsd  QWORD PTR [esp+0xc],xmm0
  eb33fc:	mov    DWORD PTR [esp+0x8],edi
  eb3400:	mov    eax,DWORD PTR [ebp+0x18]
  eb3403:	mov    DWORD PTR [esp+0x4],eax
  eb3407:	mov    DWORD PTR [esp],ecx
  eb340a:	mov    DWORD PTR [esp+0x2c],0x0
  eb3412:	mov    DWORD PTR [esp+0x28],0x1
  eb341a:	call   154564f  ; GenericAssetProvider::InstantiateObject
  eb341f:	mov    edi,eax
  eb3421:	lea    eax,[ebx+0x44ebc]
  eb3427:	mov    DWORD PTR [esp+0x40],eax
  eb342b:	mov    eax,DWORD PTR [eax]
  eb342d:	test   BYTE PTR [eax+0xb2],0x1
  eb3434:	je     eb3444
  eb3436:	cmp    DWORD PTR [eax+0x60],0x0
  eb343a:	jne    eb3444
  eb343c:	mov    DWORD PTR [esp],eax
  eb343f:	call   1db0b8
  eb3444:	mov    DWORD PTR [esp+0x4],edi
  eb3448:	mov    DWORD PTR [esp+0xc],0x0
  eb3450:	mov    DWORD PTR [esp+0x8],0x0
  eb3458:	mov    DWORD PTR [esp],0x0
  eb345f:	call   16781a0  ; UnityEngine.Object::op_Equality
  eb3464:	test   al,al
  eb3466:	jne    eb3f88
  eb346c:	test   edi,edi
  eb346e:	je     eb3f92
  eb3474:	mov    DWORD PTR [esp],edi
  eb3477:	mov    DWORD PTR [esp+0x4],0x0
  eb347f:	call   137e87a  ; UnityEngine.GameObject::get_transform
  eb3484:	mov    DWORD PTR [esp+0x38],edi
  eb3488:	mov    edi,eax
  eb348a:	mov    DWORD PTR [esp+0x4],esi
  eb348e:	lea    eax,[esp+0xe0]
  eb3495:	mov    DWORD PTR [esp],eax
  eb3498:	mov    DWORD PTR [esp+0x8],0x0
  eb34a0:	call   17760ae  ; UnityEngine.Transform::get_position
  eb34a5:	sub    esp,0x4
  eb34a8:	test   edi,edi
  eb34aa:	mov    esi,DWORD PTR [ebp+0x10]
  eb34ad:	je     eb3f92
  eb34b3:	mov    eax,DWORD PTR [esp+0xe8]
  eb34ba:	mov    DWORD PTR [esp+0xc],eax
  eb34be:	movsd  xmm0,QWORD PTR [esp+0xe0]
  eb34c7:	movsd  QWORD PTR [esp+0x4],xmm0
  eb34cd:	mov    DWORD PTR [esp],edi
  eb34d0:	mov    DWORD PTR [esp+0x10],0x0
  eb34d8:	call   1776176  ; UnityEngine.Transform::set_position
  eb34dd:	mov    eax,DWORD PTR [esp+0x38]
  eb34e1:	mov    DWORD PTR [esp],eax
  eb34e4:	mov    DWORD PTR [esp+0x4],0x0
  eb34ec:	mov    DWORD PTR [esp+0x4c],ebx
  eb34f0:	call   137e87a  ; UnityEngine.GameObject::get_transform
  eb34f5:	mov    DWORD PTR [esp+0x48],eax
  eb34f9:	mov    eax,DWORD PTR [esp+0x44]
  eb34fd:	mov    eax,DWORD PTR [eax]
  eb34ff:	mov    ecx,DWORD PTR [esi]
  eb3501:	mov    ebx,esi
  eb3503:	movzx  edx,WORD PTR [ecx+0xaa]
  eb350a:	test   edx,edx
  eb350c:	je     eb3521
  eb350e:	mov    esi,DWORD PTR [ecx+0x4c]
  eb3511:	xor    edi,edi
  eb3513:	cmp    DWORD PTR [esi+edi*8],eax
  eb3516:	je     eb3702
  eb351c:	inc    edi
  eb351d:	cmp    edi,edx
  eb351f:	jb     eb3513
  eb3521:	mov    DWORD PTR [esp+0x4],eax
  eb3525:	mov    esi,ebx
  eb3527:	mov    DWORD PTR [esp],esi
  eb352a:	mov    DWORD PTR [esp+0x8],0x11
  eb3532:	mov    ebx,DWORD PTR [esp+0x4c]
  eb3536:	call   1c1964
  eb353b:	mov    ecx,eax
  eb353d:	jmp    eb3713
  eb3542:	mov    eax,DWORD PTR [edi+esi*8+0x4]
  eb3546:	lea    ecx,[ecx+eax*8+0x13c]
  eb354d:	mov    esi,ebx
  eb354f:	mov    ebx,DWORD PTR [esp+0x4c]
  eb3553:	mov    eax,DWORD PTR [ecx+0x4]
  eb3556:	mov    DWORD PTR [esp+0x4],eax
  eb355a:	mov    DWORD PTR [esp],esi
  eb355d:	call   DWORD PTR [ecx]
  eb355f:	test   eax,eax
  eb3561:	je     eb3f92
  eb3567:	mov    eax,DWORD PTR [eax+0x14]
  eb356a:	test   eax,eax
  eb356c:	mov    ecx,DWORD PTR [esp+0x48]
  eb3570:	je     eb3f92
  eb3576:	test   ecx,ecx
  eb3578:	je     eb3f92
  eb357e:	mov    edi,DWORD PTR [eax+0x58]
  eb3581:	mov    DWORD PTR [esp+0x4],ecx
  eb3585:	lea    eax,[esp+0xa0]
  eb358c:	mov    DWORD PTR [esp],eax
  eb358f:	mov    DWORD PTR [esp+0x8],0x0
  eb3597:	call   17760ae  ; UnityEngine.Transform::get_position
  eb359c:	sub    esp,0x4
  eb359f:	lea    eax,[esp+0x90]
  eb35a6:	mov    DWORD PTR [esp],eax
  eb35a9:	mov    DWORD PTR [esp+0x8],0x0
  eb35b1:	mov    DWORD PTR [esp+0x4],0x0
  eb35b9:	call   167e3be  ; UnityEngine.Quaternion::get_identity
  eb35be:	sub    esp,0x4
  eb35c1:	mov    ecx,DWORD PTR [esp+0x40]
  eb35c5:	test   ecx,ecx
  eb35c7:	je     eb3f92
  eb35cd:	movsd  xmm0,QWORD PTR [esp+0x90]
  eb35d6:	movsd  xmm1,QWORD PTR [esp+0x98]
  eb35df:	movsd  QWORD PTR [esp+0x20],xmm1
  eb35e5:	movsd  QWORD PTR [esp+0x18],xmm0
  eb35eb:	mov    eax,DWORD PTR [esp+0xa8]
  eb35f2:	mov    DWORD PTR [esp+0x14],eax
  eb35f6:	movsd  xmm0,QWORD PTR [esp+0xa0]
  eb35ff:	movsd  QWORD PTR [esp+0xc],xmm0
  eb3605:	mov    DWORD PTR [esp+0x8],edi
  eb3609:	mov    eax,DWORD PTR [ebp+0x18]
  eb360c:	mov    DWORD PTR [esp+0x4],eax
  eb3610:	mov    DWORD PTR [esp],ecx
  eb3613:	mov    DWORD PTR [esp+0x2c],0x0
  eb361b:	mov    DWORD PTR [esp+0x28],0x1
  eb3623:	call   154564f  ; GenericAssetProvider::InstantiateObject
  eb3628:	mov    esi,eax
  eb362a:	test   esi,esi
  eb362c:	je     eb3f92
  eb3632:	mov    DWORD PTR [esp],esi
  eb3635:	mov    DWORD PTR [esp+0x4],0x0
  eb363d:	call   137e87a  ; UnityEngine.GameObject::get_transform
  eb3642:	mov    edi,eax
  eb3644:	mov    eax,DWORD PTR [esp+0x48]
  eb3648:	mov    DWORD PTR [esp+0x4],eax
  eb364c:	lea    eax,[esp+0x80]
  eb3653:	mov    DWORD PTR [esp],eax
  eb3656:	mov    DWORD PTR [esp+0x8],0x0
  eb365e:	call   17760ae  ; UnityEngine.Transform::get_position
  eb3663:	sub    esp,0x4
  eb3666:	test   edi,edi
  eb3668:	je     eb3f92
  eb366e:	mov    eax,DWORD PTR [esp+0x88]
  eb3675:	mov    DWORD PTR [esp+0xc],eax
  eb3679:	movsd  xmm0,QWORD PTR [esp+0x80]
  eb3682:	movsd  QWORD PTR [esp+0x4],xmm0
  eb3688:	mov    DWORD PTR [esp],edi
  eb368b:	mov    DWORD PTR [esp+0x10],0x0
  eb3693:	call   1776176  ; UnityEngine.Transform::set_position
  eb3698:	mov    DWORD PTR [esp],esi
  eb369b:	mov    DWORD PTR [esp+0x40],esi
  eb369f:	mov    DWORD PTR [esp+0x4],0x0
  eb36a7:	mov    DWORD PTR [esp+0x4c],ebx
  eb36ab:	call   137e87a  ; UnityEngine.GameObject::get_transform
  eb36b0:	mov    DWORD PTR [esp+0x48],eax
  eb36b4:	mov    eax,DWORD PTR [esp+0x44]
  eb36b8:	mov    eax,DWORD PTR [eax]
  eb36ba:	mov    ecx,DWORD PTR [ebp+0x10]
  eb36bd:	mov    edx,ecx
  eb36bf:	mov    ecx,DWORD PTR [edx]
  eb36c1:	mov    ebx,edx
  eb36c3:	movzx  edx,WORD PTR [ecx+0xaa]
  eb36ca:	test   edx,edx
  eb36cc:	je     eb36e1
  eb36ce:	mov    esi,DWORD PTR [ecx+0x4c]
  eb36d1:	xor    edi,edi
  eb36d3:	cmp    DWORD PTR [esi+edi*8],eax
  eb36d6:	je     eb37e7
  eb36dc:	inc    edi
  eb36dd:	cmp    edi,edx
  eb36df:	jb     eb36d3
  eb36e1:	mov    DWORD PTR [esp+0x4],eax
  eb36e5:	mov    esi,ebx
  eb36e7:	mov    DWORD PTR [esp],esi
  eb36ea:	mov    DWORD PTR [esp+0x8],0x11
  eb36f2:	mov    ebx,DWORD PTR [esp+0x4c]
  eb36f6:	call   1c1964
  eb36fb:	mov    ecx,eax
  eb36fd:	jmp    eb37f8
  eb3702:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  eb3706:	lea    ecx,[ecx+eax*8+0x13c]
  eb370d:	mov    esi,ebx
  eb370f:	mov    ebx,DWORD PTR [esp+0x4c]
  eb3713:	mov    eax,DWORD PTR [ecx+0x4]
  eb3716:	mov    DWORD PTR [esp+0x4],eax
  eb371a:	mov    DWORD PTR [esp],esi
  eb371d:	call   DWORD PTR [ecx]
  eb371f:	test   eax,eax
  eb3721:	je     eb3f92
  eb3727:	mov    eax,DWORD PTR [eax+0x68]
  eb372a:	test   eax,eax
  eb372c:	je     eb3f92
  eb3732:	mov    DWORD PTR [esp],eax
  eb3735:	mov    DWORD PTR [esp+0x4],0x0
  eb373d:	call   150157d  ; UnityEngine.Component::get_transform
  eb3742:	test   eax,eax
  eb3744:	je     eb3f92
  eb374a:	mov    DWORD PTR [esp+0x4],eax
  eb374e:	lea    eax,[esp+0xd0]
  eb3755:	mov    DWORD PTR [esp],eax
  eb3758:	mov    DWORD PTR [esp+0x8],0x0
  eb3760:	call   1776862  ; UnityEngine.Transform::get_localScale
  eb3765:	sub    esp,0x4
  eb3768:	mov    ecx,DWORD PTR [esp+0x48]
  eb376c:	test   ecx,ecx
  eb376e:	je     eb3f92
  eb3774:	mov    eax,DWORD PTR [esp+0xd8]
  eb377b:	mov    DWORD PTR [esp+0xc],eax
  eb377f:	movsd  xmm0,QWORD PTR [esp+0xd0]
  eb3788:	movsd  QWORD PTR [esp+0x4],xmm0
  eb378e:	mov    DWORD PTR [esp],ecx
  eb3791:	mov    DWORD PTR [esp+0x10],0x0
  eb3799:	call   177692a  ; UnityEngine.Transform::set_localScale
  eb379e:	mov    eax,DWORD PTR [esp+0x44]
  eb37a2:	mov    eax,DWORD PTR [eax]
  eb37a4:	mov    ecx,DWORD PTR [esi]
  eb37a6:	mov    ebx,esi
  eb37a8:	movzx  edx,WORD PTR [ecx+0xaa]
  eb37af:	test   edx,edx
  eb37b1:	je     eb37c6
  eb37b3:	mov    esi,DWORD PTR [ecx+0x4c]
  eb37b6:	xor    edi,edi
  eb37b8:	cmp    DWORD PTR [esi+edi*8],eax
  eb37bb:	je     eb38c3
  eb37c1:	inc    edi
  eb37c2:	cmp    edi,edx
  eb37c4:	jb     eb37b8
  eb37c6:	mov    DWORD PTR [esp+0x4],eax
  eb37ca:	mov    esi,ebx
  eb37cc:	mov    DWORD PTR [esp],esi
  eb37cf:	mov    DWORD PTR [esp+0x8],0x11
  eb37d7:	mov    ebx,DWORD PTR [esp+0x4c]
  eb37db:	call   1c1964
  eb37e0:	mov    ecx,eax
  eb37e2:	jmp    eb38d4
  eb37e7:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  eb37eb:	lea    ecx,[ecx+eax*8+0x13c]
  eb37f2:	mov    esi,ebx
  eb37f4:	mov    ebx,DWORD PTR [esp+0x4c]
  eb37f8:	mov    eax,DWORD PTR [ecx+0x4]
  eb37fb:	mov    DWORD PTR [esp+0x4],eax
  eb37ff:	mov    DWORD PTR [esp],esi
  eb3802:	call   DWORD PTR [ecx]
  eb3804:	test   eax,eax
  eb3806:	je     eb3f92
  eb380c:	mov    eax,DWORD PTR [eax+0x68]
  eb380f:	test   eax,eax
  eb3811:	je     eb3f92
  eb3817:	mov    DWORD PTR [esp],eax
  eb381a:	mov    DWORD PTR [esp+0x4],0x0
  eb3822:	call   150157d  ; UnityEngine.Component::get_transform
  eb3827:	test   eax,eax
  eb3829:	je     eb3f92
  eb382f:	mov    DWORD PTR [esp+0x4],eax
  eb3833:	lea    eax,[esp+0x70]
  eb3837:	mov    DWORD PTR [esp],eax
  eb383a:	mov    DWORD PTR [esp+0x8],0x0
  eb3842:	call   1776862  ; UnityEngine.Transform::get_localScale
  eb3847:	sub    esp,0x4
  eb384a:	mov    ecx,DWORD PTR [esp+0x48]
  eb384e:	test   ecx,ecx
  eb3850:	je     eb3f92
  eb3856:	mov    eax,DWORD PTR [esp+0x78]
  eb385a:	mov    DWORD PTR [esp+0xc],eax
  eb385e:	movsd  xmm0,QWORD PTR [esp+0x70]
  eb3864:	movsd  QWORD PTR [esp+0x4],xmm0
  eb386a:	mov    DWORD PTR [esp],ecx
  eb386d:	mov    DWORD PTR [esp+0x10],0x0
  eb3875:	call   177692a  ; UnityEngine.Transform::set_localScale
  eb387a:	mov    eax,DWORD PTR [esp+0x44]
  eb387e:	mov    eax,DWORD PTR [eax]
  eb3880:	mov    ecx,DWORD PTR [esi]
  eb3882:	mov    ebx,esi
  eb3884:	movzx  edx,WORD PTR [ecx+0xaa]
  eb388b:	test   edx,edx
  eb388d:	je     eb38a2
  eb388f:	mov    esi,DWORD PTR [ecx+0x4c]
  eb3892:	xor    edi,edi
  eb3894:	cmp    DWORD PTR [esi+edi*8],eax
  eb3897:	je     eb3a05
  eb389d:	inc    edi
  eb389e:	cmp    edi,edx
  eb38a0:	jb     eb3894
  eb38a2:	mov    DWORD PTR [esp+0x4],eax
  eb38a6:	mov    esi,ebx
  eb38a8:	mov    DWORD PTR [esp],esi
  eb38ab:	mov    DWORD PTR [esp+0x8],0x11
  eb38b3:	mov    ebx,DWORD PTR [esp+0x4c]
  eb38b7:	call   1c1964
  eb38bc:	mov    ecx,eax
  eb38be:	jmp    eb3a16
  eb38c3:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  eb38c7:	lea    ecx,[ecx+eax*8+0x13c]
  eb38ce:	mov    esi,ebx
  eb38d0:	mov    ebx,DWORD PTR [esp+0x4c]
  eb38d4:	mov    eax,DWORD PTR [ecx+0x4]
  eb38d7:	mov    DWORD PTR [esp+0x4],eax
  eb38db:	mov    DWORD PTR [esp],esi
  eb38de:	call   DWORD PTR [ecx]
  eb38e0:	test   eax,eax
  eb38e2:	mov    esi,DWORD PTR [esp+0x38]
  eb38e6:	je     eb3f92
  eb38ec:	mov    eax,DWORD PTR [eax+0x68]
  eb38ef:	test   eax,eax
  eb38f1:	je     eb3f92
  eb38f7:	mov    DWORD PTR [esp],eax
  eb38fa:	mov    DWORD PTR [esp+0x4],0x0
  eb3902:	call   1501684  ; UnityEngine.Component::get_gameObject
  eb3907:	test   eax,eax
  eb3909:	je     eb3f92
  eb390f:	mov    DWORD PTR [esp],eax
  eb3912:	mov    DWORD PTR [esp+0x4],0x0
  eb391a:	call   137e8d9  ; UnityEngine.GameObject::get_layer
  eb391f:	mov    DWORD PTR [esp+0x8],eax
  eb3923:	mov    DWORD PTR [esp+0x4],esi
  eb3927:	mov    DWORD PTR [esp+0xc],0x0
  eb392f:	mov    DWORD PTR [esp],0x0
  eb3936:	call   11cfb01  ; UnityHelper::SetLayerRecusively
  eb393b:	lea    eax,[ebx+0x4a338]
  eb3941:	mov    eax,DWORD PTR [eax]
  eb3943:	mov    DWORD PTR [esp+0x4],eax
  eb3947:	mov    DWORD PTR [esp],esi
  eb394a:	call   15e9073  ; shared address: UnityEngine.GameObject::GetComponentInChildren | UnityEngine.GameObject::GetComponentInChildren | UnityEngine.GameObject::GetComponentInChildren | +15 other aliases
  eb394f:	mov    edi,eax
  eb3951:	mov    eax,DWORD PTR [esp+0x40]
  eb3955:	mov    eax,DWORD PTR [eax]
  eb3957:	test   BYTE PTR [eax+0xb2],0x1
  eb395e:	je     eb396e
  eb3960:	cmp    DWORD PTR [eax+0x60],0x0
  eb3964:	jne    eb396e
  eb3966:	mov    DWORD PTR [esp],eax
  eb3969:	call   1db0b8
  eb396e:	mov    DWORD PTR [esp+0x4],edi
  eb3972:	mov    DWORD PTR [esp+0x8],0x0
  eb397a:	mov    DWORD PTR [esp],0x0
  eb3981:	call   1679a11  ; UnityEngine.Object::op_Implicit
  eb3986:	test   al,al
  eb3988:	je     eb39df
  eb398a:	mov    DWORD PTR [esp+0x48],edi
  eb398e:	mov    ecx,DWORD PTR [esp+0x3c]
  eb3992:	test   ecx,ecx
  eb3994:	je     eb3f92
  eb399a:	mov    eax,DWORD PTR [esp+0x44]
  eb399e:	mov    eax,DWORD PTR [eax]
  eb39a0:	mov    ecx,DWORD PTR [ecx]
  eb39a2:	movzx  edx,WORD PTR [ecx+0xaa]
  eb39a9:	test   edx,edx
  eb39ab:	je     eb39c0
  eb39ad:	mov    esi,DWORD PTR [ecx+0x4c]
  eb39b0:	xor    edi,edi
  eb39b2:	cmp    DWORD PTR [esi+edi*8],eax
  eb39b5:	je     eb3b47
  eb39bb:	inc    edi
  eb39bc:	cmp    edi,edx
  eb39be:	jb     eb39b2
  eb39c0:	mov    DWORD PTR [esp+0x4],eax
  eb39c4:	mov    esi,DWORD PTR [esp+0x3c]
  eb39c8:	mov    DWORD PTR [esp],esi
  eb39cb:	mov    DWORD PTR [esp+0x8],0x11
  eb39d3:	call   1c1964
  eb39d8:	mov    ecx,eax
  eb39da:	jmp    eb3b56
  eb39df:	mov    eax,DWORD PTR [esp+0x40]
  eb39e3:	mov    eax,DWORD PTR [eax]
  eb39e5:	test   BYTE PTR [eax+0xb2],0x1
  eb39ec:	je     eb39fc
  eb39ee:	cmp    DWORD PTR [eax+0x60],0x0
  eb39f2:	jne    eb39fc
  eb39f4:	mov    DWORD PTR [esp],eax
  eb39f7:	call   1db0b8
  eb39fc:	mov    DWORD PTR [esp+0x4],esi
  eb3a00:	jmp    eb3e3c
  eb3a05:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  eb3a09:	lea    ecx,[ecx+eax*8+0x13c]
  eb3a10:	mov    esi,ebx
  eb3a12:	mov    ebx,DWORD PTR [esp+0x4c]
  eb3a16:	mov    eax,DWORD PTR [ecx+0x4]
  eb3a19:	mov    DWORD PTR [esp+0x4],eax
  eb3a1d:	mov    DWORD PTR [esp],esi
  eb3a20:	call   DWORD PTR [ecx]
  eb3a22:	test   eax,eax
  eb3a24:	mov    edi,DWORD PTR [esp+0x40]
  eb3a28:	je     eb3f92
  eb3a2e:	mov    eax,DWORD PTR [eax+0x68]
  eb3a31:	test   eax,eax
  eb3a33:	je     eb3f92
  eb3a39:	mov    DWORD PTR [esp],eax
  eb3a3c:	mov    DWORD PTR [esp+0x4],0x0
  eb3a44:	call   1501684  ; UnityEngine.Component::get_gameObject
  eb3a49:	test   eax,eax
  eb3a4b:	je     eb3f92
  eb3a51:	mov    DWORD PTR [esp],eax
  eb3a54:	mov    DWORD PTR [esp+0x4],0x0
  eb3a5c:	call   137e8d9  ; UnityEngine.GameObject::get_layer
  eb3a61:	mov    DWORD PTR [esp+0x8],eax
  eb3a65:	mov    DWORD PTR [esp+0x4],edi
  eb3a69:	mov    DWORD PTR [esp+0xc],0x0
  eb3a71:	mov    DWORD PTR [esp],0x0
  eb3a78:	call   11cfb01  ; UnityHelper::SetLayerRecusively
  eb3a7d:	lea    eax,[ebx+0x4a338]
  eb3a83:	mov    eax,DWORD PTR [eax]
  eb3a85:	mov    DWORD PTR [esp+0x4],eax
  eb3a89:	mov    DWORD PTR [esp],edi
  eb3a8c:	call   15e9073  ; shared address: UnityEngine.GameObject::GetComponentInChildren | UnityEngine.GameObject::GetComponentInChildren | UnityEngine.GameObject::GetComponentInChildren | +15 other aliases
  eb3a91:	mov    DWORD PTR [esp+0x48],eax
  eb3a95:	lea    eax,[ebx+0x44ebc]
  eb3a9b:	mov    DWORD PTR [esp+0x3c],eax
  eb3a9f:	mov    eax,DWORD PTR [eax]
  eb3aa1:	test   BYTE PTR [eax+0xb2],0x1
  eb3aa8:	je     eb3ab8
  eb3aaa:	cmp    DWORD PTR [eax+0x60],0x0
  eb3aae:	jne    eb3ab8
  eb3ab0:	mov    DWORD PTR [esp],eax
  eb3ab3:	call   1db0b8
  eb3ab8:	mov    eax,DWORD PTR [esp+0x48]
  eb3abc:	mov    DWORD PTR [esp+0x4],eax
  eb3ac0:	mov    DWORD PTR [esp+0x8],0x0
  eb3ac8:	mov    DWORD PTR [esp],0x0
  eb3acf:	call   1679a11  ; UnityEngine.Object::op_Implicit
  eb3ad4:	test   al,al
  eb3ad6:	je     eb3b21
  eb3ad8:	mov    eax,DWORD PTR [esp+0x44]
  eb3adc:	mov    eax,DWORD PTR [eax]
  eb3ade:	mov    ecx,DWORD PTR [esi]
  eb3ae0:	mov    ebx,esi
  eb3ae2:	movzx  edx,WORD PTR [ecx+0xaa]
  eb3ae9:	test   edx,edx
  eb3aeb:	je     eb3b00
  eb3aed:	mov    esi,DWORD PTR [ecx+0x4c]
  eb3af0:	xor    edi,edi
  eb3af2:	cmp    DWORD PTR [esi+edi*8],eax
  eb3af5:	je     eb3bf0
  eb3afb:	inc    edi
  eb3afc:	cmp    edi,edx
  eb3afe:	jb     eb3af2
  eb3b00:	mov    DWORD PTR [esp+0x4],eax
  eb3b04:	mov    esi,ebx
  eb3b06:	mov    DWORD PTR [esp],esi
  eb3b09:	mov    DWORD PTR [esp+0x8],0x2f
  eb3b11:	mov    ebx,DWORD PTR [esp+0x4c]
  eb3b15:	call   1c1964
  eb3b1a:	mov    ecx,eax
  eb3b1c:	jmp    eb3c01
  eb3b21:	mov    eax,DWORD PTR [esp+0x3c]
  eb3b25:	mov    eax,DWORD PTR [eax]
  eb3b27:	test   BYTE PTR [eax+0xb2],0x1
  eb3b2e:	je     eb3b3e
  eb3b30:	cmp    DWORD PTR [eax+0x60],0x0
  eb3b34:	jne    eb3b3e
  eb3b36:	mov    DWORD PTR [esp],eax
  eb3b39:	call   1db0b8
  eb3b3e:	mov    DWORD PTR [esp+0x4],edi
  eb3b42:	jmp    eb3e3c
  eb3b47:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  eb3b4b:	lea    ecx,[ecx+eax*8+0x13c]
  eb3b52:	mov    esi,DWORD PTR [esp+0x3c]
  eb3b56:	mov    eax,DWORD PTR [ecx+0x4]
  eb3b59:	mov    DWORD PTR [esp+0x4],eax
  eb3b5d:	mov    DWORD PTR [esp],esi
  eb3b60:	mov    esi,ebx
  eb3b62:	call   DWORD PTR [ecx]
  eb3b64:	mov    edi,eax
  eb3b66:	mov    eax,DWORD PTR [esp+0x40]
  eb3b6a:	mov    eax,DWORD PTR [eax]
  eb3b6c:	test   BYTE PTR [eax+0xb2],0x1
  eb3b73:	je     eb3b85
  eb3b75:	cmp    DWORD PTR [eax+0x60],0x0
  eb3b79:	jne    eb3b85
  eb3b7b:	mov    DWORD PTR [esp],eax
  eb3b7e:	mov    ebx,esi
  eb3b80:	call   1db0b8
  eb3b85:	mov    DWORD PTR [esp+0x4],edi
  eb3b89:	mov    DWORD PTR [esp+0x8],0x0
  eb3b91:	mov    DWORD PTR [esp],0x0
  eb3b98:	mov    ebx,esi
  eb3b9a:	call   1679a11  ; UnityEngine.Object::op_Implicit
  eb3b9f:	test   al,al
  eb3ba1:	je     eb3df7
  eb3ba7:	mov    eax,DWORD PTR [esp+0x44]
  eb3bab:	mov    eax,DWORD PTR [eax]
  eb3bad:	mov    ecx,DWORD PTR [esp+0x3c]
  eb3bb1:	mov    ecx,DWORD PTR [ecx]
  eb3bb3:	movzx  edx,WORD PTR [ecx+0xaa]
  eb3bba:	test   edx,edx
  eb3bbc:	je     eb3bd1
  eb3bbe:	mov    esi,DWORD PTR [ecx+0x4c]
  eb3bc1:	xor    edi,edi
  eb3bc3:	cmp    DWORD PTR [esi+edi*8],eax
  eb3bc6:	je     eb3d4b
  eb3bcc:	inc    edi
  eb3bcd:	cmp    edi,edx
  eb3bcf:	jb     eb3bc3
  eb3bd1:	mov    DWORD PTR [esp+0x4],eax
  eb3bd5:	mov    esi,DWORD PTR [esp+0x3c]
  eb3bd9:	mov    DWORD PTR [esp],esi
  eb3bdc:	mov    DWORD PTR [esp+0x8],0x11
  eb3be4:	call   1c1964
  eb3be9:	mov    ecx,eax
  eb3beb:	jmp    eb3d5a
  eb3bf0:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  eb3bf4:	lea    ecx,[ecx+eax*8+0x22c]
  eb3bfb:	mov    esi,ebx
  eb3bfd:	mov    ebx,DWORD PTR [esp+0x4c]
  eb3c01:	mov    eax,DWORD PTR [ecx+0x4]
  eb3c04:	mov    DWORD PTR [esp+0x4],eax
  eb3c08:	mov    DWORD PTR [esp],esi
  eb3c0b:	call   DWORD PTR [ecx]
  eb3c0d:	mov    DWORD PTR [esp+0x38],eax
  eb3c11:	mov    eax,DWORD PTR [esp+0x44]
  eb3c15:	mov    eax,DWORD PTR [eax]
  eb3c17:	mov    ecx,DWORD PTR [esi]
  eb3c19:	mov    ebx,esi
  eb3c1b:	movzx  edx,WORD PTR [ecx+0xaa]
  eb3c22:	test   edx,edx
  eb3c24:	je     eb3c35
  eb3c26:	mov    esi,DWORD PTR [ecx+0x4c]
  eb3c29:	xor    edi,edi
  eb3c2b:	cmp    DWORD PTR [esi+edi*8],eax
  eb3c2e:	je     eb3c53
  eb3c30:	inc    edi
  eb3c31:	cmp    edi,edx
  eb3c33:	jb     eb3c2b
  eb3c35:	mov    DWORD PTR [esp+0x4],eax
  eb3c39:	mov    esi,ebx
  eb3c3b:	mov    DWORD PTR [esp],esi
  eb3c3e:	mov    DWORD PTR [esp+0x8],0x11
  eb3c46:	mov    ebx,DWORD PTR [esp+0x4c]
  eb3c4a:	call   1c1964
  eb3c4f:	mov    ecx,eax
  eb3c51:	jmp    eb3c64
  eb3c53:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  eb3c57:	lea    ecx,[ecx+eax*8+0x13c]
  eb3c5e:	mov    esi,ebx
  eb3c60:	mov    ebx,DWORD PTR [esp+0x4c]
  eb3c64:	mov    eax,DWORD PTR [ecx+0x4]
  eb3c67:	mov    DWORD PTR [esp+0x4],eax
  eb3c6b:	mov    DWORD PTR [esp],esi
  eb3c6e:	call   DWORD PTR [ecx]
  eb3c70:	test   eax,eax
  eb3c72:	mov    esi,DWORD PTR [esp+0x40]
  eb3c76:	mov    edi,DWORD PTR [esp+0x48]
  eb3c7a:	je     eb3f92
  eb3c80:	mov    eax,DWORD PTR [eax+0x14]
  eb3c83:	test   eax,eax
  eb3c85:	je     eb3f92
  eb3c8b:	lea    ecx,[eax+0x38]
  eb3c8e:	add    eax,0x3c
  eb3c91:	cmp    DWORD PTR [esp+0x38],0x0
  eb3c96:	cmovne eax,ecx
  eb3c99:	test   edi,edi
  eb3c9b:	je     eb3f92
  eb3ca1:	mov    eax,DWORD PTR [eax]
  eb3ca3:	mov    DWORD PTR [edi+0x28],eax
  eb3ca6:	test   eax,eax
  eb3ca8:	je     eb3f92
  eb3cae:	mov    DWORD PTR [esp+0x4],eax
  eb3cb2:	lea    eax,[esp+0x60]
  eb3cb6:	mov    DWORD PTR [esp],eax
  eb3cb9:	mov    DWORD PTR [esp+0x8],0x0
  eb3cc1:	call   17760ae  ; UnityEngine.Transform::get_position
  eb3cc6:	sub    esp,0x4
  eb3cc9:	movss  xmm0,DWORD PTR [esp+0x64]
  eb3ccf:	movss  DWORD PTR [esp+0x44],xmm0
  eb3cd5:	mov    DWORD PTR [esp],esi
  eb3cd8:	mov    DWORD PTR [esp+0x4],0x0
  eb3ce0:	call   137e87a  ; UnityEngine.GameObject::get_transform
  eb3ce5:	test   eax,eax
  eb3ce7:	je     eb3f92
  eb3ced:	mov    DWORD PTR [esp+0x4],eax
  eb3cf1:	lea    eax,[esp+0x50]
  eb3cf5:	mov    DWORD PTR [esp],eax
  eb3cf8:	mov    DWORD PTR [esp+0x8],0x0
  eb3d00:	call   17760ae  ; UnityEngine.Transform::get_position
  eb3d05:	sub    esp,0x4
  eb3d08:	movss  xmm0,DWORD PTR [esp+0x54]
  eb3d0e:	ucomiss xmm0,DWORD PTR [esp+0x44]
  eb3d13:	jbe    eb3d2d
  eb3d15:	mov    DWORD PTR [esp],edi
  eb3d18:	mov    DWORD PTR [esp+0x8],0x0
  eb3d20:	mov    DWORD PTR [esp+0x4],0x1
  eb3d28:	call   907779  ; CHMotionTween::InvertCurves
  eb3d2d:	mov    DWORD PTR [esp],edi
  eb3d30:	mov    DWORD PTR [esp+0x4],0x0
  eb3d38:	call   8d3ac6  ; CHMotionTween::Play
  eb3d3d:	movss  xmm0,DWORD PTR [edi+0x3c]
  eb3d42:	mov    eax,DWORD PTR [esp+0x3c]
  eb3d46:	jmp    eb3f45
  eb3d4b:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  eb3d4f:	lea    ecx,[ecx+eax*8+0x13c]
  eb3d56:	mov    esi,DWORD PTR [esp+0x3c]
  eb3d5a:	mov    eax,DWORD PTR [ecx+0x4]
  eb3d5d:	mov    DWORD PTR [esp+0x4],eax
  eb3d61:	mov    DWORD PTR [esp],esi
  eb3d64:	call   DWORD PTR [ecx]
  eb3d66:	test   eax,eax
  eb3d68:	je     eb3f92
  eb3d6e:	mov    eax,DWORD PTR [eax+0x68]
  eb3d71:	test   eax,eax
  eb3d73:	je     eb3f92
  eb3d79:	mov    edi,DWORD PTR [eax+0x24]
  eb3d7c:	mov    eax,DWORD PTR [esp+0x40]
  eb3d80:	mov    eax,DWORD PTR [eax]
  eb3d82:	test   BYTE PTR [eax+0xb2],0x1
  eb3d89:	je     eb3d99
  eb3d8b:	cmp    DWORD PTR [eax+0x60],0x0
  eb3d8f:	jne    eb3d99
  eb3d91:	mov    DWORD PTR [esp],eax
  eb3d94:	call   1db0b8
  eb3d99:	mov    DWORD PTR [esp+0x4],edi
  eb3d9d:	mov    DWORD PTR [esp+0x8],0x0
  eb3da5:	mov    DWORD PTR [esp],0x0
  eb3dac:	call   1679a11  ; UnityEngine.Object::op_Implicit
  eb3db1:	test   al,al
  eb3db3:	je     eb3df7
  eb3db5:	mov    eax,DWORD PTR [esp+0x44]
  eb3db9:	mov    eax,DWORD PTR [eax]
  eb3dbb:	mov    ecx,DWORD PTR [esp+0x3c]
  eb3dbf:	mov    ecx,DWORD PTR [ecx]
  eb3dc1:	movzx  edx,WORD PTR [ecx+0xaa]
  eb3dc8:	test   edx,edx
  eb3dca:	je     eb3ddb
  eb3dcc:	mov    esi,DWORD PTR [ecx+0x4c]
  eb3dcf:	xor    edi,edi
  eb3dd1:	cmp    DWORD PTR [esi+edi*8],eax
  eb3dd4:	je     eb3e55
  eb3dd6:	inc    edi
  eb3dd7:	cmp    edi,edx
  eb3dd9:	jb     eb3dd1
  eb3ddb:	mov    DWORD PTR [esp+0x4],eax
  eb3ddf:	mov    esi,DWORD PTR [esp+0x3c]
  eb3de3:	mov    DWORD PTR [esp],esi
  eb3de6:	mov    DWORD PTR [esp+0x8],0x11
  eb3dee:	call   1c1964
  eb3df3:	mov    ecx,eax
  eb3df5:	jmp    eb3e64
  eb3df7:	lea    eax,[ebx+0x56b84]  ; literal "Combatant view or its Body Center is Missing!"
  eb3dfd:	mov    eax,DWORD PTR [eax]
  eb3dff:	mov    DWORD PTR [esp+0x4],eax
  eb3e03:	mov    DWORD PTR [esp+0x8],0x0
  eb3e0b:	mov    DWORD PTR [esp],0x0
  eb3e12:	call   108148a  ; DebugLog::Error
  eb3e17:	mov    eax,DWORD PTR [esp+0x40]
  eb3e1b:	mov    eax,DWORD PTR [eax]
  eb3e1d:	test   BYTE PTR [eax+0xb2],0x1
  eb3e24:	je     eb3e34
  eb3e26:	cmp    DWORD PTR [eax+0x60],0x0
  eb3e2a:	jne    eb3e34
  eb3e2c:	mov    DWORD PTR [esp],eax
  eb3e2f:	call   1db0b8
  eb3e34:	mov    eax,DWORD PTR [esp+0x38]
  eb3e38:	mov    DWORD PTR [esp+0x4],eax
  eb3e3c:	mov    DWORD PTR [esp+0x8],0x0
  eb3e44:	mov    DWORD PTR [esp],0x0
  eb3e4b:	call   1679110  ; UnityEngine.Object::Destroy
  eb3e50:	jmp    eb3f88
  eb3e55:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  eb3e59:	lea    ecx,[ecx+eax*8+0x13c]
  eb3e60:	mov    esi,DWORD PTR [esp+0x3c]
  eb3e64:	mov    eax,DWORD PTR [ecx+0x4]
  eb3e67:	mov    DWORD PTR [esp+0x4],eax
  eb3e6b:	mov    DWORD PTR [esp],esi
  eb3e6e:	call   DWORD PTR [ecx]
  eb3e70:	test   eax,eax
  eb3e72:	mov    esi,DWORD PTR [esp+0x38]
  eb3e76:	mov    edi,DWORD PTR [esp+0x48]
  eb3e7a:	je     eb3f92
  eb3e80:	mov    eax,DWORD PTR [eax+0x68]
  eb3e83:	test   eax,eax
  eb3e85:	je     eb3f92
  eb3e8b:	test   edi,edi
  eb3e8d:	je     eb3f92
  eb3e93:	mov    eax,DWORD PTR [eax+0x24]
  eb3e96:	mov    DWORD PTR [edi+0x28],eax
  eb3e99:	test   eax,eax
  eb3e9b:	je     eb3f92
  eb3ea1:	mov    DWORD PTR [esp+0x4],eax
  eb3ea5:	lea    eax,[esp+0xc0]
  eb3eac:	mov    DWORD PTR [esp],eax
  eb3eaf:	mov    DWORD PTR [esp+0x8],0x0
  eb3eb7:	call   17760ae  ; UnityEngine.Transform::get_position
  eb3ebc:	sub    esp,0x4
  eb3ebf:	movss  xmm0,DWORD PTR [esp+0xc4]
  eb3ec8:	movss  DWORD PTR [esp+0x44],xmm0
  eb3ece:	mov    DWORD PTR [esp],esi
  eb3ed1:	mov    DWORD PTR [esp+0x4],0x0
  eb3ed9:	call   137e87a  ; UnityEngine.GameObject::get_transform
  eb3ede:	test   eax,eax
  eb3ee0:	je     eb3f92
  eb3ee6:	mov    DWORD PTR [esp+0x4],eax
  eb3eea:	lea    eax,[esp+0xb0]
  eb3ef1:	mov    DWORD PTR [esp],eax
  eb3ef4:	mov    DWORD PTR [esp+0x8],0x0
  eb3efc:	call   17760ae  ; UnityEngine.Transform::get_position
  eb3f01:	sub    esp,0x4
  eb3f04:	movss  xmm0,DWORD PTR [esp+0xb4]
  eb3f0d:	ucomiss xmm0,DWORD PTR [esp+0x44]
  eb3f12:	jbe    eb3f2c
  eb3f14:	mov    DWORD PTR [esp],edi
  eb3f17:	mov    DWORD PTR [esp+0x8],0x0
  eb3f1f:	mov    DWORD PTR [esp+0x4],0x1
  eb3f27:	call   907779  ; CHMotionTween::InvertCurves
  eb3f2c:	mov    DWORD PTR [esp],edi
  eb3f2f:	mov    DWORD PTR [esp+0x4],0x0
  eb3f37:	call   8d3ac6  ; CHMotionTween::Play
  eb3f3c:	movss  xmm0,DWORD PTR [edi+0x3c]
  eb3f41:	mov    eax,DWORD PTR [esp+0x40]
  eb3f45:	mov    eax,DWORD PTR [eax]
  eb3f47:	test   BYTE PTR [eax+0xb2],0x1
  eb3f4e:	je     eb3f6a
  eb3f50:	cmp    DWORD PTR [eax+0x60],0x0
  eb3f54:	jne    eb3f6a
  eb3f56:	mov    DWORD PTR [esp],eax
  eb3f59:	movss  DWORD PTR [esp+0x48],xmm0
  eb3f5f:	call   1db0b8
  eb3f64:	movss  xmm0,DWORD PTR [esp+0x48]
  eb3f6a:	movss  DWORD PTR [esp+0x8],xmm0
  eb3f70:	mov    DWORD PTR [esp+0x4],esi
  eb3f74:	mov    DWORD PTR [esp+0xc],0x0
  eb3f7c:	mov    DWORD PTR [esp],0x0
  eb3f83:	call   16790a1  ; UnityEngine.Object::Destroy
  eb3f88:	lea    esp,[ebp-0xc]
  eb3f8b:	pop    esi
  eb3f8c:	pop    edi
  eb3f8d:	pop    ebx
  eb3f8e:	pop    ebp
  eb3f8f:	ret
  eb3f90:	mov    ebx,edi
  eb3f92:	call   1fbc48
  eb3f97:	call   ebbb41