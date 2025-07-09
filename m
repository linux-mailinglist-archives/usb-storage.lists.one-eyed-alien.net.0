Return-Path: <usb-storage+bncBDTPNYNWQEIBBWV4W7BQMGQEGX6NFCY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x447.google.com (mail-pf1-x447.google.com [IPv6:2607:f8b0:4864:20::447])
	by mail.lfdr.de (Postfix) with ESMTPS id E0805AFDDFF
	for <lists+usb-storage@lfdr.de>; Wed,  9 Jul 2025 05:13:33 +0200 (CEST)
Received: by mail-pf1-x447.google.com with SMTP id d2e1a72fcca58-74b537e8d05sf4087948b3a.3
        for <lists+usb-storage@lfdr.de>; Tue, 08 Jul 2025 20:13:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1752030811; cv=pass;
        d=google.com; s=arc-20240605;
        b=k2KI6I6tu896oFrnJnpkeBlsaFkksWXVng0+r9U5vdIjtijiNE1eDYYTZlVDwE6vDJ
         UW4ERJbQQB8WfVKJToBX8xOq52W/P51vjQN2kZFIrZW4XOoCGF5yFfIMVuOL0vZfQADG
         K//3ComVEmaSIoKqlTCxGfl9ZmQeefaMYtRVmom55JlSA/LmotL/+sm7w3l5QFvg3Sir
         cAoXUizayG21UPtaAy4nKmlu9zAyUHHZVB2hWKAbb3XhsJk6f5pNNGHfGcHr8AzGhcNL
         nO0KuRwxeXuuFLRo8q7o9EXiG1yC9BaKZdFA9GaKVqefoWCYA5WaB6//YuHYNHAa/ePd
         1rAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:from:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=1/NRxsB/I0tig6lNHDrHVo8IGxhosPIOm3RUPDmrLiQ=;
        fh=Y/J/EswFznIhSKf5XCV6Rg0sv1iERRDYO7apfEnyKIk=;
        b=kvcGmEnW/SCf3L3eMjPn1Od2y7KBQDQpBiIUVyvgslKtoOwwUGebQN5CsS+tiAJk+W
         y7pVQPRDEMM4ug1PjTJEJRvMnK61LAKj2WUjgIFR4hVONGzzfdJQwI5qQLkGEyb+c/FN
         uonTUAQ/AT6QCAzJeshU/utGDAuBWjGjnRZS0bJ98LsCa3g0+h8XkOGxSufQWQE15vF/
         iM06oKPRbqkSlyjOkM0o24yxXCiEePNIPp94wCux5XltXyDfpG3uiSub99y07cs6r3St
         SIey3q0rGklIJ6N8+UevzRwktmotiHYv/j4FbT+G3z6WXfOsYyu6+0afUoeBjXq1itCn
         8CnQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of dengjie03@kylinos.cn designates 124.126.103.232 as permitted sender) smtp.mailfrom=dengjie03@kylinos.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1752030811; x=1752635611; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:in-reply-to:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=1/NRxsB/I0tig6lNHDrHVo8IGxhosPIOm3RUPDmrLiQ=;
        b=UZf5LsMSpMlf8f2D9z5zgqLdkZBqkFyGC3T1QF98+aeFd+CD0jhcrwlt9PjNbmSkSM
         /82/e8yu3dXiV5XFnc4gNNSK7kxksDXaF9cpL+o5ylji3PhHa0NsyYuKO7/ebwTerfJX
         Qd3mm5ebebNInmDKwedKsDVItI/EfyFqSryro=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752030811; x=1752635611;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1/NRxsB/I0tig6lNHDrHVo8IGxhosPIOm3RUPDmrLiQ=;
        b=mKxy2f9CJ5EkA2AvRvOusD5KN65yrl4oUlD4X6PD67pV0AU6Vp8qHAjVGSgtGaEAMt
         nro7GWHTPqlaN3b4H69GcwW4Xd+k6HtDJEAiIUQQsbfxFRZb1fukZa2ptjBKtmRwimHj
         IzlFA1p/j7EwAsd+42nJq0U0jYObmG9nB07KE+KGKVWTpEjAz3CORdXSeIVQ52Y9v5Hx
         zTKqi13BEgYJo07zNtZgfbLDnJp4xs6YpSCfzpmQPfRKFFL8nroA3BYGVPORnM86tgis
         oqL6XLTgrfJxogTGoi/1eMk6cYESwydDsmKM0a4ql+XdNc16r434u7NGxrcA4nDO3Dw4
         SAMw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXEgSiVIKHnXewShlXwE4aAVYG0IU/I64KYgq0bFf/sx+ayQ5m9J8ZuJr7KuwkSlvQmbGmrqA==@lfdr.de
X-Gm-Message-State: AOJu0Yx5t19gxrZ+w7TQ+XM3DbJCELvw7d5OFbmaGGhDEkXWuN/ykxo/
	w1vZU2liKPSzfngEwdkFkKE9q6KpNMkwNqQSDYv6+jXPbkiPlwG4lRL0ubgNrK5KR2k=
X-Google-Smtp-Source: AGHT+IHGPruxMXUqXcT/dwHw0OA6dyIsINNsOAo80mxHxxLQk6XbCMFVDG5xQPKxpZlZSUTgwi1KaQ==
X-Received: by 2002:a05:6a20:3950:b0:21e:f56d:e4b6 with SMTP id adf61e73a8af0-22cd64d9d26mr1365636637.18.1752030811246;
        Tue, 08 Jul 2025 20:13:31 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AZMbMZe/HXKByWjMkOKPKRIjKNHtvg7Lul/E+TpbFHauocVOUA==
Received: by 2002:a05:6a00:a1f:b0:736:a84e:944a with SMTP id
 d2e1a72fcca58-74ceb5e4948ls3971800b3a.0.-pod-prod-02-us; Tue, 08 Jul 2025
 20:13:29 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWL7mv2QkEfV5dxT9/wZWFVglwQWt8c/yogWLdBeSCDZBhmw/WhAJFsma2V4P1h83f7G3vuJJ0MPYAnRA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6a21:6e91:b0:215:efed:acfc with SMTP id adf61e73a8af0-22cd5a06069mr1405128637.7.1752030809463;
        Tue, 08 Jul 2025 20:13:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1752030809; cv=none;
        d=google.com; s=arc-20240605;
        b=M/LsXWPxO9h2tJVn56qtGj8D/wB/j6ziFreg1+BWaRfqGLH5FODBH+B2l4L+M6rZct
         4okbt0O83DSMx6/sBkQVRv5PvhzcKP/y/V4flXD2uUUDKRrLVYTAtR1c5RXZckRTzf+S
         ahgvBdByXYQNqeYPM+uySlZ9cMdeKG1Sz7ahtozFIIedm4/TF1/dSxVqJqUFArmV5qD6
         lQX8E9VMAoMTjjoPs0vlO44hLnl4usVVqAztixnI78RgZMoMREd23GfR2JQQUZqTFYPE
         84gw8XhcVcVrZdyregL+0tynidg25qrr+zGPkIvRpAOBrZ05g9EADxlByIz28iRk3q0f
         zJew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id;
        bh=LvKnd9nr0lSeTzO0+dPIMhgkgWl7rGqC/ZpMyHdmXLI=;
        fh=aQQzdJRFsORi1PMls268opEIcpN9488iDRYb/9EBMrk=;
        b=dOwdk3BZESd7YRUKPn6BLXPol0HEoNd1SCR5w/QFY/cVeRW3dF86jpsiZXffboOK2z
         0Olg9JKLs2aS6HeWHlRGeIUaZfrydKYvFurGhYKqmwGsndaOUV7XJAsGeFlU62Mc1+xB
         3WQSLDk20ciUPfvtvP4BtuQhIoitwusrDHdvfn9x/So+tRx8AY8+B33u6rwfJflubP+H
         NTSTztUM96e8Hah/uXnRlNW1qczBC7Q4Mxn2xnjwNQc1fgZ8yOlSynwXpsdOCc01zr3E
         Wh5tmTx/O1dNnlu7M4UAt8yNQ0TywWgzgsOF4O6dFSjWv0S2wZCsvqe89Q5bRtjwh7HR
         USwg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of dengjie03@kylinos.cn designates 124.126.103.232 as permitted sender) smtp.mailfrom=dengjie03@kylinos.cn
Received: from mailgw.kylinos.cn (mailgw.kylinos.cn. [124.126.103.232])
        by mx.google.com with ESMTPS id d2e1a72fcca58-74ce4037c05si15969316b3a.187.2025.07.08.20.13.27
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Jul 2025 20:13:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of dengjie03@kylinos.cn designates 124.126.103.232 as permitted sender) client-ip=124.126.103.232;
X-UUID: aad77c725c7211f0b29709d653e92f7d-20250709
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.45,REQID:df9bab53-0e06-44d2-be73-66e28e5212c9,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:6493067,CLOUDID:cf1e7a028788195e57e165485a11aef1,BulkI
	D:nil,BulkQuantity:0,Recheck:0,SF:80|81|82|83|102,TC:nil,Content:0|52,EDM:
	-3,IP:nil,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,
	AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 1,FCT|NGT
X-CID-BAS: 1,FCT|NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: aad77c725c7211f0b29709d653e92f7d-20250709
X-User: dengjie03@kylinos.cn
Received: from [10.42.12.86] [(10.44.16.150)] by mailgw.kylinos.cn
	(envelope-from <dengjie03@kylinos.cn>)
	(Generic MTA with TLSv1.3 TLS_AES_128_GCM_SHA256 128/128)
	with ESMTP id 96761095; Wed, 09 Jul 2025 11:13:21 +0800
Message-ID: <d19ad4df-8c68-4682-9580-76f9ac6a3ed2@kylinos.cn>
Date: Wed, 9 Jul 2025 11:13:17 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH v2] usb: storage: Ignore UAS driver for
 SanDisk Extreme Pro 55AF storage device
To: Greg KH <gregkh@linuxfoundation.org>
Cc: stern@rowland.harvard.edu, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
References: <2025070422-punctured-opal-f51e@gregkh>
 <20250707062507.39531-1-dengjie03@kylinos.cn>
 <2025070725-circle-recite-bc04@gregkh>
 <2c4af4f8-5763-4ebf-8070-c7eabf43fe5e@kylinos.cn>
 <2025070830-edge-deprive-ce6b@gregkh>
From: Jie Deng <dengjie03@kylinos.cn>
In-Reply-To: <2025070830-edge-deprive-ce6b@gregkh>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: dengjie03@kylinos.cn
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of dengjie03@kylinos.cn designates 124.126.103.232 as permitted
 sender) smtp.mailfrom=dengjie03@kylinos.cn
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
X-Spam-Checked-In-Group: usb-storage@lists.one-eyed-alien.net
X-Google-Group-Id: 960895140360
List-Post: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/post>,
 <mailto:usb-storage@lists.one-eyed-alien.net>
List-Help: <https://support.google.com/a/lists.one-eyed-alien.net/bin/topic.py?topic=25838>,
 <mailto:usb-storage+help@lists.one-eyed-alien.net>
List-Archive: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/>
List-Subscribe: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>,
 <mailto:usb-storage+subscribe@lists.one-eyed-alien.net>
List-Unsubscribe: <mailto:googlegroups-manage+960895140360+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>


=E5=9C=A8 2025/7/8 15:32, Greg KH =E5=86=99=E9=81=93:
> On Mon, Jul 07, 2025 at 05:52:31PM +0800, Jie Deng wrote:
>> =E5=9C=A8 2025/7/7 16:47, Greg KH =E5=86=99=E9=81=93:
>>>    =E3=80=80> So ignore UAS driver for this device.
>>>>> Signed-off-by: Jie Deng <dengjie03@kylinos.cn>
>>>> ---
>>>> v2:
>>>> 	* According to the file modification rules (sort by VendorID > =09
>>> first, then by ProductID.) Add the newly added "UNUSUAL_DEV" > 	  in th=
e
>>> correct position.
>>>> v1:
>>>> 	* The newly added "UNUSUAL_DEV" was directly added to the end > =09
>>> without modifying the format according to the file.
>>>>> ---
>>>>   drivers/usb/storage/unusual_uas.h | 7 +++++++
>>>>   1 file changed, 7 insertions(+)
>>>>> diff --git a/drivers/usb/storage/unusual_uas.h
>>> b/drivers/usb/storage/unusual_uas.h
>>>> index 1477e31d7763..6b1a08e2e724 100644
>>>> --- a/drivers/usb/storage/unusual_uas.h
>>>> +++ b/drivers/usb/storage/unusual_uas.h
>>>> @@ -52,6 +52,13 @@ UNUSUAL_DEV(0x059f, 0x1061, 0x0000, 0x9999,
>>>>   		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
>>>>   		US_FL_NO_REPORT_OPCODES | US_FL_NO_SAME),
>>>>   > +/* Reported-by: Jie Deng <dengjie03@kylinos.cn> */
>>>> +UNUSUAL_DEV(0x0781, 0x55af, 0x0000, 0x9999,
>>>> +		"SanDisk",
>>>> +		"Extreme Pro 55AF",
>>>> +		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
>>>> +		US_FL_IGNORE_UAS),
>>>> +
>>>>   /* Reported-by: Zhihong Zhou <zhouzhihong@greatwall.com.cn> */
>>>>   UNUSUAL_DEV(0x0781, 0x55e8, 0x0000, 0x9999,
>>>>   		"SanDisk",
>>>> -- > 2.25.1
>>> Why is there two "v2" patches sent here?  Shouldn't this be "v3"?
>>>
>>> confused,
>>>
>>> greg k-h =E3=80=80 =E3=80=80 =E3=80=80 =E3=80=80 =E3=80=80 =E3=80=80 =
=E3=80=80 =E3=80=80 =E3=80=80 =E3=80=80=E3=80=80
>>>
>> The first sent V2 patch was missing the description of the
>> differences between V1 and V2 patches. The V2 patch sent for
>> the second time only adds a description of the differences
>> from the V1 patch compared to the V2 patch sent for the first time.
>> There is no modification to the code. So it is rashly believed
>> that it does not need to be defined as a V3 patch.
>>
> Think about what you would do if you got sent 2 "v2" patches?  :)
>
> Remember, some of us get hundreds/thousands of emails to handle a day,
> please make it very obvious what to do here.
>
> thanks,
>
> greg k-h
I'm very sorry. I'll pay attention when submitting patches later

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-al=
ien.net/d/msgid/usb-storage/d19ad4df-8c68-4682-9580-76f9ac6a3ed2%40kylinos.=
cn.
