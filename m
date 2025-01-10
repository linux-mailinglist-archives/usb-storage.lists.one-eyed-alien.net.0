Return-Path: <usb-storage+bncBDUNBGN3R4KRBC7JQK6AMGQECEJSOSQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1045.google.com (mail-pj1-x1045.google.com [IPv6:2607:f8b0:4864:20::1045])
	by mail.lfdr.de (Postfix) with ESMTPS id E199EA086D0
	for <lists+usb-storage@lfdr.de>; Fri, 10 Jan 2025 06:47:56 +0100 (CET)
Received: by mail-pj1-x1045.google.com with SMTP id 98e67ed59e1d1-2ef9b9981f1sf4477705a91.3
        for <lists+usb-storage@lfdr.de>; Thu, 09 Jan 2025 21:47:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736488075; cv=pass;
        d=google.com; s=arc-20240605;
        b=M6fluFoPodBNcTlkfo8JOa7kSdPok6u5JEk12izFm62vJECfyOCixHZX9Qv27mWH9N
         uPhDKKz8XEJAI59wVOMrSpKMCH99tYSQt3+X9qv1cdDNJAzyAOtG89u3gf2MpduirlfP
         qp+bXcRtvM81W5uJ/SXA/djaD9JhWe+LxBp2HdC6sm50Y2Cv/BtD8myUHZKDjKzFS+9V
         f6zHCWgBXOr52j5LrWcPKMp/BDNCWnc7Duhtqw0bxvTRxk7mhYGMFfTFnYBlPdfWjKVW
         NnKv7d8At7NzkuUNvLLGHOzEDqxSnI8zzMZXylxtviGDy7/g3FTQm6PBHVo0DWG44yK+
         GnQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=FDZlx25e39kXVlfDl/wbao0cdzZWhb0A3iZBTr/qk1Q=;
        fh=BDYt9yiFSV8NwvEslXoMj/5V8vFybvK2pUUTNbrE3vU=;
        b=K4PcpfKQHmz7HBbaoSEfArIXj0IFhAL5MdjYQYtfIT/UJ4SOFhsCKu1MKb4/l708Og
         3tPNN0VuJVYneQheCJKh3v9N8iOuOroarWCk51ZqhulRWPPbVmMaUloXzYXJLm9TPQoK
         ad4WdDZvk1nHzTkWPRzxG2BmoXYXDKmPQX4qTuwFsTgO+/UY6nQ4WY4tHXHBm1jGq2Bk
         UEvNRb9C/IKgV0AqC0YYShjFhyk5kPf0w4RpBRIAbpAxoXWCJckmR/WfS1+palm26T/o
         V0vthGBQBiQ813r4H4ON3nYDzoC+6sjkG5KuL7r6MMryUFPerXecX+oHENZZqw+2JMXy
         AF7w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=xVhnV4+G;
       spf=none (google.com: batv+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736488075; x=1737092875; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FDZlx25e39kXVlfDl/wbao0cdzZWhb0A3iZBTr/qk1Q=;
        b=WEDmRqZH96DtOlFqN+xIuWMe4ve4Bl8t7Su4lM559MRb5yE1iZncnLnUh3JyocP7W1
         n689fLwQyD41rl7oPrRI8qMGEPX/wRnLJbDPB8EIsx3kz9ZSX7J0akSS1kcyfmQj0yFR
         6RDf7AWX+7gEEDycuGkiYEyuILg0lD9UbOz+Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736488075; x=1737092875;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FDZlx25e39kXVlfDl/wbao0cdzZWhb0A3iZBTr/qk1Q=;
        b=E1vYjfzyvFX7EnsYzj5/gEtvXYUOC3Nfkan0DKasm+XccAYduqiLFx4EFbzaL+L00u
         EqMx+JniK9P9O0d3Z4dzy8X58+rPsJbhwtLjTYHFyou5g6zMLFAZU5zqIEITzaayaePK
         u4EUHT7SXWmpPBr1PGofDWryGk9ZFe7MIDsu1ZsVnY5xLfoc/eEc9C91hRTpINc0jsvD
         X1F4XnYymR2ee5RAF/Jj2wvPj66/RA+mnP5AflcMJsLW+fggYlzBr2b54LTY6mzzO9k+
         lfirwHRIoe5v+XSucBvakea1IeO8eyMAS3Vc/6wdVNJFDlDrVA6VyoZ858hhwB74IBKL
         Vt3w==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWqTVKaYwlGAeON2m4GCDInl/z2X2EOX3/pMdQaML+EQ3H0/O05HSPrFpt33lpBPNyvIyB1VQ==@lfdr.de
X-Gm-Message-State: AOJu0YxfMqf/+ktYyXurdATpmfRi2Nucpyj970hdVKN1O0ZgkWOfCAB5
	UuqvibF1JZKQHsPMI4x/zp7wtEjCUa13+QI2WgCwMC9JwUnaUGcDKKEUguR3r44=
X-Google-Smtp-Source: AGHT+IGLf1rdPUgqc69YA6at8sJLlnF4SfVVQ9npwpY/6j6ktS7Q9UXRl8tPCHbYuMUuZ75irGM2QQ==
X-Received: by 2002:a05:6a00:9a3:b0:725:eacf:cfdb with SMTP id d2e1a72fcca58-72d22033ef6mr14016653b3a.24.1736488075363;
        Thu, 09 Jan 2025 21:47:55 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6a00:1906:b0:725:efed:3617 with SMTP id
 d2e1a72fcca58-72d2fc621b0ls2148131b3a.1.-pod-prod-06-us; Thu, 09 Jan 2025
 21:47:54 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCW9Ct0WmxDcz7MFUWAA0EZ6jvb+k4BI8aJ7u6M8Xr7CZMAX+gUTQOAS27owxWTrGsBz3XVmFGeGYS/rdg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6a21:1646:b0:1e1:faa:d8cf with SMTP id adf61e73a8af0-1e88d0efa09mr16210225637.40.1736488073975;
        Thu, 09 Jan 2025 21:47:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736488073; cv=none;
        d=google.com; s=arc-20240605;
        b=B7wwOEx5hGiMW5DNMpPZcjZPSLWyWxd1ofpjuAUGxQaslNuFrImzfH0xpUeeqUJRKZ
         9K5eesHqjSyDpIsldRb0YER7QTWv26LLe1XuazrPdg7aWAi8SNO7TnnunCS8qBVXxKQP
         3hGMWk3CRU5/4np6MPQfj0QDFCW/vU8PGE5rPwbb+yPHvhy9cABuMnd4/THSyhgxz8na
         kWcf1sVASDOK7zCjzbICscRBgC6HG/xrt25XdJwVSanJuQa0f7BXx9X6WKrdtM4EVU0E
         hMCkABqAB7hxrKXfc7Or+W7wtp5Ltbh3tp39ZuyxMev9Io8omI9+MmdvuyUyB300kUeo
         /Nhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=aVPc7ZYe8xc+rP3/vPLE+10RiLIuzK741aBYQ81fB7A=;
        fh=K4mYBT/f9uT4NDiXg9vO0QvGda7RTqDR2brfxQ7Fzow=;
        b=Uj79KlitWiwrKmnb0WpYE283ddIYq6N/xsF4hevg8qpIn1Ak1wqnVSJ4flpGf/WpdZ
         UhtiHXvivRXE1SWGVe1liWn5nDQoR3M2rqKo7pUaXq9g7eNB3psLZaZcPCKEK1aFxDRU
         OzjquOMYe/motT9gFN3OkHmSakPPRPQMjXjK9AxV3BuGPHhN92XZWFIQI72YiUqnD/c2
         wGdb+VuO/UdZSIh0IARsl8E5tqKt5s20zLwdX71sWMNKF5I8on3VxYRQAlUTJ/gONXKQ
         /jpbqokreya6m8k0low9uapACzyef4Ypf6IWE+wWke+7cwMV1sRb3MHGixLuLsLm5c7+
         shJw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=xVhnV4+G;
       spf=none (google.com: batv+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id d2e1a72fcca58-72d406d2d65si1487272b3a.218.2025.01.09.21.47.53
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jan 2025 21:47:53 -0800 (PST)
Received-SPF: none (google.com: batv+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-76c3-a3dc-14f6-94e8.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:76c3:a3dc:14f6:94e8] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98 #2 (Red Hat Linux))
	id 1tW7s7-0000000E51z-1tsQ;
	Fri, 10 Jan 2025 05:47:51 +0000
From: Christoph Hellwig <hch@lst.de>
To: Jens Axboe <axboe@kernel.dk>
Cc: Damien Le Moal <dlemoal@kernel.org>,
	Ming Lei <ming.lei@redhat.com>,
	Nilay Shroff <nilay@linux.ibm.com>,
	linux-block@vger.kernel.org,
	linux-nvme@lists.infradead.org,
	nbd@other.debian.org,
	linux-scsi@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Johannes Thumshirn <johannes.thumshirn@wdc.com>
Subject: [usb-storage] [PATCH 09/11] usb-storage: fix queue freeze vs limits
 lock order
Date: Fri, 10 Jan 2025 06:47:17 +0100
Message-ID: <20250110054726.1499538-10-hch@lst.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250110054726.1499538-1-hch@lst.de>
References: <20250110054726.1499538-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=xVhnV4+G;
       spf=none (google.com: batv+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org
 does not designate permitted sender hosts) smtp.mailfrom=BATV+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org
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

Match the locking order used by the core block code by only freezing
the queue after taking the limits lock using the
queue_limits_commit_update_frozen helper.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Ming Lei <ming.lei@redhat.com>
Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
Reviewed-by: Martin K. Petersen <martin.petersen@oracle.com>
Reviewed-by: Nilay Shroff <nilay@linux.ibm.com>
Reviewed-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 drivers/usb/storage/scsiglue.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/usb/storage/scsiglue.c b/drivers/usb/storage/scsiglue.c
index 8c8b5e6041cc..dc98ceecb724 100644
--- a/drivers/usb/storage/scsiglue.c
+++ b/drivers/usb/storage/scsiglue.c
@@ -592,12 +592,9 @@ static ssize_t max_sectors_store(struct device *dev, struct device_attribute *at
 	if (sscanf(buf, "%hu", &ms) <= 0)
 		return -EINVAL;
 
-	blk_mq_freeze_queue(sdev->request_queue);
 	lim = queue_limits_start_update(sdev->request_queue);
 	lim.max_hw_sectors = ms;
-	ret = queue_limits_commit_update(sdev->request_queue, &lim);
-	blk_mq_unfreeze_queue(sdev->request_queue);
-
+	ret = queue_limits_commit_update_frozen(sdev->request_queue, &lim);
 	if (ret)
 		return ret;
 	return count;
-- 
2.45.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250110054726.1499538-10-hch%40lst.de.
