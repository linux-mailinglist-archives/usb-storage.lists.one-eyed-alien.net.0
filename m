Return-Path: <usb-storage+bncBDUNBGN3R4KRBQPF4HAAMGQE5557SOI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x648.google.com (mail-pl1-x648.google.com [IPv6:2607:f8b0:4864:20::648])
	by mail.lfdr.de (Postfix) with ESMTPS id 3327CAA8DDE
	for <lists+usb-storage@lfdr.de>; Mon,  5 May 2025 10:11:48 +0200 (CEST)
Received: by mail-pl1-x648.google.com with SMTP id d9443c01a7336-22406ee0243sf30083835ad.3
        for <lists+usb-storage@lfdr.de>; Mon, 05 May 2025 01:11:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1746432706; cv=pass;
        d=google.com; s=arc-20240605;
        b=UFctPEnvLPTIxIpgw28u4m5kLpbSVJJ2WJeSMUcLO6J1EvG3TN5gi0/kL9S3m0hzZM
         0/IVOUWH9SoNUiTs0RUI1H1JbEtn/qD9LIidGabVpgu+09/h8OxCLFiBV8hhCiVk9rhV
         FKNA0SrVbWe+0dfEwMt5ePG0zTG3RF3e9xGkgr5ZnaMqmMraKq8csn6SunJfzdXMGLPm
         AMa/D5vG5lV/tNp3QaH/7pMVSIisOydhvVHzaDh4/uN29ljVtoUeCFKfoiyYvCKEdcM/
         eEsesF5qwWYb4CC0Ejl692jmM/JlETkWcFUTzd7kDbk45e3x5e78FEv8De1knR3NPMNa
         aSMQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=Hmbh2EUkCZR4GxnzGwM+9t6K5yyM6BsTUhVt0zPceH4=;
        fh=veksaCi+2/k8Eq/jYWTALo8gmaamEJl1ROuWaJQGgvc=;
        b=azaaqvHuWgHnWujDPHtKRZ1G87bSIt1O5M4UQEgmlzuxuEcCMSrQ/TGKalAPoWR7Eh
         g7ZMp5FYihazCn/bZRMVYqLkTnua17/U6aViGFTNJV7PM9PnMcvtwkiiBd6tzEoRu4/R
         8KeRe6ycQa3ltLuKG6JgtBh+c7i2DGMNZG2WaWlbP3KzW7WiVMcgDHMGBe4Hqg6Af1DN
         QsaL9v9s2LS3wjr7MfvV8rdZotSCAgSex/wFhDl3qu9E/ux1lBIs2UOFMeqOAH0Hnkim
         OWxVQhV6pIvrFoOqLiFc6BAdrxjZOm48nd5+KdcL3v3KYsCTqju1XGv4efvWIwV0G+p/
         TpIw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=J3SkZh3i;
       spf=none (google.com: batv+9b9d72b124a21f5aaaac+7925+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b9d72b124a21f5aaaac+7925+infradead.org+hch@bombadil.srs.infradead.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1746432706; x=1747037506; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=Hmbh2EUkCZR4GxnzGwM+9t6K5yyM6BsTUhVt0zPceH4=;
        b=jzaImTS/GTBW667+sPaeuXQHhqo8olp7xEoIwsX5QYKUFeLHFCRn2dM2+SvuXOvZrD
         bEq9YFbh/hMR4peCWQyZ0T2GTWOqOZAEm3uHuoENtWKhRUSdB7AwNtKcpidpuHDBLakf
         fCtVZZLjM8oJpvoxSGCws//O8+fF/P8bc+uX0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746432706; x=1747037506;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=Hmbh2EUkCZR4GxnzGwM+9t6K5yyM6BsTUhVt0zPceH4=;
        b=r04rILz0N/3z6/RINWib9AzhGYbRQIWcXlGZObG495zOfdrtVGOTu/SdAnLNpC3nam
         ezwRyPyZppdMyOiyabE+Xj3KTSjrd03I9Iz35V9Dr7f/X0hvgSS/ySaK1rewQP5/7wqL
         PvdMfY7GynSNS71Sm9lX9BZYUa1gw4NQt3yrf4DohTMYn4wAMQMX+X9BhUcZLbzNGGpG
         1sWCwv64YDFxi75+wbJI3+dEhhJKocmAP6xLBpyPei9xdCXldbwuZELBWXxi0P3b780R
         c5saPIrsb6MNAZhAF8kfCQ//RMgnGJEUKIGtHH9g/PhLFcOMDodDuael1gTLdYEcWEtR
         LtBw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVR+ZW1suCDgNBopcMQx/UTz79KA0DlKJ8SU80ikJfUWccGbQBgIyyvUvYPZrTlWqsBGfixKg==@lfdr.de
X-Gm-Message-State: AOJu0Yyjd01ZhNFZB554ZEY4s0ZC9ABX8gqfF8J0yUwC4cEFZYKsexPf
	lZkWJpe0wNMS1fXfswUP2SZvUVdjmvU97vmIX40rEDUAnVw5AlfOC5oGJcC1Qpc=
X-Google-Smtp-Source: AGHT+IFvFJhnJ4f+OxmCLSVxaLGOP0w2Cc9mfVFJLCqmxTUvrS6jDE+Rslxl1nSSlt7VuOTKOqHOJQ==
X-Received: by 2002:a17:903:250:b0:220:e924:99dd with SMTP id d9443c01a7336-22e1eae4211mr103723715ad.34.1746432706343;
        Mon, 05 May 2025 01:11:46 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AVT/gBEvCR0wAR+qeIhDF/0svhPoI4Zr0hKIvsmQ18rNYTR8+Q==
Received: by 2002:a17:902:ee52:b0:223:37c2:a9a8 with SMTP id
 d9443c01a7336-22e02fd7981ls29352935ad.1.-pod-prod-04-us; Mon, 05 May 2025
 01:11:45 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXe/pUr4D3dTUPJRt4xUbhdNgdecWaLGT8jj6FxY8XsZmWbzn4pLzZ4BHeXotQr+ZNlZEacYO3Tj3x75g==@lists.one-eyed-alien.net
X-Received: by 2002:a17:902:f642:b0:216:53fa:634f with SMTP id d9443c01a7336-22e1ec38cb4mr119911875ad.48.1746432704691;
        Mon, 05 May 2025 01:11:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1746432704; cv=none;
        d=google.com; s=arc-20240605;
        b=c5sp/47OxAY86jPQu9WxpM2UbN2gQF99QfvJtMit2Mmu1KuC+KMlUlVnDqjf0L5gc6
         /EKgfX/nTGfeWtj/DVkKoXb77JMLILWLyWkkSxmkz5kGxSZWOz8WuIKKZJioQ3MH+kVv
         fClKlqgwwX3bVQCojLaZmlOGWJnXt49ccW8mkMBMTji4sswFiwKt6v3ptwmxnPgE/EKr
         QX9h0FOxvWiQlnLQA0Zb3n85A18xVf5RyYh+IlqDStoWGtC3op4EWuUjlPTzsmOiTXGC
         MLXvemvTM/QzIlCtifeUfcpaxmjL85ApAtyLJDWMMupNfvpDb+/WGmjNmncj3k6JYLyi
         VNoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=3iYir0svrPREZsuAI9zUOmn/2aFb/3+lUVePkEAsr8M=;
        fh=x2A6uL/apOIfw94ZPPIPls4EhmHGjuKCDF4VgYkQxIs=;
        b=TKGsQdIbcWJPPUBKlK/K1Sj1qzSadjAmSF6e/metS1zPOeTeamUBN99a2dIn89Fa4x
         C8Wc4iB4uwPc3OtJeLVT+M13watN4yf0p8zbD9H3411EQFo6akRVzpWjowEWzOkO5Chu
         1P3G8chqKlTrW/91quAN7dOxXcO2MXn150KKeVIfm6VrHXbI+TQYcjU+RICMiadcsiRa
         9XWHUADNkNBeUqCxNiScFlg4/QhriZxn/PNtJp9n4aYNhO2ELIApNtP9wbiOO24zOKXp
         ULW45bsvchk4j5TN/d0mM6M0n+AL/FXuKTV71e6YD3iagteBXL3Y8gbA5s8oyNmhHGy7
         ZX7g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=J3SkZh3i;
       spf=none (google.com: batv+9b9d72b124a21f5aaaac+7925+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b9d72b124a21f5aaaac+7925+infradead.org+hch@bombadil.srs.infradead.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=lst.de
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id d9443c01a7336-22e152286ebsi84749825ad.369.2025.05.05.01.11.44
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 May 2025 01:11:44 -0700 (PDT)
Received-SPF: none (google.com: batv+9b9d72b124a21f5aaaac+7925+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-f2ef-69c9-6274-23a2.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:f2ef:69c9:6274:23a2] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBqvN-00000006kT2-1qJG;
	Mon, 05 May 2025 08:11:42 +0000
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
Subject: [usb-storage] remove block layer bounce buffering v2
Date: Mon,  5 May 2025 10:11:19 +0200
Message-ID: <20250505081138.3435992-1-hch@lst.de>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=J3SkZh3i;
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

Changes since v1:
 - return -EINVAL from usb-storage ->probe
 - improve the error message in usb-storage
 - improve comments in usb-storage

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
 b/drivers/usb/storage/usb.c         |   20 +-
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
 23 files changed, 24 insertions(+), 347 deletions(-)

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250505081138.3435992-1-hch%40lst.de.
