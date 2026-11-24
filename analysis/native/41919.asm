
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00547648:
  547648:	push   ebp
  547649:	mov    ebp,esp
  54764b:	push   ebx
  54764c:	push   edi
  54764d:	push   esi
  54764e:	and    esp,0xfffffff0
  547651:	sub    esp,0x30
  547654:	call   547659
  547659:	pop    ebx
  54765a:	add    ebx,0x19ca8eb
  547660:	mov    al,BYTE PTR [ebx+0x5d720]
  547666:	test   al,al
  547668:	jne    547681
  54766a:	lea    eax,[ebx-0x664c50]
  547670:	mov    eax,DWORD PTR [eax]
  547672:	mov    DWORD PTR [esp],eax
  547675:	call   1ca6e8
  54767a:	mov    BYTE PTR [ebx+0x5d720],0x1
  547681:	lea    esi,[ebx+0x45820]
  547687:	mov    eax,DWORD PTR [esi]
  547689:	test   BYTE PTR [eax+0xb2],0x1
  547690:	je     5476a0
  547692:	cmp    DWORD PTR [eax+0x60],0x0
  547696:	jne    5476a0
  547698:	mov    DWORD PTR [esp],eax
  54769b:	call   1db0b8
  5476a0:	mov    DWORD PTR [esp+0x4],0x0
  5476a8:	mov    DWORD PTR [esp],0x0
  5476af:	call   106b6fb  ; DIContainerBalancing::GetInventoryItemBalancingDataPovider
  5476b4:	test   eax,eax
  5476b6:	je     547be2
  5476bc:	mov    edi,DWORD PTR [ebp+0x18]
  5476bf:	mov    DWORD PTR [esp+0x4],edi
  5476c3:	mov    DWORD PTR [esp],eax
  5476c6:	mov    DWORD PTR [esp+0xc],0x0
  5476ce:	mov    DWORD PTR [esp+0x8],0x1
  5476d6:	mov    DWORD PTR [esp+0x28],ebx
  5476da:	call   abd53b  ; ABH.Shared.BalancingData.InventoryItemBalancingDataPovider::GetBalancingData
  5476df:	mov    ebx,eax
  5476e1:	test   ebx,ebx
  5476e3:	je     5476f6
  5476e5:	mov    DWORD PTR [esp+0x24],edi
  5476e9:	mov    DWORD PTR [esp+0x20],0x0
  5476f1:	jmp    5477de
  5476f6:	test   edi,edi
  5476f8:	je     547b59
  5476fe:	mov    ecx,DWORD PTR [esp+0x28]
  547702:	lea    eax,[ecx+0x57ad8]
  547708:	mov    DWORD PTR [esp+0x20],eax
  54770c:	mov    eax,DWORD PTR [eax]
  54770e:	mov    DWORD PTR [esp+0x4],eax
  547712:	mov    DWORD PTR [esp],edi
  547715:	mov    DWORD PTR [esp+0x24],edi
  547719:	mov    ebx,ecx
  54771b:	mov    DWORD PTR [esp+0x8],0x0
  547723:	call   cb2476  ; System.String::StartsWith
  547728:	test   al,al
  54772a:	je     547b66
  547730:	lea    edi,[ebx+0x430e4]
  547736:	mov    eax,DWORD PTR [edi]
  547738:	test   BYTE PTR [eax+0xb2],0x1
  54773f:	je     547751
  547741:	cmp    DWORD PTR [eax+0x60],0x0
  547745:	jne    547751
  547747:	mov    DWORD PTR [esp],eax
  54774a:	call   1db0b8
  54774f:	mov    eax,DWORD PTR [edi]
  547751:	mov    ecx,DWORD PTR [esp+0x20]
  547755:	mov    eax,DWORD PTR [eax+0x50]
  547758:	mov    eax,DWORD PTR [eax]
  54775a:	mov    ecx,DWORD PTR [ecx]
  54775c:	mov    DWORD PTR [esp+0x8],eax
  547760:	mov    DWORD PTR [esp+0x4],ecx
  547764:	mov    eax,DWORD PTR [ebp+0x18]
  547767:	mov    DWORD PTR [esp],eax
  54776a:	mov    DWORD PTR [esp+0xc],0x0
  547772:	call   cbfb3e  ; System.String::Replace
  547777:	mov    edi,eax
  547779:	mov    eax,DWORD PTR [esi]
  54777b:	test   BYTE PTR [eax+0xb2],0x1
  547782:	je     547792
  547784:	cmp    DWORD PTR [eax+0x60],0x0
  547788:	jne    547792
  54778a:	mov    DWORD PTR [esp],eax
  54778d:	call   1db0b8
  547792:	mov    DWORD PTR [esp+0x4],0x0
  54779a:	mov    DWORD PTR [esp],0x0
  5477a1:	call   106b6fb  ; DIContainerBalancing::GetInventoryItemBalancingDataPovider
  5477a6:	test   eax,eax
  5477a8:	je     547be2
  5477ae:	mov    DWORD PTR [esp+0x4],edi
  5477b2:	mov    DWORD PTR [esp],eax
  5477b5:	mov    DWORD PTR [esp+0xc],0x0
  5477bd:	mov    DWORD PTR [esp+0x8],0x1
  5477c5:	call   abd53b  ; ABH.Shared.BalancingData.InventoryItemBalancingDataPovider::GetBalancingData
  5477ca:	mov    ebx,eax
  5477cc:	test   ebx,ebx
  5477ce:	je     547b62
  5477d4:	mov    DWORD PTR [esp+0x24],edi
  5477d8:	mov    al,0x1
  5477da:	mov    DWORD PTR [esp+0x20],eax
  5477de:	mov    eax,DWORD PTR [esp+0x28]
  5477e2:	lea    eax,[eax+0x45578]
  5477e8:	mov    eax,DWORD PTR [eax]
  5477ea:	mov    ecx,DWORD PTR [ebx]
  5477ec:	movzx  edx,WORD PTR [ecx+0xaa]
  5477f3:	test   edx,edx
  5477f5:	je     547806
  5477f7:	mov    esi,DWORD PTR [ecx+0x4c]
  5477fa:	xor    edi,edi
  5477fc:	cmp    DWORD PTR [esi+edi*8],eax
  5477ff:	je     547824
  547801:	inc    edi
  547802:	cmp    edi,edx
  547804:	jb     5477fc
  547806:	mov    DWORD PTR [esp+0x4],eax
  54780a:	mov    DWORD PTR [esp],ebx
  54780d:	mov    DWORD PTR [esp+0x8],0x2
  547815:	mov    edi,ebx
  547817:	mov    ebx,DWORD PTR [esp+0x28]
  54781b:	call   1c1964
  547820:	mov    ecx,eax
  547822:	jmp    547835
  547824:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  547828:	lea    ecx,[ecx+eax*8+0xc4]
  54782f:	mov    edi,ebx
  547831:	mov    ebx,DWORD PTR [esp+0x28]
  547835:	mov    esi,DWORD PTR [ebp+0x1c]
  547838:	mov    eax,DWORD PTR [ecx+0x4]
  54783b:	mov    DWORD PTR [esp+0x4],eax
  54783f:	mov    DWORD PTR [esp],edi
  547842:	call   DWORD PTR [ecx]
  547844:	dec    eax
  547845:	cmp    eax,0x16
  547848:	mov    edi,DWORD PTR [esp+0x24]
  54784c:	ja     54789d
  54784e:	mov    edx,DWORD PTR [ebp+0x20]
  547851:	mov    ecx,DWORD PTR [ebp+0x14]
  547854:	mov    eax,DWORD PTR [ebx+eax*4-0x64fb3c]
  54785b:	add    eax,ebx
  54785d:	jmp    eax
  54785f:	mov    DWORD PTR [esp+0x10],esi
  547863:	mov    DWORD PTR [esp+0xc],edi
  547867:	mov    eax,DWORD PTR [ebp+0x10]
  54786a:	mov    DWORD PTR [esp+0x4],eax
  54786e:	call   575ef2  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::GenerateEventItem
  547873:	mov    edi,eax
  547875:	lea    eax,[ebx+0x46120]
  54787b:	mov    eax,DWORD PTR [eax]
  54787d:	mov    DWORD PTR [esp],eax
  547880:	call   20bfb2
  547885:	mov    esi,eax
  547887:	mov    DWORD PTR [esp+0x4],edi
  54788b:	mov    DWORD PTR [esp],esi
  54788e:	mov    DWORD PTR [esp+0x8],0x0
  547896:	call   6d883c  ; ABH.GameDatas.EventItemGameData::.ctor
  54789b:	jmp    5478d9
  54789d:	mov    DWORD PTR [esp+0x10],esi
  5478a1:	mov    DWORD PTR [esp+0xc],edi
  5478a5:	mov    eax,DWORD PTR [ebp+0x10]
  5478a8:	mov    DWORD PTR [esp+0x4],eax
  5478ac:	call   576194  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::GenerateBasicItem
  5478b1:	mov    edi,eax
  5478b3:	lea    eax,[ebx+0x46194]
  5478b9:	mov    eax,DWORD PTR [eax]
  5478bb:	mov    DWORD PTR [esp],eax
  5478be:	call   20bfb2
  5478c3:	mov    esi,eax
  5478c5:	mov    DWORD PTR [esp+0x4],edi
  5478c9:	mov    DWORD PTR [esp],esi
  5478cc:	mov    DWORD PTR [esp+0x8],0x0
  5478d4:	call   eb091e  ; ABH.GameDatas.BasicItemGameData::.ctor
  5478d9:	test   esi,esi
  5478db:	je     547be2
  5478e1:	lea    eax,[ebx+0x45854]
  5478e7:	mov    eax,DWORD PTR [eax]
  5478e9:	mov    ecx,DWORD PTR [esi]
  5478eb:	mov    ebx,esi
  5478ed:	movzx  edx,WORD PTR [ecx+0xaa]
  5478f4:	test   edx,edx
  5478f6:	je     547907
  5478f8:	mov    edi,DWORD PTR [ecx+0x4c]
  5478fb:	xor    esi,esi
  5478fd:	cmp    DWORD PTR [edi+esi*8],eax
  547900:	je     547923
  547902:	inc    esi
  547903:	cmp    esi,edx
  547905:	jb     5478fd
  547907:	mov    DWORD PTR [esp+0x4],eax
  54790b:	mov    esi,ebx
  54790d:	mov    DWORD PTR [esp],esi
  547910:	mov    DWORD PTR [esp+0x8],0x11
  547918:	mov    ebx,DWORD PTR [esp+0x28]
  54791c:	call   1c1964
  547921:	jmp    547934
  547923:	mov    eax,DWORD PTR [edi+esi*8+0x4]
  547927:	lea    eax,[ecx+eax*8+0x13c]
  54792e:	mov    esi,ebx
  547930:	mov    ebx,DWORD PTR [esp+0x28]
  547934:	mov    ecx,DWORD PTR [eax+0x4]
  547937:	mov    DWORD PTR [esp+0x8],ecx
  54793b:	mov    ecx,DWORD PTR [esp+0x20]
  54793f:	movzx  ecx,cl
  547942:	mov    DWORD PTR [esp+0x4],ecx
  547946:	mov    DWORD PTR [esp],esi
  547949:	call   DWORD PTR [eax]
  54794b:	mov    eax,esi
  54794d:	lea    esp,[ebp-0xc]
  547950:	pop    esi
  547951:	pop    edi
  547952:	pop    ebx
  547953:	pop    ebp
  547954:	ret
  547955:	mov    DWORD PTR [esp+0x14],edx
  547959:	mov    DWORD PTR [esp+0x10],esi
  54795d:	mov    DWORD PTR [esp+0xc],edi
  547961:	mov    DWORD PTR [esp+0x8],ecx
  547965:	mov    eax,DWORD PTR [ebp+0x10]
  547968:	mov    DWORD PTR [esp+0x4],eax
  54796c:	call   575fc2  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::GenerateBannerItem
  547971:	mov    edi,eax
  547973:	lea    eax,[ebx+0x45828]
  547979:	mov    eax,DWORD PTR [eax]
  54797b:	mov    DWORD PTR [esp],eax
  54797e:	call   20bfb2
  547983:	mov    esi,eax
  547985:	mov    DWORD PTR [esp+0x4],edi
  547989:	mov    DWORD PTR [esp],esi
  54798c:	mov    DWORD PTR [esp+0x8],0x0
  547994:	call   ead15d  ; ABH.GameDatas.BannerItemGameData::.ctor
  547999:	jmp    5478d9
  54799e:	mov    DWORD PTR [esp+0x10],esi
  5479a2:	mov    DWORD PTR [esp+0xc],edi
  5479a6:	mov    eax,DWORD PTR [ebp+0x10]
  5479a9:	mov    DWORD PTR [esp+0x4],eax
  5479ad:	call   575c39  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::GenerateCraftingItem
  5479b2:	mov    edi,eax
  5479b4:	lea    eax,[ebx+0x461e4]
  5479ba:	mov    eax,DWORD PTR [eax]
  5479bc:	mov    DWORD PTR [esp],eax
  5479bf:	call   20bfb2
  5479c4:	mov    esi,eax
  5479c6:	mov    DWORD PTR [esp+0x4],edi
  5479ca:	mov    DWORD PTR [esp],esi
  5479cd:	mov    DWORD PTR [esp+0x8],0x0
  5479d5:	call   6d1134  ; ABH.GameDatas.CraftingItemGameData::.ctor
  5479da:	jmp    5478d9
  5479df:	mov    DWORD PTR [esp+0x14],edx
  5479e3:	mov    DWORD PTR [esp+0x10],esi
  5479e7:	mov    DWORD PTR [esp+0xc],edi
  5479eb:	mov    DWORD PTR [esp+0x8],ecx
  5479ef:	mov    eax,DWORD PTR [ebp+0x10]
  5479f2:	mov    DWORD PTR [esp+0x4],eax
  5479f6:	mov    eax,DWORD PTR [ebp+0x8]
  5479f9:	mov    DWORD PTR [esp],eax
  5479fc:	call   576784  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::GenerateAndSetNewEquipmentGameData
  547a01:	mov    esi,eax
  547a03:	jmp    5478d9
  547a08:	mov    DWORD PTR [esp+0x10],esi
  547a0c:	mov    DWORD PTR [esp+0xc],edi
  547a10:	mov    eax,DWORD PTR [ebp+0x10]
  547a13:	mov    DWORD PTR [esp+0x4],eax
  547a17:	call   575a82  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::GenerateConsumable
  547a1c:	mov    edi,eax
  547a1e:	lea    eax,[ebx+0x45e78]
  547a24:	mov    eax,DWORD PTR [eax]
  547a26:	mov    DWORD PTR [esp],eax
  547a29:	call   20bfb2
  547a2e:	mov    esi,eax
  547a30:	mov    DWORD PTR [esp+0x4],edi
  547a34:	mov    DWORD PTR [esp],esi
  547a37:	mov    DWORD PTR [esp+0x8],0x0
  547a3f:	call   6cf36c  ; ABH.GameDatas.ConsumableItemGameData::.ctor
  547a44:	jmp    5478d9
  547a49:	mov    DWORD PTR [esp+0x10],esi
  547a4d:	mov    DWORD PTR [esp+0xc],edi
  547a51:	mov    DWORD PTR [esp+0x8],ecx
  547a55:	mov    eax,DWORD PTR [ebp+0x10]
  547a58:	mov    DWORD PTR [esp+0x4],eax
  547a5c:	call   576264  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::GenerateClassItem
  547a61:	mov    edi,eax
  547a63:	lea    eax,[ebx+0x45e24]
  547a69:	mov    eax,DWORD PTR [eax]
  547a6b:	mov    DWORD PTR [esp],eax
  547a6e:	call   20bfb2
  547a73:	mov    esi,eax
  547a75:	mov    DWORD PTR [esp+0x4],edi
  547a79:	mov    DWORD PTR [esp],esi
  547a7c:	mov    DWORD PTR [esp+0x8],0x0
  547a84:	call   6cb937  ; ABH.GameDatas.ClassItemGameData::.ctor
  547a89:	jmp    5478d9
  547a8e:	mov    DWORD PTR [esp+0x10],esi
  547a92:	mov    DWORD PTR [esp+0xc],edi
  547a96:	mov    DWORD PTR [esp+0x8],ecx
  547a9a:	mov    eax,DWORD PTR [ebp+0x10]
  547a9d:	mov    DWORD PTR [esp+0x4],eax
  547aa1:	call   575e0b  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::GenerateCraftingRecipe
  547aa6:	mov    edi,eax
  547aa8:	lea    eax,[ebx+0x45e80]
  547aae:	mov    eax,DWORD PTR [eax]
  547ab0:	mov    DWORD PTR [esp],eax
  547ab3:	call   20bfb2
  547ab8:	mov    esi,eax
  547aba:	mov    DWORD PTR [esp+0x4],edi
  547abe:	mov    DWORD PTR [esp],esi
  547ac1:	mov    DWORD PTR [esp+0x8],0x0
  547ac9:	call   6d1f95  ; ABH.GameDatas.CraftingRecipeGameData::.ctor
  547ace:	jmp    5478d9
  547ad3:	mov    DWORD PTR [esp+0x10],esi
  547ad7:	mov    DWORD PTR [esp+0xc],edi
  547adb:	mov    eax,DWORD PTR [ebp+0x10]
  547ade:	mov    DWORD PTR [esp+0x4],eax
  547ae2:	call   5760c4  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::GenerateMasteryItem
  547ae7:	mov    edi,eax
  547ae9:	lea    eax,[ebx+0x45e50]
  547aef:	mov    eax,DWORD PTR [eax]
  547af1:	mov    DWORD PTR [esp],eax
  547af4:	call   20bfb2
  547af9:	mov    esi,eax
  547afb:	mov    DWORD PTR [esp+0x4],edi
  547aff:	mov    DWORD PTR [esp],esi
  547b02:	mov    DWORD PTR [esp+0x8],0x0
  547b0a:	call   6f27c4  ; ABH.GameDatas.MasteryItemGameData::.ctor
  547b0f:	jmp    5478d9
  547b14:	mov    DWORD PTR [esp+0x10],esi
  547b18:	mov    DWORD PTR [esp+0xc],edi
  547b1c:	mov    DWORD PTR [esp+0x8],ecx
  547b20:	mov    eax,DWORD PTR [ebp+0x10]
  547b23:	mov    DWORD PTR [esp+0x4],eax
  547b27:	call   575b52  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::GenerateSkinItem
  547b2c:	mov    edi,eax
  547b2e:	lea    eax,[ebx+0x45e20]
  547b34:	mov    eax,DWORD PTR [eax]
  547b36:	mov    DWORD PTR [esp],eax
  547b39:	call   20bfb2
  547b3e:	mov    esi,eax
  547b40:	mov    DWORD PTR [esp+0x4],edi
  547b44:	mov    DWORD PTR [esp],esi
  547b47:	mov    DWORD PTR [esp+0x8],0x0
  547b4f:	call   71019e  ; ABH.GameDatas.SkinItemGameData::.ctor
  547b54:	jmp    5478d9
  547b59:	mov    ebx,DWORD PTR [esp+0x28]
  547b5d:	jmp    547be2
  547b62:	mov    DWORD PTR [esp+0x24],edi
  547b66:	mov    eax,DWORD PTR [ebp+0x8]
  547b69:	mov    DWORD PTR [esp],eax
  547b6c:	mov    DWORD PTR [esp+0x4],0x0
  547b74:	mov    ebx,DWORD PTR [esp+0x28]
  547b78:	call   12501cb  ; System.Object::GetType
  547b7d:	mov    edi,eax
  547b7f:	lea    eax,[ebx+0x430e4]
  547b85:	mov    eax,DWORD PTR [eax]
  547b87:	test   BYTE PTR [eax+0xb2],0x1
  547b8e:	je     547b9e
  547b90:	cmp    DWORD PTR [eax+0x60],0x0
  547b94:	jne    547b9e
  547b96:	mov    DWORD PTR [esp],eax
  547b99:	call   1db0b8
  547b9e:	lea    eax,[ebx+0x57adc]  ; literal "GenerateNewInventoryItemGameData: Item Balancing is missing: "
  547ba4:	mov    eax,DWORD PTR [eax]
  547ba6:	mov    ecx,DWORD PTR [esp+0x24]
  547baa:	mov    DWORD PTR [esp+0x8],ecx
  547bae:	mov    DWORD PTR [esp+0x4],eax
  547bb2:	mov    DWORD PTR [esp+0xc],0x0
  547bba:	mov    DWORD PTR [esp],0x0
  547bc1:	call   ca462a  ; System.String::Concat
  547bc6:	mov    DWORD PTR [esp+0x8],eax
  547bca:	mov    DWORD PTR [esp+0x4],edi
  547bce:	mov    DWORD PTR [esp+0xc],0x0
  547bd6:	mov    DWORD PTR [esp],0x0
  547bdd:	call   10823ba  ; DebugLog::Error
  547be2:	call   1fbc48
  547be7:	call   540b98