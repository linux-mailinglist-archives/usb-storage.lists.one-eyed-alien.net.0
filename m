Return-Path: <usb-storage+bncBDUNBGN3R4KRB4VG4DTQKGQEMDK3CRY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x446.google.com (mail-pf1-x446.google.com [IPv6:2607:f8b0:4864:20::446])
	by mail.lfdr.de (Postfix) with ESMTPS id 19781363EF
	for <lists+usb-storage@lfdr.de>; Wed,  5 Jun 2019 21:09:40 +0200 (CEST)
Received: by mail-pf1-x446.google.com with SMTP id x18sf10057790pfj.4
        for <lists+usb-storage@lfdr.de>; Wed, 05 Jun 2019 12:09:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1559761778; cv=pass;
        d=google.com; s=arc-20160816;
        b=eZzt2LlQQSPyqfDDhltf0GRiBZvYf2RiCWSTuaRKQyAeXXzunwAddvP84812r4gRo1
         aYB4vnOgSmdXH4CG8AwzpN5I1lCLbll6xQGtcckeeZ5AGlmwagE5Hy4Cee7TeHk4Dlgx
         oP04scSLpGqKuvCrGtEGB7isJiybjeoUymTZzZwgQr2vaE7GdyOHjTqgNE09q/E68bP7
         BYtD4PrSl33PXV0i1yhjw0meYVriwi3eofjRCVWMqjzLpSefBZvhe9/Hvgz4qF1fpsPo
         F7Yxl4ZsMuONBmzw0luNunaJNy4f/Edtf/a54SEgQAL32qimYzVF/4YVGUiNoHWF+gpW
         zY4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=9HPke/43+yz/stza/sjQWbghvrMgWjGVftsRaQ9cv18=;
        b=BAEvsybwzJH+RpWcKxTT0VgotBEvXLDcYT2ICHG82u9WC1rU5gHBHwbAfw/xrxKDgu
         CL/C/J1N2q+1eEu+HGb3R62AIj0aS3YptRiwgPoTZaii35zvynB6ysodPJmnqz6BM1gX
         qXbaEBDz5woObE9bcRPyFt6CdaQjBh9n5Tw6OQYO5nEdRjJqubUwphOrme2CsfgvIMuG
         /GuktoSxtAlSCEnyIcf4h+/as+zJZHkYV3P5qmDyDDajh++bwe597HMx0Q0w5E2ilGSO
         Hy3gCre8/ckRMYKXpL6ahRRHzpgBher6Y9Mtdq7alWFvKcp3b09rxgJHXJc8OEgZsiHu
         rAXw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=mGRP1yv+;
       spf=pass (google.com: best guess record for domain of batv+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9HPke/43+yz/stza/sjQWbghvrMgWjGVftsRaQ9cv18=;
        b=T9P+FTm4/VUE7MmeXRbQqsTi9QmpC25YuL7p12wxKfY0gPJgGhZqSH7u4ajr/LgxRs
         sMDFrq3AxkmEghXQoHOQvZkFjULFOnNSxkok+ynNrsKnNSJNBilVYkPQ/UDS/nlzXGxc
         tm6m4S5XsTiDIvndSyynFsYLZag4bQ7tYkpv8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9HPke/43+yz/stza/sjQWbghvrMgWjGVftsRaQ9cv18=;
        b=iBDnKP5V39EWvI2oXksjw3ODEXQzF8+7qFNrnQdGl1uXEfULQC0KZVQkp1sp9TZSZm
         RKL8FHHl4HeSW+qjmA0jRLjwT3DQuG38rm/lFQMUyvpRd8isI3bAfXJNUaIwgRrdW6d+
         lH2M5HjOmwns60DXoXZeAXU1l6J7VqPmVxncpkTQrm+65IY+VzB5szdGj9ldloHZJItT
         pnLREFay2CJqz/0j/J58af1KhNpTYINfc8Va5zBbXG3PBSZL/LcYPha/bwzM44UfvgFJ
         HzgeHpz04muAGWTpXOBvUEtQBpQ3+4bF6VOrOaGPISKkjnrusBAL+Rfs4s8yzZ9EFyu3
         2w4Q==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAV2t9jC5+NQ495VsgTufecti7ZA+RMNPDg3F0SF5+XTrCRDXLfj
	+qdZ/VRW1A9ZqOB3ULbx7jE=
X-Google-Smtp-Source: APXvYqx5QbZNpVsHf9F0qSM0l8J7nY0ESlR8h/IUo6/arDQlAmpFOU/mDVyaUulZDrLbIkFhz3G5yw==
X-Received: by 2002:aa7:8294:: with SMTP id s20mr39979799pfm.75.1559761778796;
        Wed, 05 Jun 2019 12:09:38 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a63:e444:: with SMTP id i4ls709030pgk.13.gmail; Wed, 05 Jun
 2019 12:09:38 -0700 (PDT)
X-Received: by 2002:a62:4e48:: with SMTP id c69mr26188835pfb.176.1559761778431;
        Wed, 05 Jun 2019 12:09:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1559761778; cv=none;
        d=google.com; s=arc-20160816;
        b=pvNMW/biNPIusF5Sd6fBVMdKVRcIrRUnP/fqEYR44Cb+Bk/h6O3MY3dZc1HZLenDVm
         5ZKqGC4XS2sWI8hoh6iCWyxw1AF+rynwE0mEs1/ZF4Ry9jHgEo4zaYIc2+XQ7PQkJJBY
         q+eMHsXO1dyuZraBhdXGSlBCtKnk4QmAOlWag/NfcD9GcRRM2INg32TOhz9N93joeiM1
         f8WxMC4h17YRQRCRfbmSgFjOfhXS3gevZu3M9gRas19h+NXwmvK7Cl14MFi0L+h1aaiB
         SpzENxPCZTbvr6e7/i3xFQZFVrbXGnJ3W3kfZZiFqcbztonGpgc+78ugmuDdd6mMYMpv
         dozg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=3bkukSS82+wj1sa4UwaAnaEsPot66Pp1IhVKWWk3PRs=;
        b=weHnfpVYoGUJAqFqtdcui90ZoAAVgC8UQGYePnjhnsBpSxhWF3xJtc1iy5CKH91VGo
         /jJp6GRvaY+nqh78LSRMPMOuDkn4LSCw3cHc514bdeUB7Oy/jni8hmulsmz5NaKMYZqV
         MQBPlIuk06groDyYpDB/kTzgq5ctt3+zm5ts+n/9EUmJ4haHD94WCc3GglQItqKL1hCG
         p7ujfin47gSUX7jpvz95bxqiiMuQl7pXl2ktYMt9+yywlNzWRUj7hZ17+To/o+iPscPQ
         5jMWtbFhod3qZS3x7OJZRxE7UTFCZ/ZkfHA+jvtCjyfK/gIZnKdSN+LGUoiQo1KCNzRB
         HJAw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=mGRP1yv+;
       spf=pass (google.com: best guess record for domain of batv+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by mx.google.com with ESMTPS id m20si11337011pjn.40.2019.06.05.12.09.38
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 05 Jun 2019 12:09:38 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of batv+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from 089144193064.atnat0002.highway.a1.net ([89.144.193.64] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYbHs-0006Cv-4J; Wed, 05 Jun 2019 19:09:28 +0000
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
Subject: [usb-storage] [PATCH 13/13] uas: set virt_boundary_mask in the scsi host
Date: Wed,  5 Jun 2019 21:08:36 +0200
Message-Id: <20190605190836.32354-14-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190605190836.32354-1-hch@lst.de>
References: <20190605190836.32354-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=mGRP1yv+;
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
 drivers/usb/storage/uas.c | 36 ++++++++++++++++--------------------
 1 file changed, 16 insertions(+), 20 deletions(-)

diff --git a/drivers/usb/storage/uas.c b/drivers/usb/storage/uas.c
index 047c5922618f..d20919e7bbf4 100644
--- a/drivers/usb/storage/uas.c
+++ b/drivers/usb/storage/uas.c
@@ -789,29 +789,9 @@ static int uas_slave_alloc(struct scsi_device *sdev)
 {
 	struct uas_dev_info *devinfo =
 		(struct uas_dev_info *)sdev->host->hostdata;
-	int maxp;
 
 	sdev->hostdata = devinfo;
 
-	/*
-	 * We have two requirements here. We must satisfy the requirements
-	 * of the physical HC and the demands of the protocol, as we
-	 * definitely want no additional memory allocation in this path
-	 * ruling out using bounce buffers.
-	 *
-	 * For a transmission on USB to continue we must never send
-	 * a package that is smaller than maxpacket. Hence the length of each
-         * scatterlist element except the last must be divisible by the
-         * Bulk maxpacket value.
-	 * If the HC does not ensure that through SG,
-	 * the upper layer must do that. We must assume nothing
-	 * about the capabilities off the HC, so we use the most
-	 * pessimistic requirement.
-	 */
-
-	maxp = usb_maxpacket(devinfo->udev, devinfo->data_in_pipe, 0);
-	blk_queue_virt_boundary(sdev->request_queue, maxp - 1);
-
 	/*
 	 * The protocol has no requirements on alignment in the strict sense.
 	 * Controllers may or may not have alignment restrictions.
@@ -1004,6 +984,22 @@ static int uas_probe(struct usb_interface *intf, const struct usb_device_id *id)
 	 */
 	shost->can_queue = devinfo->qdepth - 2;
 
+	/*
+	 * We have two requirements here. We must satisfy the requirements of
+	 * the physical HC and the demands of the protocol, as we definitely
+	 * want no additional memory allocation in this path ruling out using
+	 * bounce buffers.
+	 *
+	 * For a transmission on USB to continue we must never send a package
+	 * that is smaller than maxpacket.  Hence the length of each scatterlist
+	 * element except the last must be divisible by the Bulk maxpacket
+	 * value.  If the HC does not ensure that through SG, the upper layer
+	 * must do that.  We must assume nothing about the capabilities off the
+	 * HC, so we use the most pessimistic requirement.
+	 */
+	shost->virt_boundary_mask =
+		usb_maxpacket(udev, devinfo->data_in_pipe, 0) - 1;
+
 	usb_set_intfdata(intf, shost);
 	result = scsi_add_host(shost, &intf->dev);
 	if (result)
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To post to this group, send email to usb-storage@lists.one-eyed-alien.net.
Visit this group at https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190605190836.32354-14-hch%40lst.de.
For more options, visit https://groups.google.com/a/lists.one-eyed-alien.net/d/optout.
