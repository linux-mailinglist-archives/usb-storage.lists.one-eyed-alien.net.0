Return-Path: <usb-storage+bncBCZNB4MJSMHRBIUC6S5QMGQEOQT46TI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf46.google.com (mail-qv1-xf46.google.com [IPv6:2607:f8b0:4864:20::f46])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A9D9A03C4A
	for <lists+usb-storage@lfdr.de>; Tue,  7 Jan 2025 11:25:40 +0100 (CET)
Received: by mail-qv1-xf46.google.com with SMTP id 6a1803df08f44-6dcf01612f0sf201327296d6.3
        for <lists+usb-storage@lfdr.de>; Tue, 07 Jan 2025 02:25:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736245539; cv=pass;
        d=google.com; s=arc-20240605;
        b=IqPRqqK9W3HmItcdhLwKe7qgKAfwW/b3DPHib7471I1KxZwW/HcGxZYrclJ/oiUdo9
         lMHELf45Z8IhR+mUpkx6OPMF+Wa21CWOdsmlaRCIlXY4mg16hWbJmN+zd1Yf0j1z79mH
         bCbcAJt2otbcOyV3HnlHAk5ig4mpF+DSNXoVngfyvUYjU6IkKZ/P/2NVuiu7nChX2/bD
         8TCXA7p/iH5/v0RFFtL5iJicTHUG9sV/quDcbdmf9Hhk8zR/KhVqKc2k0LG6nGHTpAE0
         f+DQuFrehSgAir0dcheluMtjE22hmloL8swg97E10WWZHntjGr+cZa1yiHdBcyzXoYrZ
         eZcw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=AdO6brXbvbrj3lTfMzbkFmpo7VkkNW/8kFzJsgt1MS8=;
        fh=4IqVPScfBtz+ca08SN9k2TUpJSbZqievnRBFRsPWEUg=;
        b=VSNLKOFv/NLPAsP+s1nPU6NcSRp1bSCK79a4MGgvKZh10X70F96WLo7GPOb2gqzY2q
         e80nY2egdAOp8Ck1ZY/dl8C90XxHGpf9o9fg0TPgXmgte8+wg+fKurE6lodFfJsRyy1e
         9/IAGjCqo3KPTLliGpHbZ5jPHxq3NCGbSow7yv+i4ncsASErg2+m2g3UN0WRwQaWOsxc
         Xc1REHC39mCL1/TSUUub0lINzrHpQiAVaUdarXp4ry4ArG4Hr1eiK41Hras8g4eLjHKj
         FWLavd8ZrVvrAojykihIxA7eLMk3yKQwYbaOjKo04vhAKPGK0Jn81rFMQwRuPXVnR9pO
         SqTQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ZeizxcTc;
       spf=pass (google.com: domain of ming.lei@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=ming.lei@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736245539; x=1736850339; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AdO6brXbvbrj3lTfMzbkFmpo7VkkNW/8kFzJsgt1MS8=;
        b=KRzTKi1kH1P1D7hES6s0Iy7ua6jWA/pHn6jvOjbO20k+xxJ80UfLJ6xrddgUE+2LrO
         IKYRKkhYAnSEtfRdk+/LjSy+/VsbxcaTHcIaVyiSa5lUdyudIS8LN/hsmjpxpoQRtDTc
         a7VTdOpVkf46e8XFer9xPhHhLwYTwLsIAOYq4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736245539; x=1736850339;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AdO6brXbvbrj3lTfMzbkFmpo7VkkNW/8kFzJsgt1MS8=;
        b=WeM/ckd6ij0QYMaeZVmppZsrKTMi5uK/hOAx+vwTiIT7CiCWI9ybORJySUh1Uqpj6J
         eNf8T9C6vRKYOGtSXUuEJfg69JjvZ/f3ZzXJKSaNAdSlDKX9T8GxPH0hgU9LiGME/1r8
         /a07QIrFbIEVcD5FVk5ySAbvHRM52CGnnbmiwdFTv4MH696jZzC/prYm6yKgSXY90959
         8Bj/7YPUUlTlaSrJrkfAcICJjFCr4Kuwqi5pbJID7WMKWvXoMyVLsbE52uWoa3K+RDMI
         ePI4xPT9ufcmb+OvIGmX7NeUap//zETxPySttNrJjD1H/LkSSsDNWquU4O0PPHiS1biJ
         UY5w==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVuf8/xYHe0iSMzfuWBfjFdN5dXuOWrdQ1GbiRC5/O0L3lB+q/AqBRvx59xuS6zCUGxWMXYGg==@lfdr.de
X-Gm-Message-State: AOJu0YwwnrsUEt4FGT6Yn+EdSwMcxaHB3ugzx+Hwe9TlpKymI98xxk/2
	DcjeBe9bvdFVyT4Lxl+nFFUjeKxdKPbGkR3QCGfCC0uIz5WUpqWDlI79JVXd/gg=
X-Google-Smtp-Source: AGHT+IHWGcZ8xyMiYaYCrx+v+xqiuX4Xfj7BIIgy5qEUNez38nWe8spumZzFTwh3NRr/cac78vUP1Q==
X-Received: by 2002:a05:6214:e49:b0:6d4:c6d:17fe with SMTP id 6a1803df08f44-6dd23356037mr1141484526d6.25.1736245538871;
        Tue, 07 Jan 2025 02:25:38 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ad4:4d47:0:b0:6d9:188d:1886 with SMTP id 6a1803df08f44-6dd1549dde2ls99493716d6.2.-pod-prod-04-us;
 Tue, 07 Jan 2025 02:25:38 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWug+4YzT1JHVAy3hhPJEdyQskgqkU1d0Z9wXL/Woymhpt7HIzu8Nc0/NCdpauzbi9ptl2gZr5CEhDP3w==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6214:c46:b0:6d4:25c4:e775 with SMTP id 6a1803df08f44-6dd233373fcmr891009806d6.15.1736245538067;
        Tue, 07 Jan 2025 02:25:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736245538; cv=none;
        d=google.com; s=arc-20240605;
        b=KnM/YWoVqnCGNFMvwIs8zbRf3lAqu+QG2al8zeyg4jNBmlZPBMiXVpGGMzlm4LX5zE
         OiScWcSHze/dRmGkRyZ7ckR8Dctg/udrZUO064a0g6CNZhydkUCXWCgRty+dZF5tBfJm
         JAP2fQhZ+chaiTn+LMcDpofd/yZF9XdbRIXKd1Ep9K/C00av5AS7JBJq7Rupf1V9D8a/
         BSxxwMh0K57p2TOJOWL4gt+gqojaKgHdK9VA3spPkeCg8EVtFPJrOAnnhNMbzf7GLxBn
         7L0Q8jlbVR5lU7w+JB2CWS9OB3t5fKNZNqVaINLpBXe4kh7/eTkaaYzaMvrd4gL3UeJY
         CZhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=g+kgv40Nv3jmk18aQH5jxbGFwIkI3jfpro4OOu8qIeE=;
        fh=9gFNvKytXmf3oYaY+aR5vmQD+C4GFDT8FBEucb0J47g=;
        b=fQP54Yh2FKVajYHq+v3vyYQ/STF9IzjE4k8M+6HzOLsLhl6PwuXdZHLCfiRGIhPgfI
         iXA0mxAihZfitBNBuSoNV6unmIW4IvlCP/blxz/k4I0ZdrCSL7hWcgHZINuKoCqBLHDj
         vlzVDDVaO+rb7pqFb2cwgZF1SMnjBuBYBPtbm/yTNRYNXQVZDnLmJ4hwGsRaC3gE8ic9
         c1BLLhlfNH/WQ3nHsKw0oMqm4Cs/LEekOG6ITs/WwdBHbaPfLkkqcobmtIAkxo/ILNOQ
         wxSwPCOhzHMB6TitXfWLYW7VEKkcGDNLaWt3r4KWxsoVTDMQkomThqCGjjVCy97kpC+y
         8qdA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ZeizxcTc;
       spf=pass (google.com: domain of ming.lei@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=ming.lei@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by mx.google.com with ESMTPS id 6a1803df08f44-6dd182364ffsi451661426d6.269.2025.01.07.02.25.37
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jan 2025 02:25:38 -0800 (PST)
Received-SPF: pass (google.com: domain of ming.lei@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-580-w5dnKRt2PPm84kKWsCv9qg-1; Tue,
 07 Jan 2025 05:25:36 -0500
X-MC-Unique: w5dnKRt2PPm84kKWsCv9qg-1
X-Mimecast-MFC-AGG-ID: w5dnKRt2PPm84kKWsCv9qg
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A16BB19560A3;
	Tue,  7 Jan 2025 10:25:32 +0000 (UTC)
Received: from fedora (unknown [10.72.116.66])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 318F5195605F;
	Tue,  7 Jan 2025 10:25:25 +0000 (UTC)
Date: Tue, 7 Jan 2025 18:25:20 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Nilay Shroff <nilay@linux.ibm.com>
Cc: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>,
	Damien Le Moal <dlemoal@kernel.org>, linux-block@vger.kernel.org,
	linux-nvme@lists.infradead.org, nbd@other.debian.org,
	linux-scsi@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH 4/8] block: add a store_limit operations for
 sysfs entries
Message-ID: <Z30AsQq89_lcstNl@fedora>
References: <20250107063120.1011593-1-hch@lst.de>
 <20250107063120.1011593-5-hch@lst.de>
 <Z3zXANbFk6GBZg_z@fedora>
 <ae6b7727-64d6-4d9e-9bf5-951e38d8a768@linux.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <ae6b7727-64d6-4d9e-9bf5-951e38d8a768@linux.ibm.com>
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Original-Sender: ming.lei@redhat.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=ZeizxcTc;
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

On Tue, Jan 07, 2025 at 01:21:14PM +0530, Nilay Shroff wrote:
> 
> 
> On 1/7/25 12:55 PM, Ming Lei wrote:
> > On Tue, Jan 07, 2025 at 07:30:36AM +0100, Christoph Hellwig wrote:
> >> De-duplicate the code for updating queue limits by adding a store_limit
> >> method that allows having common code handle the actual queue limits
> >> update.
> >>
> >> Note that this is a pure refactoring patch and does not address the
> >> existing freeze vs limits lock order problem in the refactored code,
> >> which will be addressed next.
> >>
> >> Signed-off-by: Christoph Hellwig <hch@lst.de>

...

> > Order between freeze and ->sysfs_lock is changed, and it may cause new
> > lockdep warning because we may freeze queue first before acquiring
> > ->sysfs_lock in del_gendisk().
> > 
> On contrary, in elevator_disable() and elevator_switch() we acquire 
> ->sysfs_lock first before freezing the queue. I think this is a mess and 
> we need to fix ordering. We need to decide ordering rules. IMO, the 
> correct order should be to acquire ->sysfs_lock before freezing queue. 
> Likewise with this patch now we acquire ->limits_lock before freezing the 
> queue.

__blk_mq_update_nr_hw_queues() freezes queue before acquiring ->syfs_lock too.

So yes, it is a mess wrt. order between ->sysfs_lock and freezing queue.


Thanks,
Ming

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/Z30AsQq89_lcstNl%40fedora.
