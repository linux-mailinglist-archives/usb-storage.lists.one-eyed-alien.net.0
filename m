Return-Path: <usb-storage+bncBCY2ZJEUWQHBBL7J7SXQMGQEYCHUVIY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-lf1-x148.google.com (mail-lf1-x148.google.com [IPv6:2a00:1450:4864:20::148])
	by mail.lfdr.de (Postfix) with ESMTPS id 194BF887A3B
	for <lists+usb-storage@lfdr.de>; Sat, 23 Mar 2024 20:59:45 +0100 (CET)
Received: by mail-lf1-x148.google.com with SMTP id 2adb3069b0e04-513def50581sf3074753e87.3
        for <lists+usb-storage@lfdr.de>; Sat, 23 Mar 2024 12:59:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711223984; cv=pass;
        d=google.com; s=arc-20160816;
        b=kLMsXL1Fmnjon5x8jK6ghagHudmrH8XYchu01xL791Keog2eQfmSrFD54EEz6e5iSW
         NiO4RAKG0MBSG3rRhR4YRLruMWjXiWN0RSSnBy7Wrm++u25ikqfuIU0glOTyehRq7Oox
         w2qDnD1LE9XyLtWzgi7guwUorCIFOLrhXHrxZEMgK2kCPxfMYXRgBz6V5WObhQ/uO6cD
         1GVAmz+0kBaxg7wrY3eA68AaLlHiM5SClenOSFWzPw6ewV4l3lUNyg2tCWbBA5OY+dFq
         ANcto256YM0oiUTdyZHVgZTNi/ndmmCT0iJPW2vXxnxFkYcfc+Ye1ulOUSCURWilqMc1
         KKmw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:organization:references:cc
         :to:from:subject:sender:dkim-signature;
        bh=fXPLkba7NM4Y1eG0cmq7vmYHBzDCxugyROnkNvZ6yPk=;
        fh=r6KnpEvKBCs5MzuMBxBpwoNHWUqHAknQq0offRM4fzI=;
        b=PPviWgUEIJGfWCWX/fcUUi3n5TfyGr0602tE8CFqeAMk+0/t3WaOAcHD5GpQy9+aXN
         6EvWplLyIxv0dOByROP1cmZX+J05oPcMillmSnFRjsAJDEcpEgy96aH0ks6yY/llHm85
         pbTXkceXNYSRBbXw1MXVm2LzBM4IwVbylDPyrOJf5pN3UeR7JukEcktn2bevVaMN+8YT
         /rPean7pSE4BNYPH2L5lMq0noKO2Xlz5Rw/rhRKg79x3sCQwuY9XW5eGhORj5xTA4BW7
         DZDRTfHCqk5fci3p5oAhMRpq7RqCa60Mdia/6JpUMQR/MfDONIk26dFKx7J8EZtTro2g
         5/yQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of s.shtylyov@omp.ru designates 90.154.21.10 as permitted sender) smtp.mailfrom=s.shtylyov@omp.ru
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711223984; x=1711828784; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:references:cc:to:from
         :subject:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=fXPLkba7NM4Y1eG0cmq7vmYHBzDCxugyROnkNvZ6yPk=;
        b=QRhz2ZLRIwY0MtDKrXK8OsiCOmZNJ+Dj9UqK4mWqrMLqcHtgLNGSQXFfsw9FfTB4On
         AxGdhX9XpfvXGTG1s2e8sheYPU0yd1HcXfJrB0+e0EzxeV8w9PRLU7sNyS8CVimQ6c+h
         P8BuCeADMN6wUaN0O44UaIA/xeVP/p+/i5MiM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711223984; x=1711828784;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:organization:references:cc:to:from:subject:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fXPLkba7NM4Y1eG0cmq7vmYHBzDCxugyROnkNvZ6yPk=;
        b=IB6ifVQcY+vIrFKn4wN5P0dMtOmNCVOjyN52tpqsanaqybXDwJ2Hr0/J+dTA6JUcMG
         0br9rAtnOrYeNREM2BXWzblf4/kc2aFJg8SdQBc6Sw/pO0znvvmjAINarPAb4kPWuinn
         LBu0Mwt/D/7lA1d+m1jU8iWmXItxK1HBHZYRabQBi8/4HdI9+l/x0Qnv5cwWlNt9/cy4
         Mozhchq+Q/pIURUSrCoq+faUHgmCGiKtE5+FRx61AQlPyabR8L2eMGEkQShKgUhHQJZw
         UkK5XkASLz9WTg69AawpehLym+a4erwTBhMVzWR1PF7WyIiCyjQzVaLReJ6nBY6FYGJW
         DCsg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCX/TVNUxLvvch+7bBuIdir7/ldeLh6p2DpfqiPt6DsxUKmcKeH2kPdocnIrQ+9IX3CjL2GPtxR9X7NMHKAZt1/0fspcDHeoRDS9
X-Gm-Message-State: AOJu0YwVIjRqg865cC3zk721diwFS1pM+Sa12l0cdZVy/S2kelWjva2c
	e5iWCLvsGQAb1SJJdpiEalE2ehEuJ8JnJ7J9mVZnYdq8yvrEgLlemGUD9SNsJEg=
X-Google-Smtp-Source: AGHT+IHFMqBOu0FELrxtrAFRuER41ergfL80Oj2bwLo9ci2rfpEVuPtza5h7SNrvq1ABouATO5qIDg==
X-Received: by 2002:ac2:4db5:0:b0:513:c408:b2af with SMTP id h21-20020ac24db5000000b00513c408b2afmr2357777lfe.46.1711223983738;
        Sat, 23 Mar 2024 12:59:43 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a19:915d:0:b0:515:a552:3d03 with SMTP id y29-20020a19915d000000b00515a5523d03ls227873lfj.0.-pod-prod-05-eu;
 Sat, 23 Mar 2024 12:59:42 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWgwglnYUtuPDYpKwZ5ZmWzV218PGH/QznGqz+oe9AzVQa+nRRORS21NeJuRna6JCsF54wXCRqNDmMB/Z2algcDpfSgWu5h45CX9Qbmh9aVw+11p+4=
X-Received: by 2002:a2e:b0cc:0:b0:2d4:5c03:5ccb with SMTP id g12-20020a2eb0cc000000b002d45c035ccbmr2243081ljl.10.1711223981941;
        Sat, 23 Mar 2024 12:59:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711223981; cv=none;
        d=google.com; s=arc-20160816;
        b=dv5EPGucCIbI+/HJp+5fmuGvTGDluPKY4/Xd/Dd6rYVW1yZm84K/A3gihgI4ucF3nt
         AG8aoJ9RLFg3Bfp65W0VqKZkyjJOHKKt5+e+Mj9nv+WyoengH/MDe7gH++of+YKDiWD5
         dGv3aEl5Yxi6sKU7JO3zWhDBeOuhgjyJGkQ/Vpn8dqJ9yoeBqqcfzyjHL93pf7yXXNe0
         w+p369Ts3UIqhNsHUxRvJ2OC9D8GK+NUq50wGnYR1xyhsWjXW/qdl4UrfIZu4kMmMevV
         gy9dcyyeTXj6nfGc1XYUbRUqK6726Q4lXP2o0du8oG4y/OOVx/0iLNU3PkjpeXaqFBeH
         Zcjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:references:cc:to:from
         :subject;
        bh=U0Q9i9RT0sFPjqrJ+a3E5AHFJ3mDDcoQI6tCW+ad3+4=;
        fh=tJBp+sa7RqGtuWBE9tj8cgWbKEwODdPX1frZkS9o8PM=;
        b=raPsRxtq1Jfm3c/G743f0UyJqEjM2/U24adtG3B+2MfnKrcSt1jcibYTsGfHwwtXkF
         rQHjMNK7FYtNlfTfXQxL+JAWmvjb6GgVODzvC5M0JbQ/V2yno2szcAJt9TX/b5FpJ1QL
         wn16T8hEsmM9tqxt8Ci3S/yFBV4eiZmIciu+n8xViKlF7QZc/W1vDvnhQCciYNnohsu/
         2LQlzUCTwYtoOCMl8tsvj7N/UpdaP5Og3sghTh08p1VuK9vzp6aJEBl8FrFqDGAU0QnH
         VeXcfqwBFihtnWJDQLsqOg0cMSrRMTbC0ybslmoVCXGWyAw4DJ+e8KBS0cbNsr488F9x
         VtXA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of s.shtylyov@omp.ru designates 90.154.21.10 as permitted sender) smtp.mailfrom=s.shtylyov@omp.ru
Received: from mx01.omp.ru (mx01.omp.ru. [90.154.21.10])
        by mx.google.com with ESMTPS id f18-20020a2e9e92000000b002d437568c37si1313530ljk.164.2024.03.23.12.59.41
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2024 12:59:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of s.shtylyov@omp.ru designates 90.154.21.10 as permitted sender) client-ip=90.154.21.10;
Received: from [192.168.1.105] (178.176.75.120) by msexch01.omp.ru
 (10.188.4.12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.2.1258.12; Sat, 23 Mar
 2024 22:59:36 +0300
Subject: [usb-storage] Re: [PATCH v2] usb: storage: isd200: fix sloppy typing
 in isd200_scsi_to_ata()
From: Sergey Shtylyov <s.shtylyov@omp.ru>
To: Alan Stern <stern@rowland.harvard.edu>, Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>, <linux-usb@vger.kernel.org>,
	<usb-storage@lists.one-eyed-alien.net>
CC: <lvc-project@linuxtesting.org>
References: <8d6beef7-5995-c831-a7b6-ff98d3887231@omp.ru>
Organization: Open Mobile Platform
Message-ID: <6b2428d3-294e-6f5a-2106-0833746df3d1@omp.ru>
Date: Sat, 23 Mar 2024 22:59:35 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <8d6beef7-5995-c831-a7b6-ff98d3887231@omp.ru>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Originating-IP: [178.176.75.120]
X-ClientProxiedBy: msexch01.omp.ru (10.188.4.12) To msexch01.omp.ru
 (10.188.4.12)
X-KSE-ServerInfo: msexch01.omp.ru, 9
X-KSE-AntiSpam-Interceptor-Info: scan successful
X-KSE-AntiSpam-Version: 6.1.0, Database issued on: 03/23/2024 19:05:56
X-KSE-AntiSpam-Status: KAS_STATUS_NOT_DETECTED
X-KSE-AntiSpam-Method: none
X-KSE-AntiSpam-Rate: 59
X-KSE-AntiSpam-Info: Lua profiles 184371 [Mar 23 2024]
X-KSE-AntiSpam-Info: Version: 6.1.0.4
X-KSE-AntiSpam-Info: Envelope from: s.shtylyov@omp.ru
X-KSE-AntiSpam-Info: LuaCore: 11 0.3.11
 5ecf9895443a5066245fcb91e8430edf92b1b594
X-KSE-AntiSpam-Info: {rep_avail}
X-KSE-AntiSpam-Info: {Tracking_from_domain_doesnt_match_to}
X-KSE-AntiSpam-Info: {relay has no DNS name}
X-KSE-AntiSpam-Info: {SMTP from is not routable}
X-KSE-AntiSpam-Info: 127.0.0.199:7.1.2;omp.ru:7.1.1;d41d8cd98f00b204e9800998ecf8427e.com:7.1.1
X-KSE-AntiSpam-Info: ApMailHostAddress: 178.176.75.120
X-KSE-AntiSpam-Info: {DNS response errors}
X-KSE-AntiSpam-Info: Rate: 59
X-KSE-AntiSpam-Info: Status: not_detected
X-KSE-AntiSpam-Info: Method: none
X-KSE-AntiSpam-Info: Auth:dmarc=temperror header.from=omp.ru;spf=temperror
 smtp.mailfrom=omp.ru;dkim=none
X-KSE-Antiphishing-Info: Clean
X-KSE-Antiphishing-ScanningType: Heuristic
X-KSE-Antiphishing-Method: None
X-KSE-Antiphishing-Bases: 03/23/2024 19:10:00
X-KSE-Antivirus-Interceptor-Info: scan successful
X-KSE-Antivirus-Info: Clean, bases: 3/23/2024 4:01:00 PM
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

On 3/23/24 10:55 PM, Sergey Shtylyov wrote:

> When isd200_scsi_to_ata() emulates the SCSI READ/WRITE (10) commands,
> the LBA is a 32-bit CDB field and the transfer length is a 16-bit CDB
> field, so using *unsigned long* (which is 32-bit type on the 32-bit
> arches and 64-bit type on the 64-bit arches) to declare the lba and
> blockCount variables doesn't make much sense.  Also, when it emulates
> the READ CAPACITY command, the returned LBA is a 32-bit parameter data
> field and the ATA device CHS mode capacity fits into 32 bits as well,

   Oops, it should have been s/CHS mode//... :-/

> so using *unsigned long* to declare the capacity variable doesn't make
> much sense as well. Let's use the u16/u32 types for those variables...
> 
> Found by Linux Verification Center (linuxtesting.org) with the SVACE
> static analysis tool.
> 
> Signed-off-by: Sergey Shtylyov <s.shtylyov@omp.ru>

[...]

MBR, Sergey

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/6b2428d3-294e-6f5a-2106-0833746df3d1%40omp.ru.
