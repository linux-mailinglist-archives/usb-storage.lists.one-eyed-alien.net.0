Return-Path: <usb-storage+bncBDTPNYNWQEIBB5HGWLBQMGQEFVE5CRY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x646.google.com (mail-pl1-x646.google.com [IPv6:2607:f8b0:4864:20::646])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ABBEAFC24E
	for <lists+usb-storage@lfdr.de>; Tue,  8 Jul 2025 07:58:15 +0200 (CEST)
Received: by mail-pl1-x646.google.com with SMTP id d9443c01a7336-234f1acc707sf27605175ad.3
        for <lists+usb-storage@lfdr.de>; Mon, 07 Jul 2025 22:58:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1751954293; cv=pass;
        d=google.com; s=arc-20240605;
        b=PRBqUd/IJPrV5o9zMiRVk4BWn6NENRM6b2T1QubduATwZL4AngEwBj2rF/JzWRNAzy
         2lSbSt2AXBqcXYM607FFxEFSLa7rNee3z9HoPpQSiKSEA2giPE9EAxsP77NctgN8sk6Z
         a4ZGJKKR4pNZzRceYAYcYNESVNb8+UDMQAEojnHX/RwY43gt3ba9KNTIAaXUiJxMSAZ3
         IqYp6hCForJ+f1IgBV81p56d4DlHEPuUCUH29CStHC01QFe0D8XpHyMWJ8972OTiNKOs
         5UygtVlfCBiBjez4iDRl9t7yfWu1OE6DqaMviz1BXfBaNpAZscGNeXFcwk6axe/iDFPK
         kVdA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:from:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=bh61ITaVu/dnkWFF1OQz3kGaAdCBOVAxv15mMo0GbUg=;
        fh=s1Rw22fTOYNkg7iHDRIeyW/QA84jCFsCC0syLHqkDps=;
        b=hGiwv91K40POImeaqOFj2Y1sovkyVzVvqOdmDbhveujjE2QBa0O/I8osjuK1eicy9k
         LJ/wZR2lO4BF0f6d78Iq2UoH2/BxtQOY1Znziy+Wnt4DHxTf68E+2qvjOCV87yksRbu9
         xC6wgfvDmDt39ZNZVGzKyW8vDcVBFqUPhKy1IVEbmRooKOB1JktKlpkk8vrUll34tHi9
         vouy+slNtYeC19LlxEtT6QHi/qowtG9427m7/pI2n0ezNKkkIgJ3l9unOSt+zalujG7W
         MN6gGMksV2f8JHM6vsOswUVNGT/+sxCYpcseZ1T7dn6SkyZ2NOwFGRqnOYVMD/LnUz63
         6sGg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of dengjie03@kylinos.cn designates 124.126.103.232 as permitted sender) smtp.mailfrom=dengjie03@kylinos.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1751954293; x=1752559093; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:in-reply-to:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=bh61ITaVu/dnkWFF1OQz3kGaAdCBOVAxv15mMo0GbUg=;
        b=X++ta+83EQRqBR7g3eCtY1RIKmC1g83T8TxggjkBzzlSFbmI3yTpvOBFkiBZs4dcEZ
         WlUxS+wBYQVHunocyZwteVUYMFzQRaYXbC8hG4nO2ya0anqLBRYo6uKsJhXMlWYTWhGC
         kHOhLgq8FYCYYZJ1ivX7StkLV5YOMnc6Ugr0w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751954293; x=1752559093;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bh61ITaVu/dnkWFF1OQz3kGaAdCBOVAxv15mMo0GbUg=;
        b=eyjA9ViekRGR6v1omDFJ3E9GPyyq6NicGM9d8oYP8zTczgiA28YVrHF/hM0SdJ8KTp
         oeIJUr9hNrh1ukyibrLzJeIBHx/RyGx3aKR+ylhSTYzuwtNzT1xZPbqMsjrYWuiks0cO
         /TZcVxJH04gxheYOq9wT19FD9f23t7Su6D/+iU4/2vxA2NreJO7y0KPAaVzbx6e3Jjt7
         Tjf3wWlwG92+LVweCIcR1RkjEBeF6Q+wnGx4y7RgJBU3cgOuw/lLCb1C/MTR5sfA8KQO
         Cg1MoEkM3OCm5u4fidEAeNfCLxEey+U1uLcSlGs8O1PR2kH9b5gZ506KYshc3MJUs3Ut
         opYg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWHymjyMpY8SPmG4xDXypWKHcQT595iWhKeidAlsOqVyT7cr9gbkjhOp8aGQeuB5hDYkV2vcw==@lfdr.de
X-Gm-Message-State: AOJu0YylTBXKbaTsc56lfbEg2lNaktRNcmWGz17Lcmy6mSAfsh7fU9q/
	JsGYGcXKce4R1eevZUAwldDIEz2cV3mVPSVafl3EoE/3H0GWW0V8DLyNIdVKd07PIxc=
X-Google-Smtp-Source: AGHT+IFFZuyjj5wDTYC9sGIv/aeM1/+2F3iWNBkcHv1sZrD3GQpihL/Yp0iWNkPQ215ZYMWs9jXKNw==
X-Received: by 2002:a17:903:2286:b0:234:b41e:378f with SMTP id d9443c01a7336-23c874727e2mr200561735ad.15.1751954293311;
        Mon, 07 Jul 2025 22:58:13 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AZMbMZck2GhVDlb0JPwymO6GcE9nmAkgB+aDrmJ65sOOVxhyGw==
Received: by 2002:a17:902:e88b:b0:234:aa6d:511a with SMTP id
 d9443c01a7336-23c89ac2454ls31738625ad.0.-pod-prod-07-us; Mon, 07 Jul 2025
 22:58:12 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWsyEMK0C629daytOMSXDItU+tlWUJpUpmTHPrrex7QANnrqYlnUe9TyGk91TUBq3eP9/PAhsMH5H25Rw==@lists.one-eyed-alien.net
X-Received: by 2002:a17:903:2c5:b0:235:efbb:9539 with SMTP id d9443c01a7336-23c87475fa5mr185897935ad.17.1751954291586;
        Mon, 07 Jul 2025 22:58:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1751954291; cv=none;
        d=google.com; s=arc-20240605;
        b=cLs/pLPH1Oj70kJ+ByXT3FsGXdLg/36sp9KpLTaDN4AoOYEPKoJj6G4DdZh8ffDtMU
         RJJTT44r044S1FUOZrCvAZlYE0oFPtNk/S+iY1xglQe+G+Umzuq7x7Em5RDGleso39xJ
         yuYVmO83tNVWFTd3aT7LoQn9mow6+a9DpNZmWkdnwaOR/Av0jN6pMADIvYBBcoGIjOHa
         dBDEEtifKSWfd0g4QP+l+m7A8EiLuKRtajejc0+uKHbe45+DMMkGjvWelmpkN4M63Y0M
         7P9/kHIJmqsfYD2Z7WqS7+hI8qo62ZkMFEfIF8oEa7Qm/Ff+ECOeXbW/NiycLEJ3yq3C
         wo+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id;
        bh=+osi/I7QRGNisPRmfVnUmSKU9GMlnHKp/6BIvH0vw+U=;
        fh=aQQzdJRFsORi1PMls268opEIcpN9488iDRYb/9EBMrk=;
        b=e4gPTJcXFzONu6gaLEmHFZDFxYBZG599Xs12eGNJJfIiy3AQbWAv1yMJfZn1XIb0wo
         99LqIGjhHlrZfG0VPOXaX14fWdDIpOQ7eXTLLS1sezFQgb3/ij8i5m/zPsbaUKQ5LJrk
         uV86axpu+O6ng8xgyW8jTybGkntziCLySVuMuepHKUCQ4QVGZNTxyL+Pn39BWUH5PsPs
         rXFWK+canS5DayZg3MvFN5xzKe/EDrsIYpoYsq/rMT2ILxfdikNiAh/Ha8LXvmjhwG39
         ZHWxltAJuQAUsii612MhcJETuPOL0KYZcmu7djfGsO6HF+nDu6goZVfDLye6+QBrfSYc
         55ig==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of dengjie03@kylinos.cn designates 124.126.103.232 as permitted sender) smtp.mailfrom=dengjie03@kylinos.cn
Received: from mailgw.kylinos.cn (mailgw.kylinos.cn. [124.126.103.232])
        by mx.google.com with ESMTPS id 41be03b00d2f7-b38ee4035c4si12187092a12.160.2025.07.07.22.58.09
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Jul 2025 22:58:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of dengjie03@kylinos.cn designates 124.126.103.232 as permitted sender) client-ip=124.126.103.232;
X-UUID: 817e14d85bc011f0b29709d653e92f7d-20250708
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.45,REQID:68b2d49e-6976-40fd-a1d9-1624069277ef,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:6493067,CLOUDID:8bca6426d360aab6cb6fbe7b44bd2824,BulkI
	D:nil,BulkQuantity:0,Recheck:0,SF:80|81|82|83|102,TC:nil,Content:0|52,EDM:
	-3,IP:nil,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,
	AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 1,FCT|NGT
X-CID-BAS: 1,FCT|NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: 817e14d85bc011f0b29709d653e92f7d-20250708
X-User: dengjie03@kylinos.cn
Received: from [10.42.12.86] [(10.44.16.150)] by mailgw.kylinos.cn
	(envelope-from <dengjie03@kylinos.cn>)
	(Generic MTA with TLSv1.3 TLS_AES_128_GCM_SHA256 128/128)
	with ESMTP id 1020781394; Tue, 08 Jul 2025 13:58:01 +0800
Message-ID: <4bac2d53-0e5b-437e-92bc-12921a8efd8d@kylinos.cn>
Date: Tue, 8 Jul 2025 13:55:47 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH v2] usb: storage: Ignore UAS driver for
 SanDisk Extreme Pro 55AF storage device
To: Greg KH <gregkh@linuxfoundation.org>
Cc: stern@rowland.harvard.edu, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
References: <2025070422-punctured-opal-f51e@gregkh>
 <20250707062507.39531-1-dengjie03@kylinos.cn>
 <2025070702-unsigned-runny-62c6@gregkh>
From: Jie Deng <dengjie03@kylinos.cn>
In-Reply-To: <2025070702-unsigned-runny-62c6@gregkh>
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


=E5=9C=A8 2025/7/7 16:49, Greg KH =E5=86=99=E9=81=93:
> On Mon, Jul 07, 2025 at 02:25:07PM +0800, Jie Deng wrote:
>> The SanDisk Extreme Pro 55AF storage device(0781:55af) has poor compatib=
ility with UAS drivers.
>> The logs:
>> [    1.359859][ 0] [  T163] usb 2-1: new SuperSpeed Gen 1 USB device num=
ber 2 using xhci_hcd
> Nit, the [] stuff should all be removed, it's not relevant, right?
>
>> [    1.385708][ 0] [  T163] usb 2-1: New USB device found, idVendor=3D07=
81, idProduct=3D55af, bcdDevice=3D10.85
>> [    1.385709][ 0] [  T163] usb 2-1: New USB device strings: Mfr=3D2, Pr=
oduct=3D3, SerialNumber=3D1
>> [    1.385710][ 0] [  T163] usb 2-1: Product: Extreme Pro 55AF
>> [    1.385711][ 0] [  T163] usb 2-1: Manufacturer: SanDisk
>> [    1.385711][ 0] [  T163] usb 2-1: SerialNumber: 323234323935343030343=
636
>> [    1.927603][ 0] [  T306] usbcore: registered new interface driver usb=
-storage
>> [    1.940511][ 0] [  T306] scsi host3: uas
>> [    1.940584][ 0] [  T306] usbcore: registered new interface driver uas
>> [    1.940843][ 0] [  T188] scsi 3:0:0:0: Direct-Access     SanDisk  Ext=
reme Pro 55AF 1085 PQ: 0 ANSI: 6
>> [    1.941363][ 0] [  T188] scsi 3:0:0:1: Enclosure         SanDisk  SES=
 Device       1085 PQ: 0 ANSI: 6
>> [    1.941697][ 0] [  T188] sd 3:0:0:0: Attached scsi generic sg0 type 0
>> [    1.941783][ 0] [  T188] scsi 3:0:0:1: Attached scsi generic sg1 type=
 13
>> [    1.942296][ 0] [  T189] sd 3:0:0:0: [sda] 1953459617 512-byte logica=
l blocks: (1.00 TB/931 GiB)
>> [    1.942373][ 0] [  T189] sd 3:0:0:0: [sda] Write Protect is off
>> [    1.942374][ 0] [  T189] sd 3:0:0:0: [sda] Mode Sense: 37 00 10 00
>> [    1.942534][ 0] [  T189] sd 3:0:0:0: [sda] Write cache: enabled, read=
 cache: enabled, supports DPO and FUA
>> [    1.943586][ 0] [  T189] sd 3:0:0:0: [sda] Optimal transfer size 2097=
152 bytes
>> [    1.976797][ 0] [  T189]  sda: sda1
>> [    1.977898][ 0] [  T189] sd 3:0:0:0: [sda] Attached SCSI disk
>> [    1.980406][ 0] [  T267] scsi 3:0:0:1: Failed to get diagnostic page =
0x1
>> [    1.980408][ 0] [  T267] scsi 3:0:0:1: Failed to bind enclosure -19
>> [    1.980414][ 0] [  T267] ses 3:0:0:1: Attached Enclosure device
>> [    1.981068][ 0] [    C0] sd 3:0:0:0: [sda] tag#10 data cmplt err -75 =
uas-tag 1 inflight: CMD
>> [    1.981071][ 0] [    C0] sd 3:0:0:0: [sda] tag#10 CDB: Read(10) 28 00=
 74 6f 6d 00 00 00 08 00
>> [   33.819186][ 0] [  T188] sd 3:0:0:0: [sda] tag#10 uas_eh_abort_handle=
r 0 uas-tag 1 inflight: CMD
>> [   33.819188][ 0] [  T188] sd 3:0:0:0: [sda] tag#10 CDB: Read(10) 28 00=
 74 6f 6d 00 00 00 08 00
>> [   33.843186][ 0] [  T309] scsi host3: uas_eh_device_reset_handler star=
t
> So new devices are being made that can not handle UAS?  Are you sure
> there's not some other quirk that could be used here instead?  How does
> this device work on other operating systems with the UAS drivers there?
>
> thanks,
>
> greg k-h
Thank you for your reply.

1. The information within [] is redundant and should be removed
2. Regarding your question, before submitting the patch,
I conducted the following tests:
1) linux + x86: The SanDisk Extreme Pro 55AF device can be recognized
normally when using the uas driver. USB controller model (VendorID:
1D94, DeviceID: 145F,Chengdu Haiguang IC Design Co., Ltd.USB 3.0 Host=20
controller)
2) linux + arm64: The SanDisk Extreme Pro 55AF device will report an=20
error when
using the uas driver and the driver cannot be loaded. USB Controller model
(Vendor ID: 1912, Device ID: 0014,uPD720201 USB 3.0 Host Controller).
3) linux + arm64: Add the parameter "USB-storage.quirks =3D0781:55af:u" in=
=20
grub.
The SanDisk Extreme Pro 55AF device runs the usb storage driver without=20
any error
and can be recognized normally.

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-al=
ien.net/d/msgid/usb-storage/4bac2d53-0e5b-437e-92bc-12921a8efd8d%40kylinos.=
cn.
