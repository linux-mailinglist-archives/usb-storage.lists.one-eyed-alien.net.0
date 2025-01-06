Return-Path: <usb-storage+bncBDUNBGN3R4KRBVOW525QMGQEHQVXQBQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1048.google.com (mail-pj1-x1048.google.com [IPv6:2607:f8b0:4864:20::1048])
	by mail.lfdr.de (Postfix) with ESMTPS id E369CA02291
	for <lists+usb-storage@lfdr.de>; Mon,  6 Jan 2025 11:07:18 +0100 (CET)
Received: by mail-pj1-x1048.google.com with SMTP id 98e67ed59e1d1-2efa0eb9cfesf19579454a91.0
        for <lists+usb-storage@lfdr.de>; Mon, 06 Jan 2025 02:07:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736158037; cv=pass;
        d=google.com; s=arc-20240605;
        b=eEDi9sB5luntnGX3Wa5HUSB0LXAMcq1axSWJ/wIJ+n+5UYTfIKoNzkEYaG0aXEa2px
         sYMaR6ZALFh7ZfSB0TZsNbWH42AVpqrSFQg0/T0rdAMoBM93h9IOkyyqiH7097dOjGvM
         aHODz1yJ8jOhNLVrTCC/g0WNPiz0Ji4+ZWme5UgMAQC9p54EoB6C7yNnzIIr+/lSswqS
         5zECvnDd2dgxaTz8Hap65itnstPOJl5gYPRgSrOgsxebzE5TRSj1P6LlRIpSd+PRdcts
         r/ljWMRPeiAzWDy15B+imANnBKe4TlgJ1eFM3Mh3q8zghRZavPrM2UBJqa68gvbdmKsM
         RCmw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=pWf+FvaMpv+5jvpnoo2a4IwTaiFcu05c3oc0nDcj2jI=;
        fh=+Jgm9Zesxj4ObTHGK0xU62L0FvR1bjq54V55JVBnJeo=;
        b=P4YN1NaTi+A6fJD8vy572gjsBQVOwb5l/R0k2MdWIfB3fUZTzzdeGHNKUT5SwZ5XK9
         iExuawYuvKJ/5McpYvKHN/ffL4eFLw6z7LFuQzAnyzJxqXFYNdct+jHSAEhQv+fmNbSF
         +HcI8o75VuKaltR2PzQGA+sIOrJWy6CBV1Uujh/8vrY7hF1QMhLhxk8LxJ8MuD7dXtCT
         Jg/BVbWo+eIIh+ycqjTKrZbJGFa1kZIMIfHFVJlpXli0I/sqRMLBNuo7bfzn9S8mGm/c
         A5XEyke+Q6FX3F428DQL3xCHblyXzbm6S+D2EIRrZ4hcQgevgq6Y2kFWuxBo2t7OXzvy
         e3uQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=M1PipEhF;
       spf=none (google.com: batv+41f3ef30789274237cd7+7806+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+41f3ef30789274237cd7+7806+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736158037; x=1736762837; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pWf+FvaMpv+5jvpnoo2a4IwTaiFcu05c3oc0nDcj2jI=;
        b=Fg6TBWWQQn0bQAlGLGHlY5TQqI/yDX7C2javhiNtA90R8s2OD8Zlnb3YM3mnAhEPQq
         fqCvz3P4Vz+DCz7Wrnt28m1fkZhz0nWm/9dawWrQia/A/ze2XzCYBUcIyFDDalbQaOhk
         /WShEjjkSEDTbzhHHZ6+OWLAjDpK0PSvAngzk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736158037; x=1736762837;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pWf+FvaMpv+5jvpnoo2a4IwTaiFcu05c3oc0nDcj2jI=;
        b=ZnM5NciODuOgTMfz97GE17k5q5nkq1MXYxrVYwllKtFAAxG3Zsqq1Qb0rq/E9NqBF1
         VgbCSQbKIAL9vNlwy/Ra2jNhUww5mtySgfIyo5xSzd0OhxkYHrM4aYq3zLkLdD1Ftc+J
         4A0JktmcJHPDa2sJUcovcFYOtUa9YiQsWmcGSGDyCaedcDzlOwJYVVAwjGWJ/VjUqnJb
         LM1AIiK7PAkSF7npRZiSNOzQJmMBPjLIxPChkJ4ii/AdYKmdW6DD2/Js5qarUGl2fz5X
         rX2vrLNZ3+RhAMTN2NP7/8xRBSZP1G8O0Lqo2kPgTaPXUhYuOA0m63Ai3SM3V0SuyCy+
         74HA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVjK9nzLxg8MwZPO+FLZxFeeZWhx+ckA0IjEHWN4UE0l6o/6doh1goBKIHrS7B8uEd6M/uD1A==@lfdr.de
X-Gm-Message-State: AOJu0YwiMDzMZS86QaxF6NxRfsAqGGo0zAIfxRJZVkCn7nS3aktkXMoP
	OyyEL1D75YnnhL6I6dAUxl33UTASzGQwiTZlv3Do/NmtNyndsW7YXVSfdiZcqC0=
X-Google-Smtp-Source: AGHT+IGIZeUq5feTDjjWuJWitxTDIZdxWBsdgSo4/E4TF1hd5fL2zt0Chfpr+y15yrTya8GAad5kAQ==
X-Received: by 2002:a17:90b:2651:b0:2ef:2980:4411 with SMTP id 98e67ed59e1d1-2f443607d7cmr91987882a91.9.1736158037470;
        Mon, 06 Jan 2025 02:07:17 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90b:528a:b0:2ee:85e3:3bfd with SMTP id
 98e67ed59e1d1-2f2e8580765ls9627813a91.2.-pod-prod-00-us-canary; Mon, 06 Jan
 2025 02:07:16 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVmqcg4PqRoOgsT0McgvD8+fZkqCSBvWCj477cigawGjwgAmo3jVEH9ezkjWKVRtmnBHpD40fTnW+/igg==@lists.one-eyed-alien.net
X-Received: by 2002:a17:902:d490:b0:216:1a59:5bbf with SMTP id d9443c01a7336-219da24842dmr1005803945ad.0.1736158036284;
        Mon, 06 Jan 2025 02:07:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736158036; cv=none;
        d=google.com; s=arc-20240605;
        b=lTYyXv6lTIEqE4xMMw1t/IL5ViNnf3i4DbUtDuDLxlcipRQ8G0FYX4rVJuNpd4EHk4
         UKBX2B5FZRyyaGSkd30GpHaAawP5crXwUxOhE4HMxa7sGGHJoiitiDIyRvvox25C6gDy
         BaWoMS0tLKv2wWVqp/Ly8cInekotQog/howBNrP/Wf+cckn5Xp6dMib27IuCtqgNo+Cb
         bP+LAk/RU+g9Z53n0FRe3iEJHLT1uwKOi5RTJELgZVi8opERdR8T9iTbiNl1gXP9RIR0
         ZMl/TadvWFCiOyMzMr7HhggnmWvqfsxXC/tsX6k+DHU/5ThaukiseNxCs+H9vFiCJ5pO
         9WkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=D60xcXTNKiK85tFpbqT3NS8N8EInArTaxhDRMqEMPYQ=;
        fh=lWd3gkC8mMNZNBBVD9g3TB40i3tO1HoQaqb3EWMImUw=;
        b=WvjzTazuISlg8Etur1bQvsEl1d8b6fYPHUOqk3Hauyxtuis7qDrmZa2RC7JSc5Mocp
         PfHynw/xHL4GFzU53eyKxwPmvbW/zU+JPoy5h0SUBtnmVJT50arC3bpbXtlqMYi5wi0z
         Nv84DL0DifnaePto/8r2uqtiW4XHWHXGMTViRfKu0njb2M+V14OdXKLX3fkSN20OBzVK
         5JMT380+XHOTBvNpNL8fXzZcH7+dIDhjPwNi/JVgpQybz7YjVjNtkWVgrEOXAJVj38St
         Mei19bS2ExmZlSK8rnGjmDb7+mcZbSLKvY3t1Glz4tguc/hvlDl1y5ynqR7NTbxacywt
         SMbQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=M1PipEhF;
       spf=none (google.com: batv+41f3ef30789274237cd7+7806+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+41f3ef30789274237cd7+7806+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id d9443c01a7336-219dc979c2fsi421081075ad.27.2025.01.06.02.07.16
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jan 2025 02:07:16 -0800 (PST)
Received-SPF: none (google.com: batv+41f3ef30789274237cd7+7806+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-db6b-99e8-3feb-3b4e.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:db6b:99e8:3feb:3b4e] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98 #2 (Red Hat Linux))
	id 1tUk0w-00000000nis-0d1X;
	Mon, 06 Jan 2025 10:07:14 +0000
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
Subject: [usb-storage] [PATCH 10/10] nbd: use queue_limits_commit_update_frozen
 in nbd_set_size
Date: Mon,  6 Jan 2025 11:06:23 +0100
Message-ID: <20250106100645.850445-11-hch@lst.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250106100645.850445-1-hch@lst.de>
References: <20250106100645.850445-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=M1PipEhF;
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

Apply the consistent freeze vs limit lock order in nbd_set_size by
using queue_limits_commit_update_frozen.  This also allows to get rid of
the lower level __nbd_set_size helper.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/block/nbd.c | 17 ++---------------
 1 file changed, 2 insertions(+), 15 deletions(-)

diff --git a/drivers/block/nbd.c b/drivers/block/nbd.c
index b1a5af69a66d..ca8bd2f3b941 100644
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
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250106100645.850445-11-hch%40lst.de.
