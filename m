Return-Path: <usb-storage+bncBDUNBGN3R4KRBHGL7W5QMGQENA7HJBQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x648.google.com (mail-pl1-x648.google.com [IPv6:2607:f8b0:4864:20::648])
	by mail.lfdr.de (Postfix) with ESMTPS id 025EFA06DDF
	for <lists+usb-storage@lfdr.de>; Thu,  9 Jan 2025 06:58:54 +0100 (CET)
Received: by mail-pl1-x648.google.com with SMTP id d9443c01a7336-216311faa51sf10353905ad.0
        for <lists+usb-storage@lfdr.de>; Wed, 08 Jan 2025 21:58:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736402332; cv=pass;
        d=google.com; s=arc-20240605;
        b=hw91yZ7m/2UF2brvkqy+kDgdl8ni8YN5+Gm4QZB49I0M1M2nlAx/Wk4Kuzzz0gvIDG
         z2R88E1PcYg7rpIzhZc4HlKO+KIauYuaXdNZ+31aoCEcg2mFp1/029gP18FNjbBNGXpq
         c0VnvMj/KBjUWRedJMnUoRs1GlEZQqlrGLOsqCGf1amDUyJcP5dz3Oc4XU2uQHo4T4h7
         SBsBZrhpNDee2fLYQe1TEaRBhmbH//FOtOmR02MXtgq3PrUqLax0NnmrYsQh3JDLYmA3
         GfCccG2enK7tMBgsjSyFpWte/i8OB0WZZjsK3TFQ0wcCyOKB2hE48tfKeaMyrHiwsHo0
         SJxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=KIzcCg4EON69koObXzYoD6LaI+1+8RgrUgDxXFqTAsU=;
        fh=XPm2veZiD6sEMK/Dl8REQoFWOMrXRelCB5AubbuedhE=;
        b=Jgt48Y57aWRuV1u2MV9yorz0W1lswwxkjaLfYPmH3pktiHOw1VFIUlSVdOdsH2cMW8
         qnVRFi5LvkCnJ4arNBakVLq3UKDGjUBunwRFbEPFgdQWfKiyBJGaLK9mDlgZcLJbdMxp
         6e1geWMM9BjfY4uuY7GwNP1aCYf0wgWLLmHsDzBIuzVTCJn759FLWzp/W5RySz9yjH45
         cfNShoM92BnKZv/FXYfSXLc6UXWvxiELd8HiMg/pHm6rynTbGW1n2uFu3VTA6UjjtqUp
         CwhCJrzyEuDiGhvfjPEj19qH2tN/UagP1Rmy+AOinTpDMpEsTdpHScIO4wAXBkhtDCe6
         mzzA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=M3XHoOmA;
       spf=none (google.com: batv+2e5c2b0d924108c2b4cb+7809+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+2e5c2b0d924108c2b4cb+7809+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736402332; x=1737007132; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KIzcCg4EON69koObXzYoD6LaI+1+8RgrUgDxXFqTAsU=;
        b=Zbax8QIEWQmTpCYiCbeZgxY75nYBNWGd8Gdu44qou3BrIRpt67mkk4Y8szM+bqha+y
         7l+iiOJHwpNGGGuVfSwg77gfWO8/63ofr2ITb78uS5MTSNDmEx/ftjgHAFscOb0ZPqhS
         icSqDgpPhKh4YkbKyW8NFJbcFNp1L6kVserw0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736402332; x=1737007132;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KIzcCg4EON69koObXzYoD6LaI+1+8RgrUgDxXFqTAsU=;
        b=gdvaFDklZV+5i9ARsmIHQSPUe8Mg5YRH/t50vJGosRW3Y30qCqaxzFsAYiYW7is5xy
         UcJ3qgLr6VycjABUbyXUI1weSA4LYQMfpFnJGoQ/I6o8NGuCGc7mR6hh9qsGShX9Ll1X
         bxzJ5PNG48Qo7gKU+Seu3H62qFDFZTDBTETHIKyDdiOEnzR+a6NcAB8VlO8kFpYMLTL/
         QqoNNBHf5ilXnYl2BvDloptrojoBOOzriS78bADb9HJ5c6LGVU1fdZ8fetLIH9LGWJL2
         IXqMwAh/1QaSE0CYPsO3Bot74yB2RdDjQYbFZTOSvGj31t87G4Mm9FDFVavIHLPunG8s
         53hg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXSNXilOltydt3wn0D9Ch+YNhwM4wmF8cX0GbvhKVo+gBovd90ZAKa0qGQDUwkIgIypgDGrUg==@lfdr.de
X-Gm-Message-State: AOJu0Ywi09LWbGXYIMYQ6NrdFIdKFnhmYqPZ5x2ApPyk/2mZT7VwHrJn
	qoNicpYNnvfWIkccPk8AN/BPx5owWyBaUh5647qWF1QFxWDJB02mufhX8jnznHs=
X-Google-Smtp-Source: AGHT+IH+ztXJ4660SHBF9GPxDEQl946lYawArYBrJafY0GSuFSghQb2cYQUyK14BqN1eik70rcCdMA==
X-Received: by 2002:a17:902:ea0a:b0:215:a303:24e9 with SMTP id d9443c01a7336-21a8d64e2d6mr34516885ad.3.1736402332536;
        Wed, 08 Jan 2025 21:58:52 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:903:22d1:b0:216:5cb8:f034 with SMTP id
 d9443c01a7336-21a8d045d51ls400255ad.0.-pod-prod-00-us; Wed, 08 Jan 2025
 21:58:51 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXUfmFWSuZfn12JSyXFEgMC5Tjph+z9tcE3dGME9Sp1bIOIYNwESbk3SXEqkufXQhkc63G4Mp1tI0x76g==@lists.one-eyed-alien.net
X-Received: by 2002:a17:903:2a90:b0:216:1079:82bb with SMTP id d9443c01a7336-21a8d6c7c8cmr35061965ad.19.1736402331282;
        Wed, 08 Jan 2025 21:58:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736402331; cv=none;
        d=google.com; s=arc-20240605;
        b=VJ0X5Rm6wxeO6ywmR1NO5syejgDhdkvaCCdAT8TzAehdTzaKaA0da4xEK/kAUVuNss
         vBRd7ui2DNA7yLt11UQtpKNbK6KychKr03jXKlIkhBajnSBbxECWP088vlCbxdXC0l87
         +U0BN8Kjd7Qk7dte58bIe2sm5q80OfSoKFgrPhhvYf4uGXqAQ/PJilC87uZUoK//hxjr
         P7+FMWCWUXpw34R+HOojY2BJGQ1ITIp3Y/0dZp6GQ5ms5AxXOfD6kek7NAA3PqlCu0IP
         TGmGY0wb1N7TU3Jcvy3ER5WtfwykmlzqgFEYlh1iyna9GNQ/MRajjcDcr4715DHF0r3G
         iwyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=JR3bIJ3RlWlhBbScb5eoBT6/SsBtByww8ig4IH466+k=;
        fh=WRAGdV8aIMVVSYoSeklSBzbPtpnXpjY3BgoNNJPLYpM=;
        b=lai6UbHakVhL3VMZsTO+LwFX1is0yWDYq5UV6yIKiyx2+umVvYrfk6kmeVXnpD0xmE
         4koHAqumxlUZnJE3N8MBMd9uFKm8aM2phWZ7QrQ1gsYVJI/O5ci/kL4+edl3DxebOr8i
         zl+FA1Alr4gKvAbgScDIAkhfHxoBI8hN+G8Wq+NhPepKkKvAC7QqJS1XAfhV6isxGG0O
         /6+Hmw+no761ucjb6EWi8j7s5xOYJNqwBocnQOSxSNw9vC4x0TO8lI8BfIm0FrOooemt
         4g9ju4pJxYe4mKTMbDhMh3xsXQBQjJiynnKW8E7fNIzDXxrNWodWB6gDWI3Hk58grlHY
         Q7JA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=M3XHoOmA;
       spf=none (google.com: batv+2e5c2b0d924108c2b4cb+7809+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+2e5c2b0d924108c2b4cb+7809+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id 41be03b00d2f7-a31ef55851bsi729141a12.518.2025.01.08.21.58.51
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 21:58:51 -0800 (PST)
Received-SPF: none (google.com: batv+2e5c2b0d924108c2b4cb+7809+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-ddeb-cdec-70b9-e2f0.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:ddeb:cdec:70b9:e2f0] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98 #2 (Red Hat Linux))
	id 1tVlZ8-0000000ArZ1-2OQa;
	Thu, 09 Jan 2025 05:58:48 +0000
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
Subject: [usb-storage] [PATCH 09/11] usb-storage: fix queue freeze vs limits
 lock order
Date: Thu,  9 Jan 2025 06:57:30 +0100
Message-ID: <20250109055810.1402918-10-hch@lst.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250109055810.1402918-1-hch@lst.de>
References: <20250109055810.1402918-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=M3XHoOmA;
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

Match the locking order used by the core block code by only freezing
the queue after taking the limits lock using the
queue_limits_commit_update_frozen helper.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Ming Lei <ming.lei@redhat.com>
Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
Reviewed-by: Nilay Shroff <nilay@linux.ibm.com>
Reviewed-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 drivers/usb/storage/scsiglue.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/usb/storage/scsiglue.c b/drivers/usb/storage/scsiglue.c
index 8c8b5e6041cc..dc98ceecb724 100644
--- a/drivers/usb/storage/scsiglue.c
+++ b/drivers/usb/storage/scsiglue.c
@@ -592,12 +592,9 @@ static ssize_t max_sectors_store(struct device *dev, struct device_attribute *at
 	if (sscanf(buf, "%hu", &ms) <= 0)
 		return -EINVAL;
 
-	blk_mq_freeze_queue(sdev->request_queue);
 	lim = queue_limits_start_update(sdev->request_queue);
 	lim.max_hw_sectors = ms;
-	ret = queue_limits_commit_update(sdev->request_queue, &lim);
-	blk_mq_unfreeze_queue(sdev->request_queue);
-
+	ret = queue_limits_commit_update_frozen(sdev->request_queue, &lim);
 	if (ret)
 		return ret;
 	return count;
-- 
2.45.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250109055810.1402918-10-hch%40lst.de.
