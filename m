Return-Path: <usb-storage+bncBAABBAX6Q2YAMGQEMK7M3RI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x48.google.com (mail-oa1-x48.google.com [IPv6:2001:4860:4864:20::48])
	by mail.lfdr.de (Postfix) with ESMTPS id BEE2688AD5E
	for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 19:14:27 +0100 (CET)
Received: by mail-oa1-x48.google.com with SMTP id 586e51a60fabf-229fde0eb7esf1349774fac.1
        for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 11:14:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711390466; cv=pass;
        d=google.com; s=arc-20160816;
        b=tpk+5IphILbWjDyS/u/V3j8WwPB5PZv5Ip09J+rZwhjKk/v0ivRV5CysP5bYe1fUSm
         mq7vWdUvUNpXT4LZRuy6pQYMmRvawLnrc6cjctkSaa8qyIO45cHSdF3CWRFNSMj2i+ss
         RLQTa8ZbG3+mD4mhoc+BeXZvEovwpW3tIfh1hoaCEyItEbOp5N0K/aC+oV9pKhC0bv29
         OWaovMZaewLr43auY5UnlGQdFevj1O6VslGy8LXC6WnGpxsSzCrUdzV3XDGrpUO98MTX
         t/PyLqKuRLUTaRgGliT8hvX2pA8+F8m0ATx09Uc2f2PxsB/wjPy1CElfULgldYQgITY/
         C3YA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:organization:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=FThfi9lPKK+JrsI1758IHMCSYk7LtpMeaRdflTMrh2o=;
        fh=ofAO8Ks2vtZgnMNOffpxKga7O1anE9YA3EsCkzM9oGE=;
        b=hGybF5ClR5kVxLcQ3oHbNMoVHUS25prOVRdj8yMBaX8Cgu4YZPNATZCpikWiJaUgib
         9VVpaPJ0AvlkbjyQ3Jc9cfMTy1lhzO6m6Y804JS79rvC2aC96i22HYnvuPk+8idhq3W7
         VriRUr4RifXuzMhw6sKEqqrrGXFQa3T0cSVpFwDGd2qyxB6tE2CT/ZbHzcre1hv+p+xv
         0bQQ5FrKTY0HXlvCJEVm2XQbjLXgEAYGMptRgu+9xOlebMgCOh1huKiSWT36VGIrQp9e
         XklNr+n+d/cG76TROZz6OMwID3qeLQ0dBaL+rtK9HX291FyUMqBIp4NLjTmPFcUBJW+B
         3HuQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=lwMMElU2;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711390466; x=1711995266; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=FThfi9lPKK+JrsI1758IHMCSYk7LtpMeaRdflTMrh2o=;
        b=Iy6MGu0UBvRh4F2sFSjM87l6+lzBdBQAwkfardfYMYKU6OgmaMdsyOChO9ObGHGv4d
         G03IDTkisiNGCKwUhKU7wtCLGuuSDtdn+XsipZ+my0P4NYhcIcFYien09KO3hmQ9MEPw
         j9dCATMlO3qXKZCoeXhTzYrxMKchSYWRblmF4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711390466; x=1711995266;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FThfi9lPKK+JrsI1758IHMCSYk7LtpMeaRdflTMrh2o=;
        b=mbJOC2xNNM7DOJrycPgNPikU+qPY/S+OGD889nJ2/3fudDcLYd/dFYnOuHxE2nqlzG
         VCX2rXa5xyt1zImdC9RkzzV/FHDy7+9dmAHmVr7e/8LJVi9mqBpcohL1fmMMR2Fq42A/
         IdnnKkTNNnLCP3eQJ2c1508vHfy8drC0jhpOZjRZ/K+ZnYfds21AB/eEgsx6O25HOjZZ
         kLLLdUt7wMTBhS/gBNVOek6spep55bnMJY8nQ6iJaEw8NpWEICS1mUJbUCHe3HnJlwLX
         x7PhJ8vmQQWSA/pVliyAwSCNEByEeGGNy4iZljgrCrVv4fsD5sgipve602wzkM+9PH15
         e+TA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWrOlQ8Rx78kKdAE5c5NFAkKxjVS6491bnmaEAchI/hrjxlDKtLqRXsZV8yPz8Ch7e7FzhEsJ2+yhnix3G5ueykvDSyhwOD50oO
X-Gm-Message-State: AOJu0YwsrgaZ3Urnrs1gpDjhwnYUJOoGonk19PkhJspReAg71wDp1Q0M
	BcTRq+eLzZ1/8yodmU7yovEZG2Q5KZoBnCo9DPXIU7BqophhJP11Uwb1dHpmZ0o=
X-Google-Smtp-Source: AGHT+IHGHsNlAe4v7a8zCg496Uf+m8OsgSri2p6I7sLbEP3m8FV2YYqGR+V2w3uTKUbgj4btLnQAAQ==
X-Received: by 2002:a05:6870:8a0f:b0:22a:51f6:b059 with SMTP id p15-20020a0568708a0f00b0022a51f6b059mr656748oaq.3.1711390466510;
        Mon, 25 Mar 2024 11:14:26 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:569f:b0:229:f956:88f0 with SMTP id
 p31-20020a056870569f00b00229f95688f0ls295002oao.1.-pod-prod-05-us; Mon, 25
 Mar 2024 11:14:26 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUgwfFVxSpw5XKX6bYR8tAVfsU4QJeTHrmAdkYS8bfR9ffv9RJ71ULJaDZmDWxMguwIXSyScFejDeTE2cP/e7SfBG61o4joMnH1QjJn2MuVkZ7fYjs=
X-Received: by 2002:a05:6870:96a9:b0:229:8165:2683 with SMTP id o41-20020a05687096a900b0022981652683mr283178oaq.0.1711390466104;
        Mon, 25 Mar 2024 11:14:26 -0700 (PDT)
Received: by 2002:a05:6808:1783:b0:3c3:cc09:ef6d with SMTP id 5614622812f47-3c3cc09f277msb6e;
        Mon, 25 Mar 2024 00:38:56 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCV7sKaLW0b1Kkvb5+CVBYEJ1u1v7dKbM0Dv5MkvZ22K+V7ks0vmEWuw+BUWF35NTVJ5S8D2NKV3pgU1IrHnIRRNOfg56D4F2THFLTClOCL+g9+AqM8=
X-Received: by 2002:a05:6a00:8a16:b0:6ea:aaf5:e1b0 with SMTP id ic22-20020a056a008a1600b006eaaaf5e1b0mr2414511pfb.6.1711352335199;
        Mon, 25 Mar 2024 00:38:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711352335; cv=none;
        d=google.com; s=arc-20160816;
        b=x43uwgDg0dhVyKivrorYtRs88xSCs3XH2qv4YDM5DWK4sdg/Wh8z7mZrRhiwVlYA23
         wBhd+o8cAvSO5gZcJjLTc0Njgasb6nrg9Tmx9xax68S0GpQYFbYT1UB8NKB1obZz420T
         hJbEkzAgNMn7m+V9X722+hS/4Q5KCLRYKUU6gLcrlNL1IHiSMPUkto6BcGdRY+Pfeune
         6N3GgEOFoxs8Tfa1aXugjdngmnMIl51E7i8g/MACd7TtVBqc7JChD5/Vqp+V7iE4Oq9O
         /tvnEk56XdxILQ58trt2XCszDf+5WUN8WKQUsrJGijGhJwx9iZs1Y5NxoeQmsz/tnGiW
         PjQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=F3kDyxMRVFCK2GNzi8RVUjQziStu/ZXl6Kb4XsAVjoU=;
        fh=42thyqLuX+U3R/biblipVYna9LUz9grvZASiaIDfzRc=;
        b=OwZ3tdEs/1yxVR/kCFXDTglRclIMgssRGEvm9/uFV5T239g6S+8Mke2wm2EVgzTvs1
         vukboDdo6GhbKWEVwwjXRSAqhgALPK9LJhWDnJI+IOTOQuNau2GZ5pdzq0Nd7SRfccXk
         debiCN+oDHjH8sntC5nKA10ffj+l6zF5/Cz44BYX7tnlepzhGg+j8W4abCPFe5dkWe7P
         j9y8Gp/TVz6OwccEP7wwVKyy/nvKRMsLiXXCUwNVLjfBsPMO2Ww212BEZh7fsUjfPcBX
         pmoawW8FHtEbzGoO4tn8V/8xXozCqUGNJygW2I/+dnCr4gFvUUMo/AEySEALArvvNhxd
         i2Sg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=lwMMElU2;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [2604:1380:40e1:4800::1])
        by mx.google.com with ESMTPS id du19-20020a056a002b5300b006e54b34bfc7si4629164pfb.299.2024.03.25.00.38.55
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 00:38:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) client-ip=2604:1380:40e1:4800::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id A76D0CE1056;
	Mon, 25 Mar 2024 07:38:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1C484C433C7;
	Mon, 25 Mar 2024 07:38:44 +0000 (UTC)
Message-ID: <6199c70e-f0a9-4756-b3fb-106985c41ebf@kernel.org>
Date: Mon, 25 Mar 2024 16:38:43 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 10/23] scsi: add a device_configure method
 to the host template
Content-Language: en-US
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>,
 "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: Niklas Cassel <cassel@kernel.org>,
 Takashi Sakamoto <o-takashi@sakamocchi.jp>,
 Sathya Prakash <sathya.prakash@broadcom.com>,
 Sreekanth Reddy <sreekanth.reddy@broadcom.com>,
 Suganath Prabu Subramani <suganath-prabu.subramani@broadcom.com>,
 "Juergen E. Fischer" <fischer@norbit.de>,
 Xiang Chen <chenxiang66@hisilicon.com>,
 HighPoint Linux Team <linux@highpoint-tech.com>,
 Tyrel Datwyler <tyreld@linux.ibm.com>, Brian King <brking@us.ibm.com>,
 Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
 Mike Christie <michael.christie@oracle.com>,
 John Garry <john.g.garry@oracle.com>, Jason Yan <yanaijie@huawei.com>,
 Kashyap Desai <kashyap.desai@broadcom.com>,
 Sumit Saxena <sumit.saxena@broadcom.com>,
 Shivasharan S <shivasharan.srikanteshwara@broadcom.com>,
 Chandrakanth patil <chandrakanth.patil@broadcom.com>,
 Jack Wang <jinpu.wang@cloud.ionos.com>, Nilesh Javali <njavali@marvell.com>,
 GR-QLogic-Storage-Upstream@marvell.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 Bart Van Assche <bvanassche@acm.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Alan Stern <stern@rowland.harvard.edu>, linux-block@vger.kernel.org,
 linux-ide@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 MPT-FusionLinux.pdl@broadcom.com, linux-scsi@vger.kernel.org,
 open-iscsi@googlegroups.com, megaraidlinux.pdl@broadcom.com,
 mpi3mr-linuxdrv.pdl@broadcom.com, linux-samsung-soc@vger.kernel.org,
 linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
References: <20240324235448.2039074-1-hch@lst.de>
 <20240324235448.2039074-11-hch@lst.de>
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20240324235448.2039074-11-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=lwMMElU2;       spf=pass
 (google.com: domain of dlemoal@kernel.org designates 2604:1380:40e1:4800::1
 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On 3/25/24 08:54, Christoph Hellwig wrote:
> This is a version of ->slave_configure that also takes a queue_limits
> structure that the caller applies, and thus allows drivers to reconfigure
> the queue using the atomic queue limits API.
> 
> In the long run it should also replace ->slave_configure entirely as
> there is no need to have two different methods here, and the slave
> name in addition to being politically charged also has no basis in
> the SCSI standards or the kernel code.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  drivers/scsi/scsi_scan.c | 33 +++++++++++++++++++--------------
>  include/scsi/scsi_host.h |  4 ++++
>  2 files changed, 23 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/scsi/scsi_scan.c b/drivers/scsi/scsi_scan.c
> index 699356d7d17545..8e05780f802523 100644
> --- a/drivers/scsi/scsi_scan.c
> +++ b/drivers/scsi/scsi_scan.c
> @@ -227,7 +227,7 @@ static int scsi_realloc_sdev_budget_map(struct scsi_device *sdev,
>  
>  	/*
>  	 * realloc if new shift is calculated, which is caused by setting
> -	 * up one new default queue depth after calling ->slave_configure
> +	 * up one new default queue depth after calling ->device_configure
>  	 */
>  	if (!need_alloc && new_shift != sdev->budget_map.shift)
>  		need_alloc = need_free = true;
> @@ -874,8 +874,9 @@ static int scsi_probe_lun(struct scsi_device *sdev, unsigned char *inq_result,
>  static int scsi_add_lun(struct scsi_device *sdev, unsigned char *inq_result,
>  		blist_flags_t *bflags, int async)
>  {
> +	const struct scsi_host_template *hostt = sdev->host->hostt;
>  	struct queue_limits lim;
> -	int ret;
> +	int ret, ret2;
>  
>  	/*
>  	 * XXX do not save the inquiry, since it can change underneath us,
> @@ -1073,22 +1074,26 @@ static int scsi_add_lun(struct scsi_device *sdev, unsigned char *inq_result,
>  		lim.max_hw_sectors = 512;
>  	else if (*bflags & BLIST_MAX_1024)
>  		lim.max_hw_sectors = 1024;
> -	ret = queue_limits_commit_update(sdev->request_queue, &lim);
> +
> +	if (hostt->device_configure)
> +		ret = hostt->device_configure(sdev, &lim);
> +	else if (hostt->slave_configure)
> +		ret = hostt->slave_configure(sdev);
> +
> +	ret2 = queue_limits_commit_update(sdev->request_queue, &lim);

Why do this if ->device_configure() or ->slave_configure() failed ?
Shouldn't the "if (ret) goto fail" hunk be moved above this call ?

> diff --git a/include/scsi/scsi_host.h b/include/scsi/scsi_host.h
> index b0948ab69e0fa6..1959193d47e7f5 100644
> --- a/include/scsi/scsi_host.h
> +++ b/include/scsi/scsi_host.h
> @@ -211,7 +211,11 @@ struct scsi_host_template {
>  	 *     up after yourself before returning non-0
>  	 *
>  	 * Status: OPTIONAL
> +	 *
> +	 * Note: slave_configure is the legacy version, use device_configure for
> +	 * all new code.

Maybe explictly mention that both *cannot* be defined here ?

>  	 */
> +	int (* device_configure)(struct scsi_device *, struct queue_limits *lim);
>  	int (* slave_configure)(struct scsi_device *);
>  
>  	/*

With these 2 nits addressed, looks all goo to me. Feel free to add:

Reviewed-by: Damien Le Moal <dlemoal@kernel.org>

-- 
Damien Le Moal
Western Digital Research

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/6199c70e-f0a9-4756-b3fb-106985c41ebf%40kernel.org.
