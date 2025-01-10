Return-Path: <usb-storage+bncBDUNBGN3R4KRBBPJQK6AMGQENJDENJY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1045.google.com (mail-pj1-x1045.google.com [IPv6:2607:f8b0:4864:20::1045])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E697A086CC
	for <lists+usb-storage@lfdr.de>; Fri, 10 Jan 2025 06:47:51 +0100 (CET)
Received: by mail-pj1-x1045.google.com with SMTP id 98e67ed59e1d1-2ef9864e006sf4919237a91.2
        for <lists+usb-storage@lfdr.de>; Thu, 09 Jan 2025 21:47:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736488070; cv=pass;
        d=google.com; s=arc-20240605;
        b=Oom1OjtJTWJizNsyNCTimd3s6/M7kMwhn3AwDPczxbbV1R22hdTGxERcbSfXUFQpYw
         tebxcHuLwC7tTKt59r6Hik1TfE9ceXNt/EgPcnFHlZnszitRfAaiU93o+EccaVOzlusn
         ng1jQFFd1YNihSd8ITgSlHix4vcDGHL080ajBQF0kMIH7uchVR+2cQXg+3k6JK9MDnB8
         K/z332KDNuoJPcFQDU9so2kJUDgxeJxGbcD/T7Js8jvBtFdRpE65JF6ll5jzs7fux5nO
         tvAqIRSfWqFJpZyu2vd8EyBAlZe6L5fcNF6xCFU3PABms6wHXFZhVagxz90bTG9TNJL6
         +ffQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=B7WMW9oLJyeOg4ZXn9Cfi+l9wXcOtvifbddMxV8ulG8=;
        fh=KWDVd8Mx7Prtf9YtIbJdKAGMHMJXDL0OQPXIxTYIJcg=;
        b=hTlHhrmuuvhuXqe8wASQyM4/dBWn0EjQlB5QouuABW9VntCL25T58iAJlRRlhzXcwJ
         Z0Pm9MmS5VL/52cfKcCFci1jSm1uBhbXzpl6L7WHjfnINRRwDYsTQgOwFLDYbaFfH6sK
         dw1PVoXU+z0wwG+g29/phxYZgOzsVfLDbO8vAi6ASr+hxDKgUfVUWKTgP/2/N8j2QDWr
         xgD1N953yRHuIsU1RGGRaNz03SEAqoigJBbZol1WIZ0jd78Chr2ZmOS/fRlsblj7FJ/y
         wwF9X1E2Jd09+tdJIg5eidXNhbZjftiUR6/KxdMEU7Hnw3EaOZDTwdj9eB5o0wvoDzEg
         NQYQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=N0GIwiDG;
       spf=none (google.com: batv+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736488070; x=1737092870; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B7WMW9oLJyeOg4ZXn9Cfi+l9wXcOtvifbddMxV8ulG8=;
        b=XVaoZC/qYr+PjwW+34N3Wvlqem5vyRpqETNTGzgmhHlMWNfd+wfE0pn11D5kj/ek47
         4oCO5+4i1T7ZIybYlQ3xzjAmpfkg18gr4KtFZpu1UowIUQYprb2sej5rw7whEsPEoi4F
         IVS+/NX/umELbSbB1bf5wcKxbVs0yC2l1jxM4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736488070; x=1737092870;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=B7WMW9oLJyeOg4ZXn9Cfi+l9wXcOtvifbddMxV8ulG8=;
        b=C+VNFPWmJS5dtr0esscM49SzWGFS3jR4zj/RTV7vMUiX4HBoPcEoNVjSGIDxC8U9mm
         aRR9IDlaBT/Ge+OTKtidQnEhM6VCgBGBxoT6WhraEDnCWzGS1kla9xseqjzV0/r606fm
         +wt4RGJCsBO/t79CnkVRFJHLE5FpcXzb1sh3qjqf0GhM7ZIOabUvjjeM/u92ELVUUtG0
         FJCWRVNQ6tnWFH/tutB6vOk5I8uieRlXc5O3MCz7JI8BLBSDUIAGOvlox9t6U9hUYHjq
         hdd+1REMjEbnFjF67+nY6MLp+BOy4PJgdLkE6wTKGIpM1YL76GdHWpdNC8KDqFNZVjRE
         ScXg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCV685/XnR1O/CGgVe+Lhbhu3tKtIS/jKPIL6lCM58msA+b0ub2nc9ZVRPEq+Fl4oRlmqucNKg==@lfdr.de
X-Gm-Message-State: AOJu0Yw96DOH6rrw3ob7FtJAhFxJSJHFpxT67Osq3dPiKYhXyvf0H4JJ
	WvmRb9xXMznnETdWrdJffaWPqZb7EMhFjLWHsIraEB/Pxygz2P2lbHfS8eSyItw=
X-Google-Smtp-Source: AGHT+IEA4eIZREiDsAhALiEbUxxnFKOTXpNjHDSUz86FE/W2/CSLaXPGG0x5shE9PmjfDUT0izZ1bw==
X-Received: by 2002:a05:6a20:a126:b0:1e1:e2d9:7f3b with SMTP id adf61e73a8af0-1e88d30693emr16560958637.38.1736488070194;
        Thu, 09 Jan 2025 21:47:50 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aa7:85d3:0:b0:725:ef94:738a with SMTP id d2e1a72fcca58-72d2fc24afdls1566592b3a.1.-pod-prod-03-us;
 Thu, 09 Jan 2025 21:47:49 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXV7XaqCXN6Js7m7zqU30+evMrTcy2VCWXXAWVIONnv3ZbVM9Z4uU2AAVlhS+zi7P/+K6P1sUPBoTNPtw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6a00:1255:b0:726:54f1:d133 with SMTP id d2e1a72fcca58-72d21f4be75mr12279163b3a.12.1736488068950;
        Thu, 09 Jan 2025 21:47:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736488068; cv=none;
        d=google.com; s=arc-20240605;
        b=KsnzshW/M9pw+Kw3/MmD7B/8y65+j4sUx3gV8XG+GpTE3+rAzvglajI/FdezGAwz8m
         eQJocZha/X5xjDm1YbiqdZE7/zqbSUcZ8KHbxwURhdtWCgSIBgHDrfQJ07W3n9vZ8UX8
         VpevwrNUJeVSLjWOKHEb2e3krlGArdyHpOIfB5Fp+T0KKhFvpBDSZqtsyyTLK3dum6Vr
         PZicpikhOxIcn8zRo4FsD7n6Rz9XI++pXJHMfK3jGms9JXfM4Kktn3SsUxYYrI3WRk7I
         DjnoudfFZYsHEhbVlczRnusR9DJ0n87s7d/SULwTu3zt/6dGeh/RGcIGOgTg/C+zCXdC
         OWaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=tfFG7AHPbj5GyYn3ySGYko7fTFv2+//BuJPDN8QWBhk=;
        fh=K4mYBT/f9uT4NDiXg9vO0QvGda7RTqDR2brfxQ7Fzow=;
        b=UqjW/JlOzJaACQ/i8Sjrtj+wnXgiSPrGmCmH39+BiYr5e6ozKaDS2cZYYqLKFIe6dd
         wMLXnEUFcTSQufIOv2WjDgKWYHWiifH3A2IOocCe/kTih7l3zYDh4xeWgi2Lqon1USsJ
         C7kBXaHzd5yXxsyea5teV6wqhQXgcQHUC2BvMiC5UcSxdJ11CrOJNP4ummYI3gWqR2b1
         DKv8hjDyHtmYPTwK1jmMje++rJvjESHSgfnRglbi+1byubXcHU8qTANMZyq71ZDYrx1k
         dZOhrr5h0u9xz9gY1ztMmFHJMwCXmRqrZtMDOHX+2nwqnMQVR4QhiSMzJDPv0V/U1Z7O
         GMbA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=N0GIwiDG;
       spf=none (google.com: batv+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id 41be03b00d2f7-a31f783a62bsi3357789a12.565.2025.01.09.21.47.48
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jan 2025 21:47:48 -0800 (PST)
Received-SPF: none (google.com: batv+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-76c3-a3dc-14f6-94e8.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:76c3:a3dc:14f6:94e8] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98 #2 (Red Hat Linux))
	id 1tW7s2-0000000E4zL-1sV3;
	Fri, 10 Jan 2025 05:47:46 +0000
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
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Johannes Thumshirn <johannes.thumshirn@wdc.com>
Subject: [usb-storage] [PATCH 07/11] nvme: fix queue freeze vs limits lock order
Date: Fri, 10 Jan 2025 06:47:15 +0100
Message-ID: <20250110054726.1499538-8-hch@lst.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250110054726.1499538-1-hch@lst.de>
References: <20250110054726.1499538-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=N0GIwiDG;
       spf=none (google.com: batv+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org
 does not designate permitted sender hosts) smtp.mailfrom=BATV+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org
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
Reviewed-by: Ming Lei <ming.lei@redhat.com>
Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
Reviewed-by: Martin K. Petersen <martin.petersen@oracle.com>
Reviewed-by: Nilay Shroff <nilay@linux.ibm.com>
Reviewed-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
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
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250110054726.1499538-8-hch%40lst.de.
