Return-Path: <usb-storage+bncBDJNPU5KREFBBUPN525QMGQEEF3OWKI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x747.google.com (mail-qk1-x747.google.com [IPv6:2607:f8b0:4864:20::747])
	by mail.lfdr.de (Postfix) with ESMTPS id DC2E4A0238A
	for <lists+usb-storage@lfdr.de>; Mon,  6 Jan 2025 11:56:18 +0100 (CET)
Received: by mail-qk1-x747.google.com with SMTP id af79cd13be357-7b6e7f07332sf449748285a.1
        for <lists+usb-storage@lfdr.de>; Mon, 06 Jan 2025 02:56:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736160977; cv=pass;
        d=google.com; s=arc-20240605;
        b=kxjEkTdYTyBhgwr2MUQMfYemcBZfeARmT+Rb6lPx/jUiHqXjmGPw+vZUgbsr4h4zlc
         uHSklFotTz/uddS83exu3l5Dwxoa5L4LDy7d3u3wUytkK67ORXlW1alSSEq8lImd8f7a
         gr+Hm2QRkKJaCqgSZYSm7t7Wx9FygIj9B1duCL+U+/7OnOjfIrkotVXWSDIKmjfB7yZv
         aHEbzfMyngHaRPqPXuIcRgFN1ya/hxLm3vSAPglnFMt/gAlIcuB4Vrrh6SBNWtgBzl/s
         gsnQg7BWg40BQKN5zfLhlLggC0RCvWmRYnaaU+aEezW+5KXOg+VJLMlLbZOCXGIkN+JU
         wUTg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:organization
         :content-language:from:references:cc:to:subject:user-agent
         :mime-version:date:message-id:dkim-signature;
        bh=9Eezu+Z7RRbrW3BtDzh1pmLWHbKjkBjb3Q31Yf6JLlY=;
        fh=XDpAqNI9lDb9NcKIV9alAfz28BfXPLQ+RwmBookDD0g=;
        b=Qm1nenAV5huw3dyR2cewViaRfTzD7Emy5bT/ZYsN91cT6sVdp3MwGZ/TpSFUtLtTSv
         LA5BepE4vgK+ZZiuhE9AV8xs5+Spv3w/DvnpgMB+50rKkToBTTRl5XeZYGZN06STw6Vp
         2uHlFdhKqIAgcy+h5Vk3FR4xpDzawgbW2A9yMfobhyqLHd97857HFI7T0qDPEqkR3A+I
         lNKXoxJ8ODZszKALQV4kIZUynPGlyfxvZxpPQb3tS+rfiKpQXSi69b/b0GKICFPyWP+W
         F7CMvbZu/AU6/y4ZCJa9sMD++DunVMc0m0hcxZ4eKDmGUH5jC1QPc2um72JNGdDfyGWT
         nmzA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=G43Ua4hy;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:45d1:ec00::3 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736160977; x=1736765777; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:content-language:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9Eezu+Z7RRbrW3BtDzh1pmLWHbKjkBjb3Q31Yf6JLlY=;
        b=dCFaJv8/RC0sHDkWEjx4Hf+knuC8FQAID849smNp4OOeAGvJWfPp7mcSBzaw1n2Dwi
         0JY/A6Q83chNV/DUUx9LULeAnrHkQOoJUj8UciUN256Wbwsq7O1A5DFHOSQumbYCt65M
         hnpVmgAxVtrqVJicbWgXnF4TS2QS+T7izOeOE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736160977; x=1736765777;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:content-language:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9Eezu+Z7RRbrW3BtDzh1pmLWHbKjkBjb3Q31Yf6JLlY=;
        b=qZOt+033RDbPfB4V9A+z2pQrhap13Uz7Gpgw61KahElLtTw0a7KKo4KllwMByqY0oB
         4ydT21oroBhTEEPfnUVFoFnB6bgq54U38591DVrANL0jU+pB4gmIHqqe1HrDAdZgRHI8
         5Z6iznTeTQ6BkiBM0/9nhRt/LA6Z+tqpgSB4PTAVQLUCerNJyE8hRFDLqtP1YIroZh4s
         1P2bbgy7xrtOBMz8vsKXjR2cedn+XUvqXnBw/EW8VlJ+ptAGi9Y0F0RSngklMrYlf81q
         DB7F3k7jeVdKV6MhzqXP5pwrM3Ee5F5q3vz3jlvjA8kK8Xi8gBGJ6fuc+6ecuVK6xFL9
         sFHA==
X-Forwarded-Encrypted: i=2; AJvYcCUGT0/Nq4JeZqrd89frylsNH02pJ5hDUGXenu3VXzh/CN8mj1eHYWck+yatBkJqdDgu8SeN9A==@lfdr.de
X-Gm-Message-State: AOJu0YxjsI6ohrwdslZtE0SW7r3khbiXF1Rllc2tJYBuMLydbMNHJ6Z7
	LRQdS4lYLLVaZUKPy5SQTZOAyfUDqFB8I68A0myZY1sFnK0sTMzxyCkI7sDwGSs=
X-Google-Smtp-Source: AGHT+IE+dgg2coGjH3fB4NUQxj7RKDjnMtb4V//cvmtIqCXTYiEZoWMyqTf3CXUUwxfiEe87ZIZwYA==
X-Received: by 2002:a05:6214:5089:b0:6d8:883c:384e with SMTP id 6a1803df08f44-6dd2333914fmr1071848146d6.16.1736160977553;
        Mon, 06 Jan 2025 02:56:17 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a0c:f7c7:0:b0:6d8:89a6:8447 with SMTP id 6a1803df08f44-6dd153c23c3ls1365606d6.0.-pod-prod-02-us;
 Mon, 06 Jan 2025 02:56:16 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUFFmN3jtQGOwqjwnoSo9qZ6Q9zhKtlmi3HnhAMXyxBpw40nrLBP9chXg55JKtcrtY6AaLF76QHB+0Ppg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6214:5298:b0:6d8:a967:8387 with SMTP id 6a1803df08f44-6dd2331e1ffmr925908936d6.1.1736160976761;
        Mon, 06 Jan 2025 02:56:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736160976; cv=none;
        d=google.com; s=arc-20240605;
        b=HDTGcCj50gSrYE50kzuwC6Z48x1TAv2Dk2I2RGDC7dPbMs6Rfo1s/iHR+fCeBvpwF1
         28lkvSfMURmUQft/FSwOF12cGtVM9gg0bnQjH7mTBL4bBXsIvei/Ttd4Q71bNbM8cMSt
         8H1MWvjG4P/CU6a/P3EeGrZEbTQERuB0mIjjyKp54AL0I63ltHKgACXXOqaobLxFYzRa
         M2rGJS8A+/wK4krXo+6masOqSq1oTAbUisasns+kB08u+PrrYwjRI4O8zyC4SFuzjNjE
         nWLqMx0Li/EXmo4PG6wDHDCH9Q11MOdqYOwBxUCuXuxySLuCHCossW/aKoS4g8zZQ9CF
         /76Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:organization:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=hbzfPYLJfJyKbvv5tDGvMlhxbWl9VhjdsljtKkIy+uY=;
        fh=3Nfe+kP66Bl3obRELK+1G2M+nc+7E6m8Gp5FJCUgOQk=;
        b=goXZ6pkKrdKBLYVmAVQiCVsfvrG55MTA0N/QrZdaSlU+GwDOPhTxO1CYBkTNeL6xBs
         ebkIu1/yT2WXurHRoQVjBaeyIwuLzr5zJCwp6Lrxo43amHfewMSw/ItuQgovmyG3/NjZ
         Ejud5LKimVXQbW9UvV8/qCCb7t127CGDjLP/bIGrhnhHrJjd8PncDMCmBdMQDU2ZqWHC
         zNVK16hSuhk4jmrWzqlNU7OD0vlDhc+ZI/V8SHQGMnfAJLMvMj1Ny9tpxcRm77qxK1w3
         rcdqj6wnBle5NTIoj51f5a/om5/rlp3/skfrMpCEToLi0cQ/q2IyKenrFbjH+Debuog3
         lCTw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=G43Ua4hy;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:45d1:ec00::3 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
Received: from nyc.source.kernel.org (nyc.source.kernel.org. [2604:1380:45d1:ec00::3])
        by mx.google.com with ESMTPS id 6a1803df08f44-6dd1836f754si432511946d6.499.2025.01.06.02.56.16
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jan 2025 02:56:16 -0800 (PST)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:45d1:ec00::3 as permitted sender) client-ip=2604:1380:45d1:ec00::3;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 93513A4143E;
	Mon,  6 Jan 2025 10:54:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 048D9C4CEE3;
	Mon,  6 Jan 2025 10:56:14 +0000 (UTC)
Message-ID: <1538d5e9-eb59-49a7-90c8-77a290f3a420@kernel.org>
Date: Mon, 6 Jan 2025 19:55:30 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 05/10] block: don't update BLK_FEAT_POLL in __blk_mq_update_nr_hw_queues
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
Cc: Ming Lei <ming.lei@redhat.com>, Nilay Shroff <nilay@linux.ibm.com>,
 linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
 nbd@other.debian.org, virtualization@lists.linux.dev,
 linux-scsi@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
References: <20250106100645.850445-1-hch@lst.de>
 <20250106100645.850445-6-hch@lst.de>
From: "'Damien Le Moal' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
Content-Language: en-US
Organization: Western Digital Research
In-Reply-To: <20250106100645.850445-6-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=G43Ua4hy;       spf=pass
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
> When __blk_mq_update_nr_hw_queues changes the number of tag sets, it
> might have to disable poll queues.  Currently it does so by adjusting
> the BLK_FEAT_POLL, which is a bit against the intent of features that
> describe hardware / driver capabilities, but more importantly causes
> nasty lock order problems with the broadly held freeze when updating the
> number of hardware queues and the limits lock.  Fix this by leaving
> BLK_FEAT_POLL alone, and instead check for the number of sets and poll
> queues in the bio submission and poll handler.  While this adds extra
> work to the fast path, the variables are in cache lines used by these
> operations anyway, so it should be cheap enough.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  block/blk-core.c | 14 +++++++++++---
>  block/blk-mq.c   | 19 +------------------
>  block/blk-mq.h   |  6 ++++++
>  3 files changed, 18 insertions(+), 21 deletions(-)
> 
> diff --git a/block/blk-core.c b/block/blk-core.c
> index 666efe8fa202..483c14a50d9f 100644
> --- a/block/blk-core.c
> +++ b/block/blk-core.c
> @@ -753,6 +753,15 @@ static blk_status_t blk_validate_atomic_write_op_size(struct request_queue *q,
>  	return BLK_STS_OK;
>  }
>  
> +static bool bdev_can_poll(struct block_device *bdev)
> +{
> +	struct request_queue *q = bdev_get_queue(bdev);
> +
> +	if (queue_is_mq(q))
> +		return blk_mq_can_poll(q->tag_set);
> +	return q->limits.features & BLK_FEAT_POLL;
> +}
> +
>  /**
>   * submit_bio_noacct - re-submit a bio to the block device layer for I/O
>   * @bio:  The bio describing the location in memory and on the device.
> @@ -805,8 +814,7 @@ void submit_bio_noacct(struct bio *bio)
>  		}
>  	}
>  
> -	if (!(q->limits.features & BLK_FEAT_POLL) &&
> -			(bio->bi_opf & REQ_POLLED)) {
> +	if ((bio->bi_opf & REQ_POLLED) && !bdev_can_poll(bdev)) {
>  		bio_clear_polled(bio);
>  		goto not_supported;
>  	}
> @@ -935,7 +943,7 @@ int bio_poll(struct bio *bio, struct io_comp_batch *iob, unsigned int flags)
>  		return 0;
>  
>  	q = bdev_get_queue(bdev);
> -	if (cookie == BLK_QC_T_NONE || !(q->limits.features & BLK_FEAT_POLL))
> +	if (cookie == BLK_QC_T_NONE || !bdev_can_poll(bdev))
>  		return 0;
>  
>  	blk_flush_plug(current->plug, false);
> diff --git a/block/blk-mq.c b/block/blk-mq.c
> index 17f10683d640..0a7f059735fa 100644
> --- a/block/blk-mq.c
> +++ b/block/blk-mq.c
> @@ -4321,12 +4321,6 @@ void blk_mq_release(struct request_queue *q)
>  	blk_mq_sysfs_deinit(q);
>  }
>  
> -static bool blk_mq_can_poll(struct blk_mq_tag_set *set)
> -{
> -	return set->nr_maps > HCTX_TYPE_POLL &&
> -		set->map[HCTX_TYPE_POLL].nr_queues;
> -}
> -
>  struct request_queue *blk_mq_alloc_queue(struct blk_mq_tag_set *set,
>  		struct queue_limits *lim, void *queuedata)
>  {
> @@ -4336,9 +4330,7 @@ struct request_queue *blk_mq_alloc_queue(struct blk_mq_tag_set *set,
>  
>  	if (!lim)
>  		lim = &default_lim;
> -	lim->features |= BLK_FEAT_IO_STAT | BLK_FEAT_NOWAIT;
> -	if (blk_mq_can_poll(set))
> -		lim->features |= BLK_FEAT_POLL;
> +	lim->features |= BLK_FEAT_IO_STAT | BLK_FEAT_NOWAIT | BLK_FEAT_POLL;

Why set BLK_FEAT_POLL unconditionally ? This is changing the current default
for many devices, no ?

>  
>  	q = blk_alloc_queue(lim, set->numa_node);
>  	if (IS_ERR(q))
> @@ -5025,8 +5017,6 @@ static void __blk_mq_update_nr_hw_queues(struct blk_mq_tag_set *set,
>  fallback:
>  	blk_mq_update_queue_map(set);
>  	list_for_each_entry(q, &set->tag_list, tag_set_list) {
> -		struct queue_limits lim;
> -
>  		blk_mq_realloc_hw_ctxs(set, q);
>  
>  		if (q->nr_hw_queues != set->nr_hw_queues) {
> @@ -5040,13 +5030,6 @@ static void __blk_mq_update_nr_hw_queues(struct blk_mq_tag_set *set,
>  			set->nr_hw_queues = prev_nr_hw_queues;
>  			goto fallback;
>  		}
> -		lim = queue_limits_start_update(q);
> -		if (blk_mq_can_poll(set))
> -			lim.features |= BLK_FEAT_POLL;
> -		else
> -			lim.features &= ~BLK_FEAT_POLL;
> -		if (queue_limits_commit_update(q, &lim) < 0)
> -			pr_warn("updating the poll flag failed\n");
>  		blk_mq_map_swqueue(q);
>  	}
>  
> diff --git a/block/blk-mq.h b/block/blk-mq.h
> index 89a20fffa4b1..ecd7bd7ec609 100644
> --- a/block/blk-mq.h
> +++ b/block/blk-mq.h
> @@ -111,6 +111,12 @@ static inline struct blk_mq_hw_ctx *blk_mq_map_queue(struct request_queue *q,
>  	return ctx->hctxs[blk_mq_get_hctx_type(opf)];
>  }
>  
> +static inline bool blk_mq_can_poll(struct blk_mq_tag_set *set)
> +{
> +	return set->nr_maps > HCTX_TYPE_POLL &&
> +		set->map[HCTX_TYPE_POLL].nr_queues;
> +}
> +
>  /*
>   * sysfs helpers
>   */


-- 
Damien Le Moal
Western Digital Research

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/1538d5e9-eb59-49a7-90c8-77a290f3a420%40kernel.org.
