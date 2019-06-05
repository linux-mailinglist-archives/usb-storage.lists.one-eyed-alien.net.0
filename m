Return-Path: <usb-storage+bncBDUNBGN3R4KRBHFH4DTQKGQE77YKCTI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x447.google.com (mail-pf1-x447.google.com [IPv6:2607:f8b0:4864:20::447])
	by mail.lfdr.de (Postfix) with ESMTPS id 532B33641B
	for <lists+usb-storage@lfdr.de>; Wed,  5 Jun 2019 21:10:22 +0200 (CEST)
Received: by mail-pf1-x447.google.com with SMTP id r12sf19216592pfl.2
        for <lists+usb-storage@lfdr.de>; Wed, 05 Jun 2019 12:10:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1559761821; cv=pass;
        d=google.com; s=arc-20160816;
        b=o0gZsbK/ssyZYmR9dieLdq33pGkamGngUP3XLI0AsSKHBbb2t91A3FqcJKbh2erB6P
         vyzW9tH7yXT5ZO7G3upo1nPdXzJdSs3jvIWh7e/mUrIIgBk4C9C7OdEgQl+NV7fFPuax
         pm6nsOac8vA+UgbG/WESO2V0DWxRU5A2wqOXnLJcN3kIi0umnERaN64IJ3YRCz9KXUmN
         mLRnx6YfLhvW7YkOUty2aEgkucw+kxtqKHo1rinwfXIz7AlKcaiYkQMx8DmNjteaU72V
         n6OH7f5bBRfApsNW1EK+POaHoFNDujxKCgULRKeYlWc2tHqYYoaUwhXN4k9PXsBFeC/M
         Accg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=1yWLwvn2F6tyykBzbS3BaldGHR0nA87UgZqsrQXCew8=;
        b=CEFFCN2LLZ4NgPsMTxXNm3zBYgJx79d8BIXBPoRz0bnrYnjjSm/HrvxADf7MVGRfMR
         SskF9hhy0MMpTE1wtW42sMtR0U00OtttRdHQjp4KXKsj4lVvxRoiRBLcY2OWuPud4Bs1
         xbueTLJoD8KIyWgpTIdOeHnkH80oN6UYISRVFO2ICQ9qp5NbhvTNTrJ8YtCjCzGt3Qhq
         gosa4iUAHU3Elk7tA0SU2eQ54uwVnFRNyHuocx8/XaBtVGjwB6n4LpRFOsqA910U/QHD
         f5sONqaEUnvLQDct0QIkwwIAMu7i5qTDPhb3xbfGZPnYRAKc9QkPsLtsyZdcQl4Plsxl
         wE+A==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=h9hxrx3y;
       spf=pass (google.com: best guess record for domain of batv+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1yWLwvn2F6tyykBzbS3BaldGHR0nA87UgZqsrQXCew8=;
        b=jnw0gUvBCPpl8myikBppWHC61PBlJ649cLpfalUzL3qbw5bfdzZ1Ayub+x0fBBUKf8
         f2uDvxIfJvbQshrDoXtO3+WgsHjXkX37p37XwPrkCzkUOyUjNI/CB9HFw7j2YYxG4zkq
         zDscA/BM9DFkE+4rQ0UKukyulAX71ZLYheBM0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1yWLwvn2F6tyykBzbS3BaldGHR0nA87UgZqsrQXCew8=;
        b=pwwOVWAbeSVBRyC62NpkXTlpElh1j1Z1eZfkBrMIg76fC3NZJwidEVsiAHf4DV2E7+
         iM3SfO6Wnmj1l53ngKdtnJjETcK2INiBFF58MxxOGaT3A8B+qH5xErRWkyvtmva+6k5H
         FcZg9yzOxatiBERbMnpDkjSAcyy5AZzDHrVOSgtOULYyNa7fTAG87hyGRa0H13iT+6bY
         PdPRLAGZzeYeC/aFZtdqN9nie94Y2JHafJxC8a8JlUZ1nNyHXJap9YAT4plgtkgDZit5
         PorqhW5gQEIVBqlhOEA72om+9ttE45+sDnUEl7DvNOMnu1b7dWmKD7lsD4LRQgz+7a6m
         Dmkw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAV2NxhB5UTz9ehbL4tZOfsjE+0ux4nCGi7t7njAtvlgG2Ud2P+P
	zJ8fiOZuImdSD5Iw/GJ5Ixs=
X-Google-Smtp-Source: APXvYqzy7Gzqy7+MFWM8LWHNwhttX+VWBWI+gLhXRQefhPv+MkprPaHyBqRVc5ASxieZZkynNLIffw==
X-Received: by 2002:a17:90a:22ea:: with SMTP id s97mr46071937pjc.39.1559761821007;
        Wed, 05 Jun 2019 12:10:21 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:bf0b:: with SMTP id c11ls767860pjs.1.gmail; Wed, 05
 Jun 2019 12:10:20 -0700 (PDT)
X-Received: by 2002:a17:90a:8d86:: with SMTP id d6mr44844096pjo.127.1559761820608;
        Wed, 05 Jun 2019 12:10:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1559761820; cv=none;
        d=google.com; s=arc-20160816;
        b=LlwOOax1t5pQYPltBq8jv2H0Zt1OiQn+Gj0e53BLrnpuPCGocUtOVMuSVRr72wzF2a
         5yXL8kU3Dl4FNfom/iOc9cXgFKTkbHCDmHj06RUtZJAWFTEf/46S1TRizRLismjD+6de
         FBmewpcxoT+hHZEY08XlSp1gQ+r3vl1g+aFftFmbrSBEwsGEqO6yd+OGTWKZjcZUq+RP
         CfzgXrqQKAP8TDe60T3UwZoJl8zd4EsSO+JKV5YhQ5lNqMKmgBXon5fl+Awox2jAYfqG
         fWGpBZstt0glm/CRYu/RiNJRQis9SGQXUzxMg0PJiW5KQgB7oqub1Iv4GjPAk1pPgT2v
         zmLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=rAru/g/esClPI2WAaX3PUnaPhvPum8MkxndH0C4U79k=;
        b=pRpGcl5a9ohx0efaNf2VvlJxfeMDveFCfBKhM/avu4afyXspxE9prEpwBq7z8/cSPs
         SiDhumL2sbzyBKncPKqbLFWQakWxdsE3M0QgMHN/0rhU2wiLXNOk6uY05KrXyf1Mpvnb
         2cxsU5w7ElXfQ79vbLDGMAeP3Q2q0Yw0c3TPLUSXSEtyFXeyfdDEzCph/1I9NUd1VxH/
         uTD33wX0VAC+gk6bpTGgAnevybDmAHtlsdsE5TINaN8jYK4UxY5M0YziGnooSDQOi/1e
         t+22DC1p9g0SNO2aBPnmF+mQGZrioIJ/OesDoLVSwoXGenfZjKtaqc4V8Q+uoj8dc43w
         tycQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=h9hxrx3y;
       spf=pass (google.com: best guess record for domain of batv+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by mx.google.com with ESMTPS id r129si13372376pgr.307.2019.06.05.12.10.20
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 05 Jun 2019 12:10:20 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of batv+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from 089144193064.atnat0002.highway.a1.net ([89.144.193.64] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYbHa-0005od-3i; Wed, 05 Jun 2019 19:09:10 +0000
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
Subject: [usb-storage] [PATCH 08/13] IB/iser: set virt_boundary_mask in the
 scsi host
Date: Wed,  5 Jun 2019 21:08:31 +0200
Message-Id: <20190605190836.32354-9-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190605190836.32354-1-hch@lst.de>
References: <20190605190836.32354-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=h9hxrx3y;
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
SCSI midlayer.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/infiniband/ulp/iser/iscsi_iser.c | 35 +++++-------------------
 1 file changed, 7 insertions(+), 28 deletions(-)

diff --git a/drivers/infiniband/ulp/iser/iscsi_iser.c b/drivers/infiniband/ulp/iser/iscsi_iser.c
index 9c185a8dabd3..841b66397a57 100644
--- a/drivers/infiniband/ulp/iser/iscsi_iser.c
+++ b/drivers/infiniband/ulp/iser/iscsi_iser.c
@@ -613,6 +613,7 @@ iscsi_iser_session_create(struct iscsi_endpoint *ep,
 	struct Scsi_Host *shost;
 	struct iser_conn *iser_conn = NULL;
 	struct ib_conn *ib_conn;
+	struct ib_device *ib_dev;
 	u32 max_fr_sectors;
 
 	shost = iscsi_host_alloc(&iscsi_iser_sht, 0, 0);
@@ -643,16 +644,19 @@ iscsi_iser_session_create(struct iscsi_endpoint *ep,
 		}
 
 		ib_conn = &iser_conn->ib_conn;
+		ib_dev = ib_conn->device->ib_device;
 		if (ib_conn->pi_support) {
-			u32 sig_caps = ib_conn->device->ib_device->attrs.sig_prot_cap;
+			u32 sig_caps = ib_dev->attrs.sig_prot_cap;
 
 			scsi_host_set_prot(shost, iser_dif_prot_caps(sig_caps));
 			scsi_host_set_guard(shost, SHOST_DIX_GUARD_IP |
 						   SHOST_DIX_GUARD_CRC);
 		}
 
-		if (iscsi_host_add(shost,
-				   ib_conn->device->ib_device->dev.parent)) {
+		if (!(ib_dev->attrs.device_cap_flags & IB_DEVICE_SG_GAPS_REG))
+			shost->virt_boundary_mask = ~MASK_4K;
+
+		if (iscsi_host_add(shost, ib_dev->dev.parent)) {
 			mutex_unlock(&iser_conn->state_mutex);
 			goto free_host;
 		}
@@ -958,30 +962,6 @@ static umode_t iser_attr_is_visible(int param_type, int param)
 	return 0;
 }
 
-static int iscsi_iser_slave_alloc(struct scsi_device *sdev)
-{
-	struct iscsi_session *session;
-	struct iser_conn *iser_conn;
-	struct ib_device *ib_dev;
-
-	mutex_lock(&unbind_iser_conn_mutex);
-
-	session = starget_to_session(scsi_target(sdev))->dd_data;
-	iser_conn = session->leadconn->dd_data;
-	if (!iser_conn) {
-		mutex_unlock(&unbind_iser_conn_mutex);
-		return -ENOTCONN;
-	}
-	ib_dev = iser_conn->ib_conn.device->ib_device;
-
-	if (!(ib_dev->attrs.device_cap_flags & IB_DEVICE_SG_GAPS_REG))
-		blk_queue_virt_boundary(sdev->request_queue, ~MASK_4K);
-
-	mutex_unlock(&unbind_iser_conn_mutex);
-
-	return 0;
-}
-
 static struct scsi_host_template iscsi_iser_sht = {
 	.module                 = THIS_MODULE,
 	.name                   = "iSCSI Initiator over iSER",
@@ -994,7 +974,6 @@ static struct scsi_host_template iscsi_iser_sht = {
 	.eh_device_reset_handler= iscsi_eh_device_reset,
 	.eh_target_reset_handler = iscsi_eh_recover_target,
 	.target_alloc		= iscsi_target_alloc,
-	.slave_alloc            = iscsi_iser_slave_alloc,
 	.proc_name              = "iscsi_iser",
 	.this_id                = -1,
 	.track_queue_depth	= 1,
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To post to this group, send email to usb-storage@lists.one-eyed-alien.net.
Visit this group at https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190605190836.32354-9-hch%40lst.de.
For more options, visit https://groups.google.com/a/lists.one-eyed-alien.net/d/optout.
