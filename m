Return-Path: <usb-storage+bncBDUNBGN3R4KRBUEU6O5QMGQE5GLR3BI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1048.google.com (mail-pj1-x1048.google.com [IPv6:2607:f8b0:4864:20::1048])
	by mail.lfdr.de (Postfix) with ESMTPS id BA816A037EB
	for <lists+usb-storage@lfdr.de>; Tue,  7 Jan 2025 07:31:49 +0100 (CET)
Received: by mail-pj1-x1048.google.com with SMTP id 98e67ed59e1d1-2ef6ef9ba3fsf22454884a91.2
        for <lists+usb-storage@lfdr.de>; Mon, 06 Jan 2025 22:31:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736231505; cv=pass;
        d=google.com; s=arc-20240605;
        b=Qeno6kohCKGSXPqnp3XO0JlPLv7jAC1JO1/Ki9+xneJrs8CNYViI6SF5d8BqMg2kIw
         5EDRA/OXFA7kGsC7+RJLFf3hxIsV2rmDbrfXBMn1geFOYKBlpC7e+MoaWqD+NFt4rvkK
         VwN+B1R9ghBTDgPcT0vIX2OH98ZxHuN0ZpvGkhyKO2wlDu0x2ErP47SsEYl8vZidopEJ
         qj2GyFWqhQjv8/b4ihG+3RmzprGQXm0dvMhtXkEZAUbOSwciBxzpDFX3cFEU45jqs+OX
         WYFxKtLeEhuUya5M8VIM0vNYIl1oIxFiNRMQpbAQaR+cULsuQedXgkY1n1TzsgbKz+FV
         w10w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=1dbqbw5u+9kAd2oz8UEb3eaGdjRcyj5U0gnjVwe0rWk=;
        fh=jHicWteae11RngoCzLQuED5Y9jdpoMl2V4YtIVisrkw=;
        b=e/+/TrtOHOm8so/qdhjj/dkvIY8KBbWHPLag6L44IacvqjMMv2e9TtcXUMZMf4psvu
         zSjtzo5h9tjjc046negIjVw33NvEYoE1tvWCGX+6XDmyzJ6mxqSTKNlcYcv1LBICGalC
         ksXdc/L4l/5u50PQg6Aw23tKuWdefIsRDdJOiEHhtWuUOGqJIwqF0/slFYPLqPEJIsNK
         bcJqRszSAN7oUayphROq0FlV8jrURznvLzGY2LOFO1W1iHupvqsFOYzzqFGZiowiextZ
         BZR/XekMnJJQW9k2eI3VD2Jy0OLbJP/uYE3bOjNNWSPhHdoo1ZAfRLcQanqh8KrDUdE7
         wa1A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=DA4OpRwO;
       spf=none (google.com: batv+ca79fa4415f544dfc9f5+7807+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+ca79fa4415f544dfc9f5+7807+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736231505; x=1736836305; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1dbqbw5u+9kAd2oz8UEb3eaGdjRcyj5U0gnjVwe0rWk=;
        b=ZR6XwRfJg2rOq9rbGYV71LHdpkMoNPKEyfW75R47riuCbKWrpS3Q6UhYpcM6qt+6T8
         QM9ivH1rM93h/pNiVvjvVq77Q5L9ncXKp4pNQ1JuUzALMjlAtZhjGim7qEn8nRnC2UnL
         RPhgtPnXwj9caUXrGsEsc4vynI7FJQPnZyso4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736231505; x=1736836305;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1dbqbw5u+9kAd2oz8UEb3eaGdjRcyj5U0gnjVwe0rWk=;
        b=qlzMVJo06got39Y4+TRaj2CyZL8U1ejpy5EMzYCsDyePKx3Fww6+46glh7THPUlGjz
         SABMzc82LBk4Q+3SpKwTblvqYuVhcyleIcDAjWdcT6cVX1n7HRXW0mXJUmvIGpKMZUDK
         LRdyF+AnDL2yjxtHr2t77tNxWkIH3pMOLhaAP9L/LXU5Fc1tF2P0SD6qC/iXIsMyFEYQ
         etuaq3m53BqvsNJPNDx27bxp4z7YFFYQXlLtUXdXdtCrRv2yikq65NEOj9LniRyb1LPX
         fAdiujl3J0FkdRgkNqd8jO6ANmnlLuOQwsv6L7M3suNe7Z1A36FBp+XT4QPiJk7OPDQm
         xq0Q==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCV9+1JgR8nTjlhg1FJzCGQuKsah2TtfumbDI7S552B3sRd4TJmUsD8M7LL3MbrSa05lG+H7ew==@lfdr.de
X-Gm-Message-State: AOJu0YxEr1Bvm0VpvhQb5W4wnudfoZDqbiSXEWDW6kQyEP8psLtI/ASE
	eH4DQgfJLaYx8L1fMG3lYkX/fZ7CqiXCkU/YLCwxnSk4NQnZCZ6ARY4/bX9hn6M=
X-Google-Smtp-Source: AGHT+IFipMAOyLspH0ArhkL7+7Z8CjpEVoD57jllC+bBwbBayE1oJYYBM1M2x+91kHoskPIgU2mL9g==
X-Received: by 2002:a05:6a00:8089:b0:728:f337:a721 with SMTP id d2e1a72fcca58-72abdd7bc30mr72629891b3a.7.1736231504944;
        Mon, 06 Jan 2025 22:31:44 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6a00:4ac3:b0:725:d62d:bfad with SMTP id
 d2e1a72fcca58-72aa992738fls7284954b3a.2.-pod-prod-05-us; Mon, 06 Jan 2025
 22:31:44 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWdrw8PV59x6oS48MfAax9N1PoGxlhJCJiUbCQFdo41tMnlRPE16kTP7bnfWNp/H+0O5OdEN2A5/a9gLA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6a21:3987:b0:1e1:dbfd:582b with SMTP id adf61e73a8af0-1e5e0461e18mr98936044637.15.1736231503700;
        Mon, 06 Jan 2025 22:31:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736231503; cv=none;
        d=google.com; s=arc-20240605;
        b=R/tixgN7gWb0/NYb3iGCx1DJ9KBlicRHFfKeQdz3fNThzz1CDJHwZ3JolvcvQjlkM7
         WC9GqHv82XqTM6UxahDauswfSarJZFkVG1LKzN/q4ylTQC7bX6G0+DuVuIj1IcYuhVsk
         g+XuekpUfVn5nzg9CSUnDXFRCWMRoHjf78XjoGdAOk0OISW9IEr+4Z7Wk1SBZmD/CQaN
         1sWU98ZsYSZW2RLhqNn/OI0zXFGQSxPKrZPRuO0PpTGRdggfzLrB+5tMHolU/jyZktvz
         uGkvW366HbMsd7Kelk+AINCLbdV6Ljr2aFTjPr1x1QW5nFT8JgaDO4w5nhyVPQ9xaKir
         dmBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=pMQiFqzMKsYUd5COwdvMVoaFbslLj2mcHOdXT5wS4Qc=;
        fh=/IQ3556OhCBpzuvXgLE22Yzy616bQT8dDlkj0uCHKWQ=;
        b=lw0uz9hutSarR1HUNa4GLZjuwG6XRFf/xz9oPcTvxLrTxONWnv3C86682hgUSVlYho
         FHYFUWjO/QfzYYScCrS3q+RXGLmouGNRwQbWRQDupRTwvZkA3v4Ssoabqy9j/hv+BRUH
         7TYcCi9snjZdUEoBpt/8AKp+qdc/JQ7K/WuGZlz7wC/dYcuRiM8mG7lzbxStwPRwjTuV
         iF/cFWJ7KteTxJVbxcoV9gJF303pQruyZXNlhhQEhConOPXx4DXe9xC0xIw/72ahVABT
         Qxq3Zn9r1TGpT9NgEuRAzaFeuHZ8iZll6xsk644Xzyi6kO7l26IDdjdlx4L99TaZzLSI
         l4Og==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=DA4OpRwO;
       spf=none (google.com: batv+ca79fa4415f544dfc9f5+7807+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+ca79fa4415f544dfc9f5+7807+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id 41be03b00d2f7-843002336e9si42745740a12.822.2025.01.06.22.31.43
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jan 2025 22:31:43 -0800 (PST)
Received-SPF: none (google.com: batv+ca79fa4415f544dfc9f5+7807+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-d467-d75d-35bf-0eb6.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:d467:d75d:35bf:eb6] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98 #2 (Red Hat Linux))
	id 1tV37q-00000003dvo-0Nlj;
	Tue, 07 Jan 2025 06:31:38 +0000
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
Subject: [usb-storage] [PATCH 5/8] block: fix queue freeze vs limits lock
 order in sysfs store methods
Date: Tue,  7 Jan 2025 07:30:37 +0100
Message-ID: <20250107063120.1011593-6-hch@lst.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250107063120.1011593-1-hch@lst.de>
References: <20250107063120.1011593-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=DA4OpRwO;
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

(commit log adapted from a similar patch from  Damien Le Moal)

Fixes: ff956a3be95b ("block: use queue_limits_commit_update in queue_discard_max_store")
Fixes: 0327ca9d53bf ("block: use queue_limits_commit_update in queue_max_sectors_store")
Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 block/blk-sysfs.c | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/block/blk-sysfs.c b/block/blk-sysfs.c
index 8d69315e986d..3bac27fcd635 100644
--- a/block/blk-sysfs.c
+++ b/block/blk-sysfs.c
@@ -687,22 +687,24 @@ queue_attr_store(struct kobject *kobj, struct attribute *attr,
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
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250107063120.1011593-6-hch%40lst.de.
