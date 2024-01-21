Return-Path: <usb-storage+bncBCY2ZJEUWQHBB6M7WOWQMGQEPANE5QI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-lf1-x146.google.com (mail-lf1-x146.google.com [IPv6:2a00:1450:4864:20::146])
	by mail.lfdr.de (Postfix) with ESMTPS id 142EC8354DD
	for <lists+usb-storage@lfdr.de>; Sun, 21 Jan 2024 09:04:11 +0100 (CET)
Received: by mail-lf1-x146.google.com with SMTP id 2adb3069b0e04-50eec1c173esf1291902e87.2
        for <lists+usb-storage@lfdr.de>; Sun, 21 Jan 2024 00:04:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1705824250; cv=pass;
        d=google.com; s=arc-20160816;
        b=zRuTmb10uNqdMPPHw9dFHlj9rqM3QMAsbw2V/J0xuBlGi11vTqggsNrVf6Y4tLd2fF
         U11ZRrLqR3hZYcEX0/nUZg9qjnJQvpK1xuUlqu7gFvRFmKCz5i7q66jy+ZfO0+L7SQgt
         TbWDn7hFQfhiiTSOsgDPrLcBSGP/8vnubpYRLy/Wz8AgA2mGuPXsXpZ6NHqyGZRoMK+G
         716VWhWmVBYnGv2UFM1HNAZnyng4h0gPupEvCBP1TkO0L6H9li8a6pZOsyILa4eMesoV
         XCn4KUoieDusBk9uN7MjJ7H+NjTSBQ2L5czUZHabnh6J8s8u+3TrCzmjUm7sE/G8cjeY
         HsjA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:organization:from
         :references:cc:to:subject:sender:dkim-signature;
        bh=hD33jYmy4vD4E6FWaUmZcVGBNVST1AP36DnHcKJHlHk=;
        fh=6SzP4P3OFxDdT/y+n9ZCO5LS/2ed+e0kUGKWApvKjmY=;
        b=Wc4r8P2oZlsmm5OEcxJJE4v3kBRkEAMVp2EFqxTSuuKcajXDNFJf3y81FI08DVNCSY
         +9b1GTDzFuxuAkxdR4GPQSwlbCUhPyAhotKf59w985YfbHxIDP+MLVQ0+UhChbJPXoxk
         knkA9BUbc8ZF7hXIBAqAJPvLvtukuiR1KNd2eyxJwI0mzwzGB3jAfTczn8mSo+i1rHgb
         O2kEeyxclYAmliO3GvjgkGRRu70lxyqE/ORxa0pd6YkpUK0B8KQKU1nK9VNeqnVIVpbH
         hA0npyDyJ8PDrMtaLWhDUo7COcIIxOit0ay4hZ15l6ukISfn54SNxBZxE1FM0Q4b7rjo
         cZ0w==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of s.shtylyov@omp.ru designates 90.154.21.10 as permitted sender) smtp.mailfrom=s.shtylyov@omp.ru
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1705824250; x=1706429050; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:cc:to
         :subject:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=hD33jYmy4vD4E6FWaUmZcVGBNVST1AP36DnHcKJHlHk=;
        b=L3J2kn6DFv3RducJMzD6iK4nkjhr+aZPY8onNVdlyFCvL/YK0Z4V+7g6oK5TCDY3J5
         JrwVtuIKfH5Kn+ArwXLTDD+CwIHtwYr12wzFmfWVUAd80oyYJBf2wtivPba+2mE2dWYr
         9XxCP2WnuUvA1tTFgdacC/vCyx2KZAD3IOWXA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705824250; x=1706429050;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:organization:from:references:cc:to:subject:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hD33jYmy4vD4E6FWaUmZcVGBNVST1AP36DnHcKJHlHk=;
        b=IPTrHX9s2WGXcJWd0MveUhB1JaL57Tia14WwNrRC1aSQ7PSW8xldHgizvhNe8+zgJ5
         iefo+3Ta2RIRtyHAjvYkcCkKADUiuCQ89UchsTxdcSzqRYclSinHtNjQoGB2tHLlbUif
         ZBzItROWAdQQ9o7vMtJzBgFABpcqk4ImvOtpyfcCQnr2FKoOv95svW94BwDIf0xXyqd9
         PWR9AnBHosKxqWWaIDYlOHtVsRrVv7cKDhsbqf8/+9gzoaqZukjYj8K9nP49/1vPM/H4
         8t/T8LijKKWDotR8jUbS+5GKCK4myx9SUHzvXh8O2XlsESnNsjvBQEuPCk/at2VpxNg5
         3o0Q==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0Yy3PiLS4FlVYz0NFTyJA2Sybf43b9mFz/x5ofKwbBL3qK+FwvoE
	WnYUSZjXia77ZAM2A76qfF6Jq5BOqN8K9mU0ftWoyzbt4xPoxjm8ZqiG96htu0g=
X-Google-Smtp-Source: AGHT+IE41gCShZlHjjs51HfhHXX2zaxIitSuD8prJ0SI0OEjZqyUTKJCP4uMwt0Q/bcNyoOhnCYfHQ==
X-Received: by 2002:a19:9106:0:b0:50e:7c08:4351 with SMTP id t6-20020a199106000000b0050e7c084351mr694249lfd.44.1705824250284;
        Sun, 21 Jan 2024 00:04:10 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6512:20cf:b0:50e:6b52:2452 with SMTP id
 u15-20020a05651220cf00b0050e6b522452ls747915lfr.0.-pod-prod-01-eu; Sun, 21
 Jan 2024 00:04:08 -0800 (PST)
X-Received: by 2002:a2e:a1cc:0:b0:2cd:fab4:1ace with SMTP id c12-20020a2ea1cc000000b002cdfab41acemr844345ljm.81.1705824248219;
        Sun, 21 Jan 2024 00:04:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1705824248; cv=none;
        d=google.com; s=arc-20160816;
        b=UrNoERvLIGFmViEocy1DkJnpa7v0wp9XAMRfkiiYqqHeZ5wzoMDn5AiRaox7aQAuLI
         ycU5fo3izrNr9b+jYhb+r8qbXleQAnAvDXXj34daIx3UXDGBr4XiTu57DNSWULLWN9vv
         c35dNWV4Gjb5Ysca6DwiiqxDHax6QJo6CdkSiHjTA5/W+hFJDRhe9165KHE/+WGSP1EI
         8J0YSvdbJrq9K0WmuUQyKKCoyqkmLh8aIQvnHT/R8/fba3oxDgadrYRydgf+Ku908YCk
         Yi6o9GJh4OcpqYNxU4+FHQ+WJL8coso777YxXWMoEWee08UEEy35d5z5aCd5YoWi3kXj
         RPUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:cc:to
         :subject;
        bh=22Lo6nJcoHszrrP6OeFfjouPpMrLejfs07W7UNWkhBk=;
        fh=6SzP4P3OFxDdT/y+n9ZCO5LS/2ed+e0kUGKWApvKjmY=;
        b=mRN0vs+TRBUSvf0wUVcNNKFap8KSR/Y0B/wb0x9WjGtg0aakOh4WQbGhOHTGtwKnnS
         1hvdFlUsuXgwuFlfe2Lxgio3RRtx89rZ1WFV/K2ZnTaFZItvT0hvNuiz6xgIyAh70MpN
         3e9AXj9EmdSo6s/5Th3bX/FRiPsNSLGcpqa6hPUc5WTYHaknn36h4DfgbnZVFmYVO29T
         0xf2HZl06wv2fwLhSEPqOZWSsV/c9wQxq9dq4p21KniBqJEx6EHncrjYWKfJNJcdbE3D
         zg7Sz+wjGzY+5mp+YCIFinq8F+3fsnXg6G6+fszRw5VTCBZK2yyZk2zPCK2zKz6wt6U0
         gxpg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of s.shtylyov@omp.ru designates 90.154.21.10 as permitted sender) smtp.mailfrom=s.shtylyov@omp.ru
Received: from mx01.omp.ru (mx01.omp.ru. [90.154.21.10])
        by mx.google.com with ESMTPS id f11-20020a2e918b000000b002cd8b91a588si5752642ljg.429.2024.01.21.00.04.08
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Jan 2024 00:04:08 -0800 (PST)
Received-SPF: pass (google.com: domain of s.shtylyov@omp.ru designates 90.154.21.10 as permitted sender) client-ip=90.154.21.10;
Received: from [192.168.1.105] (31.173.85.113) by msexch01.omp.ru
 (10.188.4.12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.2.1258.12; Sun, 21 Jan
 2024 11:04:02 +0300
Subject: [usb-storage] Re: [PATCH v3] usb: storage: sddr55: fix sloppy typing
 in sddr55_{read|write}_data()
To: Alan Stern <stern@rowland.harvard.edu>, Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>, <linux-usb@vger.kernel.org>,
	<usb-storage@lists.one-eyed-alien.net>
CC: Karina Yankevich <k.yankevich@omp.ru>, <lvc-project@linuxtesting.org>
References: <0c219fd9-6b11-9c20-3dec-7dc5beaff379@omp.ru>
From: Sergey Shtylyov <s.shtylyov@omp.ru>
Organization: Open Mobile Platform
Message-ID: <c3370fe4-d47d-f647-7db1-dd06ce5d2ceb@omp.ru>
Date: Sun, 21 Jan 2024 11:04:01 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <0c219fd9-6b11-9c20-3dec-7dc5beaff379@omp.ru>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Originating-IP: [31.173.85.113]
X-ClientProxiedBy: msexch01.omp.ru (10.188.4.12) To msexch01.omp.ru
 (10.188.4.12)
X-KSE-ServerInfo: msexch01.omp.ru, 9
X-KSE-AntiSpam-Interceptor-Info: scan successful
X-KSE-AntiSpam-Version: 6.1.0, Database issued on: 01/21/2024 07:45:16
X-KSE-AntiSpam-Status: KAS_STATUS_NOT_DETECTED
X-KSE-AntiSpam-Method: none
X-KSE-AntiSpam-Rate: 59
X-KSE-AntiSpam-Info: Lua profiles 182802 [Jan 20 2024]
X-KSE-AntiSpam-Info: Version: 6.1.0.3
X-KSE-AntiSpam-Info: Envelope from: s.shtylyov@omp.ru
X-KSE-AntiSpam-Info: LuaCore: 7 0.3.7 6d6bf5bd8eea7373134f756a2fd73e9456bb7d1a
X-KSE-AntiSpam-Info: {rep_avail}
X-KSE-AntiSpam-Info: {Tracking_from_domain_doesnt_match_to}
X-KSE-AntiSpam-Info: {relay has no DNS name}
X-KSE-AntiSpam-Info: {SMTP from is not routable}
X-KSE-AntiSpam-Info: {Found in DNSBL: 31.173.85.113 in (user)
 b.barracudacentral.org}
X-KSE-AntiSpam-Info: 127.0.0.199:7.1.2;omp.ru:7.1.1;d41d8cd98f00b204e9800998ecf8427e.com:7.1.1
X-KSE-AntiSpam-Info: ApMailHostAddress: 31.173.85.113
X-KSE-AntiSpam-Info: {DNS response errors}
X-KSE-AntiSpam-Info: Rate: 59
X-KSE-AntiSpam-Info: Status: not_detected
X-KSE-AntiSpam-Info: Method: none
X-KSE-AntiSpam-Info: Auth:dmarc=temperror header.from=omp.ru;spf=temperror
 smtp.mailfrom=omp.ru;dkim=none
X-KSE-Antiphishing-Info: Clean
X-KSE-Antiphishing-ScanningType: Heuristic
X-KSE-Antiphishing-Method: None
X-KSE-Antiphishing-Bases: 01/21/2024 07:50:00
X-KSE-Antivirus-Interceptor-Info: scan successful
X-KSE-Antivirus-Info: Clean, bases: 1/21/2024 7:07:00 AM
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

On 1/20/24 11:15 PM, Sergey Shtylyov wrote:

   Oops, I forgot:

From: Karina Yankevich <k.yankevich@omp.ru>

   Ignore this version, I'll repost...

> In sddr55_{read|write}_data(), the address variables are needlessly typed
> as *unsigned long* -- which is 32-bit type on the 32-bit arches and 64-bit
> type on the 64-bit arches; those variables' value should fit into just 3
> command bytes and consists of 10-bit block # (or at least the max block #
> seems to be 1023) and 4-/5-bit page # within a block, so 32-bit *unsigned*
> *int* type should be more than enough...
> 
> Found by Linux Verification Center (linuxtesting.org) with the Svace static
> analysis tool.
> 
> Signed-off-by: Karina Yankevich <k.yankevich@omp.ru>
> Signed-off-by: Sergey Shtylyov <s.shtylyov@omp.ru>

[...]

MBR, Sergey

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/c3370fe4-d47d-f647-7db1-dd06ce5d2ceb%40omp.ru.
