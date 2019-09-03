Return-Path: <usb-storage+bncBDUNBGN3R4KRB2GQXDVQKGQEBUQOUUY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x645.google.com (mail-pl1-x645.google.com [IPv6:2607:f8b0:4864:20::645])
	by mail.lfdr.de (Postfix) with ESMTPS id 879B9A6430
	for <lists+usb-storage@lfdr.de>; Tue,  3 Sep 2019 10:46:33 +0200 (CEST)
Received: by mail-pl1-x645.google.com with SMTP id b68sf9418226plb.1
        for <lists+usb-storage@lfdr.de>; Tue, 03 Sep 2019 01:46:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567500392; cv=pass;
        d=google.com; s=arc-20160816;
        b=DzmBE93nQ0Hdh0IEioYTDo+29YpfGDfT8MWayNln6eBPihz0O0b+dst/9AimRGlY6R
         49VFM/g82O4iUyjklmIsJ2Lsy3vCLFVj6KaBz4e13XtAnUqKeTtKA801BHvkHYTXFHT8
         ABp8F9QJWqg6oNU/yj5ETvu2bQtsvZX7tCSKp53WdEsCynmLThs452pdaxDKjt6c6wXw
         cTvsjUjT+S9ZJsd/V9lJqdlRmVORw5jTuDh7snAVfOrTGMt++qwje35tP6+VMLZZ75M4
         xL9hzA4TCUgVZO4gdt6cWjUolAWMDHBcScJnigvJy12v1vRsdXf5EGs27QZ1fJIOD2tW
         UvAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=iuP4eDW3rZTzaM9GyDpADFu6HaY0XiaLJIUgvF3a8qk=;
        b=sKIQKmCz1YZe4WGS6iC4z1SKYg/1vY+3MTc+PVzZhcysjgNyMQzEqTlZzgggEU4qxh
         W2eqggNWKA6EiwVRZ5tCAs902DIEpCJmYDN10GLx9Px64RuzEkVo+i80yBwIyOKQbBRl
         mquofone7RZl/RseK02DYey76iqCTrkAShV43YJagwJZ7uUSodzj03E5+sxVXDwDkSGZ
         2WZOrdSMxF2CrEan8GNsDrGP9NLtw3ANbCKZi6VqxE/QY/RBIlgdqITmNByEtMHGyR7O
         BkEptLgbgroDgjEMlFQvhzXhS9ieUJtVYmSeQaN9MdSbmbc0osrzQk5HZUKcwFn0Eb78
         jN9A==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=XSS6rWr6;
       spf=pass (google.com: best guess record for domain of batv+680e2818d6643897e706+5854+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+680e2818d6643897e706+5854+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iuP4eDW3rZTzaM9GyDpADFu6HaY0XiaLJIUgvF3a8qk=;
        b=hUaNCwDJCvbTIBKhR4PjZOvXN7Fm2dePFi82ofpk8gIrkhntv/naqtAl4GOMPmMsfi
         Ds9keXlwnxFc19quvj6jYXyGzAxAdMSt8/vRdxqX3ARNrKSiRzEhzyMzlATQw70KvE8S
         bQKaJ2vMmLFJTTqtaToBwurxNoK3IqsSGs/6M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iuP4eDW3rZTzaM9GyDpADFu6HaY0XiaLJIUgvF3a8qk=;
        b=qL+7oMGTTVshErSTNJ6AA8WOgKIPzwQTixUFXAgQQ4sawHcQvXLy0su6+ZQyMZKnKO
         VGW1E5JHPxSOu9Oo/6Vrsq4YOs2bIoUcs+9eS23mpfY59oObDkE3C/s9h2I8JHU3jVO6
         ipAQm8/C2U51SOXMM0/5YsIwIzxuCHPwxK+BAIfakDNEF2LcdGYMhGteRsWaji/c5gS/
         8LaMpnab5+XOiGeC3SgVjW73Qp2mlRL3TooX4eL8oxMZdm+SiuzCxQWCjX92WkbWNhcH
         cPvMvSK1cMAK8pyi7IAothvVp4Gaf9YroekFVl/uws35R/7KQktiY9iQIrjxrQV4dMl7
         Anbg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAWHRQTkeCO5mQM09dIwcH4rWv0gfpTL4eah+o6fhB9CTks57Psz
	vJE97Hs5davvn7J4GzVZn9pFyA==
X-Google-Smtp-Source: APXvYqyll3EMw8jn97QSzGnAsj0RBJx/7lOqxc3anOwf+HaOeN98NV7Qp+tORsRYbkUfFN+dWoNDCQ==
X-Received: by 2002:a17:902:bb91:: with SMTP id m17mr1690014pls.202.1567500392276;
        Tue, 03 Sep 2019 01:46:32 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a62:3886:: with SMTP id f128ls5579550pfa.8.gmail; Tue, 03
 Sep 2019 01:46:31 -0700 (PDT)
X-Received: by 2002:a63:5951:: with SMTP id j17mr28975493pgm.143.1567500391783;
        Tue, 03 Sep 2019 01:46:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567500391; cv=none;
        d=google.com; s=arc-20160816;
        b=JN3dr6uYEjMcZUWXtGP2rf0/L6P3VXXrbASCyD1vbNtgEb4u1Js9nB5M4DIKVl6Pkq
         np1FVRvbpsNMTbyfEMZCAibP/lSJYKoDPMdw9nH4EcFKjcvCnkLFRWd9jhePog0rZsZ8
         uWBhgDnqkA7YDQIo7WPoSqkiZ4gx4gC966MqMgij5tlNoEBlmbuf4UUBGpR+O3+bj/On
         OcnA86SlNtO8uhzK2mZeZ09FAlxa+aMxyUMXMCFIp7L6J+cuPkcbASqLjjtiVwDODIn9
         DJ+fwIkEPpquRpytXnpOk6plB1AeWdjguuFURPUqKuDt8IelEpqCmZInSvPpzhYfAe4w
         51nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=4qtLPZ/aSLTeJY+KOJz9u948G4Y31mDFg0mnKh+tgA0=;
        b=FwAOfVF1aDkIF5PG0cNOhWTNyMx7kZ/W9kjwT/fCyjXLgw2MtH8Z5EqHI7AflWPqtj
         GJBKrte58svKyjND3gu3j8BrZd6lcDFq28GlgDT5L9s/1r854qfqIZiOMHJ3L7PzkI1c
         wXFjKdus8hhcEVMrzPkQxwIcOkGYH/o63Vr9BxRRS+9vbIlRSF24KUnmbrq/X+IOttL2
         I5UU8OfJR2YnW6e9WCsdUmJBVDV3zn1RIAPAbOV5/x5PL5ZDcbHWKla2MDVCSBjdYcSm
         EnAy2Ki5j/lpHmcPIfHtbOQnH8D9wHXqYtPRTpVgJGs50Aqf+6VOLlHeXLWxfrFqKdDh
         LBdg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=XSS6rWr6;
       spf=pass (google.com: best guess record for domain of batv+680e2818d6643897e706+5854+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+680e2818d6643897e706+5854+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by mx.google.com with ESMTPS id i13si12536599pfq.54.2019.09.03.01.46.31
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Sep 2019 01:46:31 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of batv+680e2818d6643897e706+5854+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from clnet-p19-102.ikbnet.co.at ([83.175.77.102] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
	id 1i54SJ-0003s6-Rj; Tue, 03 Sep 2019 08:46:28 +0000
From: Christoph Hellwig <hch@lst.de>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Lee Jones <lee.jones@linaro.org>
Cc: Alan Stern <stern@rowland.harvard.edu>,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] [PATCH 4/6] usb: remove a stale comment in hcd_alloc_coherent
Date: Tue,  3 Sep 2019 10:46:13 +0200
Message-Id: <20190903084615.19161-5-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190903084615.19161-1-hch@lst.de>
References: <20190903084615.19161-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=XSS6rWr6;
       spf=pass (google.com: best guess record for domain of
 batv+680e2818d6643897e706+5854+infradead.org+hch@bombadil.srs.infradead.org
 designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+680e2818d6643897e706+5854+infradead.org+hch@bombadil.srs.infradead.org
Content-Type: text/plain; charset="UTF-8"
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

Now that we have the local memory pool implemented there is no
need to use dma_declare_coherent_memory.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/usb/core/hcd.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/usb/core/hcd.c b/drivers/usb/core/hcd.c
index add2af4af766..4ccfc8e59604 100644
--- a/drivers/usb/core/hcd.c
+++ b/drivers/usb/core/hcd.c
@@ -1249,9 +1249,6 @@ EXPORT_SYMBOL_GPL(usb_hcd_unlink_urb_from_ep);
  * To support host controllers with limited dma capabilities we provide dma
  * bounce buffers. This feature can be enabled by initializing
  * hcd->localmem_pool using usb_hcd_setup_local_mem().
- * For this to work properly the host controller code must first use the
- * function dma_declare_coherent_memory() to point out which memory area
- * that should be used for dma allocations.
  *
  * The initialized hcd->localmem_pool then tells the usb code to allocate all
  * data for dma using the genalloc API.
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190903084615.19161-5-hch%40lst.de.
