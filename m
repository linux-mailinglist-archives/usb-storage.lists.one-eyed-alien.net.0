Return-Path: <usb-storage+bncBDUNBGN3R4KRBEMGWCYAMGQEUCRJ3FA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1046.google.com (mail-pj1-x1046.google.com [IPv6:2607:f8b0:4864:20::1046])
	by mail.lfdr.de (Postfix) with ESMTPS id 9039D895443
	for <lists+usb-storage@lfdr.de>; Tue,  2 Apr 2024 15:07:30 +0200 (CEST)
Received: by mail-pj1-x1046.google.com with SMTP id 98e67ed59e1d1-2a2710e1854sf200557a91.0
        for <lists+usb-storage@lfdr.de>; Tue, 02 Apr 2024 06:07:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712063249; cv=pass;
        d=google.com; s=arc-20160816;
        b=ybol37bHIseFAvBqr/8qYTQPPhZYpGirqbRhjIGgvagyLym/thzTNvWKpAP9ZWrjA1
         9piFRmz78K7xRxWxUSSEN1FTcyKjKuqmtHhbHenifJCQqRgyuB8vFX6G0dSh+Jeavz44
         2BcqF9oF9berJxK0YATbo9KnDXuor29ytSRuTl+mt53uCvsLqzZ41b3xHCVtlNTlIeGI
         Mzrv+7ZaQvsF+aRKXueOjS4udG6yB1zh/UohUGjDRH/f514w98DwtKG1I65NiVH9q1sS
         kv791JiWsXEDDevOu9a1VvDHymSbo955fp8E8wv/xmb2aMxxLe1h0/Rbx/MhlYWftG+b
         g0RQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=2pS9KZg4n1Pz0aEJMIdEqC4a7+J2Lyd4WhMK2OTd2QI=;
        fh=HWGm0XH0+V51WutXAtUWAKyFr3s+QRyYz9yAu/G38kA=;
        b=mRieuw5MZ05Ac4SuXULoczWcM9oR9bggd5OPO5elBssOZAe+U36P7zoMr4AgDSqXqR
         EoYea12Mftw8CweVwAHaettiJQT0pGNbqYII7rcbsc+aWrpBkBh8cI+Yu+Bcv9Oen3HU
         o4eI4xu1DScj2NPxUkjeqt9XyBI5qxqPEszPQ6i9sUACSn9OBr0cOPUIX9FDv8StQ2ie
         qeJ9dMl6c5NuQ/vOmh+VFGULVFaIePGyEPciEcY7J6QB8r5CX2OZrhbnHyQwi2des7I3
         K2Iq966X9SRNFXp+LdaO/o3VRWPskug3HRKmc46CGSoWOrQOz8947wXfn2M9WaomsWAl
         r5CA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=hPmyLxmA;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+db5ae43edc5588e6f7b7+7527+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712063249; x=1712668049; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2pS9KZg4n1Pz0aEJMIdEqC4a7+J2Lyd4WhMK2OTd2QI=;
        b=TI+QamATU+hgOOBXJD2t5XkhWKmvDqu7xaVIV7OOZEXwI1aMHDN/oOX8KrFu3d8iXO
         wM6HODN8zzp/xMIidVKIrkvoY/ZS1styBiag0XV+M1j7rTghu8C4A3n6slOLWkGffPcC
         8zSOfeOz+IdZRZHytjVri6TmXGBmn0zRuB7p8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712063249; x=1712668049;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2pS9KZg4n1Pz0aEJMIdEqC4a7+J2Lyd4WhMK2OTd2QI=;
        b=vp+x44+Y6xJgsmzVrl76f8xwbd/rVvuLOt6acPk87iKaE/8GkEt4PGsa2rWsuJB8Oo
         M7E1N+FNzEEBVcgxBndPNcq9W6PdGNsOGv0m1jV7oD6yqIEDEljsICEiUeXrUsPOdYTs
         AJEi6LefFn6UrGYzhYFkJQPHy/2JxjZ3l4qvv0l7LEB4DNBGUX7RY+n1S1M5UVp9KZl7
         5ExrpMllYSgyc4rGZ8C/bmVkoM34Ed6SLAXEPeO8ROXekA6nXvkR4I886sy4rSFp4wxd
         61vFNP0Lf5vwBX4akT+1YkKmoOkDO64nyGtl/uGL5DEEd5VHvfLcZgcpvnDmmPBCpx0C
         G07A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVRK8gkoAdW+A73du5K4mNEp4+bKJKX2kU8B7QnUQe5RICG4qnv7xJDUcVk75sbQHBn/jbYbybNKR1G/q7Z+52YMvCOjdP7IktM
X-Gm-Message-State: AOJu0YyjdSK014zr+zxgVhGra5X/bZTESyzyUjQcvsOfOOb7umwbTqYI
	Hp0iX/3/fg+49JcTDnT5jUay8S4Ae2UrK1zYoiQtgzzYV3mRiVUkpMUiSbi4rLY=
X-Google-Smtp-Source: AGHT+IEQyvTDBr2QSOQ+GsWB9dU23L5Euq4WpFoLXm3B0di6ORz8cUtDvJ/hoLgWpzw2lZTa9HnG4w==
X-Received: by 2002:a17:90a:db49:b0:29f:c827:bc8c with SMTP id u9-20020a17090adb4900b0029fc827bc8cmr10335954pjx.18.1712063249179;
        Tue, 02 Apr 2024 06:07:29 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:dc08:b0:2a0:9806:220f with SMTP id
 i8-20020a17090adc0800b002a09806220fls437684pjv.0.-pod-prod-09-us; Tue, 02 Apr
 2024 06:07:28 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUj8lR7B2+UnbJduGLmTwzWkMevB+SVCI6DKFZ8dNqueNO0GmnQB44q9DWnGNtUS2N4ZbaGRrSDjssbbSCaQ4jxwKJN/bOktrKLLEkue1UHgsjz8Do=
X-Received: by 2002:a17:90a:d50e:b0:2a0:3fe1:2e1 with SMTP id t14-20020a17090ad50e00b002a03fe102e1mr9585679pju.6.1712063247972;
        Tue, 02 Apr 2024 06:07:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712063247; cv=none;
        d=google.com; s=arc-20160816;
        b=0s/OlKxCKw+eJgeXTa0xhDfK0mmfqJCGR+sCH1Txl+fCzekoS3u486sLYOzT0D3U3o
         CN4WP3RfhceACSiOktOstinsDGL+IKYU+HPUZPmdIi81TR6APQqQeFmuCXbo0Lq9/jrP
         X3/QVUq6fgLuF8kJMgmRiav7xK1unEGS0W6fZp23cnTdyEh58q/uhTHkqWKGDNF2A9JG
         dyzcRlkERxBhNBg3IEXn5kGMhkFcdx8/rLmUC2oP/zzHfdNYv6/zRjw+SpGRg8hEvICI
         7NDzUTsWmfdILrllr6nJ2+PYe0GVUw4OY76Acvj3nPnHJzHkCQrMVK7fQYiXcBXfOtWq
         9/CQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=0SB00OexNdrbfq3Jqh6wTlG+HIlhe3hmP01YptNK0fI=;
        fh=q8hCIvNb5vCUXXKMpVAwbkkPDpj7PtrvAVG6ascHy78=;
        b=GG/4iPafa67TUNHmrG0emofW9Xkx1jeeScKeCnGpN8tKTApIfXdKI1RT9L4AEZakzv
         +pju0Q9LG7weghEVUymKcge8aSaBlPMFCChbwfr93lEzCrgNuCCE76rHjesOdzPrUXEI
         zba9TXYQy6SfAOwthc1bupkdmPZ1Z+uMSL2gKr3kvIKRo+y4+pxanw94JKWsgsTEvr3W
         HNQFQp3UhLYtVpeF5GEM76plzJGQsdv2ArEbh2OdjXGdH9y61U5JsRErD9KM3+AXGX/7
         R9wMMQKtWa3JwRe9KI1RRb+1Td8WDkDZTRAt7R7FWezvv784mCAiPw5vMl7dsQwPzQv7
         QP+Q==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=hPmyLxmA;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+db5ae43edc5588e6f7b7+7527+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id g6-20020a17090ac30600b0029ba2f720b0si10975132pjt.55.2024.04.02.06.07.27
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Apr 2024 06:07:27 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [2001:4bb8:199:60a5:c70:4a89:bc61:2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrdr9-0000000BFVe-2INf;
	Tue, 02 Apr 2024 13:07:15 +0000
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
Subject: [usb-storage] [PATCH 10/23] scsi: add a device_configure method to
 the host template
Date: Tue,  2 Apr 2024 15:06:32 +0200
Message-Id: <20240402130645.653507-11-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240402130645.653507-1-hch@lst.de>
References: <20240402130645.653507-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=hPmyLxmA;
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

This is a version of ->slave_configure that also takes a queue_limits
structure that the caller applies, and thus allows drivers to reconfigure
the queue using the atomic queue limits API.

In the long run it should also replace ->slave_configure entirely as
there is no need to have two different methods here, and the slave
name in addition to being politically charged also has no basis in
the SCSI standards or the kernel code.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
---
 drivers/scsi/scsi_scan.c | 47 ++++++++++++++++++++++------------------
 include/scsi/scsi_host.h |  4 ++++
 2 files changed, 30 insertions(+), 21 deletions(-)

diff --git a/drivers/scsi/scsi_scan.c b/drivers/scsi/scsi_scan.c
index d97e18ffaedbe1..8300fc28cb10a8 100644
--- a/drivers/scsi/scsi_scan.c
+++ b/drivers/scsi/scsi_scan.c
@@ -227,7 +227,7 @@ static int scsi_realloc_sdev_budget_map(struct scsi_device *sdev,
 
 	/*
 	 * realloc if new shift is calculated, which is caused by setting
-	 * up one new default queue depth after calling ->slave_configure
+	 * up one new default queue depth after calling ->device_configure
 	 */
 	if (!need_alloc && new_shift != sdev->budget_map.shift)
 		need_alloc = need_free = true;
@@ -874,6 +874,7 @@ static int scsi_probe_lun(struct scsi_device *sdev, unsigned char *inq_result,
 static int scsi_add_lun(struct scsi_device *sdev, unsigned char *inq_result,
 		blist_flags_t *bflags, int async)
 {
+	const struct scsi_host_template *hostt = sdev->host->hostt;
 	struct queue_limits lim;
 	int ret;
 
@@ -1073,33 +1074,37 @@ static int scsi_add_lun(struct scsi_device *sdev, unsigned char *inq_result,
 		lim.max_hw_sectors = 512;
 	else if (*bflags & BLIST_MAX_1024)
 		lim.max_hw_sectors = 1024;
+
+	if (hostt->device_configure)
+		ret = hostt->device_configure(sdev, &lim);
+	else if (hostt->slave_configure)
+		ret = hostt->slave_configure(sdev);
+	if (ret) {
+		queue_limits_cancel_update(sdev->request_queue);
+		/*
+		 * If the LLDD reports device not present, don't clutter the
+		 * console with failure messages.
+		 */
+		if (ret != -ENXIO)
+			sdev_printk(KERN_ERR, sdev,
+				"failed to configure device\n");
+		return SCSI_SCAN_NO_RESPONSE;
+	}
+
 	ret = queue_limits_commit_update(sdev->request_queue, &lim);
 	if (ret) {
 		sdev_printk(KERN_ERR, sdev, "failed to apply queue limits.\n");
 		return SCSI_SCAN_NO_RESPONSE;
 	}
 
-	if (sdev->host->hostt->slave_configure) {
-		ret = sdev->host->hostt->slave_configure(sdev);
-		if (ret) {
-			/*
-			 * if LLDD reports slave not present, don't clutter
-			 * console with alloc failure messages
-			 */
-			if (ret != -ENXIO) {
-				sdev_printk(KERN_ERR, sdev,
-					"failed to configure device\n");
-			}
-			return SCSI_SCAN_NO_RESPONSE;
-		}
-
-		/*
-		 * The queue_depth is often changed in ->slave_configure.
-		 * Set up budget map again since memory consumption of
-		 * the map depends on actual queue depth.
-		 */
+	/*
+	 * The queue_depth is often changed in ->device_configure.
+	 *
+	 * Set up budget map again since memory consumption of the map depends
+	 * on actual queue depth.
+	 */
+	if (hostt->device_configure || hostt->slave_configure)
 		scsi_realloc_sdev_budget_map(sdev, sdev->queue_depth);
-	}
 
 	if (sdev->scsi_level >= SCSI_3)
 		scsi_attach_vpd(sdev);
diff --git a/include/scsi/scsi_host.h b/include/scsi/scsi_host.h
index 09d769a371ca06..19a1c5c4893534 100644
--- a/include/scsi/scsi_host.h
+++ b/include/scsi/scsi_host.h
@@ -211,7 +211,11 @@ struct scsi_host_template {
 	 *     up after yourself before returning non-0
 	 *
 	 * Status: OPTIONAL
+	 *
+	 * Note: slave_configure is the legacy version, use device_configure for
+	 * all new code.  A driver must never define both.
 	 */
+	int (* device_configure)(struct scsi_device *, struct queue_limits *lim);
 	int (* slave_configure)(struct scsi_device *);
 
 	/*
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240402130645.653507-11-hch%40lst.de.
