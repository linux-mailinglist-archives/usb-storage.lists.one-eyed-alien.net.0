Return-Path: <usb-storage+bncBDJNPU5KREFBBCHH525QMGQEV3EYLVA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x845.google.com (mail-qt1-x845.google.com [IPv6:2607:f8b0:4864:20::845])
	by mail.lfdr.de (Postfix) with ESMTPS id 5447AA02347
	for <lists+usb-storage@lfdr.de>; Mon,  6 Jan 2025 11:42:18 +0100 (CET)
Received: by mail-qt1-x845.google.com with SMTP id d75a77b69052e-467b19b55d6sf187576641cf.2
        for <lists+usb-storage@lfdr.de>; Mon, 06 Jan 2025 02:42:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736160137; cv=pass;
        d=google.com; s=arc-20240605;
        b=M192G81wr6141XPg8Ud+qURhdN3j5YMGsjPepiSEr7/tqfBKK3mMzpSHiY3ne21x/s
         WCvavSLPCpGaQw6J3IHRqhK3CUNXRicLvOjop7cQX0dNeDJGRrv22fkV1m3ZwFoBHWTJ
         YaEU2t19LIvvgiD+f/V3dzL/HtczaNLXVAiF8z8xgOfLnEKRKye5OXtdPAX5EEJKC1uE
         8E369KghL7UyiuFg+Xg6aR+0HVCOgjLZgU5OFjNdpR3jMBxRYIciGTMOF1sGlwjxasTt
         do1KSi+DoGhoEBFF4gTcNooOecyB5vIMdddnE5bcoCgTWfeNiUS47VfjFDpCuKfvodmt
         g4NA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:organization
         :content-language:from:references:cc:to:subject:user-agent
         :mime-version:date:message-id:dkim-signature;
        bh=B00fjcEdEtwLW1b/7deEyHpGQEdBOj26tz80E8KYJnc=;
        fh=gTigjSTIdA1nfsotBb5E97Gu+gtTtufAowngEYw7wRk=;
        b=j3TO7wjwwgR54a2JQlaNbridTNlQuz8T2eG465l7XISfz068DnSc+BBTnA5BUK4oZF
         74CGlTodnNkR9U/F0XFqdfXZD1WObFbt81Mg7PRbwCr3zwmqPkVxyeExEGZWIKdS9va2
         xCN21HxqSenGcIDHnsuyvN+O+m15D8ju7DoqOu/opWz5HIo2J8OHesWcMovKDBYmHTzY
         CNsqH8l2KeWrSMbtBlPlb7z7RyjPYqER3HOSmUgySE/BORusetMYv5ao2sTrxS4/XtRc
         qLACWQzowY3K2w+sqDu01T0rrGr5psmfqBFtejPHEFnDilb8rz10Jd+TsZVTmpDwt0+B
         ekOA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=hUODWLJY;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 147.75.193.91 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736160137; x=1736764937; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:content-language:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=B00fjcEdEtwLW1b/7deEyHpGQEdBOj26tz80E8KYJnc=;
        b=QXwZexZ56L87favV4iMfIjCK/6lkWYi91HGdYbGSMM9Qk1hJIZ4RWTSdqZW1H5wLVz
         JjW0InWS/7EZO4IRVqKP22kCnz5B4R1+lHP7ZChFfvJVKSkux5CifEzc7TDCWQg5rCYw
         MHO9kutCe/SsRgmsYe30l0ndaSESJzzU8SMm4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736160137; x=1736764937;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:content-language:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=B00fjcEdEtwLW1b/7deEyHpGQEdBOj26tz80E8KYJnc=;
        b=k5PFLlvhDk6Fx2nkm0m5j7uWGjNWT8BQwahZs6B7f7Yu/S3qNZmtjuay+O3xAf41gm
         3f2/QKjU5stEEXQnPSAV5DKbIq/bjJIq35keUkIzyYyXh4bs+b0WNXH752S/H9++QlpC
         rrMzlci83m919Xva804P6rjMgk/RCzI4TtxuQxMp7tX8pPXxP++TGFJ2JoKaUfp0OG8D
         E3qVU7suyipPVsncSJYzUX1ck4o1hkl/akyHX+6HJpc8dgIl7KudoJ/KcchHPUfF6CNN
         GUlBsY535cqnfgDhbXJxlT5JnSkKP75DNi6zgHeCmbij3Qne8A2P8VZAa5XWzjLOkdqb
         9TLw==
X-Forwarded-Encrypted: i=2; AJvYcCU2nJ4p9s+fUSNtD7L4r3Se/dxdmXkKvfqGqjfv8j7kX+h70d8cvIvLVxi6vmaaEcOqSDARug==@lfdr.de
X-Gm-Message-State: AOJu0YwPNHky/MWe6srk7Mn6l0kB4qj097k0TTuOGF1BvuIHd2kk5Bm1
	jzv6sltgZ18jerq3EUfgmEYI6l1jGrtUgLlCjLGi1fCzLdi3FkgJQFgSatKdcXc=
X-Google-Smtp-Source: AGHT+IFE4ptP2ioqFi0ZLgWjJapkU34qfpYAJR7wMAu33FEncrykRLNwML/yuwEWCdLcxboLxsqFIQ==
X-Received: by 2002:ad4:5ae9:0:b0:6cb:ef8d:b10 with SMTP id 6a1803df08f44-6dd2339fb2cmr1127644936d6.39.1736160137027;
        Mon, 06 Jan 2025 02:42:17 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6214:4a09:b0:6d8:aa9e:3e08 with SMTP id
 6a1803df08f44-6dd15499950ls88810596d6.2.-pod-prod-08-us; Mon, 06 Jan 2025
 02:42:16 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWE6FzoTTHcHDgiV0Fn2fXkScC9dNEPEXFnqsIrRfZbKSjixceR1XCSbfKFV5DcKZo49G9dWQ84neYnvw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:620a:2991:b0:7b6:773f:4bd5 with SMTP id af79cd13be357-7b9ba743a18mr9101575585a.20.1736160136092;
        Mon, 06 Jan 2025 02:42:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736160136; cv=none;
        d=google.com; s=arc-20240605;
        b=dtVoMBTI8qUJjKBSgej/pNUSrg/32V1DdbtZLlmZihcJz8am3fWNVlRpnqLw6mJJ7z
         9XLdd2w8wP58yNZaBN7dEfoetQX+LCFOg7cmB+Z6b0e1+tpbrDe/MmcMUjZRp0mby3+M
         ozKykMTYGfySXujvNwc6Z3noAdE4d4d0SayzdkO3a5sSR1hCUD8BdhbyZWcJa6qT3ZgD
         eRyEINbYNMYaOQYV3tKChxi6LbEAJNqkJXithMJ/aJvIBFfUEQC8BtX+YtkSoYzvfOfS
         efmycmS6fwcFjyxt8FrwdazL41Y176ecJnpuLOz2oMRMEB53aEz9l4OHsruaVQ5GEclr
         FSpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:organization:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=bQ6P69FJf7ylXQqOja4A97U45gCawPi/uZomYF+rIgc=;
        fh=3Nfe+kP66Bl3obRELK+1G2M+nc+7E6m8Gp5FJCUgOQk=;
        b=CK/agktMS/Tur8m20eVhKcRbMsjksw7VvAkLQY9Clu/+wgw7Yo+urr8ARh/Ozi3ihx
         /Bg6tl82OvmezYZfuZA5WNkm+TRsflahCnQlKA0OCo/t/Tqk0q7cFWBwxvqvVDsex4hU
         bluOhHsK5PPdDfwM7b9zoH4bSaIHHNlnUIq9PFheYB1YUijlBH6xwAnhSEUmBSEOD2dS
         IJIC6Z9Ty1rsq7Azv6873N9BRIB3vDl0VkPdFFXyj16uSb4dl+jyFUH1PvkxtvEvb5we
         rs/u+COtUrDIkc1q1p7BIwS6kIcnANC82ZRdcsqlFZ4xk/NscfFB4H6jHExRncAX9Z40
         lPDw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=hUODWLJY;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 147.75.193.91 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
Received: from nyc.source.kernel.org (nyc.source.kernel.org. [147.75.193.91])
        by mx.google.com with ESMTPS id af79cd13be357-7b9ac2ab617si4270275385a.70.2025.01.06.02.42.16
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jan 2025 02:42:16 -0800 (PST)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 147.75.193.91 as permitted sender) client-ip=147.75.193.91;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id DF4BEA4145E;
	Mon,  6 Jan 2025 10:40:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B58D2C4CEE0;
	Mon,  6 Jan 2025 10:42:13 +0000 (UTC)
Message-ID: <c760f509-8902-429c-bf1b-526b1043c483@kernel.org>
Date: Mon, 6 Jan 2025 19:41:29 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 02/10] block: add a queue_limits_commit_update_frozen
 helper
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
Cc: Ming Lei <ming.lei@redhat.com>, Nilay Shroff <nilay@linux.ibm.com>,
 linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
 nbd@other.debian.org, virtualization@lists.linux.dev,
 linux-scsi@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
References: <20250106100645.850445-1-hch@lst.de>
 <20250106100645.850445-3-hch@lst.de>
From: "'Damien Le Moal' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
Content-Language: en-US
Organization: Western Digital Research
In-Reply-To: <20250106100645.850445-3-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=hUODWLJY;       spf=pass
 (google.com: domain of dlemoal@kernel.org designates 147.75.193.91 as
 permitted sender) smtp.mailfrom=dlemoal@kernel.org;       dmarc=pass
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

On 1/6/25 7:06 PM, Christoph Hellwig wrote:
> Add a helper that freezes the queue, updates the queue limits and
> unfreezes the queue and convert all open coded versions of that to the
> new helper.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

[...]

> diff --git a/drivers/block/virtio_blk.c b/drivers/block/virtio_blk.c
> index 71a7ffeafb32..0a987f195630 100644
> --- a/drivers/block/virtio_blk.c
> +++ b/drivers/block/virtio_blk.c
> @@ -1105,9 +1105,7 @@ cache_type_store(struct device *dev, struct device_attribute *attr,
>  		lim.features |= BLK_FEAT_WRITE_CACHE;
>  	else
>  		lim.features &= ~BLK_FEAT_WRITE_CACHE;
> -	blk_mq_freeze_queue(disk->queue);
>  	i = queue_limits_commit_update(disk->queue, &lim);

You need to change this line to use queue_limits_commit_update_frozen().

Other than that, looks good !

-- 
Damien Le Moal
Western Digital Research

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/c760f509-8902-429c-bf1b-526b1043c483%40kernel.org.
