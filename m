Return-Path: <usb-storage+bncBDJNPU5KREFBBAXO525QMGQEQBLXEOI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x846.google.com (mail-qt1-x846.google.com [IPv6:2607:f8b0:4864:20::846])
	by mail.lfdr.de (Postfix) with ESMTPS id 73D8DA02399
	for <lists+usb-storage@lfdr.de>; Mon,  6 Jan 2025 11:57:07 +0100 (CET)
Received: by mail-qt1-x846.google.com with SMTP id d75a77b69052e-467be89d064sf185997411cf.3
        for <lists+usb-storage@lfdr.de>; Mon, 06 Jan 2025 02:57:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736161026; cv=pass;
        d=google.com; s=arc-20240605;
        b=TJy5izEOOpHDsaauHefj74jZxccW0vGzXEJ7JyR9RbJF0KC/aQQY6IT50SOHvcw5or
         YSL0uSg/GREQydJA9E96s3VLyv3E1UU682YniOfHLJYLbxSIL59C0E/baMlRW+2p+2q7
         VGO17CieQgrNKSYgHFdH7oVgmfRyXXzGSz7PN2fcW47Q4OugDVbEni++e74XIYfo8jB9
         5OvRx7s/rgpLRi8k4xnVhvAmEZDZCE2k4y0ABryxw/gSmyZZ0iDtIEuFvlvJ16MUmhYN
         iVmrAs9XU1C5ajwqMBx+0iqFm1qKGys5a7+sgYcDVy6ksF/1qEW3rBA8ZURa0lG+0sJi
         uHsA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:organization
         :content-language:from:references:cc:to:subject:user-agent
         :mime-version:date:message-id:dkim-signature;
        bh=nbNqf9IDU0mSjKPSPJVaUJVBPLejC56dOO8vy90B5Gs=;
        fh=2RiaNCBDfUXkkI7sqH5oZJX72WcWGHrr0WB2c/NlEgI=;
        b=XcwfTpEIWonh/RATlirkvTlOo/TvfyJWWS+HfG88bndh5AGWAmXgdhP+VgFnFpqoQd
         trrh7BEAkSHpBWlipmg8JAYuQnZXi4ew/Ur0uai87wJImgawV17Nk2ev9xhbalydc0Q2
         1QyzAazzMYKtF+FBr/jTLUG9T0HRij5AWx/7knagM0J2YHOArcA/nLAfAELzDrtAQs9X
         RqZhHI6OorNFr2F14O6FR3RKLzh6jPHc45Ruxz1gdpDCvA8o/+m2jNuZkSXb9vO/YKz2
         MqMH9PHjtKyiswXxMg1EK2DC5mlLXSGTXKpwhTdH3vjaYxWx6cTr7Bn3QgtSf1UWS/3M
         8fbw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=cISyFrpk;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:45d1:ec00::3 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736161026; x=1736765826; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:content-language:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nbNqf9IDU0mSjKPSPJVaUJVBPLejC56dOO8vy90B5Gs=;
        b=H9vzxe0MEG7/ZbXZNUXCt31hr5p4koa+WXbyL7Rw6cD6k4uxy49peZ0X5Zlmh4nWx+
         7S/nel0vyIsKqHFbYNbIoJEqXXp5RvV9ilbI24PneGeZiqmoPoiNOz0AnyWxU6xM8wiV
         AS2yFGXHsjBwmc/ZejKp8GCk8tMgHXneAICh0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736161026; x=1736765826;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:content-language:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nbNqf9IDU0mSjKPSPJVaUJVBPLejC56dOO8vy90B5Gs=;
        b=K5THwvjLfAVsxdDEwL4WUd/HRKdbyaZ02HMNNd144DdKgB+MPkp7WKUVOWWurY2t2Y
         cK7POCDDBx2Q9pTTjq6NeCqlkdn4qvFGPF2vGCsduHj52zTJbs+FTaDdMsHEAWUs+cQp
         5EFXCyQ6uLAclMtM7kfm7YKPf7e9mPFdjgwFW9nhnakJ5gno3MnG0w/WcHO9eITb0Wsj
         fQA27YZhj2f8UZrNduE1+teMjR7LgcDfR+O5Td9ujnoKhb1T8RJakFhPe/xokxbw0RCG
         mMAe4Lzta7QJMKllbMFdoJkcNCMV83TiQGvRamsWbQBhENOPp1BZSPKYRslsDN2Wx3nJ
         jMrQ==
X-Forwarded-Encrypted: i=2; AJvYcCW+JGEkXiJwdotj0fhnrJAAhtruphJZMaItvCDIlBtPsPdRtB+JIQanmOd6S6xUjD0Aok1qMg==@lfdr.de
X-Gm-Message-State: AOJu0Yy/Ey23VPTY71IUxAEcJfysRuRDVHKGX8U87EApzskdQiTBi3oQ
	gvBfiejIpBnO+oc6HP6eYEYOWodLF4A3Cxx83gF9XKhZ5aNQJ3Oqrv6HfC/RQLg=
X-Google-Smtp-Source: AGHT+IHX0UU0eQSgKg8cuUdlHeXyd4drhJOFWK0gNO3THTy7qOnQcP7fHUNFY0mnUKzSF6X79oLbFw==
X-Received: by 2002:a05:622a:1791:b0:467:5da6:808f with SMTP id d75a77b69052e-46a4a8cd497mr762586161cf.22.1736161026418;
        Mon, 06 Jan 2025 02:57:06 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6214:4a09:b0:6d8:aa9e:3e08 with SMTP id
 6a1803df08f44-6dd15499950ls88985226d6.2.-pod-prod-08-us; Mon, 06 Jan 2025
 02:57:05 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXkd/bi/NqqXxfRcQGtrIb7GDyEbnvl5rLSnZXQDRLCcyHV4AMjUFCRjUrQWP06eAFXoM2SufghA3AD9w==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6214:20eb:b0:6d8:8a60:ef2c with SMTP id 6a1803df08f44-6dd23307d09mr1104235936d6.2.1736161025643;
        Mon, 06 Jan 2025 02:57:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736161025; cv=none;
        d=google.com; s=arc-20240605;
        b=M4MFBHghsFhxr+VF//zpwoSaA1I4aE/sHfuRpcy6yH3vgo5393PZpuaMB4LMyarB3Q
         UWYHep8OCG6Z7XUq5lt/V9T024P3pbR9nox9KQIw8Buw8PoCMMNkH1Tovw1JW+qYyRDs
         MtbbMWS8EjfsgG7gIejzEF5rmV6DUbC050jfkcoK0iEIQ5jH6mmuioAVjBMbXVeHfg/k
         f+Pfu/IHA69xW8e194D1lv8jT/PLUAaOqPUCciNZCfbG0MNnsg8y+jvVionYrPNvAVgu
         ZCeZ2jQHySPeUEH3RYrvhJxcnLyX2GZ+8D2jPraKI6sFjbWO1agR/LA/g+zOHd4ses9D
         x/Xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:organization:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=vcZmHzYzzo81ujg9J2d5MfxCqnXE3MnZ/yOoZtU1fiI=;
        fh=3Nfe+kP66Bl3obRELK+1G2M+nc+7E6m8Gp5FJCUgOQk=;
        b=jLAQyubfpctf4zR886WsQQh/lGEnd7gFF6uq1FdLRw9kZzwWlQFd/9W78XiTZEfKkR
         LSVVF0Bk/kvX46MgQW/hpdpd6yckN6DNsDAFsqJsHwm+pL9aIzLmA93lKefXG+iVlc1f
         Kyja69ijVRW5vdlZMS1EirtXa2SJ5mpgbyLgRMBdRJiA823gjEebEAiVAHWIb9qXlUaO
         ObUbK6hV+JheItX9QTsF9hEW/wTKRQc8sY/MTcgDhTiE2H7oTrr0tNw7z3EMFgPTpgUM
         jhoFdTmqLvlG+ihD72pn+Hfb8ggMbHvwY5hMRnYFrEii5Fl/GXCbdBqUyXsw9+lwK8Vi
         m9Ow==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=cISyFrpk;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:45d1:ec00::3 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
Received: from nyc.source.kernel.org (nyc.source.kernel.org. [2604:1380:45d1:ec00::3])
        by mx.google.com with ESMTPS id 6a1803df08f44-6dd1835da58si456256186d6.474.2025.01.06.02.57.05
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jan 2025 02:57:05 -0800 (PST)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:45d1:ec00::3 as permitted sender) client-ip=2604:1380:45d1:ec00::3;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 786D5A414C2;
	Mon,  6 Jan 2025 10:55:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AF0C0C4CED2;
	Mon,  6 Jan 2025 10:57:03 +0000 (UTC)
Message-ID: <07353499-b62d-488a-9575-12de5d9b6f2e@kernel.org>
Date: Mon, 6 Jan 2025 19:56:19 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 06/10] virtio_blk: use queue_limits_commit_update_frozen
 in cache_type_store
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
Cc: Ming Lei <ming.lei@redhat.com>, Nilay Shroff <nilay@linux.ibm.com>,
 linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
 nbd@other.debian.org, virtualization@lists.linux.dev,
 linux-scsi@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
References: <20250106100645.850445-1-hch@lst.de>
 <20250106100645.850445-7-hch@lst.de>
From: "'Damien Le Moal' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
Content-Language: en-US
Organization: Western Digital Research
In-Reply-To: <20250106100645.850445-7-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=cISyFrpk;       spf=pass
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

On 1/6/25 7:06 PM, Christoph Hellwig wrote:
> So far cache_type_store didn't freeze the queue, fix that by using the
> queue_limits_commit_update_frozen helper.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

This should be squashed in patch 2, no ?

> ---
>  drivers/block/virtio_blk.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/block/virtio_blk.c b/drivers/block/virtio_blk.c
> index 0a987f195630..bbaa26b523b8 100644
> --- a/drivers/block/virtio_blk.c
> +++ b/drivers/block/virtio_blk.c
> @@ -1105,7 +1105,7 @@ cache_type_store(struct device *dev, struct device_attribute *attr,
>  		lim.features |= BLK_FEAT_WRITE_CACHE;
>  	else
>  		lim.features &= ~BLK_FEAT_WRITE_CACHE;
> -	i = queue_limits_commit_update(disk->queue, &lim);
> +	i = queue_limits_commit_update_frozen(disk->queue, &lim);
>  	if (i)
>  		return i;
>  	return count;


-- 
Damien Le Moal
Western Digital Research

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/07353499-b62d-488a-9575-12de5d9b6f2e%40kernel.org.
