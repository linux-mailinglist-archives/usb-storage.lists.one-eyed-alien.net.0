Return-Path: <usb-storage+bncBCY2ZJEUWQHBBXG7Y6VQMGQEHW6M22A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-lj1-x245.google.com (mail-lj1-x245.google.com [IPv6:2a00:1450:4864:20::245])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D595808CFA
	for <lists+usb-storage@lfdr.de>; Thu,  7 Dec 2023 17:16:29 +0100 (CET)
Received: by mail-lj1-x245.google.com with SMTP id 38308e7fff4ca-2c9f1569bbasf8073911fa.0
        for <lists+usb-storage@lfdr.de>; Thu, 07 Dec 2023 08:16:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1701965788; cv=pass;
        d=google.com; s=arc-20160816;
        b=IXeCSamrcGqFGi4YKaHoOvx76p3VyvhQU5LyLawfgQrkvfdFXixEGQ+WAHRdi5RUsE
         lEa62o2r3j6bGILoaXlpsTQ6MgIkOPdJhCmk8mT3nqBWKp1uJmHNMJH5Ts1BZcvoAYVW
         rQerk7TzHn/eleHcv7mvyngVSaGefUJhgclSLjSAiPyP/2ioqwG6fz2UgEfwPGITvOuR
         mOE1DEQbwL293T8SIyxve/lNBYCH8Rx6SroYEo90fyKKGga0OX75hpD+R9LL0Nr2IctK
         crdOTuq+Y5LdzQaKfHot1tI0u9+RU2B2Cjv9usGVcapOwUR1UgN0uY6Fqi4wlOmVwqhC
         xTfA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:organization:from
         :references:cc:to:subject:sender:dkim-signature;
        bh=bbKS0fmv4pYGEh3oEA0wPhWRxJ0AL1cOPaNhSCVWLA4=;
        fh=AvFbBghcZWBcqcLmuH37pN99FS0I9kT4f2UtG2NCLGI=;
        b=D1N8DxZYds6v9Jdre+2NL7u6bTSwHC5ST+UnYZZkuVz09vzkOwle1nCF+DbWON1fMU
         q7LR/+wqv4dhKC7K1wWvHUccduBUcsh/sVg0HK5bMZVplzhSQ9zxRy68LXwcCJNMeh9l
         ZGgqKy1zVyCPMjPSUH+a59c05IdC4hb/hmUOfl8OAt3nTzPMy/Mi4vVnolvz4ep1mEFs
         SptKw8l1p8DcfFP9nXhcqIh+kQ6VQfUYMHjBRPSA4LU755/zb3j1nBUWhsmrV/YFp+aN
         p/ZsU12wKtVq7Ez5+57REVjBNsBYWqzXybLDh/9GiJ1Rgul5RIYNbCv0/zy87JJip8jY
         wiEA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of s.shtylyov@omp.ru designates 90.154.21.10 as permitted sender) smtp.mailfrom=s.shtylyov@omp.ru
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1701965788; x=1702570588; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:cc:to
         :subject:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=bbKS0fmv4pYGEh3oEA0wPhWRxJ0AL1cOPaNhSCVWLA4=;
        b=ac6NJ3C5BNxZ4HCmqLuRRo0YhLKpW3BuHYdtok76N4ptOVBvUQIOcsvonmNdSsCgbo
         GVqXu4WhAMzHg2fo5sTHRPx0Hnm+iTlo6BZtewD04BC/Ml3D8nhJlAFFsbTfcKA5D6/U
         VSFi/WpKizHPG3AyWDF3BpUbGGRHJVQUeEyQM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701965788; x=1702570588;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:organization:from:references:cc:to:subject:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bbKS0fmv4pYGEh3oEA0wPhWRxJ0AL1cOPaNhSCVWLA4=;
        b=sJKQJMq3zJg2i+KqwGqyB+M944JDDuw3kcNakQQa+WW4fUPSjV6zvENtv9TK3p1IWx
         4/ip4HjyOqXRbzbe+l3lYSWMY3l11ko/JBfbAcgdktsj5lvNfCEZeSinJlpf3Ld+BjbV
         1mF5bfuAXaaioVXmiqwdTYj5PLZxSatJhL5ILPBUCKRFI897xwM4M+UJlISQ4x2OgE0O
         H8TmeT/yOG/p02BGdqQHvFYqK08n9UWApkMMa9CS2HoTmRmPvyn4wZzRDr3JDlEsEBTx
         QEwl3Jt+aICwlMYnpog8r9TYjONt/iczXRFDY6U7iFfHvK7guo5M3dxizofX3s/smjzI
         WuRQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0Yy2XcmY6SHLgBE/36q+gntVNVzUSgmvyRwyR7EgKR7aXREbsfln
	ZK1tBs3EZTGBhnUP8gVx9ndbBg==
X-Google-Smtp-Source: AGHT+IE3K18HEw2MTE36b2R6o2J02GhpTqZqJko2j5k93JefRoJN/aIHcAT0Y/A2eMhOKJvGP/aaUA==
X-Received: by 2002:a2e:93d5:0:b0:2ca:41b:74de with SMTP id p21-20020a2e93d5000000b002ca041b74demr1650805ljh.72.1701965788328;
        Thu, 07 Dec 2023 08:16:28 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a2e:a782:0:b0:2ca:1cdf:dc45 with SMTP id c2-20020a2ea782000000b002ca1cdfdc45ls171268ljf.0.-pod-prod-06-eu;
 Thu, 07 Dec 2023 08:16:27 -0800 (PST)
X-Received: by 2002:a2e:998c:0:b0:2ca:a19:f21e with SMTP id w12-20020a2e998c000000b002ca0a19f21emr1743778lji.80.1701965786545;
        Thu, 07 Dec 2023 08:16:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701965786; cv=none;
        d=google.com; s=arc-20160816;
        b=FbXdu8EKhIQgfoUjwJL5bfE0CpYRb6bqHvLfeC8f3GFQ/j3x1LlhBqBSnm5TCYoIoa
         Sd3BMCdj/YhvKlVfIAbWWPJofljgZRjWaHK3HYGoLgF4fLvP5VLIosoxBVn0PkzCf9zc
         zIX6Tx1hHGHhao2ZZ9Ykn66xUI61HtiV+M21GnZK4VD4hW7hrCAL+FHID0b5cpqkL80i
         PucfNO9vVq3akDuUM6wvFIaeqtCAjZUcGDe/+8i8iKIXBOCtVeB63xZoOHLxFXMZ3Btu
         8jzJAmqqKRwJj07oORRC6y9MlBtxfoijrXY6JAjiXmh2vZsIuiDgvKfRjx4b/SDGY8bN
         uwtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:cc:to
         :subject;
        bh=JO8JQojeOrY8d1dOyzQPQPCtjY1YQZR4cepgUI2g6Gw=;
        fh=AvFbBghcZWBcqcLmuH37pN99FS0I9kT4f2UtG2NCLGI=;
        b=k/TAjHuYWumLFNEvmM1XZdugf/670mvLG7fGYhG/iMnVciAeeaDDCck+BWHADJctIb
         xjU1FKliMz7gQIpnGq9geIIWfY9Oe4C5hDRbEOnh4KTAhmJkkk6bPfOPevCIauOL0YOG
         9rfGRYL8b7o7ih5PJ3wHqGYMfK1DKhNU0GaJizgyc/NTkSZHUNllCMO35mmqHqzIxapx
         1SKGgYy9apF/zOMDwBNgPNkk2pTkyRhjv4Dq8/zc+Vj6D+fsLwgMVMOVPwUsPAPV2QGh
         iYDrcCWW35zNSnX5QCrAQs+/rilu8LmH7tacILgkWJB2vhWRH4o+Kst0iseElrtpCzmg
         aOrg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of s.shtylyov@omp.ru designates 90.154.21.10 as permitted sender) smtp.mailfrom=s.shtylyov@omp.ru
Received: from mx01.omp.ru (mx01.omp.ru. [90.154.21.10])
        by mx.google.com with ESMTPS id u19-20020a2e91d3000000b002ca355c7b24si256598ljg.110.2023.12.07.08.16.26
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Dec 2023 08:16:26 -0800 (PST)
Received-SPF: pass (google.com: domain of s.shtylyov@omp.ru designates 90.154.21.10 as permitted sender) client-ip=90.154.21.10;
Received: from [192.168.1.104] (31.173.84.200) by msexch01.omp.ru
 (10.188.4.12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.2.1258.12; Thu, 7 Dec
 2023 19:16:19 +0300
Subject: [usb-storage] Re: [PATCH] usb: storage: freecom: drop useless
 assignment in init_freecom()
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
CC: Alan Stern <stern@rowland.harvard.edu>, <linux-usb@vger.kernel.org>,
	<usb-storage@lists.one-eyed-alien.net>
References: <4d3fb70f-bf2f-96cc-a8fb-1ef658a24920@omp.ru>
 <2023120412-observing-affluent-9432@gregkh>
From: Sergey Shtylyov <s.shtylyov@omp.ru>
Organization: Open Mobile Platform
Message-ID: <b96dc0cc-86da-425b-86b8-39566f594d83@omp.ru>
Date: Thu, 7 Dec 2023 19:16:18 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <2023120412-observing-affluent-9432@gregkh>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Originating-IP: [31.173.84.200]
X-ClientProxiedBy: msexch01.omp.ru (10.188.4.12) To msexch01.omp.ru
 (10.188.4.12)
X-KSE-ServerInfo: msexch01.omp.ru, 9
X-KSE-AntiSpam-Interceptor-Info: scan successful
X-KSE-AntiSpam-Version: 6.0.0, Database issued on: 12/07/2023 16:04:27
X-KSE-AntiSpam-Status: KAS_STATUS_NOT_DETECTED
X-KSE-AntiSpam-Method: none
X-KSE-AntiSpam-Rate: 59
X-KSE-AntiSpam-Info: Lua profiles 181948 [Dec 07 2023]
X-KSE-AntiSpam-Info: Version: 6.0.0.2
X-KSE-AntiSpam-Info: Envelope from: s.shtylyov@omp.ru
X-KSE-AntiSpam-Info: LuaCore: 6 0.3.6 62f5a4619c57459c9a142aa1486ed27913162963
X-KSE-AntiSpam-Info: {rep_avail}
X-KSE-AntiSpam-Info: {Tracking_arrow_text}
X-KSE-AntiSpam-Info: {Tracking_from_domain_doesnt_match_to}
X-KSE-AntiSpam-Info: {relay has no DNS name}
X-KSE-AntiSpam-Info: {SMTP from is not routable}
X-KSE-AntiSpam-Info: {Found in DNSBL: 31.173.84.200 in (user)
 b.barracudacentral.org}
X-KSE-AntiSpam-Info: 127.0.0.199:7.1.2;omp.ru:7.1.1;d41d8cd98f00b204e9800998ecf8427e.com:7.1.1
X-KSE-AntiSpam-Info: ApMailHostAddress: 31.173.84.200
X-KSE-AntiSpam-Info: {DNS response errors}
X-KSE-AntiSpam-Info: Rate: 59
X-KSE-AntiSpam-Info: Status: not_detected
X-KSE-AntiSpam-Info: Method: none
X-KSE-AntiSpam-Info: Auth:dmarc=temperror header.from=omp.ru;spf=temperror
 smtp.mailfrom=omp.ru;dkim=none
X-KSE-Antiphishing-Info: Clean
X-KSE-Antiphishing-ScanningType: Heuristic
X-KSE-Antiphishing-Method: None
X-KSE-Antiphishing-Bases: 12/07/2023 16:09:00
X-KSE-Antivirus-Interceptor-Info: scan successful
X-KSE-Antivirus-Info: Clean, bases: 12/7/2023 3:22:00 PM
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

On 12/4/23 10:04 AM, Greg Kroah-Hartman wrote:
[...]
>> In init_freecom(), the results of usb_stor_control_msg() calls are stored
>> in the local variable and then printed out by usb_stor_dbg() (if enabled),
>> except for the 1st call, the result of which is completely ignored.  Drop
>> the useless assignment.
> 
> Instead, you should check the return value and handle it properly, don't
> just drop the checking entirely, that's not good.

   Hmm... I wonder if you'd actually read the patch...
   I'm not dropping any checking because there's none, even at the further
call sites of usb_stor_control_msg() -- the most init_freecom() currently
is doing is printing out the result of the calls...

> thanks,
> 
> greg k-h

MBR, Sergey

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/b96dc0cc-86da-425b-86b8-39566f594d83%40omp.ru.
