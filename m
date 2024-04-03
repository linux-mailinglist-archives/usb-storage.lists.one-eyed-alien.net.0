Return-Path: <usb-storage+bncBCY2ZJEUWQHBBBVXW2YAMGQEPEK4EAI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-lj1-x247.google.com (mail-lj1-x247.google.com [IPv6:2a00:1450:4864:20::247])
	by mail.lfdr.de (Postfix) with ESMTPS id B9AF68977D3
	for <lists+usb-storage@lfdr.de>; Wed,  3 Apr 2024 20:10:15 +0200 (CEST)
Received: by mail-lj1-x247.google.com with SMTP id 38308e7fff4ca-2d836bcc98esf476001fa.1
        for <lists+usb-storage@lfdr.de>; Wed, 03 Apr 2024 11:10:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712167815; cv=pass;
        d=google.com; s=arc-20160816;
        b=sHH9w29XfEMI9N3t3iaRJfgDsXkKKMh8oXgXo9MJ0YIFR7sasYKGX53GhC4Z/5uOzO
         1B4QJ08fm8+X1Bb4SxoMdFU9G7tal9AokQekbxfDl2kq92lGvCq/UeJyRin1IcBo7ZAx
         cNzjyhhBEQHuQ6AdAAvdvoTzfb5e3NxF8JZh2bTSEflE+NipmuQSIH16gZ5kUDNKaDmj
         /MipUxsXGGbJxJk0y7vX1tn6WSDNIOhRpDJDnU8A1Dq5HJM3Wde14cCv6mRg6XciOYXg
         WJ3UPtV8USxurKtYGnJqpk7ADPX07Aep/aEJ327Rk/aTgwmgZF7YZdJUQdB/WAKohHv2
         17hg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:organization:from
         :references:cc:to:subject:sender:dkim-signature;
        bh=Drdb3CjoteyFQ/CQeEqqDDIzxdQG2bPYtyFu7fXiB4c=;
        fh=SSSGYjF9U5esskuVi2kWhWrb3H2Gx28mCgBR95w54fM=;
        b=UpyJLa7eJH7I6Q1qJSGhAsYrX9gyHgF9TSRlmfpQR1DNBziHjqXUB2OH56SVeIJwUh
         PmFqeK+CYZ9mqpgwHVLl0bpqACWeamXAEyZ0uGTECF9WzzHwEGdq4E96MFBnuMyR9/gL
         yra+tByCYEpNbnt5gRyEwZN2ywLxDp54R2SMw8/qWexO8pfVnUHd6j/UQZgKFUiLs+mp
         DFlqV38s033iKBL0egxOB6p4IsJ+FtDyKAGRncEbQIBc1Pr8KkwBwqBTycBgXA8pBlan
         /MGcqYM8EP70gt87T2M3GJR5AA+86UOiOsiPIHGdY1ePdFsScWQzQ9DYd4k4d6/Rf5xj
         CQyQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of s.shtylyov@omp.ru designates 90.154.21.10 as permitted sender) smtp.mailfrom=s.shtylyov@omp.ru
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712167815; x=1712772615; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:cc:to
         :subject:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=Drdb3CjoteyFQ/CQeEqqDDIzxdQG2bPYtyFu7fXiB4c=;
        b=i+gRBequ3YTUCB38S9WRoQDkoBJDGr2e2wUO3WpetJBBw1UZl6AGrWHUj2j5dr1BX+
         w4dzakvM89r2BI+5ttrhjN4i1WXI3UYCKUGw1in9PEOtsgdq0IgV8PMKQW+A5EQF+HD8
         wO8pXzV3KcKdovFnPdhIpUhSedtGozK7eGa4s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712167815; x=1712772615;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:organization:from:references:cc:to:subject:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Drdb3CjoteyFQ/CQeEqqDDIzxdQG2bPYtyFu7fXiB4c=;
        b=iBEIO7PbjCmhAoihHoMiTOpsd3YEI0BzWP9YVoT7FWj6MffboHV3ZJGKL2QLanNaJz
         /fghoc3PKW74DaJlItfn9v97/pprdk3NwQbguzY41GleChtq3n12ZliUXf/6xkP8k7eK
         IoZza2e2iUBoA0E5ds1LfYcLQzaG6DnAUO+pcy95KsN79SqOmKT8jWJp2AAFRjZ1+pbQ
         eOOFzTs9IzVzpmNnRwjuJOyvMS5B1/vmnCTzawYJzLfi8IOIBouqLX94n7iPSmPYiYVx
         rBtEhi9ClE7VvIcdKaKCb7/YpW6RK3NezWNnOT7IlwJSZyT/r/P2V2eWGkBAVktVhx34
         cLpQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXzYObdsChyMrR6Vq+GJxNwoV8ZhYHeJ8qCc/POgR8utfD2iBNRYyZpBYIyQRUJArdqCHtVuSgTkT30AEhMu+5WL3160XASjxck
X-Gm-Message-State: AOJu0YyIcR1wMAQR9GWQVHb/NTAPaxZRfo5jTt12foaAXi6xIXb9kkdM
	zI5E5bYp+LzUCgDi2CMMyoOfmeuCt+P7pbRMrrY+M+3orW08WGooVFfX4DurO8U=
X-Google-Smtp-Source: AGHT+IEu3+GCpff7Vef6oX228NF9EspcB9IeIaQEAtdTifeM3mZ/+OfEqvX2r6oqBNTo65DU8rFRhg==
X-Received: by 2002:a2e:a0d4:0:b0:2d6:c1fa:f2bd with SMTP id f20-20020a2ea0d4000000b002d6c1faf2bdmr144728ljm.2.1712167815052;
        Wed, 03 Apr 2024 11:10:15 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a2e:b545:0:b0:2d4:6c0a:be15 with SMTP id a5-20020a2eb545000000b002d46c0abe15ls88148ljn.0.-pod-prod-00-eu;
 Wed, 03 Apr 2024 11:10:13 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXU7PfP/gKfZtrOzl5hWrs3UMsq2TfSigaHdT/C2IlBwU0Da6gHvPNT9QCTMZdVeb+wdKLkdCa6s+/SP5ImFD0M2LbzeY4spm7aMgQC8P64GZVt+PM=
X-Received: by 2002:a2e:b548:0:b0:2d4:7232:381c with SMTP id a8-20020a2eb548000000b002d47232381cmr133779ljn.12.1712167812723;
        Wed, 03 Apr 2024 11:10:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712167812; cv=none;
        d=google.com; s=arc-20160816;
        b=JkOUZupGLmXuNdwbn0cMi8BLCWKJ9oudg7BSVg0Z25yXyiU4lf1Mw/qSdhZ64fatOH
         JjbVSIGNiQeXDdmDhpVdPhTkjiqTkVrwn7tWC6u6mlr/KeFqkyaT8eLvctKRJBz5m6if
         S0qYAw47TCtYeRNe/W+Dcz92GHS/iGXeV6ocbygKNfWaiqyL69Jr94kQhNwLQm5KNB5b
         vuw6/lZ1n+HrU9njLIYYv1eiHVWLlUnsBCGlwdLDgTOGfrG4PjeQl28jt8S32wydICJZ
         bECmJ1V5ls3hpZBTZNScnzepO0sp9ORLOAMYFcC4BKZnojtbWMA1+y6dJ/t8QpQ6MTHU
         PL3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:cc:to
         :subject;
        bh=iJHE0og0yG5WSkDC2lVsO+URjoWzANJCtIgQuEGS8mc=;
        fh=wN0uZAz5u95dtOi8Azy2mt0q2VMot5NFyp/fAsL4YhQ=;
        b=WPE2E5Svuh5bifkz7kufYSE7eDu4En5ehuS0QuktxjIBjiJNvJeP6192Bw8ZS6Mo9S
         8I+fMryzs1lvxeihNQyP9rlhX4gGRGwG2zc13F54SB7kGBLdJlASNGIN1w6o7Qi572CP
         ngTbKr9a/rrRbV6L4MHPxChCYEO6Iov4+92snVczZM7PuwGc7ltLoafgIy6xJL+renJ2
         37PF009W04CvucCEbSBNa6z4447nd+rk+/MqOmUWxMNmGWKWcwCmvi3B/5cLXWgEUKCf
         A+yQDB/4tifbuo47IdmIsnyXow2XF/TbAop3LE53XQEl6ChKp1W4zSFuCIFz4+Tqp88I
         3ZOw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of s.shtylyov@omp.ru designates 90.154.21.10 as permitted sender) smtp.mailfrom=s.shtylyov@omp.ru
Received: from mx01.omp.ru (mx01.omp.ru. [90.154.21.10])
        by mx.google.com with ESMTPS id a38-20020a05651c212600b002d84888ed97si195867ljq.59.2024.04.03.11.10.12
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Apr 2024 11:10:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of s.shtylyov@omp.ru designates 90.154.21.10 as permitted sender) client-ip=90.154.21.10;
Received: from [192.168.1.105] (178.176.79.246) by msexch01.omp.ru
 (10.188.4.12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.2.1258.12; Wed, 3 Apr
 2024 21:10:10 +0300
Subject: [usb-storage] Re: [PATCH AUTOSEL 6.8 02/28] usb: storage: sddr55: fix
 sloppy typing in sddr55_{read|write}_data()
To: Sasha Levin <sashal@kernel.org>, <linux-kernel@vger.kernel.org>,
	<stable@vger.kernel.org>
CC: Karina Yankevich <k.yankevich@omp.ru>, Alan Stern
	<stern@rowland.harvard.edu>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	<linux-usb@vger.kernel.org>, <usb-storage@lists.one-eyed-alien.net>
References: <20240403171656.335224-1-sashal@kernel.org>
 <20240403171656.335224-2-sashal@kernel.org>
From: Sergey Shtylyov <s.shtylyov@omp.ru>
Organization: Open Mobile Platform
Message-ID: <cc6ee73c-fdb7-46bd-4f02-f342db846e4e@omp.ru>
Date: Wed, 3 Apr 2024 21:10:10 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20240403171656.335224-2-sashal@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Originating-IP: [178.176.79.246]
X-ClientProxiedBy: msexch01.omp.ru (10.188.4.12) To msexch01.omp.ru
 (10.188.4.12)
X-KSE-ServerInfo: msexch01.omp.ru, 9
X-KSE-AntiSpam-Interceptor-Info: scan successful
X-KSE-AntiSpam-Version: 6.1.0, Database issued on: 04/03/2024 17:51:55
X-KSE-AntiSpam-Status: KAS_STATUS_NOT_DETECTED
X-KSE-AntiSpam-Method: none
X-KSE-AntiSpam-Rate: 0
X-KSE-AntiSpam-Info: Lua profiles 184562 [Apr 03 2024]
X-KSE-AntiSpam-Info: Version: 6.1.0.4
X-KSE-AntiSpam-Info: Envelope from: s.shtylyov@omp.ru
X-KSE-AntiSpam-Info: LuaCore: 14 0.3.14
 5a0c43d8a1c3c0e5b0916cc02a90d4b950c01f96
X-KSE-AntiSpam-Info: {rep_avail}
X-KSE-AntiSpam-Info: {Tracking_uf_ne_domains}
X-KSE-AntiSpam-Info: {Tracking_from_domain_doesnt_match_to}
X-KSE-AntiSpam-Info: lore.kernel.org:7.1.1;omp.ru:7.1.1;d41d8cd98f00b204e9800998ecf8427e.com:7.1.1;127.0.0.199:7.1.2
X-KSE-AntiSpam-Info: ApMailHostAddress: 178.176.79.246
X-KSE-AntiSpam-Info: Rate: 0
X-KSE-AntiSpam-Info: Status: not_detected
X-KSE-AntiSpam-Info: Method: none
X-KSE-AntiSpam-Info: Auth:dmarc=temperror header.from=omp.ru;spf=temperror
 smtp.mailfrom=omp.ru;dkim=none
X-KSE-Antiphishing-Info: Clean
X-KSE-Antiphishing-ScanningType: Heuristic
X-KSE-Antiphishing-Method: None
X-KSE-Antiphishing-Bases: 04/03/2024 17:56:00
X-KSE-Antivirus-Interceptor-Info: scan successful
X-KSE-Antivirus-Info: Clean, bases: 4/3/2024 3:47:00 PM
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

On 4/3/24 8:16 PM, Sasha Levin wrote:

> From: Karina Yankevich <k.yankevich@omp.ru>
> 
> [ Upstream commit d6429a3555fb29f380c5841a12f5ac3f7444af03 ]
> 
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
> [Sergey: rewrote the patch subject/description]
> 
> Signed-off-by: Karina Yankevich <k.yankevich@omp.ru>
> Signed-off-by: Sergey Shtylyov <s.shtylyov@omp.ru>
> Reviewed-by: Alan Stern <stern@rowland.harvard.edu>
> Link: https://lore.kernel.org/r/4c9485f2-0bfc-591b-bfe7-2059289b554e@omp.ru
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Signed-off-by: Sasha Levin <sashal@kernel.org>

[...]

   I doubt this is worth pulling into the stable kernels, it
does not fix any serious issue...

MBR, Sergey

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/cc6ee73c-fdb7-46bd-4f02-f342db846e4e%40omp.ru.
