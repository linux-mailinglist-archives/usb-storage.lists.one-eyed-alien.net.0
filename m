Return-Path: <usb-storage+bncBDUNBGN3R4KRBJ4GWCYAMGQEMTWBMTA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x648.google.com (mail-pl1-x648.google.com [IPv6:2607:f8b0:4864:20::648])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BECD89545A
	for <lists+usb-storage@lfdr.de>; Tue,  2 Apr 2024 15:07:53 +0200 (CEST)
Received: by mail-pl1-x648.google.com with SMTP id d9443c01a7336-1e0b29c2ef9sf43991515ad.2
        for <lists+usb-storage@lfdr.de>; Tue, 02 Apr 2024 06:07:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712063272; cv=pass;
        d=google.com; s=arc-20160816;
        b=o8sCMXSF6lGuV2OJo0rWpTwpT5eCf6k42MmU1PTDMcZNOFUjnHUorfPWYj4bPrzIC4
         XoAZWrUJRrWSK2cl1+mG8Kzm1vcF4se5T06NVq4ma8RaOSUP8paZBLWZnjrhO9tFewO1
         QGIodeGuzdBeh9Jh9PyryacqO968HvAgC01z1VukPQfK+0oAv0gJcQuyVk4va4Ojff+o
         +t/tVL41j1gyvmtOUJjlc1gR0UIbfWVMSkmK6jM33lsxnIgFmjSKSN/zsssJ/OSuEABk
         TsHhGd4ABI2fx8eJ2M3PIATzEMQ2jT8pz1oUrqqvkO6MTx9ueUQkYLMzcL5bhFXjeUVU
         RP9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=4KJSQTwEK4xZ2Vqd9a7lqb54Y1KVGK09kaqE5zfYwd4=;
        fh=C9XQyxEOIEX0bKsGXYp43rzJFQdP+heeE4ZDxpqKQLg=;
        b=ZzQSY9K6wjJScTD/CH6RaTMSQKc7OCGmNsL/qydAT6R+tDnyEwHwgrP3ZeUw/OyNcn
         K1Ev2t6+ItUK8Kfi41njFksSfH515uVvmnDeqrP0kd4XOjLMoJFIVHxB9ow3+aZaBCH4
         rJnXZY4iQmqvZXMHzv0wVtkHZU3UTRdfmO+iez2JrjbH52VS9mdkmcl2ctCnrO8bTyKs
         GKz5FhuHRsePFDseo8hx1Hcz+dt1t+zyLp72/xvg6ts1U0VPo+qnSwNpUw7xh+49Ica3
         Q93bz3wxd4lQaRipocQZurK0ByUjMIdeVudfUGLWRpyHkwNHPWIhIP4PyQoDM6YnJHFT
         dYrw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=tqtXs0ri;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+db5ae43edc5588e6f7b7+7527+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712063272; x=1712668072; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4KJSQTwEK4xZ2Vqd9a7lqb54Y1KVGK09kaqE5zfYwd4=;
        b=YclYB9hJuKjYm2tyaXYdZXnJhe6XC66nZEgJ9/+ilsO2dn+JU/lzqscHPzwU+lAABi
         HdRGeiG/1k6rTMPUtyI9c2MJJVjqJ2iFtbU8Ev4Tfc68fqWjPBFSa+y5vhsmLY3cXNfo
         cJIBkxmbaOpqP9FqLmjwn+ocIriAkCwq1IL/8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712063272; x=1712668072;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4KJSQTwEK4xZ2Vqd9a7lqb54Y1KVGK09kaqE5zfYwd4=;
        b=QhV2OfUYc6vIIdd5Fz8dfAWRkqyQBGTJ4S0q9sX4HEdt0XVjkwE3oYTDlE7/Fz+Mo7
         C2Aq5MvNxg/HgZi+I0sHq3mBHppVyfAcX7NWnwXFhnqJsOFgzs+dTPLL2mz2tB9/m6tS
         BXVBorFd2zCxFgf9UkvJ7ZB57W00Crmk6Lgz9USA+o9+gy82nP/JQe0kZx3mjbrCgNVu
         mLGjLDskBiyULz3Y2Szen/xyDwrg76cG4fG+8NOZKCcMNcnVe0GsfuGU/RIEkHL2TLXf
         /w2Q04xnD8NwOSlJOj/gwyTolebE9TVCjaHEveEiWxLd0AEKv/x/nciZxRUnAdW44sdO
         ZzcQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUk4Wwq4y9KEme4OaIw0uZVtbE7eeWVV/XxHFE2uarCfvl/o++RVfPLb7VRIi9EzTEDvCSyUIrzEbkxfJBsJ3uNQO9w4s5ltdgS
X-Gm-Message-State: AOJu0YyYYyWzbQTNpdBvp5i6qYSuDfPX16z+JEqxyyPAHxdNfyT1Uxd4
	MnyQGX2sBei6YZBJxhEsg7rwQehDNDZkLqzmSehZjUX+5QIpXDpCoLQ9db6ReUg=
X-Google-Smtp-Source: AGHT+IE0lUkD+0e6edBCV0R7EDtRDvf2CShf8d6SdGDYDvumta6l2+X5mN3G94plA92cKLjzl4ezqA==
X-Received: by 2002:a17:902:e750:b0:1dd:b73a:352c with SMTP id p16-20020a170902e75000b001ddb73a352cmr14927220plf.53.1712063271841;
        Tue, 02 Apr 2024 06:07:51 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:f707:b0:1e2:408c:6e07 with SMTP id
 h7-20020a170902f70700b001e2408c6e07ls2571527plo.2.-pod-prod-03-us; Tue, 02
 Apr 2024 06:07:50 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUKX3lStMQ6BOFZOkLegJzpYgvqj9prEHtpcH9GrIiHPx9NR/wf1GWaiC1X3bUmJtcqYkk8bTWmf1l7loUHo62n5Xmm/DLv0lgFYsQixcdBMr+tB8A=
X-Received: by 2002:a05:6a21:2d85:b0:1a3:dc09:85d0 with SMTP id ty5-20020a056a212d8500b001a3dc0985d0mr14871176pzb.26.1712063270640;
        Tue, 02 Apr 2024 06:07:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712063270; cv=none;
        d=google.com; s=arc-20160816;
        b=eB5dRaDBMttbBk29ljLf2hLE1JlgmxhOKQ9STjYli1YXGfkB6lXqt4b0nK+CPEpKll
         nv+VTPbku1G3yolUrbayU24eCB+zWr2TaDbcqiFNYUP8M1yIeK4qcEdyHeq299XUjoX2
         iNWMLY5MpNEuwiY6V8gB+85suJweK0sG/yLjaLUDtvfvyYizjyq7/kMcrf881B3Mx4uV
         xlSS3mUtqM9/toXN64r2M8nemsPjpOXHLWcc8oBclGyxegEQ1bQqRE51dSjFiAAXBxZK
         Z8zwz0+R2eVdpW5FAgWHxRCUW5DEcBuEolRhUP0Nh7FjTjNf8lnKw8O4/iMVjC5ERuUj
         ER2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=qOkEl4LzGBtF1IYhBlWHlWfGd9cjAIrcQAkh/Q3ioRM=;
        fh=q8hCIvNb5vCUXXKMpVAwbkkPDpj7PtrvAVG6ascHy78=;
        b=M8oCijFRFPs9NGnYIFhlq/QD/VeUfANX64QkYFfQNh4vEs6npUdSXVe2btM+g/mVO8
         jH0vqWhf4NVEnprlI10gZGiL6nR5Q3LuIvsV0B/CllMaMCztwt5fAgsCa4AIC25kjHYV
         PTTWLWHNF22CZLNIZ8MwtU6TPUar0+PrpBvcNXlYxoP2Pfuo28japlpiaTqw8ERv+drg
         Ga5wByBYhBD1BjO8FzGyMee57L2gYdKBDQHvxFNX3n9pKx02NXFIujFZdjBYxUbXCLD7
         +5aARaDz3NRLQz+0aJs+z18Zo2AoVOlpHMVWKgmn2JaRhYZuAIZSY4n6OF5THZaFdBMi
         ZgpA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=tqtXs0ri;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+db5ae43edc5588e6f7b7+7527+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id e25-20020a630f19000000b005cde387778esi11071522pgl.368.2024.04.02.06.07.50
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Apr 2024 06:07:50 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [2001:4bb8:199:60a5:c70:4a89:bc61:2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrdrW-0000000BFhF-1xkx;
	Tue, 02 Apr 2024 13:07:38 +0000
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
Subject: [usb-storage] [PATCH 18/23] sata_nv: switch to using ->device_configure
Date: Tue,  2 Apr 2024 15:06:40 +0200
Message-Id: <20240402130645.653507-19-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240402130645.653507-1-hch@lst.de>
References: <20240402130645.653507-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=tqtXs0ri;
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

Switch to the ->device_configure method instead of ->slave_configure
and update the block limits on the passed in queue_limits instead
of using the per-limit accessors.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Acked-by: Damien Le Moal <dlemoal@kernel.org>
---
 drivers/ata/sata_nv.c | 20 ++++++++++++--------
 1 file changed, 12 insertions(+), 8 deletions(-)

diff --git a/drivers/ata/sata_nv.c b/drivers/ata/sata_nv.c
index 0a0cee755bde73..d0a8eb0e8011d0 100644
--- a/drivers/ata/sata_nv.c
+++ b/drivers/ata/sata_nv.c
@@ -296,7 +296,8 @@ static void nv_nf2_freeze(struct ata_port *ap);
 static void nv_nf2_thaw(struct ata_port *ap);
 static void nv_ck804_freeze(struct ata_port *ap);
 static void nv_ck804_thaw(struct ata_port *ap);
-static int nv_adma_slave_config(struct scsi_device *sdev);
+static int nv_adma_device_configure(struct scsi_device *sdev,
+		struct queue_limits *lim);
 static int nv_adma_check_atapi_dma(struct ata_queued_cmd *qc);
 static enum ata_completion_errors nv_adma_qc_prep(struct ata_queued_cmd *qc);
 static unsigned int nv_adma_qc_issue(struct ata_queued_cmd *qc);
@@ -318,7 +319,8 @@ static void nv_adma_tf_read(struct ata_port *ap, struct ata_taskfile *tf);
 static void nv_mcp55_thaw(struct ata_port *ap);
 static void nv_mcp55_freeze(struct ata_port *ap);
 static void nv_swncq_error_handler(struct ata_port *ap);
-static int nv_swncq_slave_config(struct scsi_device *sdev);
+static int nv_swncq_device_configure(struct scsi_device *sdev,
+		struct queue_limits *lim);
 static int nv_swncq_port_start(struct ata_port *ap);
 static enum ata_completion_errors nv_swncq_qc_prep(struct ata_queued_cmd *qc);
 static void nv_swncq_fill_sg(struct ata_queued_cmd *qc);
@@ -380,7 +382,7 @@ static const struct scsi_host_template nv_adma_sht = {
 	.can_queue		= NV_ADMA_MAX_CPBS,
 	.sg_tablesize		= NV_ADMA_SGTBL_TOTAL_LEN,
 	.dma_boundary		= NV_ADMA_DMA_BOUNDARY,
-	.slave_configure	= nv_adma_slave_config,
+	.device_configure	= nv_adma_device_configure,
 	.sdev_groups		= ata_ncq_sdev_groups,
 	.change_queue_depth     = ata_scsi_change_queue_depth,
 	.tag_alloc_policy	= BLK_TAG_ALLOC_RR,
@@ -391,7 +393,7 @@ static const struct scsi_host_template nv_swncq_sht = {
 	.can_queue		= ATA_MAX_QUEUE - 1,
 	.sg_tablesize		= LIBATA_MAX_PRD,
 	.dma_boundary		= ATA_DMA_BOUNDARY,
-	.slave_configure	= nv_swncq_slave_config,
+	.device_configure	= nv_swncq_device_configure,
 	.sdev_groups		= ata_ncq_sdev_groups,
 	.change_queue_depth     = ata_scsi_change_queue_depth,
 	.tag_alloc_policy	= BLK_TAG_ALLOC_RR,
@@ -661,7 +663,8 @@ static void nv_adma_mode(struct ata_port *ap)
 	pp->flags &= ~NV_ADMA_PORT_REGISTER_MODE;
 }
 
-static int nv_adma_slave_config(struct scsi_device *sdev)
+static int nv_adma_device_configure(struct scsi_device *sdev,
+		struct queue_limits *lim)
 {
 	struct ata_port *ap = ata_shost_to_port(sdev->host);
 	struct nv_adma_port_priv *pp = ap->private_data;
@@ -740,8 +743,8 @@ static int nv_adma_slave_config(struct scsi_device *sdev)
 		rc = dma_set_mask(&pdev->dev, pp->adma_dma_mask);
 	}
 
-	blk_queue_segment_boundary(sdev->request_queue, segment_boundary);
-	blk_queue_max_segments(sdev->request_queue, sg_tablesize);
+	lim->seg_boundary_mask = segment_boundary;
+	lim->max_segments = sg_tablesize;
 	ata_port_info(ap,
 		      "DMA mask 0x%llX, segment boundary 0x%lX, hw segs %hu\n",
 		      (unsigned long long)*ap->host->dev->dma_mask,
@@ -1868,7 +1871,8 @@ static void nv_swncq_host_init(struct ata_host *host)
 	writel(~0x0, mmio + NV_INT_STATUS_MCP55);
 }
 
-static int nv_swncq_slave_config(struct scsi_device *sdev)
+static int nv_swncq_device_configure(struct scsi_device *sdev,
+		struct queue_limits *lim)
 {
 	struct ata_port *ap = ata_shost_to_port(sdev->host);
 	struct pci_dev *pdev = to_pci_dev(ap->host->dev);
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240402130645.653507-19-hch%40lst.de.
