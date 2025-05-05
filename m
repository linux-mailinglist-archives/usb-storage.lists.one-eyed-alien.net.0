Return-Path: <usb-storage+bncBDUNBGN3R4KRBVXF4HAAMGQEQ7IX4UY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x548.google.com (mail-pg1-x548.google.com [IPv6:2607:f8b0:4864:20::548])
	by mail.lfdr.de (Postfix) with ESMTPS id 5991CAA8DED
	for <lists+usb-storage@lfdr.de>; Mon,  5 May 2025 10:12:08 +0200 (CEST)
Received: by mail-pg1-x548.google.com with SMTP id 41be03b00d2f7-b115fb801bcsf4519860a12.3
        for <lists+usb-storage@lfdr.de>; Mon, 05 May 2025 01:12:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1746432727; cv=pass;
        d=google.com; s=arc-20240605;
        b=bUCON0XAuC+Xyk+b98VqVIwGTDqkuUidKuuzI5XFW/g/YDN92NGjUQBRtB/QIsZY/j
         xNUctRPlVs8lE6Lyx/E+EZga63FzLXCrvpzabj2BioHKjrsEB47JBZoo0YcnWuelCOT8
         LWFO1GK1Ia2rwsf0vXe2f9YZOdfP4rIyGDqMGOFTF1QBaSktRjO2ppDTptXT4yVdOf5v
         9niLRSBzGYGiyJfOb4f0qGgeSTVIGP6dm8guj3ph+JO7jWSD6tIpl93KNAdAOuXKDGM7
         A3sUUrC4eEkexvTdZjPX1mjjhpApErDvy8JJsT6mosSZp+PCmvwu+6cGSUckOewX/3+l
         8F1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=06xCWCX9KMFXrP5ycWx3scQYLcIMoqEABeMUbthr15E=;
        fh=ytdi/KU5T1NO7D+9opk/uqlUKbJvwWGLswr8AFD0sbo=;
        b=GydFhQQhLx/LnzCe3juMjzThaUjc86bfLvwFyvR+s0m4JU4lECr7CCfDm/1VQSuOJB
         D6184QvlmnAD9pCzmyYzHN2sukDhBeDclJubYwvk3aD3mGGDOOihT/8ZP5HyuHt1PQ0H
         IvGLkQoJENO2+0Yf/MgO4KwWWROLkAWondoL+voQZTXmLpbRkJugNXpJeyScSkuKKMPK
         s2qxoY5HpxFPwekCLsXwxP2Zst4JWzNt0+76RTT6tNi9yABNq7XQ+XV+5YOz3eSsHIRc
         zyRiZgqdCiiE0tLUEhW7I5OkVMQAptWYTr3e7jBjI4AYa1bX2AOmTkgW0DJR/zQRU0Ry
         f+5A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=iHhzDuj3;
       spf=none (google.com: batv+9b9d72b124a21f5aaaac+7925+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b9d72b124a21f5aaaac+7925+infradead.org+hch@bombadil.srs.infradead.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1746432727; x=1747037527; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=06xCWCX9KMFXrP5ycWx3scQYLcIMoqEABeMUbthr15E=;
        b=BtboYy5p6LwV55iN8RzZd4hjph6SX3bF/pMxZVg2plJ2xmIJFrGztEG/D7HELEp6z1
         D4cRKgRPqbInDMWDtnuvfP2QSCDL0JZ7vmhg0VbC9by4iTbsBr+0XyPAybFiFWKlhr5o
         9EQpa0s9gx8thfohbGK03uAD6Wx81C0KBDlEc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746432727; x=1747037527;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=06xCWCX9KMFXrP5ycWx3scQYLcIMoqEABeMUbthr15E=;
        b=CbUP5rkWlGPl3kjUtF9x1kmB3J852pgO3TIRKfwnz2gkRtknS1+HvoHomemjxqH7GP
         O+zrukDzT+TI63fktCUJ7cYNe/nBiwmVDwtElAeRDGLdCFtBJLXFzh3J7RS49qhLxhH4
         hJg+iPWwpZdNl+bD5Zzn4ljL6bJyKd5LkOHGjubvaJlrSLsEkVYzun9yEQz81O/Cwu//
         W/gGclsOIfImlyA9hL2dgY1+ny7oV9YilWYkMr+iyfrr2VweuRXzqcWFkg4tRIi+pqBo
         t/FOR+t838pVLqQdj20gah/KkWbbjJSP/Hr04vk0etDCSjmoBCF2rK91IPDpwiGA62fq
         s01Q==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCW+XGhoWRTpMtCmXXE8uIkZK7TPKw9QHoUIl8LE60SwK71srQQurcgpRO6QjlFZ9MVnyry1QA==@lfdr.de
X-Gm-Message-State: AOJu0YwqwSidAxkICOxmok3rKrIssMHQRciocKqblmSxzt09HBdnjwy5
	kga967vKrzB2cFd9x0yLsCt+z5YYpL/g+NrANRV+10qSKvo2FBa3nlXud/lVODs=
X-Google-Smtp-Source: AGHT+IGtpHIh5fIVzIQPfQjKc7KRGEWOlDDtHkzpHAflzuWgtn3sgcHZSDK7awckQpKKxWYXpSREFw==
X-Received: by 2002:a17:903:320a:b0:220:c164:6ee1 with SMTP id d9443c01a7336-22e18c0d71amr129061985ad.32.1746432726915;
        Mon, 05 May 2025 01:12:06 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AVT/gBHah1aUajC+I/7V1MfW9f/aQ0zjJja4zbAF7btvau/kgQ==
Received: by 2002:a17:90b:55cd:b0:303:6c6f:2ba2 with SMTP id
 98e67ed59e1d1-30a3e88bf75ls2261956a91.2.-pod-prod-03-us; Mon, 05 May 2025
 01:12:05 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXhE8KZsEXdH3nX5BqkmTasdvD+8qum4D0p9YuBjZ81DmDkyK5dsGSLJRj/uUc3WM5o0fsWceuekOZzDA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6a21:3293:b0:1f5:80a3:b008 with SMTP id adf61e73a8af0-20e0731fb2bmr13219301637.32.1746432725516;
        Mon, 05 May 2025 01:12:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1746432725; cv=none;
        d=google.com; s=arc-20240605;
        b=WyeMCNsUqpCC/7NlkV7LS6d7yr35i/9gkDSGzT2k+DeGyPfjS4uAYpjyzz4v17YbHl
         Cvk+wIC/SHyX/kWbYQlx3h1antL7Foawp8oaNq9JoXKbjF2R5ljxdDL0N/iIOYNMDK4V
         I7VddvkSZTy6cOUTzbpOwdhRI0KZR7OUU7QJ6uVSufVJw/vWgQZ2km/GQ1NqZBbwoDpl
         YyBRsNC0TCQs4rlnMXoD+bAaZ7bpUsX4ci8UQkbV+ZOTdNdFKmOC/0FdiUTIPP/465D2
         /IXDQi0fjXm4lha1p6u8ZL9lNJcJet4cIq6DAkXUfrbuysdnVtVk2EWEgUHIbZS0qq6Q
         t0VQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=wODqmHTHx7WBWPwc1/eP5FfzwUfd9WEhL1rHfNg6Hgc=;
        fh=jCZuufslJRqVNSPQbxa+ulBAoCMg5B41hiJr74nL2CM=;
        b=NkehqecpSODNvZskqXVoDHC2DEH5r5hm2/DNhZJy9XlawlZI0E2DEBXzmjB71F7ZAq
         qIcPWsVB1LCAxeEHTrGtT0gPNswXOcvWzP8w3thhTa2n4qR22moAyNtlnL9Z0B2jWFWu
         ClQp0HkPg/8Pp+OiFk8dFwyNf2kV71h0bUMR/r0MJ8KnxIk0otjyS5W+E4yb2JC1vh/9
         GiSReMn58Z//MjCpxoOr53MOE8193EPIlR91+mvI4g9wjub8oIIlh/VVuIReI6CEpX2l
         9LXFKpiehGz6zHlWZW83DRRRBuHwN83sJ72QwYVQco5/v8Fn2VaSIH0vmHKjtdtyElf+
         g22w==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=iHhzDuj3;
       spf=none (google.com: batv+9b9d72b124a21f5aaaac+7925+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b9d72b124a21f5aaaac+7925+infradead.org+hch@bombadil.srs.infradead.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=lst.de
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id 41be03b00d2f7-b1fb3c1f47csi8412531a12.343.2025.05.05.01.12.05
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 May 2025 01:12:05 -0700 (PDT)
Received-SPF: none (google.com: batv+9b9d72b124a21f5aaaac+7925+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-f2ef-69c9-6274-23a2.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:f2ef:69c9:6274:23a2] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBqvi-00000006kZi-3rFk;
	Mon, 05 May 2025 08:12:03 +0000
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
	linux-mm@kvack.org,
	Hannes Reinecke <hare@suse.de>
Subject: [usb-storage] [PATCH 7/7] mm: remove NR_BOUNCE zone stat
Date: Mon,  5 May 2025 10:11:26 +0200
Message-ID: <20250505081138.3435992-8-hch@lst.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250505081138.3435992-1-hch@lst.de>
References: <20250505081138.3435992-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=iHhzDuj3;
       spf=none (google.com: batv+9b9d72b124a21f5aaaac+7925+infradead.org+hch@bombadil.srs.infradead.org
 does not designate permitted sender hosts) smtp.mailfrom=BATV+9b9d72b124a21f5aaaac+7925+infradead.org+hch@bombadil.srs.infradead.org;
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
Reviewed-by: Hannes Reinecke <hare@suse.de>
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
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250505081138.3435992-8-hch%40lst.de.
