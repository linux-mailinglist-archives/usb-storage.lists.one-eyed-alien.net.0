Return-Path: <usb-storage+bncBD4KDUPW5UNBBINB6O5QMGQEGZK6MHY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x148.google.com (mail-il1-x148.google.com [IPv6:2607:f8b0:4864:20::148])
	by mail.lfdr.de (Postfix) with ESMTPS id 97A0CA03846
	for <lists+usb-storage@lfdr.de>; Tue,  7 Jan 2025 07:58:43 +0100 (CET)
Received: by mail-il1-x148.google.com with SMTP id e9e14a558f8ab-3a81570ea43sf147464295ab.0
        for <lists+usb-storage@lfdr.de>; Mon, 06 Jan 2025 22:58:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736233122; cv=pass;
        d=google.com; s=arc-20240605;
        b=ZCeI9ITb/PbFpaDwZeaccOZ9XowNep+X2+EhH3+NVQrlid8gUkdz34GbgG57mGokrf
         GXh4CJJ+685/zVp+nQfffPmXQGdNpsM2aqhVd/Km7q2PUzChwaXGtGNCBCttoJ6LpOuq
         aH0/k8hobMVrGTStZBof7wjY3N4wTmGKx62252DpPpEf0QjHWgurqD8HrcmE3YhtAK6M
         VcQd29NdVku/TtGW8TLc8SpP7rvWvDvfm4w63LkiLvZnZCsNLNCFFs4jqRqu5buxAEC+
         q+Td3errDn6uqMRowz/xdwWc3pnmquGHAwNf5uWqbpVlkzfUbi7s3f1D4eWZGFWD0ZkG
         /A8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=PrqEsaKMrmSI5VV2eoEFCPc6+A3E1YlPq0J5lHoDZEQ=;
        fh=0nW13msWqVAG88/gAKseb9hQ3Ixr5p18L1T0JKvNwQ8=;
        b=gLcXJQa3KqHb5/A1AfkjqmJllf2aKt2/Znq2tb5l1tgdvDAwpin56Hk9AXi29REPJR
         Nzh2dbu7+qzhTkGm1NEkqqADSRZGI/wypGRswyMWbawjj+aYT9ZhnVy9jOp0GzvO4mec
         U2ki/GbquiVOIP1ZEArfaBTKLnAYIEIFuEr4WnKRLQlS+2dbVbSA5rCaknhUQcF/cdNW
         wmJf1qdHo7epawSkHi4Jl6VyNDGm+Nibsc5mXOOVDTEGBi1sNfp7wP9tRmONiaiJsn28
         l/Pk2MOt0pddYe416+OmNdnPxjM0t3gOByFtkYSZrbx6fsweridXSNgIGyoGmrT4b8JZ
         Xg8Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=BLJTkUOs;
       spf=pass (google.com: domain of nilay@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=nilay@linux.ibm.com;
       dmarc=pass (p=REJECT sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736233122; x=1736837922; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:from:content-language:references:cc
         :to:subject:user-agent:mime-version:date:message-id:sender:from:to
         :cc:subject:date:message-id:reply-to;
        bh=PrqEsaKMrmSI5VV2eoEFCPc6+A3E1YlPq0J5lHoDZEQ=;
        b=aMMa2Ye9Qpq0H5FNDuwgV/ViGAMxejhLEZInJ0Ka/2q97Q1GczvWBU/rqjXoU+PSAB
         jGrd7j07pH3ZX31iOURupxQihPh+tXqaO+KSY72g8Y8KPMH5FwPCfE2SF62SI83dQOkI
         wXdnp1NS3f40X7KB0NtUurJMTX1/TxmarJoDo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736233122; x=1736837922;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:content-language:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PrqEsaKMrmSI5VV2eoEFCPc6+A3E1YlPq0J5lHoDZEQ=;
        b=TCVNualuNnIqvNUbqY+erDZuDop28xi+rfZhUAn6kDB58NkeUPK2w8cPgnRd4CDbHp
         ukz+jbrLeHp7w5uWGfBUz9SrTZ0IBuV5ndukUI0aw9IBgiOdzXvKEpJXXahwf22pE2JM
         SMKTYn1A5xKvHTtbIdpn/YLeoOC4x5qKgRq91nBXlfOpyzHKwDrerz/a9X4YcDYV4v3d
         H3183qaz85JOg+Y+dn6pVCqaD0GBbvYQ5rkKltLwCf0hB+vGF5k93p4XuPkff9ZXGVdZ
         4ABvflUl0qXwJQZIHAThJIafBt7kz+5gqIt7vfxZYUxCZEd8trMj5JoUNxB5IWe9kUNi
         nFHg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXdpOf7GH++cEvlOuqkYdLZG1UrELbKRzG+TMjXZdX+kN7UFq2Vx5ABxYViw6gQYHMdT+t7Qg==@lfdr.de
X-Gm-Message-State: AOJu0YysaOAcIgzMLZcg3ZnYiTMOa/L/DOJdM2X29lZ1DjCsZrbGpTfV
	DyUjlL7XsSirXM8WpZGB8anwqTc6wwaOs4ubcADOLlrxNt/GBFxGrXgeARnI9YY=
X-Google-Smtp-Source: AGHT+IFi2KkcgICBvwwneXNtGS4C9X2b/OZPGuVcgmbX9RCGiWYsUSkqBnxj3/wkP0zaDmhQVvlMXA==
X-Received: by 2002:a05:6e02:522:b0:3a7:e0a5:aa98 with SMTP id e9e14a558f8ab-3c2d2d509b6mr374207325ab.13.1736233122185;
        Mon, 06 Jan 2025 22:58:42 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6e02:1445:b0:3c9:9959:576b with SMTP id
 e9e14a558f8ab-3c9995959b9ls6475025ab.2.-pod-prod-09-us; Mon, 06 Jan 2025
 22:58:41 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXubK0hPhRZlDlkkLnNy4YrRkiLwdW3V4cqcDXx4V4bWBJdEcG7f46htlWZGB0rR85u1nT4uUeZYajWRw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6e02:1546:b0:3a7:764c:42fc with SMTP id e9e14a558f8ab-3c2d5916145mr514130685ab.21.1736233121395;
        Mon, 06 Jan 2025 22:58:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736233121; cv=none;
        d=google.com; s=arc-20240605;
        b=GXy8ZDiM0OIDehJ0ERmA4qwU68Q1BTr7eVjFSUkUrNoAvJREFX66ack1MmHMeyFhNu
         KNjul0LL9479go7rkLP0QYjuK/8Lgb6OfJRthEjZy75vFqFEmgJmHBJgF18/XhCjqXAi
         B/leIXrt4ZPZ/YRzGIJXTLB9GT6XfF1mZs/+UX0V0jKYn2S1JK+1MpOQ0WJl3nXZaTjl
         Rz01RKZ6yDspE/zOsBN9vCjfsS2qE3JJqOKsEM6M+eVQVjSAxKBLNoQRdaSMTdwMOO1C
         0scTXOg94Nu4B0oVVVjnLlwvG8MO1TucV5oSl+s1UHVjHaUezcXNNIZfJc1mVbsc2bHa
         OjgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=KpHXMOm+9p/COV0RdgDfwai744BO7sKjXnaTUC9X0uo=;
        fh=wC5V8QQsOkBKJqKElVTGqyBTcD6ODgNp7g//iXCbcNg=;
        b=dVDwaIY/I58u+8PV5u6pvwVYpkE+h1iJQzH2fR+vkYdW8gCwU++XS6Vv70QhIzJ57U
         ZLTk7Xswn3VkccUbDZra1G1Piwk4Rn1Jf6ExbzUBmvRmGfhgrr/upCIOzs4jfN5VjKbD
         wvoMEsF2wM+T/VocoLU5gPd0UKdhkZ/2IL32ANOuIoF1of+f+hTPIU3LtBGYJi3rAIl2
         j7IVec9Z8lw7iANz0ZrYTgU40dalN7H5QsrWUeBmpdG1CAJvRcOu1WiDg4t+MnIhy4JJ
         gW2buDQrItdM7omTmxCa8bLqJZzSRKsXF6GYtcEvO1DMVkWxqLv42tEyU9qdErYiKE6A
         sgsA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=BLJTkUOs;
       spf=pass (google.com: domain of nilay@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=nilay@linux.ibm.com;
       dmarc=pass (p=REJECT sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com. [148.163.156.1])
        by mx.google.com with ESMTPS id 8926c6da1cb9f-4e68bf6e21bsi22590729173.9.2025.01.06.22.58.41
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Jan 2025 22:58:41 -0800 (PST)
Received-SPF: pass (google.com: domain of nilay@linux.ibm.com designates 148.163.156.1 as permitted sender) client-ip=148.163.156.1;
Received: from pps.filterd (m0353729.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 506NwAfp022105;
	Tue, 7 Jan 2025 06:58:35 GMT
Received: from ppma12.dal12v.mail.ibm.com (dc.9e.1632.ip4.static.sl-reverse.com [50.22.158.220])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 440sahhcv4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 07 Jan 2025 06:58:34 +0000 (GMT)
Received: from pps.filterd (ppma12.dal12v.mail.ibm.com [127.0.0.1])
	by ppma12.dal12v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 5073hxua003572;
	Tue, 7 Jan 2025 06:58:33 GMT
Received: from smtprelay02.dal12v.mail.ibm.com ([172.16.1.4])
	by ppma12.dal12v.mail.ibm.com (PPS) with ESMTPS id 43yfat1f3g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 07 Jan 2025 06:58:33 +0000
Received: from smtpav04.dal12v.mail.ibm.com (smtpav04.dal12v.mail.ibm.com [10.241.53.103])
	by smtprelay02.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 5076wXt224969974
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 7 Jan 2025 06:58:33 GMT
Received: from smtpav04.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 81A3F58056;
	Tue,  7 Jan 2025 06:58:33 +0000 (GMT)
Received: from smtpav04.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 88B325805A;
	Tue,  7 Jan 2025 06:58:30 +0000 (GMT)
Received: from [9.109.198.241] (unknown [9.109.198.241])
	by smtpav04.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Tue,  7 Jan 2025 06:58:30 +0000 (GMT)
Message-ID: <96c48ba0-3db5-4504-a456-e57440aa1b56@linux.ibm.com>
Date: Tue, 7 Jan 2025 12:28:29 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 6/8] nvme: fix queue freeze vs limits lock order
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
Cc: Damien Le Moal <dlemoal@kernel.org>, Ming Lei <ming.lei@redhat.com>,
        linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
        nbd@other.debian.org, linux-scsi@vger.kernel.org,
        usb-storage@lists.one-eyed-alien.net
References: <20250107063120.1011593-1-hch@lst.de>
 <20250107063120.1011593-7-hch@lst.de>
Content-Language: en-US
From: Nilay Shroff <nilay@linux.ibm.com>
In-Reply-To: <20250107063120.1011593-7-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: kNDX2K_hOJmEPH2iCzn3cqGxjK01fk3U
X-Proofpoint-ORIG-GUID: kNDX2K_hOJmEPH2iCzn3cqGxjK01fk3U
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-15_01,2024-10-11_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 mlxscore=0
 adultscore=0 mlxlogscore=999 impostorscore=0 priorityscore=1501
 clxscore=1015 lowpriorityscore=0 spamscore=0 suspectscore=0 phishscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501070052
X-Original-Sender: nilay@linux.ibm.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=BLJTkUOs;       spf=pass (google.com:
 domain of nilay@linux.ibm.com designates 148.163.156.1 as permitted sender)
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
> Match the locking order used by the core block code by only freezing
> the queue after taking the limits lock.
> 
> Unlike most queue updates this does not use the
> queue_limits_commit_update_frozen helper as the nvme driver want the
> queue frozen for more than just the limits update.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  drivers/nvme/host/core.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index c2250ddef5a2..1ccf17f6ea7f 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -2128,9 +2128,10 @@ static int nvme_update_ns_info_generic(struct nvme_ns *ns,
>  	struct queue_limits lim;
>  	int ret;
>  
> -	blk_mq_freeze_queue(ns->disk->queue);
>  	lim = queue_limits_start_update(ns->disk->queue);
>  	nvme_set_ctrl_limits(ns->ctrl, &lim);
> +
> +	blk_mq_freeze_queue(ns->disk->queue);
>  	ret = queue_limits_commit_update(ns->disk->queue, &lim);
>  	set_disk_ro(ns->disk, nvme_ns_is_readonly(ns, info));
>  	blk_mq_unfreeze_queue(ns->disk->queue);

I think we should freeze queue before nvme_set_ctrl_limits(). 

> @@ -2177,12 +2178,12 @@ static int nvme_update_ns_info_block(struct nvme_ns *ns,
>  			goto out;
>  	}
>  
> +	lim = queue_limits_start_update(ns->disk->queue);
> +
>  	blk_mq_freeze_queue(ns->disk->queue);
>  	ns->head->lba_shift = id->lbaf[lbaf].ds;
>  	ns->head->nuse = le64_to_cpu(id->nuse);
>  	capacity = nvme_lba_to_sect(ns->head, le64_to_cpu(id->nsze));
> -
> -	lim = queue_limits_start_update(ns->disk->queue);
>  	nvme_set_ctrl_limits(ns->ctrl, &lim);
>  	nvme_configure_metadata(ns->ctrl, ns->head, id, nvm, info);
>  	nvme_set_chunk_sectors(ns, id, &lim);
> @@ -2285,6 +2286,7 @@ static int nvme_update_ns_info(struct nvme_ns *ns, struct nvme_ns_info *info)
>  		struct queue_limits *ns_lim = &ns->disk->queue->limits;
>  		struct queue_limits lim;
>  
> +		lim = queue_limits_start_update(ns->head->disk->queue);
>  		blk_mq_freeze_queue(ns->head->disk->queue);
>  		/*
>  		 * queue_limits mixes values that are the hardware limitations
> @@ -2301,7 +2303,6 @@ static int nvme_update_ns_info(struct nvme_ns *ns, struct nvme_ns_info *info)
>  		 * the splitting limits in to make sure we still obey possibly
>  		 * lower limitations of other controllers.
>  		 */
> -		lim = queue_limits_start_update(ns->head->disk->queue);
>  		lim.logical_block_size = ns_lim->logical_block_size;
>  		lim.physical_block_size = ns_lim->physical_block_size;
>  		lim.io_min = ns_lim->io_min;

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/96c48ba0-3db5-4504-a456-e57440aa1b56%40linux.ibm.com.
