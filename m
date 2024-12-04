Return-Path: <usb-storage+bncBCZNB4MJSMHRBWVQYG5AMGQEGMR3IYI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x47.google.com (mail-oa1-x47.google.com [IPv6:2001:4860:4864:20::47])
	by mail.lfdr.de (Postfix) with ESMTPS id C49629E3B3A
	for <lists+usb-storage@lfdr.de>; Wed,  4 Dec 2024 14:25:47 +0100 (CET)
Received: by mail-oa1-x47.google.com with SMTP id 586e51a60fabf-29e4bc1c35asf4996741fac.1
        for <lists+usb-storage@lfdr.de>; Wed, 04 Dec 2024 05:25:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1733318746; cv=pass;
        d=google.com; s=arc-20240605;
        b=OQBLwHUqfJRkpayNnvWgDFTLbwNlkobEjilvMZIg3JMjebwoxcUqfs6BJS8AX+XaTO
         fGpJuYrAJmkOrR17DUX/jEw03lu4c3Xhxr+hAtZdwC5LhbyVD7EboEgncNrIywtUltRI
         Ff6BNfqxLdQpCptM9LvCiqD+StoZoZiaH605TNZ41nswDbMSnj1RPTBcClfJ2Y0J6RoT
         XTczk6nWTDFOBpOG/tZALbJGzeLyWvkSkRT4zvhxBQeQV9nkYG0talvipaWDaJ7IOq6h
         x9GgV4YG1Brxzr26iZ8Q8Qs3/ADmHQ4bcWnGmQOkwoL1UPi85ZnUgLtyGHyXasVZMOpR
         p15g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=pM5lvT9t6b69X05uyRXRofN6Mni+A/xxR1dCCsjyfQo=;
        fh=DtMBiQb765sKu+xzTL6uDlCl9bRDGRneqep5LInSBfg=;
        b=aH8CRPZCMmrnhP9rb41UvrsZY024HqO5mPT1AelD+v69BPZe2hrl0lDK/cjosQkggC
         EvM74znskbiy6j/apavoQd+Zcm+bQYyoo77QhY5zPy9KI5uj3AocR1ymJc3zgcQ+M9en
         3+Pt6rTnRC9Hmx6HkRsm8jYhjgjC5w395Ngn5fc3E17Zoek6BLOW61yFPTaGbg25epKH
         3eoD3xQd+drrPMKh8CmPC6kfIYPusPsBvH+SELYESbZJTiJb+xn08RGwWtIR3u2UGxZ4
         bUuH/gTBWZ7c+rGgzS3ao8IAOogl4mnbcI/CkzI4E/sM8Zst36RG0/ptN8Ok35ODJncu
         Zjfg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=KRJEgfaD;
       spf=pass (google.com: domain of ming.lei@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=ming.lei@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1733318746; x=1733923546; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pM5lvT9t6b69X05uyRXRofN6Mni+A/xxR1dCCsjyfQo=;
        b=DUXqY/0mxpJ+qnsQCml5pH+OxJEZ9gTnjXXjyySfQ2EguJxPv7839c5pMkaSFOr7Hv
         JY89T4Ny6wBzneAOlE1ZUWm0+JRaxXGNG+PhyGOGBgp4ynyvGqhXH2DaW+rpSHsSoEeK
         wYKgkEnvihCBByYnOgerJ+5Z0wsSHEIrFbUFs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733318746; x=1733923546;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pM5lvT9t6b69X05uyRXRofN6Mni+A/xxR1dCCsjyfQo=;
        b=lFik3u9i267cKW+VhvPBGAw8XDVpTMSYBoCs+cn7HIyVolc+QguY1tOJMiXnuf+/Ej
         Ou7dlm1ZPecZP7HClCyzxkBG+5ENyghgijssu/uwTaOIiSTunZtD3HD9D/o0hZ8AFvmP
         /ZwdrXw/uscyBPoiw1tbEki0G9Wo2IHlmpK8qAIXhTxLS9XiRuNTzndrJqz4Hx9SG3pv
         +EvNU6/IhKmSip5Gg7EjHOas+lt4Zunp2HeO6oxZG31YnY1/KGxdOuTzzPSnT5vfZm5+
         1a8FjRX3Gp2OhxrLQQ/um3yUJsLjAPK/VT1qEUgVtKUKImp5NU5UjSK09R63wCWe8ZcW
         krQQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCX4Gx6GobyEbv0MVgaOde4BkuRHzjvm/15nvPMY1V37w/PYG+mUCTYPYv49Kon3qwEFwp/+dQ==@lfdr.de
X-Gm-Message-State: AOJu0Yw8OXe+MtOx6BkQTwKQq45fQNqcgELtMwjgxbEhy++j5r2fw3Ry
	x4DPgD9XSqJNrQBSKVjm4UzLcIZWNugoTQOcq575CMYlxfnW19jsUilFXsTQWB0=
X-Google-Smtp-Source: AGHT+IE12xYmCZUjYyewcqwQ+kPUgj0ks7ueQ9LlgRXA3woxLC1ti5l6DfWPfIRWzuElJx+MDxT8zA==
X-Received: by 2002:a05:6870:bac4:b0:29e:7a09:d92a with SMTP id 586e51a60fabf-29e885418cbmr7095744fac.5.1733318746603;
        Wed, 04 Dec 2024 05:25:46 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:760c:b0:29e:6afb:2c12 with SMTP id
 586e51a60fabf-29e6afb2fbals283401fac.2.-pod-prod-09-us; Wed, 04 Dec 2024
 05:25:46 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXSNKuK826GxUWIBkXbf+xWKmi6lMwlPhTvNVbbxEsNbd0hEs6wJDHwx+Y/GHT8MbMoZxFq2o9DM1UI/Q==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6808:14d1:b0:3e7:bcab:8f0d with SMTP id 5614622812f47-3eae4f87ef6mr8889605b6e.24.1733318746082;
        Wed, 04 Dec 2024 05:25:46 -0800 (PST)
Received: by 2002:aca:1304:0:b0:3e7:b3cb:fd2d with SMTP id 5614622812f47-3eaf25767b3msb6e;
        Wed, 4 Dec 2024 04:15:05 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVo/HENQ5xOlwrUAbRoAuEHIrs6VF3r3h8Xdgb0TS3B8UXynLKCnTl3+YKqS/9bqwdrAOxTzvCz6VvqAw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6808:1404:b0:3e7:bd00:bac6 with SMTP id 5614622812f47-3eae5058d9bmr7361651b6e.30.1733314504477;
        Wed, 04 Dec 2024 04:15:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1733314504; cv=none;
        d=google.com; s=arc-20240605;
        b=Ef1KH/zlVHaxdaPNZwaV9tyaT8h1UXojcHaMoFNg/lFVBJAkaFJsN4Jw/NChHfLWic
         krFYPbIR5GoJx3uvyT13mPfz23G7+WvK6sxomuA+gWQPiORDar9g9DR9dRbdf8A1J7fR
         KU4P9T30VbYPn/7YC5PGQYmNY0Dv6Y9v29eu7VQomMQ4mIYCQz6ub/Bu+aSgu1qg5i52
         I/VzXddldHX4Dqeqrn0VGxEPAdZ7HDUiQoH2fH4UyqyeL7r+Xknt9qztXvryNX8yHf05
         RQAdG5MkQN9dCf0e+B3Wq6SVHhaIwh+e0xGXCkOE5T4Rff22f8JTaZG/nZadJBkoia3l
         X7Bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=lx+GC+/nemnWHzZ45M7hMXvsnmVcB+AgrZQMoaW8xeQ=;
        fh=KlA0UosHvgDNsSiDLC1uG+mWTl9BYHIePjaiEPIZ4FY=;
        b=Ka6Lr0SG3g151eO6F5J8lsmCAEQwMZxgn9dhZ/NCyvQrX2fYZOv9+sV64puCf0RpB+
         TsIDY0ewwX1nqC2YRiI7rJ0FpUlLd/tW2EvqmAhcoPi0+7mptrNbT6ZNPHviKxa0B7eG
         aPfFMNtFTqCaYBxMj636ooE5oQsluj4949w+Cy0Ra5Aa3PtZDZVMVQjltYCFxfF8Qf7J
         hOL7EZdx6rdk1xS/bZUo+xwqJ2GTrotkrGdwKtLkoEbUAWHbr6OyzM73XL99qAJHkLnK
         85w3HomAZYG+0wkWQKoEySnZkzOh/Cm4H0Rqx7pY1oy/LbDgCuf9+ftYnzNSCSdAhW+I
         3rJA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=KRJEgfaD;
       spf=pass (google.com: domain of ming.lei@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=ming.lei@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.129.124])
        by mx.google.com with ESMTPS id 6a1803df08f44-6d8b54afbfdsi44006806d6.392.2024.12.04.04.15.04
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2024 04:15:04 -0800 (PST)
Received-SPF: pass (google.com: domain of ming.lei@redhat.com designates 170.10.129.124 as permitted sender) client-ip=170.10.129.124;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-659-mlVSwX70PT69VKblSRyVwg-1; Wed,
 04 Dec 2024 07:15:00 -0500
X-MC-Unique: mlVSwX70PT69VKblSRyVwg-1
X-Mimecast-MFC-AGG-ID: mlVSwX70PT69VKblSRyVwg
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id AFDBA1955F4A;
	Wed,  4 Dec 2024 12:14:58 +0000 (UTC)
Received: from fedora (unknown [10.72.112.144])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C41B41956048;
	Wed,  4 Dec 2024 12:14:52 +0000 (UTC)
Date: Wed, 4 Dec 2024 20:14:47 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Johan Hovold <johan@kernel.org>
Cc: Jens Axboe <axboe@kernel.dk>, Christoph Hellwig <hch@lst.de>,
	Alan Stern <stern@rowland.harvard.edu>, linux-block@vger.kernel.org,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org, regressions@lists.linux.dev
Subject: [usb-storage] Re: Lockdep splat on UMS disconnect (6.13-rc1)
Message-ID: <Z1BHt0lqYDIm3nXH@fedora>
References: <Z1A8fai9_fQFhs1s@hovoldconsulting.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <Z1A8fai9_fQFhs1s@hovoldconsulting.com>
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Original-Sender: ming.lei@redhat.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=KRJEgfaD;
       spf=pass (google.com: domain of ming.lei@redhat.com designates
 170.10.129.124 as permitted sender) smtp.mailfrom=ming.lei@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
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

On Wed, Dec 04, 2024 at 12:26:53PM +0100, Johan Hovold wrote:
> Hi,
> 
> I'm seeing a new lockdep splat with 6.13-rc1 on resume after having
> disconnected a USB mass storage device while suspended. This does not
> seem to show up with 6.12.
> 
> On one attempt to reproduce this with a ThinkPad T14s, the NVMe was
> hosed after resume as well so I fear that this is not just about missing
> annotation.
> 
> I don't have time to look into this myself right now so I'm reporting in
> the hope that someone familiar with these paths would be able to
> pinpoint any potential regression without too much effort.
> 

The dependency between lock(&q->q_usage_counter(queue)#3) and lock(&q->limits_lock)
is real trouble.

The real deadlock was reported before:

https://lore.kernel.org/linux-scsi/ZxG38G9BuFdBpBHZ@fedora/

And the warning can be triggered by the following command too:

	echo 'none' > /sys/block/sda/queue/write_cache


Thanks,
Ming

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/Z1BHt0lqYDIm3nXH%40fedora.
