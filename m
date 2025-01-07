Return-Path: <usb-storage+bncBD4KDUPW5UNBB3VA6O5QMGQEQ7275JA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb47.google.com (mail-yb1-xb47.google.com [IPv6:2607:f8b0:4864:20::b47])
	by mail.lfdr.de (Postfix) with ESMTPS id B34DCA03842
	for <lists+usb-storage@lfdr.de>; Tue,  7 Jan 2025 07:57:51 +0100 (CET)
Received: by mail-yb1-xb47.google.com with SMTP id 3f1490d57ef6-e39fd56398csf34347697276.1
        for <lists+usb-storage@lfdr.de>; Mon, 06 Jan 2025 22:57:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736233070; cv=pass;
        d=google.com; s=arc-20240605;
        b=hHsowXtEYnGe+k/iio7zgUX09Cx9Em6jAnOqilzJDGhIt6/54kKn5BqoIv1km9NuCb
         U6y81rqQfxjI2v9S6yiqxJH4ElGFIgz0YqFhllaKxLFFWUkSoGFUOQVLuYe8nMRru0+R
         px/VMSaLZinZf4GgoyJ+K3ekN3fS+Xu+9rQuZ6lVvgWbeBP+GT3J/GvXYjPuueDTAZZM
         FmJKJDqldQRFdM3bXRF9jKoXVe8cGCPvXhNVRIGNzwsMFfb+0pVNne4GVQLhVWqaVkDq
         6xuvReLbaoL3TOEBZY+q04FxVouQl6+h/d8EyiTm/jxu5REFGxC3Jczj65ZLMWfG5u5n
         BNaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=kQP8bVd8Enr47Dimf1dCa8W3znJ1eADo1WNO/CzWNLM=;
        fh=DNXFk4Ii1JXOci8abhmdb0LgLD+TeqfwYX0ZtnMcvLI=;
        b=TvMyHO1tZIjr0VM9DQInRvptoLkqYUCj11n9hn1TBIOr3ESW6RxYTRXK+1m4pX+5U/
         6oP5H9ZU+wv1o85IWrniXlaWeGixbM7YwjI399kzBTwTfZsoPgq7n52cWDuZOXKrORsL
         62WInKaBYhDRTTltOKTYahoWJH2AAvwSQfAinM37Emh3fN63mSIELiOHYcCTmGKEgHIJ
         Jw/6GFFBC7LUBMu0QwnBrOL343JXtzbxtIwoI1I3oIHiPElVAzagj/VWpGPKEmurED8b
         onJKvCecOpNzZa71857N52A3OoYv6RzXhqANMY/HldzeARVwhL5XXca7H512gTP+LOja
         dxKA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=kv2YEUVF;
       spf=pass (google.com: domain of nilay@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=nilay@linux.ibm.com;
       dmarc=pass (p=REJECT sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736233070; x=1736837870; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:from:content-language:references:cc
         :to:subject:user-agent:mime-version:date:message-id:sender:from:to
         :cc:subject:date:message-id:reply-to;
        bh=kQP8bVd8Enr47Dimf1dCa8W3znJ1eADo1WNO/CzWNLM=;
        b=Z3dPwMMCymgeyxRcjLEjcA7HcOTBCNhAnE2hULVYcDmgmY5bHnCciHQEjVSMTpBSf3
         OEeRMagJtZmcmVV0vyAWTuNiue39NbzZQpUFBbJ0HTgwSs/PXimQJEiY+GVwpUpgqcU/
         9AzTc7RhRrT/1AuW5heMlrVEqllaTgiwsVEwo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736233070; x=1736837870;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:content-language:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kQP8bVd8Enr47Dimf1dCa8W3znJ1eADo1WNO/CzWNLM=;
        b=STlHIlMopO+miwDL6TFejZwV0LQ003ge81Q6dQBc/jsc2jT7KY0hELqpcX0o3D1pLO
         QWyfzcI5kmzNRfbbqBh4cX/Fp06+0J0eP0MY16g7amW86tP/iGBxpm2thzXu7kEtg1NS
         q/huvp3NV89+LEt2zbPaDsnk7PH21FuGdhAF6AA97MzZs5xjkAivyZmCrBXFCISevKmd
         JW16srDmPsH3Q7qjI58DMOekY7P+i3E7XzhuItueZUO9THxKbROfc25+LxVAIR7HNSbg
         0+kIum8LQdW6PQ93dNuK5z1RZFs63H0u+tnnvSzTix9D5x8fZ8alSw/ypexP3NOIa1DO
         n4CA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVT9rCUXHt+K8EzjdpXmrkVGHjfwstZ+E8UcSIOiaAyToTUB9FPhjtiRbLlurFRa661fBoagg==@lfdr.de
X-Gm-Message-State: AOJu0YwXkaz47kvksXX1e0qErpSZy+a/e9gaD/uLVikczceJegR2WL77
	59F0LPRli2S/EuFBxWUGVEKWIzvN13HDQ2ziJw2ZISMXmzf6D8YUWxB4mD9TSGg=
X-Google-Smtp-Source: AGHT+IHqYba3TjUxx9n7/0MMbsbSO6coY0t2voe8CuYVWCoFKF949U46ascegnvuxw54NJb5EvAWYg==
X-Received: by 2002:a05:6902:2007:b0:e38:b34d:121f with SMTP id 3f1490d57ef6-e538c24c7bbmr45369854276.15.1736233070468;
        Mon, 06 Jan 2025 22:57:50 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a25:df0a:0:b0:e38:9c46:1f82 with SMTP id 3f1490d57ef6-e5376053083ls1243485276.2.-pod-prod-07-us;
 Mon, 06 Jan 2025 22:57:49 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUr+0u9a8WyXHfi/84Ei4E/aUUJfN9+H4xcQLD3JUxl1F5S5HWd8Gq1OgsFscoHYlW1snu9P9+EeoOTVQ==@lists.one-eyed-alien.net
X-Received: by 2002:a05:690c:f8d:b0:6ef:4ed2:7dfe with SMTP id 00721157ae682-6f3f820129emr417872957b3.31.1736233069448;
        Mon, 06 Jan 2025 22:57:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736233069; cv=none;
        d=google.com; s=arc-20240605;
        b=SglAvuNHtnvPnI7nA67ZRWpxz+VLb2aLGs3hYZVTpJkBligpe5rOF3r+ZjSFeIKdaD
         yEBTpbhlCuBpJhu6Q7tAcwqQuH+Kub5oLkJak5iv7Gojp4pV75Qskzl1zsPDlufAXDTF
         YHu3KrGifqtuIl9E2mpUQAVmRukU48tAj0jrFJ6v5haY40xPyw/OOCQY4XZ2qmGOJl7/
         J1J+TIeJQ6s+FxIiWp4mgVclX4j3cVN61du0xjvqyxwqbj4k3cHm+tXntB97VyPbET3P
         E9XfvIrVy0TOhumWWMcaBoCifloxVU/AOUOcarAld8JJF82/VC/WcsP7sqxtuyKPCXvv
         Oocg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=Cs1vfeiBazyTNPKIqn2P7ooxnqRRACUNKA/XNKfYpuw=;
        fh=wC5V8QQsOkBKJqKElVTGqyBTcD6ODgNp7g//iXCbcNg=;
        b=XqFwtN9x2mzIDd/7eSnNOCTulMIQpoQHfj5vw+kl/diX5bQTjTHjP/LF+2rlQCl5YK
         R/bnTJ0nN1F9UuwbLHwVVdFQ4uKEHwnP//5jDRNdLpPIjkuFPMWT0Q8+IV098c2Y3bWa
         +i3NZxWQtm3Z8Bg7xcU7amqvQcEQ6IDuqhW90sYn69lsarhH8UfXAMVU12L5kxxRlgCl
         RKGbC3pflYnSLmpmdXk3gTP7WhlgA3uQI4kAAai6/n07ZWlc4Guv4U68JhacWr4f0Ikj
         cS1voqMkwHjT1Uwa18xwKcCaZlQ/+gBB1k8j2dgofN1VPyHC1cZxh0Th3wZFJPJOMJPp
         VisA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=kv2YEUVF;
       spf=pass (google.com: domain of nilay@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=nilay@linux.ibm.com;
       dmarc=pass (p=REJECT sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com. [148.163.158.5])
        by mx.google.com with ESMTPS id 00721157ae682-6f3e786eb13si234923987b3.475.2025.01.06.22.57.49
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Jan 2025 22:57:49 -0800 (PST)
Received-SPF: pass (google.com: domain of nilay@linux.ibm.com designates 148.163.158.5 as permitted sender) client-ip=148.163.158.5;
Received: from pps.filterd (m0356516.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 506NaHnE007319;
	Tue, 7 Jan 2025 06:57:42 GMT
Received: from ppma12.dal12v.mail.ibm.com (dc.9e.1632.ip4.static.sl-reverse.com [50.22.158.220])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 440s0a9bpp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 07 Jan 2025 06:57:41 +0000 (GMT)
Received: from pps.filterd (ppma12.dal12v.mail.ibm.com [127.0.0.1])
	by ppma12.dal12v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 5073RGxO004143;
	Tue, 7 Jan 2025 06:57:41 GMT
Received: from smtprelay07.wdc07v.mail.ibm.com ([172.16.1.74])
	by ppma12.dal12v.mail.ibm.com (PPS) with ESMTPS id 43yfat1f10-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 07 Jan 2025 06:57:41 +0000
Received: from smtpav04.dal12v.mail.ibm.com (smtpav04.dal12v.mail.ibm.com [10.241.53.103])
	by smtprelay07.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 5076veCJ19923654
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 7 Jan 2025 06:57:40 GMT
Received: from smtpav04.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id EF72D58065;
	Tue,  7 Jan 2025 06:57:39 +0000 (GMT)
Received: from smtpav04.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 067E858062;
	Tue,  7 Jan 2025 06:57:37 +0000 (GMT)
Received: from [9.109.198.241] (unknown [9.109.198.241])
	by smtpav04.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Tue,  7 Jan 2025 06:57:36 +0000 (GMT)
Message-ID: <220cdd33-527f-405d-90af-2abaace36645@linux.ibm.com>
Date: Tue, 7 Jan 2025 12:27:35 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 3/8] block: don't update BLK_FEAT_POLL in __blk_mq_update_nr_hw_queues
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
Cc: Damien Le Moal <dlemoal@kernel.org>, Ming Lei <ming.lei@redhat.com>,
        linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
        nbd@other.debian.org, linux-scsi@vger.kernel.org,
        usb-storage@lists.one-eyed-alien.net
References: <20250107063120.1011593-1-hch@lst.de>
 <20250107063120.1011593-4-hch@lst.de>
Content-Language: en-US
From: Nilay Shroff <nilay@linux.ibm.com>
In-Reply-To: <20250107063120.1011593-4-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: A6Qwjw_FsfNXj5gcbjJmDH53AvKGWuum
X-Proofpoint-ORIG-GUID: A6Qwjw_FsfNXj5gcbjJmDH53AvKGWuum
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-15_01,2024-10-11_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 clxscore=1015
 phishscore=0 mlxlogscore=999 lowpriorityscore=0 impostorscore=0
 malwarescore=0 mlxscore=0 adultscore=0 bulkscore=0 suspectscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501070052
X-Original-Sender: nilay@linux.ibm.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=kv2YEUVF;       spf=pass (google.com:
 domain of nilay@linux.ibm.com designates 148.163.158.5 as permitted sender)
 smtp.mailfrom=nilay@linux.ibm.com;       dmarc=pass (p=REJECT sp=NONE
 dis=NONE) header.from=ibm.com
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



On 1/7/25 12:00 PM, Christoph Hellwig wrote:
> When __blk_mq_update_nr_hw_queues changes the number of tag sets, it
> might have to disable poll queues.  Currently it does so by adjusting
> the BLK_FEAT_POLL, which is a bit against the intent of features that
> describe hardware / driver capabilities, but more importantly causes
> nasty lock order problems with the broadly held freeze when updating the
> number of hardware queues and the limits lock.  Fix this by leaving
> BLK_FEAT_POLL alone, and instead check for the number of poll queues in
> the bio submission and poll handlers.  While this adds extra work to the
> fast path, the variables are in cache lines used by these operations
> anyway, so it should be cheap enough.
> 
> Fixes: 8023e144f9d6 ("block: move the poll flag to queue_limits")
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  block/blk-core.c | 17 ++++++++++++++---
>  block/blk-mq.c   | 17 +----------------
>  2 files changed, 15 insertions(+), 19 deletions(-)
> 
> diff --git a/block/blk-core.c b/block/blk-core.c
> index 666efe8fa202..bd5bec843d37 100644
> --- a/block/blk-core.c
> +++ b/block/blk-core.c
> @@ -753,6 +753,18 @@ static blk_status_t blk_validate_atomic_write_op_size(struct request_queue *q,
>  	return BLK_STS_OK;
>  }
>  
> +static bool bdev_can_poll(struct block_device *bdev)
> +{
> +	struct request_queue *q = bdev_get_queue(bdev);
> +
> +	if (!(q->limits.features & BLK_FEAT_POLL))
> +		return false;
> +
> +	if (queue_is_mq(q))
> +		return q->tag_set->map[HCTX_TYPE_POLL].nr_queues;
> +	return true;
> +}
> +
As discussed in another thread with Damien, shouldn't we need to 
move bdev_can_poll() to header file? We also need to use this 
function while reading sysfs attribute "io-poll", no?  

>  /**
>   * submit_bio_noacct - re-submit a bio to the block device layer for I/O
>   * @bio:  The bio describing the location in memory and on the device.
> @@ -805,8 +817,7 @@ void submit_bio_noacct(struct bio *bio)
>  		}
>  	}
>  
> -	if (!(q->limits.features & BLK_FEAT_POLL) &&
> -			(bio->bi_opf & REQ_POLLED)) {
> +	if ((bio->bi_opf & REQ_POLLED) && !bdev_can_poll(bdev)) {
>  		bio_clear_polled(bio);
>  		goto not_supported;
>  	}
> @@ -935,7 +946,7 @@ int bio_poll(struct bio *bio, struct io_comp_batch *iob, unsigned int flags)
>  		return 0;
>  
>  	q = bdev_get_queue(bdev);
> -	if (cookie == BLK_QC_T_NONE || !(q->limits.features & BLK_FEAT_POLL))
> +	if (cookie == BLK_QC_T_NONE || !bdev_can_poll(bdev))
>  		return 0;
>  
>  	blk_flush_plug(current->plug, false);
> diff --git a/block/blk-mq.c b/block/blk-mq.c
> index 2e6132f778fd..f795d81b6b38 100644
> --- a/block/blk-mq.c
> +++ b/block/blk-mq.c
> @@ -4320,12 +4320,6 @@ void blk_mq_release(struct request_queue *q)
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
> @@ -4336,7 +4330,7 @@ struct request_queue *blk_mq_alloc_queue(struct blk_mq_tag_set *set,
>  	if (!lim)
>  		lim = &default_lim;
>  	lim->features |= BLK_FEAT_IO_STAT | BLK_FEAT_NOWAIT;
> -	if (blk_mq_can_poll(set))
> +	if (set->nr_maps > HCTX_TYPE_POLL)
>  		lim->features |= BLK_FEAT_POLL;
>  
>  	q = blk_alloc_queue(lim, set->numa_node);
> @@ -5024,8 +5018,6 @@ static void __blk_mq_update_nr_hw_queues(struct blk_mq_tag_set *set,
>  fallback:
>  	blk_mq_update_queue_map(set);
>  	list_for_each_entry(q, &set->tag_list, tag_set_list) {
> -		struct queue_limits lim;
> -
>  		blk_mq_realloc_hw_ctxs(set, q);
>  
>  		if (q->nr_hw_queues != set->nr_hw_queues) {
> @@ -5039,13 +5031,6 @@ static void __blk_mq_update_nr_hw_queues(struct blk_mq_tag_set *set,
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

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/220cdd33-527f-405d-90af-2abaace36645%40linux.ibm.com.
