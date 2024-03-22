Return-Path: <usb-storage+bncBCY2ZJEUWQHBB25762XQMGQEDNM4OCY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-lj1-x246.google.com (mail-lj1-x246.google.com [IPv6:2a00:1450:4864:20::246])
	by mail.lfdr.de (Postfix) with ESMTPS id CC8D4886F8F
	for <lists+usb-storage@lfdr.de>; Fri, 22 Mar 2024 16:12:44 +0100 (CET)
Received: by mail-lj1-x246.google.com with SMTP id 38308e7fff4ca-2d6b41203b2sf5341421fa.1
        for <lists+usb-storage@lfdr.de>; Fri, 22 Mar 2024 08:12:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711120364; cv=pass;
        d=google.com; s=arc-20160816;
        b=0KnH6tv9P7mXctoU+KSkQszLw0739fn8o4N6/wwCgh7PS0xd7/JjT1lyONt1OjdJdz
         eybfn1oVTHb7Pcso6MW1BnE67RHCGWMigSTDPydWQ4k9jCWkaQucTq0v/W9v7hHKCQrz
         DQYctSGo8NjN1LS0fzcAFpNgJln6XwKG2E3sdGF3AG2mawEH+5EYhe+HsiI4CjiiUEoi
         r8umtYsbNszTWQGUpGXJjSimot36q804NKvyqshLT/OHnpWVcvKc1Ejfgf/9oQbKqFmy
         YVxbZ1A1yvtIsuF0FLVl+Shxd0hXlqXS6NlvTHHCzRtQ18WCyu5AgfRknpJh8R7SXo0T
         OO7w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:organization:from
         :references:cc:to:subject:sender:dkim-signature;
        bh=wc6ktIHRtG/j3hKbsy+3NR1CEkn1XmwyCwK3EJT2s5A=;
        fh=xX2vxFM6bK9MClRw5Lht++VzyWRr5fq4Ax7TD/RbwiU=;
        b=bVYb1nh1s9/bGOgT+XAEDXXVGNfUeo8oHa888Bxvyi1t6bAXE09giR2H2seGTXVjDT
         hsEBYNsG9XbuvEXJ4gXWWFn6qAJ3zQf9Dbrc1G9R+11EJQpfvU1dHEvtnf+cZ2LkQKOc
         +GeE5D3+iGBolvglOTP8eE1IejEIrp2OyUXo3/XeA3l7Im1WfcHSBH0BAqAZWW+kQmx+
         FAMqQ7YWNGlE67JkIASTjp1Dp2KnJUXk8Gw1q30eqQ2wOABdkZd6eHFfSzFNMrQ3x99j
         lfSJxg4lvuyq/35j7py4ZsQK8B2fA9xjxRrywFmkEEtWrXV8/AG4T2iAh9wVHa/Z5yeQ
         Z38g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of s.shtylyov@omp.ru designates 90.154.21.10 as permitted sender) smtp.mailfrom=s.shtylyov@omp.ru
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711120364; x=1711725164; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:cc:to
         :subject:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=wc6ktIHRtG/j3hKbsy+3NR1CEkn1XmwyCwK3EJT2s5A=;
        b=FDtX08P4s8KpEzgyUxF46h1rdauPEDF96wgiHd1y8szvY+72EkyCKXb0fmMlia7pok
         P9EXs9r/lHk2fBQ90GizrDbwgNRd9do2Iu8oabcWbBtNXzYZvUKieVMjJRHnM33Cf/Gd
         627B/vJj1B8vwTIFOzI8hv2sfr7wreZSt2BY4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711120364; x=1711725164;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:organization:from:references:cc:to:subject:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wc6ktIHRtG/j3hKbsy+3NR1CEkn1XmwyCwK3EJT2s5A=;
        b=YqrPbYY4WeXJ7LmNu54CHDIhF6WW6xp2OOgJiWwg1tApLsDk/ER/xKMI/f3WAaCDM0
         Afcyq9hx/RyyQdHji44zEfXUtninzJod1NgLZjl3OFUZul58/yaWfermsjjfyFPJBsUk
         P0wPI2SKe3KIUSRnly2qAJoCcVfSJwHvzjAaSGuzvqVRotvXlmdqoGy3BxkfYnFkdipF
         umYcC5opvc4b2ILDgQMzNz+BiH8YIXWLp5k8r1GHh61UfqLwUtoahK2OgdkqQv2MdVf4
         kARocHVeDU/sXJ3SUBcQfaxnQU9j9HDn/DvRRwa+M4ooAbjP8gdZFWEYkgqC/1mOcbsE
         M/Uw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVFchqt6yt63sKdCZW/px/hTbJeJiB0DDIbgeQrGE0v3BUg0kMDzFqWcujLI1FywdzvbKiGcrD60d1B8UbyaWfQ25zCEGCurFMZ
X-Gm-Message-State: AOJu0YwocXGSVNQ7d36JJ5Vul3T63EurLEfkWi8oPmOz7ZQByEKgp9hV
	KXfqnbQHQo2mcxHsEKxJUe3dTrFP5MJw2GaXgsRRB3xiHcD2SnYE2Ga56MCYtzg=
X-Google-Smtp-Source: AGHT+IHYCGVC6dNNBDEXiBui71KlSkL++ApLnWpGNR4e/g6fyv2bpW2zpq8PPiTxXoxOZIAo7vS/ww==
X-Received: by 2002:a2e:9cd9:0:b0:2d4:51f4:dbee with SMTP id g25-20020a2e9cd9000000b002d451f4dbeemr1923906ljj.53.1711120363944;
        Fri, 22 Mar 2024 08:12:43 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a2e:b707:0:b0:2d6:b5c6:47be with SMTP id j7-20020a2eb707000000b002d6b5c647bels151995ljo.2.-pod-prod-03-eu;
 Fri, 22 Mar 2024 08:12:42 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVYYuic2ieHPPpGHuXWCdx7P6CyVJjnFUxQ9Y3SrY9lzWjTnLcwlXZ4aovioEVJVdqNN5xKaiz4ct/QQw/54jckYqCD9Jj6H3qqDyrX6jawSVnAvWM=
X-Received: by 2002:a2e:3312:0:b0:2d4:6e71:59e9 with SMTP id d18-20020a2e3312000000b002d46e7159e9mr1951690ljc.13.1711120361903;
        Fri, 22 Mar 2024 08:12:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711120361; cv=none;
        d=google.com; s=arc-20160816;
        b=AUOPeF7LLXTS+g0cqsOtKjI6c5+UtlBuh0sPQWdz/5t3fBMBp2IVzjjoOgjORrJtN2
         6WDjGVH263nNTNlQZF2U/TsjKeA5CNWVt1qTTgVaMXIAq42SkhgrWsx150iq4tDmAYHx
         1BLwYgLc33sgWP14p3a/Wba3Vf9VBGMZ9BRRTYfPYMhbni56wRCgxscG1R45Uyx9f57x
         xuRciBgjKP/dwNT/nIMvkiMyxF3tnOIt+kLqf2HYvgkHamunsnLObgf8le/7w96BCRHg
         NfSguc1e1yQ3I8kF+AIiNeyIIhNdqJ15WOsOQXAvLWMamd8lSMbwCBJf//hOGtZMYBxl
         g2UQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:cc:to
         :subject;
        bh=/Zjuwr8ZFYLV186c27lR0MCmpCrABLV2zv6YqF2VvnQ=;
        fh=uArx2mZIcg5kqHBBfiebzKrTh2TvNvPTP3kf7iKbjus=;
        b=L3Y7lS6GXjQs9innmqXAR2bxhUdQ9iFL48ZMcYjJHruXWgBknf83Arl1wMgBwqeMvo
         NYsTJ1l75Kt5fq4cK99XPrpEcaLYNoV7pffUXo5pWsoXwqjYJw6Tw4d0xYqK6KLFvkYR
         m/2cToQKAl7qjanW3uBozwuuoVQLO0l/MNm7td0KcLBbEpeoABDe/Na2/fNXnJrFhWEQ
         UeaTCqOkBXwl5v8i6wX5iUeGQKgDnDmttBExRRM+P9xZPaaLXfsjhvWbovjmYaCXal8P
         gBmKDZMFCf8zVwhLJO3bpJqomoFLRXjnyGbxXxG7+XtnLYlCx7Iwkj1lIE8qlzrQDDg0
         AXDA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of s.shtylyov@omp.ru designates 90.154.21.10 as permitted sender) smtp.mailfrom=s.shtylyov@omp.ru
Received: from mx01.omp.ru (mx01.omp.ru. [90.154.21.10])
        by mx.google.com with ESMTPS id s14-20020a2e81ce000000b002d6bacea6c9si173448ljg.86.2024.03.22.08.12.41
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Mar 2024 08:12:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of s.shtylyov@omp.ru designates 90.154.21.10 as permitted sender) client-ip=90.154.21.10;
Received: from [192.168.1.105] (31.173.81.221) by msexch01.omp.ru
 (10.188.4.12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.2.1258.12; Fri, 22 Mar
 2024 18:12:35 +0300
Subject: [usb-storage] Re: [PATCH] usb: storage: isd200: fix sloppy typing in isd200_scsi_to_ata()
To: Alan Stern <stern@rowland.harvard.edu>
CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	<linux-usb@vger.kernel.org>, <usb-storage@lists.one-eyed-alien.net>,
	<lvc-project@linuxtesting.org>
References: <e8c20e3c-3cbe-b5c1-f673-0a7f22566879@omp.ru>
 <4e13319d-30a8-4274-bfa0-36d915b1e1ec@rowland.harvard.edu>
 <6425997a-669b-919d-af44-880a7ce28ffc@omp.ru>
 <26d483d0-a89c-4c33-99f2-455f0f13e6e5@rowland.harvard.edu>
From: Sergey Shtylyov <s.shtylyov@omp.ru>
Organization: Open Mobile Platform
Message-ID: <43618519-0608-9306-35cc-87ebe47ea9c2@omp.ru>
Date: Fri, 22 Mar 2024 18:12:35 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <26d483d0-a89c-4c33-99f2-455f0f13e6e5@rowland.harvard.edu>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Originating-IP: [31.173.81.221]
X-ClientProxiedBy: msexch01.omp.ru (10.188.4.12) To msexch01.omp.ru
 (10.188.4.12)
X-KSE-ServerInfo: msexch01.omp.ru, 9
X-KSE-AntiSpam-Interceptor-Info: scan successful
X-KSE-AntiSpam-Version: 6.1.0, Database issued on: 03/22/2024 14:50:40
X-KSE-AntiSpam-Status: KAS_STATUS_NOT_DETECTED
X-KSE-AntiSpam-Method: none
X-KSE-AntiSpam-Rate: 59
X-KSE-AntiSpam-Info: Lua profiles 184363 [Mar 22 2024]
X-KSE-AntiSpam-Info: Version: 6.1.0.4
X-KSE-AntiSpam-Info: Envelope from: s.shtylyov@omp.ru
X-KSE-AntiSpam-Info: LuaCore: 11 0.3.11
 5ecf9895443a5066245fcb91e8430edf92b1b594
X-KSE-AntiSpam-Info: {rep_avail}
X-KSE-AntiSpam-Info: {Tracking_from_domain_doesnt_match_to}
X-KSE-AntiSpam-Info: {relay has no DNS name}
X-KSE-AntiSpam-Info: {SMTP from is not routable}
X-KSE-AntiSpam-Info: {Found in DNSBL: 31.173.81.221 in (user)
 b.barracudacentral.org}
X-KSE-AntiSpam-Info: 127.0.0.199:7.1.2;d41d8cd98f00b204e9800998ecf8427e.com:7.1.1;omp.ru:7.1.1
X-KSE-AntiSpam-Info: ApMailHostAddress: 31.173.81.221
X-KSE-AntiSpam-Info: {DNS response errors}
X-KSE-AntiSpam-Info: Rate: 59
X-KSE-AntiSpam-Info: Status: not_detected
X-KSE-AntiSpam-Info: Method: none
X-KSE-AntiSpam-Info: Auth:dmarc=temperror header.from=omp.ru;spf=temperror
 smtp.mailfrom=omp.ru;dkim=none
X-KSE-Antiphishing-Info: Clean
X-KSE-Antiphishing-ScanningType: Heuristic
X-KSE-Antiphishing-Method: None
X-KSE-Antiphishing-Bases: 03/22/2024 14:55:00
X-KSE-Antivirus-Interceptor-Info: scan successful
X-KSE-Antivirus-Info: Clean, bases: 3/22/2024 12:08:00 PM
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

On 3/22/24 5:38 PM, Alan Stern wrote:
[...]

>>>> When isd200_scsi_to_ata() emulates the SCSI READ CAPACITY command, the
>>>> capacity local variable is needlessly typed as *unsigned long* -- which
>>>> is 32-bit type on the 32-bit arches and 64-bit type on the 64-bit arches;
>>>> this variable's value should always fit into 32 bits for both the ATA and
>>>> the SCSI capacity data...
>>>>
>>>> While at it, arrange the local variable declarations in the reverse Xmas
>>>> tree order...
>>>>
>>>> Found by Linux Verification Center (linuxtesting.org) with the SVACE static
>>>> analysis tool.
>>>>
>>>> Signed-off-by: Sergey Shtylyov <s.shtylyov@omp.ru>
>>>>
>>>> ---
>>>>  drivers/usb/storage/isd200.c |    2 +-
>>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>>
>>>> Index: usb/drivers/usb/storage/isd200.c
>>>> ===================================================================
>>>> --- usb.orig/drivers/usb/storage/isd200.c
>>>> +++ usb/drivers/usb/storage/isd200.c
>>>> @@ -1283,8 +1283,8 @@ static int isd200_scsi_to_ata(struct scs
>>>>  
>>>>  	case READ_CAPACITY:
>>>>  	{
>>>> -		unsigned long capacity;
>>>>  		struct read_capacity_data readCapacityData;
>>>> +		u32 capacity;
>>>
>>> This is a bit peculiar.  Why bother to change the type of the capacity 
>>> variable without also changing the types of lba and blockCount at the 
>>> start of the routine?
>>
>>    The reason is simple: Svace didn't complain about those.
> 
> You shouldn't trust automated code checkers too far.  Always verify 

   I never do. In this case, Svace suggested a cast to 64-bit type to
avoid what it suspected to be an overflow. :-)

> their reports, and look around the vicinity to see if they missed 
> something obvious.

   Yeah, I forgot to do that. :-)

>>  I'll fix
>> them up in v2 if you're not opposed to this patch...
> 
> Sure, go ahead.

   OK! :-)

> Alan Stern

MBR. Sergey

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/43618519-0608-9306-35cc-87ebe47ea9c2%40omp.ru.
