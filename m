Return-Path: <usb-storage+bncBDUNBGN3R4KRBHEJ7G5QMGQEWAVGDLI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x648.google.com (mail-pl1-x648.google.com [IPv6:2607:f8b0:4864:20::648])
	by mail.lfdr.de (Postfix) with ESMTPS id 58CB3A056B1
	for <lists+usb-storage@lfdr.de>; Wed,  8 Jan 2025 10:25:50 +0100 (CET)
Received: by mail-pl1-x648.google.com with SMTP id d9443c01a7336-2162f80040asf224972325ad.1
        for <lists+usb-storage@lfdr.de>; Wed, 08 Jan 2025 01:25:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736328349; cv=pass;
        d=google.com; s=arc-20240605;
        b=J72g4zdG6XrU9pq6gjktdlssh2XIwBXiL/gGOHiEzsbYiVv2THJixDR34ioEo/0X/I
         +r8uwC2A24JLSRwxUZy2dP0eZhq+I/43JlPErZx2XZd3n78H3Q8xc6VxbwLtD/q/nC15
         3EbR3zNrVBkHYI1ciBuCNevyi2j+o8VIXV2A0cjBHZrdvETIVnxI40Y2a81PHUF0x6fk
         hymzHCQ82/rsO5o5eLlU6GFzsy2RAMgHPuvjr8OzggqJjyRakVEyFjD7BUQH7Kl2WGAO
         2tY99HGq43NOvdF175A071RxSweQt/gPkJI9wHTlEmIPQlxGUeE/Av8xtlbWMJzVEGdI
         Vb4g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=GwyOSs17HYfyQUN+x/NF2xnwfq4DfM0LUBhUJKLp8pE=;
        fh=eU9HdG9vIOAx5BnFtrhwsJ6TyhIwRNSljdTCWwL6azk=;
        b=BBluHBbpfHUNUvagEGu0eDFxzYyxYWa1CYRzMLuOpNgXgWLbVYemfXptjsjuroMTQI
         glSqh7xrZWtdsEh/dyf9lbeDfGApWbzk8UIkq0bfXiuzXIdEzW1Mrwv/QxPFCvysDxlE
         yjgSMvjClZ/ocAAniT/jC+HMT+m8yu53ugQZXPKqJq2DwfqLqsI4or7kKVLNby87NagU
         OCaBqFBoZSIkKWUMd9uUHWFLKJUCY2sSy87SdWoyVUi/evbTQlBv0HgbWldadnGpGnRe
         pfpmsv5Ad3BAhNLoUTeil+J+Adr2z+KA3GjH4SQ4jToM8i6/zOPkzsrY5zur82d9YaYn
         9XqA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=lFPzIu5e;
       spf=none (google.com: batv+9e166f3f48dee24ac321+7808+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9e166f3f48dee24ac321+7808+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736328349; x=1736933149; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GwyOSs17HYfyQUN+x/NF2xnwfq4DfM0LUBhUJKLp8pE=;
        b=CholWnJPZ4Xzix/jBAjfO8dWkuolgL+6DjJSlHIuMC1TnqdcFaA87Euq5IwKZW11p1
         40JJjpPWZ7NSJlJwnW59OMu4LdVb7RvpVaTWphYsQe5WsrmhkekT1HcCQ7wzJOzF1KtO
         gG5etpe1hlmzEt6DAGSAfJD9JT31PAqHbZAfU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736328349; x=1736933149;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GwyOSs17HYfyQUN+x/NF2xnwfq4DfM0LUBhUJKLp8pE=;
        b=fTOy3TrHSiZYn1YW6C2lkeescjLcgWPZb+vUjwzMgd2aw8qbQlY/nT9Fh09FFpaSxa
         ir107SbMXiHK39Xfx4+JflCwzFhay57VNkydxyHd3PPSWysJf7HhbUrgcgvjbP6CCfGh
         F/Y6iDBDmEBAYChj/RXDK4PFxKjuoke70ppzMA2qyzmeyy14bMihpCSdH5XrirHme3+w
         g1QUvMDdovnBIioDTbxRGsIUQuC+BBfz6d042GHAe2fhH6yjeSj/Od3I7SnW678jTk+/
         rg98CnabCFYtfs4xDn8+lC1gbyeAjyXn45OD1UvLqin+P9emD8mEqhWe6+VsDokrsBkl
         Z7Vg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWQi5h19+HVsFw4aHCk2zCcy/Hj2JlbO/351/NEekseIN35Aob5CG6UdZsLPzc16wmrxcE71w==@lfdr.de
X-Gm-Message-State: AOJu0YyAlodsUlfD2RnlMjeGN7c30yrRBgLl4pgPVN2VkGXT/GXAJual
	M/D23orn2SQ+lmhBZxmf7O2DU9R1M/XNQjiVBN/6x2b1qrUaD+qpwv4v9UCAoTM=
X-Google-Smtp-Source: AGHT+IE7+nFlIgxflvm568uePeaclG1NweMLN9g/3CcxFRyG56BWJTDCPPHmqBeBPJRMr6MRyc/3kQ==
X-Received: by 2002:a17:902:d482:b0:216:7ee9:2212 with SMTP id d9443c01a7336-21a83f54caemr29674625ad.23.1736328349004;
        Wed, 08 Jan 2025 01:25:49 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:ebc2:b0:215:2b7a:5c04 with SMTP id
 d9443c01a7336-219d9fb8ec0ls118280015ad.1.-pod-prod-02-us; Wed, 08 Jan 2025
 01:25:48 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXPwhDLnb4NH+2iiTW3sn7PqYK9CyviEgjFEBraOGjpW64iPaY5XNMcxkOXh6eZe+G4U/epqQRWppbhrw==@lists.one-eyed-alien.net
X-Received: by 2002:a17:903:1cf:b0:216:39fa:5cb4 with SMTP id d9443c01a7336-21a83f67c50mr30697665ad.25.1736328347595;
        Wed, 08 Jan 2025 01:25:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736328347; cv=none;
        d=google.com; s=arc-20240605;
        b=DuqaTSNXkkuP1kbz5/DWXnLC4rqYLWm2jtNFGKQj/giAz04+iQUXztFzNlW/RsQIcO
         e3r84BaSqRtpLocp2kcrk+iLDkNa5U3y2RgoM4mr+svaUNZD22BDYegiBnJVX3cMwjGd
         +1upxIXsuu4S6XULOFsrm9ABFe7YQwF0IwV5V/AYOhkLAPj7YSG6IQ+A4KX6xc/KCYKv
         LPzDHz/G2gd9bKLbZ7liu3sRfcEUiO2SLh41FNBzFf0D5FADTiEPcr28NNPF5xxib9iO
         ooCLWNngjgq/h0b1U66nNn1kqKRxHc4Wzlu6jP/AKBaHeOMDGgmeBxjP7fjuH0KzAnhE
         kSiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=y/FyykcMaRy0DkMnBOGmKb4ZiAzVTwuwXpjhne6cFfs=;
        fh=/IQ3556OhCBpzuvXgLE22Yzy616bQT8dDlkj0uCHKWQ=;
        b=MwZs/cfN558uanoE2B6HQy6Hpfb0CYDeIu0BPTlh02lmHhlQpzHtGq2ucAd/gv/qcy
         7ijK2QRlt+I+nCPcq4nnL6MdZ6FIdI6M4kYuuTgKgsqYqXvR26IVSBpRnw54P4QcZGjV
         TEOaxEjDLJpCuzt0kZGxfuFp9HZZJ8O70fA0jSMA3s8EaCVgsq2D6Hl6DnA+U1iwAV8W
         74FvAfmbufIBEvQxN4fRHZJ8BCGDOfBqnRK8F5ZKtB0dRL6q1JNZZxJ+pspygmXWr8En
         pI6qYRLW2YqZLQbaYQ1t5WaGpLlXdloOgE2ZuMlealxFuJrNIIiZc4kxBeG5jPf6hhBl
         oCnQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=lFPzIu5e;
       spf=none (google.com: batv+9e166f3f48dee24ac321+7808+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9e166f3f48dee24ac321+7808+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id d9443c01a7336-219dc9f8744si462625545ad.301.2025.01.08.01.25.47
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 01:25:47 -0800 (PST)
Received-SPF: none (google.com: batv+9e166f3f48dee24ac321+7808+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-e44b-b36a-6403-8f06.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:e44b:b36a:6403:8f06] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98 #2 (Red Hat Linux))
	id 1tVSJt-00000007lep-1Rbn;
	Wed, 08 Jan 2025 09:25:46 +0000
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
Subject: [usb-storage] [PATCH 06/10] nvme: fix queue freeze vs limits lock order
Date: Wed,  8 Jan 2025 10:25:03 +0100
Message-ID: <20250108092520.1325324-7-hch@lst.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250108092520.1325324-1-hch@lst.de>
References: <20250108092520.1325324-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=lFPzIu5e;
       spf=none (google.com: batv+9e166f3f48dee24ac321+7808+infradead.org+hch@bombadil.srs.infradead.org
 does not designate permitted sender hosts) smtp.mailfrom=BATV+9e166f3f48dee24ac321+7808+infradead.org+hch@bombadil.srs.infradead.org
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
Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
Reviewed-by: Nilay Shroff <nilay@linux.ibm.com>
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
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250108092520.1325324-7-hch%40lst.de.
