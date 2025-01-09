Return-Path: <usb-storage+bncBDUNBGN3R4KRBAGL7W5QMGQETNIGUKY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1046.google.com (mail-pj1-x1046.google.com [IPv6:2607:f8b0:4864:20::1046])
	by mail.lfdr.de (Postfix) with ESMTPS id D0249A06DCA
	for <lists+usb-storage@lfdr.de>; Thu,  9 Jan 2025 06:58:25 +0100 (CET)
Received: by mail-pj1-x1046.google.com with SMTP id 98e67ed59e1d1-2ef775ec883sf1027662a91.1
        for <lists+usb-storage@lfdr.de>; Wed, 08 Jan 2025 21:58:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736402304; cv=pass;
        d=google.com; s=arc-20240605;
        b=kYI4k51YcIhz4ebgns92MhD+nBWT0mXgEGQb1sVVS9/IW2EKA2zSRHcIRp6hpi5z4s
         3M8DRbSv7O3Ope5/JD1xyR1manMKV7qdcCwQRYVZr0ccPHO5K9Mw/ooHXw40fWYreLcF
         9qqZT+sFSgeG5dnQy/jM2SVN02SivB5Wy9MXZUBE6p0eEpJehqWqJLVcwQCgPF3qOpNg
         8JS2xlgk6rmJhB1KTxulgPd9XxCHTZ1wDvmjDd5cazkczC59CMlKDbtnRDXEJffClIuu
         MiXzSs3kYBouTMlktgRdBR/T580znop0ApG+/Ut4QErIndasi91M8wfV/Y1svoPr5R86
         SRkQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=RFL7Qp/+D5OlEmHC1dAZzyq/UJvnrjSFM9Ar+AuZTMU=;
        fh=TT5w0hplGW7ueUoasDEdL1/u8DcqY8X1XpsTttEbG3E=;
        b=lZbs3sfNsbx//MpdOeTY6MtjsRhbyt95By9prw5Wda6oSrTsWf+E4rM92+hzlqI/YU
         mnGBaIydIidjhDRExgrLDiy7GcFHlphfuQt9ZRrtJzsWGW8tV5DE1a36ghnY01w04ET8
         UBjFgCT8X2KYUfSi9it/Q9tv4QzLmRgRpjHV9PeO+RbGosXQa3D+JAgMGTN+M07COS+k
         O0YUReIxFL1fVDt8r4FtvMnp/nzyJe4FE6E0iDUwMWAcuxt+9+GzrT+K8zCVCngMdH/Y
         10lX3GywVn6bvmwyrF1R0t7GPd+p5YI4gEEmFki9FHD13sOPThd1K+Vg02pV6VIBHxWv
         DUuA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=u7aGKCDs;
       spf=none (google.com: batv+2e5c2b0d924108c2b4cb+7809+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+2e5c2b0d924108c2b4cb+7809+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736402304; x=1737007104; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RFL7Qp/+D5OlEmHC1dAZzyq/UJvnrjSFM9Ar+AuZTMU=;
        b=N5Bn5WjCUglVFcuqeVvmtlWr02Sl6BSOfO/NFx5lbFgVmOqstiLzPb4s8zF4ZKFT8T
         wb2qQPCAxrs20gej0qwsBs+7SthGqlGpbjdlvAw+E2Iy2wY8lTDpnzP/03anDBS2nKa2
         j6WrcjmmR/HmLcFRn4Gya4hFZRBd4Ma3FsPL0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736402304; x=1737007104;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RFL7Qp/+D5OlEmHC1dAZzyq/UJvnrjSFM9Ar+AuZTMU=;
        b=Q3Y7EGah1oicse7D5MlQWY6GBYDgu6EEVVU4zVU8H/Xbimvs4anxECyKL9eYTCjTkp
         wkjHpjvbcsQYm9neJG3z0pF3lEvlxDhlchQtzU/5teb01excSgLDprq+UhIiW37cSh66
         vE/aA9Ypuj0o/plC78CSmuWMUhmiUW3/sslNnucK3mzqStoBGaz+R6VL9hrH5o6IAbj+
         O0gfpe/+XK5F6QV0TZ16aal/na99vCKxwpcMEwD/9c7w9OGrZLqQXCc8J6iuW/SuH0kV
         E24h1sEQCxHOuPsNEUxUtLT/e4iQxqQ0OK6QOw9K/NSOFDfW7xa10szlSmqWfI/2Pcrg
         OKuA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUehBoxWV+hRcYwi64/Kd+A7yQiISbXYeq2SevozvFwpQMKwwgmrYgosmLhUmQJpbnv6hm0aw==@lfdr.de
X-Gm-Message-State: AOJu0Yw7WgPTrMmoh7mdZT7/9D5UmidscS9prLEeqyGuWoZZpK0E9JAO
	QNlrsBxakW6NOL/1hzwKV3HtbIBZ+0IykizsO6a1MtoIqvisPvZ4YWFzjsEknhc=
X-Google-Smtp-Source: AGHT+IGRxMRN7aQHfPnn0zz45H996zc4gxMB42ksiHd3ifkV27WMnVkyVoehqzWZ+cEuNKOy7yuG+w==
X-Received: by 2002:a17:90b:2c83:b0:2ee:f80c:687c with SMTP id 98e67ed59e1d1-2f5490e80c9mr7412507a91.31.1736402304348;
        Wed, 08 Jan 2025 21:58:24 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:d650:b0:2ee:3c7f:184d with SMTP id
 98e67ed59e1d1-2f553f1aed8ls511661a91.2.-pod-prod-02-us; Wed, 08 Jan 2025
 21:58:23 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXwRyO2OqCEP9toKis57CNPdd6Mgzcib3teazVvr7T0ITcaXgUv2MbUibYESzoXKeAHulVQxtd3hqwh4A==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6a20:734a:b0:1e1:aba4:20ab with SMTP id adf61e73a8af0-1e88d0a1e42mr9078975637.5.1736402302992;
        Wed, 08 Jan 2025 21:58:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736402302; cv=none;
        d=google.com; s=arc-20240605;
        b=heCC0wcJzbysDcOwZtVA3tEfFWU8oY9m8vCNP5rj2Jdc75b7SvC/PWIv09OFKqi61/
         uoyPVFSbVvtSIGUVXe5JudJjus2PfR4JBWqqeGtw8CIkr5xv4aJK7KVoozvzKoLGpWU9
         tmOfL9SpqxloDqoEi19erhisT5ENdfbKUTRIRQDXUEiJUWTPa6mV0KVnOBfm7cZlswtt
         bCJH0FVipzsfO0mmTbyftSwVDN6OxU/DrxGIUPhWP+oOHmEApuXf7+8e6mJXkZf08jHu
         gRF3nKSEHTFJoTLRQcoTvGs15MWjNYtuUkZhkbx5iWCLvsZyeJBMU9V9t4IqjvE23vXJ
         2SGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=KxgWbJ7auoeAcx9YDYY5C3D0yCCFueGV+Dc+AQNWEfo=;
        fh=WRAGdV8aIMVVSYoSeklSBzbPtpnXpjY3BgoNNJPLYpM=;
        b=Iu6UOK77x07Lcuav7N1aAjIr49Rkra7hMzg9kfjg1ji+S/uWoZxzrsxNWMJeW8kt8t
         AHjdQJ2pr7fDOC4xYVT4gilsNH0iqzH18utVuuPUyhBeXCCO0mQVI08O91yTdy3Z0Vin
         X2HYvMim/yipXsfCz/C0N8gVRPqJlrOKL3DjvYJkIHlXFBAaAYKOFw9kgPmHzCkmVHWJ
         QX9994UiwwamxnJsNFNSQaslwEzV/gd/hMl5YzVaEDxjaT0UdFJyg5VPA9THcxZByDi/
         vZS7xPWIZedXr18PvbawwL8lbxDpN4cPgNhNHaaC1F5p8CoYpBVPttBhEjpWxemWp/LQ
         klOQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=u7aGKCDs;
       spf=none (google.com: batv+2e5c2b0d924108c2b4cb+7809+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+2e5c2b0d924108c2b4cb+7809+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id d2e1a72fcca58-72d23fe2467si3473201b3a.80.2025.01.08.21.58.22
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 21:58:22 -0800 (PST)
Received-SPF: none (google.com: batv+2e5c2b0d924108c2b4cb+7809+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-ddeb-cdec-70b9-e2f0.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:ddeb:cdec:70b9:e2f0] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98 #2 (Red Hat Linux))
	id 1tVlYg-0000000ArCL-0Co3;
	Thu, 09 Jan 2025 05:58:18 +0000
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
Subject: [usb-storage] [PATCH 01/11] block: fix docs for freezing of queue
 limits updates
Date: Thu,  9 Jan 2025 06:57:22 +0100
Message-ID: <20250109055810.1402918-2-hch@lst.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250109055810.1402918-1-hch@lst.de>
References: <20250109055810.1402918-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=u7aGKCDs;
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

queue_limits_commit_update is the function that needs to operate on a
frozen queue, not queue_limits_start_update.  Update the kerneldoc
comments to reflect that.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Ming Lei <ming.lei@redhat.com>
Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
Reviewed-by: Nilay Shroff <nilay@linux.ibm.com>
Reviewed-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 block/blk-settings.c   | 3 ++-
 include/linux/blkdev.h | 3 +--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/block/blk-settings.c b/block/blk-settings.c
index 8f09e33f41f6..89d8366fd43c 100644
--- a/block/blk-settings.c
+++ b/block/blk-settings.c
@@ -413,7 +413,8 @@ int blk_set_default_limits(struct queue_limits *lim)
  * @lim:	limits to apply
  *
  * Apply the limits in @lim that were obtained from queue_limits_start_update()
- * and updated by the caller to @q.
+ * and updated by the caller to @q.  The caller must have frozen the queue or
+ * ensure that there are no outstanding I/Os by other means.
  *
  * Returns 0 if successful, else a negative error code.
  */
diff --git a/include/linux/blkdev.h b/include/linux/blkdev.h
index 5d40af2ef971..e781d4e6f92d 100644
--- a/include/linux/blkdev.h
+++ b/include/linux/blkdev.h
@@ -944,8 +944,7 @@ static inline unsigned int blk_boundary_sectors_left(sector_t offset,
  * the caller can modify.  The caller must call queue_limits_commit_update()
  * to finish the update.
  *
- * Context: process context.  The caller must have frozen the queue or ensured
- * that there is outstanding I/O by other means.
+ * Context: process context.
  */
 static inline struct queue_limits
 queue_limits_start_update(struct request_queue *q)
-- 
2.45.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250109055810.1402918-2-hch%40lst.de.
