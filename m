Return-Path: <usb-storage+bncBCZNB4MJSMHRBDEL725QMGQE2KT75CQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x745.google.com (mail-qk1-x745.google.com [IPv6:2607:f8b0:4864:20::745])
	by mail.lfdr.de (Postfix) with ESMTPS id CDD00A06FCB
	for <lists+usb-storage@lfdr.de>; Thu,  9 Jan 2025 09:15:09 +0100 (CET)
Received: by mail-qk1-x745.google.com with SMTP id af79cd13be357-7b6f28dc247sf6765585a.3
        for <lists+usb-storage@lfdr.de>; Thu, 09 Jan 2025 00:15:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736410508; cv=pass;
        d=google.com; s=arc-20240605;
        b=USUYMWbs8g+fFXawvSV3LEtXdrFH28v6h7iZ/1gQBlfeg7t1a3Zm5O56WvN9BIi+7I
         o1ySvxhXFPcV3Pn477HdZM5OZc/+gGQlBZSdrrs96yMF9ukQL0xxQ5RzmNVqYW82e7M/
         lB6xI7S/knvSZx80Fzhxgb5GtPMtm58YxcW2XY9N63xoNIA7wQkQ3ogCqfp0DYvF6pn/
         bx0ROmvbUlQXe3BaASIgamtN4KLU8lh2KQmfGVbORMyzHa4sdkshpW4WsZn3j24Uyc0U
         ndvJlbVwxnwiNpTDYByINcRoh8oGBAIJmih5q1PSWTywz2JlMnU9IBZGIPV2uMjd3BQV
         dLew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=3qM8wf77RkzHxXF1nyc8KLKNe/W/YfCFSMOjKtotmRU=;
        fh=5rxhTuAY/eU+rkmp1Ejy5HS6s+x/3m3HvR5rlV9464Q=;
        b=LaL9hqJfqjIt4iHd+zanJUo9rDkWwzJVCHI5n3otLt6X6/zz2/DCkXT1y0l4JOYhn5
         al7mioyKqVM8aezc6w8k77N/O33veTw+58mG3OLczw8PKALFRZx0fROm1Fsw+JcWqcBk
         MO4cjeRVeVrXkTG0gZUZLTUzJwEZCWpHrFxR4SKgbI80TZzTYkSx2wmEzqwCAOLycmm1
         8s2Bl7SNBccYmJ+gm3jLInE5lFwdrotEjp0/KhdGvuYPVGqs67VDPhssFV3nfUOPMhxI
         wlej2nVthdVnd6J4PswUZgsIoFlLqK82GxgBin6jult/6bnz5fW4dIVlfstU8uoXBu/A
         X+bA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=eTIgXNA8;
       spf=pass (google.com: domain of ming.lei@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=ming.lei@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736410508; x=1737015308; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3qM8wf77RkzHxXF1nyc8KLKNe/W/YfCFSMOjKtotmRU=;
        b=cgzL+F5asebo0ZK7Nm4le1MWcuZQ/Ls1jLOZlhWGOMcLwa95ufzrYk0ai9H0AurlWD
         j3KGndBNTt6YHSYWkaB2h0iwueA2ULVqjVYZszyJvyENOinc4FpE4V1PdA8ehBlEdtZY
         +V1/vNDxv5xJ6knL6NkPHFsNMjiw5bxvzvIvY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736410508; x=1737015308;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3qM8wf77RkzHxXF1nyc8KLKNe/W/YfCFSMOjKtotmRU=;
        b=LnSg9eVKwzOsBwl7Fk+Telt0xyIL5K3K8A/y8DrQY8+KockWBEt/GlKxAXvtupjBos
         FaWyZnBzvEG/IbQ0rFccKrBphcws2uVphiCB7TV+jCV7gEiftPb+0k6t0jnswuQE2Mu2
         DPGwWTbJrrPTCqi/sr8zNHXclNN6CHcbdFmWKbsNf/PKHw4dk08RozVTqgcJyYkVo+Mr
         keghe/OHRqUqCfdsUKxiqlszk5GHMod4Yw4vLWXu7ZVjum5FUikX4Q/ioBmFiDNd1cdG
         rzruTq/B46jJiKvmsoSo3S8ZaJqNTYWpFO/uov6ZmiD7irQX9HfX3ClQGiBFnYNvwJIU
         z7hQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXBU53aiU+38OcI4MIXIeanVIAyY96y+k0MMxzKRqlcIIdzXDXyhiABSFTlN+Wgy78RtNHdJw==@lfdr.de
X-Gm-Message-State: AOJu0Yy+cUH6P8hRTWRUObS3Z3jCztsqgSRdFRub8YWPOIzWetgPp9uj
	hTxNjyOk9n4FScfbECg2eIQh/BzcLUu03OtwTiupgAXh5OA/8R4d3rswoxoyNhDe1L+0Qu4=
X-Google-Smtp-Source: AGHT+IHuh7Oe6ViCSfeBrJAM6uNrn5cR1BLV2On6vgw2ORAUFpRo5QpH2UtPuJcA37P8RMMEVBgLeg==
X-Received: by 2002:a05:622a:302:b0:467:58ae:b8dd with SMTP id d75a77b69052e-46c7108ef6emr29002871cf.4.1736410508192;
        Thu, 09 Jan 2025 00:15:08 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:622a:6096:b0:467:4d40:31b9 with SMTP id
 d75a77b69052e-46c7aa2a4f6ls15365631cf.0.-pod-prod-06-us; Thu, 09 Jan 2025
 00:15:07 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWM32Qc4Mcr8n1dubkYMN1F88TtUmOg3YCgTUJKHaZ1pUyt9A6kGwQNhT0xe8a+j0xG2oi1h7T0Fr62zg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:622a:5989:b0:46c:71f6:848a with SMTP id d75a77b69052e-46c71f684cdmr86295651cf.1.1736410507085;
        Thu, 09 Jan 2025 00:15:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736410507; cv=none;
        d=google.com; s=arc-20240605;
        b=Ik2tVI9GQzVnax6U5mAVKGobtLhDYFx+UnSXIo7BZVhO2rqztYeZ2ORiOwygnEdg/k
         tQScWZxvh3r1aik0YAZ+AH6ff07Puy8gJfOuzVGyEoBVAt+FvVLXPrqCvUIeFSmatnYg
         KKUDp8nTIPppek9oquL9yVvuNN4OdB4aSVGDeNOb2t83s27pmIEStadZdeLz1tsT03l3
         EWdUHpJGWo4uXcrg00Sae+Fw0WWu9hRnfgnG0X9nyhx70v45XoWXiTz+E+NsBrawDBeY
         yApAon4+rbdvhDENNSzGWRwh691MFAfn0TUWLLhAUnbGYr6bJjcfeaKH/8G3DpVKhF1I
         dnQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=8z5CkXWyMi/D4Z3NOATWeozJt2iBFHFltpjHR+p5wAU=;
        fh=qxJjebJ4kXQxwqDHz44qjxVnY49wm3hZvrgJ6gPRbXw=;
        b=ivCAabbClKh1O7NTfyhAOiPEwH8RMvLCU59kmRWFzhoQn7JwpzfppqzaNGJtOChy7Q
         Jhhrv6B+OO/t+FdaQc6Ak0fweH92Hq4WaTWmv+DwxNj5m48Ubr1oy69B6enHbBOhiVPo
         86pIaZSEDJ7eSRpS5oYtgxUTqEOjDMbIxsN5/wZMiOnefNigDrqyhwfVqZSNspOP7ePh
         2q/UQUa/S6/KGZK9RQ28xW8Fa8lUPqc/kIdDw3nLdkEx7cjuaOonNa/ibQgcd7kyX0ei
         WPe7JFvIxxwPiPCpG+UKA1gVAilAbZPkSEn/R9UID3MXuEj4GDAlq8zURlUMH775Wpjt
         AK+Q==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=eTIgXNA8;
       spf=pass (google.com: domain of ming.lei@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=ming.lei@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by mx.google.com with ESMTPS id d75a77b69052e-46c6fa20160si40583881cf.33.2025.01.09.00.15.06
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jan 2025 00:15:07 -0800 (PST)
Received-SPF: pass (google.com: domain of ming.lei@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-498-8fCmwubBOUKYHjEKZt6joQ-1; Thu,
 09 Jan 2025 03:15:03 -0500
X-MC-Unique: 8fCmwubBOUKYHjEKZt6joQ-1
X-Mimecast-MFC-AGG-ID: 8fCmwubBOUKYHjEKZt6joQ
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 1FFD91955DD7;
	Thu,  9 Jan 2025 08:15:01 +0000 (UTC)
Received: from fedora (unknown [10.72.116.139])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 6724519560AA;
	Thu,  9 Jan 2025 08:14:53 +0000 (UTC)
Date: Thu, 9 Jan 2025 16:14:48 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Christoph Hellwig <hch@lst.de>
Cc: Jens Axboe <axboe@kernel.dk>, Damien Le Moal <dlemoal@kernel.org>,
	Nilay Shroff <nilay@linux.ibm.com>, linux-block@vger.kernel.org,
	linux-nvme@lists.infradead.org, nbd@other.debian.org,
	linux-scsi@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH 03/11] block: check BLK_FEAT_POLL under q_usage_count
Message-ID: <Z3-FePovuu2dEbfG@fedora>
References: <20250109055810.1402918-1-hch@lst.de>
 <20250109055810.1402918-4-hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20250109055810.1402918-4-hch@lst.de>
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Original-Sender: ming.lei@redhat.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=eTIgXNA8;
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

On Thu, Jan 09, 2025 at 06:57:24AM +0100, Christoph Hellwig wrote:
> Otherwise feature reconfiguration can race with I/O submission.
> 
> Also drop the bio_clear_polled in the error path, as the flag does not
> matter for instant error completions, it is a left over from when we
> allowed polled I/O to proceed unpolled in this case.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Reviewed-by: Ming Lei <ming.lei@redhat.com>

Thanks,
Ming

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/Z3-FePovuu2dEbfG%40fedora.
