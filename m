Return-Path: <usb-storage+bncBDUNBGN3R4KRBCP3QKYAMGQEYT2TA6Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x547.google.com (mail-pg1-x547.google.com [IPv6:2607:f8b0:4864:20::547])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AF178882CB
	for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 00:55:55 +0100 (CET)
Received: by mail-pg1-x547.google.com with SMTP id 41be03b00d2f7-5cf555b2a53sf2545273a12.1
        for <lists+usb-storage@lfdr.de>; Sun, 24 Mar 2024 16:55:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711324553; cv=pass;
        d=google.com; s=arc-20160816;
        b=L3u5cawC6g8ZeHgMF9VFpma//3BGMuugpOCB7gyI79PsjIqbHyJEkyw07+65MYMq/X
         y3T3tc+0KoNQm4Oik7cCwpzvk/yCthEOUNMwxLB5zxFuBN+UgGsoWPSvsu0zQ25BM6S+
         m0Uns7w7EKpkWb70JB52LRHsc5zs2/MGMzVCMm/wPjkCFGz3ek2JEKDRCX42NbqEvsqX
         icrtESjmQk5n5LJx7ONkd+DF1vuDiOgdsmIbLOHnDo8gpXwM+hRP+gy+YwEEdYQmZmNg
         H34RZWaEUhVQBvQe5wLtCSOiSKlLNxYTxbMobCDVdt7sXaV6YFmFNYFz88PQcaMRF8Vb
         Qw+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=elr9MBhTvkxg89XjwWbY1bvdqXBXDrltxb0Bzv9KPLI=;
        fh=F9TTMwW1yI9fYKMwUPjlhf7wYWBzZV0krtObAxG8YNU=;
        b=HcRK3mYsEIkdzyuLH/Iye65TJfGCspjVvNJSpBZU/PsQm2lPNPmA7adEiw1v9ICnTm
         iCdaplvasZ+Mj2sL842mld67rDg5NG5/5QznkOukebFqbzoXLKVRGelUnliRA4LUsNTb
         in1uy5AO5Se2RLRvqts0Kjk4fkeRMuNV+hTKrVh5a//ZAisgqG71JS4AFb2KsHcfaAeO
         x91g1o5D5Dk343lR6j9daCbGFTeM0AWKno8ay+SXPEfOCTkqyUwsMA7WEBV3flU38ECA
         3Q6EO+2QIGtkaZFH9r0+hbCbjfqH+wnkIpfxXkSvY89nGXTI0cSsyVbrHm0E5YO2L+bH
         Zkkg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=BfOP82s5;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711324553; x=1711929353; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=elr9MBhTvkxg89XjwWbY1bvdqXBXDrltxb0Bzv9KPLI=;
        b=CO0izkC3yQ2pgNve30fpRyZRLaLtE+lotN/tKVRanotZVJjMvq7wOVybPYKOnp7lpD
         g5aKF8beDX5xROGtLXVkcrDaFqMDB33m28RmGBVQmBP52OTPyPDFNRHdWVrUrU7LVUGN
         UTZub7dEc77Eci4US12YYJ/xZ4CYObHjEtp8k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711324553; x=1711929353;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=elr9MBhTvkxg89XjwWbY1bvdqXBXDrltxb0Bzv9KPLI=;
        b=g99N00jjx95i04su1eJko+/IB3YjTim+d+iGSQZDyNKEu4N2Lj/k+ssXjHEstOxj5N
         3AETeT7G5A77t7BR0mos+o3r6MlFmOOisOtM/cQeRHdFEuypZgVl92qSpa6B+AdF2vbl
         A9601RmFnH/mS2LqC1BUntf25A1NOZ62MXZHy5RCs/mW3nfXGRQ0eb0Z4ZnhfYy2WdRc
         9fGdxW5LcBvClC+6EFJyQuwzDaTc5sJzhWYVrEPVgRaINzhaRjBOLL9D3tJuOBwjXZLo
         ej73+/3jXwmF0B/rvDK6+N+kx1I36x9jTGqwQ1BecyFqwahpelQGJ5IS4Iq5CZ7JO9sn
         wVfw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVtcdiCTjDgrUuTmJYMxenS1ia49NbzGtN7lte+4iFlBrkYVW5ggi5lldW5JwijQlR4GVd/lwhA3Ri0i5d+bkOPnMO2LAZV+Vh2
X-Gm-Message-State: AOJu0Yx+u2VkeB56SCIcgMtbkJ5ISzrSRbwCepa0EOvWT765f4UzOlxZ
	s/7wXxC6QI8hZ8L5d6v2v6VhAebeHxGEKRJjLNNXUPa5u/QwBbIx5u98czk7vDg=
X-Google-Smtp-Source: AGHT+IF/zYxcML57bODRdSYgtsMkQwxNYBeWzHuHLLoRLj448SmMh39/ZVF3eK0XGRa4l7FDyO8phA==
X-Received: by 2002:a17:90a:7101:b0:2a0:3876:c019 with SMTP id h1-20020a17090a710100b002a03876c019mr6722845pjk.2.1711324553490;
        Sun, 24 Mar 2024 16:55:53 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:d34a:b0:2a0:2a05:dd6b with SMTP id
 i10-20020a17090ad34a00b002a02a05dd6bls1597592pjx.0.-pod-prod-00-us-canary;
 Sun, 24 Mar 2024 16:55:52 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXzIMGWu6zPIyJFHnC6y0+cXiNmuhFKISGVq5jrUNfzM27qeGYSspplnXZ8dMpJy7EZQYwo3Bbq5E3DXILTu+ueoadWja56IZ/8f+yS6ws1+dvwzUo=
X-Received: by 2002:a05:6a21:2d04:b0:1a3:8d32:c182 with SMTP id tw4-20020a056a212d0400b001a38d32c182mr7738922pzb.11.1711324552255;
        Sun, 24 Mar 2024 16:55:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711324552; cv=none;
        d=google.com; s=arc-20160816;
        b=MLr66ARo/yaQOf06tCrC1AdYLsrJcLYqf6058U+47yltMbsQqGTYOicvE5yxVtNtVb
         Rs9p0aqNlJi2rP8ev8aGTqybGvMU4hVIjLsQc7f+LMVpdrFnFPxwahZtSR///LU0Baaa
         poCgGbAIE+E5xe9HRVeAMj/inK6hjTQ5iq/EDG3yZ0wdwCKk84zGm7trRMYc//2Dk3Wr
         WezwfFrw/L/Ff8qTgCRFBznlZjUCtges9ysvJKVfDRHVrO1PzBK62Tcwe0PbzhFJzWmT
         pZclJKrpdk8dKTt+TMm0LZU/EI5oY0WBKlZGjvYnDmjLeNKTvf08H9da7ngidwTGT1nf
         ya5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=n/G3RdcsG/UHdocEiANoLj+Yss9HtHvu5C4t+MOMe/A=;
        fh=t86CCijjmN/1ilkIT+VdM3oaZOxEhtNXSf8+ryhWOUU=;
        b=aO3wgrAuvin/Cl2507zEnyiETgjGmonsLG0+mP0Oyi1z+HNZE5hbNUkWhDkv97VFLC
         pUSTLJ/UHIo/uRgAluNyJQgsJSnztiu2B841FsItyFO2Jx/lzYTEhL6ANvya3JyH8qBS
         fogMhz4wOqfi4vG7J7Bt/g1uJ6B//yuDqu4FzY4t3noiT1jcZ9gJoq1aKt9EJMUqCpMY
         tJbcO/D8KKauJSS+yZe5nbSCtGjrF7Ymcqqm//h7sVdBrBUia09Io3jodKwbKJ2TDGZl
         LS4eCmt9Xvuzzh4YlY4qtxsGRYwJIBGhd5uFlaITJIgB6UU+RivQPuItQiav+YwqmtWn
         j0rQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=BfOP82s5;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id m26-20020a6562da000000b005ced2a6b890si6251643pgv.668.2024.03.24.16.55.52
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Mar 2024 16:55:52 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [210.13.83.2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roXgi-0000000Dzai-1gDh;
	Sun, 24 Mar 2024 23:55:40 +0000
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
Subject: [usb-storage] [PATCH 10/23] scsi: add a device_configure method to
 the host template
Date: Mon, 25 Mar 2024 07:54:35 +0800
Message-Id: <20240324235448.2039074-11-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240324235448.2039074-1-hch@lst.de>
References: <20240324235448.2039074-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=BfOP82s5;
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

This is a version of ->slave_configure that also takes a queue_limits
structure that the caller applies, and thus allows drivers to reconfigure
the queue using the atomic queue limits API.

In the long run it should also replace ->slave_configure entirely as
there is no need to have two different methods here, and the slave
name in addition to being politically charged also has no basis in
the SCSI standards or the kernel code.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/scsi/scsi_scan.c | 33 +++++++++++++++++++--------------
 include/scsi/scsi_host.h |  4 ++++
 2 files changed, 23 insertions(+), 14 deletions(-)

diff --git a/drivers/scsi/scsi_scan.c b/drivers/scsi/scsi_scan.c
index 699356d7d17545..8e05780f802523 100644
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
@@ -874,8 +874,9 @@ static int scsi_probe_lun(struct scsi_device *sdev, unsigned char *inq_result,
 static int scsi_add_lun(struct scsi_device *sdev, unsigned char *inq_result,
 		blist_flags_t *bflags, int async)
 {
+	const struct scsi_host_template *hostt = sdev->host->hostt;
 	struct queue_limits lim;
-	int ret;
+	int ret, ret2;
 
 	/*
 	 * XXX do not save the inquiry, since it can change underneath us,
@@ -1073,22 +1074,26 @@ static int scsi_add_lun(struct scsi_device *sdev, unsigned char *inq_result,
 		lim.max_hw_sectors = 512;
 	else if (*bflags & BLIST_MAX_1024)
 		lim.max_hw_sectors = 1024;
-	ret = queue_limits_commit_update(sdev->request_queue, &lim);
+
+	if (hostt->device_configure)
+		ret = hostt->device_configure(sdev, &lim);
+	else if (hostt->slave_configure)
+		ret = hostt->slave_configure(sdev);
+
+	ret2 = queue_limits_commit_update(sdev->request_queue, &lim);
+	if (ret2 && !ret)
+		ret = ret2;
 	if (ret)
 		goto fail;
 
-	if (sdev->host->hostt->slave_configure) {
-		ret = sdev->host->hostt->slave_configure(sdev);
-		if (ret)
-			goto fail;
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
index b0948ab69e0fa6..1959193d47e7f5 100644
--- a/include/scsi/scsi_host.h
+++ b/include/scsi/scsi_host.h
@@ -211,7 +211,11 @@ struct scsi_host_template {
 	 *     up after yourself before returning non-0
 	 *
 	 * Status: OPTIONAL
+	 *
+	 * Note: slave_configure is the legacy version, use device_configure for
+	 * all new code.
 	 */
+	int (* device_configure)(struct scsi_device *, struct queue_limits *lim);
 	int (* slave_configure)(struct scsi_device *);
 
 	/*
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240324235448.2039074-11-hch%40lst.de.
