Return-Path: <usb-storage+bncBCY2ZJEUWQHBBPUL2LAAMGQES4KCTLI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-lf1-x147.google.com (mail-lf1-x147.google.com [IPv6:2a00:1450:4864:20::147])
	by mail.lfdr.de (Postfix) with ESMTPS id E4A25AA6CBA
	for <lists+usb-storage@lfdr.de>; Fri,  2 May 2025 10:43:43 +0200 (CEST)
Received: by mail-lf1-x147.google.com with SMTP id 2adb3069b0e04-54af314eaecsf726723e87.2
        for <lists+usb-storage@lfdr.de>; Fri, 02 May 2025 01:43:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1746175423; cv=pass;
        d=google.com; s=arc-20240605;
        b=Xd43MExR03io76c2VUiosT8XN70egXtblXSeTBMD5mr5SPn6cFoGuGN4mx8qNWBspG
         C8lfL60rrcqMd0e/TYYz/Z+volqBNknAyXAb0SKIHDN9hCYflZAguoHQBtkG/dItZxQn
         8bQF/VGX0G+AQzNtgWpPkTKVKzitKCMnKr/627Gevo7L/paeG9XBBqEWRjq0D9D3XQOw
         ODCtTs/5aTVliJL+b3erEbZzQ5RphNpUXZs+ct6O4dhnJMWOcwH+2GxrEhvGkzIQr8jF
         sb0KRqg4AHYpxwPwYI9GXSxDL0H6LaSeVhjsBeM7GZVA9eXp+6tE+0jMtJzkGi1FIfKC
         baRw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:organization:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=EiTg08f0FmOgDOPZxAuqOXF7qqTN0jYQqhrw9hNJrv0=;
        fh=RCoW+CGPLozpmXXuj7ImJom8jn7E3wQB/OfgmrfdJbw=;
        b=IfYd4rECdII8L71HtpzMGVz4TaWf+f0qAZB1bd3KuaGyeOiPaBF6r+HbjIuKPd5VI2
         WUGoJucf6ZLK0//XIVwvPJFJGMDxQmZNwCOot+Bk9mx6tc/Cwbmh4KlB0bDwbgqa4bfx
         2ACI53erfj1sCts3i83Y4ebGDEg9z7uTbP9JXsxmkqsfUDLLZHBFyoCYnFbuzUiG/6kx
         K6HZsw39q/DZpc3LgxDsQqQXLPZe6OWRP1jlONr+YxxeiDJF/wKnVqEBROPnVGLWu4jW
         WPoxMGmFgy5iszonjkebXubjxuq5wyPB7OVN+QnAsD3ZJkuQpzJyZAMcm9ISfb4V8qAL
         Vskw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of s.shtylyov@omp.ru designates 90.154.21.10 as permitted sender) smtp.mailfrom=s.shtylyov@omp.ru
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1746175423; x=1746780223; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=EiTg08f0FmOgDOPZxAuqOXF7qqTN0jYQqhrw9hNJrv0=;
        b=GvlkC/VUO0wGM57KL7GEKFSSypuDfb/bwj59/IIIqLq8tCatoHkMmHdvoi/8xLoREq
         bRV7d92JljDLxXF0Mn5pMVXaCIJg0V7QUfKlN1cz4iItAGUpOvbXqjTHkC+xE0w4YvrD
         7Kig16pyuBLw4K5Ecjkk6WzubwUrNKHkTbUFE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746175423; x=1746780223;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EiTg08f0FmOgDOPZxAuqOXF7qqTN0jYQqhrw9hNJrv0=;
        b=mQhGsoIbk67Fti2Lv9/zFD/0Ur2P8TqIfBVRVPuW84OYRiCEmdTimdosdgrCFw+4w7
         klwXlq6mhTmQAFh97mEg2fOr6H8/tvZSlrlcuH0OzIM3syVDCYfqE1LiNPcXXhQJMV+I
         KW7IJnOQs+3A8jpmomdq1gA3BOOczE2k1NQs+XpngG87raBoehdWl5MHa57Jgkm03kv3
         AqcAiKISNskgWZf8EvQky7YIXJRSl/TZ8shFJ+XU5cwWZghlBrgRPN+7uTk0IPT6QQqg
         7ymEDSy2YPb1oCNttU0aEXQrPEZul2ZxAUC+WgHXUuRPmgBGBGTZbNKHbDM7NV2UTnjN
         CFgg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWwilNFPyFJP4n1pzTCZlyYlW4k933T19T/QP7OTw8VxKT63xfkMRdhmozxl6GHT725OByE9g==@lfdr.de
X-Gm-Message-State: AOJu0YxbdX0aVbfq2KkaDulLYHh+EqTB9zWR0RAfB2MSJqhkKJ3BRabi
	lOOlPCZoJ8FqHtE/xavqlTQaUHfSgafGxetacV5sJP3CZDLvzd7w5DaK20ZP4N4=
X-Google-Smtp-Source: AGHT+IGpOX+elBrh9SX0yapazTi0ZBi9lEoxu5hFFAoTAF0Ha8Kcu900DHwOsLR81Xx3d19PQr5FPA==
X-Received: by 2002:a05:6512:ad0:b0:549:b0f3:439b with SMTP id 2adb3069b0e04-54eac1f856fmr593071e87.16.1746175422881;
        Fri, 02 May 2025 01:43:42 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AVT/gBFzQ2Gag8ZLqbgds9c6U6rk791dyg0eTytIx1vg9jJDfw==
Received: by 2002:a19:2d55:0:b0:549:8de0:31f0 with SMTP id 2adb3069b0e04-54ea675f23fls31404e87.2.-pod-prod-09-eu;
 Fri, 02 May 2025 01:43:40 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXHcX1vTkHf3qydDergkYXeEjppdtgI7/XX/gQ+nhpw8cENh9uoWntvbkED+hB5DEJf7XJ83JMTmANveQ==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6512:10ca:b0:549:66d8:a1d2 with SMTP id 2adb3069b0e04-54eac1f861dmr587154e87.19.1746175420376;
        Fri, 02 May 2025 01:43:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1746175420; cv=none;
        d=google.com; s=arc-20240605;
        b=FKMEjRaxdXuUE5bM0d6ZXrwEa0Rxosw/2fNex4bjEAgaeZutJ3I1qUhkZyHmjBJoLn
         SFOBDkI9Ta/XnX3sC+mD7RlemsgXOfeD2euAsqHWzMuyUw5QRO1al3MnDxpX6YlnOXeX
         X0ATnZrMnl3K/mMo/vODHJWjcWTkSw5vgbhVtw7R8OxxxPKwNjWhbZ9XyplaifKJCF9+
         AYDfYuhefNta7Q7Q9+nL6zSCGxTdt48/Go8ZkOOoxaIv3pHBs04WluxEZChsfn77em1H
         9bO/zO8DBXPztnnmETrfaNEQA7tYgDHh3muQwbVpA5a1G7jv6rTxWtpRPX/M97HwhW1Y
         lO1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:organization:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id;
        bh=7DCOV7EABETnPKBHki4sgdljRWC8yJinH/ogowpTc4k=;
        fh=ixyuj+Cx7VdAM050QNL1hlq/xJCLah+fbpgbwSH7g9A=;
        b=WjDcZm17hNPvFmg9GfWsLNO6j48uZ1YFl80Erwt5RPgU/BcE7pCy35j+z4h9ihNnle
         92tbfhpfhm9bKCwRVQz8gtKIy5f4zwcs2BCXY0F85ixT4fBwqGrfEdCs7hbGo9NBQ2uZ
         TpRBrBul/XBX3T6H2IS/hypAU2z/G+chS5Wv8/T3uOpg/nRuU3RYy/MukistTriXzdcx
         7Ay7b5Vy3SNMFNOGSL3wtz/IDzwftZx+suAH0qpG8/w0v+/F2crQzziM4U5cHj92AmtB
         5Tq7YATqT/ySuDxJFNcBsMuLeP1kYl8GR/17CYYgEkoRonnf3hb/NGuqtcSLtpy8PAGq
         hx7g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of s.shtylyov@omp.ru designates 90.154.21.10 as permitted sender) smtp.mailfrom=s.shtylyov@omp.ru
Received: from mx01.omp.ru (mx01.omp.ru. [90.154.21.10])
        by mx.google.com with ESMTPS id 2adb3069b0e04-54ea94e267asi884699e87.264.2025.05.02.01.43.40
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 May 2025 01:43:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of s.shtylyov@omp.ru designates 90.154.21.10 as permitted sender) client-ip=90.154.21.10;
Received: from [192.168.2.102] (213.87.139.230) by msexch01.omp.ru
 (10.188.4.12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.2.1258.12; Fri, 2 May
 2025 11:43:31 +0300
Message-ID: <61fe4e0f-9b33-4338-9fbd-57a85d413346@omp.ru>
Date: Fri, 2 May 2025 11:43:31 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: remove block layer bounce buffering
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
CC: "Martin K. Petersen" <martin.petersen@oracle.com>, "Juergen E. Fischer"
	<fischer@norbit.de>, Alan Stern <stern@rowland.harvard.edu>, Andrew Morton
	<akpm@linux-foundation.org>, <linux-block@vger.kernel.org>,
	<linux-scsi@vger.kernel.org>, <linux-usb@vger.kernel.org>,
	<usb-storage@lists.one-eyed-alien.net>, <linux-mm@kvack.org>
References: <20250502064930.2981820-1-hch@lst.de>
Content-Language: en-US
From: Sergey Shtylyov <s.shtylyov@omp.ru>
Organization: Open Mobile Platform
In-Reply-To: <20250502064930.2981820-1-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [213.87.139.230]
X-ClientProxiedBy: msexch01.omp.ru (10.188.4.12) To msexch01.omp.ru
 (10.188.4.12)
X-KSE-ServerInfo: msexch01.omp.ru, 9
X-KSE-AntiSpam-Interceptor-Info: scan successful
X-KSE-AntiSpam-Version: 6.1.1, Database issued on: 05/02/2025 08:23:12
X-KSE-AntiSpam-Status: KAS_STATUS_NOT_DETECTED
X-KSE-AntiSpam-Method: none
X-KSE-AntiSpam-Rate: 19
X-KSE-AntiSpam-Info: Lua profiles 193072 [May 02 2025]
X-KSE-AntiSpam-Info: Version: 6.1.1.11
X-KSE-AntiSpam-Info: Envelope from: s.shtylyov@omp.ru
X-KSE-AntiSpam-Info: LuaCore: 56 0.3.56
 52db7f275cc9b6820389ba9ab2ac225370e1c244
X-KSE-AntiSpam-Info: {rep_avail}
X-KSE-AntiSpam-Info: {Tracking_phishing_log_reg_50_60}
X-KSE-AntiSpam-Info: {Tracking_from_domain_doesnt_match_to}
X-KSE-AntiSpam-Info: {SMTP from is not routable}
X-KSE-AntiSpam-Info: {Found in DNSBL: 213.87.139.230 in (user)
 b.barracudacentral.org}
X-KSE-AntiSpam-Info: 127.0.0.199:7.1.2;d41d8cd98f00b204e9800998ecf8427e.com:7.1.1;omp.ru:7.1.1
X-KSE-AntiSpam-Info: {Tracking_ip_hunter}
X-KSE-AntiSpam-Info: FromAlignment: s
X-KSE-AntiSpam-Info: ApMailHostAddress: 213.87.139.230
X-KSE-AntiSpam-Info: {DNS response errors}
X-KSE-AntiSpam-Info: Rate: 19
X-KSE-AntiSpam-Info: Status: not_detected
X-KSE-AntiSpam-Info: Method: none
X-KSE-AntiSpam-Info: Auth:dmarc=temperror header.from=omp.ru;spf=temperror
 smtp.mailfrom=omp.ru;dkim=none
X-KSE-Antiphishing-Info: Clean
X-KSE-Antiphishing-ScanningType: Heuristic
X-KSE-Antiphishing-Method: None
X-KSE-Antiphishing-Bases: 05/02/2025 08:26:00
X-KSE-Antivirus-Interceptor-Info: scan successful
X-KSE-Antivirus-Info: Clean, bases: 5/2/2025 6:29:00 AM
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

On 5/2/25 9:49 AM, Christoph Hellwig wrote:

[...]

> Diffstat:
>  b/arch/mips/configs/gcw0_defconfig  |    1 
>  b/block/Makefile                    |    1 
>  b/block/blk-map.c                   |    5 
>  b/block/blk-mq.c                    |    2 
>  b/block/blk-settings.c              |    5 
>  b/block/blk.h                       |   17 --
>  b/drivers/base/node.c               |    2 
>  b/drivers/scsi/Kconfig              |    3 
>  b/drivers/scsi/aha152x.c            |    1 
>  b/drivers/scsi/imm.c                |    1 
>  b/drivers/scsi/ppa.c                |    1 
>  b/drivers/scsi/scsi_lib.c           |    3 
>  b/drivers/usb/storage/usb.c         |   14 +
>  b/fs/proc/meminfo.c                 |    3 
>  b/include/linux/blk_types.h         |    1 
>  b/include/linux/blkdev.h            |    5 
>  b/include/linux/mmzone.h            |    1 
>  b/include/scsi/scsi_host.h          |    2 
>  b/include/trace/events/block.h      |   15 --
>  b/include/uapi/linux/blktrace_api.h |    2 
>  b/kernel/trace/blktrace.c           |    9 -
>  b/mm/show_mem.c                     |    4 

   Hm, your diffstat looks borked... :-)

>  block/bounce.c                      |  267 ------------------------------------
>  23 files changed, 19 insertions(+), 346 deletions(-)

MBR, Sergey

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/61fe4e0f-9b33-4338-9fbd-57a85d413346%40omp.ru.
