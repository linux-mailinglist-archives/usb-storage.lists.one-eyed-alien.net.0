Return-Path: <usb-storage+bncBDJNPU5KREFBB5XF525QMGQE4WVXW7Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf47.google.com (mail-qv1-xf47.google.com [IPv6:2607:f8b0:4864:20::f47])
	by mail.lfdr.de (Postfix) with ESMTPS id 33BACA0233D
	for <lists+usb-storage@lfdr.de>; Mon,  6 Jan 2025 11:39:52 +0100 (CET)
Received: by mail-qv1-xf47.google.com with SMTP id 6a1803df08f44-6d887d2f283sf26438906d6.0
        for <lists+usb-storage@lfdr.de>; Mon, 06 Jan 2025 02:39:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736159991; cv=pass;
        d=google.com; s=arc-20240605;
        b=RSFsLiaRxjZs26aURdEXAKH4YN+JOOedD32lCfdMumepVyQgjoujswSLZkxI7daFMZ
         jhsT1acmVSPsh8Ozgh0LeT2merH1Q5nb982E5BpdiTuLensO5IjLITeqjyjnfkIT2R5i
         ylea7e53lOUXgfUj417t4bAIrd3kM3tnjGOa3bBv5ZLOxkwprP3FJmvJ4ph+1mBjUCi9
         kiWeb1wp3oRhI3tQfFMr7iqID4zMvJERzzBFvq+vCVdurFbJT/zz4fPodicBPfv+1CUy
         ks8bmggWmTeq8gD5hgh8hea5pgMdLkwc+mhiwf2elhlfiSYCXZTANa97DN+mG8d5rubp
         mQ7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:organization
         :content-language:from:references:cc:to:subject:user-agent
         :mime-version:date:message-id:dkim-signature;
        bh=TQf2UnKEcFgeAKVwwPuHbNIAxdZmKRn1DMXtaoTNm8A=;
        fh=aWZe0u6SCL9NoxaS8HGuFzOdPYHovy++VLz3yBsGyy0=;
        b=ljEEiomVCmF15c9G4RM1BGqh/xQmjD2ByP0jFsuC79umF3yuR15IzFR2uFPtnCFx2A
         rjCDEN6GivFg2pA2rvbc5lYSJ9cZcwcJYr4GMmoMDj2ypVCXhyQtSFweWsS+RAS1Le7g
         BAJujO2Jw+er11Xqe6LAnaqzHTS2IEKata0DlgVuYs+Bd586PyQGJoT/F5tY7eoDDDFV
         Sy0ZFRkeESxrwqGrnMjiScwlr5LuJu5FV1Md2T1KRzolcQkMAOHbvhRpOMy/2fF6CiS+
         OrBVu8h9ExBKTF+pOFz259viCRWwT60yCKKhMkUobaWysF3ivFXjuysF0Bfym15dpmXw
         H53w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=UVVmQ8ZK;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 147.75.193.91 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736159991; x=1736764791; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:content-language:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TQf2UnKEcFgeAKVwwPuHbNIAxdZmKRn1DMXtaoTNm8A=;
        b=ffvR+tOOVKcKdNS0p9QnAGLQyMVDKxLsAtsl7/nTordF0UwxYWjGXvm/XnKOcJWV/a
         P5NAZg7I6gq7QFQv45W1Vzdiv1vmIPX+cfCjqFolmDgZ0jTLlX/rHzDtDsxusP70g1fs
         f3j4TEVYw18OlUcWfci6764/ewzAOrZuRX3qw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736159991; x=1736764791;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:content-language:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TQf2UnKEcFgeAKVwwPuHbNIAxdZmKRn1DMXtaoTNm8A=;
        b=Im8bHdqnzSQgHcWZOIWe9j1sS4iy3X5cISFrt+OFYFSS8trdgna/JuDLcF1a6ifu4k
         yzB2+mbz9hE4kml0aiR5pf9tYCQqBvVHHTrPD8/HPykTqRa8HxzDn7N8jXIrhsUujKIx
         qpBLGtLik9RDGMe/dU9Zqy/V1jag2wPN5LqBs14OWB4+mvOV2GjaAs7nL6kAizbFBta3
         3IKIWolMirVEdUlf9pA/WfXkDzgcxlFpZQulhdj5bHZ+5T2xzPNceLZL7LWZYSM+I9hn
         1AJl/SQheHTqMjGdfRvDeXMJyGe1DrLv2JwTLgm+X/MGv3F0avJsj2Bk2u2bGyGLI7Tr
         iisA==
X-Forwarded-Encrypted: i=2; AJvYcCUZlwtqRsCOW1wnQFkHY3bQOOpbPkizAa1fFst+ZHceAGasEibpinPltZQBmC8zBPKa5RHaSQ==@lfdr.de
X-Gm-Message-State: AOJu0YwwJwEGqfzwq39+zXYjeBXXHAuL6WjGe3/NKqbnF9Aa1Fv9orEN
	+hp26XWUwt67KVNrqn6YhwwgaBkB/KFhEzS3tsS/nYSHKh7yrIBmY0HIvqNhbNY=
X-Google-Smtp-Source: AGHT+IF1kcOQ0EoNyBTXwapH+5UeDxVkesbjlwjsF0ZXOQ3ENRp52mGj3sux6GZKPYhNXLDCZV0r3A==
X-Received: by 2002:a05:6214:529c:b0:6d8:a67e:b2ff with SMTP id 6a1803df08f44-6dd233a45b6mr321073276d6.8.1736159990957;
        Mon, 06 Jan 2025 02:39:50 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6214:88b:b0:6d9:9c5:3874 with SMTP id
 6a1803df08f44-6dd153b6fd2ls63838656d6.0.-pod-prod-08-us; Mon, 06 Jan 2025
 02:39:50 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVkpZyVKtpTSez5F3EsHoUiraCOHXioiEvOCSNjSxfms0sFJ94LziIPDn1MO4gxzfYMwyQwJLRdcjpvnA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6214:2264:b0:6d8:ae2c:503a with SMTP id 6a1803df08f44-6dd233af4f9mr905683586d6.48.1736159989960;
        Mon, 06 Jan 2025 02:39:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736159989; cv=none;
        d=google.com; s=arc-20240605;
        b=XEpjl8dmKxzBQnaVyqVxxzxWKUQ/7BUADqCSNXJUHMtA2IZL+5AORDD+VuKqGz5ImD
         tSK0iDNaOEXbR4nLli1XimLvR0ypWcsOMODJbu4QWvct3bz9pxtGSEQRASw2rTculg8E
         NGn1ocZ6j4AUdTZmL2ikHOdvGHAIJPapCfeCRaN9+hJLCyFwYgLt1ZoZCfk7mvN2HA3G
         oS6HOdsRCjjC1ZZVHHT4AhTzr/wrxj+qiCIygmACHfae8segE+0llk3/Bp3Eo5/EzcvT
         hLyozU3t/kSMULjYcKpTwuqRoMNpVbLhLJMMlSrLT0AOuhVwCs9n730lcQ6ekWJS4ZS6
         hM9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:organization:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=9tFCjF2qSoUQ2okYhm3Eqj9U/WxFsSrc4ePNxZuJEgU=;
        fh=3Nfe+kP66Bl3obRELK+1G2M+nc+7E6m8Gp5FJCUgOQk=;
        b=cwAZRVZIA0QlL+QnAeYL/5CvNFEX4QpAnJ6diyUBo6msqu7SjSFP0sOIp5yx3XcUCD
         sNpSZzVvE1RbeGjeReqX7D0+LF2BSKwMLOXWWe8PbT3cJ3VNwTilN8fHULor0tccO1M/
         2k7lEFGEi7D+P6mrFTw8RAUV+2aZX8X4dK1if1RMKDO5/8IXt18RumVAzHjyMh0EziEk
         5uH1+b9+9vM6GpAH9/5UuuG0zfAUcF2U/5KFQS5eUho1oi55xFLVAUcWc0Stf7eVXIYp
         zJU+ejp5obyoG1VYVP+pM5sLLr0XV34tdhz2zIFJK2iBfy+AyTF/t972ZzPBFf392l0Z
         rLTw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=UVVmQ8ZK;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 147.75.193.91 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
Received: from nyc.source.kernel.org (nyc.source.kernel.org. [147.75.193.91])
        by mx.google.com with ESMTPS id 6a1803df08f44-6dd1836f91csi468742506d6.522.2025.01.06.02.39.49
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jan 2025 02:39:49 -0800 (PST)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 147.75.193.91 as permitted sender) client-ip=147.75.193.91;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id C2BFDA413F1;
	Mon,  6 Jan 2025 10:38:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 386FBC4CED2;
	Mon,  6 Jan 2025 10:39:48 +0000 (UTC)
Message-ID: <89e35fd6-830c-46b7-a0c3-284bc120d424@kernel.org>
Date: Mon, 6 Jan 2025 19:39:04 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 01/10] block: fix docs for freezing of queue
 limits updates
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
Cc: Ming Lei <ming.lei@redhat.com>, Nilay Shroff <nilay@linux.ibm.com>,
 linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
 nbd@other.debian.org, virtualization@lists.linux.dev,
 linux-scsi@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
References: <20250106100645.850445-1-hch@lst.de>
 <20250106100645.850445-2-hch@lst.de>
From: "'Damien Le Moal' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
Content-Language: en-US
Organization: Western Digital Research
In-Reply-To: <20250106100645.850445-2-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=UVVmQ8ZK;       spf=pass
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
> queue_limits_commit_update is the function that needs to operate on a
> frozen queue, not queue_limits_start_update.  Update the kerneldoc
> comments to reflect that.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  block/blk-settings.c   | 3 ++-
>  include/linux/blkdev.h | 3 +--
>  2 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/block/blk-settings.c b/block/blk-settings.c
> index 8f09e33f41f6..4187c3e8a07f 100644
> --- a/block/blk-settings.c
> +++ b/block/blk-settings.c
> @@ -413,7 +413,8 @@ int blk_set_default_limits(struct queue_limits *lim)
>   * @lim:	limits to apply
>   *
>   * Apply the limits in @lim that were obtained from queue_limits_start_update()
> - * and updated by the caller to @q.
> + * and updated by the caller to @q.  The caller must have frozen the queue or
> + * ensured that there is outstanding I/O by other means.

...ensure that there are no outstanding I/Os by other means.

>   *
>   * Returns 0 if successful, else a negative error code.
>   */
> diff --git a/include/linux/blkdev.h b/include/linux/blkdev.h
> index 5d40af2ef971..e781d4e6f92d 100644
> --- a/include/linux/blkdev.h
> +++ b/include/linux/blkdev.h
> @@ -944,8 +944,7 @@ static inline unsigned int blk_boundary_sectors_left(sector_t offset,
>   * the caller can modify.  The caller must call queue_limits_commit_update()
>   * to finish the update.
>   *
> - * Context: process context.  The caller must have frozen the queue or ensured
> - * that there is outstanding I/O by other means.
> + * Context: process context.
>   */
>  static inline struct queue_limits
>  queue_limits_start_update(struct request_queue *q)


-- 
Damien Le Moal
Western Digital Research

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/89e35fd6-830c-46b7-a0c3-284bc120d424%40kernel.org.
