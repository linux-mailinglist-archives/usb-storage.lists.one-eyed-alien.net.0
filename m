Return-Path: <usb-storage+bncBCZNB4MJSMHRBKNL7G5QMGQEEDK5RUI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x848.google.com (mail-qt1-x848.google.com [IPv6:2607:f8b0:4864:20::848])
	by mail.lfdr.de (Postfix) with ESMTPS id 63631A0584A
	for <lists+usb-storage@lfdr.de>; Wed,  8 Jan 2025 11:38:34 +0100 (CET)
Received: by mail-qt1-x848.google.com with SMTP id d75a77b69052e-46799aa9755sf491559271cf.0
        for <lists+usb-storage@lfdr.de>; Wed, 08 Jan 2025 02:38:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736332713; cv=pass;
        d=google.com; s=arc-20240605;
        b=PB4mdoraWFdkuzvZNU+RFQbwSDpfoCihPI5wp1nryuQ1O3itFRJHT0nq1M42E4Y84T
         dhJpq+yqOPGmX5vWnxjTLmTEud/B/Sj62nvNdzvYLVMFqoaw4HMO0m4jFeSweNze81Co
         qo9w/yZsUoGQ6MoticY53PDHalP/bYXDD4jPt27tU+MPkk/pyciKqPqkrCsv/wY9Gogq
         91/oFORuigQ2NJfPsTAAd8pN3LcZ3ZQHd/penV4MV4nRctnsp9YpVNdZnzVst6010i4B
         VPr7w/nfAcZlsSA7SDUay6EosjBPrMX0VaUU+v/8TkbkjrLRCmkfb3sZMkMiqhevlGH2
         bywg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=qDNsceEeErsUXfjmurydJUsV5fLGPYX/UInqhkyndOw=;
        fh=GaX6PPnTwo57I9I5DiQ/vNbVlBMOGbxikc9A9I6CDr8=;
        b=O51s1wRuoliiL0+GeGqPFc3o3oEldQgOeJFxzfHgr+46dizYKLZpZjbK8iqhqA6ovH
         0uZibXpG7/KUEsx4eNcpDWnkT08WcWigFw9dwrH9X7z3HfgG2nVba6TP4WZGcKo/SDSA
         bRsox1lpxuRuIYFs3PMEWYRpMHCw1bLVMN69SB3iGCafbzvzK2H4RCOwSEY7zrSpR5l7
         y88E9fDja6CdCqSdGjFCXzEG52dQjIA0MEY5VXtoYopmoUtQi8unRFACtcDksLgk/mZm
         MNZ2ha/YwIDWLR+HwRT13KutHaQNZ44TgjyRAQNNM1DtI4K38yKYqogXVtKNyT2vR8Tv
         8aWg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=jDFYsoXt;
       spf=pass (google.com: domain of ming.lei@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=ming.lei@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736332713; x=1736937513; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qDNsceEeErsUXfjmurydJUsV5fLGPYX/UInqhkyndOw=;
        b=KFUXuWLlhyx1KVDbCrmN5x8SqqDwdGZ3ZH04lqjE+IrSjmsAJcIX+n7gbuK6l/BVmt
         hNMoidj3061amdKbi1hjT6l0rGOuN1dNEpmuaKLJhENEhP4JdTYG3zHm5pQqGW5ahyQ8
         2oAfnnsm8+c1Il5zBl7CfXPAyOt51QoDkD7jU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736332713; x=1736937513;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qDNsceEeErsUXfjmurydJUsV5fLGPYX/UInqhkyndOw=;
        b=S4XEc9jrlep7weZFdpehOjVt3PR0l3wQ97iOHmrNJp/RIUTnHffg9tf2k6aSLq7A7/
         giAmkpwbcxPUIOveMUNsvbWEZZslif1uqmf8m3Sq9Z2KyEJF0bcy2l4kAptF1x3wkLjD
         eOHDfy7mOay0h/4UWHxx8b9/UKor+Y3Yq1Ui7UyskXXKsVtNKsf0ngrXkpO8PwZFxSn7
         pnOG1++qeoQzOzvVQe6EcEgIRDoxWjkxjeUd9I7jA5JMeBCLMoI4K5W50ZCe0qKQuk//
         F8bVJoGJXwu1k+1Rh1hkr9sWOYDFXDmIfDTgSxrm5fUuw9luIe7GFDC+9EHc7RaNlRHU
         E3rA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCU5eXPF0ghSiEx8carQXcPiKPcHy15wwOBrEY+gWfvyZejUdqmvE0nQhJL9gI1IrWZz0sc05A==@lfdr.de
X-Gm-Message-State: AOJu0Ywlp2dvwDJE7XMeIsMSl2gUTjTmVQRdaDqea/Gfk8IPzaz6FY6E
	6c6rYlcK1YrpkGO4+a3IhaAW3l5EeXh1sc6CchV2Jsf8tsOAc36ZOzJq5oZHEeI=
X-Google-Smtp-Source: AGHT+IF1ZKt1LvEoMCdXyWTqahledLFErHsgbyFU7EBOOzfhnOsOnZBOhC0b3oQ4bzSN4C6UjsCSCw==
X-Received: by 2002:a05:622a:1350:b0:467:5e4f:3d1 with SMTP id d75a77b69052e-46c7102fda3mr34716341cf.33.1736332713254;
        Wed, 08 Jan 2025 02:38:33 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:622a:59ce:b0:467:4d40:31b9 with SMTP id
 d75a77b69052e-46b37345176ls49558371cf.0.-pod-prod-06-us; Wed, 08 Jan 2025
 02:38:32 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUZ3aA15suuE2+OImxlkqypQBwQ05SjqkEq5p7kVfzV4RyP8CQYshm5go6GczVoEjyN6sB26hFwiYOLFg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:620a:244a:b0:7b6:d4a2:f11f with SMTP id af79cd13be357-7bcd961c450mr321970185a.0.1736332712352;
        Wed, 08 Jan 2025 02:38:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736332712; cv=none;
        d=google.com; s=arc-20240605;
        b=VgLWdlarzTDLEQn/Qs0RDrWrHlf+a5bQEAJ6dmom2iK87ig8YgrYPqvM5yh+dg2mwc
         UmVPM+IPRBedkVHqOcMTJLC7Y9k++JCxQgfDfDmf/DY2kFe8i1zg7BzYuZV7borYGXYd
         NDUfVyLIaHclEI8BEw2LxqIwhEBVbzcFDpFiorhfioYspY2a1ZkOr4qJIbxsO3j7Z6XJ
         a2PIc4jwNecV2p1pYSEMGXSP05TfctGzUfZFeNPc64T8uys/Hg1ZZAHzpjhkdhDgKL1M
         LHqh04IxjbitOewrR2FyljzrLQH8/iCR1WQxUjVAfKM3lj9BTgjMe6hPCkXvVCSY8AA0
         ZHPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=6A0lh+ndcSF6DjOirFuduftIcxun2HRRgFxH+ut8x7A=;
        fh=qxJjebJ4kXQxwqDHz44qjxVnY49wm3hZvrgJ6gPRbXw=;
        b=fmvcP65RIrw/F9zXlbH+cpXob98g+Nc1yDevFGRtOSRP7PnAcPgBPp/W8NOkD9S6Le
         cPL6tErMyFYKY9rWcUTHW2hjYj5JB7JiwRAXBbpzp53jjroxDY67tIf3BD4BcGSft4Kq
         3nDTDRhfJ9OKJcQcPSLWZq8tFdBpu0Lz0+fDhpzKkma5d0N4y2xHlDzReJh3i+l0LvgY
         kY60vidI477/y4tmsVAC6TOHJiPdWQtM/V5plqCNts2cAlsg3Duq8yP9g4zzOkxM3GT9
         rhkcWaKHSDZETnlR7uirBDHPeqdNTPOwd5igaQMTaP5Ug4YOUALKOE+7KuiNNE/hMQKZ
         RqhA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=jDFYsoXt;
       spf=pass (google.com: domain of ming.lei@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=ming.lei@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by mx.google.com with ESMTPS id af79cd13be357-7b9ac4e18a9si4674179985a.464.2025.01.08.02.38.32
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 02:38:32 -0800 (PST)
Received-SPF: pass (google.com: domain of ming.lei@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-370-nmWSk0vGN_afeSn9dDJuhA-1; Wed,
 08 Jan 2025 05:38:28 -0500
X-MC-Unique: nmWSk0vGN_afeSn9dDJuhA-1
X-Mimecast-MFC-AGG-ID: nmWSk0vGN_afeSn9dDJuhA
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id ABD061955F39;
	Wed,  8 Jan 2025 10:38:26 +0000 (UTC)
Received: from fedora (unknown [10.72.116.74])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C154519560AA;
	Wed,  8 Jan 2025 10:38:20 +0000 (UTC)
Date: Wed, 8 Jan 2025 18:38:15 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Christoph Hellwig <hch@lst.de>
Cc: Jens Axboe <axboe@kernel.dk>, Damien Le Moal <dlemoal@kernel.org>,
	Nilay Shroff <nilay@linux.ibm.com>, linux-block@vger.kernel.org,
	linux-nvme@lists.infradead.org, nbd@other.debian.org,
	linux-scsi@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH 05/10] block: fix queue freeze vs limits
 lock order in sysfs store methods
Message-ID: <Z35Vl6ob0zLH_Kh-@fedora>
References: <20250108092520.1325324-1-hch@lst.de>
 <20250108092520.1325324-6-hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20250108092520.1325324-6-hch@lst.de>
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Original-Sender: ming.lei@redhat.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=jDFYsoXt;
       spf=pass (google.com: domain of ming.lei@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=ming.lei@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Wed, Jan 08, 2025 at 10:25:02AM +0100, Christoph Hellwig wrote:
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
> ---
>  block/blk-sysfs.c | 18 ++++++++++--------
>  1 file changed, 10 insertions(+), 8 deletions(-)
> 
> diff --git a/block/blk-sysfs.c b/block/blk-sysfs.c
> index f36356cbde0b..2de405cb5f10 100644
> --- a/block/blk-sysfs.c
> +++ b/block/blk-sysfs.c
> @@ -691,22 +691,24 @@ queue_attr_store(struct kobject *kobj, struct attribute *attr,
>  	if (entry->load_module)
>  		entry->load_module(disk, page, length);
>  
> -	mutex_lock(&q->sysfs_lock);
> -	blk_mq_freeze_queue(q);
>  	if (entry->store_limit) {
>  		struct queue_limits lim = queue_limits_start_update(q);
>  
>  		res = entry->store_limit(disk, page, length, &lim);

Looks fine, but now ->store_limit() is called without holding
->sysfs_lock, maybe it should be documented.

Reviewed-by: Ming Lei <ming.lei@redhat.com>


thanks,
Ming

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/Z35Vl6ob0zLH_Kh-%40fedora.
