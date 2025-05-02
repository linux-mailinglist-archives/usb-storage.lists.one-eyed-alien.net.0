Return-Path: <usb-storage+bncBDUNBGN3R4KRBA6W2HAAMGQEBJMNFIA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x648.google.com (mail-pl1-x648.google.com [IPv6:2607:f8b0:4864:20::648])
	by mail.lfdr.de (Postfix) with ESMTPS id 263E0AA6AE5
	for <lists+usb-storage@lfdr.de>; Fri,  2 May 2025 08:49:42 +0200 (CEST)
Received: by mail-pl1-x648.google.com with SMTP id d9443c01a7336-227ed471999sf15881085ad.3
        for <lists+usb-storage@lfdr.de>; Thu, 01 May 2025 23:49:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1746168580; cv=pass;
        d=google.com; s=arc-20240605;
        b=AoqPQC/qm/yPYIjhpMcpm930+uN0D7Wo1SrWdiAaAi1JogEaYU/6GBQwJq+xkZvmm/
         Yzfe4jISIGBjc7NqvIIYKdZb/3TNlVUOdem3rMIMSYaFrvLx2/vR76Vkwr9eifCJ32gb
         mY17lsAJpWfHJL0FATOoKybe3uhIOlDVZzPygx9N/C8LYypKlj71QlfPs4N/YUwW84J4
         zi7AhspmQncE+M4AffKhcOwcsZwOi3ZFVDReCcI54vfH9ENsmKzGlCIf6IS8v7VDbxLb
         XSOBWKlxQLRyZSl/OYXPDbtw4LjDrbO47JuRDaWT3PJFGIldwAD/26UyRmqBKFz2auAF
         jEFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=jcbbyzTWU79k6CaneYJgtgk7+9B8ReEEB0jWgwYbr6E=;
        fh=Oc72uUdYQh+jLc+foViw0fjjCXr3nxZeCquztvljaco=;
        b=aFlnx6My07m65r3pnTOcDsYydrM9TxGvJMNW6Porzeba9o/h/CYgdQG0u8+k6xqT56
         sOe7QkRyD4yRjwvJDhz9EUQcMg/tyFsFbznpgFHHhzUkZYE0UyyM8Jyy+EpAxILnh8cZ
         CjGUwVF0NysFGea7GCUm0SCxTVHVPeSpn9+rmsQ4EzsdW4iQ4RkMMgtBAZo9GA/Tl0nY
         6UmAif+aXKr4Q4Bx+gQkw8Gpc4B6WKauViHlpDBJ7q0wlJXjui+SaMiWDVGSJ9Ed4uuS
         QBqsdPO8fmeV3klq6nctCJx7E0I/At91k4h9cb3u8Vm6O7/gEKDpW5mN1+BSZNAT/5pd
         v3Jw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=c7lDIAmS;
       spf=none (google.com: batv+6d8c727bcc7df7513d82+7922+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+6d8c727bcc7df7513d82+7922+infradead.org+hch@bombadil.srs.infradead.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1746168580; x=1746773380; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=jcbbyzTWU79k6CaneYJgtgk7+9B8ReEEB0jWgwYbr6E=;
        b=cYuQcuKuZJXid3TZoMeHNG91ToUq44Ms8EoZFLw6luKpSot3ID5OOBS/xQUt3R/u2Z
         0wy5nI2tjSS9dMxR18L5MSS1rGOIBTuXavDJR4a70A3cObgel6sWqhWWUK3NIyrVyrcM
         JNCnn4SG0WF1avXamZyDWTwujZrsXGkrxUed4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746168580; x=1746773380;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=jcbbyzTWU79k6CaneYJgtgk7+9B8ReEEB0jWgwYbr6E=;
        b=ii/pfs0lLNx5x6DRbgy10g0wrMFv4AQ+fNYFv5HVVeX0yoetN7DNjG3WCizdCUNjv4
         9yDod32jJuHbpgHHxaBtMEA71XDBKKVG6eXKtr6IhVq7bJsi6XAzn3sCuFq1IAPdNmBz
         d15jHr2KFiKNxRT2U+1JEUQH9OVMe0A2Og9cvuA0yg/TzE7NZbIoq/ZzuRlr1C7BLv1N
         SfcG38rPDq1h6q3k2EWZyR+WDWx8pKw/JeCIVPVuQYwfSvGIAlJ+fCkGTW0CX0/dtFMz
         RwJ3TQVyxmbldqbDLpPcMnYEPyH2Zve6BJ0YxlZuzX0tTCg72OuIhVLoDdyRuVCIlVKa
         M1jA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUdxEaOfGnFuvLEkyD/Z1CPEb2Dljq7Chny63uQw4grI1W6LyrILb9h1/KjvlZtA6jl0NpDWg==@lfdr.de
X-Gm-Message-State: AOJu0Yyvse8n5ET9Z01dtLa7LLhCK3bsZKNWFV5VZLoQ1EN8lIkL1yed
	w3cUS10FcMXXaIEGmZ8u88Rk89oIqFTFvJ6vOiQanErsUbAAstS67FyJ7t93nUM=
X-Google-Smtp-Source: AGHT+IGXzjVQKvuBZ6YL68504TdpDP19ZNekoBUvhe4wLoW0FABTaZdMNlBIb3pYW5fnlVavpByBrw==
X-Received: by 2002:a17:903:2303:b0:224:255b:c934 with SMTP id d9443c01a7336-22e103aa9e9mr26226255ad.51.1746168580171;
        Thu, 01 May 2025 23:49:40 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AVT/gBE82bZw5+Y6L1vGTsXShklMG9LRsnnRe9icDsVoLZeU7Q==
Received: by 2002:a17:902:760c:b0:223:ffd3:d815 with SMTP id
 d9443c01a7336-22e02fcfdb0ls12672585ad.1.-pod-prod-01-us; Thu, 01 May 2025
 23:49:38 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUld7PXpC4yR6PDILHWTOuEtFtHyKlT9OUELkIHmjZtxj+B28QR165mNXPVUfaTUbEY14ds8FpLbyXhDw==@lists.one-eyed-alien.net
X-Received: by 2002:a17:902:ce89:b0:221:331:1d46 with SMTP id d9443c01a7336-22e102b85dbmr26059575ad.2.1746168578492;
        Thu, 01 May 2025 23:49:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1746168578; cv=none;
        d=google.com; s=arc-20240605;
        b=Tn5/aU0bjQE4SPJuYzFo9I+a8iT9zB/eAUvhTkmU6u6Kne8CB5iqj01ejmCO6ino5k
         vhhoJLvK9Oq0suKRU1o/mh0QY12xlnQLI//BiW8DZsH0S9td78epFR1bl3byZJiyzmAe
         nfPXfdhYoFnkG6HSC9JUM1Ujj29gCeYJGgWfyxVDxUJm0edCRch6oe5VUXdk5x3zg+TK
         IQLHEkMDfMH+spvpbNsS7PTPz5Kbhvbxz/a/9Q+/QyEZzwVoOHsYSze+nxXMjqA6vHgo
         Se8k0Tb1G4GddsApUyJ8IH4cGkjGTlv6bBprBGz0xF8rWsOFmOhXXUxE1ubrPTSDAUoU
         JHlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=PORlUSLual3F6eJbqxK9YVY84oVvG6MW+mh4UJLeZPQ=;
        fh=x2A6uL/apOIfw94ZPPIPls4EhmHGjuKCDF4VgYkQxIs=;
        b=fLKqquivB3dk1Sw5GnQ8g5phvgQjIk2WgOluU4p4jYqQw+8p+dfIIZZJkHbejnAuHT
         mzkAx4VSEOPSwGmm2QP+kz09P5jMHvvxWSoxg1O7hL/YugaBOOOCxmg3i/rswTUZHa6m
         5K3HZAErISjOC/6hotT2vbEkwKCHD/p1NT0txvdSqzVB7qso3ifbF97mvkYqDuziQqap
         7U11swbTtJjBvtDrWUi1Yiy1mzrR2eQbr+YC3o1lvtpLKxloHLuuKwXVO3JFt2K/taDV
         R1Tr1K0skZOWRQmuXB/aAeMLHQEE1sZUHLNFo32c8je05gv5P3hLZYioEN/+puBAL1dl
         bVVQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=c7lDIAmS;
       spf=none (google.com: batv+6d8c727bcc7df7513d82+7922+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+6d8c727bcc7df7513d82+7922+infradead.org+hch@bombadil.srs.infradead.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=lst.de
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id 41be03b00d2f7-b1fb3c7098esi33334a12.613.2025.05.01.23.49.38
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 May 2025 23:49:38 -0700 (PDT)
Received-SPF: none (google.com: batv+6d8c727bcc7df7513d82+7922+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [185.143.37.16] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uAkDF-0000000113H-0pdI;
	Fri, 02 May 2025 06:49:33 +0000
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
Subject: [usb-storage] remove block layer bounce buffering
Date: Fri,  2 May 2025 07:49:17 +0100
Message-ID: <20250502064930.2981820-1-hch@lst.de>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=c7lDIAmS;
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

Hi all,

the block layer bounce buffering from the early days of highmem keeps
being a wart in the block layer despite usage by only four drivers,
all through the SCSI layer.  One of them is an old PIO-only ISA
card, two are parallel port adapters, and the fourth is the usb-storage
driver.

This series makes the first three depend on !HIGHMEM and for the fourth
rejects the probe only when used on highmem system and the HCD is one
of the few annoying one that does not support DMA.

This is not the most pretty way to do things, but none of the driver
maintainers stepped up to convert them to properly kmapping buffers
before doing PIO or MMIO operations it does shift the burden to these
drivers and might get them to actually move that way if there are any
users of the drivers, or in case of usb-storage configurations left.

A nice benefit is that we remove the per-numa node stat used for the
number of bounce buffer operations.

Diffstat:
 b/arch/mips/configs/gcw0_defconfig  |    1 
 b/block/Makefile                    |    1 
 b/block/blk-map.c                   |    5 
 b/block/blk-mq.c                    |    2 
 b/block/blk-settings.c              |    5 
 b/block/blk.h                       |   17 --
 b/drivers/base/node.c               |    2 
 b/drivers/scsi/Kconfig              |    3 
 b/drivers/scsi/aha152x.c            |    1 
 b/drivers/scsi/imm.c                |    1 
 b/drivers/scsi/ppa.c                |    1 
 b/drivers/scsi/scsi_lib.c           |    3 
 b/drivers/usb/storage/usb.c         |   14 +
 b/fs/proc/meminfo.c                 |    3 
 b/include/linux/blk_types.h         |    1 
 b/include/linux/blkdev.h            |    5 
 b/include/linux/mmzone.h            |    1 
 b/include/scsi/scsi_host.h          |    2 
 b/include/trace/events/block.h      |   15 --
 b/include/uapi/linux/blktrace_api.h |    2 
 b/kernel/trace/blktrace.c           |    9 -
 b/mm/show_mem.c                     |    4 
 block/bounce.c                      |  267 ------------------------------------
 23 files changed, 19 insertions(+), 346 deletions(-)

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250502064930.2981820-1-hch%40lst.de.
