Return-Path: <usb-storage+bncBDUNBGN3R4KRBUOW525QMGQEERYSRHQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x646.google.com (mail-pl1-x646.google.com [IPv6:2607:f8b0:4864:20::646])
	by mail.lfdr.de (Postfix) with ESMTPS id EC391A0228C
	for <lists+usb-storage@lfdr.de>; Mon,  6 Jan 2025 11:07:14 +0100 (CET)
Received: by mail-pl1-x646.google.com with SMTP id d9443c01a7336-21638389f63sf170827715ad.1
        for <lists+usb-storage@lfdr.de>; Mon, 06 Jan 2025 02:07:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736158033; cv=pass;
        d=google.com; s=arc-20240605;
        b=DGZ2TbQPAHm8U2It2rncI1/mB+zk4HOZ5AcQYI61AH07+dMD9IqN63VUkdpqJ/0JAq
         KLRT5KjrQJPR+qLafrTwjwejneZkVNxegBw5QxW4oPVFEPXGau1C91g4VU9a1U0hvZV5
         302CN8M4MD3HpbTeZ3Kd1RSiN+l13WCXeud7Wd5rSBcmAoTyGq0gjK33AjYM5rLRV0iu
         35trGmsTu51kWaXhRVLfGoPCCdTfE2p4GkNuN+PH9Q6PO56HZpPilz6+7zSmhIkQnKzC
         W5d2tGCYWOFpFPNbHTIVAtDvTUygcPklCWAn/2r4uXqTCtQIJ4ZQeVfwtb2U+UdMDUbx
         3Nyw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ujq2vQjP58DDG3KN+ZT4hIUeGQPtGfHZVaVpRu5abV4=;
        fh=jsULBewQTxtBb1XbkYhoJzxXo0IVjGPJsVM9PKgzKTo=;
        b=M1hMLuepvYQyy7ye/CeuCjiTuaHutdQw+wHNNYzPCnopKedy5Q2d6GZZuSyz1KThlk
         WISrwKVVXEA5oYYkYZ+1mu2vazJzIFgdLYc0vv+VGOLvU6NiGKM1cYnIwVETPY//SRZd
         7hSVIkya0uVNquws70V1bd1ciHgDAfcvf5HE18pQdTA0Lgr7Wgs3NPPd174MxdWrtn0H
         8bjozaJdQdlQTpY3pxRi1vPRv63+uJA8f92/In2j1lspT9TrXji8xsyzHt8WigppLjcw
         b3ZtgyLzZI8seYLuBSkipN34W4sbzooHosyf+svwuezPAXbG+DFbaUNq/nyrC5J8mdE4
         F1vA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=ha9D8wqJ;
       spf=none (google.com: batv+41f3ef30789274237cd7+7806+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+41f3ef30789274237cd7+7806+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736158033; x=1736762833; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ujq2vQjP58DDG3KN+ZT4hIUeGQPtGfHZVaVpRu5abV4=;
        b=TlJ1d15XjRLOHq8sSGQJ2CVCxvLD0PTavclLtdZrv+yPNKP+ba/0qh8rQZjTs3hIkd
         /coOENjUPitmEe5yZ42yc84GD9wo0XZmGDWLvfR2S4Roe7fLuoNBHRu5efmQrZn35yZ4
         LGoQb4VXwu7TOBvwqzobgBnhAxoGG/8rx7DDo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736158033; x=1736762833;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ujq2vQjP58DDG3KN+ZT4hIUeGQPtGfHZVaVpRu5abV4=;
        b=kYMitFq88CogLiw3limPxs+wiGA21fiWhuhwrucP3jFWEQBqmX3mU0Sng+SvPR2HJf
         4Nx0cpncJTFdN1c/omg9ZoO/4TRNq4XxGOsbIYGayqf0cDjwUOSNIn1HsP5n84YblAt1
         Bc5vxvB//jdnie/Yt3o2qMxkrLoLrikn0KDNd1WeOcRhPcWTzxKGXWhP/l2ANb7/7V8R
         xrRIdaZQwm7b7odQ/fvdkksiJDyEgnaMaRODmi+9+0XMHXTxQ49V8VypnBeYrI4Dpzul
         blZCC+YhVUpb0C9m/nTxWWC49ZHJN/ECDaCYzYnsgH0aeqmJVprRHWQz8A1wAmQnHr3O
         6Kpg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXVUaaefsahKR0FZz4Mrxf8RSsHqH5fyDpZvZvwKnca0ZSN6pnyM7jYXcThNUmDA5dKE5FL/g==@lfdr.de
X-Gm-Message-State: AOJu0Ywo+Mjx0avCwmy+cy0F+2yEHu5rk9ThJ0wd+1lNl5S24s8G/Um/
	wN096nBYjNJgftHwkM+XEQFznzUJrrGmAsgkHDTTK1Hr7cjGGFmE1u/aFXMxq9A=
X-Google-Smtp-Source: AGHT+IFPFVh1WkqJus0SDrAU3VGf2Rwol7d/lMNBijKp24TFDMD4TQ1aG6qDtDM0ifpizckfenGTsg==
X-Received: by 2002:a17:902:f643:b0:216:2dc5:2310 with SMTP id d9443c01a7336-219e6f26088mr852595115ad.48.1736158033591;
        Mon, 06 Jan 2025 02:07:13 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:903:320d:b0:216:5823:85a6 with SMTP id
 d9443c01a7336-219d9efebcdls390705ad.0.-pod-prod-07-us; Mon, 06 Jan 2025
 02:07:12 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUBeENT5vK6zBGU2COnQ3g20o8Rq55sg80D4kMsCUPb7AYeyQOpqqTG7B7GKERmHcF2oPkeOjDoikNK9Q==@lists.one-eyed-alien.net
X-Received: by 2002:a17:902:d4d2:b0:215:a434:b6ad with SMTP id d9443c01a7336-219e6eb45d5mr767268335ad.33.1736158032307;
        Mon, 06 Jan 2025 02:07:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736158032; cv=none;
        d=google.com; s=arc-20240605;
        b=L9j1tMjekXn4hrzrN+OANiBxJvf/9nHt9x3osWAYvNk4dt8o/rYLLcWFDOBGhYlIHy
         1dS4o5kzZZ0kh7IYd13T4QSuG9wnoi+F0Q4Li5QXfDuTQJNcvbhjgBuVR4Yaimbrdr5C
         sRcBhuqAAwBG+sZg55N2XHM8iLYv7nG0cIxxlQ0CuZVnIni6PFZ63K7z9H/UyKiuoaNQ
         Lrpuh/l7GdR18GN/xoPaZS2wZlcIT1vb/9OU4kEuwNllp7EMu5U3OrpmXGZysv0FAdbt
         E4IK3+QnGviU6YM5BYOTwxQMs4ikpTgA7RZQVqS0FpBldOiZ6l/MsYvwtIPYNWcnrotd
         Dwog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=QcJrAkXza/kgjN9ldeyFMdunh4NKKijDslOdD+6Y9ww=;
        fh=lWd3gkC8mMNZNBBVD9g3TB40i3tO1HoQaqb3EWMImUw=;
        b=hx7HWL5YZlcuTtAlx8cqo8TfcXioy/dbSv0Aoy8UGBXFHcJVT4Qgbr5y0zMV/i5ALg
         BOXbtGgvw2WrIHJIz9Nj0Pi2TyrrbZ0nShH9ikFUPmu4fAEEpRcBW1spwrO1MEjU8X4A
         sK2YDqCtv0nCHhTHCHkDkCGBnwtZTrRhiqQui0aF0RN0j3CYWf14WWVUo1XKu/rchB8d
         HKAUOc45T+8UMTxu1SSTrWsAZ1CUyR2XEfuW1YMtitGO/jxXYyRDTGU22dNTAVt7l2Eh
         /CgK6RDppWdH4HVPEteyyDmmpOAjJLLOEBo15aORp/AZ6Cu5bGpL/HxB02KXxEq+4RPy
         /x+Q==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=ha9D8wqJ;
       spf=none (google.com: batv+41f3ef30789274237cd7+7806+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+41f3ef30789274237cd7+7806+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id d9443c01a7336-219dca059d6si415674285ad.320.2025.01.06.02.07.12
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jan 2025 02:07:12 -0800 (PST)
Received-SPF: none (google.com: batv+41f3ef30789274237cd7+7806+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-db6b-99e8-3feb-3b4e.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:db6b:99e8:3feb:3b4e] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98 #2 (Red Hat Linux))
	id 1tUk0r-00000000ncv-0JEL;
	Mon, 06 Jan 2025 10:07:09 +0000
From: Christoph Hellwig <hch@lst.de>
To: Jens Axboe <axboe@kernel.dk>
Cc: Damien Le Moal <dlemoal@kernel.org>,
	Ming Lei <ming.lei@redhat.com>,
	Nilay Shroff <nilay@linux.ibm.com>,
	linux-block@vger.kernel.org,
	linux-nvme@lists.infradead.org,
	nbd@other.debian.org,
	virtualization@lists.linux.dev,
	linux-scsi@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] [PATCH 08/10] nvme: freeze queue after taking limits lock
Date: Mon,  6 Jan 2025 11:06:21 +0100
Message-ID: <20250106100645.850445-9-hch@lst.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250106100645.850445-1-hch@lst.de>
References: <20250106100645.850445-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=ha9D8wqJ;
       spf=none (google.com: batv+41f3ef30789274237cd7+7806+infradead.org+hch@bombadil.srs.infradead.org
 does not designate permitted sender hosts) smtp.mailfrom=BATV+41f3ef30789274237cd7+7806+infradead.org+hch@bombadil.srs.infradead.org
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

Work towards a consistent locking order by always freezing the queue
inside the limits lock.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/nvme/host/core.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 42283d268500..c6b7884bb343 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -2128,9 +2128,10 @@ static int nvme_update_ns_info_generic(struct nvme_ns *ns,
 	struct queue_limits lim;
 	int ret;
 
-	blk_mq_freeze_queue(ns->disk->queue);
 	lim = queue_limits_start_update(ns->disk->queue);
 	nvme_set_ctrl_limits(ns->ctrl, &lim);
+
+	blk_mq_freeze_queue(ns->disk->queue);
 	ret = queue_limits_commit_update(ns->disk->queue, &lim);
 	set_disk_ro(ns->disk, nvme_ns_is_readonly(ns, info));
 	blk_mq_unfreeze_queue(ns->disk->queue);
@@ -2177,12 +2178,12 @@ static int nvme_update_ns_info_block(struct nvme_ns *ns,
 			goto out;
 	}
 
+	lim = queue_limits_start_update(ns->disk->queue);
+
 	blk_mq_freeze_queue(ns->disk->queue);
 	ns->head->lba_shift = id->lbaf[lbaf].ds;
 	ns->head->nuse = le64_to_cpu(id->nuse);
 	capacity = nvme_lba_to_sect(ns->head, le64_to_cpu(id->nsze));
-
-	lim = queue_limits_start_update(ns->disk->queue);
 	nvme_set_ctrl_limits(ns->ctrl, &lim);
 	nvme_configure_metadata(ns->ctrl, ns->head, id, nvm, info);
 	nvme_set_chunk_sectors(ns, id, &lim);
@@ -2285,6 +2286,7 @@ static int nvme_update_ns_info(struct nvme_ns *ns, struct nvme_ns_info *info)
 		struct queue_limits *ns_lim = &ns->disk->queue->limits;
 		struct queue_limits lim;
 
+		lim = queue_limits_start_update(ns->head->disk->queue);
 		blk_mq_freeze_queue(ns->head->disk->queue);
 		/*
 		 * queue_limits mixes values that are the hardware limitations
@@ -2301,7 +2303,6 @@ static int nvme_update_ns_info(struct nvme_ns *ns, struct nvme_ns_info *info)
 		 * the splitting limits in to make sure we still obey possibly
 		 * lower limitations of other controllers.
 		 */
-		lim = queue_limits_start_update(ns->head->disk->queue);
 		lim.logical_block_size = ns_lim->logical_block_size;
 		lim.physical_block_size = ns_lim->physical_block_size;
 		lim.io_min = ns_lim->io_min;
-- 
2.45.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250106100645.850445-9-hch%40lst.de.
