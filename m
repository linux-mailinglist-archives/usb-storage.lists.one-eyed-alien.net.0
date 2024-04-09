Return-Path: <usb-storage+bncBDUNBGN3R4KRBXVF2WYAMGQEDV2MB6Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x47.google.com (mail-oa1-x47.google.com [IPv6:2001:4860:4864:20::47])
	by mail.lfdr.de (Postfix) with ESMTPS id E8B6389DC79
	for <lists+usb-storage@lfdr.de>; Tue,  9 Apr 2024 16:38:23 +0200 (CEST)
Received: by mail-oa1-x47.google.com with SMTP id 586e51a60fabf-22edfd52fe4sf3123427fac.3
        for <lists+usb-storage@lfdr.de>; Tue, 09 Apr 2024 07:38:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712673502; cv=pass;
        d=google.com; s=arc-20160816;
        b=La372Ddh782jYLWUuqoF+qsQkS1ks1SrK2HWjmK6PxLYhgRLiS5f2PSIyhy1UN1xIY
         irj+mcgZUzZYvY6DbJJskhTDUHJr7UWRupZi+YYUp/OVoVCS7Z2zq086m6t2l2/NoZmG
         DTzN8j/2kgL/fCfFlksPl+W9dL8aEpMKMDpNw2rVrWBPnr4sv6YLZkEkPmaxHvcSf5Lg
         E09g1BsKjWvpk5FRGBbBVgI1xz3DGNZY6D64xXt99zTMJ6Wj8YYmyYhblyuTAN5wJWcm
         F3kzWlYlTGEYsWcWxP6InXXPsVDwL17PQ7I769VrYvZ+90brsF8d1aZRwqjjfi6CKJsu
         nGIA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ge7Eat0nhg+H/B/qP9krLhjWQiIVNN/uMPNJNpMTxuk=;
        fh=SA4GRfxQlG8bVgGxbpwvT0883RCu8bhCghAWt6rSqsU=;
        b=NVHIo8/MgVjVkJnmtgj5IADjWbNArjTxn9aOg/HyeJTDfUjOjBEzlLlNfeDyzZ3w8N
         dLY5YceotUXhTj1WmaIyebGr9cWn3zKLryr02tDP932I0Aw/bihqh+uaaBTpwqKF2+n6
         fQsD9L87nyIKO64foR0WIfLpo3JuPPGQiIrU6sHkxZL1CiNtlw7RwV9ZXoCy5II2TaX9
         7t+JjlgJTQJMol8NBBFVlGin7fiWSblhfq6sbn1tTphya2QzqDk+KGKXDilw5LmgiuYF
         5eGM+TmGPNxY/7MYJC+Kf0yqqun4mR7jcpcczvgO3paSTtPoCtLulqVwZrCIY1Fd2VTG
         NdXw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=PpwtdwgF;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+a1627a52d3ab203f3ac5+7534+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712673502; x=1713278302; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ge7Eat0nhg+H/B/qP9krLhjWQiIVNN/uMPNJNpMTxuk=;
        b=exy7m9KkT0Rp4djrlpHTpJmvCs0Z+4oCbEBkg5Q7iL9CKwvdlIuUr9RHBZ3+DX66at
         SfEDCWVuxhi764vTRf36cKplamqDZ1yD9Skf+HPuRWNBny6iyL4kbYrog1OALFZw85wx
         wu6WCRCk3uJWfK8iq7QEOt6CqhdLCQtF5GPR4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712673502; x=1713278302;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ge7Eat0nhg+H/B/qP9krLhjWQiIVNN/uMPNJNpMTxuk=;
        b=P3Aj0LwTKuZj2RM9PFf3iqECtZ605z9qy/JTxzSnHk9cGPOoHQZsPIfVvNI4KjQe0C
         7c1Bj3/cMkgs7IvanuaLFEY2gS39zNGxFJydLZ8cKZOvatqaQy0T/1GbUlJUHbJI5wFi
         Jo+Ukzz+ndg2K+lcKggjJetEbSWOkAZHn9R2oADkgWk4xB0yL/WqrILKikTwdRzl2t38
         OTPWAxxYeyGxqqxIkYPejeNHDH/bpQ46wQv48Z6jK3/uD+ciz5nvW8R1ej/wzOgLUlqV
         0qvzH8jxOpu4OYna6rl/OMe+aDd6LZfyIjHg2XgnL+d5OWKXyAXtONGUljIzcf8hz7lH
         5sqA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVrGkuqNqUTZtTjLfk3S/phkub9cpFl8HPETXTEvewTMcZ2Fbu7Y05E5YUwcDRA3GDpCh67axRBbqQM8T9VAfYQOo2j0EtRu6uU
X-Gm-Message-State: AOJu0Yyq5z7P+eoepQKDJPsrMrKzlqssTJbY+KcrYsnN3WTV/c2BSpHd
	v4BF4TJE6V0Q8Em5DCfeQkBDrorvgZx07PNKYo6p3NzaVeCI4A0Y8TG0R+eYC4o=
X-Google-Smtp-Source: AGHT+IFIG3dbQ3OEDu10EY3QLywKF8o3j0V75FEQerC4IgAVCwerZQpaJZN4lwvM+D9C9cjfg7ytfg==
X-Received: by 2002:a05:6870:b919:b0:22e:ddcb:b49b with SMTP id gx25-20020a056870b91900b0022eddcbb49bmr14015656oab.50.1712673502202;
        Tue, 09 Apr 2024 07:38:22 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:80d4:b0:22f:10a1:602d with SMTP id
 r20-20020a05687080d400b0022f10a1602dls741051oab.1.-pod-prod-01-us; Tue, 09
 Apr 2024 07:38:21 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUvXsOqp0tbkvwh0BANKeOKLReu+WjKjBmWqycWsJpNVgZDEl4b+nJrFh/3A3/IFDiJbn3NQnp2LqEiRiIkxd+qbxtjIw5HPgLyvdGcP86QZguBAAI=
X-Received: by 2002:a05:6870:ec89:b0:22a:105f:4dce with SMTP id eo9-20020a056870ec8900b0022a105f4dcemr13050349oab.58.1712673501264;
        Tue, 09 Apr 2024 07:38:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712673501; cv=none;
        d=google.com; s=arc-20160816;
        b=c+GEhT6+3xKFKv2bRfv3XvIu5bi9tNf2yTif3BroryrxzS6c0yadfRrE7Gqenz6EV0
         oUpuCn3EF999Ki5bCQyjwT8kq4/1sI4pOgq1iFFJ4qvTzLxAokdogF3fMydBpHIaP1RC
         jOZaPoaZ6YlD5AEXqkMqZvyxjUU6Hc0VzDX/ThYmSJLUq0T0YDDvCish1XHOSmc05hwD
         SgBOVqHo0OIoaf2Y4ffwW75pYqzpY0QZ1eJLt7uCqjiBKKo7kTYZPYyOhB2pL6b+symb
         SWZewwwT5l39FCfYhmpfCeL3NQMRnxDmPpnx1DEWyX8rbWxR22v/TaZJm+k/8S+xsvmM
         6krg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=5qAQ/HdFahWqkmI1JyiOKocinxT2Yr0JZKEBQTb+4Fo=;
        fh=UaGMtZo/2j1iaYITUnmtOwHBR7+4Khs7sTR53qT7wM8=;
        b=y8hi3Fiw4/6JBz+bZADMrSgGmNN0H2q1tsAj6MnmMhITtR4XHRJzG8G5SWk14CTTu7
         Izlq7+nS2adB5IWhgM6VdmHFEF6UjSrzwyQ1VB9v9kVP5OyZfJs9uVdZosdyvWzXAJaE
         iVsqdRL+v2cL8LLDQfpNFh8THfYSAb60HMy4CMBq12GuZXLM16X+j0/aGy6ft216aBBW
         gc607jH0Rkedt9p+ZNlriyEeg5TV+WEQhX6euUJbOj1ac9gg7XCxN6HZjoA7PBj0K8XW
         MKKG9AEkwG0Wg6njcTSaFDFr0pHaJ9codUJ0xFPmeCsT3usWSVWDZVVi2yVkvt3bu12e
         ggxA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=PpwtdwgF;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+a1627a52d3ab203f3ac5+7534+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id t10-20020a63954a000000b005f4148684easi2629666pgn.545.2024.04.09.07.38.21
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Apr 2024 07:38:21 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-39d3-4735-9a3c-88d8.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:39d3:4735:9a3c:88d8] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruCbu-00000002Rwa-2kvu;
	Tue, 09 Apr 2024 14:38:07 +0000
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
	usb-storage@lists.one-eyed-alien.net,
	Hannes Reinecke <hare@suse.de>
Subject: [usb-storage] [PATCH 06/23] scsi: add a no_highmem flag to struct Scsi_Host
Date: Tue,  9 Apr 2024 16:37:31 +0200
Message-Id: <20240409143748.980206-7-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240409143748.980206-1-hch@lst.de>
References: <20240409143748.980206-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=PpwtdwgF;
       spf=none (google.com: bombadil.srs.infradead.org does not designate
 permitted sender hosts) smtp.mailfrom=BATV+a1627a52d3ab203f3ac5+7534+infradead.org+hch@bombadil.srs.infradead.org
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
Reviewed-by: Bart Van Assche <bvanassche@acm.org>
Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
Reviewed-by: John Garry <john.g.garry@oracle.com>
Reviewed-by: Hannes Reinecke <hare@suse.de>
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
index b259d42a1e1aff..6d77c48e8311fb 100644
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240409143748.980206-7-hch%40lst.de.
