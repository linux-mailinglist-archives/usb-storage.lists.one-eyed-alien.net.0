Return-Path: <usb-storage+bncBCK2XL5R4APRBVGMU2FQMGQEAQ6ADWI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x446.google.com (mail-pf1-x446.google.com [IPv6:2607:f8b0:4864:20::446])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C43542F7A0
	for <lists+usb-storage@lfdr.de>; Fri, 15 Oct 2021 18:03:34 +0200 (CEST)
Received: by mail-pf1-x446.google.com with SMTP id c123-20020a621c81000000b004446be17615sf5567478pfc.7
        for <lists+usb-storage@lfdr.de>; Fri, 15 Oct 2021 09:03:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634313813; cv=pass;
        d=google.com; s=arc-20160816;
        b=zeHVCMh0gzgNklCaCYJQJ3CkOROWwNAIhhRBFYE0E5d9fVaY6niV973GtlwDfzJLKw
         jKFQKySgmcTvl6VGsb+FHKfYTqw4zQzO1sRUWpG7V9/BLepnk04pC1ozPPLNA7HBP2S0
         tHppIzNeeub2G6TmqbUsJHo8rKXxFcbN55U1HxSLv7h1oGZ0kGcvhNXv+to2GGc5Fabr
         7haBDkcLkGyj5/YDK4QgN5Fct1mDbTOrefWzDCbrmfql7EAmBKYxSSKAi1CGD69FWKpv
         ntoCuIPcPS3GCl4Bgn1/DxuEpX1tXkrM12aIrg4CMu1O4/moq0m5cCiUvKYn1WxzxpG+
         9UPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=hNqVefgMfXSMH/A6AHbMQ3Wtzl/tCOSSYdjVjNWDmFI=;
        b=e5x7SMYGmXGcidSsRhqFXSfIOi9yqp2b3bg54wgdY6cXDJzg/9lljrNf/rVbtv2wzE
         oUjrDip62/mX4cDOr7Vm3jbO3Sr/1gagClh+KxTWiQ3g+EOZFNSWm7tUmBgC8zyyjc3V
         LUTJTlUHu2a7WngwTlgGWgJpbcW4DbFqnszXNQIOTQJ5Uo3YgZKWKviBJdXhheUf+8Dl
         rpx1Dt9fUZxUIUSwbNH5L8DLxuuW7625rT06OYSbmIOjdEOHOv1bveMoj9z+EQIXlqon
         ngYWQpRqr3Tj5582WxnkvGXYkSweh1xNFivRniGq0wN5eB6o4IUS4amHp653p4kamHFm
         Q9hg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=zpoEuN51;
       spf=pass (google.com: best guess record for domain of batv+717e4f5ff9d7c10515bf+6627+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+717e4f5ff9d7c10515bf+6627+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hNqVefgMfXSMH/A6AHbMQ3Wtzl/tCOSSYdjVjNWDmFI=;
        b=lSL8sJT4pCWOto94GyovVqOr5HYfgsk18GkjwjHYmi4ZilLvXE5MkdleD1eqGIEYMX
         unNfBxLwX4GeTY9m1ykktnH1HbA2kvhudwjmF91tux1yLJDcsoRAmOrT5OeCQJG1TNRp
         GrMguIQGxE8IfCzpLq1l7wz2F8cW6cBpm1hhU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hNqVefgMfXSMH/A6AHbMQ3Wtzl/tCOSSYdjVjNWDmFI=;
        b=FLzM0n4133DoNkBER/0vX2IITJ7HlnTfBFnX71B8KR5kq6xW0pkXTeAGhoDK3/eUmA
         f9Xtb08Ngptvj1kcffQcnXei3y3HZ+r/AmlShUQiMZ3Wp0gUnldPL511czSQT/IfVaRd
         oowaEMW/nQEcNdT/iwHZ9dnH2IZXwPTJ8wsPce/F9XRMxRdxS+4wQYUx66D58TPOgj4G
         CPz6PkBLMWFlxvfaucQmQbvwuuEHnsqFM2PUsz5M6eRFsxbt6z04Ckmw08DXqMng7bAJ
         bQHj4Dx1vLwFRvS/1MRcJ+65Ec/B5PYFacladv6NSOqQVvObKc026KNPyuN72hBjGl/k
         hckg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM532UUzmm43EJ+KFUZy1oTDubyspYQTSnhhkiesGDweTcCZcyPzwO
	5m9zQA2Ni99EnVQ5eiAx8c2HUw==
X-Google-Smtp-Source: ABdhPJzjW7Swm+CnXsabBMqJ5gFa9sReonfAoAWhIOwgEx+9TB/ZW0FX2SfAEL1aPE4mtf7PI6rB3w==
X-Received: by 2002:a17:90a:16:: with SMTP id 22mr29273390pja.25.1634313812847;
        Fri, 15 Oct 2021 09:03:32 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:dad1:: with SMTP id q17ls4998888plx.4.gmail; Fri, 15
 Oct 2021 09:03:32 -0700 (PDT)
X-Received: by 2002:a17:902:fe83:b0:13f:47bb:7ba6 with SMTP id x3-20020a170902fe8300b0013f47bb7ba6mr11645569plm.65.1634313812180;
        Fri, 15 Oct 2021 09:03:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634313812; cv=none;
        d=google.com; s=arc-20160816;
        b=OyHKShTo3oKyzOUd7G88UCCdgMckkODknNtVk9lytBmrNRiS08RAWkUP5YO2xnLJy8
         /e0D1xhmFhapIZ5tw1WGWSBOxxWI8hLgKcuTvwliG9xP3BaT5vbbfDQX8HHfu45n+/XA
         O1Jd3N5N8UuQ8vDRoV0FEdMLp7aVZMGCyM0MBEVqczxW4TDzdE7xwkLHdYxL+glbLzKx
         jfn6OdKIj/bwc4U8OLp9pozhtqSJEW6etNZhiHT3p1VUpCjPd0fhsD99rTAwUWTYFMyD
         jIBWYmx5inw+aKXIfxElh3CO+6lOJS4GC2U9NyuowO1lO60KPlw6csb4R9EVI8VvHId5
         CRYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Od2a8TFTLmg9DGz72n8zhdlcSfRxQN9hmAR8G79f8WM=;
        b=LnNcgxSEXdww+Pj0vCXYzh9/7vdw4XTs72p1hhCvfqhw286W7FDaaJ/dMZka+Yku8q
         t565/g4S3NAXsVXpwIVWvGR+PtA9eNVwRBA/V+4eJ3iZJnz6ktpDQIc5qnMeOBF0Lazn
         ZRHqtElzxwxkBaARqoHcrap3dK+q06Vek9V3sb9i0Q9ApqwG5suxme7+Qx8PnziFMV6r
         meMnC1guq8eLMElNCvZJR5/nV29EgFyUyurVTF3/lkJ77GrqZIente/HcrXWmKEuv0+r
         52Ab0mZgC71QqJLU3RThS+8Lhd+Pxr7hMDLZWh6aodMqbKPU9YyvW7Uf7DWjdpypQ8Pg
         swxA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=zpoEuN51;
       spf=pass (google.com: best guess record for domain of batv+717e4f5ff9d7c10515bf+6627+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+717e4f5ff9d7c10515bf+6627+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by mx.google.com with ESMTPS id i3si9157663pla.383.2021.10.15.09.03.30
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Oct 2021 09:03:30 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of batv+717e4f5ff9d7c10515bf+6627+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from hch by bombadil.infradead.org with local (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mbPg8-007zM4-Cn; Fri, 15 Oct 2021 16:03:28 +0000
Date: Fri, 15 Oct 2021 09:03:28 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: linux-block@vger.kernel.org, linux-mmc@vger.kernel.org,
	linux-scsi@vger.kernel.org, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, Jens Axboe <axboe@kernel.dk>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	"James E.J. Bottomley" <jejb@linux.ibm.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Christoph Hellwig <hch@infradead.org>,
	Thomas Gleixner <tglx@linutronix.de>
Subject: [usb-storage] Re: [RFC PATCH 1/3] blk-mq: Add blk_mq_complete_request_direct()
Message-ID: <YWmmULYUeo/Zd6Jl@infradead.org>
References: <20211015151412.3229037-1-bigeasy@linutronix.de>
 <20211015151412.3229037-2-bigeasy@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20211015151412.3229037-2-bigeasy@linutronix.de>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@infradead.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=zpoEuN51;
       spf=pass (google.com: best guess record for domain of
 batv+717e4f5ff9d7c10515bf+6627+infradead.org+hch@bombadil.srs.infradead.org
 designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+717e4f5ff9d7c10515bf+6627+infradead.org+hch@bombadil.srs.infradead.org
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

On Fri, Oct 15, 2021 at 05:14:10PM +0200, Sebastian Andrzej Siewior wrote:
> +void blk_mq_complete_request_direct(struct request *rq)
> +{
> +	WRITE_ONCE(rq->state, MQ_RQ_COMPLETE);
> +	rq->q->mq_ops->complete(rq);
> +}

As this is called by the driver we known what ->complete this helper
would call.  So instead of doing this we could just call
blk_mq_set_request_complete and the actual completion helper.
The comment above it will need some updates of course.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/YWmmULYUeo/Zd6Jl%40infradead.org.
