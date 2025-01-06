Return-Path: <usb-storage+bncBDJNPU5KREFBBHXK525QMGQELJ2V3DA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x846.google.com (mail-qt1-x846.google.com [IPv6:2607:f8b0:4864:20::846])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C61AA02367
	for <lists+usb-storage@lfdr.de>; Mon,  6 Jan 2025 11:49:03 +0100 (CET)
Received: by mail-qt1-x846.google.com with SMTP id d75a77b69052e-4678f97242fsf145969231cf.0
        for <lists+usb-storage@lfdr.de>; Mon, 06 Jan 2025 02:49:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736160542; cv=pass;
        d=google.com; s=arc-20240605;
        b=ABkaRK8rgncffveX/8cFCSFtY5m+dJJRj0W8P46g7w3+bJ2FdMy/7v/dbO3ByX0KR7
         7UPJNvn24eesSIhfcqsUAiaRpFqIv1RTEXGA+Q9C+Vy1UleXEwwYnZaqiM98VD0wgOIi
         yEBBYdpvgK8xyIRaADzebLdQthciuNyOFWM3TR4qkg5ClrIPec/bONotBZho0jRPeEkb
         lZ0FbPQqu8XmK9yjdGs93z9QQiiPxWiYpM1+ZsTgg6l1qbXWw2Qge5m13oV2PLoKrdek
         RStc6mbdZICxBe4beDba63/A4B9heHvr6MUwXHgF7ggA3QvPTtnWx3aa4HnmFUuVb5RR
         KUDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:organization
         :content-language:from:references:cc:to:subject:user-agent
         :mime-version:date:message-id:dkim-signature;
        bh=B08sba2XIiKq3V0pJKyMvL0ve0XfDZov/fin1h0BkrA=;
        fh=vN6QLGflRMdN8lhYyeyHNO4Fpd5/q2ZeJk9kGPtO0vs=;
        b=AzT7h581s7o4H1YX7liF1IiZRF7r6vX1/iLfKw85ry2DjQPS7iHHUIcjShDgnG4Q5D
         qrI9DSxQqc30/7EWNazqy4cp57iYiyMHgWT2DeKLw3Nhp2mLJVI3T4aEdRlkMg+mxUX7
         xVyCLqd1MzXANydOxqyCt+yBw4cZBK9EKeHDW6lU1HArWfPCtPyWE8Re+POPCEBzV/X9
         MzPBqcEc9XUPSXeobxh/yewvlRne3H/lhfysVuZGfgthvYw9y95RTVw/9kD1965BXOQK
         MGW71hEetApfV8HWPuX24EycHmnpe8bYoZiSc42StjbLwVu25O60jRrBqMlpvI4Hwd8e
         fogg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=pXFO8k8s;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:45d1:ec00::3 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736160542; x=1736765342; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:content-language:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=B08sba2XIiKq3V0pJKyMvL0ve0XfDZov/fin1h0BkrA=;
        b=B4uAg+lz5gO5hfDJyVgWmVJvdQ7M1DwYEqnsy2wQxIFeo8QF1o0+GYt//pwEdgYTYn
         v6zM/Y0MYHFj5JPxj6DE55EjaVkXg+BYIaqTuCfX1CaVFZ45vP4UksjpV8jOzBgnr6oO
         oHW/sqVD0B9HxCPFeK288DBRgkm09pYCkMkPg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736160542; x=1736765342;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:content-language:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=B08sba2XIiKq3V0pJKyMvL0ve0XfDZov/fin1h0BkrA=;
        b=meP9iB033V9flWLyvfIqq6P0X/qIrtjBmqB/Aqwi0Aa2kSseDmHxk5Phw4Q48HAcvo
         3R8LUiC6mYSJ7Nbyd/3LKdhTB4s2/GEn2vv9SmwUWx45caoG5QEC1XAhfQrYCcPogaau
         +uxQFXXnH8FKdx8CUAJm5AEnAq4FDqCJhYz66h4FKRPzV+yzfNZzR7o2zUK2mt1OE51F
         Ww80mGfZphoyX5JpHJ/dPCJJ+AfCFHTyXwrkppfafzKFT81tom90KJCUd2/kU5xGOQVD
         JdB++huQ7UZsbjb3YqiwpVku2/Z8KkHyxQA9FcRfkdX46AARDt4QGw29pl48kot4q64Q
         DYuA==
X-Forwarded-Encrypted: i=2; AJvYcCV1EvUZqSb1nW34nmEFYuSU+FeK8ervRAQn0xC72rWSX7xtoWNnlbKq7fYLtxzV2xTMc9TH+g==@lfdr.de
X-Gm-Message-State: AOJu0YxGKn0SOne8ZHmkh6L1qR5QVHSD/5MzpTP4vOoXdKQe8RCBX7Zo
	ih17lia6rDrKoIC6ga70OjOZgLXMgTrBZvZqZqHuiqjpDrexXZ7mjsUAnPeoTrM=
X-Google-Smtp-Source: AGHT+IG9Nf6ub5yP6lGTgzP20ibr4gs2klu470mroJc8WWGOqI1ICzZKE0HX7OWVkr24bMyHRIlt2g==
X-Received: by 2002:a05:622a:1a0a:b0:460:ac3e:cf6 with SMTP id d75a77b69052e-46a4a9a4383mr966389291cf.53.1736160542513;
        Mon, 06 Jan 2025 02:49:02 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:4709:0:b0:466:98fc:1e3f with SMTP id d75a77b69052e-46a3b15d19cls35612891cf.1.-pod-prod-04-us;
 Mon, 06 Jan 2025 02:49:01 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVI5Mc2lInN9CigWcrIbV0+vFlVXX34wjt7tsZBwJDJ/14D+fH9L6oUc61Nb0CBOQlyFyqlRJPHR6+ttA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:620a:2453:b0:7b6:ce6e:229c with SMTP id af79cd13be357-7b9ba833574mr9882821285a.55.1736160541704;
        Mon, 06 Jan 2025 02:49:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736160541; cv=none;
        d=google.com; s=arc-20240605;
        b=hr+V1z+W5Wh7ThUo40sJsTWV+IJImIcboSLTvWvikd9/lT8ZoJ2qKCXhFhPfcIhCTH
         uPsHUsIzVAOiVsF7ifXAGM/qeYE6JTk+N+WYOPXPMmeiuP8/BX0htZyerrDLgD3GDPxj
         Kjuxvk7mf9G2uUpxTU5wldjBTEMq9ipHdhONP2A4lXh4Tu9cfO5eupU8CF6Exdtt0O79
         XIqTi+ysiaG6KHoU9WsSjEDOoZcND+N28ftyqCNYEnuwo/dQhKghrIoBHc0v3Yd8AClP
         URL36YCVqdpcxTvU/9pJtumZ7pUclzrxhWEMNQPc+tsfpdg1Qq8yqYWRKi+G+oBemY+2
         9S8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:organization:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=T9zvhqjghZ+ZJgbEJq8Lc3K5ScyyYc9vnxNHsSnST5w=;
        fh=3Nfe+kP66Bl3obRELK+1G2M+nc+7E6m8Gp5FJCUgOQk=;
        b=EFBi10E6Hx2OkKon1ACRZcudxBtt6P/Pve9iObSXLa/Juwfu97B54AYr6r95q7bMzs
         vtUJXhCltMmLFmWnm2GsqZFwrM25SlQmbjjwyVneNEySV6z7uzePjLprrZTudfqdv7Eb
         WNqyiO28b980TRZ0q5doEAXs6my0FsD+Z2TATYSGtUzjMo+KGDFMXxi62VUPZM1GAhly
         yfG8mhoya1rhaxiM/niSoQfKjG2WLIpvKGU85aA0z9xv1YXdPUFT2Lxo6HJZcCXp+Y7b
         Wf9eoxd6GHbwHl1cLPI66/uagWuMuegYWMsQfXw+4mvDB+A7gKojNa/mxc30aZh4LdXT
         DfpQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=pXFO8k8s;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:45d1:ec00::3 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
Received: from nyc.source.kernel.org (nyc.source.kernel.org. [2604:1380:45d1:ec00::3])
        by mx.google.com with ESMTPS id af79cd13be357-7b9ac2ad8e0si4383764285a.124.2025.01.06.02.49.01
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jan 2025 02:49:01 -0800 (PST)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:45d1:ec00::3 as permitted sender) client-ip=2604:1380:45d1:ec00::3;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 86662A41440;
	Mon,  6 Jan 2025 10:47:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EC793C4CED2;
	Mon,  6 Jan 2025 10:48:59 +0000 (UTC)
Message-ID: <ddc8d362-2cfe-4267-a900-7ea419b15b01@kernel.org>
Date: Mon, 6 Jan 2025 19:48:15 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 04/10] block: use queue_limits_commit_update
 in queue_attr_store
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
Cc: Ming Lei <ming.lei@redhat.com>, Nilay Shroff <nilay@linux.ibm.com>,
 linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
 nbd@other.debian.org, virtualization@lists.linux.dev,
 linux-scsi@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
References: <20250106100645.850445-1-hch@lst.de>
 <20250106100645.850445-5-hch@lst.de>
From: "'Damien Le Moal' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
Content-Language: en-US
Organization: Western Digital Research
In-Reply-To: <20250106100645.850445-5-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=pXFO8k8s;       spf=pass
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
> Use queue_limits_commit_update to apply a consistent freeze vs limits
> lock order in queue_attr_store.  Also remove taking the sysfs lock
> as it doesn't protect anything here.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Oops. OK. so please disregard my comments on patch 3. This is all fixed here.
May be sqash this patch with patch 3 ?

> ---
>  block/blk-sysfs.c | 18 ++++++++++--------
>  1 file changed, 10 insertions(+), 8 deletions(-)
> 
> diff --git a/block/blk-sysfs.c b/block/blk-sysfs.c
> index 8d69315e986d..3bac27fcd635 100644
> --- a/block/blk-sysfs.c
> +++ b/block/blk-sysfs.c
> @@ -687,22 +687,24 @@ queue_attr_store(struct kobject *kobj, struct attribute *attr,
>  	if (entry->load_module)
>  		entry->load_module(disk, page, length);
>  
> -	mutex_lock(&q->sysfs_lock);
> -	blk_mq_freeze_queue(q);
>  	if (entry->store_limit) {
>  		struct queue_limits lim = queue_limits_start_update(q);
>  
>  		res = entry->store_limit(disk, page, length, &lim);
>  		if (res < 0) {
>  			queue_limits_cancel_update(q);
> -		} else {
> -			res = queue_limits_commit_update(q, &lim);
> -			if (!res)
> -				res = length;
> +			return res;
>  		}
> -	} else {
> -		res = entry->store(disk, page, length);
> +
> +		res = queue_limits_commit_update_frozen(q, &lim);
> +		if (res)
> +			return res;
> +		return length;
>  	}
> +
> +	mutex_lock(&q->sysfs_lock);
> +	blk_mq_freeze_queue(q);
> +	res = entry->store(disk, page, length);
>  	blk_mq_unfreeze_queue(q);
>  	mutex_unlock(&q->sysfs_lock);
>  	return res;


-- 
Damien Le Moal
Western Digital Research

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/ddc8d362-2cfe-4267-a900-7ea419b15b01%40kernel.org.
