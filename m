Return-Path: <usb-storage+bncBCZNB4MJSMHRBAXE7S5QMGQEVDNP5QY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x848.google.com (mail-qt1-x848.google.com [IPv6:2607:f8b0:4864:20::848])
	by mail.lfdr.de (Postfix) with ESMTPS id 0102EA06ACB
	for <lists+usb-storage@lfdr.de>; Thu,  9 Jan 2025 03:18:44 +0100 (CET)
Received: by mail-qt1-x848.google.com with SMTP id d75a77b69052e-467b0b0aed4sf8694431cf.2
        for <lists+usb-storage@lfdr.de>; Wed, 08 Jan 2025 18:18:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736389123; cv=pass;
        d=google.com; s=arc-20240605;
        b=bVQl+eKO8elZOL0+zF/8RRyuLKnkLcE1ExRV/VX7A9TT0HfiXWBMSQ82Hxa+FmYWjL
         HIVyO8h+OE5bFFCvgOUtRJlpiAHD0oBk0ZsAvHDSOptEFyv5CQuchj1ZtI0hsSPsTWRE
         hFmeaAcgPf/FPj4YNtA2n/LVRIdgrzjPpiOGxkMewKJDMQJYBYj+CEUGT6AVojmxo15R
         nCsmqVfH/mQNxmdfwHnnxEi/JrNseObOjmj1BPnbgpNvpRUPuBpFwaIpcmxySQ/a56wN
         S5YS6ME3bxAGVtB90885UV8nRiSw8rmEzaLADgXyloF48GvR6I4tyVs1kiz0fSdIfZn6
         pIsg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=YaL18dkE/3xwpLeoMkUFMprhErgrsM/riJ1q6PixsK8=;
        fh=TgffrXurdy9wiJOpTUyIN5JLskfwuE5zmxeyLrxSEHA=;
        b=hNt7O028J00gXBRqf3/xzvV2fyl4iKZtJ1fI3bTKnZQXBe3OYI6oiVdTzMa5rMmGu+
         CgnG5Lv8heHCWnwQsqRlq7gQofq6zltoc7w3CgPf2ZF2d7lTuuJ93jRlCJ9B6wTBHKYg
         UcDEd453LEJmQvkHaWouVr+HWnzfYUTJoaz4LuQsoO3jbSq/guHzSiPSLAkaPDaRcBZZ
         rhUzDY09qQPcqX0d7r6E0JjRiG607Ev49ppT2ivkVyIkegnS6XPROBuARxrvNAnR5xa9
         Gv4/ap2vJCASTPATuaIRjks2Ih7UvPB+sM489tiiImklrjanaO5uC3+jpGGA58Z5rzuu
         unkw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="UHoSDBN/";
       spf=pass (google.com: domain of ming.lei@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=ming.lei@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736389123; x=1736993923; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YaL18dkE/3xwpLeoMkUFMprhErgrsM/riJ1q6PixsK8=;
        b=fevBGo6yaZGgZhXm6eCMhrKvzQzLAwrm91+/CiqsobkuU7OB4Xsgwrl5bOgzvGUY0d
         vrsSrVmX2S3XG7wtCX16m0i2yojXsoMDdURYd4zgTOHPLCT57nvjAX9fWl604WqK8b8/
         pWVgvo6oB+Nb3Bw/ZaoKlhn4HPkMS1Jgb4MFs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736389123; x=1736993923;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YaL18dkE/3xwpLeoMkUFMprhErgrsM/riJ1q6PixsK8=;
        b=trX5faqqWAJ8wifESNbY63JpWFheT1wBv98JyEGyrlahiCKXEMJgBRgohvFLw4LQOU
         9vs4qm7dMdw2KAjmrYozN09BxjJfKmaYMJK0SDm9MfFLr2zH++hQYooXGtBiqkcJma1j
         f8VhMa2zbnjoUCecb/fz0ukywViblvNBD0CuIzIOVM32u6Tr2CHtEPWXgCNVwUb+kvtr
         wlSwiewd76tm0sxutHpzV6WmJCNvVMSxWRJ5aZ03LDXYwgfcSbg8vbNo2E4TXmhjUeYK
         nWHbi9iwd2Hp0CTh4H4G2/UtN8zMDhkuHrATtGQN6iN0GcOqWgkG9DucRFxEDvb7Ni+N
         Tuug==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUPrrGbOaRWW5DRPE6uHU1em0WLMjNW2UhIuVo4YHvKxEC9pxwoMfoQq7d9rE0HAQ0vZSjwbA==@lfdr.de
X-Gm-Message-State: AOJu0YxllsOS1aeILnFHfJEHyDkoEivYs1Ur4T6/dM82pDyzF7NAPkNU
	qHwWMboiTVBmF2voTYRfb1mzzD7m7YcfhK9a416icd9BXmrk7Q7yN5uQIuIvUG4=
X-Google-Smtp-Source: AGHT+IHFn093hP5LIF1UX9sifGS8QlQc5VQfqjjefWsEytX13iJUuKfiZZmxMtD34sb7jc0QhBDURQ==
X-Received: by 2002:a05:622a:1a07:b0:467:4b94:cfaf with SMTP id d75a77b69052e-46c710a1681mr22330331cf.51.1736389122672;
        Wed, 08 Jan 2025 18:18:42 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:622a:1b20:b0:466:98fc:1e40 with SMTP id
 d75a77b69052e-46c7ab5d334ls8907721cf.1.-pod-prod-03-us; Wed, 08 Jan 2025
 18:18:42 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVJD4bUsQTmRP+jG5ODcrBOPGkcYhg43ReZR8kO1E7YUwl31ij+uOugjUvYOHiZ1vXIFTiuaDPFlAeQiA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:620a:3709:b0:7b6:6642:b5f0 with SMTP id af79cd13be357-7bcd9727ac9mr259846685a.11.1736389121771;
        Wed, 08 Jan 2025 18:18:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736389121; cv=none;
        d=google.com; s=arc-20240605;
        b=FaRQIKWYce42Q87qYNb28MI6rtXnPrCy1Fqx2ilxeyypFCsojiwlbEVAY2fYo00mmT
         YExOMhFmgnMVCamhBnPMaJcVksIqgtz7Rdck7mOt39C3yX6lqoljFlhgqKDqVGD35g4P
         4/GNXOHV2ms1cio7HWUAfuw9cFwlzjsBxoHn31HYQ7Tmfh/2SQKtHP+eaQj8qzPiSqtr
         H/NV6jHxqHYSDSqAezFmQOTvSjAzUcj4/Oj4Yyqs8LgcMgz5ifK9ZWSnRlqN/9/xNVPn
         dgKOMCGcscp8jMUDjO/Q3jMQHSIzWVm0b2QP2zQcCkoZNILEO4yz+iII6G3taXV2jZWx
         FAjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=NI/7sQZJsUB7MRKETVbNrqqCnlEl+xyWkxCJ71vt8Ik=;
        fh=QWQ5sUO1jicnIS+V+0mkXr1hzwuRfgAlufzC3DFgx3Y=;
        b=fdB7nu5mJCZkb8gip9caQ8irtpHDrlYo3U1DwwlybI7Ma9gw6DcW0zpzNQ1s5vXvYp
         dS8di/2kUnCM9IFYbT9zz2NZZkFAz5lTnmDb9WUFLUtz8Ne1K/52X6jvbN+k60RGXYYD
         DrWuH8Cbo1f9ub5ds+UXHHrnL+qxK3Z/zmCA3a+1S3oyqzsyJWSst4IPPpsuE1Mbbbsc
         z/uZ2K27Eiar/W1j4YrmXHalWtqZSRh7M8lgBi7u8yk4r9bz5XeD6AVA/lruhsOQUICC
         7yZ8r2EGscvI8qJz2CGMIm+BoX9OSzbjbJZCdwvm3M63cEsySLmQfjH8ONJeO/lTOI9Q
         4yzw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="UHoSDBN/";
       spf=pass (google.com: domain of ming.lei@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=ming.lei@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.129.124])
        by mx.google.com with ESMTPS id af79cd13be357-7bce34fceffsi56911785a.417.2025.01.08.18.18.41
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 18:18:41 -0800 (PST)
Received-SPF: pass (google.com: domain of ming.lei@redhat.com designates 170.10.129.124 as permitted sender) client-ip=170.10.129.124;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-357-7FSoSldJMXm3ogIjfdzqow-1; Wed,
 08 Jan 2025 21:18:37 -0500
X-MC-Unique: 7FSoSldJMXm3ogIjfdzqow-1
X-Mimecast-MFC-AGG-ID: 7FSoSldJMXm3ogIjfdzqow
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E3DF5195608B;
	Thu,  9 Jan 2025 02:18:34 +0000 (UTC)
Received: from fedora (unknown [10.72.116.23])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8EB1419560AD;
	Thu,  9 Jan 2025 02:18:28 +0000 (UTC)
Date: Thu, 9 Jan 2025 10:18:22 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>,
	Nilay Shroff <nilay@linux.ibm.com>, linux-block@vger.kernel.org,
	linux-nvme@lists.infradead.org, nbd@other.debian.org,
	linux-scsi@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH 03/10] block: don't update BLK_FEAT_POLL in __blk_mq_update_nr_hw_queues
Message-ID: <Z38x7mzrQPEiUOpv@fedora>
References: <20250108092520.1325324-1-hch@lst.de>
 <20250108092520.1325324-4-hch@lst.de>
 <Z35T8xeLxhXe-zAS@fedora>
 <20250108152705.GA24792@lst.de>
 <a3bd231c-0568-4dad-9268-bc7edaace94b@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <a3bd231c-0568-4dad-9268-bc7edaace94b@kernel.org>
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Original-Sender: ming.lei@redhat.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="UHoSDBN/";
       spf=pass (google.com: domain of ming.lei@redhat.com designates
 170.10.129.124 as permitted sender) smtp.mailfrom=ming.lei@redhat.com;
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

On Thu, Jan 09, 2025 at 09:05:49AM +0900, Damien Le Moal wrote:
> On 1/9/25 00:27, Christoph Hellwig wrote:
> > On Wed, Jan 08, 2025 at 06:31:15PM +0800, Ming Lei wrote:
> >>> -	if (!(q->limits.features & BLK_FEAT_POLL) &&
> >>> -			(bio->bi_opf & REQ_POLLED)) {
> >>> +	if ((bio->bi_opf & REQ_POLLED) && !bdev_can_poll(bdev)) {
> >>
> >> submit_bio_noacct() is called without grabbing .q_usage_counter,
> >> so tagset may be freed now, then use-after-free on q->tag_set?
> > 
> > Indeed.  That also means the previous check wasn't reliable either.
> > I think we can simple move the check into
> > blk_mq_submit_bio/__submit_bio which means we'll do a bunch more
> > checks before we eventually fail, but otherwise it'll work the
> > same.
> 
> Given that the request queue is the same for all tag sets, I do not think we

No, it isn't same.

> need to have the queue_limits_start_update()/commit_update() within the tag set
> loop in __blk_mq_update_nr_hw_queues(). So something like this should be enough
> for an initial fix, no ?
> 
> diff --git a/block/blk-mq.c b/block/blk-mq.c
> index 8ac19d4ae3c0..ac71e9cee25b 100644
> --- a/block/blk-mq.c
> +++ b/block/blk-mq.c
> @@ -4986,6 +4986,7 @@ static void __blk_mq_update_nr_hw_queues(struct
> blk_mq_tag_set *set,
>                                                         int nr_hw_queues)
>  {
>         struct request_queue *q;
> +       struct queue_limits lim;
>         LIST_HEAD(head);
>         int prev_nr_hw_queues = set->nr_hw_queues;
>         int i;
> @@ -4999,8 +5000,10 @@ static void __blk_mq_update_nr_hw_queues(struct
> blk_mq_tag_set *set,
>         if (set->nr_maps == 1 && nr_hw_queues == set->nr_hw_queues)
>                 return;
> 
> +       lim = queue_limits_start_update(q);
>         list_for_each_entry(q, &set->tag_list, tag_set_list)
>                 blk_mq_freeze_queue(q);

It could be worse, since the limits_lock is connected with lots of other
subsystem's lock(debugfs, sysfs dir, ...), it may introduce new deadlock
risk.

Thanks,
Ming

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/Z38x7mzrQPEiUOpv%40fedora.
