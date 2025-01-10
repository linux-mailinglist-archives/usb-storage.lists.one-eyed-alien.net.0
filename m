Return-Path: <usb-storage+bncBDUNBGN3R4KRBCHJQK6AMGQEQUCUACY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x646.google.com (mail-pl1-x646.google.com [IPv6:2607:f8b0:4864:20::646])
	by mail.lfdr.de (Postfix) with ESMTPS id 66D99A086CD
	for <lists+usb-storage@lfdr.de>; Fri, 10 Jan 2025 06:47:54 +0100 (CET)
Received: by mail-pl1-x646.google.com with SMTP id d9443c01a7336-21661949f23sf50788345ad.3
        for <lists+usb-storage@lfdr.de>; Thu, 09 Jan 2025 21:47:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736488073; cv=pass;
        d=google.com; s=arc-20240605;
        b=Jt8A2PtGXQLcE0XmvtWg3PGybJ7nr8Wusn8AJqi2+4WYuDzdTGyPVZCcCucCinPPKK
         IkrNUe3KTZ2r97pbEV+NcsMI+PSKAJHvCuPxHcIdVoRL9frLHdSZbtfIRlbgHj/x3zhF
         mAfgbQwyU9SNeUleerJnDeNzoorK+KwMyhIPaSulfLzpmpesEaN89c31Wr7BapVfBBSp
         KbeBNtCVqmC7vbf2Q537neAs4JdTFdxVA0OaYYvq6G3DZ31XaI/TxVvm7xdoHOrta3Sv
         aVDI9IsYuXqf+Zzz/Yf7SaLw1+4MFMwihRzO7/DRiLxbCCjPwC6ZHYJnUqEjlKbd5tt2
         XPaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=4xyihw1269W+kpI7AMsdhXUDZj4Y5PmGJ5ArfdHPjCY=;
        fh=l4zq3puGbz2vgYVS90KbHYELn6xcnNtrDcVKPGY4pXM=;
        b=Eqm8RQTdeiEZv2Dyy7fSwSZvb8G2MiCuz8p3yy0TTm0C6hQLkvcg9Va+5weqZNB1Xv
         zDdUaO059ARBuhaU+RDwKzeKfwXetjcGWuOn0Ji1/X0aCHBTn/cu8NuhriNA1FwiW94N
         BuvTMdJkc9zmXMvWBzrbRQr6LX51IyTM7KdGzMauIxS0m0l89XhCaoOPAuAK5NgjVFuA
         a0RANjW0v/F8bprAAoCppLDWD0+nh6CYEapygoY829r3om8IHyEm2FKPgeyIawFODYYd
         rCZcD3bf0SLth502ka/XnnRAQDg2w/k++3PAey30decxZYfqY6HRKXm4QCu4kySz4E3k
         5Qpw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=xKrIFSs8;
       spf=none (google.com: batv+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736488073; x=1737092873; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4xyihw1269W+kpI7AMsdhXUDZj4Y5PmGJ5ArfdHPjCY=;
        b=I6FxYXq0O49NkRztpe9ijzWtJIl6MByvAHKwElsNb2kG3lzjb0+1MpFl0xLsGdnOA2
         fu7a2z2On/J4va4xDGGu0tUR/6XHs41YGWAlTWCMnCM07CGLE5hOdLvuihH5a1XwDfGs
         VUUBoXiuaUup+QM1/yyvf0piByLrN/DaB2rTg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736488073; x=1737092873;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4xyihw1269W+kpI7AMsdhXUDZj4Y5PmGJ5ArfdHPjCY=;
        b=QCkNIEOebihM0AJ9LUoRJ0lyCWa3pqLd/146ZMHIrkhIymWSJa5eCItMEUNUaviE5w
         tLhe5T4keBdJVuScdLBbF4HQi+XVorDfLL4JjE6bJj1fL713QMR5xmNlRpSl9J+948vk
         IjvDRQuYDsgZ2ZtsDnSrHnxnJUGOPz+6TJlXX/9v6m2QZMucVH3IZ3Z5MVg387TLKDTO
         Bukto60OhZ+OJOk3ZFZvznpXybpvDIrw4HiCBPDOM92eEODwNj8Ryr4FgnEBlV8f5ssy
         /MSifk79kg3z6KZJkT9GA0fN8rFvs3kdQiYnaZ8ZtG/HHAaiHosMHUyeAMTL964k5yVJ
         gwXw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVN6H4KUgF3DWBQTkpnH5MCmgWx9YdyTBF5cQj7R+/sjQ4FhF+eFvwOWc4njGH01I8FeEJ1JA==@lfdr.de
X-Gm-Message-State: AOJu0YzGxBs7a0sToIiyL3tIAmJIyvkzE76j6pInTHkcUp4cBZdLh3xe
	nGlGjYzYwo1V4tX28YoPMKD91VsQJOTHB0cRSiYLP8LTzJqStScr4oy45BR8amI=
X-Google-Smtp-Source: AGHT+IFzfDkQp7Y89FdiaCQvsIlVVFMFjjeMqeLaN55TXdxL8uYjPvRxRWJ8LrbNaJ9o7cHcW+lMZg==
X-Received: by 2002:a05:6a21:4a41:b0:1e1:ab03:8653 with SMTP id adf61e73a8af0-1e88d0e63bemr16068734637.9.1736488072878;
        Thu, 09 Jan 2025 21:47:52 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a62:b503:0:b0:725:d2c5:1038 with SMTP id d2e1a72fcca58-72d2fc5d1f7ls1611644b3a.2.-pod-prod-03-us;
 Thu, 09 Jan 2025 21:47:51 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCURzisDGOlxNAyHIvfIQa+xWs0fDY42+8+l6fJ6YvhJ/uH8rcuTw5kYJoi6n7pwzwazaf3GvFcApbWByg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6a00:4485:b0:71d:f4ef:6b3a with SMTP id d2e1a72fcca58-72d21ff51f5mr13856992b3a.21.1736488071532;
        Thu, 09 Jan 2025 21:47:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736488071; cv=none;
        d=google.com; s=arc-20240605;
        b=gwGD4n0lSlctA1lTZmm5oBh1DOkG9NLyXdpN0/ZYEEn5O2egKs4VMglyq4nLyBdf7u
         GJLL6z5SCfTQUdL/tZwch2qh0Pni49i0yoEFt2ordHxXkCNUCjJIqJMs+6+Jxe8SvlZn
         6MLR+IUgRE4xkZvGuogSDu1a9fn1GJfN0v+7u6FRkJA9ocYJRLVEyYJ69ajWYCSPMbEo
         /OD43pZlL3mSbZCdJi4h2Ddk6KlArWNsmzoAc22gv1KLXybrVAV5+/UXeNFvdQnmUd1j
         Ayu7DMUMrfHpiELwTdjO6QaP6flpbAV7aYQXca7kdK+81WGhuYILY2jldbLM2+DtRmIT
         peQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=mLQGd1tzgBocbPkdpMW/MCZZomVNELJB7gQ/G7Ok6CI=;
        fh=K4mYBT/f9uT4NDiXg9vO0QvGda7RTqDR2brfxQ7Fzow=;
        b=TbXt/Iz1pDOLxmGOaHeHfls8yN9qRmKa48OXpQjphLnZNKz2c1p5qlajHdfj9xFbmZ
         LuFn5kgHHci5lyZNKpPzrxxZxHAgtYDTccDzoPJ+wtLhSOYn+m+Xmiumdsn3AcUM5ODP
         PKaffSoik/foiOxgfe+ClQR8ejN21SfabHpXSqi/My1LPGRgWyR8pY5fs0cJdJuOAcCa
         jLxnju6Wfz+xGXKCMaO4+xVV9qSLFipGCLGmnEcdCkF7NnvS/txImZH2wSblOp6NSSqn
         94JeAV8zIT0xd2ZlkgKC6yQcBIIS59akQCMHwjYh6fXN0VMpF56vX/FMBQFVKniu1GQc
         RlZA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=xKrIFSs8;
       spf=none (google.com: batv+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id 41be03b00d2f7-a318fdea497si3598025a12.44.2025.01.09.21.47.51
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jan 2025 21:47:51 -0800 (PST)
Received-SPF: none (google.com: batv+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-76c3-a3dc-14f6-94e8.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:76c3:a3dc:14f6:94e8] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98 #2 (Red Hat Linux))
	id 1tW7s4-0000000E514-3v4r;
	Fri, 10 Jan 2025 05:47:49 +0000
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
Subject: [usb-storage] [PATCH 08/11] nbd: fix queue freeze vs limits lock order
Date: Fri, 10 Jan 2025 06:47:16 +0100
Message-ID: <20250110054726.1499538-9-hch@lst.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250110054726.1499538-1-hch@lst.de>
References: <20250110054726.1499538-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=xKrIFSs8;
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
the queue after taking the limits lock using the
queue_limits_commit_update_frozen helper.

This also allows removes the need for the separate __nbd_set_size helper,
so remove it.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Ming Lei <ming.lei@redhat.com>
Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
Reviewed-by: Martin K. Petersen <martin.petersen@oracle.com>
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
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250110054726.1499538-9-hch%40lst.de.
