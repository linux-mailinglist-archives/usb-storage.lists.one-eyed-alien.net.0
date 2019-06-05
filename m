Return-Path: <usb-storage+bncBDUNBGN3R4KRB3FG4DTQKGQEBJPHAMY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x447.google.com (mail-pf1-x447.google.com [IPv6:2607:f8b0:4864:20::447])
	by mail.lfdr.de (Postfix) with ESMTPS id 652CA363EC
	for <lists+usb-storage@lfdr.de>; Wed,  5 Jun 2019 21:09:33 +0200 (CEST)
Received: by mail-pf1-x447.google.com with SMTP id x18sf10057485pfj.4
        for <lists+usb-storage@lfdr.de>; Wed, 05 Jun 2019 12:09:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1559761772; cv=pass;
        d=google.com; s=arc-20160816;
        b=wWVIyPXA5SkywT/5dPPsYZ5pXwehek1BnhQqcepNedpFxkG+TaNHlpjh7BdbM/BTRP
         fCnh0dHabzqdGipCH1XRK9LMJSbUG1PFDLZfm6ttTN/+65HDMckacAER1IAMLmx2TAF5
         l1kN6yKDOnVzLTKLDWP/XhVe255CcRWD37n4DvmL3N2f2+zdeUQK1kn3eHakKnqxYJE0
         x+A5tEACZlIPy6U8apHbL+QhFoyfieIOeUcyAttfOXM3czjdo+1vCtlHXT94yX2ERuyz
         hRC5ZTkDOQarFuzY+LTm/S4k6EuedxMtNENaY38IRj/JHipM81nzBQTBqS7bD783wGen
         3J+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=9YtDN/of/4QzrbdTPju17q2IIkD8dfSTyzQBLP++pqs=;
        b=XCTcKKnm7r6ZlcEufKJ8+bL9Lkn3U3XMKwlQLJuSlywmDWu9ekWNT5RPqOZ6BM5izB
         jYynXCFqvGMSgAtA033W3KvkEX67odWsO+PYNw39eTymTd1Rzvc5wQ7M3faI3AnNDfZ7
         6uQ4Yw+HRgGclcD+hlbcttubAschPU5pCB/y3uexFMYK7NI3QuT18qb6+NZDDtTG3ZH2
         cMckKIbQ+2aVn100XHwjoGIHsq7keJiTVLsnoPDWd/9IkyyVIu9FmbF2Bew1iLWgQ393
         EzszX6r6Oy2JOYFvDYM9n3Bdz9+HVbzUcEpfGUZwJNMMY1yrLRu6HGCWhA+nqEEaYs5E
         oXMw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=hZ8MIFGc;
       spf=pass (google.com: best guess record for domain of batv+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9YtDN/of/4QzrbdTPju17q2IIkD8dfSTyzQBLP++pqs=;
        b=Ht28xgCioI+h2YRXjR1YzCWi5yZQSSf3SB+AODKfnrw7EFcqieGsIvvayfTj+4qkKb
         /asZuoqJ3M7i3C3MdJx9xBj780QTNRYUzZZhI+WgwQ4gdAjXo8MvkYj1uFLk+sSSmVbW
         eAapVZPn0Hx3WktXq0pF8/8jUGCvOkgHmXkLM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9YtDN/of/4QzrbdTPju17q2IIkD8dfSTyzQBLP++pqs=;
        b=UekMH5jxZo0mb2Ro46AtCJ/O+ewh+L1AN88HEWH4o30Arr5+Susd0veyrqOChGbQaD
         rFkNixL/j8Vh+g4g+1EHWuCSP/15e6J88vp0xG8aRUrGJjbT8nwb4W6H1snHHvqJqVAG
         Rlv8VezSm/d8/HjcnPkspGuHE9zMyocO8juhcGto7lUrlOmx5xvuxRAG9XrYsuRgmafU
         xNO2Dso2mHaqp44w+R0yVhQJbCF+l/FoNVKBsTApCN3OU6ixw5movZNGF+ZnKiY/16lC
         KSm9gVpKP9Nh8MZJQ0cKWY3RsVF8d6WXomdMU5VnGCJsXy3Kw64/jWofsKHlSjnN66z7
         J5Yw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAU/wK/49xRrQoA6rLd4diORtxhgfrZtdWPOIm7vr0ZFWMTqK4e1
	nNX+YDBT1X59CLMtMbbJCeM=
X-Google-Smtp-Source: APXvYqwDKgvsmJlwR1RGJsdRe3Atcqt+bcEA64medY9np2TxxLhxwFEh6Ypz/sHV3iILAwpWloNECw==
X-Received: by 2002:a17:902:54f:: with SMTP id 73mr45205127plf.246.1559761772083;
        Wed, 05 Jun 2019 12:09:32 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a62:28ca:: with SMTP id o193ls743345pfo.10.gmail; Wed, 05
 Jun 2019 12:09:31 -0700 (PDT)
X-Received: by 2002:a63:ee10:: with SMTP id e16mr300890pgi.207.1559761771721;
        Wed, 05 Jun 2019 12:09:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1559761771; cv=none;
        d=google.com; s=arc-20160816;
        b=Ws7HohmGLDbcqrJAAL5hHpW+urOu4kO1ZCR6/K5NeksN5CMGQsBOHOZC4ZFeexZCYQ
         4DcIwQru94UEl9qla7xVqGrN+Cnla5G55S2tWhca4his0L6aE8GJdVC2Ezy7xxN8A5GO
         DgWhF+95a85jftiHySxEVjv3qcGZHtJTv7HBEKUFC4Wd/yonILupnGXr1LzQZNS6THPy
         i0S1fT9IFFOUlxHyy440kok5z9FCPIWjh2WnajrfFn0iNXkDIumOrxZoUU9dlNewvz3s
         vaZjoq3bf0ebbyV9IRxsNZf5ajLutNP/5oq80qbQp75sWn3TI9PN2gVvM61VF9sfwkcA
         adSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=AE7g989qIO1VkopksP3RSlALL0SU6gZzEPZFVDK3h6g=;
        b=PO0jiFQdNzYkxnHkZFEjpcbCuH5ql4iKwM+WYcGgt5pn7e/WycsL82uCz+a8WlVqfD
         ichabC0MUu0nHjpjgRQm6YS7xbKUhk/eoGfa1snZQ7rgMFsrSIordTZcAKZhE+qDYQTO
         27IlDT5WLQQtzJgzpkM5ULXWCpWn2JAGT40JQZ337Ps+KmUVPhsF9ehtZXcCybEO8BFl
         jNbHHIGOuSeK3cfT+VHw6AytDhlg4gMvMALOENRbcYU/9fR4hkecmQuN6GYTRmTDkvlC
         8ACFPIr+XXmuaIyfGiihP2dP8bdsX1/oAjYBL9/F1V+iJbHgRBIaSxVcFhnYCKBm2q+4
         OFEQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=hZ8MIFGc;
       spf=pass (google.com: best guess record for domain of batv+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by mx.google.com with ESMTPS id g23si30509874pfi.153.2019.06.05.12.09.31
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 05 Jun 2019 12:09:31 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of batv+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from 089144193064.atnat0002.highway.a1.net ([89.144.193.64] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYbHh-0005zB-51; Wed, 05 Jun 2019 19:09:17 +0000
From: Christoph Hellwig <hch@lst.de>
To: Jens Axboe <axboe@kernel.dk>
Cc: Sebastian Ott <sebott@linux.ibm.com>,
	Sagi Grimberg <sagi@grimberg.me>,
	Max Gurtovoy <maxg@mellanox.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Alan Stern <stern@rowland.harvard.edu>,
	Oliver Neukum <oneukum@suse.com>,
	linux-block@vger.kernel.org,
	linux-rdma@vger.kernel.org,
	linux-mmc@vger.kernel.org,
	linux-nvme@lists.infradead.org,
	linux-scsi@vger.kernel.org,
	megaraidlinux.pdl@broadcom.com,
	MPT-FusionLinux.pdl@broadcom.com,
	linux-hyperv@vger.kernel.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] [PATCH 10/13] megaraid_sas: set virt_boundary_mask in
 the scsi host
Date: Wed,  5 Jun 2019 21:08:33 +0200
Message-Id: <20190605190836.32354-11-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190605190836.32354-1-hch@lst.de>
References: <20190605190836.32354-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=hZ8MIFGc;
       spf=pass (google.com: best guess record for domain of
 batv+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org
 designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org
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

This ensures all proper DMA layer handling is taken care of by the
SCSI midlayer.  Note that the effect is global, as the IOMMU merging
is based off a paramters in struct device.  We could still turn if off
if no PCIe devices are present, but I don't know how to find that out.

Also remove the bogus nomerges flag, merges do take the virt_boundary
into account.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/scsi/megaraid/megaraid_sas_base.c   | 46 +++++----------------
 drivers/scsi/megaraid/megaraid_sas_fusion.c |  7 ++++
 2 files changed, 18 insertions(+), 35 deletions(-)

diff --git a/drivers/scsi/megaraid/megaraid_sas_base.c b/drivers/scsi/megaraid/megaraid_sas_base.c
index 3dd1df472dc6..20b3b3f8bc16 100644
--- a/drivers/scsi/megaraid/megaraid_sas_base.c
+++ b/drivers/scsi/megaraid/megaraid_sas_base.c
@@ -1870,39 +1870,6 @@ void megasas_set_dynamic_target_properties(struct scsi_device *sdev,
 	}
 }
 
-/*
- * megasas_set_nvme_device_properties -
- * set nomerges=2
- * set virtual page boundary = 4K (current mr_nvme_pg_size is 4K).
- * set maximum io transfer = MDTS of NVME device provided by MR firmware.
- *
- * MR firmware provides value in KB. Caller of this function converts
- * kb into bytes.
- *
- * e.a MDTS=5 means 2^5 * nvme page size. (In case of 4K page size,
- * MR firmware provides value 128 as (32 * 4K) = 128K.
- *
- * @sdev:				scsi device
- * @max_io_size:				maximum io transfer size
- *
- */
-static inline void
-megasas_set_nvme_device_properties(struct scsi_device *sdev, u32 max_io_size)
-{
-	struct megasas_instance *instance;
-	u32 mr_nvme_pg_size;
-
-	instance = (struct megasas_instance *)sdev->host->hostdata;
-	mr_nvme_pg_size = max_t(u32, instance->nvme_page_size,
-				MR_DEFAULT_NVME_PAGE_SIZE);
-
-	blk_queue_max_hw_sectors(sdev->request_queue, (max_io_size / 512));
-
-	blk_queue_flag_set(QUEUE_FLAG_NOMERGES, sdev->request_queue);
-	blk_queue_virt_boundary(sdev->request_queue, mr_nvme_pg_size - 1);
-}
-
-
 /*
  * megasas_set_static_target_properties -
  * Device property set by driver are static and it is not required to be
@@ -1961,8 +1928,10 @@ static void megasas_set_static_target_properties(struct scsi_device *sdev,
 		max_io_size_kb = le32_to_cpu(instance->tgt_prop->max_io_size_kb);
 	}
 
-	if (instance->nvme_page_size && max_io_size_kb)
-		megasas_set_nvme_device_properties(sdev, (max_io_size_kb << 10));
+	if (instance->nvme_page_size && max_io_size_kb) {
+		blk_queue_max_hw_sectors(sdev->request_queue,
+				(max_io_size_kb << 10) / 512);
+	}
 
 	scsi_change_queue_depth(sdev, device_qd);
 
@@ -6258,6 +6227,7 @@ static int megasas_start_aen(struct megasas_instance *instance)
 static int megasas_io_attach(struct megasas_instance *instance)
 {
 	struct Scsi_Host *host = instance->host;
+	u32 nvme_page_size = instance->nvme_page_size;
 
 	/*
 	 * Export parameters required by SCSI mid-layer
@@ -6298,6 +6268,12 @@ static int megasas_io_attach(struct megasas_instance *instance)
 	host->max_lun = MEGASAS_MAX_LUN;
 	host->max_cmd_len = 16;
 
+	if (nvme_page_size) {
+		if (nvme_page_size > MR_DEFAULT_NVME_PAGE_SIZE)
+			nvme_page_size = MR_DEFAULT_NVME_PAGE_SIZE;
+		host->virt_boundary_mask = nvme_page_size - 1;
+	}
+
 	/*
 	 * Notify the mid-layer about the new controller
 	 */
diff --git a/drivers/scsi/megaraid/megaraid_sas_fusion.c b/drivers/scsi/megaraid/megaraid_sas_fusion.c
index 4dfa0685a86c..a9ff3a648e7b 100644
--- a/drivers/scsi/megaraid/megaraid_sas_fusion.c
+++ b/drivers/scsi/megaraid/megaraid_sas_fusion.c
@@ -1935,6 +1935,13 @@ megasas_is_prp_possible(struct megasas_instance *instance,
 			build_prp = true;
 	}
 
+/*
+ * XXX: All the code following should go away.  The block layer guarantees
+ * merging according to the virt boundary.  And while we might have had some
+ * issues with that in the past we fixed them, and any new bug should be fixed
+ * in the core code as well.
+ */
+
 /*
  * Below code detects gaps/holes in IO data buffers.
  * What does holes/gaps mean?
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To post to this group, send email to usb-storage@lists.one-eyed-alien.net.
Visit this group at https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190605190836.32354-11-hch%40lst.de.
For more options, visit https://groups.google.com/a/lists.one-eyed-alien.net/d/optout.
