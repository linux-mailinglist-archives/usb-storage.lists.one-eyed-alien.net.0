Return-Path: <usb-storage+bncBDJNPU5KREFBBWXY6O5QMGQEV2QTXHI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x45.google.com (mail-oa1-x45.google.com [IPv6:2001:4860:4864:20::45])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EA0CA03BC2
	for <lists+usb-storage@lfdr.de>; Tue,  7 Jan 2025 11:05:15 +0100 (CET)
Received: by mail-oa1-x45.google.com with SMTP id 586e51a60fabf-29fd2a9dd35sf11980471fac.1
        for <lists+usb-storage@lfdr.de>; Tue, 07 Jan 2025 02:05:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736244314; cv=pass;
        d=google.com; s=arc-20240605;
        b=ILHCRDePv5XTxrnkojRGrtwz+utvVQ37pgnZvk004vh7UgG3/cBFVsbO+Cwvazx7xK
         EPJh7XnLDRxN+kIMj/nobTNDeGoiKPx4bNOUeHijSvXcszKcfAgltkrVCG0FI0Vj7mNY
         8PAepyctplmjLpfu+r8rbmU4GDir8AiUuzYKu9+O4OuBniyv/j2PMdKJP4sbi/Q6nx0Q
         0/W5RQhjP/LPHxWE3JIGFS4W/DxdBrxzz8JmeZSrJ+HsVdK0mSkM/VswzVmJZT51h059
         eAQ3gT2/0Y1HiQi1RZy4t+aB6FeTz0jiuvqohjyLY/+wiblOVl/XKdYiCbYz21aPevuG
         xwLQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:organization
         :content-language:from:references:cc:to:subject:user-agent
         :mime-version:date:message-id:dkim-signature;
        bh=M7VCXGpzULjLbDjxXEMgE7mN4VnU8NOXjBVH6ASa3jg=;
        fh=pK0PUtLV0ujrVcJ4PyiNR2QJZWPbIfzbsS/fk7vxZ2M=;
        b=Ehm3K644/W8Qfnh8a8AkEXktKuXFBbjYTE5Mmdhxc/kXczeDCbQpSeMiwkBDtg+B/f
         4vETd3I1KcB+k1otAVihiiDEWW83dDBSzWRaJ5Mv4ZsDi/Sei5EyKhbzEiAbsMAaGdld
         qb+SmKflv0BscXbd3V/VzEvNnBp1CgLFeizUd1kYJUUXNatrqZwOwT3EqgQeR+YMVkM0
         ze5Qfetn7QgnZ0j0s/lRBhw3zS3kQnL4Tcadfx3cIV02sYlG7nklb7YoBZ/rxG9/VGWq
         bb6Qqwo9QqfLE/M+v+mKwS+rogBndsguERcNDHaqQE6A2kk9YGRWa+8YQi0Eo4DFTlIe
         3SIw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=RuawTMIQ;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736244314; x=1736849114; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:content-language:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M7VCXGpzULjLbDjxXEMgE7mN4VnU8NOXjBVH6ASa3jg=;
        b=D+YVMO76LMrtzElKrbteb2en5FOq2+aU4sFyi7wOSi3v1k+FPepDIOxwGrMXY/KaNh
         rXb+vEf4jQzXMOYOPnO+S9aQet6y/GnlAhImTHhVP/DSYzAb4KrHo1Z0EgKdnVQ47mud
         h/GXf8tMdeNTJk0VqXtstPUQ6SPb5Wgpinf4U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736244314; x=1736849114;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:content-language:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=M7VCXGpzULjLbDjxXEMgE7mN4VnU8NOXjBVH6ASa3jg=;
        b=mWhl+hVqQA2zvAC4CYozBhZxrAHiBNAQj9SEhFIjazrUOryuwR39FgUsEgmUVf8QcE
         o8YeeLSlR1Ouy/DNLzhW511Z7pl1NM30YT/GOcgCeFAWP2SMUYpXs16zpDUq41WxtViB
         oCkZwnytRal6KCzHopFzkhlqY6iRMQ7chQzfIAoL8TA+X1ntGTr6cXbg19gOiXGrCurv
         gTzbMt3SHq015uYnKOi8JywuTieafZ16t3odYCKmay69as52tn619H94xOqdMVt9HDTI
         hW+Du4n5C+WY4DWzl04PhpBVjCiQLgiG/edtWg6SbwS7ZJExKKiupIgWaMuQAnKHUZ2j
         8LMA==
X-Forwarded-Encrypted: i=2; AJvYcCUGL8fbFNk0JjFI39cf1f8BnRecxnIAG8N0iHWjFAKJbBIjOvH28Z41ciifctXD2hSLDgqchA==@lfdr.de
X-Gm-Message-State: AOJu0Yx6epcTm1jn6ylGmBBVG8xb17UeGI5zMaKwN1VEJAI7Oarzh8bi
	C8ExkUXz9puXEtfNnC7Ju2CBms5a21zBi8/UJ8JHslBuDBVOkWLLDSC1KN+vAF8=
X-Google-Smtp-Source: AGHT+IE2sA4ABKvmQDyHIw2qsHYhHIycROvWMElVpBxBZyeqTNNvWAk2Gx0cgKG0Xr79ZR8d7M/MVQ==
X-Received: by 2002:a05:6870:ff83:b0:29e:3a26:c018 with SMTP id 586e51a60fabf-2a7fb40f0a7mr29565539fac.40.1736244314282;
        Tue, 07 Jan 2025 02:05:14 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:a991:b0:29f:f1cc:36ef with SMTP id
 586e51a60fabf-2a7d0dc199dls1360633fac.2.-pod-prod-03-us; Tue, 07 Jan 2025
 02:05:13 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXLIM9vdyFa9W8MVg9NSAkZmrJ6bbJ5wz1l3K+yhXghFRpEXQfYzRjqNpukmupe/omGzpOfWn1OhDB9Wg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6808:23cf:b0:3ec:d34f:4c6f with SMTP id 5614622812f47-3ed88f3def7mr33275014b6e.15.1736244313568;
        Tue, 07 Jan 2025 02:05:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736244313; cv=none;
        d=google.com; s=arc-20240605;
        b=RwnCTdt4GH9Z15ecbfTSoh3UrJmzvbuH3fK+teC2ys0SmAj5ppLK60JbekxvIu2lYp
         mnuEU9lJ2fGvXrlfNBL4PXSndO4MAJsIyP2Yern9aDwYGkWwCKwh7kTPZxjVgX0AlNqs
         XV5knlH8kqFFMv2UMvi3rdBCd89bF8itpr19OtCEfOUZb82t/czkQwwsQsOl7IToEdey
         fj4nCQb3T9KJ078/UpaVHhQoVToAmXVgMaP3D4N06ufg9veqizT6GeAd9SkJGeA/CpAj
         +PfpeWy/cF9g7oNSul8YTSam9xs+mfIvNC2yUk2Tqvvz5B6D18/aFDM8IIgv6iZhYxAx
         /d/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:organization:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=szouDxqlNXyVt04X/vqQp4vwdcj5rf3Krj8UZR9AhPg=;
        fh=i1lazSQvwm0uMbBgjLZvsDbOHtpcdX7/txCqPFxtsys=;
        b=RlJ6H90c7g5yyPBlDjOsWOWNS97EP6vwqrloo0Gl/PJ9DwerLTX5VN4TB+qq0cwK1R
         sv9XulRu8rWd8V/LNXDEpE2fuppVijRHYpOcPNxXqzmDylO0uPtuUsdVROtuEWkoE3HC
         FtvZAd8v9OQyo0C0ry8QKYr+k7f4YSCHMBVRGNRvOny3D0zhgy/ORgHPbGCjHdKcP0cX
         wrcsaq6n6iZ9Ai7deAHCPeLA8ODwgcgAPbqlalhggQSMww9wk+rxbv3TUCzAc45+U5sk
         AcAQn0TVMM9IVEqVp1rVHPlYUFCkMJm/mcZtGDbfSAF+SKeaO8wE9jbBmdqwEnIpRibB
         zjOQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=RuawTMIQ;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by mx.google.com with ESMTPS id 006d021491bc7-5f4db5dd6f0si24337253eaf.39.2025.01.07.02.05.13
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jan 2025 02:05:13 -0800 (PST)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 44E285C5A89;
	Tue,  7 Jan 2025 10:04:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E7711C4CED6;
	Tue,  7 Jan 2025 10:05:11 +0000 (UTC)
Message-ID: <68c4acb7-8d2f-4163-a0e2-c9c5395dcedb@kernel.org>
Date: Tue, 7 Jan 2025 19:05:10 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 2/8] block: add a queue_limits_commit_update_frozen
 helper
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
Cc: Ming Lei <ming.lei@redhat.com>, Nilay Shroff <nilay@linux.ibm.com>,
 linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
 nbd@other.debian.org, linux-scsi@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net
References: <20250107063120.1011593-1-hch@lst.de>
 <20250107063120.1011593-3-hch@lst.de>
From: "'Damien Le Moal' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
Content-Language: en-US
Organization: Western Digital Research
In-Reply-To: <20250107063120.1011593-3-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=RuawTMIQ;       spf=pass
 (google.com: domain of dlemoal@kernel.org designates 2604:1380:4641:c500::1
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

On 1/7/25 15:30, Christoph Hellwig wrote:
> Add a helper that freezes the queue, updates the queue limits and
> unfreezes the queue and convert all open coded versions of that to the
> new helper.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Reviewed-by: Damien Le Moal <dlemoal@kernel.org>


-- 
Damien Le Moal
Western Digital Research

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/68c4acb7-8d2f-4163-a0e2-c9c5395dcedb%40kernel.org.
