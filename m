Return-Path: <usb-storage+bncBDUNBGN3R4KRBTVG4DTQKGQEYSE4PPY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x445.google.com (mail-pf1-x445.google.com [IPv6:2607:f8b0:4864:20::445])
	by mail.lfdr.de (Postfix) with ESMTPS id A8B4D363D0
	for <lists+usb-storage@lfdr.de>; Wed,  5 Jun 2019 21:09:03 +0200 (CEST)
Received: by mail-pf1-x445.google.com with SMTP id a125sf4274475pfa.13
        for <lists+usb-storage@lfdr.de>; Wed, 05 Jun 2019 12:09:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1559761742; cv=pass;
        d=google.com; s=arc-20160816;
        b=NdN82klmxugyhiymxByom/fO7OPXQLrZ43Inrzy/LVmowaNelmyyphjCWKSRCPvLOx
         Prlz1LS+lTHlpspysGb31FqD4dOEMVbuGkQvg9kA81EcmxnfSEtRfFRRnCkTrofJOAsK
         w1KXWbAs8/Z71X5yrH0s+qWXg5Y5ZCQdWUD/9GP4PLpFtYb7qP/HsE36x54h9HL/WLsq
         7HNG3yT/i0wiXT0eQQ+1FX3oqRa8HjN1IeNpZjKWVe39OqIZw/aTUOruW6zskXSW/8ih
         ACsmLtur7o7khL5h3n//kgfZjxxzl+S64d0KgL0WsgOs8SE9l+6q5UG1rSUzelOcMTGK
         aDkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=8Nk04P3jmTYX/yEP2w/tY/n/foxu3Xj3xnCnBnIB7Qo=;
        b=s9siE4dhx9JA+PulwlOv8kfxuxK9whAp/K/R3lahWLCPtRUMcxqlyAQ6yWI81/hvdd
         EFixUFuimMPRfKj3+CyOD2lA/kB6VZZHW+x+zHgbaeAJvTGOGNs65pNOOrn5joWpz6gm
         Dw1f2q0Ha6ZqpMi+I6DB/1g+DwIPXz4vcXfwx2qiK032m3SsRiOf698rIt8WD9NvnxFI
         ITtNhK7KMPaLLbGIAfYmIi7tPU8sCvkKRt3cYuxYOrGOmq+tCgyIXLTC8TpNOD3PKVwV
         8yoPBONUXCJ+H8FFQFC3rOuvZdJlTJVuqVgjMKg8/mSpqWQK06XUSFlFEKy0VC34C7EH
         jJzw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=p6L9DWWU;
       spf=pass (google.com: best guess record for domain of batv+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8Nk04P3jmTYX/yEP2w/tY/n/foxu3Xj3xnCnBnIB7Qo=;
        b=PhPiIG0uFG2eLL0zfVEDbO6bk/2MNcL7f7iYsfiULwAEklNoTSE/aJtPltipMYKFk3
         cMv0lLha2TMGnQbr7QvNPUkxNyFMjOgbPcHMxCbWqkIo0u9w17g5/oPQCnLdtae1iju/
         Zys/DVSQxbuZelzkS+dVa7QY/b36vkpD134ew=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8Nk04P3jmTYX/yEP2w/tY/n/foxu3Xj3xnCnBnIB7Qo=;
        b=XqS+WVsvBdmAfUNjwn1Q6LJJaiTIoH009VFdrVvobRC5cdt6XCfFVKKd+RgEwbq8FB
         QTab2kaO4PSfAy3L3Iq74xsut7TinGVNHnhcTbUTWF4nQ6t9CBkB2PX85en7N0YrSmpi
         ryQ+QVEyDxdbxOM5jAk707M3HAvJZE+BASEuD1hbFsgN454iFVQdjO3dAvPp/T83Lc67
         HX3yrr9Vt5dl1cneC5/QWzWIQTt2nbntkLs/h266j5vNpdHfFLYTj0Jr7amNIt8tsGNk
         6Jslo5MlW6FI6DM5DwJ+U72mxXC2+3RjWddvzCuYVcrOOEK6Wyam4RpxFQvXhI9H4+NW
         7w8w==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAW6EVd9XRlN/hVgie2s2F6iHY2of136bvHjJdS+LOjpEmWLbHi2
	3JYkOxQN/BXUhHJq8bwDP4c=
X-Google-Smtp-Source: APXvYqzrwBbXaOebQGYCRwrF6Ax2lz4LvGuEMjbcmxLJrlTGoBZ5Ie6x90SPHMl7Or/4PRHdYBrWEw==
X-Received: by 2002:a65:62c6:: with SMTP id m6mr345787pgv.306.1559761742233;
        Wed, 05 Jun 2019 12:09:02 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aa7:8a94:: with SMTP id a20ls263900pfc.15.gmail; Wed, 05 Jun
 2019 12:09:01 -0700 (PDT)
X-Received: by 2002:aa7:8c4c:: with SMTP id e12mr38725492pfd.131.1559761741730;
        Wed, 05 Jun 2019 12:09:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1559761741; cv=none;
        d=google.com; s=arc-20160816;
        b=gly1ZvM49Tm7yjX3ugYupi2LQaQXVvzwARC1ALeNgLG58SE0M3r1VEqy6kny3Yvoty
         XEVeYKm+WmVdrQsv62K8TGf7bfopqaX8KqWR6m5PCm2+glOYWgE4qrdE/XdPOpLS4uPA
         7bgTleXHyawaHGf9wmC0eq5imZXQSDo3FDm2IlgNChdMOQDJkG0M9TtYFwaKB97ft/hc
         Nzd7PDYELj0OVMJ8sVAlhsriynL90p81GCkMs8lco1BibHch5Ma4bE3R9xb/i9xWvmp8
         9XuTeQ1b+MaTgiQpSjM3o9sLD/lT76ZinfotSgfAv9d4VggTbcybClR+bG0itt1NmgMV
         ho3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Q4TbxoiujTGLtL40me7CIHzcsjwa9bU5PcQWV6JWtc8=;
        b=SSA/W8MpfqDuJL4M92PLNvbYRp+/TYL7QmNmTt1VtVSlZu9Wciy8YedpRUCyzwZxnF
         zUpGtkSwr8X7XqiU6c0RQJ9TBmVnGSEo/N6Qc5GocTK5N/mIW9I/PKramUYNSbz8Ubcw
         mee25n4aeI80hcaZGtcftkP9ZpoSTcIBG8vbdJrk+S7s013WovqauVAjQDlK4MEzqEUZ
         uFV7BHQYBC6VSAML4fgkIkymcjfL/wky4ZNSM4wLqXmGCR/cqk+A0CbcVkfv2pbcTJzn
         54NM3qDJSG3kKaWfHpSdv+BQIKWdtgY4fdZ01KiRcALuZ2gzHAXaEqzAIuI+i7gOzhj9
         5O9Q==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=p6L9DWWU;
       spf=pass (google.com: best guess record for domain of batv+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by mx.google.com with ESMTPS id i8si27008311pgs.220.2019.06.05.12.09.01
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 05 Jun 2019 12:09:01 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of batv+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from 089144193064.atnat0002.highway.a1.net ([89.144.193.64] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYbHG-0005KB-0r; Wed, 05 Jun 2019 19:08:50 +0000
From: Christoph Hellwig <hch@lst.de>
To: Jens Axboe <axboe@kernel.dk>
Cc: Sebastian Ott <sebott@linux.ibm.com>,
	Sagi Grimberg <sagi@grimberg.me>,
	Max Gurtovoy <maxg@mellanox.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Alan Stern <stern@rowland.harvard.edu>,
	Oliver Neukum <oneukum@suse.com>,
	linux-block@vger.kernel.org,
	linux-rdma@vger.kernel.org,
	linux-mmc@vger.kernel.org,
	linux-nvme@lists.infradead.org,
	linux-scsi@vger.kernel.org,
	megaraidlinux.pdl@broadcom.com,
	MPT-FusionLinux.pdl@broadcom.com,
	linux-hyperv@vger.kernel.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] [PATCH 03/13] mtip32xx: also set max_segment_size in
 the device
Date: Wed,  5 Jun 2019 21:08:26 +0200
Message-Id: <20190605190836.32354-4-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190605190836.32354-1-hch@lst.de>
References: <20190605190836.32354-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=p6L9DWWU;
       spf=pass (google.com: best guess record for domain of
 batv+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org
 designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org
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

If we only set the max_segment_size on the queue an IOMMU merge might
create bigger segments again, so limit the IOMMU merges as well.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/block/mtip32xx/mtip32xx.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/block/mtip32xx/mtip32xx.c b/drivers/block/mtip32xx/mtip32xx.c
index bacfdac7161c..a14b09ab3a41 100644
--- a/drivers/block/mtip32xx/mtip32xx.c
+++ b/drivers/block/mtip32xx/mtip32xx.c
@@ -3676,6 +3676,7 @@ static int mtip_block_initialize(struct driver_data *dd)
 	blk_queue_physical_block_size(dd->queue, 4096);
 	blk_queue_max_hw_sectors(dd->queue, 0xffff);
 	blk_queue_max_segment_size(dd->queue, 0x400000);
+	dma_set_max_seg_size(&dd->pdev->dev, 0x400000);
 	blk_queue_io_min(dd->queue, 4096);
 
 	/* Set the capacity of the device in 512 byte sectors. */
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To post to this group, send email to usb-storage@lists.one-eyed-alien.net.
Visit this group at https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190605190836.32354-4-hch%40lst.de.
For more options, visit https://groups.google.com/a/lists.one-eyed-alien.net/d/optout.
