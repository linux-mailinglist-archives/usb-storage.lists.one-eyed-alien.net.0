Return-Path: <usb-storage+bncBCZNB4MJSMHRBENO6O5QMGQEWDTUIFQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x848.google.com (mail-qt1-x848.google.com [IPv6:2607:f8b0:4864:20::848])
	by mail.lfdr.de (Postfix) with ESMTPS id 54C6CA038B8
	for <lists+usb-storage@lfdr.de>; Tue,  7 Jan 2025 08:26:11 +0100 (CET)
Received: by mail-qt1-x848.google.com with SMTP id d75a77b69052e-468f6f2f57asf197220501cf.0
        for <lists+usb-storage@lfdr.de>; Mon, 06 Jan 2025 23:26:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736234770; cv=pass;
        d=google.com; s=arc-20240605;
        b=Sz1j/AF5LJzJs/aETRdGOqqytATy3cB0lBJk5s6N0OrGD43oFwZobOuJFgCvlEfggE
         seYiXIxlz4lxLb9wMpLGZD17ZxsoFlJTpJjQttQi0cF/c1l3QDKyBXc/j8h9JCWNtVAV
         RTeWm5yuJCHwo+UW1SdUw/7LC2l8CKnD7NitCAJrVx1iGhcd4jRxRPA3+M9W6DU3lA+E
         l6OcNwz19up7cEE2WsgdfVA1CgN+8m+TgLe0/u1JN16CVrcewBElGNXg/KQoLc6mzk/z
         CgU1ydrCWH/I127EUOKBas0StPLM+G/8j7c0HCu+/VJPMXTc4P+MoTUyWKkRihZLEieQ
         kFbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=b5RvgMaopksdn85zUiJI4005sBPrx7d1bsD7gb0wlZ0=;
        fh=XMJqDRZY7ocOtsnVe6QiJMn4bsC0X5OWxnHxqC0DenA=;
        b=UkLiyJPhl3GbyW4sPwbkhZAOZFEwysc+FY0S09nU89Vs3mtU1/IAvnO7ugzcRmQWbI
         iA0WtUrEyE2Qfzg/JIjvcHvWUsxoSaoFw0zJB++9Cd6syT6xEKopcC0Pz2EKFiJNvvq9
         WGyY2PxIi3I/YCmDbzR8pvG3um7fCT/aq04T1gw2czCRPUzyQEmNVxVy85xzLWXt1/JT
         O+PzJI/IORUSkWOmRH5D74r9IOjNo8G5mhhefi4KCgcdUlnxYg15TOawqcB+fGHjxBH+
         KPpDJrnhH6BOMKBdP1T+t6GIEPysM5S/8vALw0UNy8YxXfo6WAmPKN92YSmgsvrs2se6
         jumQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=PYceXJEJ;
       spf=pass (google.com: domain of ming.lei@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=ming.lei@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736234770; x=1736839570; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b5RvgMaopksdn85zUiJI4005sBPrx7d1bsD7gb0wlZ0=;
        b=EYr92nwVgH+4YDWEgFVsxnbzU1kU//zp9nlpVq9HtOa3RDv4wu4+Vpb4eF4yJXvWM3
         Rjt/Yn82Dmin/DtZmq6tp4K8E83/Qd4YpuWHVeTJp/Lc1w7f++pCgXDPWgzrP/bEYPkZ
         LeoppVuuSTw5eLGDw9xcB3drKy2gLmxaGjhZA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736234770; x=1736839570;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b5RvgMaopksdn85zUiJI4005sBPrx7d1bsD7gb0wlZ0=;
        b=TYFunU8jbPSAbDUr9rBIgOCDL06yFe/HIF0lssARuzx0dTQ+4IK8GcVY1YxQFT2jmK
         tnAAcama676AbDXIT8Aei8FKv5TybPmJ+9dR6GQUcIbfZIkHXT/NjUAe3n0h0nTj/c7Y
         TbiHtdprI85g6ZQTaogeTm4hW9z3MsgSdlEnvcMcXq2KxBM4Xonwnqzrq96XVeyroX4V
         jq0rUTtrm156scKnmyyKH2HcfdjR+x9x54du94LWk0IGTM0TkkHhpLDeil1tN3sn/PxE
         7akYR6A4408mupplMPl8mcBc+4m7niTUFq5Kwyv6mcKkIeDeddnAFOCUbbci82fTLDp7
         7KiQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCV0VYB9g5THFyBApnvPy8MM78NmhrvcrTn9IobS4qvlNtcgC4NC/WUIZWIsCZB3QYL58nwP3w==@lfdr.de
X-Gm-Message-State: AOJu0Yw5FTJWgLuF1CG86cmF3XB5xUAuSfKcLlFiikAqt/8br8a1676A
	6mSObd5SuHjQPbSNw1PZPjIWlKP4pGRdPIpVVyCR/De0kCCJ1ZNbSBTrcpD/G+Q=
X-Google-Smtp-Source: AGHT+IEwRtSwg+oDlJEUhiIAROZv/X4oHDzxuJSCkMbcjTa6+fdN+he3MoPlnYWkPm6YVytsytQMjA==
X-Received: by 2002:a05:622a:181e:b0:469:715:d94c with SMTP id d75a77b69052e-46a4a8b6c74mr766152191cf.6.1736234770094;
        Mon, 06 Jan 2025 23:26:10 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:4a99:0:b0:466:98fc:1e42 with SMTP id d75a77b69052e-46a3b15d016ls16488281cf.1.-pod-prod-08-us;
 Mon, 06 Jan 2025 23:26:09 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXZEWv5E6500AAjBnMRJqBKhpqYCv/H/M982YsB+mmwKm3uo1l2hfanbFf85q/5yVAePtEoPayq+Km50g==@lists.one-eyed-alien.net
X-Received: by 2002:a05:622a:30f:b0:467:6375:6884 with SMTP id d75a77b69052e-46a4a9b7519mr908945871cf.48.1736234769251;
        Mon, 06 Jan 2025 23:26:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736234769; cv=none;
        d=google.com; s=arc-20240605;
        b=KZDymW1EZAG1ErByZWdcQsjL70ZduTgczTUs1EiUAlBe3JYNsNn/LmpWaeH3zL61Mo
         oktWY1iXBVpQJdlE8F6hrTITRPzB73Lsl+v5OyBeZSzxZMfprJV/TauDW1YblJSUqDS6
         04fCjTaYSgt1cypEcSPFI/DKbtpZBAuSSPaLLYaHjd6ZXIFm0MmTTlCAoGPfi/J7nD8e
         9bhvcKU31z48ey7gw13TdBpGk2FoANytYYCv96ItjKiqv19q72QNIuR1py0gsFCDfM5x
         JSUpg2mjcLPFukfOsWSGODbcxxa9vMHVJ9/Kln26T92ddfphRdBy3BJTvnsLhTEtXq7Y
         O2bQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=UOvyykKvJvcd0j86+e+g5Cu3cDJgu/cjQCFZGvsexYo=;
        fh=qxJjebJ4kXQxwqDHz44qjxVnY49wm3hZvrgJ6gPRbXw=;
        b=hf1YW0KoAWQ7IzgPVDsQl1/TOJNnMqh7MTHi2WSDJKCCkL3F/5JsbE8ySxQczuLXTW
         yEnlMhXeohY+2tj2dX3EcMX0V3TMsuoLG6fr9Kt57cpmYigOi0eEGwuI54XcsEBewtVV
         CJLOr5cNFVrM7DG4CelXLvEpqGU5qSs2BHhRSNEWOAaviKn1jgvE+0tOOYsdZl3vVQHi
         34QmKzGvFyIcAUmLxVRezlGYKnz401+6J34KsuSZ0NINFZxyi0F7SpiZTgaJz9KWq8Oc
         eKf3vsE7Ka6kr1kOdHqkBkqujwrnGwJOCbejX07E+me6PKTPJUol3ENwviUrI2TVw4mo
         nAgw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=PYceXJEJ;
       spf=pass (google.com: domain of ming.lei@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=ming.lei@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by mx.google.com with ESMTPS id af79cd13be357-7b9ac52fc82si1504956085a.604.2025.01.06.23.26.09
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jan 2025 23:26:09 -0800 (PST)
Received-SPF: pass (google.com: domain of ming.lei@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-6-mNkTtYXLOMy42irdAbcchw-1; Tue,
 07 Jan 2025 02:26:07 -0500
X-MC-Unique: mNkTtYXLOMy42irdAbcchw-1
X-Mimecast-MFC-AGG-ID: mNkTtYXLOMy42irdAbcchw
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id CDDA21956056;
	Tue,  7 Jan 2025 07:26:04 +0000 (UTC)
Received: from fedora (unknown [10.72.116.128])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 6989C3000197;
	Tue,  7 Jan 2025 07:25:56 +0000 (UTC)
Date: Tue, 7 Jan 2025 15:25:52 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Christoph Hellwig <hch@lst.de>
Cc: Jens Axboe <axboe@kernel.dk>, Damien Le Moal <dlemoal@kernel.org>,
	Nilay Shroff <nilay@linux.ibm.com>, linux-block@vger.kernel.org,
	linux-nvme@lists.infradead.org, nbd@other.debian.org,
	linux-scsi@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH 4/8] block: add a store_limit operations for
 sysfs entries
Message-ID: <Z3zXANbFk6GBZg_z@fedora>
References: <20250107063120.1011593-1-hch@lst.de>
 <20250107063120.1011593-5-hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20250107063120.1011593-5-hch@lst.de>
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Original-Sender: ming.lei@redhat.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=PYceXJEJ;
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

On Tue, Jan 07, 2025 at 07:30:36AM +0100, Christoph Hellwig wrote:
> De-duplicate the code for updating queue limits by adding a store_limit
> method that allows having common code handle the actual queue limits
> update.
> 
> Note that this is a pure refactoring patch and does not address the
> existing freeze vs limits lock order problem in the refactored code,
> which will be addressed next.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  block/blk-sysfs.c | 128 ++++++++++++++++++++++------------------------
>  1 file changed, 61 insertions(+), 67 deletions(-)
> 
> diff --git a/block/blk-sysfs.c b/block/blk-sysfs.c
> index 767598e719ab..8d69315e986d 100644
> --- a/block/blk-sysfs.c
> +++ b/block/blk-sysfs.c
> @@ -24,6 +24,8 @@ struct queue_sysfs_entry {
>  	struct attribute attr;
>  	ssize_t (*show)(struct gendisk *disk, char *page);
>  	ssize_t (*store)(struct gendisk *disk, const char *page, size_t count);
> +	int (*store_limit)(struct gendisk *disk, const char *page,
> +			size_t count, struct queue_limits *lim);
>  	void (*load_module)(struct gendisk *disk, const char *page, size_t count);
>  };
>  
> @@ -153,13 +155,11 @@ QUEUE_SYSFS_SHOW_CONST(discard_zeroes_data, 0)
>  QUEUE_SYSFS_SHOW_CONST(write_same_max, 0)
>  QUEUE_SYSFS_SHOW_CONST(poll_delay, -1)
>  
> -static ssize_t queue_max_discard_sectors_store(struct gendisk *disk,
> -		const char *page, size_t count)
> +static int queue_max_discard_sectors_store(struct gendisk *disk,
> +		const char *page, size_t count, struct queue_limits *lim)
>  {
>  	unsigned long max_discard_bytes;
> -	struct queue_limits lim;
>  	ssize_t ret;
> -	int err;
>  
>  	ret = queue_var_store(&max_discard_bytes, page, count);
>  	if (ret < 0)
> @@ -171,38 +171,28 @@ static ssize_t queue_max_discard_sectors_store(struct gendisk *disk,
>  	if ((max_discard_bytes >> SECTOR_SHIFT) > UINT_MAX)
>  		return -EINVAL;
>  
> -	lim = queue_limits_start_update(disk->queue);
> -	lim.max_user_discard_sectors = max_discard_bytes >> SECTOR_SHIFT;
> -	err = queue_limits_commit_update(disk->queue, &lim);
> -	if (err)
> -		return err;
> -	return ret;
> +	lim->max_user_discard_sectors = max_discard_bytes >> SECTOR_SHIFT;
> +	return 0;
>  }
>  
> -static ssize_t
> -queue_max_sectors_store(struct gendisk *disk, const char *page, size_t count)
> +static int
> +queue_max_sectors_store(struct gendisk *disk, const char *page, size_t count,
> +		struct queue_limits *lim)
>  {
>  	unsigned long max_sectors_kb;
> -	struct queue_limits lim;
>  	ssize_t ret;
> -	int err;
>  
>  	ret = queue_var_store(&max_sectors_kb, page, count);
>  	if (ret < 0)
>  		return ret;
>  
> -	lim = queue_limits_start_update(disk->queue);
> -	lim.max_user_sectors = max_sectors_kb << 1;
> -	err = queue_limits_commit_update(disk->queue, &lim);
> -	if (err)
> -		return err;
> -	return ret;
> +	lim->max_user_sectors = max_sectors_kb << 1;
> +	return 0;
>  }
>  
>  static ssize_t queue_feature_store(struct gendisk *disk, const char *page,
> -		size_t count, blk_features_t feature)
> +		size_t count, struct queue_limits *lim, blk_features_t feature)
>  {
> -	struct queue_limits lim;
>  	unsigned long val;
>  	ssize_t ret;
>  
> @@ -210,15 +200,11 @@ static ssize_t queue_feature_store(struct gendisk *disk, const char *page,
>  	if (ret < 0)
>  		return ret;
>  
> -	lim = queue_limits_start_update(disk->queue);
>  	if (val)
> -		lim.features |= feature;
> +		lim->features |= feature;
>  	else
> -		lim.features &= ~feature;
> -	ret = queue_limits_commit_update(disk->queue, &lim);
> -	if (ret)
> -		return ret;
> -	return count;
> +		lim->features &= ~feature;
> +	return 0;
>  }
>  
>  #define QUEUE_SYSFS_FEATURE(_name, _feature)				\
> @@ -227,10 +213,10 @@ static ssize_t queue_##_name##_show(struct gendisk *disk, char *page)	\
>  	return sysfs_emit(page, "%u\n",					\
>  		!!(disk->queue->limits.features & _feature));		\
>  }									\
> -static ssize_t queue_##_name##_store(struct gendisk *disk,		\
> -		const char *page, size_t count)				\
> +static int queue_##_name##_store(struct gendisk *disk,			\
> +		const char *page, size_t count, struct queue_limits *lim) \
>  {									\
> -	return queue_feature_store(disk, page, count, _feature);	\
> +	return queue_feature_store(disk, page, count, lim, _feature);	\
>  }
>  
>  QUEUE_SYSFS_FEATURE(rotational, BLK_FEAT_ROTATIONAL)
> @@ -266,10 +252,9 @@ static ssize_t queue_iostats_passthrough_show(struct gendisk *disk, char *page)
>  	return queue_var_show(!!blk_queue_passthrough_stat(disk->queue), page);
>  }
>  
> -static ssize_t queue_iostats_passthrough_store(struct gendisk *disk,
> -					       const char *page, size_t count)
> +static int queue_iostats_passthrough_store(struct gendisk *disk,
> +		const char *page, size_t count, struct queue_limits *lim)
>  {
> -	struct queue_limits lim;
>  	unsigned long ios;
>  	ssize_t ret;
>  
> @@ -277,18 +262,13 @@ static ssize_t queue_iostats_passthrough_store(struct gendisk *disk,
>  	if (ret < 0)
>  		return ret;
>  
> -	lim = queue_limits_start_update(disk->queue);
>  	if (ios)
> -		lim.flags |= BLK_FLAG_IOSTATS_PASSTHROUGH;
> +		lim->flags |= BLK_FLAG_IOSTATS_PASSTHROUGH;
>  	else
> -		lim.flags &= ~BLK_FLAG_IOSTATS_PASSTHROUGH;
> -
> -	ret = queue_limits_commit_update(disk->queue, &lim);
> -	if (ret)
> -		return ret;
> -
> -	return count;
> +		lim->flags &= ~BLK_FLAG_IOSTATS_PASSTHROUGH;
> +	return 0;
>  }
> +
>  static ssize_t queue_nomerges_show(struct gendisk *disk, char *page)
>  {
>  	return queue_var_show((blk_queue_nomerges(disk->queue) << 1) |
> @@ -391,12 +371,10 @@ static ssize_t queue_wc_show(struct gendisk *disk, char *page)
>  	return sysfs_emit(page, "write through\n");
>  }
>  
> -static ssize_t queue_wc_store(struct gendisk *disk, const char *page,
> -			      size_t count)
> +static int queue_wc_store(struct gendisk *disk, const char *page,
> +		size_t count, struct queue_limits *lim)
>  {
> -	struct queue_limits lim;
>  	bool disable;
> -	int err;
>  
>  	if (!strncmp(page, "write back", 10)) {
>  		disable = false;
> @@ -407,15 +385,11 @@ static ssize_t queue_wc_store(struct gendisk *disk, const char *page,
>  		return -EINVAL;
>  	}
>  
> -	lim = queue_limits_start_update(disk->queue);
>  	if (disable)
> -		lim.flags |= BLK_FLAG_WRITE_CACHE_DISABLED;
> +		lim->flags |= BLK_FLAG_WRITE_CACHE_DISABLED;
>  	else
> -		lim.flags &= ~BLK_FLAG_WRITE_CACHE_DISABLED;
> -	err = queue_limits_commit_update(disk->queue, &lim);
> -	if (err)
> -		return err;
> -	return count;
> +		lim->flags &= ~BLK_FLAG_WRITE_CACHE_DISABLED;
> +	return 0;
>  }
>  
>  #define QUEUE_RO_ENTRY(_prefix, _name)			\
> @@ -431,6 +405,13 @@ static struct queue_sysfs_entry _prefix##_entry = {	\
>  	.store	= _prefix##_store,			\
>  };
>  
> +#define QUEUE_LIM_RW_ENTRY(_prefix, _name)			\
> +static struct queue_sysfs_entry _prefix##_entry = {	\
> +	.attr		= { .name = _name, .mode = 0644 },	\
> +	.show		= _prefix##_show,			\
> +	.store_limit	= _prefix##_store,			\
> +}
> +
>  #define QUEUE_RW_LOAD_MODULE_ENTRY(_prefix, _name)		\
>  static struct queue_sysfs_entry _prefix##_entry = {		\
>  	.attr		= { .name = _name, .mode = 0644 },	\
> @@ -441,7 +422,7 @@ static struct queue_sysfs_entry _prefix##_entry = {		\
>  
>  QUEUE_RW_ENTRY(queue_requests, "nr_requests");
>  QUEUE_RW_ENTRY(queue_ra, "read_ahead_kb");
> -QUEUE_RW_ENTRY(queue_max_sectors, "max_sectors_kb");
> +QUEUE_LIM_RW_ENTRY(queue_max_sectors, "max_sectors_kb");
>  QUEUE_RO_ENTRY(queue_max_hw_sectors, "max_hw_sectors_kb");
>  QUEUE_RO_ENTRY(queue_max_segments, "max_segments");
>  QUEUE_RO_ENTRY(queue_max_integrity_segments, "max_integrity_segments");
> @@ -457,7 +438,7 @@ QUEUE_RO_ENTRY(queue_io_opt, "optimal_io_size");
>  QUEUE_RO_ENTRY(queue_max_discard_segments, "max_discard_segments");
>  QUEUE_RO_ENTRY(queue_discard_granularity, "discard_granularity");
>  QUEUE_RO_ENTRY(queue_max_hw_discard_sectors, "discard_max_hw_bytes");
> -QUEUE_RW_ENTRY(queue_max_discard_sectors, "discard_max_bytes");
> +QUEUE_LIM_RW_ENTRY(queue_max_discard_sectors, "discard_max_bytes");
>  QUEUE_RO_ENTRY(queue_discard_zeroes_data, "discard_zeroes_data");
>  
>  QUEUE_RO_ENTRY(queue_atomic_write_max_sectors, "atomic_write_max_bytes");
> @@ -477,11 +458,11 @@ QUEUE_RO_ENTRY(queue_max_open_zones, "max_open_zones");
>  QUEUE_RO_ENTRY(queue_max_active_zones, "max_active_zones");
>  
>  QUEUE_RW_ENTRY(queue_nomerges, "nomerges");
> -QUEUE_RW_ENTRY(queue_iostats_passthrough, "iostats_passthrough");
> +QUEUE_LIM_RW_ENTRY(queue_iostats_passthrough, "iostats_passthrough");
>  QUEUE_RW_ENTRY(queue_rq_affinity, "rq_affinity");
>  QUEUE_RW_ENTRY(queue_poll, "io_poll");
>  QUEUE_RW_ENTRY(queue_poll_delay, "io_poll_delay");
> -QUEUE_RW_ENTRY(queue_wc, "write_cache");
> +QUEUE_LIM_RW_ENTRY(queue_wc, "write_cache");
>  QUEUE_RO_ENTRY(queue_fua, "fua");
>  QUEUE_RO_ENTRY(queue_dax, "dax");
>  QUEUE_RW_ENTRY(queue_io_timeout, "io_timeout");
> @@ -494,10 +475,10 @@ static struct queue_sysfs_entry queue_hw_sector_size_entry = {
>  	.show = queue_logical_block_size_show,
>  };
>  
> -QUEUE_RW_ENTRY(queue_rotational, "rotational");
> -QUEUE_RW_ENTRY(queue_iostats, "iostats");
> -QUEUE_RW_ENTRY(queue_add_random, "add_random");
> -QUEUE_RW_ENTRY(queue_stable_writes, "stable_writes");
> +QUEUE_LIM_RW_ENTRY(queue_rotational, "rotational");
> +QUEUE_LIM_RW_ENTRY(queue_iostats, "iostats");
> +QUEUE_LIM_RW_ENTRY(queue_add_random, "add_random");
> +QUEUE_LIM_RW_ENTRY(queue_stable_writes, "stable_writes");
>  
>  #ifdef CONFIG_BLK_WBT
>  static ssize_t queue_var_store64(s64 *var, const char *page)
> @@ -695,7 +676,7 @@ queue_attr_store(struct kobject *kobj, struct attribute *attr,
>  	struct request_queue *q = disk->queue;
>  	ssize_t res;
>  
> -	if (!entry->store)
> +	if (!entry->store_limit && !entry->store)
>  		return -EIO;
>  
>  	/*
> @@ -706,11 +687,24 @@ queue_attr_store(struct kobject *kobj, struct attribute *attr,
>  	if (entry->load_module)
>  		entry->load_module(disk, page, length);
>  
> -	blk_mq_freeze_queue(q);
>  	mutex_lock(&q->sysfs_lock);
> -	res = entry->store(disk, page, length);
> -	mutex_unlock(&q->sysfs_lock);
> +	blk_mq_freeze_queue(q);

Order between freeze and ->sysfs_lock is changed, and it may cause new
lockdep warning because we may freeze queue first before acquiring
->sysfs_lock in del_gendisk().


thanks,
Ming

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/Z3zXANbFk6GBZg_z%40fedora.
