Return-Path: <usb-storage+bncBCCZL45QXABBB7HN7KLQMGQE2OBAEOA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x48.google.com (mail-oa1-x48.google.com [IPv6:2001:4860:4864:20::48])
	by mail.lfdr.de (Postfix) with ESMTPS id 94137598FDC
	for <lists+usb-storage@lfdr.de>; Fri, 19 Aug 2022 00:02:38 +0200 (CEST)
Received: by mail-oa1-x48.google.com with SMTP id 586e51a60fabf-117b96393f3sf1348667fac.9
        for <lists+usb-storage@lfdr.de>; Thu, 18 Aug 2022 15:02:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1660860157; cv=pass;
        d=google.com; s=arc-20160816;
        b=EoM6HWbhY/Hzkrj6tUaENZynBjYjZBcRo7EmuBwC+iGcACP7hCzeZ35+tuafVHZl0z
         aaZaveh9b76lbHXZ1WaBFSdGtHadVsbXTQdQe2C18SKqOSZlR6TX3iXmNqOBNuItCxZh
         H5woO2ZIQFXxF5MmQljnmunCvtSk08/qJzcb7cIc44fERyVQ41glNqwz9tzcT65ptLZA
         l268YsCSCjxZbfy/bWAetpG7HRBHrlvXENlL01ljEjaU6qhmtGgcqNau2ZmJvJUeO3xD
         96pQCbdFL0hdAX9eS2eRsU0fnvwusajpdNKOMt/Wi9m46RtKvhIv/erk7HEg7cS8OG5z
         4U5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=fpGtt79cckraeI8eOXwzv5VZ3UEz5ok67N3uuFGgQcA=;
        b=YtHKRo4uooQq0saI4QmS/oERWGCLdq89QYWp5EwKSgx+ST8N9mIJPBZ3abenjW3g5A
         GqeWaHi9cPE/z2UHD8YTonWiBJsBSevZZoYdmrKpKx/P+8KsoBYd9WgOf0y79aFoOqjT
         7wn2ABRGy6XdZS2xGDITmnv/y6CaTaRQJYbZA6HMX8NA6D8H0Sp33XzqDr0Wf2FOC9Vi
         prW2v1RoMXlGHkvQY+ejQFV0rD8vxGUCvnJ75SVlllBU/DHZYmYTTYsGS5GLgvn/UUbB
         bGn8/+N5dVVTkcWdRy7U510//fTKCpsxPOvc/oF1CxKyxJ1AIa3VAqDiVHF8wo3eiM95
         RQ6w==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=google header.b=KQJIUsGa;
       spf=pass (google.com: domain of skhan@linuxfoundation.org designates 209.85.220.41 as permitted sender) smtp.mailfrom=skhan@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject:sender
         :from:to:cc;
        bh=fpGtt79cckraeI8eOXwzv5VZ3UEz5ok67N3uuFGgQcA=;
        b=igPbWcuL7vAJ64sGexPjFMXgsqwVd3gJa6rllXezTlmaZYRCErrw2nmWZR75FqYP+I
         xF/extAhYB0Vw34nUOtiWyZsTCsR4tmfc6GaBIHhmCBwb/G7k7sshtLMNIK1t689v9Kz
         nrr7vtQaPRSN/7wX360DMJOyo/ttBfxFiswgU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :x-gm-message-state:sender:from:to:cc;
        bh=fpGtt79cckraeI8eOXwzv5VZ3UEz5ok67N3uuFGgQcA=;
        b=Bzchjhh/YAt+dtXspxLPP2HodEuMgNyiHvawa31U7LVxcN8kd/EXbZ8QbXlEU/l+Qd
         LyIQIZUP8i0zO8tUCxsTzW//aG6NS6AFG2Lpw9njGydcGyrMj2KcvHb1Jf980xQXZRby
         nH17jtgNwBRZB1SKe+5mA+M31VjLyrrj8+lxKYqAnlYaKrDARSFuIIplZo4ZvMoJXIAO
         DI1FDzGgHcRiUNHdieMVCeTkz4ccKgMRS5l4KMPnH9HEK2RMT1QyaSrkQMT4XAXAi8Lg
         cSUeW2ElDVCYu870HWp7CssFvWEH84zf8B3EvrRQ0eO+RmJCGvnpeVwSwX7IESZ+hngC
         yl0A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo0/pCW3lHLOASREJc5znbr14b0J6ZeSOfZcLK28BODuHO17Natl
	ZNcd2AMc+/KyiKGD3WvPxBfWLA==
X-Google-Smtp-Source: AA6agR4FpDJo//YBp55zGqy7gdBJU77tCDylr2FbXq4Zn2if4pS3HbMBgqrKZSCdeGcHGt/224A9iQ==
X-Received: by 2002:a9d:479a:0:b0:637:16d8:1695 with SMTP id b26-20020a9d479a000000b0063716d81695mr1870150otf.182.1660860156974;
        Thu, 18 Aug 2022 15:02:36 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:c78f:b0:10e:69ab:4435 with SMTP id
 dy15-20020a056870c78f00b0010e69ab4435ls958989oab.4.-pod-prod-gmail; Thu, 18
 Aug 2022 15:02:36 -0700 (PDT)
X-Received: by 2002:a05:6870:2111:b0:e9:768:f288 with SMTP id f17-20020a056870211100b000e90768f288mr5129024oae.45.1660860156147;
        Thu, 18 Aug 2022 15:02:36 -0700 (PDT)
Received: by 2002:aca:a8d8:0:b0:33a:6d3:3801 with SMTP id 5614622812f47-34529b63e5amsb6e;
        Thu, 18 Aug 2022 14:17:42 -0700 (PDT)
X-Received: by 2002:a05:6638:2416:b0:342:7233:48e4 with SMTP id z22-20020a056638241600b00342723348e4mr2078030jat.50.1660857462117;
        Thu, 18 Aug 2022 14:17:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1660857462; cv=none;
        d=google.com; s=arc-20160816;
        b=YzFJWUm9kMylHc1f7iWzuJYR4DsXg5kaANADlJE56JNCf7IOZkjEYwlxz6my+f7fkI
         kSN+fZznPR8caY8aOSIz55LLWpALPVTmKV4q5Yt4cCgmW5X1bqDVwm97wEdrkiHte+qd
         SsyVs9+oGDp/kYDBYqL9ACULEPdvePK3RiURvf14m9xraLpG+yD62MGoxe4IxFjj7ENM
         4TsgZi2nIHIRjcAcx9IC8p3hdgPYvpaYwp+N3SsTlm0XKffcsSZ/woZ6ZiX7uibds3LL
         BQ13prTctzT2nTraWjFqVA2GDk3WLadpqgOqGqcTRWT2sWP0pLzkhiSpPo3rRVqagom6
         8ATg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=Vy8D1pkwyXAsiF4MUgRh4hwYH42zrsLDINWKukfqLXo=;
        b=dzJrur/euavV7nIzQcGSfSqDztCRfG8hDHLlp0+seCR0JAWFTq+AJbgbSRirjn14Lc
         iXO/GZc0g5+RsX+4LdVy6sK8C0IbwYEB1DzlPsCvNvVkDRr0ZOdG2q2byCnIK1ifT1H8
         /o5d3nlgN2wcl76+9FOxjnPpobcXfn9VHBu0oEb4Qj70LQStlrB2dRHJ87zrMMsSmRKh
         /E4VLHCn8ANKpLVUT1I4ujgJGYN/rHIuu1aEXrF+3UXjF5D0yyVWK94BItnfXHzt2gR7
         NnbPymb+dBpe9MHsOQHVJIYqWu0lgZMZW3Z4z7396ExO3XxoXXGq1s65wTbaxnT6wykt
         SFvA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=google header.b=KQJIUsGa;
       spf=pass (google.com: domain of skhan@linuxfoundation.org designates 209.85.220.41 as permitted sender) smtp.mailfrom=skhan@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id x14-20020a5d990e000000b006882f5f2aa1sor677794iol.15.2022.08.18.14.17.42
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Thu, 18 Aug 2022 14:17:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of skhan@linuxfoundation.org designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a6b:3ec2:0:b0:67c:6baf:a51f with SMTP id l185-20020a6b3ec2000000b0067c6bafa51fmr2235618ioa.160.1660857461762;
        Thu, 18 Aug 2022 14:17:41 -0700 (PDT)
Received: from [192.168.1.128] ([38.15.45.1])
        by smtp.gmail.com with ESMTPSA id b1-20020a056638388100b003416ac35529sm1022582jav.26.2022.08.18.14.17.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Aug 2022 14:17:41 -0700 (PDT)
Subject: [usb-storage] Re: [PATCH] usb: move from strlcpy with unused retval
 to strscpy
To: Wolfram Sang <wsa+renesas@sang-engineering.com>,
 linux-kernel@vger.kernel.org
Cc: Duncan Sands <duncan.sands@free.fr>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Felipe Balbi <balbi@kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Richard Leitner <richard.leitner@skidata.com>,
 Alan Stern <stern@rowland.harvard.edu>, Guenter Roeck <linux@roeck-us.net>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Valentina Manea <valentina.manea.m@gmail.com>, Shuah Khan
 <shuah@kernel.org>, linux-usb@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net, Shuah Khan <skhan@linuxfoundation.org>
References: <20220818210116.7517-1-wsa+renesas@sang-engineering.com>
From: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <edda5842-fa82-dfb0-b4b2-14a83673ea6c@linuxfoundation.org>
Date: Thu, 18 Aug 2022 15:17:40 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20220818210116.7517-1-wsa+renesas@sang-engineering.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: skhan@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=google header.b=KQJIUsGa;
       spf=pass (google.com: domain of skhan@linuxfoundation.org designates
 209.85.220.41 as permitted sender) smtp.mailfrom=skhan@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On 8/18/22 3:01 PM, Wolfram Sang wrote:
> Follow the advice of the below link and prefer 'strscpy' in this
> subsystem. Conversion is 1:1 because the return value is not used.
> Generated by a coccinelle script.
> 

Please elaborate and summarize why this change makses sense in the
commit log? It will be easier for reviewers - saves time checking
the link.

> Link: https://lore.kernel.org/r/CAHk-=wgfRnXz0W3D37d01q3JFkr_i_uTL=V6A6G1oUZcprmknw@mail.gmail.com/
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> ---
>   drivers/usb/atm/usbatm.c               | 2 +-
>   drivers/usb/core/devio.c               | 2 +-
>   drivers/usb/gadget/function/f_fs.c     | 2 +-
>   drivers/usb/gadget/function/f_uvc.c    | 2 +-
>   drivers/usb/gadget/function/u_ether.c  | 8 ++++----
>   drivers/usb/gadget/function/uvc_v4l2.c | 6 +++---
>   drivers/usb/gadget/udc/omap_udc.c      | 2 +-
>   drivers/usb/misc/usb251xb.c            | 6 +++---
>   drivers/usb/storage/onetouch.c         | 2 +-
>   drivers/usb/typec/tcpm/fusb302.c       | 2 +-
>   drivers/usb/usbip/stub_main.c          | 2 +-

I don't have any problems with the change itself. I would ike to
see the commit log clealrly state why this change is good. With
that for usbip change:

Acked-by: Shuah Khan <skhan@linuxfoundation.org>

thanks,
-- Shuah

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/edda5842-fa82-dfb0-b4b2-14a83673ea6c%40linuxfoundation.org.
