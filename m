Return-Path: <usb-storage+bncBDUNBGN3R4KRBREU6O5QMGQE5G6SPTA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1048.google.com (mail-pj1-x1048.google.com [IPv6:2607:f8b0:4864:20::1048])
	by mail.lfdr.de (Postfix) with ESMTPS id E195AA037E4
	for <lists+usb-storage@lfdr.de>; Tue,  7 Jan 2025 07:31:48 +0100 (CET)
Received: by mail-pj1-x1048.google.com with SMTP id 98e67ed59e1d1-2f2a9f056a8sf22185277a91.2
        for <lists+usb-storage@lfdr.de>; Mon, 06 Jan 2025 22:31:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736231492; cv=pass;
        d=google.com; s=arc-20240605;
        b=GeoF09KU7i95OLMwwAtQ0aeCyfKkegecIBW0R/VGZSe/gVDQZGnUOQLNUXFFJotoSt
         KJqDsqiNs/M2iXSI8ZR2cUKDjTKbR5rGYJuR7afrf5FRowlYrsOs9ncRI1mM/kwCB7MT
         d4q7o0zVJqquyvwQfaCS1lph8G+BRjPVqcrrrOFbVBlnPk7nYnGLKEqlDgB5zIvgn/j8
         7nGiHnDkxB9+C/FEwr4eBRjBkkYld4Lp7/+M9IYmBXIICBP9+8S3LwBjPj2hS0rIdb7H
         LoSLbcTR86ke/nFUJ5QTvX+QXyGmABLjPP2wEB7eVDbJc89rAHbuG72VXb3Ze1d88RIx
         D+Bw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=bochUjqoER4KbC+ZRJz9pcl3pBQRUftGCeu0bgEaoME=;
        fh=EraBUjtaS9I1ja71Y4+Que1ujYPoYC+Yk3I1gGeIBOU=;
        b=LYVsVqz2Efl3TGzg9z2RKRmfnDCF1d4wITRxl2jNtBp8EUATaga+/zx7tiFZfCAhFy
         8GplobQ1mcovdY//tUqY3ndOeJ964AmXwsFf9vKab2DiD8nFBZrxcWifLPZigH3jh0Kr
         PWO9k6r8Om2PJv2udAvN54tbeDiRczrm0SWC2JP902two5NDJYi8HPAfglo8A2dnzUKg
         a8KtF7AHvoGaoKuQEHGGBmW2r3O8RdgY3DhjXKE2d9jnOY8qFzXTlRwJkD2Sq3ncM+jw
         fjFOjziEiGu55SQuDlL4hduHQQLwkPgZycaecPvEGhd8E86MRfAMPLpL0ydLuoWbnK1d
         4dQA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=02MlsQPG;
       spf=none (google.com: batv+ca79fa4415f544dfc9f5+7807+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+ca79fa4415f544dfc9f5+7807+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736231492; x=1736836292; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bochUjqoER4KbC+ZRJz9pcl3pBQRUftGCeu0bgEaoME=;
        b=RKvt+ucMu9KqZEBBh9297/3dxyCXONJm4pWINMUUAKqRsj9jTiUqyGLDokduk1JE8k
         Y9d5S1Sq/YK18L/xnRgY5anfmv1Cutnc1twbH1RugRDRlaFxtSN+nZO0KBFKZiX/LaTM
         oU/eg7F9CV7EpEndHQ1I4HV7RSEehkZU36XhI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736231492; x=1736836292;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bochUjqoER4KbC+ZRJz9pcl3pBQRUftGCeu0bgEaoME=;
        b=M08YoxrJ7/AQ1AeYgCZ9hHKnGbyWi/JmAYwM6h1snelCN2bsoOY04UXvLGVbJ7qV3h
         o3JaJWACjnw6SGTitjIHJO561v6CtOOYjhn1daErBmkmJWjagiKUR02Pl2NKO/lf/aLc
         V9OxmQIY1ctEUt2csWYy1qzbHlmvFVrv3wcfKZ7/0xYETUorSaPer9TTpCeIyVYRPE5l
         QxsdfW1yXmlPbdcElRDs3Lfq713bK5MI3lzYWgEZAMme4euwHpQi5DfV6vVThNJMy+Dz
         XUqLPpFfGBXKnhLX1c8NrDophGCZS6RO2xA9qgjhxLheO01PcsJ0b7jZLN8S0Lgl7VsB
         l7Ww==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXbSuHCt4unB+lsWy8wA7Fl6gSSI4Vi02qkP2a9Oydpe5Y9u6STwtHpOHV0y3mX0Q/hoLrU1Q==@lfdr.de
X-Gm-Message-State: AOJu0Yxt9JcvKi4PlpH1DxhfnM5u76LznylDZZ4Us83tS3Mue9An61tR
	Wfq/sTk2koMjQdCHghHGl9MUyUj/9WXnryz+Ram2gMuw66aET/IFRqW/6sR3eRo=
X-Google-Smtp-Source: AGHT+IEJP2aHlJrhHYAMCqbCOGIu3nm9kbugqROCUVq2KgMMRx7NzYzX6ihajPmo62STGhh+HVgk7g==
X-Received: by 2002:a17:90b:2f0e:b0:2ee:7c65:ae8e with SMTP id 98e67ed59e1d1-2f452e1498dmr86274666a91.11.1736231492391;
        Mon, 06 Jan 2025 22:31:32 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:1089:b0:2ef:ab41:6688 with SMTP id
 98e67ed59e1d1-2f4430c7be0ls841427a91.2.-pod-prod-09-us; Mon, 06 Jan 2025
 22:31:31 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCX1+3TT2Ni4JQL5enO29o8LrU/F7yPTp5ADp6eHwD1z23Mpws8OpVBh262JwL86FQ/jhkj6V6rZBfzvDA==@lists.one-eyed-alien.net
X-Received: by 2002:a17:90b:5211:b0:2ee:b26c:10a3 with SMTP id 98e67ed59e1d1-2f452f027abmr76807086a91.36.1736231491017;
        Mon, 06 Jan 2025 22:31:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736231491; cv=none;
        d=google.com; s=arc-20240605;
        b=QwHDSuWjXqfAtbYMS133NKyvB/O/0V94XrP1s7H/ELYir235anW4Yf6z4e+YW35+6i
         vLCPAnKWXwoAleBldoUXCXXU3yHJnlu2Cz/CPjajZPJm6ANvQxdLp6+YoYaUfWGYCq/a
         fPP9y68+RiqsOW/SwQqrLT27aAlLa9vin0e2G9Utc/SPqBUd32fjKyk7msAmn1JtXXZF
         gTyMiESpy2Wa4+js82A9Mype4eXY7NnV+FcaVWz3f4sTYuFK5kTqMuYhwv5hSIJtVCDy
         KzT5fecguCySED9QwMgWDyVEdswp0JJjtT1XT2He4IYi//kTtWBsSzkHpyCsWM/69Bmo
         rPmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=w5BnKXrf4u+9CDrAeMZ++BdjrhcxftxCwPH6SyNl+dQ=;
        fh=/IQ3556OhCBpzuvXgLE22Yzy616bQT8dDlkj0uCHKWQ=;
        b=jMmCq+WaabvLy4MZFbznwK6Zimu0iRfTJt25CvAlbHc2g64UPOsm07DrvyzbVgaPLu
         vOcmIaACElw6lDeeeKY63VEBEVLXGHmJmJt/+d6+M3u52mPpUvU4UITnzfpPL2Zk9ghw
         lWiNC0gX0ZBLeFDWsHyfBxiRyaoNJWhPKeqCNbiriiMT/lZUz6IMVOHwrSxuxTbv7xxC
         DwcNM/gtASrBxZzM4bM4gukh8tnKk+EtjXmRmp18gFPIYfuFSoSkhD6vhxQifgZdeW/E
         VaLGDYhgBLDTGYaFjDHCNDhDnLTw7PCOPpq+K7OUQnGT8UymK1uaMgobhWocySsgSaoV
         bdRg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=02MlsQPG;
       spf=none (google.com: batv+ca79fa4415f544dfc9f5+7807+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+ca79fa4415f544dfc9f5+7807+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id d9443c01a7336-219dca06054si435930695ad.367.2025.01.06.22.31.30
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jan 2025 22:31:31 -0800 (PST)
Received-SPF: none (google.com: batv+ca79fa4415f544dfc9f5+7807+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-d467-d75d-35bf-0eb6.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:d467:d75d:35bf:eb6] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98 #2 (Red Hat Linux))
	id 1tV37e-00000003dpL-0ljQ;
	Tue, 07 Jan 2025 06:31:26 +0000
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
Subject: [usb-storage] [PATCH 1/8] block: fix docs for freezing of queue
 limits updates
Date: Tue,  7 Jan 2025 07:30:33 +0100
Message-ID: <20250107063120.1011593-2-hch@lst.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250107063120.1011593-1-hch@lst.de>
References: <20250107063120.1011593-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=02MlsQPG;
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

queue_limits_commit_update is the function that needs to operate on a
frozen queue, not queue_limits_start_update.  Update the kerneldoc
comments to reflect that.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 block/blk-settings.c   | 3 ++-
 include/linux/blkdev.h | 3 +--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/block/blk-settings.c b/block/blk-settings.c
index 8f09e33f41f6..b6b8c580d018 100644
--- a/block/blk-settings.c
+++ b/block/blk-settings.c
@@ -413,7 +413,8 @@ int blk_set_default_limits(struct queue_limits *lim)
  * @lim:	limits to apply
  *
  * Apply the limits in @lim that were obtained from queue_limits_start_update()
- * and updated by the caller to @q.
+ * and updated by the caller to @q.  The caller must have frozen the queue or
+ * ensure that there are outstanding I/Os by other means.
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
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250107063120.1011593-2-hch%40lst.de.
