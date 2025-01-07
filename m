Return-Path: <usb-storage+bncBDUNBGN3R4KRBU4U6O5QMGQEA6ZPFYY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x648.google.com (mail-pl1-x648.google.com [IPv6:2607:f8b0:4864:20::648])
	by mail.lfdr.de (Postfix) with ESMTPS id C744FA037ED
	for <lists+usb-storage@lfdr.de>; Tue,  7 Jan 2025 07:31:49 +0100 (CET)
Received: by mail-pl1-x648.google.com with SMTP id d9443c01a7336-2166464e236sf380147135ad.1
        for <lists+usb-storage@lfdr.de>; Mon, 06 Jan 2025 22:31:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736231507; cv=pass;
        d=google.com; s=arc-20240605;
        b=RTFEXpZljci3QAXh6YiK9CWO2szjHaaHVQ9uMv/6ETwEKiri+js7jitjUVd6wF4T9T
         JfgOQ9+6+08lL20LUraw3NL3Re3ZwO7Kc/Ld0NFdbacLYFAEdud5M+wuJSPqxzQa3uUI
         uiGlNh4k7kn7kzutF7SMoh869cXF8RGPR0G35Lr3HFP6r/Dng+zXPYfTIGv3P/Wu/y0W
         lCLJnGQIgVwRCN8teFaL126vUhpx7L4Eb+F+Td7b0BBKChmxZxZ6n7bu6QNH1Ycq+swL
         CXlzTcZQB1hsRJ4q4tBnRQau6EnXMsGpB9Su3e3QEJb0azK4fURY/aj7kpYQE4UiNNKN
         JfQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Cb5hDqidUImUKaI1pvJ1VxCLKpBePnXGbNLcO0OFVHw=;
        fh=GwBSVYoB6XKryCt8R2V9FdH5QZ+VVL1Wq/98RHhgITA=;
        b=SBbqCuhpdH08a/KGczWkMagMxl4OgqWY7qCbFfjHyAzYvfDG5GWqB1/sisLodaAhoq
         W0pEOdS2ceprqoqWX542HGrl2TikvedQEoBF4j3SvonFK8z2DhONZhhN78q2tLl8qbLT
         ePJdAAryKejX9Ypqk2c147wzm+akojX1jSbl4pOtkXDS6QQqNhD0vJoEB1BDw3vuFXPz
         j5yFkOFI/ZidaPrGiFEQC/YbvaZiNsdN+JoH8/cKm1u6cH+2D+ZoXUD7sysnZh8ZIc/7
         f6AhSrwnWSE/Eo9yzGyw5pH3fSpis1YRqc2SGszlyngGiDMzWisC+BKNx9dDpnSIRsyG
         PHbQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b="aeMnUBD/";
       spf=none (google.com: batv+ca79fa4415f544dfc9f5+7807+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+ca79fa4415f544dfc9f5+7807+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736231507; x=1736836307; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Cb5hDqidUImUKaI1pvJ1VxCLKpBePnXGbNLcO0OFVHw=;
        b=kXCrCrgscTTayqzd+BozNl+onm+Bc+yb35n7o1Ny9S7u5g+fzaQVldGCwkWwa8avY7
         WixI4GpuaUbQ5liLGv9J97vEKR8fda413k1s+GHqg+7utV0RGbQJvlgomR5ZbmwKHQ1h
         o0ZPXAOXXJOP2r08viZzyR+Mko+MVrhNS/pHQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736231507; x=1736836307;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Cb5hDqidUImUKaI1pvJ1VxCLKpBePnXGbNLcO0OFVHw=;
        b=w+pKmZu/C4dTIo/Y6RqbJae99mHvIREwiFscpX85vkOfzOShRAuYNtQwgvgSxmYjcy
         7Jk8sPZgz6/olRJ+untelZ9XHDzNOVwECnKpHP40CnYVWrXkvYx8eHteWBfaktwOqt9j
         qww0XMyxbLBzt36KXF+6qHUxLr+iAXxY7d4OEFUvxE7ptZ4OKY27bQ1NB66jTEt3UV5o
         3IBP9bW4vvqEELJcT8AibQJsmvaNk9NZQolfV5GW9p9Uav907qlM2nkSvJBvZ66YUOmY
         igPF0MKQIwtyBaF/ZF71CDeZkD3UXomTTOqr4Ff+fsx5HSM29eOYS2l1N49mnAwsd9IP
         U6dA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCURugGuvbRnePewRFjlgcKysa52R4x2rSWX7xNAxrXRa3CMKBr4K+9QFCHQiJW/jKDvCytGBA==@lfdr.de
X-Gm-Message-State: AOJu0YwjaZGUmxXdnPt2Cwtgm9cfdbpxwxLYveAlUOnFFacWCEczhmes
	Sr/3G7kD0bRXcqhjyk10GR8jmkAPN4cupTeb3RQXeVd1CdUJN+i3BkN73MUkksI=
X-Google-Smtp-Source: AGHT+IG1GIuF6NDkY0LOZFYwe4C/tqgUALTie8UMwee35kDzNBX+kQQGacFbIT32c+PARPwSGQ6X7g==
X-Received: by 2002:a17:902:d501:b0:216:5854:1062 with SMTP id d9443c01a7336-219e6f4a6cdmr743428035ad.57.1736231507357;
        Mon, 06 Jan 2025 22:31:47 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:903:903:b0:216:1913:1c59 with SMTP id
 d9443c01a7336-219d9fc2ffcls135718155ad.1.-pod-prod-03-us; Mon, 06 Jan 2025
 22:31:46 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXUw+562YUVQKepnv4h2Y1TtlBv99yhJm+nrQ9e5xpTKesxKa8bL+aqIOLCGtIWTnJt7V1x4mFw6qK//g==@lists.one-eyed-alien.net
X-Received: by 2002:a17:902:d4c9:b0:215:6f9b:e447 with SMTP id d9443c01a7336-219e6ebf228mr647804105ad.30.1736231506035;
        Mon, 06 Jan 2025 22:31:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736231506; cv=none;
        d=google.com; s=arc-20240605;
        b=XhLXk5ZNpD+8vyoEYPZo8UA3JhJQLvBvw374KX7N7lsRBcAanpcENLeOx0TsttgEQm
         A591c6mRkdy01Wo69QnV/JFsvxGoTrHHPnYPvWRxMw5vRfB4TYpjKaf3aNZVeKyrlgsI
         x6tZX+nUQP99ie7RlXfQBVYv1Qs5LVjgSgulb3kzuM+zVbwaK6ctN1qxdYLtpZSp+K8V
         1d9GTiMk2hoqLpULKVfDg/r+Qs2R1J0jr2glo+jgycRAAyySXki8ZhAio4RJPV7LsD4b
         OEj7i4D5Exr8iflCNDvx/48MJHHpTf4CrvoD8UqxTK5mLcW2gAStcZ0a3D8sHYfUtiYb
         id7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=a8AkwchBZAjJWtrY4RK7VKovX+Wf21I567Bat+cuJTY=;
        fh=/IQ3556OhCBpzuvXgLE22Yzy616bQT8dDlkj0uCHKWQ=;
        b=Ys8wKtkVI8/7hoIt25gf2z0bRUgadAfqo/6Ouxj6Uq9p8bORsfQxlY2DGNqqvMaf0Q
         MnpYOmyiH1HOlftVYdmcVRHc++lomZA9qVz1ouwIsFuGsLe3L4x2iLxYOyLPw43TwhSf
         NC603H18barz1MpTnpjHMvmJJZqqLE8uTKr0TWj5scp8a56TMd6tFVXuCOxG7xgAhyEy
         pEtiE4b/jeXOXorpWV4c+BNJPSgxUxKB+y0awhpELnShIrPn5eD7CWJSWBOYnBxqXT5j
         VmHPqQW+VvLUwILJIPwgekqvojLswyHTTSy8N9k6JUKQ7h1IjiBS47ZmqvRk5+Plntd4
         nmQw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b="aeMnUBD/";
       spf=none (google.com: batv+ca79fa4415f544dfc9f5+7807+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+ca79fa4415f544dfc9f5+7807+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id 41be03b00d2f7-955c0c3e3f6si7501092a12.14.2025.01.06.22.31.46
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jan 2025 22:31:46 -0800 (PST)
Received-SPF: none (google.com: batv+ca79fa4415f544dfc9f5+7807+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-d467-d75d-35bf-0eb6.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:d467:d75d:35bf:eb6] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98 #2 (Red Hat Linux))
	id 1tV37s-00000003dyf-2phg;
	Tue, 07 Jan 2025 06:31:41 +0000
From: Christoph Hellwig <hch@lst.de>
To: Jens Axboe <axboe@kernel.dk>
Cc: Damien Le Moal <dlemoal@kernel.org>,
	Ming Lei <ming.lei@redhat.com>,
	Nilay Shroff <nilay@linux.ibm.com>,
	linux-block@vger.kernel.org,
	linux-nvme@lists.infradead.org,
	nbd@other.debian.org,
	linux-scsi@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] [PATCH 6/8] nvme: fix queue freeze vs limits lock order
Date: Tue,  7 Jan 2025 07:30:38 +0100
Message-ID: <20250107063120.1011593-7-hch@lst.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250107063120.1011593-1-hch@lst.de>
References: <20250107063120.1011593-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b="aeMnUBD/";
       spf=none (google.com: batv+ca79fa4415f544dfc9f5+7807+infradead.org+hch@bombadil.srs.infradead.org
 does not designate permitted sender hosts) smtp.mailfrom=BATV+ca79fa4415f544dfc9f5+7807+infradead.org+hch@bombadil.srs.infradead.org
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
the queue after taking the limits lock.

Unlike most queue updates this does not use the
queue_limits_commit_update_frozen helper as the nvme driver want the
queue frozen for more than just the limits update.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/nvme/host/core.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index c2250ddef5a2..1ccf17f6ea7f 100644
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
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250107063120.1011593-7-hch%40lst.de.
