Return-Path: <usb-storage+bncBDUNBGN3R4KRBZOQXDVQKGQEWM5KN3I@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x447.google.com (mail-pf1-x447.google.com [IPv6:2607:f8b0:4864:20::447])
	by mail.lfdr.de (Postfix) with ESMTPS id D33D3A642F
	for <lists+usb-storage@lfdr.de>; Tue,  3 Sep 2019 10:46:30 +0200 (CEST)
Received: by mail-pf1-x447.google.com with SMTP id g15sf7482233pfb.8
        for <lists+usb-storage@lfdr.de>; Tue, 03 Sep 2019 01:46:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567500389; cv=pass;
        d=google.com; s=arc-20160816;
        b=DsfeAEP7C20sLTyX0IZyJwrIiqP0NJA2smYwZi/bmNcnqJysG+qDkJhe8nPSArj4uX
         +g5+PaNS+IzKnfrmcs2zrTvfy0KKX9Q0XH5WRnWk7ezekcY5QqzV9BBMDh56C8FMP+Tt
         KZM9GDbMuRfWgQoFRjVnMesSbnmrFTupzm3xoWdQIYxRY+HqPv48fWoLqupz6l07MxDP
         +IZ7QHGxKU9RaXJpR7zZ+S8lLUVlT+cx2jSQIVXWKNc69LkFkpUjrRDJ0qNhRUOd9qm6
         WLZtg6eY5y2gSmY7FJ3C+yZLHC+2BflS7wrImS2PRRXrcMQ0E1AONh7sU7TFzxBrF0Pi
         88TQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=4/RAHvlQHCosKf7KW+qMh4opUbr7R2Sl+pE9g5M29mA=;
        b=i4xs+LxaBxHV3HQQ4S3ROcyxwKEk56h0IeVMmtsddlSXEDELvp5/My/Ama44Y1/vL+
         1GW1emYT+Kd5mDQ9JRVJU2onyNK1NBEHYdGCxVdy/LvO3XoAKAA5yF09/mSeB6Kiys+Q
         hNohzZuABf0pzJ2oZCB23tq16XfzK+5eBNzW4xcoD7e1QlG/kjwl11r+96mz/ox0ZLl5
         F+fAnuP2uBPkLAMfFmDXEQOCTMCyZQRRH2k2jie+4N8M5yjVJiiGgJhwNwqdlvb60V6g
         eENPgKRgiBKnCoenUsm0unJGZIIJA1/OtQQmT9QLjBoFbv+KrrvcsBNSNBVIakrkENvz
         mUsg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=urmie0jp;
       spf=pass (google.com: best guess record for domain of batv+680e2818d6643897e706+5854+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+680e2818d6643897e706+5854+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4/RAHvlQHCosKf7KW+qMh4opUbr7R2Sl+pE9g5M29mA=;
        b=CfUsOzNYLLkOsnf8tN9C+n4Q4xiLr2LANNikWpSjZjjGKhhBBTqvyKXOUhTyiKGg0X
         WkhcgvWEkdORsB3e+ajD0qQQPVuH3AkfIi+jy1r0u2iQE36WKun0gm9n/2uTMWgkwOlf
         74lPZJdqYBzHar7EY98PAQGHSorjtF5MDD9Cw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4/RAHvlQHCosKf7KW+qMh4opUbr7R2Sl+pE9g5M29mA=;
        b=awslfq8JuyMk6BIEKYGYhcXaYxAYYguSe3sDy+f7brH/Kr2qbNNm3ADHJpyLon63sV
         Y5f3zMCdFqAMOC9/t7pdzh5m9nnKQGj3fabenu7f9nQ5ov3qUhkEwXBpI1tHHe0XaSRA
         QdSCnE/DIKfPq2cy9lYhBUx9b+VWp/HkwlPiGCxhAUCPNVQy+ItPG7IMnnH7KotS/4RT
         ga22bN+rgLWARuIyHy6FCu3Mcp08X3Zu6/KxEM1AqjJtLSErMug/2PGbRlyuaQyN8ur7
         lDS5RqhNgbF8+dYZeGhfNFjTBGnSldZWIGYQIkHHWi6MgbwuzMVj4mwjvPDJX/cL5LJI
         knHA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAXVoY0AsV24wZ5p7bMu+3J/XtEjlA2EWnerO8swBaHPKt0KZTaQ
	E5n4+RQh0wfxR4wPJ4f8Q1SIgA==
X-Google-Smtp-Source: APXvYqzktqQV7GNC77gm+Bq8xIsGNwUQcPmTfGrGUZjSGTtIOMWhsFE5IMJuDNi1CmHmP7R9RY7NgQ==
X-Received: by 2002:a17:90a:9505:: with SMTP id t5mr11507626pjo.77.1567500389570;
        Tue, 03 Sep 2019 01:46:29 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a65:568d:: with SMTP id v13ls3851838pgs.4.gmail; Tue, 03 Sep
 2019 01:46:29 -0700 (PDT)
X-Received: by 2002:a65:6495:: with SMTP id e21mr29356109pgv.359.1567500388896;
        Tue, 03 Sep 2019 01:46:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567500388; cv=none;
        d=google.com; s=arc-20160816;
        b=lvh2+GlJTWBMblNH5mjv2ccYhJztm9X60dztEDXrjZp3OUyRDKhEnNFVBZ+GoaEA5R
         ZLCifOkk6839JaY6GlXXEpNXMYuJ+3+h4L1UN7QTGjKYVR9fr62DdAN8LCYAs8RmJcsu
         ja+IzYg6iheUdtroCocPoK03xDnkw2FuEa1cu4c0OUfidtwlwnWI+9YP3Iw9m/nKyUAG
         yvOeD167HoyXs08ad0CdS04j0d5QLnYm7tPo59N1Z7LnVIeIGmIniCmNSGf2PtxAMo+b
         iYt9hLR5dLHlY6UX5VZJsVl5Jfj5e3MTvceA7PuN0gqsYAnomjFeAIJK80vR/OjdKCp+
         2ltg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=WowrPXJWXwRHe/ZfVy1xduZ4nYQkuT9srIDr2fzdgQ0=;
        b=otCTKa7J6rUjNxNN6BIk7ufBcU1Ayt+hTSiX3KdzB2MoWkpmNMolZ9Xj1TeWPLtpZB
         R0oz4GVuYcWKpAA7f793sDbDjKN/0o5OTeCoTXynV/hoH5KUFg1dme9kOFbZa6LgMNrU
         38i4+Gb6+kgrPzKombvs3MXkS1r/o9UIJve+nGs1I9mLAw1MZfNRK25HfWKIWteB7XQL
         3Li1uLAqEGwI/vdbqXeyOaKARmKPglMza3GI+9J3BiQcpPyW3RvIYlLydWvfKGv9gWbs
         MG+vA7NYj+Gtpf2wSd8+7dGeyESVYeKVP3XvCWxhRSDLAUMJ4wJaslyS1dCyDrkOrM7O
         9ETg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=urmie0jp;
       spf=pass (google.com: best guess record for domain of batv+680e2818d6643897e706+5854+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+680e2818d6643897e706+5854+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by mx.google.com with ESMTPS id i69si13728987pge.366.2019.09.03.01.46.28
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Sep 2019 01:46:28 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of batv+680e2818d6643897e706+5854+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from clnet-p19-102.ikbnet.co.at ([83.175.77.102] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
	id 1i54SH-0003ro-GQ; Tue, 03 Sep 2019 08:46:25 +0000
From: Christoph Hellwig <hch@lst.de>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Lee Jones <lee.jones@linaro.org>
Cc: Alan Stern <stern@rowland.harvard.edu>,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] [PATCH 3/6] usb-storage: use hcd_uses_dma to check for
 DMA capabilities
Date: Tue,  3 Sep 2019 10:46:12 +0200
Message-Id: <20190903084615.19161-4-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190903084615.19161-1-hch@lst.de>
References: <20190903084615.19161-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=urmie0jp;
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

The dma_mask on its own doesn't mean much.  Instead check for the actual
flag.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/usb/storage/scsiglue.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/storage/scsiglue.c b/drivers/usb/storage/scsiglue.c
index 05b80211290d..7e0bc640c237 100644
--- a/drivers/usb/storage/scsiglue.c
+++ b/drivers/usb/storage/scsiglue.c
@@ -40,6 +40,7 @@
 #include <scsi/scsi_eh.h>
 
 #include "usb.h"
+#include <linux/usb/hcd.h>
 #include "scsiglue.h"
 #include "debug.h"
 #include "transport.h"
@@ -141,11 +142,10 @@ static int slave_configure(struct scsi_device *sdev)
 
 	/*
 	 * Some USB host controllers can't do DMA; they have to use PIO.
-	 * They indicate this by setting their dma_mask to NULL.  For
-	 * such controllers we need to make sure the block layer sets
+	 * For such controllers we need to make sure the block layer sets
 	 * up bounce buffers in addressable memory.
 	 */
-	if (!us->pusb_dev->bus->controller->dma_mask)
+	if (!hcd_uses_dma(bus_to_hcd(us->pusb_dev->bus)))
 		blk_queue_bounce_limit(sdev->request_queue, BLK_BOUNCE_HIGH);
 
 	/*
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190903084615.19161-4-hch%40lst.de.
