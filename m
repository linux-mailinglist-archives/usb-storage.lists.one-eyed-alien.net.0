Return-Path: <usb-storage+bncBDFKTTUNQMNRBJ7E7WNAMGQEZG7GPSI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc45.google.com (mail-oo1-xc45.google.com [IPv6:2607:f8b0:4864:20::c45])
	by mail.lfdr.de (Postfix) with ESMTPS id C8CA06130D1
	for <lists+usb-storage@lfdr.de>; Mon, 31 Oct 2022 07:58:49 +0100 (CET)
Received: by mail-oo1-xc45.google.com with SMTP id n27-20020a4a611b000000b0048067b2a6f7sf3793688ooc.6
        for <lists+usb-storage@lfdr.de>; Sun, 30 Oct 2022 23:58:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1667199528; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q1kLe98OqmreElvFlwM3mNEjw5zQBTd46mzWT7HJ+Bhb34bVkhB1r0q6gZaEyLf4pz
         EnXYtNc/nE5QiN3QHt3KNY+y7gfw2LT1M5Djrf0guQFhha0Gh+3oO6B/YipT3PoYIbCj
         qL64gcUQLDDypjN1xJT54OnamW6ebaayRuvT/nl2Z/Rn2Jysx9fGziYF/q/V7TA5IQEG
         yV1Pby/UJvrCZlZJpA7QazvBf0pyaKrZHut2AG3CX862RqzHzdqOvP4bMuWkV8T6Cmhx
         VkM7W4ZfyUETjID0ts9Z+EigRCLzbdPrfA9THKe9FzsD37gUhxMP0pxJmmCrJn2X4ux5
         n5JA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=6f3mLBgJ+lr05jIsWpYypTb8m55MjfncSEAKWpyZSwc=;
        b=pz6Ma/El9EL3ofRdvu3IMDqGLQ6blXstw9ljcIRfpdjyjN5VryF6StRTMidevu1hM+
         9wYKo0ObGYgfuhnvMNq52PaMNXTRAxQglfXAyYCeaJO8rZPrRQx/UHidOwmSXOUv6IXD
         KYeo0v4kAna2ENQCc1xDbx6nBRPQ7K+uXrVVv42TTQakntF42DzqHHQR1ug7g4SQuxst
         oE9+r2OznUDz715uOjnC/ZuRLUSZOF29qXIvBp069MbzxfllD1nCC1Dv2heIV5SEKScW
         taCi3iMC8Ug0x1XRx/Lg9SBHrcOXaUB0yEFQYw8QNMKXoWkVU+zh5zLez5ikwwNesEEe
         hz4A==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=AKgrB4Fr;
       spf=pass (google.com: domain of qkrwngud825@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=qkrwngud825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:from:content-language:references:cc
         :to:subject:user-agent:mime-version:date:message-id:sender:from:to
         :cc:subject:date:message-id:reply-to;
        bh=6f3mLBgJ+lr05jIsWpYypTb8m55MjfncSEAKWpyZSwc=;
        b=iRvOkAuhVweeTe7tH7AGcxfkJ1qSZ4ppz9xxc1mwF9Va6m+ved8XqkUJqW+M6v1pI8
         aCr/ZbIKb/4M0lwr2ghPJFwIr5v6iv50d6tAqvQob/xAcKJBEwETNMI7kSCmc3EYujm4
         SIZ1RKPBtzpKr+SdsiOaAt0GeTTIK5Q9GmJVg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:from:content-language:references:cc
         :to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6f3mLBgJ+lr05jIsWpYypTb8m55MjfncSEAKWpyZSwc=;
        b=wwysPb3WpDPRuR1bn9hheOINPkrunkowENtYHo0Y/nIEQmQAUFFtsOaVOdmaFV75bu
         rZ4fKuT3DWsJ2sv2EHyH6lq0X8SeFWtVLkjx8UdN8cm83Oxokzqw0owVK2C93CkZ0cPw
         5bzD2LdPBABiPk5+k0Pb3X24h1Ut5gQ5xDh9n6W0hSa5tf+vDPIh0V4PJSASqQQGx+FK
         DaWZKjfFOVYu9Y4ycsDbWVS4TNMsyrhgQeSOTV4ctdBuRcLUlf0WLOGcYmVo2K0Cyxar
         8IMjztvWVsCUim24dUrViP9hUCD9gin8hVJuLGhL4ksNw6yVCTaoMAxufjnAWR1Svtfq
         mb9w==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACrzQf1VWGN6BlyMbuDxA0ePdJoipftYpA+Y1zn8VlTSiQfrN6jxgLYX
	R239tDn3tEboGzaWqfJZjZReFw==
X-Google-Smtp-Source: AMsMyM7swZaaCLuZZYOr+wPQQH2l3EfcXF3QtDh1DwYK9C+DfjzsZn2TiP9SwlZ4MTJ7bFjG/UsMsw==
X-Received: by 2002:a05:6870:c105:b0:12c:8f0c:e23c with SMTP id f5-20020a056870c10500b0012c8f0ce23cmr6340979oad.42.1667199528205;
        Sun, 30 Oct 2022 23:58:48 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:b7a9:b0:132:4cb:dd6 with SMTP id
 ed41-20020a056870b7a900b0013204cb0dd6ls2775426oab.2.-pod-prod-gmail; Sun, 30
 Oct 2022 23:58:47 -0700 (PDT)
X-Received: by 2002:a05:6870:2395:b0:13c:10c6:7629 with SMTP id e21-20020a056870239500b0013c10c67629mr16529636oap.3.1667199527790;
        Sun, 30 Oct 2022 23:58:47 -0700 (PDT)
Received: by 2002:aca:ea87:0:b0:34f:c814:e6a3 with SMTP id 5614622812f47-359a83f0900msb6e;
        Sun, 30 Oct 2022 23:17:53 -0700 (PDT)
X-Received: by 2002:a17:90b:e0e:b0:213:2a98:6486 with SMTP id ge14-20020a17090b0e0e00b002132a986486mr12912595pjb.96.1667197072532;
        Sun, 30 Oct 2022 23:17:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1667197072; cv=none;
        d=google.com; s=arc-20160816;
        b=W3szoCV8xJ+16dDoABxUK5bMvTNgh9QmYwyQ3okU7Dhd+3gkHT/FlGxWmNz5yJjEmN
         aIV+cyh3I+Q8u1xv2GGXcXSlkTqCyn7SLAa0KPJ+7jCSdRpi2C7DjWNJfqejpEIzVuUl
         7tfsYFwwSXaahj+Ks+Utj20FCbZbgu0U2H8BoVj0XUxnq1SawCXGtmQ2Qlbb+/lT+ryZ
         q4owcHjlpvRx9S3bBpp8ieVb+whnD77ZzF2k94kulT+ydmsmy+pbsiQVVDBC4IJaAOQT
         DWNu3ZPuJDDer/a7R1DYwiPhwOkShCARic3/SUZ8EgaLS4bBPmXs51XpAPfPcgopK7Eq
         8nIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=UEOAYYohevp1xVE9MSZmQl+jn6/lf/vFx3KFsUZRrsE=;
        b=q6pP8Uhr1CR45OjhpupKq2OR0L8i8iteSC/nCoIp5Q+18HNKpu3hOApIsyg4aRshmK
         Rqrf9evpbDf441KD7jm8qrkMjkrHHXGCfnck6R+mLwOVADee7RzoshhaAnBg/M0wHlkG
         uIFRGoe7MbTwn7yK5gnvBxQrILp2YlXE5eUryf0R9YGtwCDueaagHI6LAirHSOv76v93
         cwgyoLgbbrGXj5vfA9VTXdzrLJHfSfkOq+8kHzR8hlcqDLSrrxyBiVY4CJmLc1d+TdDQ
         VUzfuPxAPAVCHcOHlcZLe5m2uxb0BFEg9sBn6XIQLKmksrHLiJ/c9cHhTNaW1SRePYux
         0jCw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=AKgrB4Fr;
       spf=pass (google.com: domain of qkrwngud825@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=qkrwngud825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id y128-20020a623286000000b005624d774ea9sor2315436pfy.61.2022.10.30.23.17.52
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Sun, 30 Oct 2022 23:17:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of qkrwngud825@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a63:3c7:0:b0:46e:acf4:6265 with SMTP id 190-20020a6303c7000000b0046eacf46265mr11089219pgd.369.1667197072037;
        Sun, 30 Oct 2022 23:17:52 -0700 (PDT)
Received: from [192.168.112.195] ([114.71.101.201])
        by smtp.gmail.com with ESMTPSA id c13-20020a63ea0d000000b0044ed37dbca8sm3387258pgi.2.2022.10.30.23.17.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 30 Oct 2022 23:17:51 -0700 (PDT)
Message-ID: <fa0556e5-e154-a4e6-6b18-4996a01d2f10@gmail.com>
Date: Mon, 31 Oct 2022 15:17:48 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: [usb-storage] Re: [PATCH v6 2/3] usb-storage: Add Hiksemi USB3-FW to IGNORE_UAS
To: Hongling Zeng <zenghongling@kylinos.cn>, stern@rowland.harvard.edu
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
 zhongling0719@126.com, gregkh@linuxfoundation.org
References: <1663210188-5485-1-git-send-email-zenghongling@kylinos.cn>
Content-Language: en-US
From: Juhyung Park <qkrwngud825@gmail.com>
In-Reply-To: <1663210188-5485-1-git-send-email-zenghongling@kylinos.cn>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: qkrwngud825@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=AKgrB4Fr;       spf=pass
 (google.com: domain of qkrwngud825@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=qkrwngud825@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
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

Hi,

I'm speaking from my own experience but RTL9210 is arguably the most 
reliable NVMe-to-USB converter available.

Compared to solutions from JMicron (multiple revisions) and ASMedia, 
RTL9210 gave the lowest power consumption (from implementing proper 
power management commands) and the least headache.

I personally own multiple enclosures and not one gave a single UAS error 
from multiple platforms (Android, Intel, AMD) for years, but with this 
commit now, it effectively disables UAS for all RTL9210 enclosures.

Would it be possible to apply this quirk only to a specific firmware 
(range)? RTL9210 have a lot of possible firmware combinations: 
https://www.station-drivers.com/index.php/en/component/remository/Drivers/Realtek/NVMe-USB-3.1/lang,en-gb/

RTL9210 was available since 2019 and the fact that this quirk came up 
this late leads me to believe that this is not a widespread issue and 
it'll be a shame if all of RTL9210s are blacklisted from UAS with Linux 
from now on :(

If any additional information is required, please let me know.

Thanks,

On 9/15/22 11:49, Hongling Zeng wrote:
> The UAS mode of Hiksemi USB_HDD is reported to fail to work on several
> platforms with the following error message, then after re-connecting the
> device will be offlined and not working at all.
> 
> [  592.518442][ 2] sd 8:0:0:0: [sda] tag#17 uas_eh_abort_handler 0 uas-tag 18
>                     inflight: CMD
> [  592.527575][ 2] sd 8:0:0:0: [sda] tag#17 CDB: Write(10) 2a 00 03 6f 88 00 00
>                     04 00 00
> [  592.536330][ 2] sd 8:0:0:0: [sda] tag#0 uas_eh_abort_handler 0 uas-tag 1
>                     inflight: CMD
> [  592.545266][ 2] sd 8:0:0:0: [sda] tag#0 CDB: Write(10) 2a 00 07 44 1a 88 00
>                     00 08 00
> 
> These disks have a broken uas implementation, the tag field of the status
> iu-s is not set properly,so we need to fall-back to usb-storage.
> 
> Signed-off-by: Hongling Zeng <zenghongling@kylinos.cn>
> ---
> Change for v1
>   - Change the email real name and the code worng place.
> 
> Change for v2
>   -Change spelling error.
> 
> Change for v3
>   -Add acked-by
> 
> Change for v4
>   -Fix version error
> 
> Change for v5
>   -change version
> 
> Change for v6
>   -Change the git message for patch 3
> ---
>   drivers/usb/storage/unusual_uas.h | 7 +++++++
>   1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
> index a6bf87a..8a18d58 100644
> --- a/drivers/usb/storage/unusual_uas.h
> +++ b/drivers/usb/storage/unusual_uas.h
> @@ -149,6 +149,13 @@ UNUSUAL_DEV(0x0bc2, 0xab2a, 0x0000, 0x9999,
>   		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
>   		US_FL_NO_ATA_1X),
>   
> +/* Reported-by: Hongling Zeng <zenghongling@kylinos.cn> */
> +UNUSUAL_DEV(0x0bda, 0x9210, 0x0000, 0x9999,
> +		"Hiksemi",
> +		"External HDD",
> +		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
> +		US_FL_IGNORE_UAS),
> +
>   /* Reported-by: Benjamin Tissoires <benjamin.tissoires@redhat.com> */
>   UNUSUAL_DEV(0x13fd, 0x3940, 0x0000, 0x9999,
>   		"Initio Corporation",

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/fa0556e5-e154-a4e6-6b18-4996a01d2f10%40gmail.com.
