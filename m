Return-Path: <usb-storage+bncBDUNBGN3R4KRB6HIQK6AMGQEPEVZT6Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1047.google.com (mail-pj1-x1047.google.com [IPv6:2607:f8b0:4864:20::1047])
	by mail.lfdr.de (Postfix) with ESMTPS id 7480CA086C1
	for <lists+usb-storage@lfdr.de>; Fri, 10 Jan 2025 06:47:38 +0100 (CET)
Received: by mail-pj1-x1047.google.com with SMTP id 98e67ed59e1d1-2ee3206466asf4826540a91.1
        for <lists+usb-storage@lfdr.de>; Thu, 09 Jan 2025 21:47:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736488057; cv=pass;
        d=google.com; s=arc-20240605;
        b=U2UCzNgi0WMSop8OfkrrA1DitVEpprUUkVtVqCpRUvmz8g34qjP2RL2hs1ZfSjVJfY
         Rm2VFdKr2h1f6iNsiD3fpG/iWSdl+MsPFUg5Fxdi6RETAkkdWWmFsmzyRsuS8nR3T6tS
         uOFmH1Fq2XJuZPxfSSBCs+u2FF8z4jKNIowSuAA1TkMzHSIqmx5ouoMjvdUYdDy+2nXF
         UkyYbqYE5YaVyT1R9QkIU8xwEmDphJJMoUlHFYCL+eAvvOYdlLUN3+tvSmLj5vTcDePg
         B39sEaYsroQmdSA54/wrSUGRRxnkCvYSG9rhY+XnAtn0bEAPnsutVtbmvIlSt9KZmeUJ
         KRdA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=UJmqqOjKwGBMWrRAg37HmHAjy7zYXhuGHCzuUeFGG94=;
        fh=o/XfnvKU3dku+k/t9N239FxZ8IYJoMMr8O3uHvyeUMM=;
        b=H2anyhiZZaZVUu6ASUlE2wYs5APIJ9SojoBvuMHz+uvYXfwuDsy/Qj2vepPlib+Quo
         sVODTTzhTjhEdtTwhsjIydfkmdF3mq3f3PzYZfE8vb1kHzYIFuHHsgLHB4X4g+q+gxTP
         cRIIcoJo2ooGfuEjtpuEXxBW6PUU+LVNGWHlP0L7nBU00D6j/0i1/gpGTi4uoT8ljd0i
         8zdYfbQYL3CcY9ow+gQCbyQ1v/BGtvc7u8XZgDufZDgLQ8ZlH3/WGljUdRysKC/vtVjq
         dORlvYPJPx09AEni9faWXtC1lK1UAuTp01fh0OqTST/sRGKl5HmPQVqj+C5QtSSf0NXN
         L0ZA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=qwOlFf5+;
       spf=none (google.com: batv+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736488057; x=1737092857; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UJmqqOjKwGBMWrRAg37HmHAjy7zYXhuGHCzuUeFGG94=;
        b=c5B0N7eULWzesHVYY67NhBZaBpoXCttXuPR3NU3xeZjY+/BakDVuSo5vyaBr0tKi8V
         VebOOv7pb+o5oNH7iW+IJp5Kwfaw31NzvgF49sjwofG1g4qMxIb46bRrvCW6rPJVgRQq
         S/waqIEkrbXKlVElIBeXfVkUzN2KYI4xeTOOs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736488057; x=1737092857;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UJmqqOjKwGBMWrRAg37HmHAjy7zYXhuGHCzuUeFGG94=;
        b=HMudSKW/J2EshgDRrpeoRHL8qWu+EA0vT/Y3h8Ni4UB6i7tSdifTcvTZnBZ/TrtJj9
         fx75Tty+k8AZ3Dycp3/qNdqXoTEIR5+MCmT/Oi4/JIOJN7wk6n7l1IKkQdm0qBO3lyN3
         D0zL/LLsLLJ/27CAwRb8Tc4yN7tcKJzJVpG17Hado/yEyllrzZa4YTeh35Q2ts+fsR3U
         qmTz3X9q0cj7PZFi7kaCOJc4nWVu6IMWJJbVWOT4Jxt4iweV6XlaGgGAP5SYdZSmMZD4
         UPuis8H66giHVbe/igfEd+dUYfhG88AFX5DSAyTSCnKEM33cyV5HKwH6mNuV0wjDJNNX
         BmcQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCU2X+PlDct3xshysc9nJzX7tXAigantVc/yNV00k/ggQNeh+rC9/eVNWfjSQX5iso1GbnzO6Q==@lfdr.de
X-Gm-Message-State: AOJu0YwikMFvkezyyxQkoijOU1SntUzsLpv/F27YACwa7pjlteuStrfp
	8wjmg4CUdKAYpvVz+99tBn0dOXps0fdudUkaVZyOV1sGLjSpGlbuPyJ6lMHOmIs=
X-Google-Smtp-Source: AGHT+IFwq5QJ5xXL10h3NQ3/Jb4e6fU+oQ+W/azdch6gvpXn0KpzvAjw9tFlYcV9kdDU3f8E2Pqmpg==
X-Received: by 2002:a17:90b:1a8a:b0:2ef:ad27:7c1a with SMTP id 98e67ed59e1d1-2f5543d2d98mr8962967a91.2.1736488056797;
        Thu, 09 Jan 2025 21:47:36 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90b:524d:b0:2ef:67c2:401e with SMTP id
 98e67ed59e1d1-2f5481ef173ls1844168a91.0.-pod-prod-00-us-canary; Thu, 09 Jan
 2025 21:47:35 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUZxrPNSzg4RvCmF8Zy3eW7AXosRgmjG2F/8YUgF5morY5g6Ovpv7mkTeiA6083pfL187NH1gdDh3XWIA==@lists.one-eyed-alien.net
X-Received: by 2002:a17:90b:4b04:b0:2ef:ad48:7175 with SMTP id 98e67ed59e1d1-2f554602ac5mr8866231a91.15.1736488055413;
        Thu, 09 Jan 2025 21:47:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736488055; cv=none;
        d=google.com; s=arc-20240605;
        b=Idx6CrCQ+XEQ0lTU6Kz47ckSF4noNEz1EwayBY3KMXv4usUGGyWyWZ9483OOtJQiAd
         w6YgExAox6QZifwEYavbBd5QxM+O3ok3wHKxPQN4RVqChCkgzYFqctjOFaOL0d0v2EuB
         /LtleIzKkNjcZOsLM2kg/qEmxwe+HFvTX+96alKhOWTuw3B+CL76BNmxVBajSou7wgKA
         hA8fgPVbkXy2afK7v6WSlUa/Aj3Gl71a8OksEP3jtf9mnE7TIDDF8Anbm+OlvgSxPzeS
         WoiUHOtIdknr4TCXygbtFDGz9lGxyWu79QpCBG4S8Nz3I55axpoO1tT7MbD4apHHaCPl
         Ik9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=vtlfIIv1TIifp2HHnxSmy1WbKAh1rAR+Wk4iDj/Xq1s=;
        fh=K4mYBT/f9uT4NDiXg9vO0QvGda7RTqDR2brfxQ7Fzow=;
        b=YNrZAL+1wKA1EMyghGPZ5fnn1sEsxCevZrd2xAgG1vmC+VOUGG7qvqApLTyNaV2xN/
         9leznfmX/D6p1OcLKP0GgrDE3Nkfjz0ijzRuy5nhsQUvMILZIrypwdHaC+n20jWl5vjg
         PdrSAbXJqWZmPdQOPjie1mXEWW0PFv52/MclwYOZAOtDB+riBzlc/EkZnKqtu9e9BNKK
         suKI2eN5J2LPfUsXgTRTy/nm8wrlHlrebitkkRepwdo4njW1IQuyBDCEQTAmJ/0FFwAb
         A3t3JaN9/2o+g9sQ/PIZPAKc9Rgv5GQgugb9uc7JOk5L9qK1fwiJjvN1IsenED9Ox78M
         wpfQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=qwOlFf5+;
       spf=none (google.com: batv+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id 98e67ed59e1d1-2f5589be28bsi3093009a91.160.2025.01.09.21.47.35
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jan 2025 21:47:35 -0800 (PST)
Received-SPF: none (google.com: batv+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-76c3-a3dc-14f6-94e8.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:76c3:a3dc:14f6:94e8] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98 #2 (Red Hat Linux))
	id 1tW7rn-0000000E4s0-2LJ3;
	Fri, 10 Jan 2025 05:47:32 +0000
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
Subject: [usb-storage] [PATCH 01/11] block: fix docs for freezing of queue
 limits updates
Date: Fri, 10 Jan 2025 06:47:09 +0100
Message-ID: <20250110054726.1499538-2-hch@lst.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250110054726.1499538-1-hch@lst.de>
References: <20250110054726.1499538-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=qwOlFf5+;
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

queue_limits_commit_update is the function that needs to operate on a
frozen queue, not queue_limits_start_update.  Update the kerneldoc
comments to reflect that.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Ming Lei <ming.lei@redhat.com>
Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
Reviewed-by: Martin K. Petersen <martin.petersen@oracle.com>
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
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250110054726.1499538-2-hch%40lst.de.
