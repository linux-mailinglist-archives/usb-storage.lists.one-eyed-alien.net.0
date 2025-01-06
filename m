Return-Path: <usb-storage+bncBDUNBGN3R4KRBP6W525QMGQE3BWFDII@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1046.google.com (mail-pj1-x1046.google.com [IPv6:2607:f8b0:4864:20::1046])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FC54A0227D
	for <lists+usb-storage@lfdr.de>; Mon,  6 Jan 2025 11:06:57 +0100 (CET)
Received: by mail-pj1-x1046.google.com with SMTP id 98e67ed59e1d1-2efa74481fdsf20726103a91.1
        for <lists+usb-storage@lfdr.de>; Mon, 06 Jan 2025 02:06:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736158015; cv=pass;
        d=google.com; s=arc-20240605;
        b=MV40XzsP4ug4k+k6EoDlYPs2iJ/DazHU0K/AMJoRamnJPGBOg2Uqn06FZRXj2epcKl
         zo5L2GE7TBZkSBm2K+NsEBVTQ2x+k6NCCfFLCtFEnX/lg6rhLvkHxr9VmfDYNPKcgpaH
         YyRXqaR0hzDND/bw6/WC4YkWCcmsjSXb1IVLNpO091GlhmGXeyG5qkt20pKS5a2JMABj
         JR2RH81bcErztOEh8GBOn5fQ+QGW2QSx+RcxlU+75mrKjxcoCdsCcWEDeYmm4/G8jqZO
         RMoF4oNwk1QLprxLxv7fdEjqbUS871CN3OnjhKjFZxwMRn45PO4V3CEPSUxwoGvXqDXM
         J8Nw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=/iUUZdZCrHhJMYeObjFko6avVO9G5l3OH7KW4Si1Kx8=;
        fh=An1AKrRVx5CtjT4ZsKls0n4QYXZ5n0zNbwqS25Gv+7U=;
        b=ipuqOFbTlEeeERKt4tWccMlR4BluyEKp3EyMBwErhkzfRmCieZBOpn38Tvr1n0Sp/u
         ocPEKoG5usKIUUAN6Jz2KeWB1a1oS5itIUmcRwrC13F5NDZPfRyfQOqO5codKS02/RAA
         ipVdRq/mwXs1ZvSTOd88BVvO3bGgHCrlZApOADlJZdQ+Xjyu2ck514XJk0RjHdxS9MBY
         AfXMWtcp4WwNeXooT63Ph0QzuBO/yhAQzGCFm88m5rCVQH6jqRX6aUsZO0ymapn1b80f
         NdwysCpB8NKQE4NaPw0aAksqzXW65vF/v5F302PlVp3Du0+jMX8hoi3ucn53UQT7G7/V
         tXZQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=okxwx09L;
       spf=none (google.com: batv+41f3ef30789274237cd7+7806+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+41f3ef30789274237cd7+7806+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736158015; x=1736762815; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/iUUZdZCrHhJMYeObjFko6avVO9G5l3OH7KW4Si1Kx8=;
        b=F40ymiUSqWSbhDgauFpcNblMY/rbtIzYPx4Hz5yqFXSEnRVRVhhY4koa4qCNaF6joO
         OQlSf8AQDvwuSrtTIqvAssDSTwpNA0uyzVSxDt5TFjHvzuXy+SChAx193ccJJz/VJIZ2
         /uy8KeyKCY3xowKwpN1HHGrdbEyXHeg8Om57c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736158015; x=1736762815;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/iUUZdZCrHhJMYeObjFko6avVO9G5l3OH7KW4Si1Kx8=;
        b=Q+tY9u0ReaUBCiYGDzsCt+HBv4qQO+hQpWajvLX+0wijfMKh3SoLOA+cw/TSpgNMPu
         mPlXDjTb4xeuD64z1m46Lbzyj/KtUBIMcrii9Cy0TTtVjV0ZZI9TMx7c2I5dRzhmm9UE
         tLERB1kQi2tlwEKPr4flK3RZjV9D3DNL4zsjBVyMbU4JLehl2t8teGNpWphAE27cw4QN
         IhfQxOQLm9J8btXNJ6kQIAYkiU5By5mqm/pyoqFD6dBG1j4RGj3A+716dX8DkSfJ+xrR
         veK6ddgvreWqlw0ZqQh1YGZFWNOusWrkXiMB6L9I1XAVaBT7Qyr7Wh7ebCQ3b1a9V0nt
         Sm0w==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCX6a1F06uFa/t7TI9gqdBHa2n+1JoG99gIxnfe9TlBw+MakX1I7UmCBvqUSx6w+n1A5XWLrkA==@lfdr.de
X-Gm-Message-State: AOJu0YwiYr/7bSwzIElPrtPkAisE6FOV8+B21VL984KTygygOylOBxC/
	bM7K1SDkieueo9JVYuUvgS5QykhvzvP3E6A7jMTbB6UFem37awn6WKajeoTUGyk=
X-Google-Smtp-Source: AGHT+IFzVIvfk7xqsJfLqIrCdzsx3txVObudcjcTs85Vt4dz0rOs0l8BBbKLMqhZjGRNJI9yNSm4MQ==
X-Received: by 2002:a17:90b:2f0b:b0:2ea:356f:51b4 with SMTP id 98e67ed59e1d1-2f452e1b24fmr83543381a91.13.1736158015535;
        Mon, 06 Jan 2025 02:06:55 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:ebc2:b0:216:388c:72bf with SMTP id
 d9443c01a7336-219d9fd2f6els9733845ad.2.-pod-prod-05-us; Mon, 06 Jan 2025
 02:06:54 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVBPbkDpuVxDIZ1clpJANsKoN2oog4trsznbEnc2OppFfWHDt2sh/gYUFXrRbW151XR+Hj1OuY30TWolQ==@lists.one-eyed-alien.net
X-Received: by 2002:a17:902:e844:b0:215:787a:f91a with SMTP id d9443c01a7336-219e6f0e797mr853021155ad.44.1736158014214;
        Mon, 06 Jan 2025 02:06:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736158014; cv=none;
        d=google.com; s=arc-20240605;
        b=YsHdtIi8f4H2VptXWNVFEG5EvrKkE8UN//xkDzNx87n9J5EdF13gOJ5itInz63SqKN
         OUbyDwR15hAvSfU9PE+J08yyoIyKzsZAM87zARdRrpfp9snE2DvbdwQYFTN7hLuZ0Ii2
         JpnRs0U5/UhAIwA/ADaEY/0Ky56ROKIJQ2El6mCBaN4La++fMSjcgzJ0JY6ODy7UOz+O
         27XANQsMpopLk4j4C9akxyYHiqr4AixXV5k78ZnJotPSFQZEMeFVAqeUuVb1BYkdYGON
         6+CN+pLyFjOifwfFEHQqomi1KD5DEygBAR3tNtXm53DBd4/EwB8+sW2wt7MSoMf+jjcH
         ovJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=j5nipNJYCSHT/i19TR1MgfESnS9sU0GXQcRCDAc/Lwo=;
        fh=lWd3gkC8mMNZNBBVD9g3TB40i3tO1HoQaqb3EWMImUw=;
        b=LpGn2CBsH7oTMkR6UKvmmeXwyWT7SSkr+7UFQljcn5Z/y2v00LzXEUSO6U1v0fuwBd
         hb8UeLvhNWkuAu/KOZQvxfPdmrqpUmEQbnjxbOwIn7xW9BfEYZrIimg63ITwNvzWRY9s
         /y57gASQiSJiliEN6PJ/TSlqdWpJZ/pabcBIwg5iX3JdYajXIQ7MuGal+/tWI8Ivcle0
         7lD+pgXU+gul+GPCK7VStFyPIRF0yfmR08A3QXk5SdJRPkrGf8ZMhlVKN4dfoHWlU+7B
         U5y97R0clSsm+8ONkzzfm+ZhJ3jKBRvJyf3O2DVt9eh82mO+aBesG62lJF+Ut/XNsP73
         SqMg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=okxwx09L;
       spf=none (google.com: batv+41f3ef30789274237cd7+7806+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+41f3ef30789274237cd7+7806+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id 41be03b00d2f7-842fe95c194si42926018a12.747.2025.01.06.02.06.54
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jan 2025 02:06:54 -0800 (PST)
Received-SPF: none (google.com: batv+41f3ef30789274237cd7+7806+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-db6b-99e8-3feb-3b4e.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:db6b:99e8:3feb:3b4e] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98 #2 (Red Hat Linux))
	id 1tUk0Y-00000000nO7-3yKC;
	Mon, 06 Jan 2025 10:06:51 +0000
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
Subject: [usb-storage] [PATCH 01/10] block: fix docs for freezing of queue
 limits updates
Date: Mon,  6 Jan 2025 11:06:14 +0100
Message-ID: <20250106100645.850445-2-hch@lst.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250106100645.850445-1-hch@lst.de>
References: <20250106100645.850445-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=okxwx09L;
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

queue_limits_commit_update is the function that needs to operate on a
frozen queue, not queue_limits_start_update.  Update the kerneldoc
comments to reflect that.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 block/blk-settings.c   | 3 ++-
 include/linux/blkdev.h | 3 +--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/block/blk-settings.c b/block/blk-settings.c
index 8f09e33f41f6..4187c3e8a07f 100644
--- a/block/blk-settings.c
+++ b/block/blk-settings.c
@@ -413,7 +413,8 @@ int blk_set_default_limits(struct queue_limits *lim)
  * @lim:	limits to apply
  *
  * Apply the limits in @lim that were obtained from queue_limits_start_update()
- * and updated by the caller to @q.
+ * and updated by the caller to @q.  The caller must have frozen the queue or
+ * ensured that there is outstanding I/O by other means.
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
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250106100645.850445-2-hch%40lst.de.
