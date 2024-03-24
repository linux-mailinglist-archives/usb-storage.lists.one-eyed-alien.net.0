Return-Path: <usb-storage+bncBDUNBGN3R4KRB6P2QKYAMGQEBAVWX2A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x48.google.com (mail-oa1-x48.google.com [IPv6:2001:4860:4864:20::48])
	by mail.lfdr.de (Postfix) with ESMTPS id EE1C58882BF
	for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 00:55:38 +0100 (CET)
Received: by mail-oa1-x48.google.com with SMTP id 586e51a60fabf-229fd0cf3b5sf998352fac.0
        for <lists+usb-storage@lfdr.de>; Sun, 24 Mar 2024 16:55:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711324538; cv=pass;
        d=google.com; s=arc-20160816;
        b=yS5EAdi3unJl2GFNVx+z4RzR/+M2yo+CWdFVjKi8YuW97ZmPmsZMWOkORQLWvfu+k9
         6aYwFnFKwJZfYKsEMTBs8mDQO+mH3CwxDgKBjn3c4iLUD83AririI7rF9pamfUkCvaqf
         1f1Na8LPo0VABPppLhCxZg9ta5dFoWPk0qu4qYcPOllBzbikrID/dvLAO1OeMxMLoI5Z
         zfcmxQP7Dou4+j5RG15iqXlL3tXgsl7fy8TVVvACXhvKZIdxADeSe9fP2tXVSeF+7Llb
         1oPIHYg2v5lUPYOPPDNZti8R6IsRGcUnM+Xyt8uMbZeIVEAOD6sJC/Lbnvunnrm4QUr+
         9TJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=lWV3/6Q4LgG3grkYxZQBjQHkDskLn4XnBPFrpJfmM0A=;
        fh=0y2ZlgRLQwyI+uRqqGnIHe61wBNYzg6Z1P2S/2RZ7sE=;
        b=awoB+5RmO5NrCcqHaL0R3PZO5E174HHl0gqhEshfjR6liTjjXWtDjfmV77kizcXB2Q
         AjeBVADe6Bg13HlWbJhx9bS4zAW/28GbVvZkeHkRQJh+59/i3iao4/bPs+K4VT0C0Zqc
         SZopQO/gLJ+qL5n07NDeVLbGgKhqLG4hJQB1pv4xQDnr2mQOqW2w9fQfPAd3A+x4PzXV
         51jdAR6H/pBmdccLy5Kt+wUK2gvQgy8isx5KKluePipLgg8aQZlpfX6Ti+pSjzit6dDZ
         HMJsNEPqjShSynV5at5kRTHHqnJo8Ir3rgVTK/KjxFRmKiBcCwDRHgoCoijui9r0mdnE
         8WXw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=2dDQODCm;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711324538; x=1711929338; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lWV3/6Q4LgG3grkYxZQBjQHkDskLn4XnBPFrpJfmM0A=;
        b=H0H7DwMat6W30vnfYv8dvWLGTZQp+5FAPVbmncAHF6iIJQJxyu0ZbM11Q/1C4b8IB2
         YSgiSdMzGUjOJcsJAy0nHDIPBF/K+U2O+sa6HDzz21xKQTRvpeTYMPkqxf00wA4Vpfy4
         8WPdsEKOdbL3SehAhs0RtZvoIhKK7pnHVsGC0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711324538; x=1711929338;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lWV3/6Q4LgG3grkYxZQBjQHkDskLn4XnBPFrpJfmM0A=;
        b=b2YYagQLXx+OjbmQXtSkaclcjzIToxmyp4balPZqDTOkOln0wtQh00TxrKOVNgfdeL
         aB5ia1cWXtRZJglXfVb9cDaEuI5CDuIZRGO2yqQkpXsLl4v4f7HgHWenw7nocjNbotRn
         MsGsv22o7IEBj0OFSGPoZzvT7+HdFwq0uACJNRYj3rjXW9ugX0+6+Wqbjvnss54lu6Vd
         4OIdbeJhnEMaPlFq8HL24gSKtD475uQCmOyoXBbNoZ5OV8CbDXCIOglFIPlCckzjQUeB
         0dnQ9us62vry4c6bdtrN06oa/Pm+nkFqZvMEY/qfeqrMLbRi7cyK5MsfjE/Nu+zV9QHQ
         XWYA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWFd/LJ/z8zIEZobqwmc4pwlp0Kak+kEmCjckLgV6kc/GlIym+D3UV7Ga6gHg1ysR8l85gaUFkHYjArCQIyNrOlEs9jsv2YlWTh
X-Gm-Message-State: AOJu0YySa3GRVTTWDQn/or51ye6Kb8kKgCdflmDyXXUarC5ziZeT82Pc
	GfD1HZu4YQkQqzdqLCprHoObvM+cO0nbt8RIr4sqW7CTA4sGG6uprW9i7MAwhK4=
X-Google-Smtp-Source: AGHT+IGZ2X3bjVgK5HLWdeiFb7UE03YWKi/suC0vfE6w2E62KMTGGEB+9+ghf+06kBB1OdfTS8BfoQ==
X-Received: by 2002:a05:6870:1004:b0:221:793a:3b9a with SMTP id 4-20020a056870100400b00221793a3b9amr5000754oai.40.1711324537798;
        Sun, 24 Mar 2024 16:55:37 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a62:53c4:0:b0:6ea:952e:1bed with SMTP id h187-20020a6253c4000000b006ea952e1bedls697494pfb.1.-pod-prod-04-us;
 Sun, 24 Mar 2024 16:55:36 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVPleIP7rNxTRt4j6DF70r2zPUYBv45jnMqIAQ+3vOjuXJlCYiVN0Iy2purlr6UvfSmPEbmDNlW5PQ05kGXpRLFyeNWZ98lpby/AfW2Dvlu2eZ5Amk=
X-Received: by 2002:a05:6a00:84f:b0:6e6:f9b8:38eb with SMTP id q15-20020a056a00084f00b006e6f9b838ebmr5391199pfk.21.1711324536619;
        Sun, 24 Mar 2024 16:55:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711324536; cv=none;
        d=google.com; s=arc-20160816;
        b=wKOQjbjH1AKLoWUpDjTh7Ag/DhvaUMnPkmxWkl4PA+WQ1SX1rJ4aYD53nlV9jzQ9n1
         HbPCmu9rRqHb/6ETDRtyvw1eJ8MFUYQFjnWU+ZgbjHIDpZWr+C5EJCpVqbSdR+yOeD8f
         M31j+EWFhe4QskJ8h6BBiEtb8jxx34wTbuVMmcdbHkuSNCwEqZxlyC9x3LVhKaJwSGuC
         Yy0sBPvsdz1ln9QGiBB/0T5sS/ydg5a+Pqbs6RmleKNFlOu27/4bCvn2mDLuxVo5If/X
         k6Ic6hB8mLDd3L8sdlQkauIh1Y8ATdzS0rRk5dDmveVSki7t5eDQXBY0sU62bJpMleLm
         +8Ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=JVG9pbbeeSXQ/roJTY2dlwsI7Lw+oBvV+4eIuCwzqu8=;
        fh=t86CCijjmN/1ilkIT+VdM3oaZOxEhtNXSf8+ryhWOUU=;
        b=Necce8pfEo/jYq95DwaxONmZWi8y4wQdurKW0D/HkCoT7UpY10RgMoZvCAI7HUrlu4
         ua2LNnduOX1TBEmLBOaMkrKHULxQvfdKXqWw5F/cK9B5s5TgePknmcPYeImcA5tAXnxh
         ubMSnttdoRJXxLvPAai4Xuv+FgYADtriBBNZCQ/F0VBxy0Zfx5ZLhxEd+B6xU/+Iwe5s
         e7eo6A+cAtaBUvNPuOzeklODHsG9VjLFdIIsYasijIoU6rP4dYkQri5EOiRzrD/iAidK
         GnpcLPMqDLYryG+6YalRbQgyEeRtNIJBzRDtLFOV3m/bwLQ/IrQcTYMIrmjjFYoLP2y8
         F3tg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=2dDQODCm;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id a23-20020a62bd17000000b006e6b7ae88b1si4026438pff.287.2024.03.24.16.55.36
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Mar 2024 16:55:36 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [210.13.83.2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roXgT-0000000DzTW-02q0;
	Sun, 24 Mar 2024 23:55:25 +0000
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
Subject: [usb-storage] [PATCH 06/23] scsi: add a no_highmem flag to struct Scsi_Host
Date: Mon, 25 Mar 2024 07:54:31 +0800
Message-Id: <20240324235448.2039074-7-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240324235448.2039074-1-hch@lst.de>
References: <20240324235448.2039074-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=2dDQODCm;
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

While we really should be killing the block layer bounce buffering ASAP,
I even more urgently need to stop the drivers to fiddle with the limits
from ->slave_configure.  Add a no_highmem flag to the Scsi_Host to
centralize this setting and switch the remaining four drivers that use
block layer bounce buffering to it.

Signed-off-by: Christoph Hellwig <hch@lst.de>
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240324235448.2039074-7-hch%40lst.de.
