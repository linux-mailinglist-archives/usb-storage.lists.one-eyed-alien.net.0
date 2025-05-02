Return-Path: <usb-storage+bncBDUNBGN3R4KRBEOW2HAAMGQEENP2HYQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x548.google.com (mail-pg1-x548.google.com [IPv6:2607:f8b0:4864:20::548])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D18BAA6AEF
	for <lists+usb-storage@lfdr.de>; Fri,  2 May 2025 08:49:55 +0200 (CEST)
Received: by mail-pg1-x548.google.com with SMTP id 41be03b00d2f7-afd1e7f52f7sf928179a12.1
        for <lists+usb-storage@lfdr.de>; Thu, 01 May 2025 23:49:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1746168594; cv=pass;
        d=google.com; s=arc-20240605;
        b=fi6zUIG9v+mlocwKikJD1vlHSxaN0ttt3JaDH8H6yjIOB7soLSWm4GpfL9mteyF2jX
         jYHksD0QHOUjzPtcFvTPA/vEIq2qlMo+2k2cEi2BVTDSP6QNm+8Gjre/tMO1N8wP4IB7
         x37dc7a5hY709xMf6NEcJHviyyUNH+H997q1VupONVXZA3dUjJUAdOdwi/ZK68Rd0jY4
         Kox23j/R1GP9jZ2ENrxg2+rJl2nMIrPx98JDc8B/mqFxXNZK+S0TrQHIUrjOoKQoS/Xx
         so35biFhdoZlb0KhYDSn3AQCsLdeRhjqhJ2kPB8gDzJ2fRjZetwS6WIyKlSnncZNdZKt
         xiUA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=vWdveTWtLUMHDfBK4Tt9cZJpvQ8CrhfNj8k0aUliMHM=;
        fh=VBeqk5DGuGcFdl4t9wmIko+GwXiGfTtDBzDh6nCPs80=;
        b=V7nRjT73SVrXXRr5ANkzoAU4U5q4hrCvrVnFVLPFBL4W/nKMbd8u0lGDxSlkb5iTHl
         1D68wdTKcHEM7+6hYS51qhjr2ACLz5Rf3N8WgzbtLhiolDjs0g0mrPo5AuMdVtv8pc/g
         rT7Zq4WfZYYXPPPep1XTjjJBvJeactwBNeKe6+P+Vd4oWKet7k/Rr64is1WY/9zjnMI3
         ZR4b8NmxNp0HbqKZk7CpLqEkBbSM/0cJUQkV1zmLLqC4yZ7Hp3qZSYuVaoQkZriVZNcL
         fYkpxZoAOA2jVQGnASAuUWsIibUNZPN46ZR2Y+kV1ZptYujwTVWp9ybCtkwONsJwEZbT
         PAKg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b="1l/tBuFS";
       spf=none (google.com: batv+6d8c727bcc7df7513d82+7922+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+6d8c727bcc7df7513d82+7922+infradead.org+hch@bombadil.srs.infradead.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1746168594; x=1746773394; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vWdveTWtLUMHDfBK4Tt9cZJpvQ8CrhfNj8k0aUliMHM=;
        b=JHDEIan0n06k/Xf45oUS1p7e7e2eGsOF1yCTBpR+hICpKNYB4rWwXQGao78zoxZFVR
         5ON6TYGG/ouWYudqrtzj5OEmvwtuvwgQ0XU6XeOTPIIXcuSQH1bXZ7oleaJbNohiQUWW
         Ial5GFnJsdGUy9+uApfDMaWHIi3i3ZOr6aISE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746168594; x=1746773394;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vWdveTWtLUMHDfBK4Tt9cZJpvQ8CrhfNj8k0aUliMHM=;
        b=TcV1Lqsd8OexIBCLtWt+296dOGyobo7HDBvtNOZCsDibO4rjZMDTAmaTDXku6yTfU9
         d8iqdr1RbMzPeBOomPP2ygA+NGzzdahcJrGrp9U3QoQ5ojnvDGGnuBlwz2G/5Fsy8m5Q
         I1O4GBjWKRno19pqFCKjUhIHOFmk1yFb6ZXURJTp7+1DupLgL9/SvAXff4eRBvoOi15R
         W/roi+CdAsbiWtpSaI0Je1uMg9XQbJXpbnIZxKhJimyrnsa6Z0SLgjh+XTJCzulD8aSE
         qvVccUC8sARAfLfSYhSdTEF1oMYfSph3Glgbmx/M5wW7v/RjOKr3LdPxazhvae4pEw8N
         BDDQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUx0Q/oUbbxIeCrxozeuhJfb2mouPC5iKbC2osZxu4FHuntEvtBssuwmh4A4s5gL+fenYb7fA==@lfdr.de
X-Gm-Message-State: AOJu0Yx9usOouG6VVnl6kfyaovDN1xApJXbgP/nmY5kRtrT8lJewb3PU
	aPFE895Iam4fK44jQVh6R6u+Qq837UDE7BWW/e95mFCoL+gF2B5Sp7F4wsgZNHs=
X-Google-Smtp-Source: AGHT+IECAv+3Nv3GJwuyX+EBpeH1VjE5t/YH/MortMIXBnjiFcFuULDRivEZdQ3A75RICqKEylb7aA==
X-Received: by 2002:a05:6a00:35c7:b0:736:34ca:deee with SMTP id d2e1a72fcca58-74058a1bd24mr2720527b3a.7.1746168593878;
        Thu, 01 May 2025 23:49:53 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AVT/gBFLKpGHSv8RVVdcxIw3X/ytYotAZHLlooiz5TQdY6bk1g==
Received: by 2002:a05:6a00:1481:b0:730:9340:6635 with SMTP id
 d2e1a72fcca58-74045856d37ls1571479b3a.0.-pod-prod-05-us; Thu, 01 May 2025
 23:49:52 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVnTo1qLvPcP5GaMyLRworIaqqGU0/6UubNcMyx7C/VFAn/6FBAoh3W42b9lR+WrnCG3bKXUWe79v6SvA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6a00:4ac2:b0:736:4fe0:2661 with SMTP id d2e1a72fcca58-74058a486f4mr2221669b3a.11.1746168592428;
        Thu, 01 May 2025 23:49:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1746168592; cv=none;
        d=google.com; s=arc-20240605;
        b=fi28VXvMzobGdWHvP9eRziO47y3QIDMJUIOinZ0S8vpnzfQIYlC7G/KGROORAZhhtq
         gF/wZinm0ESRra5F/KZYDgksnodLCJtnfaqK4oBsUX6oC8Pt2boqxE4SbtvSifrag8YX
         ZQTP+g2CpG5ro8g6GGU7dmwc3j5rlZsN1DShDZFy5e6c4Z+ASEZ0YP6J/mSW1bvwYYog
         fIHsym2q9HaMofGdge30zA2Vi/HSVvJ92Kk2m9v/zYfAhfZEq1PtAh3iQiS2blNOX9yq
         qItB3sgKR6AzTHg2Pd0D2J120+j6glKyfUWwZBxQK3NivOtI8ZZH4HVxFBXsvlBDbKfm
         HN5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=pmkmrZp/v2r7YXacZ37i5GXFUiZ8QGj+39EQV0YIZ1A=;
        fh=x2A6uL/apOIfw94ZPPIPls4EhmHGjuKCDF4VgYkQxIs=;
        b=YYpgoYOdnIiDLrBzIEq+xlNQtzDHG3Y9bKpGA2Sr/RZX1HoJ63AKbN3fnPi5xE/DEB
         TvXWYpOtpLA6+OIdn4kxWmok1d+CD2ZTSwSP33FjrWN6OgeDFQJO2fUhyTC1F0d6F1+E
         otDMJ1WFW3dgGEs3qHpMx6EsZ3pckb5YWSykNKk8kd2Hn+kmvzm5x5PpynZs7FfcLQ7w
         XtfU7xAfjeZbh1OrVPRewIV6LGO6/2CGI50AObVq1wmCZRdcc5mc3+/6Uk6bqSeYobYU
         7IyLzkYhsbBO3PbjDJyNeNvjGRSVZgpXbQeaCFskpktRzY/Fk/oItpghWvX2FQ0rgbqW
         P0Jw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b="1l/tBuFS";
       spf=none (google.com: batv+6d8c727bcc7df7513d82+7922+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+6d8c727bcc7df7513d82+7922+infradead.org+hch@bombadil.srs.infradead.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=lst.de
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id d2e1a72fcca58-74058d7f4dasi1416760b3a.54.2025.05.01.23.49.52
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 May 2025 23:49:52 -0700 (PDT)
Received-SPF: none (google.com: batv+6d8c727bcc7df7513d82+7922+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [185.143.37.16] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uAkDV-0000000117Q-3K8m;
	Fri, 02 May 2025 06:49:50 +0000
From: Christoph Hellwig <hch@lst.de>
To: Jens Axboe <axboe@kernel.dk>
Cc: "Martin K. Petersen" <martin.petersen@oracle.com>,
	"Juergen E. Fischer" <fischer@norbit.de>,
	Alan Stern <stern@rowland.harvard.edu>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-block@vger.kernel.org,
	linux-scsi@vger.kernel.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-mm@kvack.org
Subject: [usb-storage] [PATCH 7/7] mm: remove NR_BOUNCE zone stat
Date: Fri,  2 May 2025 07:49:24 +0100
Message-ID: <20250502064930.2981820-8-hch@lst.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250502064930.2981820-1-hch@lst.de>
References: <20250502064930.2981820-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b="1l/tBuFS";
       spf=none (google.com: batv+6d8c727bcc7df7513d82+7922+infradead.org+hch@bombadil.srs.infradead.org
 does not designate permitted sender hosts) smtp.mailfrom=BATV+6d8c727bcc7df7513d82+7922+infradead.org+hch@bombadil.srs.infradead.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=lst.de
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

The stat is always 0 now, so remove it and hardwire the user visible
output to 0.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/base/node.c    | 2 +-
 fs/proc/meminfo.c      | 3 +--
 include/linux/mmzone.h | 1 -
 mm/show_mem.c          | 4 ++--
 4 files changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/base/node.c b/drivers/base/node.c
index cd13ef287011..618712071a1e 100644
--- a/drivers/base/node.c
+++ b/drivers/base/node.c
@@ -468,7 +468,7 @@ static ssize_t node_read_meminfo(struct device *dev,
 			     nid, K(node_page_state(pgdat, NR_PAGETABLE)),
 			     nid, K(node_page_state(pgdat, NR_SECONDARY_PAGETABLE)),
 			     nid, 0UL,
-			     nid, K(sum_zone_node_page_state(nid, NR_BOUNCE)),
+			     nid, 0UL,
 			     nid, K(node_page_state(pgdat, NR_WRITEBACK_TEMP)),
 			     nid, K(sreclaimable +
 				    node_page_state(pgdat, NR_KERNEL_MISC_RECLAIMABLE)),
diff --git a/fs/proc/meminfo.c b/fs/proc/meminfo.c
index 83be312159c9..bc2bc60c36cc 100644
--- a/fs/proc/meminfo.c
+++ b/fs/proc/meminfo.c
@@ -120,8 +120,7 @@ static int meminfo_proc_show(struct seq_file *m, void *v)
 		    global_node_page_state(NR_SECONDARY_PAGETABLE));
 
 	show_val_kb(m, "NFS_Unstable:   ", 0);
-	show_val_kb(m, "Bounce:         ",
-		    global_zone_page_state(NR_BOUNCE));
+	show_val_kb(m, "Bounce:         ", 0);
 	show_val_kb(m, "WritebackTmp:   ",
 		    global_node_page_state(NR_WRITEBACK_TEMP));
 	show_val_kb(m, "CommitLimit:    ", vm_commit_limit());
diff --git a/include/linux/mmzone.h b/include/linux/mmzone.h
index 6ccec1bf2896..b1c459f7a485 100644
--- a/include/linux/mmzone.h
+++ b/include/linux/mmzone.h
@@ -148,7 +148,6 @@ enum zone_stat_item {
 	NR_ZONE_WRITE_PENDING,	/* Count of dirty, writeback and unstable pages */
 	NR_MLOCK,		/* mlock()ed pages found and moved off LRU */
 	/* Second 128 byte cacheline */
-	NR_BOUNCE,
 #if IS_ENABLED(CONFIG_ZSMALLOC)
 	NR_ZSPAGES,		/* allocated in zsmalloc */
 #endif
diff --git a/mm/show_mem.c b/mm/show_mem.c
index 6af13bcd2ab3..5acb51a9fc49 100644
--- a/mm/show_mem.c
+++ b/mm/show_mem.c
@@ -223,7 +223,7 @@ static void show_free_areas(unsigned int filter, nodemask_t *nodemask, int max_z
 		global_node_page_state(NR_SHMEM),
 		global_node_page_state(NR_PAGETABLE),
 		global_node_page_state(NR_SECONDARY_PAGETABLE),
-		global_zone_page_state(NR_BOUNCE),
+		0UL,
 		global_node_page_state(NR_KERNEL_MISC_RECLAIMABLE),
 		global_zone_page_state(NR_FREE_PAGES),
 		free_pcp,
@@ -341,7 +341,7 @@ static void show_free_areas(unsigned int filter, nodemask_t *nodemask, int max_z
 			K(zone->present_pages),
 			K(zone_managed_pages(zone)),
 			K(zone_page_state(zone, NR_MLOCK)),
-			K(zone_page_state(zone, NR_BOUNCE)),
+			0UL,
 			K(free_pcp),
 			K(this_cpu_read(zone->per_cpu_pageset->count)),
 			K(zone_page_state(zone, NR_FREE_CMA_PAGES)));
-- 
2.47.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250502064930.2981820-8-hch%40lst.de.
