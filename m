Return-Path: <usb-storage+bncBDUNBGN3R4KRB3X2QKYAMGQECK4ZRCA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1046.google.com (mail-pj1-x1046.google.com [IPv6:2607:f8b0:4864:20::1046])
	by mail.lfdr.de (Postfix) with ESMTPS id AA3408882B3
	for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 00:55:28 +0100 (CET)
Received: by mail-pj1-x1046.google.com with SMTP id 98e67ed59e1d1-29df4ec4304sf3137680a91.3
        for <lists+usb-storage@lfdr.de>; Sun, 24 Mar 2024 16:55:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711324527; cv=pass;
        d=google.com; s=arc-20160816;
        b=AD/kM78FeWA99NXLBpj0bpZcFx8guvMfUNHkhjqyLTjZzywy7o1MpZdbwXDL920mEo
         NniZfgO7Fmr0Oyl4vDOzPN+L71teZFeCOiWdhxlrnGVaPdv4YpNASvREyvsNGzjo8run
         WWlM2dFmher7yhFybzuybr7Y8E2FVN6Jqr52sUArbYeecR2gOhF5nROBSuv+zuvgZPw/
         3zwjvDe8E5cvfmHK4LxmWvREzGYauB4nskYXnKRElaHYNeUUjdTY4XMQHnfm8LbJ0l80
         TIkXM7WP/C6p+cFcVwqZbpyVdMi791KkkmYHcF/JH9/UBOSzuKVbJkyumLI1fYqD+vUX
         56Wg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=/ghQ5PCtEXCx8U9ePLbqS+0X6D3kOxUf6lPBvXjfhZc=;
        fh=rJ9TOxQPyO1KuDdFAeqSH7l2S5HZhj9Ms0dLx4TVNC4=;
        b=DTJBS/ZKB29mvP9uBD1VNDL7YisagVe+kEgMov6BQgnfzXMn1LzeKfIhURjNq+xTzX
         69L6F9uSy5Ykr0+zNEM///DXc1VCJKbHFlLMZcRiXxpiZEvNRgT8tMVgGmvf4hHG4Tpf
         IbxY/pDLTUxpp8Aj405ApWcm8TAVA1kjcG67cpgi/4gQhPFm6VtNL4kfYICwI/cJEM75
         afwQX6frswA6ZLbi/16jAdLy1H4wqdlP84CZQ7EVWhsg4eoX4VjRtnP8c0sF6fGmMwD0
         OzBxm52LmUE3g86LZsfzxNNdilUULCxA1L1ojZu5qyONctsRcsl9W+1nFDUDkXREAWQ6
         BAZg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=T1SKhq3a;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711324527; x=1711929327; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/ghQ5PCtEXCx8U9ePLbqS+0X6D3kOxUf6lPBvXjfhZc=;
        b=bVwF580jvHomgSbAvegWjy59p4pTErXDNoeZx9Hn8QfeEUdbUCNaB6/HJk7p7DAOOJ
         /a8Hf18nxLdy4OuHWXpjoddRRqtEHtHGOZUBjOdB61fSZ7bIR4YlmEeVRdgilh5pFVfv
         cgXOwRbx/vefpKe5LSdiY3IE7kMw2qpn1/VQQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711324527; x=1711929327;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/ghQ5PCtEXCx8U9ePLbqS+0X6D3kOxUf6lPBvXjfhZc=;
        b=iSMQn2y9HgPO4s8KFfIY03Pg0S2muFS2OYriXZKfYYRJhuzqsJ4aw/abQ5uKexqRlT
         OTeZE1UKnzJlZCbOczpcfeV5SauW25KXl35dNlSus0plXcsRp0sUjJvo9nMhm0NBPIT7
         Pw7vMqRP6faeYUNKYZOLngM1Qt1NdEpq+bvIDBQXJTWRJbGeHuKVNlLIr0DQgLOKxI/1
         Pq+Zg54lSm/ogtwaj4gSHqbwtgj0TlurGq6HgoxuXj0EFM9I35sPQwX3qJ5Cxyyw4D6p
         q5RaVi1v1sPPdfvqRyw9QFiPuRIIOGqRSHGEsINjt5mRGd1OLfrnIgtehAuuAIY4si9K
         OlJQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCW51oO4RLJqmDHiD9rYL8japCJ9t6BPa4sX5PyiajYFgu8Aj2C6M5HDKXAc+QwUwiKV2FD5jEg3EE3nEyj4RCQN3CbuFjQJmn06
X-Gm-Message-State: AOJu0YwAOGl8A0YnYmerndavtlQaDl1VgMYHRGvqnv2Jm0f2JqPJdD2I
	uSJpt1YUs7MQdxQRUKVTapSlS5YCqwHvFrDKc4UZG/+Ey3jKLKsO0I0Gk1uSOeM=
X-Google-Smtp-Source: AGHT+IE5DFbyQMfUQNQulF45TCqLxzuR/FGja7xRaQItiC/+SmsAX8cwdZgKnjna6D/ZRSk9m5g0hg==
X-Received: by 2002:a17:90a:8e85:b0:2a0:53d0:8471 with SMTP id f5-20020a17090a8e8500b002a053d08471mr3208686pjo.21.1711324526983;
        Sun, 24 Mar 2024 16:55:26 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:d707:b0:29b:e0ee:9070 with SMTP id
 y7-20020a17090ad70700b0029be0ee9070ls2275722pju.1.-pod-prod-08-us; Sun, 24
 Mar 2024 16:55:26 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCV72ye8wL6xP4m8NoSTfSoHskp/CaaIs3rxBRFnLk0H+b4P9UXFzKF7VyzsYrupA7zNjV8zy1qjNFImgllkeACbh7bmK3M9E6xenogw5ZWwl5L++dU=
X-Received: by 2002:a17:902:ce91:b0:1e0:b5ee:eee9 with SMTP id f17-20020a170902ce9100b001e0b5eeeee9mr3188109plg.6.1711324525662;
        Sun, 24 Mar 2024 16:55:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711324525; cv=none;
        d=google.com; s=arc-20160816;
        b=Wkp/pC2j5511WegGfqtZ1zS2dT2DUzlED26AN1eUP/TSmoNdJlfbKfL3B7FRcmnWjE
         u8V2lKwXhiGfPjCR8dHrkU5Cqq0zdIvvczU4PA0BOVCIcnapkTiQylfKN91H1R2BIbNy
         cB6uOTXCtE+2cpaze5tfaVgl/rAajW55xJyUVDcOxiVVkrBvbBaZ3N7aB1CQYCkht+9x
         ikbRfRLF7YDc7SpR5YP24w8XiKPyEsJQaFxzuXCpMac2gNU8c4x3+gx951CVAHkUJCLM
         uWkhdoH7V0tRdFgmQ5B+9I+gsbRl1M18KyukU/ja5XW6OB1kJsgKDOg7mUJLE2eawt7x
         G/Jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=NwLMcvkQUo8PtF9LJnhVVt6koTFG/GgNCOMHm1clmTA=;
        fh=t86CCijjmN/1ilkIT+VdM3oaZOxEhtNXSf8+ryhWOUU=;
        b=LDRwRc4mbAl9PieZ8ON904OpljCkShg0om7YUmdlBo10tm7y1NRgxOc3zu83Olcd94
         cBX19rDXIelP0ZphOal8homu2jpaxLeoSlCl/2nKP4VP14QkWqreOjRBNfrlPEgBb3VM
         Ba+nXgumWGs5Sid8gVVcLsg/xn+rA8dYb0rK96MZY+5iOuv4OHwuH9RbdQAj1XyN3VXG
         5SU3USnlKdKeFYsB9yX0e0cjNjMwGLTB/YFiNt1rAXpis30wkuDEQhafUBNp7QuXwdCy
         8KzmTtq4Zdgn1xWjHseBswsc7oGc2yVmsn+Ya8wAl7i/g3OY9R4/sMXzGB5pmiGoBVhl
         7WXw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=T1SKhq3a;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id y2-20020a17090322c200b001e0b5744228si2009389plg.204.2024.03.24.16.55.25
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Mar 2024 16:55:25 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [210.13.83.2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roXg6-0000000DzMm-2vNS;
	Sun, 24 Mar 2024 23:55:03 +0000
From: Christoph Hellwig <hch@lst.de>
To: Jens Axboe <axboe@kernel.dk>,
	"Martin K. Petersen" <martin.petersen@oracle.com>
Cc: Damien Le Moal <dlemoal@kernel.org>,
	Niklas Cassel <cassel@kernel.org>,
	Takashi Sakamoto <o-takashi@sakamocchi.jp>,
	Sathya Prakash <sathya.prakash@broadcom.com>,
	Sreekanth Reddy <sreekanth.reddy@broadcom.com>,
	Suganath Prabu Subramani <suganath-prabu.subramani@broadcom.com>,
	"Juergen E. Fischer" <fischer@norbit.de>,
	Xiang Chen <chenxiang66@hisilicon.com>,
	HighPoint Linux Team <linux@highpoint-tech.com>,
	Tyrel Datwyler <tyreld@linux.ibm.com>,
	Brian King <brking@us.ibm.com>,
	Lee Duncan <lduncan@suse.com>,
	Chris Leech <cleech@redhat.com>,
	Mike Christie <michael.christie@oracle.com>,
	John Garry <john.g.garry@oracle.com>,
	Jason Yan <yanaijie@huawei.com>,
	Kashyap Desai <kashyap.desai@broadcom.com>,
	Sumit Saxena <sumit.saxena@broadcom.com>,
	Shivasharan S <shivasharan.srikanteshwara@broadcom.com>,
	Chandrakanth patil <chandrakanth.patil@broadcom.com>,
	Jack Wang <jinpu.wang@cloud.ionos.com>,
	Nilesh Javali <njavali@marvell.com>,
	GR-QLogic-Storage-Upstream@marvell.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Alan Stern <stern@rowland.harvard.edu>,
	linux-block@vger.kernel.org,
	linux-ide@vger.kernel.org,
	linux1394-devel@lists.sourceforge.net,
	MPT-FusionLinux.pdl@broadcom.com,
	linux-scsi@vger.kernel.org,
	open-iscsi@googlegroups.com,
	megaraidlinux.pdl@broadcom.com,
	mpi3mr-linuxdrv.pdl@broadcom.com,
	linux-samsung-soc@vger.kernel.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] [PATCH 03/23] mpi3mr: pass queue_limits to bsg_setup_queue
Date: Mon, 25 Mar 2024 07:54:28 +0800
Message-Id: <20240324235448.2039074-4-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240324235448.2039074-1-hch@lst.de>
References: <20240324235448.2039074-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=T1SKhq3a;
       spf=none (google.com: bombadil.srs.infradead.org does not designate
 permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
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

Pass the limits to bsg_setup_queue instead of setting them up on the live
queue.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/scsi/mpi3mr/mpi3mr_app.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/scsi/mpi3mr/mpi3mr_app.c b/drivers/scsi/mpi3mr/mpi3mr_app.c
index 0bac3f49d8057d..1dd097f9d7b78c 100644
--- a/drivers/scsi/mpi3mr/mpi3mr_app.c
+++ b/drivers/scsi/mpi3mr/mpi3mr_app.c
@@ -1838,6 +1838,10 @@ void mpi3mr_bsg_init(struct mpi3mr_ioc *mrioc)
 {
 	struct device *bsg_dev = &mrioc->bsg_dev;
 	struct device *parent = &mrioc->shost->shost_gendev;
+	struct queue_limits lim = {
+		.max_hw_sectors		= MPI3MR_MAX_APP_XFER_SECTORS,
+		.max_segments		= MPI3MR_MAX_APP_XFER_SEGMENTS,
+	};
 
 	device_initialize(bsg_dev);
 
@@ -1853,20 +1857,14 @@ void mpi3mr_bsg_init(struct mpi3mr_ioc *mrioc)
 		return;
 	}
 
-	mrioc->bsg_queue = bsg_setup_queue(bsg_dev, dev_name(bsg_dev), NULL,
+	mrioc->bsg_queue = bsg_setup_queue(bsg_dev, dev_name(bsg_dev), &lim,
 			mpi3mr_bsg_request, NULL, 0);
 	if (IS_ERR(mrioc->bsg_queue)) {
 		ioc_err(mrioc, "%s: bsg registration failed\n",
 		    dev_name(bsg_dev));
 		device_del(bsg_dev);
 		put_device(bsg_dev);
-		return;
 	}
-
-	blk_queue_max_segments(mrioc->bsg_queue, MPI3MR_MAX_APP_XFER_SEGMENTS);
-	blk_queue_max_hw_sectors(mrioc->bsg_queue, MPI3MR_MAX_APP_XFER_SECTORS);
-
-	return;
 }
 
 /**
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240324235448.2039074-4-hch%40lst.de.
