Return-Path: <usb-storage+bncBCFIH5VMRQNBBPWK66XAMGQEHCBQ4GQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oi1-x245.google.com (mail-oi1-x245.google.com [IPv6:2607:f8b0:4864:20::245])
	by mail.lfdr.de (Postfix) with ESMTPS id 07774869284
	for <lists+usb-storage@lfdr.de>; Tue, 27 Feb 2024 14:36:01 +0100 (CET)
Received: by mail-oi1-x245.google.com with SMTP id 5614622812f47-3c13db33d54sf4622657b6e.0
        for <lists+usb-storage@lfdr.de>; Tue, 27 Feb 2024 05:36:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1709040959; cv=pass;
        d=google.com; s=arc-20160816;
        b=bg8QZFElVha/yszh2KXojNVtCZdxkkKYwXQTcgRRONGkavqZCHv3ptOGz8VlIpZiil
         Q/ZsVg9Xt6YExwJdUKiBR+xr2oiWyWfOscYqeq8gXae4DUcBT4EnNn6hMYsIiK1esRNN
         h1wdaXPacW7iH5+B0/Q0mP47wbb3ifb1Pfn7K994knMz2mjHkeoKCJhQKC3PvAzGwzLd
         +SO10R0Ri+V24+KGT+kto5C8AgsmCe5qbPT43Vahd9GkD8fxGXYvGtaaRfVFv3n1mppG
         gbsRhkk5GZ3r1QrFoR6NGnrEPHig2e4tpTpngIVZXUv5f4E+iP5uKTSiyRCls6Jof9G6
         A94g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=Y3dz6z3OGAugNAaHkcK+F8DR1Je2Q/46BLTmF9+mUpY=;
        fh=awKQ9YIC5nsVP1ayaMDN0hsCt0CypM+WNcGoiEkAfH0=;
        b=Liz13NZU15/TRTzA3FLUzzVGyJkXiUyFYr7l4I9uX8S5Wqshm56WUZu1NWXDXBk3WH
         +nB/OwFLVY8bRYaowIb/x0x6nVcBNIXgsDfBM/et1TQ7QKgXm4UCen5+MZHNrB2Tb84Q
         ADWVT6hjJP67kZGnGcgMhS5Ltg67B+U+jYH1YjPn2x8xEVjrzrS1s2QX/Sk26KKxNF4N
         iXXvQhISDbD1wWIMx0LFHemZX9mvR5Cykpi+y1rBU3CZDdaKAAkykt1lp2TeoTG5X0qG
         eQ4Vs8oEiygBEgBqkOlzr8eM/Px/DDV5jqsP86DFIWw+RcCnrxzTRstaqyd+DEkV0FxM
         vFoQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of weitaowang-oc@zhaoxin.com designates 210.0.225.12 as permitted sender) smtp.mailfrom=WeitaoWang-oc@zhaoxin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1709040959; x=1709645759; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=Y3dz6z3OGAugNAaHkcK+F8DR1Je2Q/46BLTmF9+mUpY=;
        b=dvDjkds3pwLeaCDE+3uSBeQxglhj9OZt0Poj12zfwNZfpChvfrjC0oSPbwbA5rjLYU
         Ui88fZv81NtE7im7dwInlTLyYNBYlXynTqC59l20pEUL9hiJ+lhC3kMhDwGF9fg2eHN6
         recBMMKOAVa/b5t35A4Nyg64PzfpZ15rM147U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709040959; x=1709645759;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Y3dz6z3OGAugNAaHkcK+F8DR1Je2Q/46BLTmF9+mUpY=;
        b=cyhFkizNYHTfFmX2g4wrwfbpevmqWSrTVxLbhf9E3AphtoQHaYmOwGNR97200/3q2s
         DSGDuXRwknOONHvYsJRtY9J6jhLuZoaDdZMgIOM7KelT1w8719jwI6zwSgKHq75LoQPx
         txA4qk65yroSrPVeOGar94T6h4RbQbNj6LegFCzlAeUbFxGWwFdiIQuBoSoWwW+frHv8
         v+yhD4Q/0PFM9aSPfyJPwLTeLh5SCrBjut3wAfjKZ/ptBjrcL9oeWtlK0TKMnUgzn9GH
         1+AgHoE6tbmggdpYxQv7PwpwO4JddfKbGLOJdvvqmIyLsjhaEJufSagMwF+4a/jEqhcc
         /XWw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXrwlPBc1EKvLr4gMYZDytquZg5Zy/meJeCpu8WVqMOPuCsNodmLqWll9Uyk3TrUKv72URqqpCYgwI7gqMm+Oji27lMcKMuSioX
X-Gm-Message-State: AOJu0YwTmy7oYPio1xPu/ULKaFOAmQpI+9GG71CdFv2aagc5vtuzIWyi
	wNcqBPwYKan0W18+8Fb0EPuRQxU58eCkGCL1WFsq3SBUy6JTInay4PRCId0D1y4=
X-Google-Smtp-Source: AGHT+IEOfdHfQ+IB8EEL+tROGTj94QWTrKb1fHKF/78+hcue4P0EkXf4hvUPL+/EXdU+N7npnVaDHQ==
X-Received: by 2002:a05:6808:202a:b0:3c1:b34a:2e91 with SMTP id q42-20020a056808202a00b003c1b34a2e91mr711005oiw.44.1709040959038;
        Tue, 27 Feb 2024 05:35:59 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6a00:4c97:b0:6e5:4c77:a401 with SMTP id
 eb23-20020a056a004c9700b006e54c77a401ls251428pfb.2.-pod-prod-09-us; Tue, 27
 Feb 2024 05:35:58 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUqaBcTzo5WA/x3SCnNZ+LOo1oJCiZMmUbShr3J6cOHc3eoWc01rSdH3F2D02H/zOCXPCuQrFIYjd7p22zPKeycRjEZDehlrWkeJn+SmMqG+xR+2GA=
X-Received: by 2002:a17:902:c195:b0:1dc:43d:962 with SMTP id d21-20020a170902c19500b001dc043d0962mr8907259pld.42.1709040957748;
        Tue, 27 Feb 2024 05:35:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1709040957; cv=none;
        d=google.com; s=arc-20160816;
        b=sSMaIswI8oI4plawR63eWq8guds/O1lXUsjNIBpQLycdSvf5zlIbBEWF18Ll+3IodR
         ILGVN5kdVCOERxU/culqIoaVr5uz9DSUWDXyjOShfTr9Q5eJ6fgeZmdoKmuL4QfLE1FN
         Wy8Zhmjuy5ynC67PFwCeOM8hFhR2j5ojjjJozrCdUm/Lx1IrWc8hHSQQDPPewCKGv5Mt
         RNukmkU9k7w0CITAHE7upkneshs/1zWC1CVQdndwh2blfOkqHMRNIgg4R55QWlX8tHgb
         lORpuyOXpufpFjldVVWYKLOfFXiitVhLtsNsC/6JttxyBsd+ZCdvwHrwp2WlvV+Bg9i4
         O4ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id;
        bh=HT2Qk6h5lwyLdRozFVMF4ZGHZVt8uZW7c/dYb/1kppU=;
        fh=1iwdyJtWrfp91ALCxlM2896XZoMs3zxKzwK7hFAsXhg=;
        b=FmB5fg+0PMFk+vYwEiqMkYH16EQIuos4UY22VltTNauwsJTeLo6Szhor3GVTpEAfHk
         qbiIJG+JNlcx2wIaAnt7JySw4eed2SMMm+o+6gd+QnwqUSPhxw5sak7PTEFafNZjO6OY
         76ycMxZCRK71fGBCPfV9N8CcG3/9aWVjgVDE5sbOGmJjYkevTgpxDTQNZ6BoBpEajGwN
         rMpHz8bPgyGjGeJnipfOx/k6M9AQ0IGa4I64P1aMIkl5ki3FCI7imfmby4qbBST28UC5
         ABD1RH9Sdjfu+YhfA9ZO9eFyEKI+eVW1PiostR0GrDqNDRjbR0MSVtSySTuDF56pThbb
         TKrQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of weitaowang-oc@zhaoxin.com designates 210.0.225.12 as permitted sender) smtp.mailfrom=WeitaoWang-oc@zhaoxin.com
Received: from mx1.zhaoxin.com (MX1.ZHAOXIN.COM. [210.0.225.12])
        by mx.google.com with ESMTPS id s7-20020a17090aba0700b0029a6fad127fsi7374039pjr.4.2024.02.27.05.35.57
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Feb 2024 05:35:57 -0800 (PST)
Received-SPF: pass (google.com: domain of weitaowang-oc@zhaoxin.com designates 210.0.225.12 as permitted sender) client-ip=210.0.225.12;
X-ASG-Debug-ID: 1709040952-086e2316ed00600001-FTGftY
Received: from ZXSHMBX2.zhaoxin.com (ZXSHMBX2.zhaoxin.com [10.28.252.164]) by mx1.zhaoxin.com with ESMTP id DpE5ORzyURXSjUcG (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO); Tue, 27 Feb 2024 21:35:52 +0800 (CST)
X-Barracuda-Envelope-From: WeitaoWang-oc@zhaoxin.com
X-Barracuda-RBL-Trusted-Forwarder: 10.28.252.164
Received: from zxbjmbx1.zhaoxin.com (10.29.252.163) by ZXSHMBX2.zhaoxin.com
 (10.28.252.164) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Tue, 27 Feb
 2024 21:35:52 +0800
Received: from [10.29.8.21] (10.29.8.21) by zxbjmbx1.zhaoxin.com
 (10.29.252.163) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Tue, 27 Feb
 2024 21:35:51 +0800
X-Barracuda-RBL-Trusted-Forwarder: 10.28.252.164
Message-ID: <594c4e2f-74c4-42dd-9b7c-c3468a55c7ee@zhaoxin.com>
X-Barracuda-RBL-Trusted-Forwarder: 10.29.8.21
Date: Wed, 28 Feb 2024 05:35:50 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: [usb-storage] Re: [PATCH] USB:UAS:return ENODEV when submit urbs fail
 with device not attached.
Content-Language: en-US
X-ASG-Orig-Subj: Re: [PATCH] USB:UAS:return ENODEV when submit urbs fail with device
 not attached.
To: Oliver Neukum <oneukum@suse.com>, <stern@rowland.harvard.edu>,
	<gregkh@linuxfoundation.org>, <linux-usb@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-scsi@vger.kernel.org>,
	<usb-storage@lists.one-eyed-alien.net>
CC: <WeitaoWang@zhaoxin.com>
References: <20240222165441.6148-1-WeitaoWang-oc@zhaoxin.com>
 <3ff16f34-07a9-4b7e-b51d-b7220f08d88d@suse.com>
 <41daf1a9-590a-e220-84a3-648eb895272b@zhaoxin.com>
 <8f4fe820-2385-40e7-a3c6-51102e57acad@suse.com>
From: "WeitaoWang-oc@zhaoxin.com" <WeitaoWang-oc@zhaoxin.com>
In-Reply-To: <8f4fe820-2385-40e7-a3c6-51102e57acad@suse.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Originating-IP: [10.29.8.21]
X-ClientProxiedBy: ZXSHCAS2.zhaoxin.com (10.28.252.162) To
 zxbjmbx1.zhaoxin.com (10.29.252.163)
X-Barracuda-Connect: ZXSHMBX2.zhaoxin.com[10.28.252.164]
X-Barracuda-Start-Time: 1709040952
X-Barracuda-Encrypted: ECDHE-RSA-AES128-GCM-SHA256
X-Barracuda-URL: https://10.28.252.35:4443/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at zhaoxin.com
X-Barracuda-Scan-Msg-Size: 819
X-Barracuda-BRTS-Status: 0
X-Barracuda-Bayes: INNOCENT GLOBAL 0.0000 1.0000 -2.0210
X-Barracuda-Spam-Score: 1.09
X-Barracuda-Spam-Status: No, SCORE=1.09 using global scores of TAG_LEVEL=1000.0 QUARANTINE_LEVEL=1000.0 KILL_LEVEL=9.0 tests=DATE_IN_FUTURE_06_12, DATE_IN_FUTURE_06_12_2
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.121398
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------------------------
	0.01 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
	3.10 DATE_IN_FUTURE_06_12_2 DATE_IN_FUTURE_06_12_2
X-Original-Sender: weitaowang-oc@zhaoxin.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of weitaowang-oc@zhaoxin.com designates 210.0.225.12 as permitted
 sender) smtp.mailfrom=WeitaoWang-oc@zhaoxin.com
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

On 2024/2/27 17:05, Oliver Neukum wrote:
> 

> On 22.02.24 21:06, WeitaoWang-oc@zhaoxin.com wrote:
> 
>> Maybe, my description was not accurate enough, here not add new return
>> value to scsi layer,it just add a case to tell device is gone in the uas
>> driver internal and the ENODEV error code not return to scsi layer.
>> Here just notify SCSI layer of device loss through flag DID_NO_CONNECT.
>> This is also hope to fix this issue in the uas driver internal.
> 
> Hi,
> 
> sorry for the delay. OK, I see what you are aiming at. Could you redo
> the patch with a better description, like:
> 
> We need to translate -ENODEV to DID_NOT_CONNECT for the SCSI layer.
> 
Okay, Thanks for your suggestion. And I'll improve this patch
description in the next version.

Thanks & Best regards,
Weitao

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/594c4e2f-74c4-42dd-9b7c-c3468a55c7ee%40zhaoxin.com.
