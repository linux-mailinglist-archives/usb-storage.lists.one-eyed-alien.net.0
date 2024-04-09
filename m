Return-Path: <usb-storage+bncBDUNBGN3R4KRB65F2WYAMGQEHOMCGOQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x647.google.com (mail-pl1-x647.google.com [IPv6:2607:f8b0:4864:20::647])
	by mail.lfdr.de (Postfix) with ESMTPS id A2B4689DC95
	for <lists+usb-storage@lfdr.de>; Tue,  9 Apr 2024 16:38:52 +0200 (CEST)
Received: by mail-pl1-x647.google.com with SMTP id d9443c01a7336-1e2c0d3eadesf41444325ad.0
        for <lists+usb-storage@lfdr.de>; Tue, 09 Apr 2024 07:38:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712673531; cv=pass;
        d=google.com; s=arc-20160816;
        b=IlXOauORUkDheexPzWdLACG71zu7xywz1AN9p7+y1smp5LJ48xbS6FRLk6XrnwjV69
         UuyCw5nKL8GlsJNKCyLQL+SZglRZNNmCNLyY9dIdMMWowzSXY9uTKEHwlTfiiw0Eh7Ag
         U16OFH32zl1j+y+4Kt3c7w6MPmYpT3XbrDGsk3SjE6fXuz3R78u1NPxZ9iwUzcRrgiYX
         akZeVqkIfGGPHvSJQvEM34DpMmykYP7CZDrAdVTrUkU+f67Ix/jkAPnrFY0K2sjUEWP6
         R5/XEeaUvGlzBSynvvBnXkQLriK7uoVCEk0pTnm+Ml7G6YhjQWqhvYRzu/UO715B16sJ
         SWPw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=uBEqGJnTiF4g24EwekF4WWQLZZnhonw5r5GT6BTJuig=;
        fh=mRQFw28r6IpGTSnLlv5NPdEiwbh0sqIQ1wojNmf4JvM=;
        b=arc4Yo/9rqMMBH1219KGhD1LJh0To8iHxiutmOu52yxPymExkwxrL3GqnWi+E4dU/3
         6GevJVJ7ePmwrWuSmJahBCvVqH2hkD3G1Gkh+C+pigrgvcPh2DkRFVoeEnlgCIE0Y2M3
         XcdC5BdU67hi2AMunn8yCBdMci8Yk5ha+oA+S0TlYv37LVL6szCu1Uyz/lsWJ/Sp0ebZ
         7/+ndqbBABjkqBh1ZAnIuqR6nzkohLeiry4NB9F7bKcMWYd4whOExFHMbQgPRS28ZiT8
         TKLXeEXte+yMfCb5HQF78OpiKEZI0+WTfR41DXFgvreXucER91JyUrAe6YDvFCkVuTze
         Nx+g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=yf8StvHH;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+a1627a52d3ab203f3ac5+7534+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712673531; x=1713278331; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uBEqGJnTiF4g24EwekF4WWQLZZnhonw5r5GT6BTJuig=;
        b=WzyC1hKNt6Xp/HNWPRlzNh7JDx5YTnqD8AQPZkW9+ny3U72SyW7h9luHb3lQOXYpoZ
         CrAPOgFaG51aBkgQklTvtN+VT5dUrnlUXnWVK7J6qhTjX6duZ8Lv0sLaRfldtzU3K2fb
         UHY6xB1Tqo2oEbiPXEyajELyVMS2870PsdQDo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712673531; x=1713278331;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uBEqGJnTiF4g24EwekF4WWQLZZnhonw5r5GT6BTJuig=;
        b=p+VUtroaUj3TNQ3mhOgNW2RGJzGPJrdTMTHZSqyuLZ5/cZPDZW+4GYe+zTiRSodiHh
         YrWgA0U+LsyX15GrRQa562Upy+r33sR1imX4YcIsrAg0MyZcQEmc2qzw9yO4pHP1xvQj
         oP46DFI6/nnkK53S5hNW2aX5wT94J6wGXGmhy5n3Shlnmrvxj6WxKmDKn6nHBFJGOj05
         10hRkCW+gHl/BEwbzBvNHuYqOCmp2WIMQTADtLZWg/Fz28jiJqlEwKxmFh/79VL3/mpz
         x8tjWlas5Zi5ACZWnd2qrBLUAzU2sfXkLkpC7/XFGdzgfBxihtGODi4xHEoPSmVaJ++4
         2bvA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUCo7i/PLaHl0F4vUmwg0GoreoIZ//+neDYFv0okL4DkIu2atoFgLqZVznGIzJ1KwPFfb1wq+9qk8P1Sr1g/AWJVS2VlDl9POvf
X-Gm-Message-State: AOJu0YyytFZus44O2aCQfXkbmXORKwdJRcHjVKDJ1vghV5A1avHgBWtL
	85TbLI2oTMd8r6Y87jjyIjdGoRs3odqhNYRBdAw4LXUiklYi2iphpmpa8Vk9Hsc=
X-Google-Smtp-Source: AGHT+IEWzA/zJFgiSDpMm4odsSaNO4gK7r9hnwbxwjDQPfp+RZOthCsJtHsIdmaLbIgBmktyRpGwPQ==
X-Received: by 2002:a17:903:238b:b0:1e4:3f6d:20f6 with SMTP id v11-20020a170903238b00b001e43f6d20f6mr5563437plh.30.1712673531208;
        Tue, 09 Apr 2024 07:38:51 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:ea0f:b0:1e0:cd8a:58b with SMTP id
 s15-20020a170902ea0f00b001e0cd8a058bls3599585plg.2.-pod-prod-01-us; Tue, 09
 Apr 2024 07:38:50 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVER8U2Gjakua7y3viavGawvbKKj3T9ZcnAsIYXl4LD09fvM4Fi//lc+htODC1HHkXscbho4puNkvK28zoHO+yNYK7xaO6jtDrz9uCNKgh45/QRmI8=
X-Received: by 2002:a17:902:bd97:b0:1e4:3429:cf1 with SMTP id q23-20020a170902bd9700b001e434290cf1mr5143981pls.33.1712673530026;
        Tue, 09 Apr 2024 07:38:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712673530; cv=none;
        d=google.com; s=arc-20160816;
        b=YXRXZS+xXSiM5tuuWxj2HdqvoMlgb5WYFBpDCBinEBxviowSlrIJE5HwDBhv8RuG08
         SE+wMKeERMnhaWALyBv9+FcYN5Ukg0QUYkC3GOthfxF8e/M+F53434v1KZM3yaUsJfeB
         bOuZ8X5hiVd1Pm6KuY9ckciobyI/NxdscKOg6wxTPsB9veYic/iQTCw+FVtNVABJydOW
         4lDlx6DagnMUjNmnv8SgmiTBraMwNcJfYI08BdoPKcZJ2NIxRKm/fWgKTBovRoiLjY1y
         m5NA5dI2pHFkgHbq13u25y+UuvLAptSijjQqB8F/u44Vla+bckIizisJEtqM3YbiwazH
         29ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=bgTY6jxHS96XqmiG7/hrLio0Tc7FMdntpATfuYvKN6I=;
        fh=UaGMtZo/2j1iaYITUnmtOwHBR7+4Khs7sTR53qT7wM8=;
        b=0CkCnKL2aSdrRQVA9/eL+ME6KHCwoL+oBZOdtP+XKGjr6EmWcFSuLHKTnHk+8Ly2XP
         Ww9yH1Y6SyMDOXgP3t286yy1lcPXvIunVKq5T9aQfIaWLws2v4RcnON13kBYpE2FksIE
         xvqim1tAz736o3MfPG3Gg+U5s2NAXuoMm9dq6/9DJMuDEdrSMRWtC6wGO+XPvFpDHbXt
         9tllzGpc4D+r/zNmI9XmE1CpBAMTm13lAwwiiMcbYCEb+FLTy6OplGxQ/JxCMdxYrjmS
         Usy3XxwqGxzYeLlTg58r5O+Y+Xjug2pLj2vVCrGXfbZyGClkNft0NQttfywO0vtrmdW4
         A3uQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=yf8StvHH;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+a1627a52d3ab203f3ac5+7534+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id im16-20020a170902bb1000b001e23779a9edsi7780113plb.512.2024.04.09.07.38.50
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Apr 2024 07:38:50 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-39d3-4735-9a3c-88d8.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:39d3:4735:9a3c:88d8] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruCcS-00000002SDd-0iWt;
	Tue, 09 Apr 2024 14:38:40 +0000
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
Subject: [usb-storage] [PATCH 18/23] sata_nv: switch to using ->device_configure
Date: Tue,  9 Apr 2024 16:37:43 +0200
Message-Id: <20240409143748.980206-19-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240409143748.980206-1-hch@lst.de>
References: <20240409143748.980206-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=yf8StvHH;
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

Switch to the ->device_configure method instead of ->slave_configure
and update the block limits on the passed in queue_limits instead
of using the per-limit accessors.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Hannes Reinecke <hare@suse.de>
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240409143748.980206-19-hch%40lst.de.
