Return-Path: <usb-storage+bncBCZNB4MJSMHRBU6C665QMGQEVMMWLGY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf48.google.com (mail-qv1-xf48.google.com [IPv6:2607:f8b0:4864:20::f48])
	by mail.lfdr.de (Postfix) with ESMTPS id 55D09A0508C
	for <lists+usb-storage@lfdr.de>; Wed,  8 Jan 2025 03:22:13 +0100 (CET)
Received: by mail-qv1-xf48.google.com with SMTP id 6a1803df08f44-6dadae92652sf380163356d6.2
        for <lists+usb-storage@lfdr.de>; Tue, 07 Jan 2025 18:22:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736302932; cv=pass;
        d=google.com; s=arc-20240605;
        b=bqlrRd8Vnh0A3NZdICyxdycYmmK2Un1YCcRNfH0NdHphEAhljDjSQp2L28JqqMCDuA
         bQPidSyA5LnhwtFMp1sYnmqO0QqKrzrHxklKQClmSqBrCHgRRopCwpRZ2DpDJkY4D3Xc
         lUImHgvJ7rfiLMfOkz+/AxiJZX8yi6/9qg7/y8tBI7zMkDhpJxIDrmmihmfp+sImyXgf
         PRHgg+lXKbPWK/QJi6Tc9uF0/WM7SLJGNLe1r8BYcuONhPyX5qj4gsrHR+jbpj4+GiLb
         chRPJ81KOkH72bABZDMc8N2hCdOWk6dBYcq490ZzNEu55WrDMyF56QA9gLMrqa3frxo1
         CYOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=i/aK5XyKdLBlqFVijya0inUq7oTv2B5GW0JLbXQ+vHM=;
        fh=FlZ20P/ukvz6eRkBpId0BVtSfGN0y+fTp9Qy4xhcIZ0=;
        b=CIOXU3m3YZfQ0q1Wx3kfUGbshUQH/8qnSOaQ9XipZX+yHlgl+jhIlgtvFO6YcMFcoN
         CvTLgFjWgoErwPwI34j7Qau8acwRMU3MFNmK2BKdaucprm0WpGiqX9nPO4JDgCFqOmV9
         w7P5H3U3HR6YEKHdncpk9VXrzNs9QJMQmNYyj3qleM/JC0eKnSTv8HTX9SiZYCKxIppr
         sxgTqv50nIHNL7hdcSqSvkJAk5GXSH2B5282ws96M4WwzT0MVV3qQe0XCYBpCoBsj8KC
         4HqBPOsd+cRbYulk7BjhaHv1mUufbX0+vMVDk94Jk8z0mKZii//JGE+qIuWdgu98qg9h
         +7gA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=FrubBByy;
       spf=pass (google.com: domain of ming.lei@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=ming.lei@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736302932; x=1736907732; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i/aK5XyKdLBlqFVijya0inUq7oTv2B5GW0JLbXQ+vHM=;
        b=hifEEVN7Y9Ptr20rwpnXeiPIZn7Asde0Sri+NRCkYQ3TO36fLFgtg9KNC9a+z1HZ3A
         IPPEOnATe6H7P3YaFYuk8bPgkyKaSVhFuw7+nraOciNmIqFuv6b93/2U/cCgb2iSvYL5
         h7d9EVHJiGsstgIXFK8rTQ/9DIgiSVnq5pVMo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736302932; x=1736907732;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i/aK5XyKdLBlqFVijya0inUq7oTv2B5GW0JLbXQ+vHM=;
        b=EbnDiL1NqXMyX68twxsr/ClWr1fnFJk8DP4Hq2HlsAORUFS6YFWsv03R40CskXW3uC
         tPjM+d02umsVtb3XFkep8OqRJjrvBx0LcExYQZIG6lIrXEgyFWG4MAFMxqfDBy8yb0it
         5IjBE0aYxdAfKYH6TiNMYmHmTw/4v+yECPIz+WIdjRUQejjijWvLD5xE5Jz83dcrYSGd
         eoeY0ogGCd9eWdrN/6C1mvDO53WRS/JFfxZ/ls9Xe5cpxCnkZZoy1BuyUkogquBJnrez
         47kaaMLaklrLF3jHUZSJyvOnebZvRnHi1cwoWgzt/xYxw0hw/PgU72AxOPoglQA8fNiz
         SomA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVCktJbsl3I/igKyGSlaJKAz8n7SN0q9R0lNJ3ysQSF1UEXtcfTuW5X0K9lYfCCwfgrFFR7nw==@lfdr.de
X-Gm-Message-State: AOJu0YzQ2Tj4UVXjgfP4F2aukxQo/zgSef6L0/C9cl1JpCCQc9PKkNLJ
	g+WyYgQaO8g7CLneW7Y5vGuPO5eiQ5/bVx6YiJKSS5yfPbMWmRC2+5L1zyf8tVc=
X-Google-Smtp-Source: AGHT+IFaIvI4239xEitC/eh4IbyZHhwoXYU0vL7Tt2BX2XPNEC0xQkJhnrZrEM4rgpycpq4Cmoji+A==
X-Received: by 2002:a05:6214:1bc6:b0:6d8:7e5d:ef1c with SMTP id 6a1803df08f44-6df9b25c356mr23774096d6.21.1736302932319;
        Tue, 07 Jan 2025 18:22:12 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6214:53c4:b0:6df:8164:cdb0 with SMTP id
 6a1803df08f44-6df8164d84bls51357546d6.1.-pod-prod-06-us; Tue, 07 Jan 2025
 18:22:11 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXWb0D5OvA8/KzjUvxQ20uEY7xBCJ4kLtrdokU3q7we353X0V51BUP3hu4GG4T1zl8TIbhUEAOkvvGntw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6214:2428:b0:6d8:960e:5785 with SMTP id 6a1803df08f44-6df9b234c28mr22821416d6.13.1736302930863;
        Tue, 07 Jan 2025 18:22:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736302930; cv=none;
        d=google.com; s=arc-20240605;
        b=RLrpocwJffv4VNHczmjqu8DcCBaOtPVFk1feVEMLseN6m/YSLgLGKYWX4kxu3Mie8b
         d4PrJsrW9J2HWgLlkKXWKee7qb/W8xIvTBz60uWqi623jeHN43hCi1bED83TXeS2dHCa
         zjQR8KOKI6Sgn6YvMnp8BzYwQci3G5PG+xvwTiCdsIhx2KxjCxAMYtxIesgc24305ZAc
         WC54w54STOhEFfcOLbdzLAWOO1aBqTDCd8WnJtgncxTMzyRL6jXu1FuSbhsa4ObdUdyt
         u768qFLHKb2n9OJmLv90oPwWEO4rLwEqWMu5Un3AzAg9cmUzIRY2jC+H14pmvJczN8NI
         SmnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=BUmFn0QdcbnrP+kAJCEAifsFmvKuEgoz5SMuFeJiqRM=;
        fh=qxJjebJ4kXQxwqDHz44qjxVnY49wm3hZvrgJ6gPRbXw=;
        b=Yddo8CmJqfz26wZk2eOXXXqRZoNol5OHFNZtyBv9kqFzzrkUSmNZ6sdELWLUC3OgsC
         LLKtG5869jTPXGs8SE3uMmKfW9THcoe3weUnGkIG1mXlveNZOcrYwgM9wWefsH4p+F9K
         sVqFx3akVLoZPXiYfwj2e4sVzOhXvFfh2jNBmIjdcBjW0tDfclPIitzlVawSTtbmOKXj
         +vTBg1CkZK0qaKNkzLV4gpqKBgVi1A18h3iG1YBQLimX1SF16F4OmfORTUl9ysZjl9q+
         43GB7nGc2JVVvFsnfyAXtQQNZGqqqRv4lqDotiIX1JT+ahNGoMnySP4xhU20Z+az2/CJ
         8ahQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=FrubBByy;
       spf=pass (google.com: domain of ming.lei@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=ming.lei@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by mx.google.com with ESMTPS id 6a1803df08f44-6dd1836fd17si494028826d6.521.2025.01.07.18.22.10
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jan 2025 18:22:10 -0800 (PST)
Received-SPF: pass (google.com: domain of ming.lei@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-82-rFxU6K-JNFO5J-Hw5JdVVw-1; Tue,
 07 Jan 2025 21:22:07 -0500
X-MC-Unique: rFxU6K-JNFO5J-Hw5JdVVw-1
X-Mimecast-MFC-AGG-ID: rFxU6K-JNFO5J-Hw5JdVVw
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D476919560BE;
	Wed,  8 Jan 2025 02:22:04 +0000 (UTC)
Received: from fedora (unknown [10.72.116.126])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E153D3000197;
	Wed,  8 Jan 2025 02:21:58 +0000 (UTC)
Date: Wed, 8 Jan 2025 10:21:53 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Christoph Hellwig <hch@lst.de>
Cc: Jens Axboe <axboe@kernel.dk>, Damien Le Moal <dlemoal@kernel.org>,
	Nilay Shroff <nilay@linux.ibm.com>, linux-block@vger.kernel.org,
	linux-nvme@lists.infradead.org, nbd@other.debian.org,
	linux-scsi@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: fix queue freeze and limit locking order
Message-ID: <Z33hQfkbolsku7yr@fedora>
References: <20250107063120.1011593-1-hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20250107063120.1011593-1-hch@lst.de>
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Original-Sender: ming.lei@redhat.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=FrubBByy;
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

On Tue, Jan 07, 2025 at 07:30:32AM +0100, Christoph Hellwig wrote:
> Hi all,
> 
> this is my version of Damien's "Fix queue freeze and limit locking order".
> A lot looks very similar, but it was done independently based on the
> previous discussion.
> 
> Changes since RFC:
>  - fix a bizzare virtio_blk bisection snafu
>  - set BLK_FEAT_POLL a little less eagerly for blk-mq
>  - drop the loop patch just adding a comment
>  - improve various commit logs and coments
> 

loop_set_block_size() needs same change, can you cover it to this series?

Thanks,
Ming

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/Z33hQfkbolsku7yr%40fedora.
