Return-Path: <usb-storage+bncBDUNBGN3R4KRBROI6O5QMGQEZC2TXOI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x546.google.com (mail-ed1-x546.google.com [IPv6:2a00:1450:4864:20::546])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E145A039AE
	for <lists+usb-storage@lfdr.de>; Tue,  7 Jan 2025 09:22:30 +0100 (CET)
Received: by mail-ed1-x546.google.com with SMTP id 4fb4d7f45d1cf-5d3dbddb891sf8138405a12.0
        for <lists+usb-storage@lfdr.de>; Tue, 07 Jan 2025 00:22:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736238150; cv=pass;
        d=google.com; s=arc-20240605;
        b=UEnY+1S5TdMeZ9f5E/yqJ9/pHFpGpm/cHFNsNL+TfYQRaKbiS985B6buk18bCml1pa
         xZh/70qh1ETYjtb2gIFApR8CutLl1dqVDFyMc5QPm4jGL87cMmOFUzqU/O4B6j2L/4lq
         yZJ6tfFZ4ifVCOM9/rEPzr1b8qc3q2YZUowpTWN9ZmuGpIlJOOVh9onyB3cFfpR7zjqh
         UxsQ93huzeKp2iITDAMOv3SFctp57BTGVBlVvJu12EnDgC0vGricj8uB1vY2PAt2aLAh
         T+VEB8PnvbImA4Gaqsu4cQhU0WXm3DLPKnL+YIPVn0aAggDIRzEuyiEnvZfGau594g/u
         bJWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=a9ZscayfBPTv/YKifxcVpxYWO4RzZDURpcF0lQAlKjw=;
        fh=yGI8miOZEf9tSJUzDds859rG8VxF74h8ldJnN6VU8Q8=;
        b=MbrfT8MXY1fj7Q1ICSwRvtl+uQeN9UoK7jhbqaCtAFfJzSONl6nxRTWIAgFPCWGFw8
         nMYQqs9iKm95F+2FhW/NxAngqNFGr9B2+70qKxH9Qi8wQSPM6boBNcQzy8GWYiLKDKGF
         R8RXImBg5AOhPBeseq78XArWhL/PG0s6dpKd0Ya9orrchKBqA4EByxI68xPlbZ3sDxNb
         M/9hxYY1acISgGauGFQjjk3BhoRbLdkCPUaCi//yee3uKf3OHxx8A+TL2Gl+m8wniyhz
         rStL9/Fz6PQjhTVIj54a0kdN2AFb8f3mjt4ny6OMDC1jwmD2lDXQDUMZZbPkY7+DXYdF
         IYGw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736238150; x=1736842950; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:user-agent:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=a9ZscayfBPTv/YKifxcVpxYWO4RzZDURpcF0lQAlKjw=;
        b=VHJ74x4PaI8iOzX8yE/fnErsaXbWeTTXnuz1yU5zspXAKgMKrPBT9uXrU4QO+dHXf6
         lsmDjgyRlYlnudfpUlhhmd/Q+xnLWCnQ5EHLpa05/k420x2eUWbvE8HEK78H4Z/KJpzS
         yAVZrqVMhaBEVppdUhWCNtOGoXVIPIcoFZoNg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736238150; x=1736842950;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:user-agent
         :in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-beenthere:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=a9ZscayfBPTv/YKifxcVpxYWO4RzZDURpcF0lQAlKjw=;
        b=v4WI8wnTqQGPdlzP67L3HE1mL5gDlL33MAND9YNAlk7YUdgMA5JEdJH0co/dCvXzif
         Evxj7fZCsjOOjp4mLHFSyf4UbfQ2lCBROO+b6ijdr+S8t4Mr/GoRBfZMtaEEYy7IXKkO
         zPwwsQO7SHwtRZhHF1dhbgSTfhekVFATJcHiPV75TtRXwGbd7+JYcUU4AgOkjpr/DXLl
         u+TvB7MQiblGRieYLUWABTh+Bl7xRmu59NPvaN8uKx8STZ6AHrZP1e8icZokR9URSElD
         GqzqWmAMTQ/ho8geigXt3EmD5VnN6Wi9r+w+unCeQ1X6pPVBterPbFIpFOZlgioFypZi
         rglA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVEcpubqC6dE5s3AxkI8yg3KtbxKra6QN7rgObC3op83WaZcejl2oCg27ay2nl7pvnlgVV3OQ==@lfdr.de
X-Gm-Message-State: AOJu0YzOHqfhrPOkTFXs1chYs4/6OpOcpiTArJKfquv/PPaUlyAFh8bP
	AO5WT0yj0td9FV6qArsxQVetdUQXYhdAGLvkgGCrz2V7k9aKHyLfAbdDeVfYfME=
X-Google-Smtp-Source: AGHT+IF3zn2s9V5I+/REGOUOs578Gl48WWfcAxLDuh6DaOsU1VsrF4gnZPjXU/nL2MQaVYvdMTeUCw==
X-Received: by 2002:a05:6402:4304:b0:5d3:f041:140e with SMTP id 4fb4d7f45d1cf-5d95e916cc8mr1975523a12.13.1736238149901;
        Tue, 07 Jan 2025 00:22:29 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:5489:b0:5d3:ce70:f232 with SMTP id
 4fb4d7f45d1cf-5d957994d02ls589255a12.2.-pod-prod-00-eu; Tue, 07 Jan 2025
 00:22:28 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVnzbjd0lgqeeWrwjDbK4cco343NhZNzD88kFVuRAkP68KmgmjFjp8oIInpLiENVZKSkwvLO2dk+KPt4Q==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6402:5d1:b0:5cf:ba23:3e44 with SMTP id 4fb4d7f45d1cf-5d95e8ceff9mr2042338a12.7.1736238147602;
        Tue, 07 Jan 2025 00:22:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736238147; cv=none;
        d=google.com; s=arc-20240605;
        b=TyBD63HDMOky/labXq5fKP2lxwJLwmdxuf1m/RO2kgKlGdj8PZsWTUhBoVfMGmjlxs
         fu0BTRr8n61WotoBSefFdekvI2J5tsfljrKFA5ug7sAUCiPH64uFUMEguBIDCWTa9MRz
         wmimjdRfRyJZ3RbzKZ5GAy1QS2QBJ6m7GTRiPzvi/emzDg3/e9xQHpY+Xhoeo38VGjef
         PbZ1QgMQpRkTUxGDanzBMAyy2ErEVxx5WAS69VzHre14qgrQc2PVKcFxk2NMzoMYOWTG
         4u0Vml7rVvchvbaFzsazrC30XwH421KiyRd+nsFvXqOK8mfwEPet1mOT3BfWgeyO5PCY
         TlVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=hozFIaNBcykSph3B1TwDgEb2lnwmx1AV1y6CmmKgcEo=;
        fh=XJ/xA22z07LYCWeoHUPlSDZTqwZKXWlTH+Re0f0x2tM=;
        b=KfyUmWHWDIC6Rd/3/VG8a6TwpyTlCWtl+pUaVHrBNTpToUG1M5VO0RTZF1NJZJMMgb
         IA/o988grfOIJUhb/iywJmsAPFUKs28Z1uxZt5LZd57odUZSAOVVY4CoMtFjNyFs/mOk
         8ByZeAWqTpyXlE/fwC0VQQoh3Ucev+u1r5x+1r2zphxUyi9el4uwk8abahgTUJuNGmkg
         LCA/rOJu6EGnU7vc99y+WxnPkkJHr6lk8/1ir0n4Yj8TqMoYDhnDJ1mQ7TiL5a/C0pKt
         HjU5E6GGFwUySmiMjNL3UR/AsiBoOdIgdDGH17rKl6p02ldVhGcMCGGVbRdGIRu6rMIq
         HGHw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from verein.lst.de (verein.lst.de. [213.95.11.211])
        by mx.google.com with ESMTPS id 4fb4d7f45d1cf-5d8070310cesi23349903a12.564.2025.01.07.00.22.27
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Jan 2025 00:22:27 -0800 (PST)
Received-SPF: pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by verein.lst.de (Postfix, from userid 2407)
	id 3D7E568AFE; Tue,  7 Jan 2025 09:22:25 +0100 (CET)
Date: Tue, 7 Jan 2025 09:22:24 +0100
From: Christoph Hellwig <hch@lst.de>
To: Nilay Shroff <nilay@linux.ibm.com>
Cc: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>,
	Damien Le Moal <dlemoal@kernel.org>, Ming Lei <ming.lei@redhat.com>,
	linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
	nbd@other.debian.org, linux-scsi@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH 6/8] nvme: fix queue freeze vs limits lock order
Message-ID: <20250107082224.GB15960@lst.de>
References: <20250107063120.1011593-1-hch@lst.de> <20250107063120.1011593-7-hch@lst.de> <96c48ba0-3db5-4504-a456-e57440aa1b56@linux.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <96c48ba0-3db5-4504-a456-e57440aa1b56@linux.ibm.com>
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

On Tue, Jan 07, 2025 at 12:28:29PM +0530, Nilay Shroff wrote:
> > -	blk_mq_freeze_queue(ns->disk->queue);
> >  	lim = queue_limits_start_update(ns->disk->queue);
> >  	nvme_set_ctrl_limits(ns->ctrl, &lim);
> > +
> > +	blk_mq_freeze_queue(ns->disk->queue);
> >  	ret = queue_limits_commit_update(ns->disk->queue, &lim);
> >  	set_disk_ro(ns->disk, nvme_ns_is_readonly(ns, info));
> >  	blk_mq_unfreeze_queue(ns->disk->queue);
> 
> I think we should freeze queue before nvme_set_ctrl_limits(). 

Why?

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250107082224.GB15960%40lst.de.
