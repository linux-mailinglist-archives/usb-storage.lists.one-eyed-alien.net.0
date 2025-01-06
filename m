Return-Path: <usb-storage+bncBDJNPU5KREFBBKXJ525QMGQENZSVUGI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x847.google.com (mail-qt1-x847.google.com [IPv6:2607:f8b0:4864:20::847])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E466A02357
	for <lists+usb-storage@lfdr.de>; Mon,  6 Jan 2025 11:47:08 +0100 (CET)
Received: by mail-qt1-x847.google.com with SMTP id d75a77b69052e-4679aeb21e6sf250610061cf.0
        for <lists+usb-storage@lfdr.de>; Mon, 06 Jan 2025 02:47:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736160427; cv=pass;
        d=google.com; s=arc-20240605;
        b=jPm7fFYRAe3gK8jz82N18bvCcmHxeHE2X+ctRGnWuB6a5s1OK4A57oVNOjfP6CSXR6
         /hSBaZSgeYZfkLnclAvAcAIZlFHrwbH9hOEF9JfXTo2iRuUOClLzi6d/Ayfnv3KKBW/T
         9jPHg3LjDGUdDjMwueUIO5bJuiAPv1eAA46Y2574eU6VF0AiXVDqwel9UDbGJvDmanQf
         7A56G9flKXP6bgNKAJ4lDhnm1z3bx64jUXuAaraD6QbDjr7ZRSz0Lx3S76o8Kl6pp3vN
         uwAR7fG0EiKzgD008Hgy9rJjM5yAQZxJw5YQlN/DlMYg5kbJJ34FYI6rYVvEwwMW/iMM
         piwg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:organization
         :content-language:from:references:cc:to:subject:user-agent
         :mime-version:date:message-id:dkim-signature;
        bh=ppfr1An/R8lYYupaPt5f85fsTgtVjdsu7lE4Yy97QQA=;
        fh=ra7fAxl/SOskuGCF3K5EGnS8tZhuBdPtnyXxGK4CJ1Y=;
        b=jzz5rVfCXDdhjh6Z5SaJsP7Zmb1al6QtxrMrf7F7/qS/E5F96znNpi/2DbzeCCzGAE
         hW45oDR5TsZi3zA6MoAV3X9KxNdVtqsPx2McK+o1GQHRzF7FHuyQbeIBM9GJhYEpxC8s
         UsXB7dGuNxnFxC09BnPAiTrgTBp4CVQazVP/7ds0l6A0+EO78Ub0oMAzhOcS0uvXGPp4
         xA/3oi2hqfKFJ5/m6pQOuoGXnbxh2RlIapZe/4Wl/5y9o2ATefmklFAmzBe6WbPpURjH
         ODrsxRYWzI4YyZUrfLbyHXYmmnAmRNnovmT6dKeUKNZLsAasrM2caVw6s+E97BGbAIXf
         voKA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=QtMzyfuD;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 147.75.193.91 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736160427; x=1736765227; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:content-language:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ppfr1An/R8lYYupaPt5f85fsTgtVjdsu7lE4Yy97QQA=;
        b=HaeriuNg4A/AE4hCop3d1He/cCqVCAzQdOlGvlvjf7xUS2pa6133eSo/iF6TfXuXiz
         3T5jwwqWCiUm1WTLHFK72f2iUMLf4l6bQDUS/0kmkHWtcv5dVI+JS2wDfsTBmgtdfhr7
         oqIyb51h0LOdU3WI4fwBJGPgECzk/NFzJM7hs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736160427; x=1736765227;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:content-language:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ppfr1An/R8lYYupaPt5f85fsTgtVjdsu7lE4Yy97QQA=;
        b=Hq9SEZyYRKZhEaFpRAmXqEKKnxCfpN9VV/d2Am5xsyiv6x2ppH/NJ0p7Ru21bBNa2K
         MQfmBzISYkKB5s7pIgYJs18XBsRHppajJJ0delnSGh1kqIjOXEBBi9dP0r5dAzsOnv2z
         XV73zhyCgi0gLdzJi4oEIbaLGUpxY85990DOH073G3qGv6C2WtCVVeXdEy4lNitKsEVK
         DcC0YOH5krtGzqScDvDyK4woiLZdnJ6lmh80xqJ9ZaDFrO8OsKmdkKGDTQsVkObjMbO+
         3w/vKFhNxGP/tMTFRsvsPI3R1wNBwJKSgUnC95o26o9PdVHz294u1QbArFtyy/0h71n9
         ctaw==
X-Forwarded-Encrypted: i=2; AJvYcCXmVxlMBS+kB7iHkDMfyIsOsS3/7JxTZGcvnbHHT+nVIw7+RJQFLEoIxoczQDWdChFBC6vk+w==@lfdr.de
X-Gm-Message-State: AOJu0YwCxU/QJghl5OIyEA4RQl6qjc7w67MazeD5kRJgiD+Zn6VNhp7m
	IIWeo7zVtEKGbRfjYMrEuPgKAe28DPb8idk4a2GKGJbVCAmvUnEfOpoHX1+0tJ4=
X-Google-Smtp-Source: AGHT+IEnBC/ti+lML5N27SMnblqHI4Bf99JsOXaT6mNmKb/VHA7cMeAby0IdvgxKVCToxz7VA1TU7g==
X-Received: by 2002:ac8:7d4c:0:b0:467:6019:9569 with SMTP id d75a77b69052e-46a4a8cbff5mr1072064121cf.17.1736160427055;
        Mon, 06 Jan 2025 02:47:07 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:45d5:0:b0:467:8ca0:7f4c with SMTP id d75a77b69052e-46a3b1ba702ls1543441cf.2.-pod-prod-07-us;
 Mon, 06 Jan 2025 02:47:06 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWgzCmEdLfjb+hkNY+WJ8ILff/0Gj20oQhidb7R+wjVEpAUf+31byYuKc28RlYycdmQYiJUAoH7SoL9pQ==@lists.one-eyed-alien.net
X-Received: by 2002:a05:620a:2a12:b0:7b6:6e7c:8eee with SMTP id af79cd13be357-7b9ba7f5bbdmr7871440285a.45.1736160426201;
        Mon, 06 Jan 2025 02:47:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736160426; cv=none;
        d=google.com; s=arc-20240605;
        b=ksySNpaDdINts9J5XlqTLwF2mmeX+v5Up/aHOTvSoH/fVx5eYrxvrrwL3TSfqmg5TO
         dosZRwdeVpEUME+hqY1VVu3YfzWVUAwA7EjMforIqppt29C4pvMh5PbGgRIfMcD77EIY
         375GONXvGlX8ei6jXCgIwO9vPJxz6fhINDNjzY/cgpFGc61B/MH84AaRR9Z9OKUE3Sdi
         dHw6WWPpOYnXxnKHPMycZ6CQv/k3L8Cq9lInoZDYSFm0Nn53EMugjYBg7yVx+/dMjPfN
         tRx+NIfW+QBD4ARJlZtLd8YMEVjFGFazMwj4I+Hc19bGnPvWTJkRMj2A4Rappu+Mm/tR
         B+IA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:organization:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=k2K3X6sigu55xL8acrs374nEKXrh84KNRiSg+bvqjgM=;
        fh=3Nfe+kP66Bl3obRELK+1G2M+nc+7E6m8Gp5FJCUgOQk=;
        b=KzPPTrkoxOi1Lzoj9gEkU+xdDGgIjf4rJFwIW8Al9P/dJ1Z3qf1VKW06pjQiX/RZ07
         0wmVoGByJ5xN0UziTBE1jWlSUPEZ29UpkEu0KTyDFZlUHFln+F/Gl2Spx620Mp27G7ew
         ekC9o+wKWPEFfzJH5AMX3+tGAU62s5EmTRDQ04vK+EHgqLN4IISbrNoUllZZd12Rnbbr
         vMLzeb2GyXjsj20f05J1arP0OoBeHTXH/Mw7zVTE6WpVPFBw1T5r/Tbn6wsPm1lZkB19
         Zu+bif182PggYEZE0dE6j6vFMZn3x/1y6654C/0WeADTyQaT/xi51u1IEPg4CVNrbM6S
         vokQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=QtMzyfuD;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 147.75.193.91 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
Received: from nyc.source.kernel.org (nyc.source.kernel.org. [147.75.193.91])
        by mx.google.com with ESMTPS id af79cd13be357-7b9ac2ad97esi3246652485a.123.2025.01.06.02.47.06
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jan 2025 02:47:06 -0800 (PST)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 147.75.193.91 as permitted sender) client-ip=147.75.193.91;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id DEA38A41477;
	Mon,  6 Jan 2025 10:45:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1D402C4CEDD;
	Mon,  6 Jan 2025 10:47:03 +0000 (UTC)
Message-ID: <a461bbbc-f251-4f44-89c7-f80f72e6e96d@kernel.org>
Date: Mon, 6 Jan 2025 19:46:19 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 03/10] block: add a store_limit operations
 for sysfs entries
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
Cc: Ming Lei <ming.lei@redhat.com>, Nilay Shroff <nilay@linux.ibm.com>,
 linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
 nbd@other.debian.org, virtualization@lists.linux.dev,
 linux-scsi@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
References: <20250106100645.850445-1-hch@lst.de>
 <20250106100645.850445-4-hch@lst.de>
From: "'Damien Le Moal' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
Content-Language: en-US
Organization: Western Digital Research
In-Reply-To: <20250106100645.850445-4-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=QtMzyfuD;       spf=pass
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
> De-duplicate the code for updating queue limits by adding a store_limit
> method that allows having common code handle the actual queue limits
> update.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

[...]

> @@ -706,11 +687,24 @@ queue_attr_store(struct kobject *kobj, struct attribute *attr,
>  	if (entry->load_module)
>  		entry->load_module(disk, page, length);
>  
> -	blk_mq_freeze_queue(q);
>  	mutex_lock(&q->sysfs_lock);
> -	res = entry->store(disk, page, length);
> -	mutex_unlock(&q->sysfs_lock);
> +	blk_mq_freeze_queue(q);

The freeze must NOT be done for the "if (entry->store_limit)" case. So this
needs to go int the "else". Otherwise, you still have freeze the take limit
lock order which can cause the ABBA deadlocks in SCSI sd.

> +	if (entry->store_limit) {
> +		struct queue_limits lim = queue_limits_start_update(q);
> +
> +		res = entry->store_limit(disk, page, length, &lim);
> +		if (res < 0) {
> +			queue_limits_cancel_update(q);
> +		} else {
> +			res = queue_limits_commit_update(q, &lim);

Here you must use queue_limits_commit_update_frozen().

> +			if (!res)
> +				res = length;
> +		}
> +	} else {
> +		res = entry->store(disk, page, length);
> +	}
>  	blk_mq_unfreeze_queue(q);

And this one needs to go in the else after the call to entry->store().

> +	mutex_unlock(&q->sysfs_lock);
>  	return res;
>  }
>  


-- 
Damien Le Moal
Western Digital Research

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/a461bbbc-f251-4f44-89c7-f80f72e6e96d%40kernel.org.
