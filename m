Return-Path: <usb-storage+bncBAABBC76Q2YAMGQEDGKM2AA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc48.google.com (mail-oo1-xc48.google.com [IPv6:2607:f8b0:4864:20::c48])
	by mail.lfdr.de (Postfix) with ESMTPS id C089288AD68
	for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 19:14:36 +0100 (CET)
Received: by mail-oo1-xc48.google.com with SMTP id 006d021491bc7-5a4d1d88494sf3787749eaf.1
        for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 11:14:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711390475; cv=pass;
        d=google.com; s=arc-20160816;
        b=HEnnar0LNYMAFVJ3JLN9u9L1HNGUAt3SIDuXsyQJG44CH9HRxafBZT0waMHsVKCHBZ
         C7GGI3AyG1NYUBOEMpBVqEhHZDakvYOFt2kMcfFMK1Y1cOFbcqiBkfuHlzTvDWEiXXIS
         1qJiKGMkGkusSEm+cCYdrpE0X46EmWYrdjtNysWWbxBVABsep9ZRjQKRzweVIqZ695Yf
         qcXzfWOqPcOgnoVHaXlFqnsmzGxYn6CkmYQWv3jbd3xkzVuc+1x5y3+xiAMFB4chPL3N
         3Hd4ncYCJ4tfRaXgir19cvE5n82tJS7CowMBUlSyqqjhxhCVtFUcg7p67jCi09/xdZbq
         nFaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:organization:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=KJoC3DJTKK0LCVF75+1YwWAfzEWDMlsoIKl9Vogh1/8=;
        fh=6hdZrfKKcy5sg/dE5pc5k/CWn9CqRXeN1mGQjwbKSfE=;
        b=Wt1II+qnFQlQIP8dt5VCw1+YGj2e/JPkJ5VtYAXF9UpluD5QnRBZa4OgT1Ws9hJ2vc
         0vPBmH+DuVshG50t9pd5nzadc5erCVwcxaF2ArSI1i3TTt+o1YaAQb7s/HXBt324gAgy
         jgYP+FYvxaRWBBCDe/xraeMtzzGr5IVERgc/k3RuLiNwwhhIvva/yQOQDo+jTHRGQpxr
         3zzehGlCcegBENJvrbtvFX6V2SuqXPeB5bkGHLW4RSZS4fFo6NSMNRepxSbDLg1TeDVY
         jYVqoZGy9pQTxCbPfU5fY7/CCpcXvIA6Nbcu28mhHrcn8ezsaXmcgeAUy5aExj+GYTzC
         Tmuw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=SeVYTbo7;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711390475; x=1711995275; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=KJoC3DJTKK0LCVF75+1YwWAfzEWDMlsoIKl9Vogh1/8=;
        b=adEjQMv3bDM7JP0gcCG84NKEgSYrDVC307DqKcETNptO/wCO6xxptdreUPUfiqsO+V
         1XPtVpv/xusoExwMg2ZMov9xN0de/M1WaJWHT28sA1ywI2IRNkxo78MJvJvaefUsVrL7
         2VdkwVWgz/p6YlFXu2XdNg2D9Ijd1lC/ABKKI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711390475; x=1711995275;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KJoC3DJTKK0LCVF75+1YwWAfzEWDMlsoIKl9Vogh1/8=;
        b=jWchPRgARPU/1eexG2OwvodPchl1bP3aggf8rDmSVT2pbsUKXacusomAPQyA4IcQQS
         kmuw7QXZOsWenYGUTpLyukKWOTZEul5IriBOZVCLHIvMNJAlyF6geFtRnky7/d6gkrXY
         UJe6YGpxSwK/ieHtZtD9iROG3/NGx6uByFPD5GhOlUElIUeNVFTmoShNA92hSO3jD/4q
         c5Coc6qF+sYosG1IcDxhvQXh8HHD/+Jxyv7DvGoFvOoRQpwVimhmIIr94RlvggvM0+qL
         oeyrAVeyz4tPpHiJ93GeoquNSDpjNmqjpK3OmhPniEiV+x6ESZlP2ITxYGbrJ92fGBUU
         EnfQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVYnsbD36D57G0z6Bg5JsWupkVT3ViXZ89OZoEsAORRwh/i6MqnIaATF75j3MLgDHCerzyDHe97RhRqt/Kn2g37ao8Kn/nI3vGk
X-Gm-Message-State: AOJu0Yw4WyCUo4lPChn8SYRVzNgANbvR0wzO4jcb8gHm53FeQzlZbBuK
	6aj9PGYbNy1b2TH3TbUREXxoxi3n83hR+th0xjBWJj3rT5WZWSVgll2SfCO139o=
X-Google-Smtp-Source: AGHT+IF5F0qf3fosihcQ73oNkrSv8bdW8fNSIcWxYjcmMauroJMcT3yv+tJMexasj88OiNYSpR6SEw==
X-Received: by 2002:a05:6870:a181:b0:22a:52e6:5863 with SMTP id a1-20020a056870a18100b0022a52e65863mr689905oaf.3.1711390475630;
        Mon, 25 Mar 2024 11:14:35 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6871:7896:b0:222:6d59:56da with SMTP id
 oz22-20020a056871789600b002226d5956dals303973oac.0.-pod-prod-05-us; Mon, 25
 Mar 2024 11:14:35 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXZv54/0YdnL27O4YIhlBSkZauucA+VqSDgiwAPTTcus8oAXvNoe/Gtq/J8UCAT90cbSe5yibVpMS1TyyNnr/edCSfQuvI8eqsJQdWsNpMAv0ERhvg=
X-Received: by 2002:a05:6870:5693:b0:21e:bae6:88ac with SMTP id p19-20020a056870569300b0021ebae688acmr286978oao.5.1711390475292;
        Mon, 25 Mar 2024 11:14:35 -0700 (PDT)
Received: by 2002:a05:6808:2199:b0:3c3:d110:85c6 with SMTP id 5614622812f47-3c3d1108aa1msb6e;
        Mon, 25 Mar 2024 00:48:50 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVBKbJ4BxNaq2/jZQQ8zw+QUX6DDHDg8bLnoeFvG+bSFdO+flO19HYyRZEp52Q0buPn4C0beAGKHLUf6v/djbyTmGB0k77kCvpkUg4+CJ1DhFDV2ZI=
X-Received: by 2002:a17:90a:db87:b0:29c:7641:5b8f with SMTP id h7-20020a17090adb8700b0029c76415b8fmr8321698pjv.20.1711352929238;
        Mon, 25 Mar 2024 00:48:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711352929; cv=none;
        d=google.com; s=arc-20160816;
        b=J06tphV+cP+uj3sMZ/qdaMJTtPD5EzGAlNyV181Ks5loddTiWopY/0ZozD7qALi6r9
         ljeNoF0mW9Ek+KHIzw5OxxmFSGGoeLTrYc6TOwxFbdTDOfa7Bq2bJKpFAgr0RJ+nfZ/L
         ATLPkzGhml4diEZOj1K+czaQO8iCKOHPe6UQvnI7GXUASNptfizBWsB2ErjIaf/xAGMY
         YrL+DDlRgOqzcRo1FPzgmOe0AieS6F9pWnEWT2xIcMf3vXzWY1yyz8y/uHF/KX0U99Jh
         Y5UG2P0MW3IXXcB05sIG4Lx2lruSNCJxCFyE+rSWnete0S0cL7Q3TsFQb328+yqUH72j
         vEtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=CztY3Grx8a2umwG3125O6KQQY7AjP3tI7V5O8iMPyMk=;
        fh=42thyqLuX+U3R/biblipVYna9LUz9grvZASiaIDfzRc=;
        b=MbzOxMHvrOlc32KVeDRfDMSea+3XQHBUwyoFx4vS0xxfrUGB4PAdam5JwyVS2/hGkp
         W6T4jQmGPpc4J38CZEENQEVWs76hz2EQwOEuv7GIqyJIYjRnjCXHMt8tHK+3foBaBNln
         MiKTL0Y6E/4mismCQYgYBsoLgZWeePu4MGdEdSbx4FeMlJuYVlUNJlFhEMPbiqvwvQQS
         nmcgp5fAczK7v0kLUnnntZohI/ZzFKJr4CTATXK8dZvD2b/FF+WvXKUp+u4nbmO7I+PD
         F5bk/0B0kJkaKyVOlI3of1ihqHb3BoR09idekru0Be+L5tti81tJ+bbEw37x/r0Q2cX0
         axZg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=SeVYTbo7;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [145.40.73.55])
        by mx.google.com with ESMTPS id m24-20020a634c58000000b005f0565cb9f1si2643127pgl.58.2024.03.25.00.48.49
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 00:48:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 145.40.73.55 as permitted sender) client-ip=145.40.73.55;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 8E87BCE1056;
	Mon, 25 Mar 2024 07:48:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 06BE3C433F1;
	Mon, 25 Mar 2024 07:48:39 +0000 (UTC)
Message-ID: <9f2082fd-83d8-4140-84a2-865112090a46@kernel.org>
Date: Mon, 25 Mar 2024 16:48:38 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 17/23] usb-storage: switch to using ->device_configure
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
 <20240324235448.2039074-18-hch@lst.de>
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20240324235448.2039074-18-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=SeVYTbo7;       spf=pass
 (google.com: domain of dlemoal@kernel.org designates 145.40.73.55 as
 permitted sender) smtp.mailfrom=dlemoal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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
> Switch to the ->device_configure method instead of ->slave_configure
> and update the block limits on the passed in queue_limits instead
> of using the per-limit accessors.
> 
> Also use the proper atomic queue limit update helpers and freeze the
> queue when updating max_hw_sectors from sysfs.
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/9f2082fd-83d8-4140-84a2-865112090a46%40kernel.org.
