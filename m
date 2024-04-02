Return-Path: <usb-storage+bncBDUNBGN3R4KRBBUGWCYAMGQE6SSXBUY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1048.google.com (mail-pj1-x1048.google.com [IPv6:2607:f8b0:4864:20::1048])
	by mail.lfdr.de (Postfix) with ESMTPS id 32EAE89543B
	for <lists+usb-storage@lfdr.de>; Tue,  2 Apr 2024 15:07:20 +0200 (CEST)
Received: by mail-pj1-x1048.google.com with SMTP id 98e67ed59e1d1-2a26d49a470sf82801a91.1
        for <lists+usb-storage@lfdr.de>; Tue, 02 Apr 2024 06:07:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712063238; cv=pass;
        d=google.com; s=arc-20160816;
        b=a5YlBFCZQaMGx//aTqDfllO8Y3JQppd7UJ98fqUAjeaJF1KLZ8Z2XbrJcNOuGUt4is
         eCy+VLVI8bXfITYyYb+ZhQN/KbEv7MWN/TTcBPQch8Gwcp9nmdZt8sUM4BGUbUAHqoAd
         p4PjvneqbmjSVCdsSbx+rIj6nzMFvK7xVsZ4XUQTOhVMdo6e6S93DwsZpuFzeAUmcnyL
         x9paOA5ScrzH8Gh0qGM1PEBYKp14KrdQQzaXkG62iyHDfDlXQ4XtTtys/to9YvWQsTZL
         TDQtJxP5bDzgcb0bNQBVsPdA05xWhxXj7r9vrfdpvjX6+yrnLlp/a81qrU/hWPCT54yJ
         lXNQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=JZVZ/Mrx7mhuEo0J6rSI9YAfFJZBg6FyJFJ62B6J5BQ=;
        fh=KAPpju0K78midbzKOU9YMMSiCtxvNnQY8omor+8znCE=;
        b=qlCLn8ksnsctUM1G3ZzT+1NVw8J6uJnM7yzKdV8Pdrkgek+rUk4mzdBbmuwOmFQ/S7
         EBuCsSgnMQdSU819l6k9K4HAOjIdjp4+RPEGQEIGdEhq3PP98JwefuZCdhmHx6gTQQ2k
         gWdQ5KzENrq1m+J/Pb4IxDihg9qZ7Pks3eYUa83XhZ+duOio2RcgOTT6CFdMToPET9Ow
         Jfuoe6Xkx0OZddJabr45ifdKVhlNoc6obDqxa+7cydnHGA1J0hfJ3S2RXhqSmyp8/OXh
         EfJ2p61j1ordkW9pJ6s3iYys74rCcZScEzb6w0bRKeT+qqPxGlMX5q9k1xB5WlWFNjK+
         7a6w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b="b/kIhnr8";
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+db5ae43edc5588e6f7b7+7527+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712063238; x=1712668038; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JZVZ/Mrx7mhuEo0J6rSI9YAfFJZBg6FyJFJ62B6J5BQ=;
        b=fEXuR6pIfb4Z4I5gT66FQ1LHR3BId/MkeellvPqtwp9ZkoQ98JQIAb/1pjkBs64o2t
         7e2U1H8yYSuSoehz9gtelwojYfqAm8v+fxRkbCs2y0TE+6iPlsaokfGLz9iQJttQ/H2n
         SmF8HJZlE7WXXe5UeeSNJ7LxvWQnB9pqEqgtk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712063238; x=1712668038;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JZVZ/Mrx7mhuEo0J6rSI9YAfFJZBg6FyJFJ62B6J5BQ=;
        b=EUBfXASVvUs1fQFA8jno0wlLih8uvJpheVsPWDalO3xi7yrfCivgSc0RbqisoyjVeL
         0S4ifaV9Xc3S2rNCdS1YPe54Ln+zkE3URmAt9Vxbwrsx7H8fw/jT9C+Kp59th7ciCdgZ
         DT/hBJjvr+opVUjHQAJVT2tIsVs2su0OSLnb4PdoesguSwSQJXogva3nTc3ZYdr155kb
         NMpbRxJB/5c0C2djWewnS4J+HkLahYEYTHm5aFZfwoi2IhI1GDMKOhf2qv93Ho2G1Jpz
         DwUJ1OFsKWc2OaFx9fSWK0fa5IWYQ2K2WsNLoy9lqT/8GId89o41T3zTb2ER85dhgpNW
         Zl1g==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVMyXW0tsz8jWe79i9bUGfsR1zRtB08IrpZmBDvi860JFwabPdX3L0Ap4NkKK6AZ2iK+C3XE1h3jj4I2+r+76loUoTybp5Kx232
X-Gm-Message-State: AOJu0Ywgp7SJJtGlRjkebtde6Ag+U/VhvFfMfDZ6UAX2hponKMYBJtFy
	uNMbhz7YGNe2qLeJIncsMjCAyCjllCw1RPUsEOwCj5GZCFXFE5ukq3Tpeb1p1lc=
X-Google-Smtp-Source: AGHT+IEygR5v7+ZV3Jvl3ZHeHiOti6SENCfmv2Zm5DH/f6lCVajbjZfgsJ9HjrczPWfkhDyqgrHjzA==
X-Received: by 2002:a17:90b:4ace:b0:2a2:6757:1de0 with SMTP id mh14-20020a17090b4ace00b002a267571de0mr915913pjb.4.1712063238734;
        Tue, 02 Apr 2024 06:07:18 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:d805:b0:2a0:8523:bb1e with SMTP id
 a5-20020a17090ad80500b002a08523bb1els3414233pjv.1.-pod-prod-00-us-canary;
 Tue, 02 Apr 2024 06:07:17 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUj/WjCy3fSEKANUc8ayG2gy7ivROpLdUT2HC5/cKeEa2BYrLAZCPezFwB2PhyJ4EZBEr+wW97HnABqT800neLkkc/2eZWJA7CNuO25wI2xquT5ea8=
X-Received: by 2002:a05:6a20:7f8c:b0:1a3:ae53:fa6b with SMTP id d12-20020a056a207f8c00b001a3ae53fa6bmr16410429pzj.6.1712063237456;
        Tue, 02 Apr 2024 06:07:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712063237; cv=none;
        d=google.com; s=arc-20160816;
        b=um0nsq4z7H6cd0fukVjK8TmF6tm0UXS0vMk1ojtSvmAPJHL3fk7FSSHWfEuPLibHMm
         1/+O6FpyFjvhho/MtIGzpSTmvZNoOTq39IK7IVcxkVt6wXQx3pocY1vFWh/tyRmNBlOJ
         jfFV/BPHc5CqCzP37wkDqk3kEXJehmKdKzRj8kc2PTYKwJARb7YLnwRe6Hx932gzZJ1p
         yNLfaYh5MfgL3T+ClttffdzFuYPd8G24Wcvk/GtumE1t85o5My+fagUVZ7craEqt6A2q
         z1D1QGpM1OvilOhB/p+Q1sDE10F0GANA+u/iMqUlzicS79jRUI+b+QN1MJbnratttZ6i
         b+yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=RdnxD4WyRakdTweRDp49G9ru5yetEq5rTO+Z6kFqk9s=;
        fh=q8hCIvNb5vCUXXKMpVAwbkkPDpj7PtrvAVG6ascHy78=;
        b=IjvQPH0XZqLjRtWGbEtpqtmCu93i30ZRMvm9bsJvfYGtnt5NUosTzvSXZaPsKTO7UQ
         g/J1m+NtM4lC30ITGVAxnUfu8B1yp9bDEZL1n7rH55fN9g4oj+fBkPS7xHHK/uaAM6PN
         qihXirh6W0jZ0Ukl8CleS9UFgmgEcO9y98hhUv8r7WzM5v5vrQdcDX/UqhENHjASn4d+
         5EAb8wnxf8mhxroDfntgyFaeWwqpcclP4O8IT7ny8bGllJjETQlxinaXAldeFTha+moD
         hV6WOcBibidBsuWTcHKiGoJHUT0lzmAo2ETmWy42uzF8PN696rFiTzb1+RgyxyWU7Yf5
         XARQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b="b/kIhnr8";
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+db5ae43edc5588e6f7b7+7527+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id b16-20020a056a000cd000b006e6ca4153absi11517595pfv.293.2024.04.02.06.07.17
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Apr 2024 06:07:17 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [2001:4bb8:199:60a5:c70:4a89:bc61:2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrdqx-0000000BFPC-41qQ;
	Tue, 02 Apr 2024 13:07:04 +0000
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
	megaraidlinux.pdl@broadcom.com,
	mpi3mr-linuxdrv.pdl@broadcom.com,
	linux-samsung-soc@vger.kernel.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] [PATCH 06/23] scsi: add a no_highmem flag to struct Scsi_Host
Date: Tue,  2 Apr 2024 15:06:28 +0200
Message-Id: <20240402130645.653507-7-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240402130645.653507-1-hch@lst.de>
References: <20240402130645.653507-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b="b/kIhnr8";
       spf=none (google.com: bombadil.srs.infradead.org does not designate
 permitted sender hosts) smtp.mailfrom=BATV+db5ae43edc5588e6f7b7+7527+infradead.org+hch@bombadil.srs.infradead.org
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

While we really should be killing the block layer bounce buffering ASAP,
I even more urgently need to stop the drivers to fiddle with the limits
from ->slave_configure.  Add a no_highmem flag to the Scsi_Host to
centralize this setting and switch the remaining four drivers that use
block layer bounce buffering to it.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
Reviewed-by: John Garry <john.g.garry@oracle.com>
---
 drivers/scsi/aha152x.c         |  8 +-------
 drivers/scsi/imm.c             | 12 +-----------
 drivers/scsi/ppa.c             |  8 +-------
 drivers/scsi/scsi_lib.c        |  3 +++
 drivers/usb/storage/scsiglue.c | 10 ----------
 drivers/usb/storage/usb.c      | 10 ++++++++++
 include/scsi/scsi_host.h       |  2 ++
 7 files changed, 18 insertions(+), 35 deletions(-)

diff --git a/drivers/scsi/aha152x.c b/drivers/scsi/aha152x.c
index 055adb349b0e41..83f16fc14d9630 100644
--- a/drivers/scsi/aha152x.c
+++ b/drivers/scsi/aha152x.c
@@ -746,6 +746,7 @@ struct Scsi_Host *aha152x_probe_one(struct aha152x_setup *setup)
 	/* need to have host registered before triggering any interrupt */
 	list_add_tail(&HOSTDATA(shpnt)->host_list, &aha152x_host_list);
 
+	shpnt->no_highmem = true;
 	shpnt->io_port   = setup->io_port;
 	shpnt->n_io_port = IO_RANGE;
 	shpnt->irq       = setup->irq;
@@ -2940,12 +2941,6 @@ static int aha152x_show_info(struct seq_file *m, struct Scsi_Host *shpnt)
 	return 0;
 }
 
-static int aha152x_adjust_queue(struct scsi_device *device)
-{
-	blk_queue_bounce_limit(device->request_queue, BLK_BOUNCE_HIGH);
-	return 0;
-}
-
 static const struct scsi_host_template aha152x_driver_template = {
 	.module				= THIS_MODULE,
 	.name				= AHA152X_REVID,
@@ -2961,7 +2956,6 @@ static const struct scsi_host_template aha152x_driver_template = {
 	.this_id			= 7,
 	.sg_tablesize			= SG_ALL,
 	.dma_boundary			= PAGE_SIZE - 1,
-	.slave_alloc			= aha152x_adjust_queue,
 	.cmd_size			= sizeof(struct aha152x_cmd_priv),
 };
 
diff --git a/drivers/scsi/imm.c b/drivers/scsi/imm.c
index 180a5ddedb2cda..21339da505f1ea 100644
--- a/drivers/scsi/imm.c
+++ b/drivers/scsi/imm.c
@@ -1100,16 +1100,6 @@ static int device_check(imm_struct *dev, bool autodetect)
 	return -ENODEV;
 }
 
-/*
- * imm cannot deal with highmem, so this causes all IO pages for this host
- * to reside in low memory (hence mapped)
- */
-static int imm_adjust_queue(struct scsi_device *device)
-{
-	blk_queue_bounce_limit(device->request_queue, BLK_BOUNCE_HIGH);
-	return 0;
-}
-
 static const struct scsi_host_template imm_template = {
 	.module			= THIS_MODULE,
 	.proc_name		= "imm",
@@ -1123,7 +1113,6 @@ static const struct scsi_host_template imm_template = {
 	.this_id		= 7,
 	.sg_tablesize		= SG_ALL,
 	.can_queue		= 1,
-	.slave_alloc		= imm_adjust_queue,
 	.cmd_size		= sizeof(struct scsi_pointer),
 };
 
@@ -1235,6 +1224,7 @@ static int __imm_attach(struct parport *pb)
 	host = scsi_host_alloc(&imm_template, sizeof(imm_struct *));
 	if (!host)
 		goto out1;
+	host->no_highmem = true;
 	host->io_port = pb->base;
 	host->n_io_port = ports;
 	host->dma_channel = -1;
diff --git a/drivers/scsi/ppa.c b/drivers/scsi/ppa.c
index d592ee9170c11f..8300f0bdddb37a 100644
--- a/drivers/scsi/ppa.c
+++ b/drivers/scsi/ppa.c
@@ -986,12 +986,6 @@ static int device_check(ppa_struct *dev, bool autodetect)
 	return -ENODEV;
 }
 
-static int ppa_adjust_queue(struct scsi_device *device)
-{
-	blk_queue_bounce_limit(device->request_queue, BLK_BOUNCE_HIGH);
-	return 0;
-}
-
 static const struct scsi_host_template ppa_template = {
 	.module			= THIS_MODULE,
 	.proc_name		= "ppa",
@@ -1005,7 +999,6 @@ static const struct scsi_host_template ppa_template = {
 	.this_id		= -1,
 	.sg_tablesize		= SG_ALL,
 	.can_queue		= 1,
-	.slave_alloc		= ppa_adjust_queue,
 	.cmd_size		= sizeof(struct scsi_pointer),
 };
 
@@ -1111,6 +1104,7 @@ static int __ppa_attach(struct parport *pb)
 	host = scsi_host_alloc(&ppa_template, sizeof(ppa_struct *));
 	if (!host)
 		goto out1;
+	host->no_highmem = true;
 	host->io_port = pb->base;
 	host->n_io_port = ports;
 	host->dma_channel = -1;
diff --git a/drivers/scsi/scsi_lib.c b/drivers/scsi/scsi_lib.c
index 1deca84914e87a..f1936f98abe3e2 100644
--- a/drivers/scsi/scsi_lib.c
+++ b/drivers/scsi/scsi_lib.c
@@ -1995,6 +1995,9 @@ void scsi_init_limits(struct Scsi_Host *shost, struct queue_limits *lim)
 	 */
 	lim->dma_alignment = max(4, dma_get_cache_alignment()) - 1;
 
+	if (shost->no_highmem)
+		lim->bounce = BLK_BOUNCE_HIGH;
+
 	dma_set_seg_boundary(dev, shost->dma_boundary);
 	dma_set_max_seg_size(dev, shost->max_segment_size);
 }
diff --git a/drivers/usb/storage/scsiglue.c b/drivers/usb/storage/scsiglue.c
index 12cf9940e5b675..1d14c678f3d3e3 100644
--- a/drivers/usb/storage/scsiglue.c
+++ b/drivers/usb/storage/scsiglue.c
@@ -40,7 +40,6 @@
 #include <scsi/scsi_eh.h>
 
 #include "usb.h"
-#include <linux/usb/hcd.h>
 #include "scsiglue.h"
 #include "debug.h"
 #include "transport.h"
@@ -130,15 +129,6 @@ static int slave_configure(struct scsi_device *sdev)
 		min_t(size_t, queue_max_hw_sectors(sdev->request_queue),
 		      dma_max_mapping_size(dev) >> SECTOR_SHIFT));
 
-	/*
-	 * Some USB host controllers can't do DMA; they have to use PIO.
-	 * For such controllers we need to make sure the block layer sets
-	 * up bounce buffers in addressable memory.
-	 */
-	if (!hcd_uses_dma(bus_to_hcd(us->pusb_dev->bus)) ||
-			(bus_to_hcd(us->pusb_dev->bus)->localmem_pool != NULL))
-		blk_queue_bounce_limit(sdev->request_queue, BLK_BOUNCE_HIGH);
-
 	/*
 	 * We can't put these settings in slave_alloc() because that gets
 	 * called before the device type is known.  Consequently these
diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index d1ad6a2509ab7f..a49a31639f6f0c 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -47,6 +47,7 @@
 #include <scsi/scsi_device.h>
 
 #include "usb.h"
+#include <linux/usb/hcd.h>
 #include "scsiglue.h"
 #include "transport.h"
 #include "protocol.h"
@@ -961,6 +962,15 @@ int usb_stor_probe1(struct us_data **pus,
 	if (result)
 		goto BadDevice;
 
+	/*
+	 * Some USB host controllers can't do DMA; they have to use PIO.
+	 * For such controllers we need to make sure the block layer sets
+	 * up bounce buffers in addressable memory.
+	 */
+	if (!hcd_uses_dma(bus_to_hcd(us->pusb_dev->bus)) ||
+	    bus_to_hcd(us->pusb_dev->bus)->localmem_pool)
+		host->no_highmem = true;
+
 	/* Get the unusual_devs entries and the descriptors */
 	result = get_device_info(us, id, unusual_dev);
 	if (result)
diff --git a/include/scsi/scsi_host.h b/include/scsi/scsi_host.h
index 129001f600fc95..878840c9b5b99a 100644
--- a/include/scsi/scsi_host.h
+++ b/include/scsi/scsi_host.h
@@ -665,6 +665,8 @@ struct Scsi_Host {
 	/* The transport requires the LUN bits NOT to be stored in CDB[1] */
 	unsigned no_scsi2_lun_in_cdb:1;
 
+	unsigned no_highmem:1;
+
 	/*
 	 * Optional work queue to be utilized by the transport
 	 */
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240402130645.653507-7-hch%40lst.de.
