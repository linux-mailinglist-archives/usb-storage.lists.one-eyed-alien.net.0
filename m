Return-Path: <usb-storage+bncBDUNBGN3R4KRB36I6O5QMGQEA5ZBJVQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wm1-x345.google.com (mail-wm1-x345.google.com [IPv6:2a00:1450:4864:20::345])
	by mail.lfdr.de (Postfix) with ESMTPS id 53E1AA039B1
	for <lists+usb-storage@lfdr.de>; Tue,  7 Jan 2025 09:23:12 +0100 (CET)
Received: by mail-wm1-x345.google.com with SMTP id 5b1f17b1804b1-436289a570esf116902745e9.0
        for <lists+usb-storage@lfdr.de>; Tue, 07 Jan 2025 00:23:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736238192; cv=pass;
        d=google.com; s=arc-20240605;
        b=WbVp9NYW/ax1lry7f2up2z2Jl6WzdWSBj9Mxtatp3ec/FhibcqHirBd9SXvBw45Rh3
         xyLw6F+97qk6fRaeNL/HaMSywhAvmjFRrg+6sJdFOUoor1fj2RpTgV532Di9uAfPO5qq
         wmE7Ijl8urn0nHNNqLOdlGROFpH2FAHnIPXRbbhDHV6/vRRM3RNu9MzZxQGUk8h/e2V+
         8sWj2ifK/DxbdAnTQJQH69wPvZ075onHSjXCACNaLAU1/b4eL7qBGR7ApkzINoxkFqiK
         Ky8vFXAKRcLgZTpAqnc3TDhf+2PQLQVpQs+0W0Ki+fFm9Sv4cY7CVSzV+ot1dlEdFASX
         pPZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=MD0xUt6ZazhN44fqWUkKA0Shc6LuGfR3NphoImGUWCI=;
        fh=bbYXwdUKIVCweRCq72IlMkfBAaxttPr8YFFrD0a2lhM=;
        b=VmGHlaknpbBigfubltVdrDsqcler01w9DEPZ80Yt42hsZHO3BelaIzXyzXGVOyZbtc
         q+h0njAHOjepWjZEphYfdRDoviDrXy5ir6phrY26vTSQaC5hFhWmLfYQNFwcCRZ/ZOM1
         KmFc63kFBUbW25HcSqtkqomd323AZnq6w79/G0ZzYOOlPynyuJioQFJ7D6Lyt2aRfdn2
         4+nYukC1cuZ2+7fziPaJDhutM00NpPFMFm8HjJqQr1/amG9U3zBcVDkUPH2DYBok32ZS
         RPsJDnYNgoVEQtANMMELb85zG9XyYnymYEOCBkMCG2k6QwpozgexCJha8SwPmLTtsHp8
         //RA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736238192; x=1736842992; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:user-agent:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MD0xUt6ZazhN44fqWUkKA0Shc6LuGfR3NphoImGUWCI=;
        b=QOt29e+A5JsR0kPBzxQ5c++rkx1aeBpDUqLs5KkEs1FwzYbS/SDT5NVDIccC0Ly05r
         /L+k2GyQUTwBOLlEyRw/QO8b7SpWHDnM85RLUXyGPDzwn8cPZzq3qpcpr588jlQU0WqN
         /yHf4cmkvCllsD5iRhIFIvCfAsVulFGPZ+00c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736238192; x=1736842992;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:user-agent
         :in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-beenthere:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=MD0xUt6ZazhN44fqWUkKA0Shc6LuGfR3NphoImGUWCI=;
        b=Xm2DpZvnbveQ3Na9dja3/9lrU/67olZ/Az6mM7BDKxYQe5odw8UF3QCtvHUwVKrzQW
         XphsfEgZ/B7O7MjpVAZsaApPLlxDFno6epGNkkkoNAv/ImucUH7HvNIScgnRw1kkkWVR
         mR4L2JYfk4miHrs39rGMzF4RZKL/kQhfpaYYU7b5AwUWGUGOnGKXF/uxwPOrQJXUUkgw
         yvk+FymUGDmSnn0abgfVOfSayCgEr+VYcpJb4C23EL1K6xAlsy3NW0+wlFbDlD8snNG6
         gnYTe9UDj+ltE14Okzrs+wZiaSaJGCH69Jh/DdNHfe+TZUnCwTbuAaZTblFb4Slvl96E
         shdQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWXcSsGdOKhtjI2+uXWikS7W4QhMw2ndPVPkhV2xaWpP3RbL2x/gawnpNB7rBlw5LgxeUQQKg==@lfdr.de
X-Gm-Message-State: AOJu0YwHIB8cGI7og0c7NOmE7CtvCwRBTza6D6ymq8hIVPpgOIo+GMqU
	vlo63ITGvJ7AUGYLj7PkGVOvtAWl8u9GJm6lDHNtrj2fAz8F6dC8bQlboyS5cQ4=
X-Google-Smtp-Source: AGHT+IFcPWgXhI0TDRnbrQjv7tR+HdD1Qk0aclafC6qDQ8CZA0QSooBH/T/ZcX1FAHnbUtwvLbvKoQ==
X-Received: by 2002:a05:600c:4709:b0:436:1ac2:1acf with SMTP id 5b1f17b1804b1-43668a3a35dmr459493445e9.20.1736238191776;
        Tue, 07 Jan 2025 00:23:11 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:600c:4996:b0:434:a059:b74e with SMTP id
 5b1f17b1804b1-4365c51e000ls682195e9.2.-pod-prod-05-eu; Tue, 07 Jan 2025
 00:23:09 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUYvP55S3t6S4bFmHDpsQCUVYHSnMqgDewIYST+Y7Txo+abXVwrkfLH11SAsmQrcqfoQwrsNRg0tIOMew==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6402:2749:b0:5d0:ed92:cdf6 with SMTP id 4fb4d7f45d1cf-5d81ddc1b64mr135249897a12.19.1736238189475;
        Tue, 07 Jan 2025 00:23:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736238189; cv=none;
        d=google.com; s=arc-20240605;
        b=I/LHw/5ibtMJCZi2/Kq0UTMFcF4H4Ul8c4njAA0wooSN5jatiGlp7Lf23nXezH4wYS
         1s2KKR6I+PRplLC/c/qzNaoR0BY4UQhSGUahnigpjZqjUsKyc5oZ2IMZ4F0ZNqGxcSZ5
         KPjpcqHQy0KxlCHVjMZ+pUoSNaX/de/SHA23Wl0GsEWaWSi5KIaf5fq3WgT5rG189yEI
         o8np4nJWmqN53jz2KqaJb3Rt+4+7ivMgjacBmZj7XSMGCFcjrzmrZYEI3wvXaqRw6xrt
         O86jCm4sNIYKzd8AEWAWCE3HLqaaPNLUObItPM1yK2qOLfNNmjrgSImU0wm23s/9b/s/
         58OA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=LPVp9E6rtAY476SAaqM3VbsKdf4h7smTI80wZewJalw=;
        fh=ASjV2SCNhw3+0CjjC3hMIlcKstd2UC2VvTKUuWyRC/Y=;
        b=YXJHfWARjrGigAQgn68oAKIXK4ARGxCVbEKUoWhfBxWhPqhc+loe99d+Eu/DEKuItg
         wdmINsrWuaJTydDtGuEPM8tI4O1H1Zh3RiTBWES9HAsjhKpzUlNU4TD6S4iRjawkaXMl
         UEwrgvuneMLKgLVM/kwHbFZ6OpLIB9ufowGdR7jvU4OLpUh05DWFOW97RmElHpgR/pV5
         lU9M8oWapLk2YNwjzexxtPjL6tvq/BWXJB4DiRXTgI+6Ofwfo5ihBWwgr1IMNFmXNA+s
         vp1zUq0z9YgjQbHncKYRpTeBbtAtedvixymZAIWW0ruyZ5I9EPyLnwb6xJcHidhiAXRx
         XRjw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from verein.lst.de (verein.lst.de. [213.95.11.211])
        by mx.google.com with ESMTPS id a640c23a62f3a-aac0f0c9c54si2206282666b.861.2025.01.07.00.23.09
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Jan 2025 00:23:09 -0800 (PST)
Received-SPF: pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by verein.lst.de (Postfix, from userid 2407)
	id 1282468AFE; Tue,  7 Jan 2025 09:23:07 +0100 (CET)
Date: Tue, 7 Jan 2025 09:23:06 +0100
From: Christoph Hellwig <hch@lst.de>
To: Ming Lei <ming.lei@redhat.com>
Cc: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>,
	Damien Le Moal <dlemoal@kernel.org>,
	Nilay Shroff <nilay@linux.ibm.com>, linux-block@vger.kernel.org,
	linux-nvme@lists.infradead.org, nbd@other.debian.org,
	linux-scsi@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH 4/8] block: add a store_limit operations for
 sysfs entries
Message-ID: <20250107082306.GC15960@lst.de>
References: <20250107063120.1011593-1-hch@lst.de> <20250107063120.1011593-5-hch@lst.de> <Z3zXANbFk6GBZg_z@fedora>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <Z3zXANbFk6GBZg_z@fedora>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
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

Hi Ming,

this is a friendly reminder to reply without quoting the entire mail.
I did not find any content after scrolling half a dozend page of
full quote and gave up.

> > +	.attr		= { .name = _name, .mode = 0644 },	\
> > +	.show		= _prefix##_show,			\
> > +	.store_limit	= _prefix##_store,			\
> > +}
> > +
> >  #define QUEUE_RW_LOAD_MODULE_ENTRY(_prefix, _name)		\
> >  static struct queue_sysfs_entry _prefix##_entry = {		\
> >  	.attr		= { .name = _name, .mode = 0644 },	\
> > @@ -441,7 +422,7 @@ static struct queue_sysfs_entry _prefix##_entry = {		\
> >  
> >  QUEUE_RW_ENTRY(queue_requests, "nr_requests");
> >  QUEUE_RW_ENTRY(queue_ra, "read_ahead_kb");
> > -QUEUE_RW_ENTRY(queue_max_sectors, "max_sectors_kb");
> > +QUEUE_LIM_RW_ENTRY(queue_max_sectors, "max_sectors_kb");
> >  QUEUE_RO_ENTRY(queue_max_hw_sectors, "max_hw_sectors_kb");
> >  QUEUE_RO_ENTRY(queue_max_segments, "max_segments");
> >  QUEUE_RO_ENTRY(queue_max_integrity_segments, "max_integrity_segments");
> > @@ -457,7 +438,7 @@ QUEUE_RO_ENTRY(queue_io_opt, "optimal_io_size");
> >  QUEUE_RO_ENTRY(queue_max_discard_segments, "max_discard_segments");
> >  QUEUE_RO_ENTRY(queue_discard_granularity, "discard_granularity");
> >  QUEUE_RO_ENTRY(queue_max_hw_discard_sectors, "discard_max_hw_bytes");
> > -QUEUE_RW_ENTRY(queue_max_discard_sectors, "discard_max_bytes");
> > +QUEUE_LIM_RW_ENTRY(queue_max_discard_sectors, "discard_max_bytes");
> >  QUEUE_RO_ENTRY(queue_discard_zeroes_data, "discard_zeroes_data");
> >  
> >  QUEUE_RO_ENTRY(queue_atomic_write_max_sectors, "atomic_write_max_bytes");
> > @@ -477,11 +458,11 @@ QUEUE_RO_ENTRY(queue_max_open_zones, "max_open_zones");
> >  QUEUE_RO_ENTRY(queue_max_active_zones, "max_active_zones");
> >  
> >  QUEUE_RW_ENTRY(queue_nomerges, "nomerges");
> > -QUEUE_RW_ENTRY(queue_iostats_passthrough, "iostats_passthrough");
> > +QUEUE_LIM_RW_ENTRY(queue_iostats_passthrough, "iostats_passthrough");
> >  QUEUE_RW_ENTRY(queue_rq_affinity, "rq_affinity");
> >  QUEUE_RW_ENTRY(queue_poll, "io_poll");
> >  QUEUE_RW_ENTRY(queue_poll_delay, "io_poll_delay");
> > -QUEUE_RW_ENTRY(queue_wc, "write_cache");
> > +QUEUE_LIM_RW_ENTRY(queue_wc, "write_cache");
> >  QUEUE_RO_ENTRY(queue_fua, "fua");
> >  QUEUE_RO_ENTRY(queue_dax, "dax");
> >  QUEUE_RW_ENTRY(queue_io_timeout, "io_timeout");
> > @@ -494,10 +475,10 @@ static struct queue_sysfs_entry queue_hw_sector_size_entry = {
> >  	.show = queue_logical_block_size_show,
> >  };
> >  
> > -QUEUE_RW_ENTRY(queue_rotational, "rotational");
> > -QUEUE_RW_ENTRY(queue_iostats, "iostats");
> > -QUEUE_RW_ENTRY(queue_add_random, "add_random");
> > -QUEUE_RW_ENTRY(queue_stable_writes, "stable_writes");
> > +QUEUE_LIM_RW_ENTRY(queue_rotational, "rotational");
> > +QUEUE_LIM_RW_ENTRY(queue_iostats, "iostats");
> > +QUEUE_LIM_RW_ENTRY(queue_add_random, "add_random");
> > +QUEUE_LIM_RW_ENTRY(queue_stable_writes, "stable_writes");
> >  
> >  #ifdef CONFIG_BLK_WBT
> >  static ssize_t queue_var_store64(s64 *var, const char *page)
> > @@ -695,7 +676,7 @@ queue_attr_store(struct kobject *kobj, struct attribute *attr,
> >  	struct request_queue *q = disk->queue;
> >  	ssize_t res;
> >  
> > -	if (!entry->store)
> > +	if (!entry->store_limit && !entry->store)
> >  		return -EIO;
> >  
> >  	/*
> > @@ -706,11 +687,24 @@ queue_attr_store(struct kobject *kobj, struct attribute *attr,
> >  	if (entry->load_module)
> >  		entry->load_module(disk, page, length);
> >  
> > -	blk_mq_freeze_queue(q);
> >  	mutex_lock(&q->sysfs_lock);
> > -	res = entry->store(disk, page, length);
> > -	mutex_unlock(&q->sysfs_lock);
> > +	blk_mq_freeze_queue(q);
> 
> Order between freeze and ->sysfs_lock is changed, and it may cause new
> lockdep warning because we may freeze queue first before acquiring
> ->sysfs_lock in del_gendisk().
> 
> 
> thanks,
> Ming
---end quoted text---

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250107082306.GC15960%40lst.de.
