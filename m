Return-Path: <usb-storage+bncBAABBG76Q2YAMGQEMFLTS3I@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc46.google.com (mail-oo1-xc46.google.com [IPv6:2607:f8b0:4864:20::c46])
	by mail.lfdr.de (Postfix) with ESMTPS id 83A8288AD70
	for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 19:14:52 +0100 (CET)
Received: by mail-oo1-xc46.google.com with SMTP id 006d021491bc7-5a5547dbbc3sf1053852eaf.2
        for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 11:14:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711390491; cv=pass;
        d=google.com; s=arc-20160816;
        b=Kf4fGE6/l2pG5bk3tCumq/5H4zrZvdEICpPcMCLMZVMYdrVdVjuMAxkrPrjp0KOe1x
         5KYKYBox5nP0I8TX0Hc+mT9LbisFos4vCPu/7ld39IzRn2927j5vp131JL0SHWzLFU0l
         Q6M4EW8UFyuTTiJXZFpQ2SNFvbEQQS7+IkHnGzcDXlHWh4rzNV8GVIETwWmhKANuZPuZ
         Qf2T9atanaYJaLx2Z0FGmabt94i2EQIMc8hiZAm5knzTx5IxlPjOGWXEW7rlPQ//nqy1
         j/na8nMJMoPW2JgSGgDTCTT91YfiM7kjudbVithJdCOO8E7+P5TxSFQ3tarjoxriGl4b
         z8+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:organization:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=PL5I3PpumGtOzK4WeFbiJMVNSsYmi3xg/pNf5aLD1Hs=;
        fh=cOd/GzjN01gmOHjz31bSXkOVXnLFWUuN/cBQwaQJoDo=;
        b=DXHe5TLNga9e+7pZeDDSxk6Spl93AzenzBkccidifteKth07/RShhhFB1wSOtCH3uS
         hYbNRYYUQ7Kuv8rTTH3xI/XZ6kYkw6fnQWBNlNYNfezwIW2z2TYYsJSFvYi/U2sjyNXw
         54gLX9IKsoUNU7LtDDfywMnkrdFQfBUdksG3cC30bQPZUB+o/EVKCXSR6DYyUQmpNnAj
         loGYvuCnT6Sxwc7ObtUcCP9hONIeMlSJNmH0HaELvcOGJMC282v8nys4D4tZIYfzxHqj
         SWIFoBiuJy/V8v7q9DwWCXB33VpdJ5XuPxrD8vizzhj9rNJ/HN4qfvOpLuXkYvyBMMn4
         xIDA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=i6pow1wt;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711390491; x=1711995291; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=PL5I3PpumGtOzK4WeFbiJMVNSsYmi3xg/pNf5aLD1Hs=;
        b=fcVmIZ4kB3YUH/6RjpYfhl+AF8hIgBEuYBhGxYC80YFruCAvqemHgbB4xq/YefTYnQ
         AE4YzTToH4AA4NU3AihjV2Cvj+TQhNsFHRxNdCeD60bFI9s15Mk7HKcExOKpNcwqa/l3
         dOpOadBwMBt+7it28JNXeglxs+kzl/v/SZ0os=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711390491; x=1711995291;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PL5I3PpumGtOzK4WeFbiJMVNSsYmi3xg/pNf5aLD1Hs=;
        b=mlmvcIL4D/Nh3Pm6T6He4lm2k7ImCFwOU/Q8urUZEVgKmKg//atUZZJzt027zcNZKh
         duTHExlizgAKFqce9KCokIeLhmjP8NCjeouOqCMT1QL82xZ7QI5nGj4QysjCYw6f/biK
         IEQQftRNt+CPx0YNvNF5zXsH2b8rFhHhO85pKamzB9Bb63PK3hqlkiClpvQWjOYzWSw7
         2VSLmFk81V8SBHvPzC7/Yqnkw302DBm3hVD6xO8gYj0SqBblbPBPcYwM0r97mq1z472g
         ERlif8jariXgSautL17ZziUmPb64GXmN0h9T8ko0cGtIjlVd6hbIs4mvamlwcAjhMQNc
         3XUA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXxJZKlWgvSZtG9i72Y3iZj7cKo6VjjyZATF3E0hlmaqcXkT2eldhwsKPpxLfH4ikHErO+7FsRJLA4wUFoTmr3il3GhqWYZ3MZ8
X-Gm-Message-State: AOJu0YwrriHStgexzuLxuAh65ia+sgHSQgddubDYbBPYPUhJu2N2PBOi
	Q+DcbF9zErrrTDxxfSvfaGUS3yeumCrJKKQfH/sRCwkBx3TX6acaXzk0ErtdBg8=
X-Google-Smtp-Source: AGHT+IEThgFraIJHBLBBbBz5WBajNc2otdcpOvpfhZjQ4ljlkakNwK1swsPpUCgTKv0IFv/9ofB6CQ==
X-Received: by 2002:a05:6820:f08:b0:5a4:95e6:f15c with SMTP id eo8-20020a0568200f0800b005a495e6f15cmr8295855oob.5.1711390491319;
        Mon, 25 Mar 2024 11:14:51 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:e0d1:0:b0:5a4:3b6f:c4fa with SMTP id e17-20020a4ae0d1000000b005a43b6fc4fals4477954oot.2.-pod-prod-02-us;
 Mon, 25 Mar 2024 11:14:51 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUAvjgG5iNaREml4+6yvzBN4byn8/jHkzUT0Y55DDMgV6gVuWguL8D9iw74YCxEcxufR63jaMABeq+xtDYqBWwsZzauP3HwJ/7ptYBdeuOkFebkoFM=
X-Received: by 2002:a05:6820:2208:b0:5a2:27b1:93b7 with SMTP id cj8-20020a056820220800b005a227b193b7mr342734oob.0.1711390490946;
        Mon, 25 Mar 2024 11:14:50 -0700 (PDT)
Received: by 2002:a05:6808:1783:b0:3c3:cc09:ef6d with SMTP id 5614622812f47-3c3cc09f277msb6e;
        Mon, 25 Mar 2024 00:55:31 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVQm7ioXRhkZQQgxcxwpfBVXOxUueDPuUOqj/Bs72gdOpW+biXZ8Axls1V0DiLDkShouHFms2zJY/9OtfsZGQewYs09FCHdqV76kHgScCx+oKbGgYM=
X-Received: by 2002:a05:6a20:f20:b0:1a3:4c97:23a2 with SMTP id fl32-20020a056a200f2000b001a34c9723a2mr6066138pzb.20.1711353330881;
        Mon, 25 Mar 2024 00:55:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711353330; cv=none;
        d=google.com; s=arc-20160816;
        b=RSH56UIZYSILNTOqI9fT+s3vyLDuzdWbc6YPCHF03vJMJz5u3AQwQtZnJEYyJaPtfh
         SKLqOvQHb1BCW25fO94W+IhN9P4uT1sKyeFvB46dLGwZ0p9wFsiMaV45O0CZy9inffif
         ZGUUFgp4kfvkcUQcCUBd5BkcPxfVFWoqOuOPXA/RDMrSNhKEY32gOy4wLxTUTVkeBgG/
         euz0m2o21LiSvpT7M5N9Ghr7WDjvaIvkzZ4g86Ry754TeULIfbFC86Mp4kgArYGai/Wq
         2G/3nNxHuXY3Zj3jEC9T9A9EdQjorwCDLXEjFJQefoVCidjFxfiQttIJTIxKjy4dWPkZ
         4SYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=yaSamNLRAwstkAW8V1KJo4bS39aF7cxGVxsMhLWNqvo=;
        fh=42thyqLuX+U3R/biblipVYna9LUz9grvZASiaIDfzRc=;
        b=Mw3oi9YA4jKYafhMOW36tGLnAPOpoLywRfIjkts21opd6EjNm2R+JHSMQJu9D0RB8A
         YiLVptcCd0s8uHC4zVPogDCmlhK83NnVUT5MK9/GtGteNSdHCRgJ8Ha+tlhrMWQcvtw2
         9O95OcBlx6/ReYrSu9KmJjbqgb9ACopLw0yb1bfFlJAOrWKo+i0wmS42Z+RqybLSQBFQ
         v6WZjynHK8TyxzbDtHAFjdBf6AE2aUMN3n66jiVcAxAOwmLdmXeoxNMof1EhpN4SqnDW
         xVi9GHmbE7kUAkpZCIzdU8xzq8dURkmCe42k37Q70nQ/dktziTtU5h0zU+RkBVrjJSa3
         p0kQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=i6pow1wt;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [2604:1380:40e1:4800::1])
        by mx.google.com with ESMTPS id l71-20020a633e4a000000b005dbec9c2919si7002813pga.379.2024.03.25.00.55.30
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 00:55:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) client-ip=2604:1380:40e1:4800::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 394A2CE1056;
	Mon, 25 Mar 2024 07:55:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2865FC433C7;
	Mon, 25 Mar 2024 07:55:22 +0000 (UTC)
Message-ID: <43670f3c-b1cd-4732-9e0f-3cfb3ae9233a@kernel.org>
Date: Mon, 25 Mar 2024 16:55:22 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 22/23] uas: switch to using
 ->device_configure to configure queue limits
Content-Language: en-US
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>,
 "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: Niklas Cassel <cassel@kernel.org>,
 Takashi Sakamoto <o-takashi@sakamocchi.jp>,
 Sathya Prakash <sathya.prakash@broadcom.com>,
 Sreekanth Reddy <sreekanth.reddy@broadcom.com>,
 Suganath Prabu Subramani <suganath-prabu.subramani@broadcom.com>,
 "Juergen E. Fischer" <fischer@norbit.de>,
 Xiang Chen <chenxiang66@hisilicon.com>,
 HighPoint Linux Team <linux@highpoint-tech.com>,
 Tyrel Datwyler <tyreld@linux.ibm.com>, Brian King <brking@us.ibm.com>,
 Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
 Mike Christie <michael.christie@oracle.com>,
 John Garry <john.g.garry@oracle.com>, Jason Yan <yanaijie@huawei.com>,
 Kashyap Desai <kashyap.desai@broadcom.com>,
 Sumit Saxena <sumit.saxena@broadcom.com>,
 Shivasharan S <shivasharan.srikanteshwara@broadcom.com>,
 Chandrakanth patil <chandrakanth.patil@broadcom.com>,
 Jack Wang <jinpu.wang@cloud.ionos.com>, Nilesh Javali <njavali@marvell.com>,
 GR-QLogic-Storage-Upstream@marvell.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 Bart Van Assche <bvanassche@acm.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Alan Stern <stern@rowland.harvard.edu>, linux-block@vger.kernel.org,
 linux-ide@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 MPT-FusionLinux.pdl@broadcom.com, linux-scsi@vger.kernel.org,
 open-iscsi@googlegroups.com, megaraidlinux.pdl@broadcom.com,
 mpi3mr-linuxdrv.pdl@broadcom.com, linux-samsung-soc@vger.kernel.org,
 linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
References: <20240324235448.2039074-1-hch@lst.de>
 <20240324235448.2039074-23-hch@lst.de>
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20240324235448.2039074-23-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=i6pow1wt;       spf=pass
 (google.com: domain of dlemoal@kernel.org designates 2604:1380:40e1:4800::1
 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On 3/25/24 08:54, Christoph Hellwig wrote:
> Switch to the ->device_configure method instead of ->slave_alloc
> and update the block limits on the passed in queue_limits instead
> of using the per-limit accessors.
> 
> Note that uas was the only driver setting these size limits from
> ->slave_alloc and not ->slave_configure and this makes it match
> everyone else.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Looks OK to me.

Reviewed-by: Damien Le Moal <dlemoal@kernel.org>

-- 
Damien Le Moal
Western Digital Research

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/43670f3c-b1cd-4732-9e0f-3cfb3ae9233a%40kernel.org.
