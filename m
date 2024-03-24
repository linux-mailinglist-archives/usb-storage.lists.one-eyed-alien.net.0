Return-Path: <usb-storage+bncBDUNBGN3R4KRBLP3QKYAMGQEXITLF5A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x448.google.com (mail-pf1-x448.google.com [IPv6:2607:f8b0:4864:20::448])
	by mail.lfdr.de (Postfix) with ESMTPS id BE29B8882E0
	for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 00:56:30 +0100 (CET)
Received: by mail-pf1-x448.google.com with SMTP id d2e1a72fcca58-6ea80a33cf6sf2155948b3a.1
        for <lists+usb-storage@lfdr.de>; Sun, 24 Mar 2024 16:56:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711324589; cv=pass;
        d=google.com; s=arc-20160816;
        b=KyyjGlIP8bdS6pTeloU1pFlOWTp0iDKSWOuPbiO3XKP2FgalkrJOoPSlVWmSZLhjmW
         VhvwdWEfN7GHkEJrMCueRbHsLnbh0pGDHKpP3ffHkNwBFLRdMO6q8U7owY/kVZYXDmTy
         JF1auATFNVPA27JTPkHfJE6EiRxR3NzPp5y4zBn3V3GHJa3YndSzuhRxsKGT93FmK/q8
         P+cemA3TCVc7WbP/TaqQ/qt8RrwyCdZFJxbiz2UU+BbnAKb002mpSwR3HV7KBD35eOTr
         M6AkjokCETxS+LkXuSRf4QZxaF3O+WlTcNHpL6AafoFtkI2CfgQ+lbpEOXXAv8OHlkbs
         jGRA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=UxLe34NbkFy5Y7fVqNh6MnS7rUuhVFLmuiJQPnGwGu4=;
        fh=mLfgDelQ5ryYlZCLBPl79q5yE3XxfarrmAqZQLz9SOo=;
        b=04GPFnyUzjGLInaa2tPbIk9zxkuOEg+4Kxy8/Dw3xtUKwOPFiYnp7MbtDglv5jsv3r
         M7FrrDE4L79e14I+1vY7iMzAiB1IgyYpooUvy2p1qHtdIAkj2W6eDltXMydCCqJafgt8
         jQ238hrskhRjMZMhXAdBAJqObGmeTqCsN/jCTzv6uOxkUEONkHw5aHPy8anTB8znvwDL
         vPdC9sxlg8osRQgUVsNTBrqp+PBod96bxAlPa4EUZ4B/QTb4/IFOMt3bMrdzaLTuapan
         /HbE9ToiOAUWFtuRuMtrpx2iYs0GIm4VafaxKNV1oi5eR8NS5vlFgQJnecVX4b+22hr2
         xEOA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=KM+fE8+c;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711324589; x=1711929389; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UxLe34NbkFy5Y7fVqNh6MnS7rUuhVFLmuiJQPnGwGu4=;
        b=cE0XIARfmBfLsQCQOCvRizWtsrlCGOvCP5YCoFccvNafiaYXATlWFFEooeCLHL7om7
         Z7IIaUmNEZJ0lR5pO+auKnJAsT3rqPLNUjpVfTRpwsISuuEcc3BeQeCYi1XwbOxWCXhw
         4l/5Min4PvewAHFSZihPCJNSdVXVo+lruMY6Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711324589; x=1711929389;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UxLe34NbkFy5Y7fVqNh6MnS7rUuhVFLmuiJQPnGwGu4=;
        b=ddwK8tvBhmRDULCF7b2P4wlhStQSxiaRGC47SGn3Q2BwOifLckl8DcbYXktLhEc1eq
         MU2IdpqV1lYxtuQhsTshYWz7Dap8G1uQnpgY8ajAES02nBv0u4NnDLuZN9OrqxXqbiEo
         4ZnscJgnHil5NINuG8JmRvvXU6T3BvERAnnq33ptvkwrdG4JN6GldXC16A2EjOCcIoTJ
         4CSuBQP7ikZbxb7t/bIcrTr927Y+4bx5yo0GqFCMlknVdQvdnNe/yPgKZDOXZBORqWLG
         jlaAeeDLe8e0XQkuf3N/Lf/qJ1q6hF6aF5d8UZBrLDaFQoumye69pVXgGLwuaecI/iGZ
         vQ1Q==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXMuMHAsu5LZ0ZPWI0QdNPqlQVxvt108XXdvtj46G4pqfg2igP94uukQgZAITzqlvHARwxBx10wcIDWiiYtSfqghhGrzzjC2riu
X-Gm-Message-State: AOJu0Yy58Lc6Quuj0GRyN37+Nu3I/wqmAhbrbz/suSsZfnKYq0NfDzwA
	NyhwXyDgHLZy+LZpBgscOLQgklCdnjRMLoWC/aRvVPMEWbJDeWuYNs0+xgiLTQ0=
X-Google-Smtp-Source: AGHT+IEBwFZJcfHAnWAae6VYz72pYXDlj39Q/xU1CzdCXREFRJhLj0J+yEBU6oczM3V4N8vQ7zlFxA==
X-Received: by 2002:a05:6a20:2a1c:b0:1a3:50fb:4f7c with SMTP id e28-20020a056a202a1c00b001a350fb4f7cmr5228954pzh.29.1711324589267;
        Sun, 24 Mar 2024 16:56:29 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:c58a:b0:2a0:34c4:f7c4 with SMTP id
 l10-20020a17090ac58a00b002a034c4f7c4ls1600787pjt.0.-pod-prod-08-us; Sun, 24
 Mar 2024 16:56:28 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUGjcMimmCIIOtO3DZY5lsuvanSWIcn9XOGWXveT1/dVPQBYEKQQLoCMxFI9/p1Ejn1A6kyVapDT1nKQ0K0wjNqUS1zoBAs9L1w50zUvZvFUtwBZNo=
X-Received: by 2002:a17:90a:a404:b0:2a0:1167:bfea with SMTP id y4-20020a17090aa40400b002a01167bfeamr5014179pjp.5.1711324588105;
        Sun, 24 Mar 2024 16:56:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711324588; cv=none;
        d=google.com; s=arc-20160816;
        b=FqTlSn4SVv45a5Qc0264PJPwv9jmVRlh1R0D8djt6D1TSul8VRW4w7xexq3k31/718
         Ew29EzAw9pQ+iLbm09AcyrAv32kjXj1VID9NAdfyvE5OMdWAFFY4AlGDGSfUce5pgIsF
         IjzpUcDq8X1Iwi/J0Ro9JHdZgYZOhz3kmfdnY/lccvbL2F0gBrFcDb4+JkrHxdbb81cC
         g42tI02lp693E+1W7Ox6S1MAjvoOgh2ex1AECssqJ0X+uNY/DA4gIC9mPufbKGE+juwr
         u9Kbt38d4mWtGHIbQ8NVdXrW5P0LtQO03b+UrEGKToWKT2jlPyQP15xXLIJrh/VL6UE6
         bfSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=AvUf8Klc+7RB1yDG1wyQOjg5Jk0jlT3PDjCi7SYhfzY=;
        fh=t86CCijjmN/1ilkIT+VdM3oaZOxEhtNXSf8+ryhWOUU=;
        b=dpI8+3kmXRyCLfMkbxHPrrnsVE5UMipAEIFO1ldeNThmJiUb/Ksgpst07a8jeYduId
         b3JRd2IOVekfFj2/jfVcis5cDSMixKkVZZJfZfsNFhpjD3VPIZYfpbbtQ7YWuYF5qJ3l
         TjqfWFJBNrB5y8h59TLSL0HpAyWpM/ZNPNT04bGNiY+D2fruJSBbkYo4OclbZjGqCMM0
         GLdRBN0sD4ExFfKl6ba972vlZiw9ykKnxVkyopvWFFa7/JNYjd/7vgwB13JD6mB3OsMo
         By/Csy+035hdcPHIDmRVJrk/LpFHHlA7yMdUfmAKg4ytWQ9/0xi3Nee6t4EF0FGjE08A
         sP1w==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=KM+fE8+c;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id o1-20020a17090ad24100b0029c614c3f5fsi6447690pjw.149.2024.03.24.16.56.28
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Mar 2024 16:56:28 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [210.13.83.2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roXhF-0000000Dzm6-3Hji;
	Sun, 24 Mar 2024 23:56:14 +0000
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
Subject: [usb-storage] [PATCH 18/23] sata_nv: switch to using ->device_configure
Date: Mon, 25 Mar 2024 07:54:43 +0800
Message-Id: <20240324235448.2039074-19-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240324235448.2039074-1-hch@lst.de>
References: <20240324235448.2039074-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=KM+fE8+c;
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

Switch to the ->device_configure method instead of ->slave_configure
and update the block limits on the passed in queue_limits instead
of using the per-limit accessors.

Signed-off-by: Christoph Hellwig <hch@lst.de>
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240324235448.2039074-19-hch%40lst.de.
