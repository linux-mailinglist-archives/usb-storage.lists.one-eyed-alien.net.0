Return-Path: <usb-storage+bncBDUNBGN3R4KRBF6L7W5QMGQEQYGYPKY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x648.google.com (mail-pl1-x648.google.com [IPv6:2607:f8b0:4864:20::648])
	by mail.lfdr.de (Postfix) with ESMTPS id D6E54A06DDC
	for <lists+usb-storage@lfdr.de>; Thu,  9 Jan 2025 06:58:48 +0100 (CET)
Received: by mail-pl1-x648.google.com with SMTP id d9443c01a7336-2166464e236sf16536755ad.1
        for <lists+usb-storage@lfdr.de>; Wed, 08 Jan 2025 21:58:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736402327; cv=pass;
        d=google.com; s=arc-20240605;
        b=dXkmCQslPkGIMp1Sxn+PebQd9Qd3WP6UJp3x2dvX1ufG/QDaKZzp7zU3xH4kcr2cDg
         JyvM5435uhvF2Zrw5f0uQ3rBg6Ge3wNfeR0Y8oPMhcuboFsuci9VZ3muAtGe6f6ZcMln
         /VfF5MA34oJyXb/1n6xDSgP4qRlBc4qWEchcWvOGnYXCYz+/waBAcHHqZDSWf65gCa/v
         2xpFIvz3xke4FnTt7Ef583gdAA6wstg+GVI0aX+o+IutrBJdp0z9vlJXVFqwgYhxP7fR
         Q2Kb5NU0menz8mmDREhSEFy1lksAROOm/FN8nxjjQCxIcWFQXvk1HbezMgsg2vbxUDxK
         sKbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=J9szlsfTSsu5tm1FlSbyOHWdyybnQKUPl9uKbb3CGnE=;
        fh=TMMONb9pdBDnb2VPzrZiREzRmeQTXM25/h6r/tElklk=;
        b=Rf+Yi9Y80Hny4xmUuEQotouh0KbaEKV/i2pX+tnl8QMEIRptoCXyAb8AC4j0TIbcCG
         Y6n/UfAmfP1mXJQgDNPb+XgpsqotCWY+Eey9/4iBD+aPK1sWJ/C7WIWMXwO5eAchcyLh
         gbnyFWLUgNGWet7v6z7djKKuXdVLFZ52+i+UMF9MJV7TabldbMtYEdDCv7TquDS0BV5/
         DfU8L+mkwjmz3ZuzWpeEfbsM3/En78dtReJLcO0WDRQR6CNk+4zndOF455iyYhxMOd7z
         iNrhxU0QRPnu5hV/nUpJ8NEWIkayLsloboWGDOXb5GLggQjMNck1YKYUpNnPtFnivduF
         qIqQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=pd6IUaJ6;
       spf=none (google.com: batv+2e5c2b0d924108c2b4cb+7809+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+2e5c2b0d924108c2b4cb+7809+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736402327; x=1737007127; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=J9szlsfTSsu5tm1FlSbyOHWdyybnQKUPl9uKbb3CGnE=;
        b=PCtJ2dHHhH4eTQ27D1kA5H7hXtx99wq/KutdzccdKKieNyqCGqMI3lpDdio+KqFHza
         gvKS5ZbGtnopFeMNzuzn7LXHGCp3mt9FJD4CFqssfBYhhyzAkAG+914ryxhIvQPwkHLs
         6+nJIQolkIJwuUAqohgVzlJTdHtcXiqod+LUU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736402327; x=1737007127;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J9szlsfTSsu5tm1FlSbyOHWdyybnQKUPl9uKbb3CGnE=;
        b=OvEcJRPWUmgQrYRF5pWZuG6XicJ+wOkAwDeHu48HttfRuVwTeDTJ5NNXkl/2ZL3i9x
         NzIKurMSrK94MJUEuiJ8VAPxLUJvi9tZ7Ge+UTF+whU+icLNroxLbnjdp/bNgTh2xAmC
         9lhb4SAS/KR477+fZCliYvjQ2FpfpR/nzNF80ZUV0+dTUVxJ1711XXgfMkQn3rK1GBNa
         n9MsItsh1eDdvdL4+rjcpOuMLGFNYBFSQGrhf8s3Y9HmF8alvoPWiJvy7V1SbOD9IXij
         L6Zb41ZzTvBMnVqZZPFuueautNhuDkOY/reGscX0X7lzIzE44aagVRD98TkcNbVmYYIj
         B9MA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXJZg3bCBezE5d932sOLgFohCLlKm3TWrmqqg8Tn9VDOI+hWjIa/hHtSo61inp+YJtUF/lq4A==@lfdr.de
X-Gm-Message-State: AOJu0YzTdp1DU1lpOW/B4cNfPJy1EgQPkfB57wmyrWqWOJP+om/ISLzK
	TmlebfreeprBO6vrX+o1uy9dasK0g4nbxW04Jb+JI10yyGEuHZ3f10kgSu9exRU=
X-Google-Smtp-Source: AGHT+IFX2IM2ZLpA8JFYwGgMO25MctrYfa8n+CWu6vxg00T5Q3xznsrCOO4eGGMkmXK51fi+piq16g==
X-Received: by 2002:a05:6300:4043:b0:1e1:9bc1:6d6d with SMTP id adf61e73a8af0-1e88d2eae03mr10368259637.31.1736402327421;
        Wed, 08 Jan 2025 21:58:47 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a62:b503:0:b0:725:d2c5:1038 with SMTP id d2e1a72fcca58-72d2fc5d1f7ls589534b3a.2.-pod-prod-03-us;
 Wed, 08 Jan 2025 21:58:46 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCU+Ou/LEKn+FtQy7TqK8oYqGv+8GW30QdZF1wFXCCAmozjzU4sNO9+hAGKzGTVxp2pKEVUmCNSh5ft1hg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6a21:8cc2:b0:1e1:a0b6:9872 with SMTP id adf61e73a8af0-1e88d10ac61mr9072554637.11.1736402326151;
        Wed, 08 Jan 2025 21:58:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736402326; cv=none;
        d=google.com; s=arc-20240605;
        b=CIvqocA7K88M0o/w8wlaIGvjOU3cbegOa7Ft2vHrsYkD1XUzGpVOGmjgkfW2ox0EAw
         21f2Mw0OdmHqNz1zABFZO+911j33HhrhSJJ36AeIJnWuMwXP8z9iSnSNk+YE3+bXbfBx
         yWiY28EoQB9s04RhpgGH9Jko7tPQyokjH/2KGUGlJLvGU5Lwdr5FMz+zo000m7QJkIkC
         /vUQy8d+LZp+U0yYgkfgnxgFJ8E+PrtovMhsnpgqM1pIek2UPOguqpjue95b66+s65B1
         vhccuCVMiW/sCq1Q0n/TfnSIGAhiWgYWXdY+9gPIyTZ6x2i1/owpnCLqOHPFTqiIRPq+
         rPsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=fuOazopibpAs20wub1IJXrvMuywQGVOpmNTUuhx/xHA=;
        fh=WRAGdV8aIMVVSYoSeklSBzbPtpnXpjY3BgoNNJPLYpM=;
        b=VsQDfsslIgR1jkPukVZStNlZz1b/YN/Cmy3q1pJRakMOgPsYEP1Zm2wawIJ7qfAkYf
         Aa7lkoxQj0vVQovUCLKXyeKnr9xNRxG7Dsn/L71ySPrHOLPv/9ifU5/cb4NbxBaORh7F
         DFCC9GTsjgc0Ka1fTVP1Yvgtet137thjDFogpumTTQURXOYXAza/MYOc2Gu4jf6SL1cd
         ckGi7ub9qXo8NRdoMsKxoJodO1X4IgLSBA5duQ8gZcTUVQPcF6hndIvxulLa17a+Bzn4
         AtOjvg/dEWoDqPHUlXxE9db2NyWnTmzla59Fo+IgQkT5aAXvu/PwbCtNHzIPG+lKfv9o
         XFoA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=pd6IUaJ6;
       spf=none (google.com: batv+2e5c2b0d924108c2b4cb+7809+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+2e5c2b0d924108c2b4cb+7809+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id 41be03b00d2f7-a318fde96fesi789106a12.91.2025.01.08.21.58.46
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 21:58:46 -0800 (PST)
Received-SPF: none (google.com: batv+2e5c2b0d924108c2b4cb+7809+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-ddeb-cdec-70b9-e2f0.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:ddeb:cdec:70b9:e2f0] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98 #2 (Red Hat Linux))
	id 1tVlZ5-0000000ArV0-3Gjh;
	Thu, 09 Jan 2025 05:58:44 +0000
From: Christoph Hellwig <hch@lst.de>
To: Jens Axboe <axboe@kernel.dk>
Cc: Damien Le Moal <dlemoal@kernel.org>,
	Ming Lei <ming.lei@redhat.com>,
	Nilay Shroff <nilay@linux.ibm.com>,
	linux-block@vger.kernel.org,
	linux-nvme@lists.infradead.org,
	nbd@other.debian.org,
	linux-scsi@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	Johannes Thumshirn <johannes.thumshirn@wdc.com>
Subject: [usb-storage] [PATCH 08/11] nbd: fix queue freeze vs limits lock order
Date: Thu,  9 Jan 2025 06:57:29 +0100
Message-ID: <20250109055810.1402918-9-hch@lst.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250109055810.1402918-1-hch@lst.de>
References: <20250109055810.1402918-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=pd6IUaJ6;
       spf=none (google.com: batv+2e5c2b0d924108c2b4cb+7809+infradead.org+hch@bombadil.srs.infradead.org
 does not designate permitted sender hosts) smtp.mailfrom=BATV+2e5c2b0d924108c2b4cb+7809+infradead.org+hch@bombadil.srs.infradead.org
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

Match the locking order used by the core block code by only freezing
the queue after taking the limits lock using the
queue_limits_commit_update_frozen helper.

This also allows removes the need for the separate __nbd_set_size helper,
so remove it.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Ming Lei <ming.lei@redhat.com>
Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
Reviewed-by: Nilay Shroff <nilay@linux.ibm.com>
Reviewed-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 drivers/block/nbd.c | 17 ++---------------
 1 file changed, 2 insertions(+), 15 deletions(-)

diff --git a/drivers/block/nbd.c b/drivers/block/nbd.c
index 259bd57fc529..efa05c3c06bf 100644
--- a/drivers/block/nbd.c
+++ b/drivers/block/nbd.c
@@ -327,8 +327,7 @@ static void nbd_mark_nsock_dead(struct nbd_device *nbd, struct nbd_sock *nsock,
 	nsock->sent = 0;
 }
 
-static int __nbd_set_size(struct nbd_device *nbd, loff_t bytesize,
-		loff_t blksize)
+static int nbd_set_size(struct nbd_device *nbd, loff_t bytesize, loff_t blksize)
 {
 	struct queue_limits lim;
 	int error;
@@ -368,7 +367,7 @@ static int __nbd_set_size(struct nbd_device *nbd, loff_t bytesize,
 
 	lim.logical_block_size = blksize;
 	lim.physical_block_size = blksize;
-	error = queue_limits_commit_update(nbd->disk->queue, &lim);
+	error = queue_limits_commit_update_frozen(nbd->disk->queue, &lim);
 	if (error)
 		return error;
 
@@ -379,18 +378,6 @@ static int __nbd_set_size(struct nbd_device *nbd, loff_t bytesize,
 	return 0;
 }
 
-static int nbd_set_size(struct nbd_device *nbd, loff_t bytesize,
-		loff_t blksize)
-{
-	int error;
-
-	blk_mq_freeze_queue(nbd->disk->queue);
-	error = __nbd_set_size(nbd, bytesize, blksize);
-	blk_mq_unfreeze_queue(nbd->disk->queue);
-
-	return error;
-}
-
 static void nbd_complete_rq(struct request *req)
 {
 	struct nbd_cmd *cmd = blk_mq_rq_to_pdu(req);
-- 
2.45.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250109055810.1402918-9-hch%40lst.de.
