Return-Path: <usb-storage+bncBDJNPU5KREFBBGVC7G5QMGQECGAEQUQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf46.google.com (mail-qv1-xf46.google.com [IPv6:2607:f8b0:4864:20::f46])
	by mail.lfdr.de (Postfix) with ESMTPS id B9F10A057E1
	for <lists+usb-storage@lfdr.de>; Wed,  8 Jan 2025 11:19:07 +0100 (CET)
Received: by mail-qv1-xf46.google.com with SMTP id 6a1803df08f44-6d8f51b49e5sf287190986d6.1
        for <lists+usb-storage@lfdr.de>; Wed, 08 Jan 2025 02:19:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736331546; cv=pass;
        d=google.com; s=arc-20240605;
        b=GCCLpPzdkmI+MKM6EljDX3MacBi1Hvr49dz2skQdu98wlwrubO4r+bK0OMG3+vVfch
         8Ty0mqPgGJfBT+wMK0deYnMPJJUTEk+elEefqrTOrb0MqIv+ZWh48cflBdmApROkDaY8
         NZ2+2xu1592RMSzx3RLu09CqfHeeQmglwSHnlmzRgckdcjMcrv2m3VOcj7/iIIgWobTi
         A7qYxmEZa00/47ebYZNdAQAFjDPNBpGosHTva8iUmlhy4UE1JRd5I5qY64Uvg9I8UAhy
         /cz5Xy7xBzcw4UL6XALIpyjKo7R8z7MpvKB7WAw7EUKP25zcSFsa8C/PAEzwxz7l3oPr
         LkKw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:organization
         :content-language:from:references:cc:to:subject:user-agent
         :mime-version:date:message-id:dkim-signature;
        bh=qxju+7lm22wbCzAJEMIuFEOVhVCzKN3PTWsketIMcPU=;
        fh=w3LBXwFQ6W7qpggbqCkkrj9DrZsKDn57wls4lVGL4WY=;
        b=VTmkPOvSPZvbywftvSz3D+q4pMQv1/4YSWMCdTLjWcSTKXcQqP1/xvj2nGYKAyPndF
         Ok6+z4PSaso0haXZQdE1iSxpSzGWjQBDrRKmTXRUIQUegLpO3z4fI7aQiJpA1Rmfk2k0
         iSNKq3B90aojLfEmZknwhYkt85f/DGA3rdOPTHxHrX2rxBa9nRBuV0trwr3yak1j5960
         J68vBESpnndTgFQNJmT+IPtVQhx1TrRevRPZAzQO1zFGavMSsN+94eurtpx+wb0kfxW5
         YhYnWi/vmC+/vOSCdqSRINi/d+9g1hjR8EfuYTe7EZ1u/6AAETK/O6AqufWVL2FatSQJ
         XGvg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=jvKNWS4v;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:45d1:ec00::3 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736331546; x=1736936346; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:content-language:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qxju+7lm22wbCzAJEMIuFEOVhVCzKN3PTWsketIMcPU=;
        b=ArcrueS/jw2dkI5kvKsGNnR9J1vpcQO67Um+YK9SVHfBIJO6y0h9tsk5wkfUgqHAEn
         nt6k30sSTKxT2KaeytpnxpL98Wzwk1Kl0NhCZaYmFU+fU3JmMzuLwHIcxVipDmI7Br9T
         0bb6WjTkYbzKSOmE+TLzVEyMdHz4ZbgSkLJ94=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736331546; x=1736936346;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:content-language:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qxju+7lm22wbCzAJEMIuFEOVhVCzKN3PTWsketIMcPU=;
        b=fUBD5jtKGJg73mpKkoRAwrH4oTepO7GOM89r1eXolOsXwlL+xnzP3yQlulabkwj1SM
         J2bsUbC/oFVBtlj2B/ikgFTpoRw1VIrdujYvnDm7h+iApqd7B0YbtR5/W+m5oNqw6olu
         ik4aqtB4zDGeIB354tzhjXP+gCiBy2seH0NjLKEDPmLv1vS9hApazrG3ni72qz5hqCez
         0MVl40YDAHpcyCuIiWcnvGjuOC18wbW4cXa9zjRCOqV+LkOSRtf3MhXjUNJ5pggkr1a9
         nRyhkayRqVCzevNEUZiyDj+Q9tze86h8YJQa5rXYbuRZoB7L0wppjLxVTu8qZITVa3UB
         XyDA==
X-Forwarded-Encrypted: i=2; AJvYcCVfS5VprPlwDinK8ttpB1FBggwp/HMWBov32LfL3i4CZHXoakAmIgaokTcuwBZe0l+eJ+ZsbA==@lfdr.de
X-Gm-Message-State: AOJu0YzJ3qp++FQoW10i2U1RUAbKfQAZqv5rqS7vNof7mN+TdA+nzioU
	cKdjHA0fp9rRvi5efF31bL9XNOE+lRMVQ/bWPDl3UDs10fTuRBN1NfakDpuKMso=
X-Google-Smtp-Source: AGHT+IFZOOTruY9x0zD/GEgHdXSQ7kUQhJ0TtsocczMOQ14oz05N4YDFgYZSSpzFeAlxD9DAFZromw==
X-Received: by 2002:ad4:5747:0:b0:6d8:8fdd:9797 with SMTP id 6a1803df08f44-6df9b2b1a16mr39064546d6.36.1736331546650;
        Wed, 08 Jan 2025 02:19:06 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6214:5a06:b0:6d8:f050:cdf6 with SMTP id
 6a1803df08f44-6df8800b527ls26019886d6.1.-pod-prod-07-us; Wed, 08 Jan 2025
 02:19:06 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWwbGdxxfDBXMFIni2HjMdheKG4NvtkvsVB7+hbg+7bR6xr3fjAYzB5FMCe+A5fmXf65sRIom4cBojirA==@lists.one-eyed-alien.net
X-Received: by 2002:ad4:5d6d:0:b0:6d3:b936:60d1 with SMTP id 6a1803df08f44-6df9b2b34bemr37586136d6.33.1736331545847;
        Wed, 08 Jan 2025 02:19:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736331545; cv=none;
        d=google.com; s=arc-20240605;
        b=LyQyx97br+G0V7WJEJNnL/qkysJHRw+KaXt8VaI/JopWbCRGMAlCbZ+QUcMN9C11CO
         dUjozCxm+vi3sGs0YTWLViTFKcPMaxdVp1YMv997KSxPPfagmtLGurWSFFPW3rBy54RI
         DK+svnnovW/AGCHLI2RX9+etc7rvcfKlScPKRUm7OCtDGyYPEY8c44v5nR825Z3dwL9i
         KVCWiNzTkQxnVIe8218OICYKrtZlUrSC/Hwk8Ez0VkPJcmrHSa+sBPTQTwZUnn1FOioW
         IQLcKnN3gHOy+ahyeYCckU8VqHyfyEWRHBu0eS1u5V2dJ1GdPYbnr7Tgv5oWhCbfgxA+
         kdHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:organization:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=MCI+7xV/HCNzqE2MRTPEy2ckmf1AuTtWqGP+r5bI7Nw=;
        fh=i1lazSQvwm0uMbBgjLZvsDbOHtpcdX7/txCqPFxtsys=;
        b=IdEwAQB+SH/aT0KKtJ/NHlDYqFrePVZSdOxR17qzjkBihTA/q5SFrc5evaALWSpuZq
         Ot0bXKv6ljQzwH/5MOJH4WFl/2XBOOJG6my5O9N1XZBIiuqCKGtB0w4rnkuvZgOZHtGM
         coWZAKHNijbX/+KT9fbpUFoL0YrMi8Btrq15Ei9KVU1Zv282XirjVu3cR6qUBdvxYdU7
         VR7fjSpQHiU5CocF7Nljr3RkhH6+ouDQ4yW2VlQUxJZUfP1Ti2OJRXN9YnycjdmETsDf
         xp9Twu3/CVMYURku2KKU/2fkFEcn0fWaGPISbgECZWXnwLPixFrCWPMRVM8D6QH308B8
         sbTA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=jvKNWS4v;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:45d1:ec00::3 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
Received: from nyc.source.kernel.org (nyc.source.kernel.org. [2604:1380:45d1:ec00::3])
        by mx.google.com with ESMTPS id 6a1803df08f44-6dd18136e25si463415426d6.149.2025.01.08.02.19.05
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 02:19:05 -0800 (PST)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:45d1:ec00::3 as permitted sender) client-ip=2604:1380:45d1:ec00::3;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id D0B9DA4073C;
	Wed,  8 Jan 2025 10:17:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 09E0BC4CEE0;
	Wed,  8 Jan 2025 10:19:03 +0000 (UTC)
Message-ID: <878a32c6-fbee-400f-891d-09db146db572@kernel.org>
Date: Wed, 8 Jan 2025 19:18:20 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 05/10] block: fix queue freeze vs limits
 lock order in sysfs store methods
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
Cc: Ming Lei <ming.lei@redhat.com>, Nilay Shroff <nilay@linux.ibm.com>,
 linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
 nbd@other.debian.org, linux-scsi@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net
References: <20250108092520.1325324-1-hch@lst.de>
 <20250108092520.1325324-6-hch@lst.de>
From: "'Damien Le Moal' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
Content-Language: en-US
Organization: Western Digital Research
In-Reply-To: <20250108092520.1325324-6-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=jvKNWS4v;       spf=pass
 (google.com: domain of dlemoal@kernel.org designates 2604:1380:45d1:ec00::3
 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
X-Original-From: Damien Le Moal <dlemoal@kernel.org>
Reply-To: Damien Le Moal <dlemoal@kernel.org>
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

On 1/8/25 6:25 PM, Christoph Hellwig wrote:
> queue_attr_store() always freezes a device queue before calling the
> attribute store operation. For attributes that control queue limits, the
> store operation will also lock the queue limits with a call to
> queue_limits_start_update(). However, some drivers (e.g. SCSI sd) may
> need to issue commands to a device to obtain limit values from the
> hardware with the queue limits locked. This creates a potential ABBA
> deadlock situation if a user attempts to modify a limit (thus freezing
> the device queue) while the device driver starts a revalidation of the
> device queue limits.
> 
> Avoid such deadlock by not freezing the queue before calling the
> ->store_limit() method in struct queue_sysfs_entry and instead use the
> queue_limits_commit_update_frozen helper to freeze the queue after taking
> the limits lock.
> 
> (commit log adapted from a similar patch from  Damien Le Moal)
> 
> Fixes: ff956a3be95b ("block: use queue_limits_commit_update in queue_discard_max_store")
> Fixes: 0327ca9d53bf ("block: use queue_limits_commit_update in queue_max_sectors_store")
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: Nilay Shroff <nilay@linux.ibm.com>

Reviewed-by: Damien Le Moal <dlemoal@kernel.org>

-- 
Damien Le Moal
Western Digital Research

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/878a32c6-fbee-400f-891d-09db146db572%40kernel.org.
