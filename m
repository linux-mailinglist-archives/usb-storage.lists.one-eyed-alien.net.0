Return-Path: <usb-storage+bncBAABB37U6C5QMGQEQY4JM4Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb45.google.com (mail-yb1-xb45.google.com [IPv6:2607:f8b0:4864:20::b45])
	by mail.lfdr.de (Postfix) with ESMTPS id 17C06A0313E
	for <lists+usb-storage@lfdr.de>; Mon,  6 Jan 2025 21:17:53 +0100 (CET)
Received: by mail-yb1-xb45.google.com with SMTP id 3f1490d57ef6-e5380c13e07sf31291291276.0
        for <lists+usb-storage@lfdr.de>; Mon, 06 Jan 2025 12:17:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736194672; cv=pass;
        d=google.com; s=arc-20240605;
        b=gT32yj3jp064SIMeidydPh71qiWc3pBzzty+1pgj5Fl3ta5MaQdg7J1JKREvhLx3d2
         ZbJsIBto0aYYHPDuhrvo8V7Xq1YsGmw/7GESb1V5ZnNSVgvSfwRjgftz9NAkZI6WGHvt
         eCjoKJpsInsx6WMhOR1N2Kcu0fY/uKUBKYCFHxMpbP2+3pSCgpcVVEuSSYAmL7G+llvV
         k+Y2pmf2IVt19PylumDHXorCNEOV7KJ0uwCybBZKmWAjCWciESDURLbrftDi9L8tm6q+
         0Hm0CBuhqQB4B8KKvbYlz33WULJNtBAHrNtEOLdXMuOOVEHTR/QXQHuPBzsUP00/6GT8
         I9kg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=SCdtiz5ZP/mtTR4q+DLJREbQbv1dNqDhDklN1CaoJMc=;
        fh=FVqXDPwuzqScSs73XDdQPwj63pADm5YFIuaE5W+J1Yo=;
        b=f4nJxlvz3QEQpEFMofu2oCsm+Jx7I/VXd0w8kn3spq7GTWNva6WrYDYHEBvCLJqzwy
         suoqBvnzXCxUbjsu3pDPQtS0b66cGlf+ObbKhN8ukHUVwO7GYSqRl9Zce4QOrz7jV8oW
         I/WSrA1/ubxnIc9db5SsUfZuV90Ivrx8bxRTt/OUdAKUw9SU6okW7JF8/4+sFU+g5469
         NuHJJ7mdOmQPU4uMRbmaiFtNBF52Op7mEX8guxSQRGQkGp8OOni9uq0n4x4rYI2Pn21s
         wZ3ucu08Kxe4WRazXmnPJdlKbjjUWMGOqCRWGmhq3ygNkVkcB5sf+IEzYsPzsm1YInJP
         indw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=AiDSX83l;
       spf=pass (google.com: domain of nilay@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=nilay@linux.ibm.com;
       dmarc=pass (p=REJECT sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736194672; x=1736799472; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:from:content-language:references:cc
         :to:subject:user-agent:mime-version:date:message-id:sender:from:to
         :cc:subject:date:message-id:reply-to;
        bh=SCdtiz5ZP/mtTR4q+DLJREbQbv1dNqDhDklN1CaoJMc=;
        b=cKLOtTU6+2eEmNa1uovgVTRf/D5I1inW9uwAolygIQfU+HegByB9qSrpv4PF1p9uH/
         GNzKApKV69BQGHO5ml1wTHUlxcUxL0wq6QXckdmQAQCQk+TUgIvVYmTyGfBcqF13zRfI
         lGZiUEvWkrz8cwQap+cNUwfvdn9htkCDdIob4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736194672; x=1736799472;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:from:content-language:references:cc
         :to:subject:user-agent:mime-version:date:message-id:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SCdtiz5ZP/mtTR4q+DLJREbQbv1dNqDhDklN1CaoJMc=;
        b=kgg0bOQS7qWzw2tt/dlpq5eEm+T10L+mJySpjbvZjzwxqaUuA7dnJGElNXVscjNfO8
         iR8E6162yv7TwYK1TCtfcA1olTVboOzkS4SRQFR8uKv97+DU3CmI4lKMFoDbGvhCO55e
         qlwy8Vpc6FCu8sD8wjeftlfcajl35LfAgT3F8MkgKM9jZCokW/HF1X6Gkn4fnj9+M2sY
         IMkb4eo/qKdc6yXGRKDdjYrbK4r14MPpazMUE3B2VDlFJE949WdYjiD+3bxqjEYvdWTR
         fRRXOVAnDUj44i7A83zkoILVqSaIvYSkSbhDA6s1DvU/G2pn/UE28jN7sKyCfKIPXh8K
         f0dA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXS6XEzO3D3MAeDoxM8ROTu+Do2dZyG5SPG1Hdv45H7Wbwio4NeFl/z/Gwlf49UeDu2bSCIBw==@lfdr.de
X-Gm-Message-State: AOJu0Yz6fR8eECK+lhtxRJSHJcrUHrnXnlgyOMqKofeLeW+Z12iManQs
	jjCN7QQ0YflQPqrXFQCvMLLD/sO8U+cufI6fVAOyLtzgDINuO7H5ohCK6fLn2Ak=
X-Google-Smtp-Source: AGHT+IEtlXUN7WaeGoqwq1YmEZZRIS8LDpOzXBZWu4gNBqvG4GRLi/OOcFgiTOCMRbfVtr5Hl+99cA==
X-Received: by 2002:a05:6902:1108:b0:e53:72d5:1b71 with SMTP id 3f1490d57ef6-e538c20268dmr35177643276.1.1736194671734;
        Mon, 06 Jan 2025 12:17:51 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a25:d04f:0:b0:e3c:88b9:4957 with SMTP id 3f1490d57ef6-e5376056030ls679730276.2.-pod-prod-09-us;
 Mon, 06 Jan 2025 12:17:50 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCW8efGLHJBSpk8Cq5nIYLImfzd2dj6G+lC5yVzYUn2fsRIPZAB3w4epldUYebac+MlA3/v6UsSFCwHXkg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:690c:7444:b0:6ea:916f:e897 with SMTP id 00721157ae682-6f3f820de0cmr466531247b3.29.1736194670778;
        Mon, 06 Jan 2025 12:17:50 -0800 (PST)
Received: by 2002:a81:ad03:0:b0:6ef:892f:89f3 with SMTP id 00721157ae682-6f3f57ea50dms7b3;
        Mon, 6 Jan 2025 03:02:10 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWc9tI3pmNuvfQN04hGtjTBOUqXiLQHRcobFWYB/sxtGRO4vMeZBKnV8g+eqiwDynNWLTNzIoxIAqt/tQ==@lists.one-eyed-alien.net
X-Received: by 2002:a05:690c:4443:b0:6ef:6e34:6561 with SMTP id 00721157ae682-6f3f820bdc4mr381311727b3.32.1736161329517;
        Mon, 06 Jan 2025 03:02:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736161329; cv=none;
        d=google.com; s=arc-20240605;
        b=lGaWThbNQZFnMxxajV6selSXwkKq4G2mdIwtc6ltV8K+6ng/S8MkOoT2U35eT8fY0h
         Bv94xzPnr0Kzf0MrkMtS4VYHFudAKobYOD5pRT0fD7H35sM9UiwYM/E30Z+u1drbwTD/
         KsBwYTGAvCBQLfBHvYJi2iiqa1DS+aIyDX1XXC8nwwq7vM5mNr+1cXbY+RybYXCMHi/q
         nIvc2figa9zmfNKguJTQKU/nJip+0z0+QhJLydB5KWjTALWnH9fTLq4+YOa54zy/A9Rw
         8xE8j1yi9uNylHToKT56lvpc6q+nATehmmKgpBiS4dVKtMPhzNrN9Ci/ISCL7hOgoxdq
         ITaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=LYZStVLN02Fvci1m/Vn1rsv8xGuw05U92gOyr+mRsfE=;
        fh=kza/+BA/VJu8isBOHQtJJOADQSibgsIy3MwulAENB70=;
        b=LYI7EUH90Y7/1qqOrk76uDVkDVWI/adj1Bp0W9nnT4O2StCf7u93fr+68fhlDeLHRA
         y6Cp2ecpDwqB9FoONxuuzdQRRiEj7t6fpjbwFg9Du0xtUGreaZT3PYNw1oXpZEnKDviw
         gFXpqb8KWuciChzyPMze9cXU/Drr6Mgmec00QHwiw9TpOdu1gp+MsdDAauCxzfCuMUpt
         4vWxz5uJFfpHPFqN0WHmTqFJzFJeAI4UZnuPz9x0jc9wtmOJ5uNWX+1Kx90UdgMqznWs
         53cWejVAMlLn0wltjP/BTZeH1rDaBcgEGCJY1qhinJPWyyfMB498XL/ITgEiUCr0jGoY
         qFiw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=AiDSX83l;
       spf=pass (google.com: domain of nilay@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=nilay@linux.ibm.com;
       dmarc=pass (p=REJECT sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com. [148.163.158.5])
        by mx.google.com with ESMTPS id 00721157ae682-6f3e77d09cbsi232916847b3.241.2025.01.06.03.02.09
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Jan 2025 03:02:09 -0800 (PST)
Received-SPF: pass (google.com: domain of nilay@linux.ibm.com designates 148.163.158.5 as permitted sender) client-ip=148.163.158.5;
Received: from pps.filterd (m0360072.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50685XwV025170;
	Mon, 6 Jan 2025 11:01:30 GMT
Received: from ppma22.wdc07v.mail.ibm.com (5c.69.3da9.ip4.static.sl-reverse.com [169.61.105.92])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 440bc2gmn5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 06 Jan 2025 11:01:29 +0000 (GMT)
Received: from pps.filterd (ppma22.wdc07v.mail.ibm.com [127.0.0.1])
	by ppma22.wdc07v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 5069nu2N008866;
	Mon, 6 Jan 2025 11:01:28 GMT
Received: from smtprelay02.wdc07v.mail.ibm.com ([172.16.1.69])
	by ppma22.wdc07v.mail.ibm.com (PPS) with ESMTPS id 43yfpyngpw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 06 Jan 2025 11:01:28 +0000
Received: from smtpav02.wdc07v.mail.ibm.com (smtpav02.wdc07v.mail.ibm.com [10.39.53.229])
	by smtprelay02.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 506B1SLV4326064
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 6 Jan 2025 11:01:28 GMT
Received: from smtpav02.wdc07v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 842F758059;
	Mon,  6 Jan 2025 11:01:28 +0000 (GMT)
Received: from smtpav02.wdc07v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 276CC58058;
	Mon,  6 Jan 2025 11:01:25 +0000 (GMT)
Received: from [9.171.85.164] (unknown [9.171.85.164])
	by smtpav02.wdc07v.mail.ibm.com (Postfix) with ESMTP;
	Mon,  6 Jan 2025 11:01:24 +0000 (GMT)
Message-ID: <4addcb5e-fc88-4a86-a464-cc25d8674267@linux.ibm.com>
Date: Mon, 6 Jan 2025 16:31:23 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 05/10] block: don't update BLK_FEAT_POLL in __blk_mq_update_nr_hw_queues
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
Cc: Damien Le Moal <dlemoal@kernel.org>, Ming Lei <ming.lei@redhat.com>,
        linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
        nbd@other.debian.org, virtualization@lists.linux.dev,
        linux-scsi@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
References: <20250106100645.850445-1-hch@lst.de>
 <20250106100645.850445-6-hch@lst.de>
Content-Language: en-US
From: Nilay Shroff <nilay@linux.ibm.com>
In-Reply-To: <20250106100645.850445-6-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: BJ6qKJdHHh_qTZLqEPnlC1SDJpZkAyhs
X-Proofpoint-ORIG-GUID: BJ6qKJdHHh_qTZLqEPnlC1SDJpZkAyhs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-15_01,2024-10-11_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 mlxscore=0 adultscore=0 suspectscore=0
 phishscore=0 mlxlogscore=999 clxscore=1011 spamscore=0 malwarescore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501060097
X-Original-Sender: nilay@linux.ibm.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=AiDSX83l;       spf=pass (google.com:
 domain of nilay@linux.ibm.com designates 148.163.158.5 as permitted sender)
 smtp.mailfrom=nilay@linux.ibm.com;       dmarc=pass (p=REJECT sp=NONE
 dis=NONE) header.from=ibm.com
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



On 1/6/25 3:36 PM, Christoph Hellwig wrote:
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

Should we make bdev_can_poll() inline ?

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
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/4addcb5e-fc88-4a86-a464-cc25d8674267%40linux.ibm.com.
