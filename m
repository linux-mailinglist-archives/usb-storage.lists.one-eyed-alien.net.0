Return-Path: <usb-storage+bncBDUNBGN3R4KRBSOW525QMGQEQZ6ZLBQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x646.google.com (mail-pl1-x646.google.com [IPv6:2607:f8b0:4864:20::646])
	by mail.lfdr.de (Postfix) with ESMTPS id 857CFA02285
	for <lists+usb-storage@lfdr.de>; Mon,  6 Jan 2025 11:07:07 +0100 (CET)
Received: by mail-pl1-x646.google.com with SMTP id d9443c01a7336-2163dc0f689sf54843215ad.1
        for <lists+usb-storage@lfdr.de>; Mon, 06 Jan 2025 02:07:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736158026; cv=pass;
        d=google.com; s=arc-20240605;
        b=I4y3SE6kc9Folg/7EBrpMqkZtCYMFNQ/uTumXqMvMKx3/0l2UQ7S6KjKMuLS4ZH60m
         s7sPsZA2Fw/oUmzOw3Zy2BoeHelldyMURKvtYhj2nevThishxWlRjUiytbbp+C3j/92E
         vF00W41mFOM8OJyenDFwkmnfYSGuSY89NRyfQ2+/cEk9iM9yhyoUTCi/fRP1dm1AssuD
         UQykZeLf8YwZwbjCeANGc67P7CAp1b8VNe81K5tjAkVeiNBNHdJU4WcmI0dKWcpVHpSP
         f7Lt6HunBlF5wHm4MyfpnaUVUU7pibzN8jbNza8fdaQnvgtGCGgMiB5fGEXnyKhvakfU
         /aOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=9R4qvorYKLcTDzuAxSJFhBFfyOSY3V/s5O40OPn1lDg=;
        fh=MroJjJuIdpjrH8/V6gaufm+WyQZ5fKEp/fYMPXLlcGo=;
        b=GrP84SKvO0GmLhyECpesb6Gicxfl3327wKHMv0Q7DPygkcGKeX1npkpZc2cQeaLm3U
         bEOnm52k+e/lueCoOf2Htv8mDKYqNmScSB7ImajJlUCsD+/5XjBrkgTHDxly66SGeZjs
         YRCe1WNv5BE1FDWktQN5dUx9CjCUnjz4vOYSonm8f8HOjljFm7jvRCq/nXjffbNKbJB+
         R1AVilkS49vojNohMq8gEJdbXUYjQMJWNNndoYN0xOSHCOTj6PXdL2rZ/ISLK5c/EuFu
         QiGcXFowQjrxfAgM34HkHWdkU9W7nuctqGAW38MugqYtxm37ptGEBmh/bOeN8nMidEK+
         ezkw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=CsLByopa;
       spf=none (google.com: batv+41f3ef30789274237cd7+7806+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+41f3ef30789274237cd7+7806+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736158026; x=1736762826; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9R4qvorYKLcTDzuAxSJFhBFfyOSY3V/s5O40OPn1lDg=;
        b=VE5T8R7ItAArpIyWdRS7LFGigvO6+1KqJueHfNoqIW/GLLVoVto6hXUUpatJzFI4zP
         NqykyfYYWmpQKwSdUyUZGhar8uR+T4vhKW9FvMRaMfnn9/zKXHlrpJoi9W8PGQYcoBAT
         1pfSPenElOaBX6KMo3g1J2la4+VRCUAziTxUs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736158026; x=1736762826;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9R4qvorYKLcTDzuAxSJFhBFfyOSY3V/s5O40OPn1lDg=;
        b=uV0az6d4kpCphB7cIcUgnksBW7VYFQaT/G3NxM6qaB1pm8LNS8BhYKEISaYterXecY
         7OmjteA5qOVlO+zGwYhrNaBtuNBJ5XKlvR7o1Grl31MNDTME5GBjkETKnqmwBordEONb
         osuL95uiJlQXYGXvZNTwgX/2pm43CppJAr9Kxl4XES6eD/uhO7oPLk4DzgVDPRGyW1k9
         +qa/OoS5VSNeLpZzl+rGeYAHAToZAPo1y3WEGNKpmgE0euaEQQic/AfMw3LWKMJmopVN
         XAgSe+l1ihsfxCBckEOwdiKSLNFf/OvY8I3xOo4kNz7Xw5X4fgpNoDpacZ1Iz0bwzlyi
         qWAQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCU2feFb7Fybg4SdQq0YLV5YGNmb0ec76RiS0e6lTtqHFGQ6Bkrne7PSFoTvLvRBl4lZCk4P9g==@lfdr.de
X-Gm-Message-State: AOJu0YxX60j/qDemCU9yfyQdr7G8EW6d0PNBmM3Jg+TrJLHSbSk0RF2R
	UnBnzSve96T93UKt5yRofy+daDKkunZsfa+k96+lS9uBryvAoHRPtihcaTp8Wvs=
X-Google-Smtp-Source: AGHT+IF6bxjw6AYdVG+i0imtEEnl6c6xJtQaSt3cqfikiTjFJ7KhNZrI4FKFTGomkuV35zUWj97dcg==
X-Received: by 2002:a05:6a21:3284:b0:1e0:d859:e1bd with SMTP id adf61e73a8af0-1e5e0458e81mr88526680637.1.1736158025939;
        Mon, 06 Jan 2025 02:07:05 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6a00:1484:b0:725:efed:3617 with SMTP id
 d2e1a72fcca58-72aa9928addls526010b3a.1.-pod-prod-06-us; Mon, 06 Jan 2025
 02:07:05 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVHVZKC2UiFR17ltHkVeMZK0ZArn1Mb2EhFx5QRfApgeHFj1XYRDGyJc+lsSf6NTsTES1kd8iY9MRHNoA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6a20:c91b:b0:1e1:d22d:cf38 with SMTP id adf61e73a8af0-1e5e05b06bbmr83294228637.21.1736158024700;
        Mon, 06 Jan 2025 02:07:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736158024; cv=none;
        d=google.com; s=arc-20240605;
        b=DvZlKb1f9AXy3YtpiqJZRimeQwqa8mCz1uYPJ+26oJqOmCkCQqthKByRIaBM0BTQ0Y
         mxxul950Ag/+iywKMfgykZUd2tdtEW5IvpPDMEFi0NXS6vMONAddY/b8UQdnfQ/UzTLA
         WXuSJn2dpHfkJKv15OXszE+NM0knFclGPbbExEQeIBcfD5tIgPQvl/MNBX7WJ/fEIy6R
         tEdscDvgBAW5f+P/tPqztYeRBNjHl18v9sfHHeN/zIjtAcGJ83s93KJMYTRZt6dc5ArD
         gmcov3pxvDKqi3Bi4mHLrVGbwATK6UEam/0J51ZW8McxVdjbUeA4D4MaoIPWmRZpAa8O
         Ytkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=tT0aOQgFNadtOuHliq+69Sjlga1i5Xt3nJO+Rr56CdE=;
        fh=lWd3gkC8mMNZNBBVD9g3TB40i3tO1HoQaqb3EWMImUw=;
        b=W1cZGRdKg/jR3PuimvdseHt1FxI72iQen958IPhu0Kh8HKu8reP9anl/fTnHzR96ph
         zxJF2Hr74Oake3GG/l+hItdK/H8P6kieRZx5kR9PTWKZuvZK/buVv9icn87O7r6cgw4r
         GXD4ylBWLjwHx6jLmRBs0yR+n1oD0Jl6XkzNe0u65N58tj5tkB4OpZ8tju+vRv2uX3i7
         aFZ4cs5VxbH4lYJJPMEpS7ITEyocD3lDN/SvCbT5MVG7jQHO+I7TLZZT+f0U5C5JZgVD
         zRwxn5pLCFUaKDEo0fcPpWGrVZnpHBd2t7QDhTho77JSFXqj8zktmus1KyZKLXOKxA2w
         8i1A==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=CsLByopa;
       spf=none (google.com: batv+41f3ef30789274237cd7+7806+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+41f3ef30789274237cd7+7806+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id 41be03b00d2f7-8d38cd0ec04si25997309a12.414.2025.01.06.02.07.04
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jan 2025 02:07:04 -0800 (PST)
Received-SPF: none (google.com: batv+41f3ef30789274237cd7+7806+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-db6b-99e8-3feb-3b4e.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:db6b:99e8:3feb:3b4e] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98 #2 (Red Hat Linux))
	id 1tUk0h-00000000nQG-0OWw;
	Mon, 06 Jan 2025 10:06:59 +0000
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
Subject: [usb-storage] [PATCH 04/10] block: use queue_limits_commit_update in queue_attr_store
Date: Mon,  6 Jan 2025 11:06:17 +0100
Message-ID: <20250106100645.850445-5-hch@lst.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250106100645.850445-1-hch@lst.de>
References: <20250106100645.850445-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=CsLByopa;
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

Use queue_limits_commit_update to apply a consistent freeze vs limits
lock order in queue_attr_store.  Also remove taking the sysfs lock
as it doesn't protect anything here.

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
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250106100645.850445-5-hch%40lst.de.
