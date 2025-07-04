Return-Path: <usb-storage+bncBDTPNYNWQEIBBM4KT3BQMGQE4OJSLFI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x646.google.com (mail-pl1-x646.google.com [IPv6:2607:f8b0:4864:20::646])
	by mail.lfdr.de (Postfix) with ESMTPS id A5445AF89AC
	for <lists+usb-storage@lfdr.de>; Fri,  4 Jul 2025 09:39:33 +0200 (CEST)
Received: by mail-pl1-x646.google.com with SMTP id d9443c01a7336-235e3f93687sf10516945ad.2
        for <lists+usb-storage@lfdr.de>; Fri, 04 Jul 2025 00:39:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1751614772; cv=pass;
        d=google.com; s=arc-20240605;
        b=Vdf8+l8xvMQEpN5WHY7DDiHx20pD6WVlO3FjwWWVJgqqp8SsCSJVINAHDrgbGBuqGl
         BYl0x3FywEXmRN5Ftq23uRGHkG6sPENuieVVh1uUd4Yh5JAx+MePoeyxOAt/gRVr6JMT
         mo/hqG4s2O2fwQMgV8U/Gtd1OExJOxeo1PH0v6EoRQGX5XDBi5em/x9gcHSWGKNdEt5y
         vFRH+h0Tb67D3X3xTMAoP8SFTlXfECnQ4KaqQqbxhU+bCqCBFt32E4j7I2DsEy7xvX2E
         vlJ7yQH+5rz21JMeHdB9CjU8j4bCDDG9/vVnKadTxrmYjOmVT2KbC/SkZUibUxEV2/9/
         OYmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:from:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=QrUFurRcHozaKQkcCaUkgOwPgSKXC627m+j3NMYhaA0=;
        fh=bTEmtnWSPgUZ9a2OBOqXHXrwcLzUGbjRLrrv8V3ufN4=;
        b=ZPQFUmzbEuSlYLqwJlmoKjVDIVCkfjvJTxhzVI6sgwOfRpYXUP13rMyQKlo1Q0TzhB
         UPIMj8d6dmqpGOdz0o5UAcwLQmIRX0ifBrD9zdORAX6FcfLn8hpzjnOK0RUz7hnyvfAd
         O1ByQNFEARF1dDBav5NAZ5o1IwmNZvZlI0D8TsIh7wcQepYsApnIWqA9cmvx/yX0V65U
         Wq/5lncAcwE4q8w+jL2KzRiKETiBmDUibZIf6upF0so6fffQ4lqx3dvQaXQZAcSfVIV0
         0EhaLTg+Gm1vQVcYPsbtHcJYiV2QZEsCqqyLPGlFY2+2037oDYGc/EZEnmVsnaK8idhl
         0tPg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of dengjie03@kylinos.cn designates 124.126.103.232 as permitted sender) smtp.mailfrom=dengjie03@kylinos.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1751614772; x=1752219572; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:in-reply-to:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=QrUFurRcHozaKQkcCaUkgOwPgSKXC627m+j3NMYhaA0=;
        b=BYer7iuo1YWQ3KXXyZRsYtEXZwKeG1etVlQb2clyg5g3jeE/CQ2dhnBWBta3VTFvLw
         a6eI+uN9PBXrzX66MYnf8TRq0+xE568fuA6ftmq2ZhvdyIkQ94qiAkNe8yYHje+fboCh
         uHFR9qPKFGszZJ70XKl70Xu+5SXSZ0I4PXcbs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751614772; x=1752219572;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QrUFurRcHozaKQkcCaUkgOwPgSKXC627m+j3NMYhaA0=;
        b=TQ9eHsZ8OHen1IqceNeB4nNS8dtCIUYCR/5TDZwn45WFgRxc6bWjCK3w3n4oPvisac
         cfkD7+tXuv0uPRdpDBIIhRO33qscubq6YtGM6QOl0FtpvTxQjEkmd8zrX91tz+pJM9vx
         6Hc4PcCzsT/Ml8zpWjYvBZuJS1S25V1CzE/6kytDAlWeSc1GDt/ZbTc2HDTaSQqLMON8
         FRWZ56FQ1v1KSx8knQCzNtXHrwlFEfuc9mB7UbsTsqfL1rVuWQzoN+I+709Xbr6sb7aV
         +BcMwbJQakyAzz8tJ9Rk7V3jGPkaqgXLotelCpBA2BqhVVKXfYxpKoyTv2wEma+9827U
         WFZQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCViiko8mlBYj6dyKtKv5oeOpGeSqWsbxW8MujYI6AA43nFkqTuJuS9VxxbXtcNIZpy+3CeNZw==@lfdr.de
X-Gm-Message-State: AOJu0YwTxNVRyYmNJOauSHcJcwjyt7/SpI9/cbYOW8YGIZqnwxlFNqep
	1TLbfQyWvn+0bvHSeda2N4zHKjHYn3qq9AjIip1TENIJ853JkVeSI3yk0NLue8N3EG8=
X-Google-Smtp-Source: AGHT+IEp9y+TcNqwtoG3BuY6e8ga/MnmTN6FW6gRR6uPoXetq5yOOkzSg870hzidc8xFcPEpQa9q2A==
X-Received: by 2002:a17:903:1b64:b0:234:f4da:7eef with SMTP id d9443c01a7336-23c85ecb68bmr30273415ad.52.1751614771915;
        Fri, 04 Jul 2025 00:39:31 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AZMbMZfrMbB6+ka9mONTTWprP9QU754jKnqFGjNcNfkzyA655w==
Received: by 2002:a17:902:8b84:b0:237:f1a3:b134 with SMTP id
 d9443c01a7336-23c89ba344als2380435ad.1.-pod-prod-06-us; Fri, 04 Jul 2025
 00:39:30 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCU8tCsMpFppZOavjBQ1y09kyMDA5Uk5gDKlfWP8d94dhBe+fdLpIHtWrdu42RfOOP+FKFST5k/z+1qZ5A==@lists.one-eyed-alien.net
X-Received: by 2002:a17:902:ccce:b0:235:ec11:f0ee with SMTP id d9443c01a7336-23c85dec072mr32882435ad.14.1751614770057;
        Fri, 04 Jul 2025 00:39:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1751614770; cv=none;
        d=google.com; s=arc-20240605;
        b=c0uOJV47fu+kG4bhF5TKUwsQqTP4mA7jpogdln0pteV7VSsRpBZlhO5VYI//gRHn0I
         xbnlgaXm8JjWLAYK/twWoF7ULbJYtilUs6ks8PqKGlJAFno/y5HXhWzFbkVC1T2tZvRN
         J8BzhgllvUykzPOWy+y+Y153pI/Gs5sI8SmizmLK6UTZ6jEJSIfGvOhfgV7GapMhhmuc
         aeahv9zYKHrugCdLzO7d7wT+A++BgyLf/rT3vKFiC1IBrkAZeOfpfFzgdZal8Zqd/Pn3
         o2LWexwaHFy5V7OoTI7EH7QfrsyckZ8okiqGr0wtmjJVcf1z72htKZnIsq0UdpZEZE41
         irUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id;
        bh=GupYhIOcxzcvoQpN4XXb2+/ICpZ3+eAJAF42F1TZmxc=;
        fh=yZS2vT+qHD4wCR3uR4iK1LY7tYZCeV+9M8LIZi9mOWw=;
        b=E/30VD8uDnTPQ2UUAmkFR4CNTOHXDTJ+Jk/3qBpcK4Bt8NCoVrBAKe2AUEBFhq3uS9
         G6Lq9Erk/boECaOalOyja7iDndANI8vtF3RFsL2anVzgynH/CavJwQGKOWXGyeZ7iXEh
         RhH+18dkGd/ZnPC2dAbZwgSsCJs4C5uSi1YzUohp/uOAOk6X1asepSW+Uez3xVoVdCs1
         y2OlW4jftXImdLUXkZDxMYQFNi2SIR248vj+aGgA+7tbzIOXql8qDfUh/gdRu4tN9SO0
         eacCHN1jn/011AxI5r0fuSjEQBcRTnoQMiptfNOJUHDau15IHB401SyxCI8cX2epaoNn
         34zA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of dengjie03@kylinos.cn designates 124.126.103.232 as permitted sender) smtp.mailfrom=dengjie03@kylinos.cn
Received: from mailgw.kylinos.cn (mailgw.kylinos.cn. [124.126.103.232])
        by mx.google.com with ESMTPS id d9443c01a7336-23c8454fa56si20636825ad.454.2025.07.04.00.39.28
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Jul 2025 00:39:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of dengjie03@kylinos.cn designates 124.126.103.232 as permitted sender) client-ip=124.126.103.232;
X-UUID: 0002f30658aa11f0b29709d653e92f7d-20250704
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.45,REQID:0563ff65-4080-4fdd-94b1-5dab8a616b77,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:6493067,CLOUDID:2e1a03c2da9073700864a3e28dd55ca8,BulkI
	D:nil,BulkQuantity:0,Recheck:0,SF:80|81|82|83|102,TC:nil,Content:0|52,EDM:
	-3,IP:nil,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,
	AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 1,FCT|NGT
X-CID-BAS: 1,FCT|NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: 0002f30658aa11f0b29709d653e92f7d-20250704
Received: from node4.com.cn [(10.44.16.170)] by mailgw.kylinos.cn
	(envelope-from <dengjie03@kylinos.cn>)
	(Generic MTA)
	with ESMTP id 1483698095; Fri, 04 Jul 2025 15:39:21 +0800
Received: from node4.com.cn (localhost [127.0.0.1])
	by node4.com.cn (NSMail) with SMTP id 701D716001A04;
	Fri,  4 Jul 2025 15:39:21 +0800 (CST)
X-ns-mid: postfix-68678529-2855072498
Received: from [10.42.12.86] (unknown [10.42.12.86])
	by node4.com.cn (NSMail) with ESMTPA id 6E97216001A01;
	Fri,  4 Jul 2025 07:39:20 +0000 (UTC)
Message-ID: <86b6de1e-9e72-448b-89c6-5b69e6c18c90@kylinos.cn>
Date: Fri, 4 Jul 2025 15:39:19 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH] usb: storage: Ignore UAS driver for SanDisk
 Extreme Pro 55AF storage device
To: Greg KH <gregkh@linuxfoundation.org>
Cc: stern@rowland.harvard.edu, linux-usb@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org
References: <20250703092946.939936-1-dengjie03@kylinos.cn>
 <2025070329-rinse-engaged-e7af@gregkh>
From: Jie Deng <dengjie03@kylinos.cn>
In-Reply-To: <2025070329-rinse-engaged-e7af@gregkh>
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


=E5=9C=A8 2025/7/3 18:01, Greg KH =E5=86=99=E9=81=93:
> On Thu, Jul 03, 2025 at 05:29:46PM +0800, Jie Deng wrote:
>> diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unu=
sual_uas.h
>> index 1477e31d7763..9f093a6af7f9 100644
>> --- a/drivers/usb/storage/unusual_uas.h
>> +++ b/drivers/usb/storage/unusual_uas.h
>> @@ -199,3 +199,10 @@ UNUSUAL_DEV(0x4971, 0x8024, 0x0000, 0x9999,
>>   		"External HDD",
>>   		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
>>   		US_FL_ALWAYS_SYNC),
>> +
>> +/* Reported-by: Jie Deng <dengjie03@kylinos.cn> */
>> +UNUSUAL_DEV(0x0781, 0x55af, 0x0000, 0x9999,
>> +		"SanDisk",
>> +		"Extreme Pro 55AF",
>> +		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
>> +		US_FL_IGNORE_UAS),
>> --=20
>> 2.25.1
>>
>>
> Please read the comment at the top of this file for where to put the
> entry.
>
> thanks,
>
> greg k-h

I'm very sorry for not reading the file to be modified carefully.

The second version of the patch has been modified as required.

Thanks

jie deng

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-al=
ien.net/d/msgid/usb-storage/86b6de1e-9e72-448b-89c6-5b69e6c18c90%40kylinos.=
cn.
