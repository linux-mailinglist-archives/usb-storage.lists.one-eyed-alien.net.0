Return-Path: <usb-storage+bncBDUNBGN3R4KRBD6L7W5QMGQEGQV7PQA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1045.google.com (mail-pj1-x1045.google.com [IPv6:2607:f8b0:4864:20::1045])
	by mail.lfdr.de (Postfix) with ESMTPS id 36AA0A06DD5
	for <lists+usb-storage@lfdr.de>; Thu,  9 Jan 2025 06:58:41 +0100 (CET)
Received: by mail-pj1-x1045.google.com with SMTP id 98e67ed59e1d1-2f2a9f056a8sf1062181a91.2
        for <lists+usb-storage@lfdr.de>; Wed, 08 Jan 2025 21:58:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736402320; cv=pass;
        d=google.com; s=arc-20240605;
        b=QIV2+kDNMEn58Rf0LsJl5KuIaLdBiUk+dUF5/cdMXMILtg67FbnSID5HK2lpMPubBM
         l0v72k0KJuK+aYOdo305WJ0YWXrkNYSsYJ06B9wBkzXYMwcU2xIS5mHOSJUcDO9C7sBp
         gNCevKV/Y+xeU4UpE1oLKq/b3Zr/eV7leOQmODlhXl4HP5lMcdjsN5pN6mIiuBwERnFj
         pUPbDYzZ8MrPQU2FartCU42qWPkQRpAE/dx94o0AnCVkBagnpm224bnxz4kMJTR9XrxC
         n0GJxCmVJRrVLEScrNV6wfsYtdhX9Xhw2/iH63fu0orj334ZoUaCwY1VTIXkRVQpZeZ5
         Htxw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=i2BWBBpYNv6wneE7ThjkKHgxcM2bB+V76Lr8O73+fjA=;
        fh=Uj22QAa0kY8kzlnDWHFZp6E07TRWtDe7XETZ3VAj4Vk=;
        b=JxU6rDUt0msiNafe2kGZ1ZQxs89U3d4r5naCrdMiYgoUAeq5NrLYxfdPwam1xeDdaG
         4R7w24EAhflw9FUo4KDJD2/fIVANX5rQaTsO5fCDreyae7tRzx3No7RPe9ixcoUUIt1n
         lz8JrTVslDm3yrKNDV4+LdCAjuOh9qWvK9oGNNBrp1fPmmeJyUQlnPb8EpZDEubSir6F
         ZSPtopLgG2+Fwh518DevQ5br7L6QSmbipYYrmDcYTxjaVHqNa4vad8gFZVgR6hKQEyj6
         Il18Rv6p8bEdP9Ia0uk3YM5aVX0taj4e0E4aqgO+wN+Q7yI94T3V8xUZ+CRmV92tR646
         XyYg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=0kUg0rLl;
       spf=none (google.com: batv+2e5c2b0d924108c2b4cb+7809+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+2e5c2b0d924108c2b4cb+7809+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736402320; x=1737007120; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=i2BWBBpYNv6wneE7ThjkKHgxcM2bB+V76Lr8O73+fjA=;
        b=THUMVYpgKRlqEpiTeQwlAOs4tfmurLQxRT+FOO/IenWh7vRsZRl1RXcs3lZHevXqGO
         G+nnf1yLna8JwxFyKwroB/uvG5+lbkXclGTYGW2rrUBtIIszGNJrgBgB7pwEZ3bzug++
         LJiT4AZzYDczW/AeQMB5Qux71xmyX98Xc17O0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736402320; x=1737007120;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i2BWBBpYNv6wneE7ThjkKHgxcM2bB+V76Lr8O73+fjA=;
        b=tTnXCUXaYc3bioqgnRPrsV/7dmD74OuK0xQ/9dtwtTTqr2xPp8kdP9hqWtyBpJ42Rg
         Ep2IH+Dg90zX9piHITDy+nWOgt9ryBM+pC6leADoTaVxoImVyfLoKbeeTSNxalxEl9dm
         LnD1TR6H8IBEgHB5KWO/ncytUPpQX2pWCeHA28Mkq7HYWx7ifu3tKA6P7ZwNLMUY1SSK
         5SVZkXuZwNsN/1qc2fauHQvhke+UCLmKuK7OXBJLM+39mmCslV2HNOzWkwPpVPjp3PRT
         C3e1qsYEY44smp0Ttf07PerAfHX05F64Zq0JmHPb6KvWz39vSKQZYV7Mgzllr/QSDXjl
         2QFg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWw/sva/iyc56os+L24hFRzh5C+e+NdjuFFlbvc7Du9JYpKIAyLtAau1Rx8zeCMZo2W9pG2Hw==@lfdr.de
X-Gm-Message-State: AOJu0YzKT6LQml4o7QiCQPPYMpBLJgl0dhNxByTYFFHkCK3Cdtjk2HyT
	oWdQ2pfPCL9zsLzvn7pLaa4hPNAsbILBZhPlWz4MT1jOMgRDERCwhGCM86im3YM=
X-Google-Smtp-Source: AGHT+IHpxhTYQ6EqCA8gbk1FA6lrPDrh1UbCGJwfYumvblsf1JVM1tOCO7oJGR1opHtuoEAk4d6bXw==
X-Received: by 2002:a17:90b:3bcf:b0:2ee:b6c5:1de7 with SMTP id 98e67ed59e1d1-2f548e9872emr8415234a91.2.1736402319768;
        Wed, 08 Jan 2025 21:58:39 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:903:25c4:b0:216:555c:ad with SMTP id d9443c01a7336-21a8d183a37ls4901515ad.0.-pod-prod-09-us;
 Wed, 08 Jan 2025 21:58:38 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWoAYkZu9tQWyZAzzT2oEELUJZqiaoOcPDGzxPOH22Byi5rLfhzReirfJ+fJsWvK/PMywF5dXfyrVQ6uw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6a21:32a6:b0:1e6:5323:58d3 with SMTP id adf61e73a8af0-1e88cfdc67amr9426535637.23.1736402318458;
        Wed, 08 Jan 2025 21:58:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736402318; cv=none;
        d=google.com; s=arc-20240605;
        b=WkJyjUhGNXJ00mZoWoQOwo7rsybd+VXPRk0WrZBtlD9Vx7dHUoqHeDxZwBZ3GO+J7y
         sMjOOxKzJHYeqWo7ROcEzOF8kkkEsT8tSQv5SicXjFCfaPZglk7Vv5Ljczq7v1L+mfOo
         wHeGjXZd16sM1ZYJZ1/lTJsuqOcAJ3CcIeM2hTfoe2sfJsqAx6yfw5qKnSEzkzTl12Ak
         5pxWpGkbKn1QOach1K6LyhNxX1u9SMS8xee4B6oWzNnVITho65VKnLsy6BFKEWox7cyc
         yh8shoCi5hI6nq2ZDecYk+LLbLTMlSOsRdvKKdpledbiBnYp3SFAl8m/m82R0d1ZNh3a
         /CJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=o2Aj0wgk32Q0I51KcfGG6ftWWZKQo4e+5ypDpflhfcI=;
        fh=WRAGdV8aIMVVSYoSeklSBzbPtpnXpjY3BgoNNJPLYpM=;
        b=aaUeBIgLQzgfHN9KDEDM/T0gUrrphc178pFBiSBDjBBC7FZREoIF7Xk0+fLKyQ2xf7
         HYK6BVSDEruwGSYpdMTu38KHbRjgAynJA7SeUK/+m9Y4hF9VMaDE/eMZlA8UhrfNspDA
         BV5eHwEyzrWO7YsCYfP0cqyRjMhZfGkeXxkOT+hW9jfwPDoZDP38vKs1tdq19tGJ+e89
         lADgEMrvSiBdWVPFg91+NjVqkClorm2QKZY5Il4OD98zpRbaLQ6p9Oirab1TPpQygrTA
         p+doVtJbx6kJFXHn2u0cK9ad25SL4G2lzpaFWARGufYlfkbGzlWfJZLNCDaw1fOG7b9i
         uDVw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=0kUg0rLl;
       spf=none (google.com: batv+2e5c2b0d924108c2b4cb+7809+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+2e5c2b0d924108c2b4cb+7809+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id 41be03b00d2f7-a31ff556701si755474a12.683.2025.01.08.21.58.38
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 21:58:38 -0800 (PST)
Received-SPF: none (google.com: batv+2e5c2b0d924108c2b4cb+7809+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-ddeb-cdec-70b9-e2f0.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:ddeb:cdec:70b9:e2f0] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98 #2 (Red Hat Linux))
	id 1tVlYw-0000000ArMo-3rq1;
	Thu, 09 Jan 2025 05:58:35 +0000
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
Subject: [usb-storage] [PATCH 06/11] block: fix queue freeze vs limits lock
 order in sysfs store methods
Date: Thu,  9 Jan 2025 06:57:27 +0100
Message-ID: <20250109055810.1402918-7-hch@lst.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250109055810.1402918-1-hch@lst.de>
References: <20250109055810.1402918-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=0kUg0rLl;
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

queue_attr_store() always freezes a device queue before calling the
attribute store operation. For attributes that control queue limits, the
store operation will also lock the queue limits with a call to
queue_limits_start_update(). However, some drivers (e.g. SCSI sd) may
need to issue commands to a device to obtain limit values from the
hardware with the queue limits locked. This creates a potential ABBA
deadlock situation if a user attempts to modify a limit (thus freezing
the device queue) while the device driver starts a revalidation of the
device queue limits.

Avoid such deadlock by not freezing the queue before calling the
->store_limit() method in struct queue_sysfs_entry and instead use the
queue_limits_commit_update_frozen helper to freeze the queue after taking
the limits lock.

This also removes taking the sysfs lock for the store_limit method as
it doesn't protect anything here, but creates even more nesting.
Hopefully it will go away from the actual sysfs methods entirely soon.

(commit log adapted from a similar patch from  Damien Le Moal)

Fixes: ff956a3be95b ("block: use queue_limits_commit_update in queue_discard_max_store")
Fixes: 0327ca9d53bf ("block: use queue_limits_commit_update in queue_max_sectors_store")
Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Ming Lei <ming.lei@redhat.com>
Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
Reviewed-by: Nilay Shroff <nilay@linux.ibm.com>
Reviewed-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 block/blk-sysfs.c | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/block/blk-sysfs.c b/block/blk-sysfs.c
index d2aa2177e4ba..e828be777206 100644
--- a/block/blk-sysfs.c
+++ b/block/blk-sysfs.c
@@ -694,22 +694,24 @@ queue_attr_store(struct kobject *kobj, struct attribute *attr,
 	if (entry->load_module)
 		entry->load_module(disk, page, length);
 
-	mutex_lock(&q->sysfs_lock);
-	blk_mq_freeze_queue(q);
 	if (entry->store_limit) {
 		struct queue_limits lim = queue_limits_start_update(q);
 
 		res = entry->store_limit(disk, page, length, &lim);
 		if (res < 0) {
 			queue_limits_cancel_update(q);
-		} else {
-			res = queue_limits_commit_update(q, &lim);
-			if (!res)
-				res = length;
+			return res;
 		}
-	} else {
-		res = entry->store(disk, page, length);
+
+		res = queue_limits_commit_update_frozen(q, &lim);
+		if (res)
+			return res;
+		return length;
 	}
+
+	mutex_lock(&q->sysfs_lock);
+	blk_mq_freeze_queue(q);
+	res = entry->store(disk, page, length);
 	blk_mq_unfreeze_queue(q);
 	mutex_unlock(&q->sysfs_lock);
 	return res;
-- 
2.45.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250109055810.1402918-7-hch%40lst.de.
