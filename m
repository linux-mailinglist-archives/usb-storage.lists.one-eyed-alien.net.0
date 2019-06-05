Return-Path: <usb-storage+bncBDUNBGN3R4KRBUVG4DTQKGQEJ3JGTMI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x448.google.com (mail-pf1-x448.google.com [IPv6:2607:f8b0:4864:20::448])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DD31363D1
	for <lists+usb-storage@lfdr.de>; Wed,  5 Jun 2019 21:09:08 +0200 (CEST)
Received: by mail-pf1-x448.google.com with SMTP id r12sf19213353pfl.2
        for <lists+usb-storage@lfdr.de>; Wed, 05 Jun 2019 12:09:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1559761746; cv=pass;
        d=google.com; s=arc-20160816;
        b=y9pl0SDNpicyteu7T4gtzVxUlbtxweiou8ZyhFdXOdlOlhe7oJCuwPj4Gyq+hBW4/+
         Fx4j6JHC4yFx9EzeI9hrwEmFN24gzs+Ue9jpcdwqjC4UlLhHd5c0z48ftxaSXng9aZH7
         QUsxvL5MzCK8cO81RkL3zfqBxsdh8AwQu1EjbQeHnmi9M1jelEYGIejJEv8hFK1J+zhc
         MKFezDjaWwaIp7iskVblFuqOhHP2yL7susb52ZjrY2Mtd4UfRYXvIt4Jih8UfGIlsT0n
         OfhYxrG+goKEar4ToaWygL3cGr+s/vJyaGoJGLabbkLPglsxYOpC9OKOeMiFBpwiqDpv
         cHDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=acFtbKCZbeOZrxUNvacB5V72bxuEST660uNVDdef6Lc=;
        b=Npqll5j3/bu7mOh9dPCN9+dYgIzcqkq+IT1gWo4FTrMd+H+Xq1bZ7/PFcKVJjrijNT
         65RUp9hCPl3VUsMfcz7mZEzkDEUYgq2M5/sYOQ5gDJW2/W1pgZCxj891eFoGYy28yRua
         1sJv/UefBRzP1rJuWsfK7FaeqRK0HA+udao3gZW6R6XI0dvPuPtX2/8LvdcvfY86+CDT
         VN8KyJuxgmgnoQkv6JUklYGghL/cx+rZLEMLwmWh/GVOC28DTSuBnpvZSb0q7Hs7un3G
         IvDwzsML6IAf27QdbxPfJoY1YKE2EJQYpyUMIwth+77cjLaP1wEg02/TQSNhxuYwRMcW
         rgNQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=W7YRuVdb;
       spf=pass (google.com: best guess record for domain of batv+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=acFtbKCZbeOZrxUNvacB5V72bxuEST660uNVDdef6Lc=;
        b=lZaDMgf4AjMqDkKReaSewhetjDlNdYqXo75oRPCxZk+Y6tCov4TQ6SOe1x8LSIY+t6
         F2dioDDrAhFtFAqyvYf4TUG3OrxXv54MqGmDjOVZU3Db/RQzGgSyKUBAidVb8QwUl8uC
         k4wjDSMTdWGv/TIMf0sGEcI1vViKIsUmXyp5c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=acFtbKCZbeOZrxUNvacB5V72bxuEST660uNVDdef6Lc=;
        b=j1xOikyFEcNkWKGfkz+TdJrYK1ZAA4wFSnYhuLQ0FII7nx0Lx4C22nhUE5rg3wgTeU
         hRlVA96HVF/GNI/w0kQLF75FpZNTSmxXCLhF3lJDj/fzhi1411hq66GRAIrZ6+jKrQxD
         PmtJY4mXF+xzQPQ/7r5SDUerZg/PZ6zaL9v95cVVMNowl5JKbQOnB6mi+XvJ3/zh6495
         vFRQS3468oAILrEyhx3EsrEHXsBnBGe7Uh8SL9iEl2yd+A0iLZGCitplL2xR1FCpq99x
         bZYruxZBl9Wu3/BS3CbhQCuakg/twnmx0edePOYfurGR5mnuhYRX7qbBj8JD9ggqfT8B
         atXw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAUDD0isgVLxI/09VUkJ+oTHSZWGt39PuGEtnPQMrHkhtiNY2egN
	fx2AH2Ap4IZJJibZSHCTljo=
X-Google-Smtp-Source: APXvYqw1Ql13aWRvLDxt9KDjVXO/KDldh0D+WDqT7LrAaqDNJIO2ojfF568ut6swJoZ1UZN+ViJaYQ==
X-Received: by 2002:a62:bd0e:: with SMTP id a14mr48568324pff.44.1559761746765;
        Wed, 05 Jun 2019 12:09:06 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:b685:: with SMTP id c5ls729529pls.16.gmail; Wed, 05
 Jun 2019 12:09:06 -0700 (PDT)
X-Received: by 2002:a17:902:403:: with SMTP id 3mr45340830ple.66.1559761746390;
        Wed, 05 Jun 2019 12:09:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1559761746; cv=none;
        d=google.com; s=arc-20160816;
        b=aQUu+W//GvAwmx810rXO9HsPX/Jj4nXc+XKKxsU1ELJNfoNwSZu2gRUvdon7Vtm2Y1
         eOwK5hr3xQChRc2iA6462a27ruA/cDD6XgelqYz7EU82R7pOPKFEfkv0l6diQcVqU1ve
         okiSzEuT0y+RGNj7W2PT+cXeGztJLXuZt6dYSmOiqTnHtfD2ky8f7jU+dwCCUNc0/ERZ
         tSpRpgguNubz1FTStAK9+7xC0JYMGI/mtuxWSPWm4N+q09o4DZHiiPLEWUuPasTQI0Sd
         mnONH9HBdmOsM6yMIXzRPYPcs1UsF9U72148Je0XYp/XxML2a7zHxKY/c7q2qeGySNeC
         ZVBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=mMOG10avCayPSFkRYQ6YVcJcMwUlFe5SMMCCEccPUfo=;
        b=ieWyacntcQuTHs7YIvfm//Gl81yT5wU29ekTe1GlPbe7w40S8bHlAVFYVpUdJXCa8Q
         gT2BBXz2ybqL/bLRylwmYVAvyyW/oiVPFYpP+iWj2l+B037Vye1lqDNeYGF4U8+GtUwm
         DLID5G+mn5iZGecnK+T1X677iCEkEHwu5Ie9W/f7CjQ8FFXSHCDH06GrObxSOv8dms1E
         EDQdEaY2M9YB9EimliqBL6w709s7kh74AiH0EzrP9onGMHOIuJnXtQq85U1PAZe/dOIb
         KBAmp4vwnLVG3CaK25QL35p/y/mkBo2pqNOYgaF/shDLCq4aGf9WUYkD+8TZrnJzBw/0
         uEDw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=W7YRuVdb;
       spf=pass (google.com: best guess record for domain of batv+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by mx.google.com with ESMTPS id i31si27861942pgl.15.2019.06.05.12.09.06
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 05 Jun 2019 12:09:06 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of batv+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from 089144193064.atnat0002.highway.a1.net ([89.144.193.64] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYbHK-0005QW-0o; Wed, 05 Jun 2019 19:08:55 +0000
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
Subject: [usb-storage] [PATCH 04/13] mmc: also set max_segment_size in the device
Date: Wed,  5 Jun 2019 21:08:27 +0200
Message-Id: <20190605190836.32354-5-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190605190836.32354-1-hch@lst.de>
References: <20190605190836.32354-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=W7YRuVdb;
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
 drivers/mmc/core/queue.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/mmc/core/queue.c b/drivers/mmc/core/queue.c
index b5b9c6142f08..92900a095796 100644
--- a/drivers/mmc/core/queue.c
+++ b/drivers/mmc/core/queue.c
@@ -377,6 +377,8 @@ static void mmc_setup_queue(struct mmc_queue *mq, struct mmc_card *card)
 	blk_queue_max_segment_size(mq->queue,
 			round_down(host->max_seg_size, block_size));
 
+	dma_set_max_seg_size(mmc_dev(host), queue_max_segment_size(mq->queue));
+
 	INIT_WORK(&mq->recovery_work, mmc_mq_recovery_handler);
 	INIT_WORK(&mq->complete_work, mmc_blk_mq_complete_work);
 
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To post to this group, send email to usb-storage@lists.one-eyed-alien.net.
Visit this group at https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190605190836.32354-5-hch%40lst.de.
For more options, visit https://groups.google.com/a/lists.one-eyed-alien.net/d/optout.
