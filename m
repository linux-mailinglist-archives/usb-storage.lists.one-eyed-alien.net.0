Return-Path: <usb-storage+bncBDUNBGN3R4KRBH4J7G5QMGQEIEYRVIA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x646.google.com (mail-pl1-x646.google.com [IPv6:2607:f8b0:4864:20::646])
	by mail.lfdr.de (Postfix) with ESMTPS id 89934A056B4
	for <lists+usb-storage@lfdr.de>; Wed,  8 Jan 2025 10:25:53 +0100 (CET)
Received: by mail-pl1-x646.google.com with SMTP id d9443c01a7336-21655569152sf225333355ad.2
        for <lists+usb-storage@lfdr.de>; Wed, 08 Jan 2025 01:25:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736328352; cv=pass;
        d=google.com; s=arc-20240605;
        b=WNt8SYrJGW+EiU62DYtL+X/2w8VGNB7DVNXHUbrMrEkWhnjtKVIAjOvFLO62uz/N3W
         6Cl3VgAiB99q9MhKQDs+2bAj8DLtE+S2CQu/60VMn2w93B2dm9gLBKBuHUGMVbwvwQlt
         Fkwt71/rCS5Yh0UQAD2UytPGI/oydSZbMhy8t8CwKdhfDq0nAsypgzeA1iCM62mLVcgu
         GbiEVlDPzRWKygUN4AuqsD9J7nLTaksJy2mW4g8PzIiAeomU8kPhJvLNAkgD9RCJBq6Y
         b6EJP3r6cV1bKYINi1HFU46fhILco3sYeaX5XwhgtGaQQt0xDubTZIMCw8X+AXMwK8B5
         TLug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=w9eTu1SZQNgQaST4V4d4PGoW4SINaj20MWds0mBNSZA=;
        fh=0tomjiKlNodoEjjP4/uq3XlcQvT1bq/i2TNG8//UJ0E=;
        b=X3lOYAJTzqxLOtzu7zayXgRIiu5eiOtyPtIlTnoTACSHfu6VpugEpOfw8X85sxJs8e
         xVLAsmKBmo10RRmK2nxdSAbJfxvJGTYd1baXUG+i+NeeiWFO+UW0D85gwe9mu6DZX1Y3
         Ld20tYEsYQ/ON3F7JkRAEUjO+nuVHNa+PJqMYGOOZY96TiiECsAo0mxZ0g6bQWJcGb1f
         xnIXxG7noqdkWwQhr2a48at9Ku75zMIA09+ELhPQ8MNT4npV+Q0sQEtx1wv2Qah5Nfyk
         sG7ijZFDLCLLzl2qvGVDou9R0gBMPmRSxLix7rxIrk6PQd+jT64q+8Jt8iyMCjRIJRdU
         P3eA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=BDJnlIfk;
       spf=none (google.com: batv+9e166f3f48dee24ac321+7808+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9e166f3f48dee24ac321+7808+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736328352; x=1736933152; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=w9eTu1SZQNgQaST4V4d4PGoW4SINaj20MWds0mBNSZA=;
        b=HJvzgPcj17yGmFM/UFo2DRP0e206cFFHx+afvZrhXeH6hBv7lUJEXZ2+v3Y47Cp9ea
         fCDWzz0Rxvup/l87T8ell5tqaz2vPBYbdGfeaGblis6PHGVOh8k3TU/pht0nBtQGIuvA
         N78FLiFX/udg7hbGTW+geKZWNM4dHjEomAm48=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736328352; x=1736933152;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w9eTu1SZQNgQaST4V4d4PGoW4SINaj20MWds0mBNSZA=;
        b=V2gWDEl0FKvJNEqdHPLzRrKoKKkBlJ+aaf66VHvEisTyFQw19UpWpwGgpURb9PsUDV
         h1CZ4h4Cn3wnFHulWXJLPmxE7mw9cYpcTdg/fGPj1WQOD8h4VFNIsSGQUB6WEKzlphEl
         a6MZm6cpuS+EZL4FC0PZQlAtY70RsLhECzqLtWsfu6jrYyPCElVVA+QfDAZmqjt++2Qw
         VMBTKhS9DabPobft8GodSa7SKdgKrQolzg1CYejvpXCY1v0FF8RkYOUwG1tRwy3/pKSH
         ycPt6hstX38Uc0wJ9Xkxqu2nHIIpT/B+lGXO+d1oAD1yiv1R5nU33AJ0/1uoabjRhC4E
         9CuA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUnK/v85SvjmmE5AU6WI8eyT/EeUDFqAP7yzqLftvrTM43xAh9BlAGIrjunSvp6jdbvnjpXIw==@lfdr.de
X-Gm-Message-State: AOJu0Yzt+9VWa6ItuoHlZhaGezNqWd7NKKD+8OCnBPB8aHVfoQOmc8AK
	MrgFJhY5rNRHYoCJzoAiRQ0b+YDqGeE9Vu2vV8/EIcDlEdrOBVhSfUJhkHsUDq4=
X-Google-Smtp-Source: AGHT+IHLQvQAJuBrBDWwnJhZftrU4R76Efun4020iPThKSSHVU/D4Pp0wFD01cnWF4nRREduQ/TmLw==
X-Received: by 2002:a17:903:2804:b0:216:69ca:7707 with SMTP id d9443c01a7336-21a83f69602mr25331225ad.30.1736328352127;
        Wed, 08 Jan 2025 01:25:52 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:d511:b0:216:3440:3d16 with SMTP id
 d9443c01a7336-219da00a482ls63211735ad.2.-pod-prod-02-us; Wed, 08 Jan 2025
 01:25:51 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCV8E+TARYhDabSWTiZXq+pY5F/48qr4E+26J3/RXZ5xwExfBDTjl1APxhxPt2+qiwJYNmJkqFoEot9NBw==@lists.one-eyed-alien.net
X-Received: by 2002:a17:902:d511:b0:206:9a3f:15e5 with SMTP id d9443c01a7336-21a83f69cd4mr34715755ad.32.1736328350879;
        Wed, 08 Jan 2025 01:25:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736328350; cv=none;
        d=google.com; s=arc-20240605;
        b=X2TLtHFy9/sIAEqQbbfdrJ9VgzvtgZ0XyES2QcPyDn2bfvNuIGIeyrX49If5vdRtHJ
         k97QtcL9wiXPJJUlCCSzr/7TBFnsyFy30I9hvQoN3PNefFa8r/lPFuZxLazcDGNKXx2H
         34ukYBi652q1zelp9XRGgr/f0hxAHOaXl6q6MlW9GJlUuVS547uWSFID8jT3Gpext4to
         mh8aC0YBuLwB9oVjFWVIBNSpqO00ZQtmkevLGc4GwzfE8ArIy/9VsIcTZnXtHM5J5+t6
         m/G/iTZXCMhXRMbYpA9TBOXI1/FKIFn9kcW6Z290QRRZ6HQTr/OaC5dNekRH9okvTo74
         uaUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=/leNgSj7YcRBg+an0LkvgucxyjiDM9nOTOyWQRUPC3k=;
        fh=/IQ3556OhCBpzuvXgLE22Yzy616bQT8dDlkj0uCHKWQ=;
        b=M83dmhc+e6i74zFrWtcRXd6dPkw8vvJ6DuDxQ6E/s/9Ocpah8IUXajXRGTAGXeOKRV
         paBo+H8CAGpQAq2p/xguBbfP+Lra6gA6X3qeOgSIzEdSAHAyGodPCogoKW7tUsSZlmmf
         kMliBZxjLi7rIRFWA2igt9j/l+RiGsufymDhhSPuoqqCtMz3OGqDXZwbHpKcFEdcDKuV
         iEldg+tzNwUenBPMHbgUwEAfTuxs7rgs/eLUVnCt1FjjZSqFBF36LzVT4n8U3rAmQZx8
         fSaQOnPsoXzUagWbhOQHat1gWy6jXa6nim4tCSL/HeKS4NeKY4Mi1MuZU6KeZ7NXizNN
         6jvQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=BDJnlIfk;
       spf=none (google.com: batv+9e166f3f48dee24ac321+7808+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9e166f3f48dee24ac321+7808+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id d9443c01a7336-219dca05773si454406375ad.350.2025.01.08.01.25.50
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 01:25:50 -0800 (PST)
Received-SPF: none (google.com: batv+9e166f3f48dee24ac321+7808+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-e44b-b36a-6403-8f06.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:e44b:b36a:6403:8f06] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98 #2 (Red Hat Linux))
	id 1tVSJw-00000007liE-3Bte;
	Wed, 08 Jan 2025 09:25:49 +0000
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
Subject: [usb-storage] [PATCH 07/10] nbd: fix queue freeze vs limits lock order
Date: Wed,  8 Jan 2025 10:25:04 +0100
Message-ID: <20250108092520.1325324-8-hch@lst.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250108092520.1325324-1-hch@lst.de>
References: <20250108092520.1325324-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=BDJnlIfk;
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
the queue after taking the limits lock using the
queue_limits_commit_update_frozen helper.

This also allows removes the need for the separate __nbd_set_size helper,
so remove it.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
Reviewed-by: Nilay Shroff <nilay@linux.ibm.com>
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
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250108092520.1325324-8-hch%40lst.de.
