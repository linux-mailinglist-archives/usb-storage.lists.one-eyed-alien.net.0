Return-Path: <usb-storage+bncBCY2ZJEUWQHBB37GXKWQMGQE65X3FRI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-lf1-x146.google.com (mail-lf1-x146.google.com [IPv6:2a00:1450:4864:20::146])
	by mail.lfdr.de (Postfix) with ESMTPS id 820EC836FD9
	for <lists+usb-storage@lfdr.de>; Mon, 22 Jan 2024 19:26:56 +0100 (CET)
Received: by mail-lf1-x146.google.com with SMTP id 2adb3069b0e04-50e7b7c85easf2386847e87.0
        for <lists+usb-storage@lfdr.de>; Mon, 22 Jan 2024 10:26:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1705948016; cv=pass;
        d=google.com; s=arc-20160816;
        b=e+lGv/p5SgK0QCCyCa5IhQLdMHVL1tj180d19/ZfxBxqT1rgWzm/zp1mPB7r8c9FKS
         4ir3S36U2Hky6zB4Q4kk/ANksEoKleWSWFjHy5g+0EOod8bNriF6xpv0onFQXsLMSWPK
         QsSY7NbOi+sx+AfwqBxyr2JNssKWg5PMKV5A5VDqS7sCMIFykN9cz//ncLmUY1f7Zb95
         u2iHyTxNJpnfLd7yXr9wqVnMdoxlPGdTXIPB4L37GmKV6Avp5j60U/t92K6ytudnqIkq
         rMZ5vyEj19zjfaAyAztfNUquUnvibMg9eLB3dsjwuxeqPawyT9q+VuwaA42k0eccMLCw
         /j1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:organization:references:cc
         :to:from:subject:sender:dkim-signature;
        bh=4UUWJ2kRckwr1i3KNqCvzpeFJo5G5puuP9wLy6SlK4c=;
        fh=AvFbBghcZWBcqcLmuH37pN99FS0I9kT4f2UtG2NCLGI=;
        b=AkfP12fcvbRjb0h0bdGNJy6NyqYhQU+U0spUkKz9K5mNgNWzK1PKuWqoOIcbgjFhnO
         ron2wRq3SyWMnvSgn2HqZkvXc6rp4lFkpE6IJEm/jf/+WwshnBz3Y3WIZf6wC3Rm+Kn6
         ccFYFKUg0+cnZe9Wvd4PC5sOpmveTUVcqRroYsYdZVNI1VqtIUlFY1DG4Yv6rgXdMeuS
         efsuReUzkw01xVef7POji3kvQrn2d03u6hXYTnvnJWsIhIlYwQ+t/1Ejn+i+EYVX91sl
         jANnLnJusf0WL7+VUlecveD/MSCcWbsaQ0p3BFw2+MsNK/53u2kgtWHAYzTtDgVgNKuK
         YBSg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of s.shtylyov@omp.ru designates 90.154.21.10 as permitted sender) smtp.mailfrom=s.shtylyov@omp.ru
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1705948016; x=1706552816; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:references:cc:to:from
         :subject:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=4UUWJ2kRckwr1i3KNqCvzpeFJo5G5puuP9wLy6SlK4c=;
        b=GJX4bZ0rI9va5iyttIHNM1jhLMuSqp4xwOC91dvGi6Vk5WgxixPcKD1sWsXtT/Gl1P
         ZHfpADZtnA8kC5P2VQPNb45azt+wSWI8bROgDirMcrh4qPJFFxyam/DddaprZCFujpMR
         GNEIqRkmkSs1Z3h9qmR9tQc1EVsXeL2QKWbN0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705948016; x=1706552816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:organization:references:cc:to:from:subject:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4UUWJ2kRckwr1i3KNqCvzpeFJo5G5puuP9wLy6SlK4c=;
        b=ijkuHoKrujX/+TK8x5rBie/L9ARh0KfwweR+QoTkEArX3Q8IOz+vwzKL1aiJ2G7dr1
         3GLcII7c3G9fEpbbFZUalOUeXdU3NfH3hpnRD6sHQT0M6qc/TWWouBcGO1UlBqqRdXIq
         E9nHwPouqaQT1ylr9Ck6FTjZoeXGFcEoQ6x2GaBR3SbqNUwyf4OeDGo4zzlqr6GoVoQR
         2KDqVkISK22G5R0u14fvz9YcK/yzV6RC1WT4tqkZrXUrhYwHpwUGO6T4cr5Amb2IpeSd
         lPB7VNkuGrdzcjFlK+VelGKPi2DlFEnSA7Vrh5hg9KzrPT8Otmu35BAOUr/3yYQjssto
         FsBA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0YximlKvaOyIOxLIxzW+kFgfjaOH5lkehopQSqApkFXNPN9EHYun
	F9IDvbvqeQEW9V/czvkixdbPZBF/tEDkc4u+wrwJUo5zCq6T9KrvK86pYzcEMu0=
X-Google-Smtp-Source: AGHT+IGahgnE+yFTuRQobZmmgf+kiz/qLEwRXN5NTH3ImrQbVsMi14SSyaveXvKmqtg2GamntqFyVA==
X-Received: by 2002:a2e:a497:0:b0:2cd:35d6:d72b with SMTP id h23-20020a2ea497000000b002cd35d6d72bmr1738837lji.69.1705948015738;
        Mon, 22 Jan 2024 10:26:55 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:651c:1a22:b0:2cd:8234:c3bd with SMTP id
 by34-20020a05651c1a2200b002cd8234c3bdls238153ljb.0.-pod-prod-01-eu; Mon, 22
 Jan 2024 10:26:54 -0800 (PST)
X-Received: by 2002:a05:651c:1ce:b0:2cf:3ce:f13b with SMTP id d14-20020a05651c01ce00b002cf03cef13bmr502930ljn.84.1705948013889;
        Mon, 22 Jan 2024 10:26:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1705948013; cv=none;
        d=google.com; s=arc-20160816;
        b=dDteRza+X2eW5XhKdph72C9XmwyYuxzFfmo/lfzytIkosD/timdYq34mlHx+zcy+bm
         hd7wpVIfGBY2hJJ5BUufdXsfLMr0l92ldfVWHI+EFWlJhl9YCCX0RkjM5M33gMSWAieZ
         Nu7ClQQ5rKp0D/5AjMHOVqwBCwrpYcIvh/sn700Z/PM6gkLYmsC7t5K4mxwLpbXLG5Dh
         343bFGFEA4GoWZgpO/Zx6XoB9UTlPNk9hvvmdBv6n1VU5Lcp7MaRxnfv3knuCICCpmhC
         +XwuWjH0fal+mJ+Lu7vpAkqXsJz5PcZFA1m040RVq4HFwgQiNm0ncuU+piLXMk/4BcQg
         q7/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:references:cc:to:from
         :subject;
        bh=AKQIZ2rHnybO20Hz27dwosYoaE4xroADd5trAJtMHys=;
        fh=AvFbBghcZWBcqcLmuH37pN99FS0I9kT4f2UtG2NCLGI=;
        b=sxH+asggm1nEijHxU0h/R391pAhVhtEmUQPCa4EOuT2CCIqhhhHT5VSXRYiYM7UFI2
         1Y/TiYTUTIwmqN1kBspfLBqd2P09xSFhfF3K8hWKgsYuq+xuQAaiDT9M+YLi9Gaisj5a
         iTnPIlvB47f85aQfYST1jaa1qCxMp3U0Oh8XVPHYNXr9w1ZcV8j3+LD0BakIGmIeEB6I
         1t9tPjNQILeHJyS2BzFNqoTudyYN5xHIqdEXpknlbQ0KRK/ag+oOO5zesMHMAh4sTLGm
         /54IYx9VkkK88D0VsEkL6u5t9ivkZ5oeFUE6hE0H76T3IenDmvdJmc29YomG8OGXXNvk
         ck3g==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of s.shtylyov@omp.ru designates 90.154.21.10 as permitted sender) smtp.mailfrom=s.shtylyov@omp.ru
Received: from mx01.omp.ru (mx01.omp.ru. [90.154.21.10])
        by mx.google.com with ESMTPS id z24-20020a2e9658000000b002cdf540e3b9si2983317ljh.349.2024.01.22.10.26.53
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Jan 2024 10:26:53 -0800 (PST)
Received-SPF: pass (google.com: domain of s.shtylyov@omp.ru designates 90.154.21.10 as permitted sender) client-ip=90.154.21.10;
Received: from [192.168.1.105] (31.173.84.58) by msexch01.omp.ru (10.188.4.12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.2.1258.12; Mon, 22 Jan
 2024 21:26:52 +0300
Subject: [usb-storage] Re: [PATCH] usb: storage: freecom: drop useless
 assignment in init_freecom()
From: Sergey Shtylyov <s.shtylyov@omp.ru>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
CC: Alan Stern <stern@rowland.harvard.edu>, <linux-usb@vger.kernel.org>,
	<usb-storage@lists.one-eyed-alien.net>
References: <4d3fb70f-bf2f-96cc-a8fb-1ef658a24920@omp.ru>
 <2023120412-observing-affluent-9432@gregkh>
 <b96dc0cc-86da-425b-86b8-39566f594d83@omp.ru>
Organization: Open Mobile Platform
Message-ID: <cc7434e0-804c-82d6-3f57-dcceef8b461e@omp.ru>
Date: Mon, 22 Jan 2024 21:26:51 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <b96dc0cc-86da-425b-86b8-39566f594d83@omp.ru>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Originating-IP: [31.173.84.58]
X-ClientProxiedBy: msexch01.omp.ru (10.188.4.12) To msexch01.omp.ru
 (10.188.4.12)
X-KSE-ServerInfo: msexch01.omp.ru, 9
X-KSE-AntiSpam-Interceptor-Info: scan successful
X-KSE-AntiSpam-Version: 6.1.0, Database issued on: 01/22/2024 18:08:31
X-KSE-AntiSpam-Status: KAS_STATUS_NOT_DETECTED
X-KSE-AntiSpam-Method: none
X-KSE-AntiSpam-Rate: 0
X-KSE-AntiSpam-Info: Lua profiles 182837 [Jan 22 2024]
X-KSE-AntiSpam-Info: Version: 6.1.0.3
X-KSE-AntiSpam-Info: Envelope from: s.shtylyov@omp.ru
X-KSE-AntiSpam-Info: LuaCore: 7 0.3.7 6d6bf5bd8eea7373134f756a2fd73e9456bb7d1a
X-KSE-AntiSpam-Info: {rep_avail}
X-KSE-AntiSpam-Info: {Tracking_arrow_text}
X-KSE-AntiSpam-Info: {Tracking_from_domain_doesnt_match_to}
X-KSE-AntiSpam-Info: 127.0.0.199:7.1.2;omp.ru:7.1.1;d41d8cd98f00b204e9800998ecf8427e.com:7.1.1
X-KSE-AntiSpam-Info: ApMailHostAddress: 31.173.84.58
X-KSE-AntiSpam-Info: Rate: 0
X-KSE-AntiSpam-Info: Status: not_detected
X-KSE-AntiSpam-Info: Method: none
X-KSE-AntiSpam-Info: Auth:dmarc=temperror header.from=omp.ru;spf=temperror
 smtp.mailfrom=omp.ru;dkim=none
X-KSE-Antiphishing-Info: Clean
X-KSE-Antiphishing-ScanningType: Heuristic
X-KSE-Antiphishing-Method: None
X-KSE-Antiphishing-Bases: 01/22/2024 18:14:00
X-KSE-Antivirus-Interceptor-Info: scan successful
X-KSE-Antivirus-Info: Clean, bases: 1/22/2024 4:27:00 PM
X-KSE-Attachment-Filter-Triggered-Rules: Clean
X-KSE-Attachment-Filter-Triggered-Filters: Clean
X-KSE-BulkMessagesFiltering-Scan-Result: InTheLimit
X-Original-Sender: s.shtylyov@omp.ru
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of s.shtylyov@omp.ru designates 90.154.21.10 as permitted sender) smtp.mailfrom=s.shtylyov@omp.ru
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

On 12/7/23 7:16 PM, Sergey Shtylyov wrote:

[...]
>>> In init_freecom(), the results of usb_stor_control_msg() calls are stored
>>> in the local variable and then printed out by usb_stor_dbg() (if enabled),
>>> except for the 1st call, the result of which is completely ignored.  Drop
>>> the useless assignment.
>>
>> Instead, you should check the return value and handle it properly, don't
>> just drop the checking entirely, that's not good.
> 
>    Hmm... I wonder if you'd actually read the patch...
>    I'm not dropping any checking because there's none, even at the further
> call sites of usb_stor_control_msg() -- the most init_freecom() currently
> is doing is printing out the result of the calls...

   Alan, haven't heard your opinion on this patch... What do you think?

[...]

MBR, Sergey

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/cc7434e0-804c-82d6-3f57-dcceef8b461e%40omp.ru.
