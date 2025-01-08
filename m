Return-Path: <usb-storage+bncBCZNB4MJSMHRBI5M7G5QMGQEFXDYXKY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x146.google.com (mail-il1-x146.google.com [IPv6:2607:f8b0:4864:20::146])
	by mail.lfdr.de (Postfix) with ESMTPS id C4838A05855
	for <lists+usb-storage@lfdr.de>; Wed,  8 Jan 2025 11:40:36 +0100 (CET)
Received: by mail-il1-x146.google.com with SMTP id e9e14a558f8ab-3cdcee06eafsf5515535ab.3
        for <lists+usb-storage@lfdr.de>; Wed, 08 Jan 2025 02:40:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736332835; cv=pass;
        d=google.com; s=arc-20240605;
        b=BQUY1JIsIyTSO3BG7opor/dqC6ZXpoQqYJ8ZQ0h+VgNNzJCS//BUR4bCjgNf+n9QTC
         40HKJY7r55TKxO7dQUVhXbWr6F8AJsC8/G6VKLXRdPSameGZBKFdQun/3mKPnIR7ASpG
         /SWg4cYXh55yZvWgqgYM4GFSyQ0JZbGJ7trM6IDeeRsPLvJCEpq+Ug6Il1FJ17QniqVm
         svnPjfgtzWZp4Z/Av6pJ1QVKPgjwb0ZvoM2vlzdYg8TJv4Ev21cC5p42KclSoQUM0DjN
         vt5/IhuWKFJwxtkYGVzS/QymWv3dGJzXphgQ33QNMIqNEYDlDw5iRKcEjk+pHyk2pEIG
         z/LA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=otQaiwfcfIxPnojker7QiZMGmF9nQnUe5Nyxn+40sCE=;
        fh=hnVAGV3PjVs8N0fD4IqLqT9f4rzq+RKW3FHv24ExcJM=;
        b=LPRpA493vFFTBJC8Uc0dix2S4XPG9ewB/C+CxATzyDOwH4rC6mKIu4JDeVyes3wc0e
         sfqVq+cD2RN02gZW/ZoHRI1zFWh26xORwEN+VaHxWJEu8Ksctn+dN6Uo5s8OIeAsTWKC
         lCZhfDpegGdy1GaYQkMmI6eT8J8aHZ6ZpfuCE/iIUvhW0FNcKpSmf59/sPylFkqcc8+S
         2NwNaZSDfozhrvUYGpnsLzTaH67Rr6LY7PEQOCbETyxQnSQRldglKnOAgCafE6gnoLgr
         kKd4a4gluZfpXvmOolv3BHDMtPiwrNW42oeXCBg6c2Ytx4FmwHSZ+op3ytKL8XdOlbJ3
         ZXwA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=eedauRcu;
       spf=pass (google.com: domain of ming.lei@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=ming.lei@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736332835; x=1736937635; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=otQaiwfcfIxPnojker7QiZMGmF9nQnUe5Nyxn+40sCE=;
        b=dUvmvWDoz3VPO6QSTSow7bPeaw4sMMAS2dzPnjpR2LtMH020s1p6xOlxUCWW0enpst
         KLD+ZD8I+4fPryzLVhkCbAZSN+Xr7/HIdVY0UYzrQhHLSKNQ1ChuQhU5IRAPIj3krXFC
         5xSPl+Y8r0siL2UbPMu7YtPc/xyXuGwhkmaRk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736332835; x=1736937635;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=otQaiwfcfIxPnojker7QiZMGmF9nQnUe5Nyxn+40sCE=;
        b=Epimg1s7HprH0hMKTpN0DkAA4xMMZd/HQfWy0FLiNT5kJf3Yn8r55mV4ic2lUJbgS/
         eYZNeJ4d3YapXhtbBks5kD5/iK/9dILw6N7ZgnXCWeibthlQCy0tGpg9qhtn65vfOXmu
         g2/ehvE5PqwLAleGPH+ziCZ7yWE0LJLxx4bGYidrMTMGyoVLid8wqHc4hal/SCMuFC4V
         Y5VRU/1E2tBmoB/x0NPZ7d1OXoIV+Zm0L8n4+bPc1lPFyQobjb6g3K8Blq3Avbjl321L
         DYKdbrWqcqd3qptQV2EMX7GwlPO7cKitnT41YnaHJ5BWFxLM0FkyTncsOSBWxg2lgmTi
         SAqg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUXS0amKtcIR5+voVrO1z17pih99KDNVWw6VQbHu8Apsf0bj+qhwABvFOLzWY+MuqpH4u+z0A==@lfdr.de
X-Gm-Message-State: AOJu0YwKK436Ew+0GYuBb/1SV8+fxEZJt4iZ/MU41A+Axxtkm+VGGgPf
	UEMTNguj5kkVDydVcS61GdTbAtXW+I+g5bFWn52RKGV2mCsOv88J0Dy70FSuDOI=
X-Google-Smtp-Source: AGHT+IFpPQlU989nPub/6e+RZJ0jbf47dp4NDwGwCNZPCzTTvqh00MhvjCVoGfjtCXhHWj13yxV5Aw==
X-Received: by 2002:a05:6e02:260e:b0:3a7:be5c:1422 with SMTP id e9e14a558f8ab-3ce3a8d2451mr5305005ab.3.1736332835345;
        Wed, 08 Jan 2025 02:40:35 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6e02:1582:b0:3a7:cddb:8a40 with SMTP id
 e9e14a558f8ab-3c025f2d680ls12033865ab.1.-pod-prod-03-us; Wed, 08 Jan 2025
 02:40:34 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUCkWQ8S+fTy206yoIPJh2fFhMlvAUBHNNzs4fUVjJDl4PwpmQbIFioN3nWHI0M22maOeQDQJoHRW2cJg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6602:b88:b0:83a:b7c8:a3dc with SMTP id ca18e2360f4ac-84ce0037908mr205075739f.1.1736332834571;
        Wed, 08 Jan 2025 02:40:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736332834; cv=none;
        d=google.com; s=arc-20240605;
        b=SQ2ietwOmccYwfidiCd5dYu3iWomOBlK1zXjDb0g2wfE4DESTZBKNnraA1y6P6fKrz
         vLw5MskP7qgO5+FMf4vkRRhYPss+f0SR024PPxxyXzJY6dzSA3PrabyyQ8t+Q93WvKEg
         xCjctoqzb5CLVI4XJ3gQL2WAjYKbruQAaPi4M5D+k+zvcmNAbJihXmvKUNyVfCRWKng3
         8TkYJgyU/bXi1qv48swKMa5LMuhInspP3iNCY+sbC9AVTUt0o/bgMau4xPI76Umv7h+X
         hDcQFQgwQDhs39ziqNLpMDQFLQovqGOMves61suVHcrLZFvzb2XGnGymJJuQIhYhUx3u
         amOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=FGBmseaRn70oadM25K2yW+V13wFXPvE/hJMxeGOTtEk=;
        fh=qxJjebJ4kXQxwqDHz44qjxVnY49wm3hZvrgJ6gPRbXw=;
        b=HnRE22ja6fitn+jbARtSjE0dKsHibhg2c+T5yBEmrMz/l8RBlH5qPtzoZfIdFY+Y7Y
         w9RZ4ji2/6b0pjMcAavIvrqjmpT8BS84BmFUereQac6iFEcn3XKhxoJ7zRXlQ+wPwZsN
         CZ+TxrV76XagVa6b0PfIZrsgpVrW+CsY5+SQU1chAVW2i3IDyrSCWRCUly/EEXUekJsx
         BQDP1Os1gYdyxPpiMmLRMGgoKZ1KsmExHKaC7lZm1H3Gg/O4rUNYLnAXVrYKAyHWrtY7
         Q7N2Je/R5KWTTI78Wf805FcjJuOdkkYM/1cnr4xM/D6CDkYJedzA0JZILeb5rKYFgy3D
         MEkg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=eedauRcu;
       spf=pass (google.com: domain of ming.lei@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=ming.lei@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.129.124])
        by mx.google.com with ESMTPS id ca18e2360f4ac-8498d8c9e3asi2024948139f.99.2025.01.08.02.40.34
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 02:40:34 -0800 (PST)
Received-SPF: pass (google.com: domain of ming.lei@redhat.com designates 170.10.129.124 as permitted sender) client-ip=170.10.129.124;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-447-Pe9XkdCQNzaj77ggO4HxXg-1; Wed,
 08 Jan 2025 05:40:28 -0500
X-MC-Unique: Pe9XkdCQNzaj77ggO4HxXg-1
X-Mimecast-MFC-AGG-ID: Pe9XkdCQNzaj77ggO4HxXg
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3B89D1956059;
	Wed,  8 Jan 2025 10:40:27 +0000 (UTC)
Received: from fedora (unknown [10.72.116.74])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 607071956053;
	Wed,  8 Jan 2025 10:40:20 +0000 (UTC)
Date: Wed, 8 Jan 2025 18:40:15 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Christoph Hellwig <hch@lst.de>
Cc: Jens Axboe <axboe@kernel.dk>, Damien Le Moal <dlemoal@kernel.org>,
	Nilay Shroff <nilay@linux.ibm.com>, linux-block@vger.kernel.org,
	linux-nvme@lists.infradead.org, nbd@other.debian.org,
	linux-scsi@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH 07/10] nbd: fix queue freeze vs limits lock order
Message-ID: <Z35WD6VcPJSMiQpN@fedora>
References: <20250108092520.1325324-1-hch@lst.de>
 <20250108092520.1325324-8-hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20250108092520.1325324-8-hch@lst.de>
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Original-Sender: ming.lei@redhat.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=eedauRcu;
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

On Wed, Jan 08, 2025 at 10:25:04AM +0100, Christoph Hellwig wrote:
> Match the locking order used by the core block code by only freezing
> the queue after taking the limits lock using the
> queue_limits_commit_update_frozen helper.
> 
> This also allows removes the need for the separate __nbd_set_size helper,
> so remove it.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
> Reviewed-by: Nilay Shroff <nilay@linux.ibm.com>

Reviewed-by: Ming Lei <ming.lei@redhat.com>

Thanks, 
Ming

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/Z35WD6VcPJSMiQpN%40fedora.
