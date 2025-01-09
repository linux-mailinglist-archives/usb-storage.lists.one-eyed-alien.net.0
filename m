Return-Path: <usb-storage+bncBCZNB4MJSMHRBY4L725QMGQESGN7NCQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x846.google.com (mail-qt1-x846.google.com [IPv6:2607:f8b0:4864:20::846])
	by mail.lfdr.de (Postfix) with ESMTPS id 42056A06FD1
	for <lists+usb-storage@lfdr.de>; Thu,  9 Jan 2025 09:16:37 +0100 (CET)
Received: by mail-qt1-x846.google.com with SMTP id d75a77b69052e-467ae19e34bsf18811921cf.2
        for <lists+usb-storage@lfdr.de>; Thu, 09 Jan 2025 00:16:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736410596; cv=pass;
        d=google.com; s=arc-20240605;
        b=NCY7yfbMEhWXuhPMKYUAMiXMY8DHgiHBJqzOPHT/myVhS4vt81jepcMCIogrZK3M0V
         8NLJ95FP7LPMXvvfYSO+V0FULYEFAEadgCPMpu3EBGIm03OAvjHaE5//BuqODYwqZrjD
         CBjtA5AY2347GPkMol5vNq+7OAlj4F0Zjc1YgeldBkYDy+ATlnMkL6uALlSYM0GFF8bO
         BtRtVcjirY2hGIoTY7IhkdfT7AXaruGz1I2fnDgE9veGMNmX4u3xw40uSAev6K+Fy0t8
         yRI5EnmMJmaW4gwThZCFxr4uJmHGu3vFMkyt7r0yRQcPf2GFK0scjr7xOcLgm9QTUFIC
         MBLQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=L8R/fr+7BI4qVF9tpy6V3JIPn+rliNc9Axzl9gkmM48=;
        fh=aaCLhMRGynlBU1wGavZraM/71j01tEkr4AwhPZ0czRc=;
        b=jeEoY9CtvoE8nbsxMcTqeRnUFaCsve7AlTdN4oUQLxWoFM1Zcen+mqeviXpIYWIF03
         e5c46tRtZJYiyW/xh2vQcKVsGkf+CRA3jr/gxb9tOUCPhHSX4Yow2DfUweYNydajg2Nd
         g9aLbe3eYLc3pVJpk5RFZCuwU5bFz10evGJgIl4PyIhF4AwlpsiGqxD+zoAWzjQz/n9a
         875C4rYatrYLxZoZlTTJxMOI4E9AosMxNsH3yEZSp+ObyjJrJdf0wYYNW1N7WvVGxNDL
         ROGjesBkays/66Vo/OV89tswStl0+X5Sl2Owu1cAwJo8Yqz2QQkB5Cn5cIvnTctcTIvY
         FjaQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=eb2xZcHa;
       spf=pass (google.com: domain of ming.lei@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=ming.lei@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736410596; x=1737015396; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L8R/fr+7BI4qVF9tpy6V3JIPn+rliNc9Axzl9gkmM48=;
        b=XZ9gUYJ5W+nenqbyULkZtseQ+Zq0Igmd6JDf3Ni9+3BpKUaqaRt7peH7W7qyUPXZ5/
         ABTo48QeKYkHRQlQMaa9BT8NDh3m+m79H5HB7cYMVAgm/y50W7Jqzvt7TZgcJwj7Ldv8
         gT2XfFifarApeWCtxNRydefSjqaQYmqeZF/oU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736410596; x=1737015396;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L8R/fr+7BI4qVF9tpy6V3JIPn+rliNc9Axzl9gkmM48=;
        b=FAyupDEGHUGomuC4YoDvb+aLsS8utILYNk1JLft19i14aLvKQwP1Qxi5WxYrHW3jCH
         86jYMFLJaUYuKXCiwLoFIxln7JucvfytC1mSb/DH6F1+b9zvR+2tF0VrVRtJ/OBoC+St
         wqcNmHYeT2lOvp/iNylqp7gXCI/yOxJOCOt2ekl83YAyh8RFNyFFMi2XXdwuDrWKSz/z
         WOZno/rMq6+5lVXmiIC/lzrSRmXuFI78jcrQhfWlTHeAbt4GlYBu+34Va/akYGG5SgJc
         lZc3uOSOEhAwkVywEDDaLPcSH+EXDCUC7pYDcMumx0JaZTfvHHD9/ADsRcwuicnKi1jS
         cS5Q==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWNhg4hoPqfuhuu/wPmfJlQlWRXNMR4aw/j5su26YgoHqw0+2RlQ8CAtcTBL5gvvUNsD6nqZQ==@lfdr.de
X-Gm-Message-State: AOJu0YztIfB9OEamYCeC90mqaPJrRBgTPDpkTwvY87+w3LBS+Ta+5tnD
	h4yOVxgE4iMDmZ23BC3u/i5uN4QgvMyA6biyMM5+tBn3UiTv2gttXY/89C4atxk=
X-Google-Smtp-Source: AGHT+IE/CIfFlY84+yFGnSMFaKa4HXQHzNG0X0eAqeKtcMShR1+TniKV/TqA4XBalAvzWCLDDyOoZA==
X-Received: by 2002:a05:622a:450:b0:464:af64:a90a with SMTP id d75a77b69052e-46c7102c391mr98562111cf.23.1736410595931;
        Thu, 09 Jan 2025 00:16:35 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:5647:0:b0:466:98fc:1e3f with SMTP id d75a77b69052e-46c7ab5d4f1ls8812291cf.1.-pod-prod-04-us;
 Thu, 09 Jan 2025 00:16:35 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWe0DKcHRau9eOv7fGNDh9aiE/VqCP66AkpAOzfjVJxPdRIvyEzCxH1jd+G5WALnxjUd/HwG5ipKOzOWg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:620a:19a3:b0:7b6:f1b8:8a03 with SMTP id af79cd13be357-7bcd9799272mr1039377885a.36.1736410594894;
        Thu, 09 Jan 2025 00:16:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736410594; cv=none;
        d=google.com; s=arc-20240605;
        b=GVGmEdgrDx9v1KNIPRM+S2OMQvAvsZDP1yMuHV24gzVD/LrWZ/HKuhcofk1GMSBRxD
         EMn3WTfUye/OQu7XpzkEZ0E1XvIVCK0Y6T6iI0zfBZqaNXGd0HH1JHwT8F4OznBNpWLA
         Y5hr0X5kr6/fNV/ngvLRokL6PSX1hNml077tPwsh2mJL1fzFXtB2MHU1I/mxt+4RidrX
         YvRxJll2jIxCdl0gBtcjEMlA+Q8WWjY3aNaS61BsWmSmrBxCbFwmCdY7+JmCcguhjcF2
         QeLZ1YTYOAYymYLkWMBKPpYOt6cwamcB7LK8xawllZVD1VeJtfIS4j+IWwH8Gi74u7H2
         SP6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=eD4PQ2lqozBCLy6ODlL7uzyXEhGgP3XjJCgY56pBPH0=;
        fh=7dZM2XeuomGHIllC5bwDR/SHxoJbo2Rj1OhR3VTXnEs=;
        b=Zk4W13FSSefCgHiKNPtjLfe92OvRX7Myaq+CtWhv8rRBez1AauchmFukl2LMinCOSC
         e8mYcvZSMs4RFtFK5uwh43nOsQ58RZmWTX3d0iZOQRN61g8lHoeCq6H6Ium7CHExRBxO
         zYsF/y7oc/rgYjUHVOUuijwK3pXWwV44hPHQPbiZ5NTSd7VC/im3sOLi/mgPFyh5lOS0
         37md+mvfLnqoDjgoM9yXBsC9G9MBDsJcrSgYACPLqW/mCt36kjIpY7fqRIW/9U3vMaE1
         WnxKzYBh2fAmdHjlrxxLCFty8RJy74rVbV1OQxTOjHqrVDbG3kHJnCBXezcqCfwDcQ0W
         V58w==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=eb2xZcHa;
       spf=pass (google.com: domain of ming.lei@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=ming.lei@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by mx.google.com with ESMTPS id af79cd13be357-7bce34fdc13si105378285a.379.2025.01.09.00.16.34
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jan 2025 00:16:34 -0800 (PST)
Received-SPF: pass (google.com: domain of ming.lei@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-436-NkzkPsgmN0iiF3ToB2oXgQ-1; Thu,
 09 Jan 2025 03:16:29 -0500
X-MC-Unique: NkzkPsgmN0iiF3ToB2oXgQ-1
X-Mimecast-MFC-AGG-ID: NkzkPsgmN0iiF3ToB2oXgQ
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id EA31A1955D71;
	Thu,  9 Jan 2025 08:16:26 +0000 (UTC)
Received: from fedora (unknown [10.72.116.139])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4B49C1955BE3;
	Thu,  9 Jan 2025 08:16:19 +0000 (UTC)
Date: Thu, 9 Jan 2025 16:16:14 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Christoph Hellwig <hch@lst.de>
Cc: Jens Axboe <axboe@kernel.dk>, Damien Le Moal <dlemoal@kernel.org>,
	Nilay Shroff <nilay@linux.ibm.com>, linux-block@vger.kernel.org,
	linux-nvme@lists.infradead.org, nbd@other.debian.org,
	linux-scsi@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
	Johannes Thumshirn <johannes.thumshirn@wdc.com>
Subject: [usb-storage] Re: [PATCH 04/11] block: don't update BLK_FEAT_POLL in __blk_mq_update_nr_hw_queues
Message-ID: <Z3-Fzrj-En-l82Uc@fedora>
References: <20250109055810.1402918-1-hch@lst.de>
 <20250109055810.1402918-5-hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20250109055810.1402918-5-hch@lst.de>
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Original-Sender: ming.lei@redhat.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=eb2xZcHa;
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

On Thu, Jan 09, 2025 at 06:57:25AM +0100, Christoph Hellwig wrote:
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
> Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
> Reviewed-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>

Reviewed-by: Ming Lei <ming.lei@redhat.com>

Thanks,
Ming

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/Z3-Fzrj-En-l82Uc%40fedora.
