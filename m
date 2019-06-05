Return-Path: <usb-storage+bncBDUNBGN3R4KRBDFH4DTQKGQEBRV4L3Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x448.google.com (mail-pf1-x448.google.com [IPv6:2607:f8b0:4864:20::448])
	by mail.lfdr.de (Postfix) with ESMTPS id E710A36414
	for <lists+usb-storage@lfdr.de>; Wed,  5 Jun 2019 21:10:05 +0200 (CEST)
Received: by mail-pf1-x448.google.com with SMTP id r12sf19215788pfl.2
        for <lists+usb-storage@lfdr.de>; Wed, 05 Jun 2019 12:10:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1559761804; cv=pass;
        d=google.com; s=arc-20160816;
        b=uOZ8mxxUTk5Bl6pRur6sC+1/nxvIMUtMS4+2h36FrQdxF5U4EGjELCk0OmDHsskyZ8
         pNYk15U7NolWszhQ85ru2r9dZJpxwr1wudd3/ALcKYYy0EPFHTSYOkUuZ2tgt2gLk6Ii
         DswhQfJISv428XqIV5FcQmWm472w0Vsf2prcB0kUvVz4aXJxTxU1ZVz0L4bAhPxPINdw
         fybNWg/yWLzHd+CdsOAQgBBDzhpVOaKLvtJgyKikcHRf+PYIDduOv/CTu7cE1hKRXuxN
         LnTMRH7zlAC8v4Glp40uebKPfTE4PFO6fKQUKLOCaz+P6RWSwfeDJN3pwBgTItMMWSSQ
         EmVw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=MfHyb4wA7HhFLKKxag1BYii0ezHlupzceIR+alJUXYk=;
        b=YzGSbYmh53jyBaRCOC27+UiBuamZctKtZ8tPHDZxv5jph6cadTH2eDVlZ+MS89enPD
         if0tGp6iKx1EEG/BeC4NzYAguVsUWg6XY+89QYAvrxDSLj+jX8k5YT/fd2bewg3tzmdf
         Okh0gM7WoYXzsZe5aCOgkCqe0ozv3ME+ZtdaaJp++QV80eWO6dZF0kgbieEfW3k3/jxo
         gXWnRZDM1CjtIUWIehp1xV7h6jsKUxVpnmaKp0qxDCprE44oejpKie/KoK46thrICFx8
         e2k3h4UNtGY7uKm9TfWnT6j14LRVjkuVYf75DeeGZ4gtjZfhwba34DAvKKNvE/ZSbNYn
         lLCQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b="M/uUYRR8";
       spf=pass (google.com: best guess record for domain of batv+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MfHyb4wA7HhFLKKxag1BYii0ezHlupzceIR+alJUXYk=;
        b=Ar5LBDGn0meHYQDbHw187YbPSuYuF3ciPx5xQ9cCB5ucRF+UOUBH3nlTi4a1mkvsux
         HY11Jj0yEsrZIAPmuYfIQtktA5R1DnZcDg1+zYovg9z1/UuT3SdtTUSOgXIqnpEmw/HW
         nv15AaNsVPGIOuUxhlF2hr5U9UW+4Fovp4pgo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MfHyb4wA7HhFLKKxag1BYii0ezHlupzceIR+alJUXYk=;
        b=JwFuIWTgu/KIRAJ5e7mg/zdoUuBtaD3SuzLsbTlhkhxCmKFXHIKOgomD7RukO3sjD+
         XuYP7DGkIQxUlqVcodKTG8VkQDRda6Aj95n0vDtwlC327FIQuIGdkFOVkATTvDEhVyyJ
         i/T3PkVbZNEG481CUKmlK7JnSX33oE0FxHKAMOjGHXpbWIhP4l4RpcOQXsBGoJKi9esA
         ymOiaprasLy17eYcLCbM0hZQl2BC9EiHnCxQguwOvmqJbdYW3RVJVT6mDNrxLM2B4C5n
         EjjWq7GNIoTUspSmKwW2JBkPKJLjSrH/tIxzcP6Uu2SJHvnryecgyf0ivtFUnD38vX1v
         hzkA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAUWt+3ZoS3hrilhrZN6/jor0YTw0Oy+zn/WIBU8Fy9satFTTXEK
	rIjkkm4h4Bbdvbx/J2sQLcA=
X-Google-Smtp-Source: APXvYqyDhvnR46Ywsfj73TmTJghknRuqWDuLrzA/fk15KRLGNbljp/9qaOfiUawusrXXP2AAWL5ZtQ==
X-Received: by 2002:a17:902:b202:: with SMTP id t2mr44651393plr.69.1559761804660;
        Wed, 05 Jun 2019 12:10:04 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:a986:: with SMTP id bh6ls733580plb.8.gmail; Wed, 05
 Jun 2019 12:10:04 -0700 (PDT)
X-Received: by 2002:a17:90a:62c8:: with SMTP id k8mr38321862pjs.21.1559761804223;
        Wed, 05 Jun 2019 12:10:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1559761804; cv=none;
        d=google.com; s=arc-20160816;
        b=safKIXYj0qG7FYIgsodHNz+N9ike6AJPQgV2/OADe6y9qidMnjU6CoJT1kcrW9b2Y2
         4lF9+Jq8nekSL4sRhsddXroHub82FZLTeJm3NLN+8OM4r2gKD+nst/yLxiVt16y86p0X
         K2TsLzOdckzU4d8XUfS3l6RrI4zKy5BtWKNBkgiAVqYoSiDC6bdbIhjOXp8F3lttEHEW
         QjOPk3itpiqGdd3KRAZlp1GpdVx4V/T0+aPkMPqqAan2wtjykBoYsEicvO0XCHoFTThD
         BgyncRYpeipNFWZUYHPZaBhetyLDIrQJk9MrQSXAQbJfPYiVUxeVn7pQLhhFE23/rwb7
         ed2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=E/iOQT4M1fyenwDbyi+jqJusuZ1NUczgmpSGXIQ2f+0=;
        b=Gr6OaMg7v5KGP27folisH0DBuueZxQXQrTa/43y6gkOtMjOoCs+knbE6xI2vCow0ZC
         CITyGIf3gXpHqjWL6p4gmQ8ydVuptIlcJFvIlpX4aqJGFBd8wRUQIpP2qsSCQMMs5GcT
         aQ7osGp/zrvugp3R06uGlHczmxVn9VvBB8zXtrktrrd0eC081Gczl08PdZma2InNXm7W
         9hs5CF5twHDry2UxZq7vsVwxBy8q+hxTZb6ZiTsTsgEE4I9hQ/UA4ACh7TudMBKSJUKi
         YZ5vxJWyJCBVVvafvNvuwDmkL0eDHmxvAQ/kDsyThtxN1uKFtpDmf1Sje6Zx3EFJ4v8d
         kSyg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b="M/uUYRR8";
       spf=pass (google.com: best guess record for domain of batv+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by mx.google.com with ESMTPS id 11si15270790pfx.243.2019.06.05.12.10.04
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 05 Jun 2019 12:10:04 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of batv+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from 089144193064.atnat0002.highway.a1.net ([89.144.193.64] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYbHk-00063E-KD; Wed, 05 Jun 2019 19:09:21 +0000
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
Subject: [usb-storage] [PATCH 11/13] mpt3sas: set virt_boundary_mask in the
 scsi host
Date: Wed,  5 Jun 2019 21:08:34 +0200
Message-Id: <20190605190836.32354-12-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190605190836.32354-1-hch@lst.de>
References: <20190605190836.32354-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b="M/uUYRR8";
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
 drivers/scsi/mpt3sas/mpt3sas_scsih.c | 11 +++--------
 1 file changed, 3 insertions(+), 8 deletions(-)

diff --git a/drivers/scsi/mpt3sas/mpt3sas_scsih.c b/drivers/scsi/mpt3sas/mpt3sas_scsih.c
index 1ccfbc7eebe0..03a0df2a3379 100644
--- a/drivers/scsi/mpt3sas/mpt3sas_scsih.c
+++ b/drivers/scsi/mpt3sas/mpt3sas_scsih.c
@@ -2361,14 +2361,6 @@ scsih_slave_configure(struct scsi_device *sdev)
 		pcie_device_put(pcie_device);
 		spin_unlock_irqrestore(&ioc->pcie_device_lock, flags);
 		scsih_change_queue_depth(sdev, qdepth);
-		/* Enable QUEUE_FLAG_NOMERGES flag, so that IOs won't be
-		 ** merged and can eliminate holes created during merging
-		 ** operation.
-		 **/
-		blk_queue_flag_set(QUEUE_FLAG_NOMERGES,
-				sdev->request_queue);
-		blk_queue_virt_boundary(sdev->request_queue,
-				ioc->page_size - 1);
 		return 0;
 	}
 
@@ -10472,6 +10464,9 @@ _scsih_probe(struct pci_dev *pdev, const struct pci_device_id *id)
 	shost->transportt = mpt3sas_transport_template;
 	shost->unique_id = ioc->id;
 
+	/* XXX: only strictly needed if NVMe devices are attached */
+	shost->virt_boundary_mask = ioc->page_size - 1;
+
 	if (ioc->is_mcpu_endpoint) {
 		/* mCPU MPI support 64K max IO */
 		shost->max_sectors = 128;
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To post to this group, send email to usb-storage@lists.one-eyed-alien.net.
Visit this group at https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190605190836.32354-12-hch%40lst.de.
For more options, visit https://groups.google.com/a/lists.one-eyed-alien.net/d/optout.
