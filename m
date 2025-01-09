Return-Path: <usb-storage+bncBDJNPU5KREFBBYNF7S5QMGQE3NVVZCQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf47.google.com (mail-qv1-xf47.google.com [IPv6:2607:f8b0:4864:20::f47])
	by mail.lfdr.de (Postfix) with ESMTPS id 52929A069BB
	for <lists+usb-storage@lfdr.de>; Thu,  9 Jan 2025 01:05:55 +0100 (CET)
Received: by mail-qv1-xf47.google.com with SMTP id 6a1803df08f44-6d884999693sf8156796d6.0
        for <lists+usb-storage@lfdr.de>; Wed, 08 Jan 2025 16:05:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736381154; cv=pass;
        d=google.com; s=arc-20240605;
        b=NGUL/KgfyPdt+v4gAusgsTUgQkBCbkfl6p7tnYbP6T1SoGVyZcolzFv284sV7oY9Kt
         g7xVPbG3+t3PuaIUTGQsToiTXDv7zRtkT97QSDI80X6HDipSHOBrAx34PRJMdWUtWL3c
         voVcE1iPUuXwSfI9H2zir9Eb0eshB/PFN3lLpwu0dKjqkyWzP2LAlugkrkFkVSwYkI8r
         ve7o3aQTHGy8kJnSNPhwawTWMXkK5mEivBIkYmhJJgg5ewutaRhSflxrABhgdMonr9zH
         OiJE8CyPNey/3woQ+YcOnJEraPZ3BzO9cP/kdnVhtKOexyzyO18S/isOhTkL3XZqArZV
         +5hQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:organization
         :content-language:from:references:cc:to:subject:user-agent
         :mime-version:date:message-id:dkim-signature;
        bh=iZo3p23/1da2GeMRT3tf4eCSRJl0L+vgERSYdKs+/q0=;
        fh=4SC2jygtMCvynP02eVaOMEQkZpkmQNvmwFUh0QZbnTQ=;
        b=A168vWVNMpLyfz6bNYRD5i1CGy8uJa+BS6Y8N0GyMZQl69D2PE4UgkmjL532e5A7B1
         9yJCHiJsXDGJAW7L8+Z4Dv+s7/GFN/KJmP0wGFb+0c3Q5zWJvZ7nYZUb65W2HPR9/1F7
         yTDCGBujzZNa8dWuGzpgniM8lRoajV2zcR9edgbXwwqH6bCTkwmY1MF9jsdtJNksssVQ
         Np9I5udqus9Fb//UiPGwqxBW12zDNTMNlbGQateFLqmmF6jqRhcggDhzq3kYBr4Eb4Fs
         BgTOsF7B0/6/cl9viv6IVn4Tbw4YcuskCBBL/FhkoDG4Za5XExbVlOH95DlrzLnWNEfm
         IqSw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=FcZSPW5M;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 147.75.193.91 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736381154; x=1736985954; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:content-language:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iZo3p23/1da2GeMRT3tf4eCSRJl0L+vgERSYdKs+/q0=;
        b=jDdyJN/xTGxvNMuqD99ATsrHHbJNFV9DIUrf2JhxI03FlxhDh9LwtIf6kJdmPnVQVC
         pT80+PJ1jGfolejd8+ltpFaVu/Vp8WCnx0ev67meFhvNbH8fE+9/0pAFF0H1zalg5acz
         4EllqvyUrPNOsuf+xqa/1oO5LE+4iHim5r2n0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736381154; x=1736985954;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:content-language:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iZo3p23/1da2GeMRT3tf4eCSRJl0L+vgERSYdKs+/q0=;
        b=YL9wTvpYQ1DZFjbA99EID4oiaAjli0CLUVDF1xsKCu7i5V8KE+vmqGW+muowHsbmjO
         d9+ubX5czH0cFBHEATFTKiPQSN9YoHjRUTlrmCdfdNKmf18o8269/61KMiosUdZ9zdol
         lthKKjHefkGrBl1aWt4d6A9cQ8CrMaG6VS7PLB0ZhSAK0bx+u0uTc/keVjtkdBV7DoSn
         FDvLcbIJF7LeYBP/u1cYoawqwBJ9x1WIe6kZ/+iu8hVKIDk7KwAqh/CYHJjlqrEGV4XB
         wGdRAskTUUyYwKhl2h6JOsMllEsLWT3oaPdR8qG3iffMgkf9sPW8THuJ8X9Pp53kCu6N
         e4Ww==
X-Forwarded-Encrypted: i=2; AJvYcCX2r99HtDO/TP5PpxFNz0qwvCi46xnNWEaFPRprsC620WTRXpn4nFVoiH9FWyjC65eTKUFF8A==@lfdr.de
X-Gm-Message-State: AOJu0Yxd8tb0dv0SE0cwu4urlUcbiWm88Pyk9c4qIbG4Qce0SkZKyBF+
	WWcrBHJg1K466PTjmmdNx2JU3HfHrGyLIY04MndMRd9xIdN6wl1MxtuAbchreuE=
X-Google-Smtp-Source: AGHT+IHYVU1518VxgewXsdCWNOEuXwcaqjG5IMxRYMk6nRmJNh4Nxs8brWUu/80SEGYvtzs9zqx1rQ==
X-Received: by 2002:ad4:5748:0:b0:6d8:850a:4d7d with SMTP id 6a1803df08f44-6df9b1cc40fmr82914066d6.2.1736381153910;
        Wed, 08 Jan 2025 16:05:53 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6214:5411:b0:6d8:a5f7:f114 with SMTP id
 6a1803df08f44-6dfa36d1b00ls6404666d6.0.-pod-prod-03-us; Wed, 08 Jan 2025
 16:05:53 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVoRVAgyVtgvuLLnS3qt00ubWTq8SyetycpZTGPVlgVDDFomDRTba6UsYlHiDZIeYksh3NBQg47LOZc2g==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6214:1bc7:b0:6cb:d1ae:27a6 with SMTP id 6a1803df08f44-6df9b227ea3mr62632366d6.24.1736381152990;
        Wed, 08 Jan 2025 16:05:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736381152; cv=none;
        d=google.com; s=arc-20240605;
        b=RMqWEGclNPIFJky5QaPmkFvg7ihQLRTS569bIbcWx+VJ9WX5KYd3miEt2gFQj1NnUX
         auc/Txkamr/RXPnayG6rkshZbBpYKb2tvN9Wo6eKb8SROBHxB8/72HBbe9pbMlnrHgCw
         4cfwbuopSovWuLHtfOUDDgN0xQJSr9dRlVMfJmKTGBfbHkckomv7WWcE3UejjI74cfuT
         CyR3SoRf8RlEirBMTJR9dCh4eywBY85D5qRO5hNXuwQcJGDe+3eZDfB68XSW1CNc23VZ
         ee+je1fO4qsMcZy9/UQIa9T42uhhYsrxD0Z1qGaI/BOOQ4QqyUYx9rdWtu8v9xe2VXI3
         cfZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:organization:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=nNMjgwkvc4CVPYylzinrLP3qUf2CLZh2II8+wHRpa5w=;
        fh=coeDUU7wMZEHPiv1fgqfbhds5QQX4LJTccFT3cdMs2k=;
        b=f5YpHH5BeyFuvAtS/1PJHkb9aSa/Aqh390Fu9JbXgOAokdDvvq1GNsP7f8xl/djr+6
         7ZFX+4rxXIZLFXRI9A+efq7h35VivHhjykfCHhlDDclHD2eWxyHzv2/ouf4Gjl7VHAV6
         xvyw94aO9g8lPYL5fUAYGtn2wqz6ZSbeRBJO3VWiliXZ3ihD2aID8uw6DswNLGLjVyCl
         W2JWaaetsrFF3dRKkBl3r6f27d3sPldr0eXjUGD4HH7udUP6vycZHLI90M79UPiA8kAc
         iN5hUbr7BWsSzTA1Efgl4djGLFtXwbHgd/0+RWx+XGpLqbiPLYtz0UaPERLTAkj6c9jf
         E4xw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=FcZSPW5M;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 147.75.193.91 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
Received: from nyc.source.kernel.org (nyc.source.kernel.org. [147.75.193.91])
        by mx.google.com with ESMTPS id 6a1803df08f44-6dd18363a6esi508973716d6.479.2025.01.08.16.05.52
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 16:05:52 -0800 (PST)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 147.75.193.91 as permitted sender) client-ip=147.75.193.91;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 01400A41DBE;
	Thu,  9 Jan 2025 00:04:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 18AC5C4CED3;
	Thu,  9 Jan 2025 00:05:50 +0000 (UTC)
Message-ID: <a3bd231c-0568-4dad-9268-bc7edaace94b@kernel.org>
Date: Thu, 9 Jan 2025 09:05:49 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 03/10] block: don't update BLK_FEAT_POLL in __blk_mq_update_nr_hw_queues
To: Christoph Hellwig <hch@lst.de>, Ming Lei <ming.lei@redhat.com>
Cc: Jens Axboe <axboe@kernel.dk>, Nilay Shroff <nilay@linux.ibm.com>,
 linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
 nbd@other.debian.org, linux-scsi@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net
References: <20250108092520.1325324-1-hch@lst.de>
 <20250108092520.1325324-4-hch@lst.de> <Z35T8xeLxhXe-zAS@fedora>
 <20250108152705.GA24792@lst.de>
From: "'Damien Le Moal' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
Content-Language: en-US
Organization: Western Digital Research
In-Reply-To: <20250108152705.GA24792@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=FcZSPW5M;       spf=pass
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

On 1/9/25 00:27, Christoph Hellwig wrote:
> On Wed, Jan 08, 2025 at 06:31:15PM +0800, Ming Lei wrote:
>>> -	if (!(q->limits.features & BLK_FEAT_POLL) &&
>>> -			(bio->bi_opf & REQ_POLLED)) {
>>> +	if ((bio->bi_opf & REQ_POLLED) && !bdev_can_poll(bdev)) {
>>
>> submit_bio_noacct() is called without grabbing .q_usage_counter,
>> so tagset may be freed now, then use-after-free on q->tag_set?
> 
> Indeed.  That also means the previous check wasn't reliable either.
> I think we can simple move the check into
> blk_mq_submit_bio/__submit_bio which means we'll do a bunch more
> checks before we eventually fail, but otherwise it'll work the
> same.

Given that the request queue is the same for all tag sets, I do not think we
need to have the queue_limits_start_update()/commit_update() within the tag set
loop in __blk_mq_update_nr_hw_queues(). So something like this should be enough
for an initial fix, no ?

diff --git a/block/blk-mq.c b/block/blk-mq.c
index 8ac19d4ae3c0..ac71e9cee25b 100644
--- a/block/blk-mq.c
+++ b/block/blk-mq.c
@@ -4986,6 +4986,7 @@ static void __blk_mq_update_nr_hw_queues(struct
blk_mq_tag_set *set,
                                                        int nr_hw_queues)
 {
        struct request_queue *q;
+       struct queue_limits lim;
        LIST_HEAD(head);
        int prev_nr_hw_queues = set->nr_hw_queues;
        int i;
@@ -4999,8 +5000,10 @@ static void __blk_mq_update_nr_hw_queues(struct
blk_mq_tag_set *set,
        if (set->nr_maps == 1 && nr_hw_queues == set->nr_hw_queues)
                return;

+       lim = queue_limits_start_update(q);
        list_for_each_entry(q, &set->tag_list, tag_set_list)
                blk_mq_freeze_queue(q);
+
        /*
         * Switch IO scheduler to 'none', cleaning up the data associated
         * with the previous scheduler. We will switch back once we are done
@@ -5036,13 +5039,10 @@ static void __blk_mq_update_nr_hw_queues(struct
blk_mq_tag_set *set,
                        set->nr_hw_queues = prev_nr_hw_queues;
                        goto fallback;
                }
-               lim = queue_limits_start_update(q);
                if (blk_mq_can_poll(set))
                        lim.features |= BLK_FEAT_POLL;
                else
                        lim.features &= ~BLK_FEAT_POLL;
-               if (queue_limits_commit_update(q, &lim) < 0)
-                       pr_warn("updating the poll flag failed\n");
                blk_mq_map_swqueue(q);
        }

@@ -5059,6 +5059,9 @@ static void __blk_mq_update_nr_hw_queues(struct
blk_mq_tag_set *set,
        list_for_each_entry(q, &set->tag_list, tag_set_list)
                blk_mq_unfreeze_queue(q);

+       if (queue_limits_commit_update(q, &lim) < 0)
+               pr_warn("updating the poll flag failed\n");
+
        /* Free the excess tags when nr_hw_queues shrink. */
        for (i = set->nr_hw_queues; i < prev_nr_hw_queues; i++)
                __blk_mq_free_map_and_rqs(set, i);

With that, no modification of the hot path to check the poll feature should be
needed. And I also fail to see why we need to do the queue freeze for all tag
sets. Once should be enough as well...

-- 
Damien Le Moal
Western Digital Research

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/a3bd231c-0568-4dad-9268-bc7edaace94b%40kernel.org.
