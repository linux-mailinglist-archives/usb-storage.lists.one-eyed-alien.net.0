Return-Path: <usb-storage+bncBDUNBGN3R4KRB7WK7W5QMGQECTKW35Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1045.google.com (mail-pj1-x1045.google.com [IPv6:2607:f8b0:4864:20::1045])
	by mail.lfdr.de (Postfix) with ESMTPS id E64D6A06DC8
	for <lists+usb-storage@lfdr.de>; Thu,  9 Jan 2025 06:58:24 +0100 (CET)
Received: by mail-pj1-x1045.google.com with SMTP id 98e67ed59e1d1-2ef79d9c692sf1601384a91.0
        for <lists+usb-storage@lfdr.de>; Wed, 08 Jan 2025 21:58:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736402303; cv=pass;
        d=google.com; s=arc-20240605;
        b=Ufg9vLluYbyBrehP2H5QS54JTzYd7xOVhjJ5d8X5rSyTgXu0khdL0llG9XeSzxreYo
         4/otej15L3TNC9RWE2Uf8euuQ70C4yPTrrJxkcfDfuTnWmNrKVg1KUnuRQr3NqGxpidU
         mQcIA2EcPFSPL77JtKUwPVcMLgVr4zFy2p15OdLZd4h8DcKo4h5DRWn/T3NGcBRrec1k
         puJyCvBhUcLk+0Jsq2qmGKPirZZTyD+TlygW3LyV62mKBQLQRykRIu9PlRVThgt4WMFk
         6xh/e2g1bjpO0JcPQ2tKEKpKbbyyVJGufhPK9mehAC5CbhmpLUXmVIEI4hlQAYZEAbC6
         k6fA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=w+fh28gXUwkxEkTW66bVWeReylbqrWeISAOJZ5vyOWA=;
        fh=DC9nozObJYcGvfedR/QqKgDR+Ht5Ylplol0PP7S3gWM=;
        b=QQmOnwzUQRFzeejsOFH7+lFibwfViMD+TMuVGJ3de/898D/C9kRAy8D+lhPZYny5MN
         hGJh0YeE9AVLwft/gHioeviZlLsY6RyqICAXVx0CdO3f7pW0MD8h56S1G5fS5nMLFtHl
         npSJIKiFFk5TN6ImkbY4Z/05tGTHKT2RutktXIRsSdYjYy6ayRWZXJf44UCkXK22HvoI
         AknwLJkRzR2sdVO+hCU6etYe6e3m/XzCodEsapD08CK0fDLIMFmHrKVk9r5o9VgDLjRg
         9UMqcvjJ+IPILTspQeaHv87TGYe2s/VWt1dGgqe3uFVEK8omVAOxzUcUnCpaDZInz5Ee
         0qQA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=EBTBa7P6;
       spf=none (google.com: batv+2e5c2b0d924108c2b4cb+7809+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+2e5c2b0d924108c2b4cb+7809+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736402303; x=1737007103; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=w+fh28gXUwkxEkTW66bVWeReylbqrWeISAOJZ5vyOWA=;
        b=hNG7YvglXothf+X9qNW4aZ8Xif7yDUf354Sm4VWdXhJEpVuZpJHZy+MKgc7UHw5C0+
         sqLeKCju+zNv4DDXw0UUfVuGQffjau4vMMO4qqzS+PTfvZ0RIjVDl4vtH8wLp1/9/bY4
         6vl+ivTRXPrTFEq56Pw221LhKQlDA9Ufhe7fk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736402303; x=1737007103;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=w+fh28gXUwkxEkTW66bVWeReylbqrWeISAOJZ5vyOWA=;
        b=JlqTxB4KAa3HMcHxknU44VXwM53pITgSDt9rXaTVyIG4e888+AO7BHa5dE55yMVCJ8
         zJr9yKLk8w8p91w3+2qfU5yiS2U7EDIBgRqGds9rRtjtXT5FJPyfJv70xA5K7ZzS0U4s
         WV0grSTbPZ+WKn/NUAn23PRT7hvHv4aXz6mAIyZ5/YSsjDyPtaWTaQmhqpa5gmZnRfDw
         VkMy2fwh5ahVeWk5DEk8h4s5KaJ5sB7aQxwJSwFYwlMS/k9E8778KGSPTtTQxSMAYWpi
         R+uLKpdigAsmxy0a7c5q87D326Z7w2lkgEN4Sam0FtlDg1HM1Pku5PpqhTVuylgHKq7t
         Ef0A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXGpB5jCTqYZgXcnObwZUGwWZ/tLP6DEnk86K3CkIntQ04joqjFbncMxKG1aslm3dPvNGdHjg==@lfdr.de
X-Gm-Message-State: AOJu0Yz/DHcLRQYDZBri+DFq54gxW6R6jthFVBaSOoUq/VhmqqC8I8Wp
	Q+CZ9O/SP1ooEttjy/2XOCuz2IcPZ018b/AdKDffM4d6LTWiMZfh7eIzrp47kyU=
X-Google-Smtp-Source: AGHT+IGkPaMn/AQIODjTiPXdC7uNpYYsEchL1x2ubUwdD5sN2IP/R6QPQxxHzmAvyTXo6VkWfLK5HQ==
X-Received: by 2002:a17:90b:2d44:b0:2f4:432d:250d with SMTP id 98e67ed59e1d1-2f548eceda2mr7529808a91.21.1736402303137;
        Wed, 08 Jan 2025 21:58:23 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:903:3690:b0:215:57bf:e781 with SMTP id
 d9443c01a7336-21a8d18bdb5ls5148005ad.0.-pod-prod-08-us; Wed, 08 Jan 2025
 21:58:21 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXc1qP2sX7Uvp7erfCmD8oBhtd5q/LgmlxWS75r1MJzu8HS7dHCZq3HW3NGLHxQ/0v7J6AM5L5JlYEbTg==@lists.one-eyed-alien.net
X-Received: by 2002:a17:903:2311:b0:216:4724:2757 with SMTP id d9443c01a7336-21a83f46a3fmr85198545ad.4.1736402301475;
        Wed, 08 Jan 2025 21:58:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736402301; cv=none;
        d=google.com; s=arc-20240605;
        b=d19qQYJqnMMaep9wBRGYdBwRM14kQMZWOJ7t+OzKHKDtu/zujvb8ReUgAIoG6WY2sw
         P4NMGATnoLlkZqGn0eIQa+uE4szt+0C8kc/HBI7GHaZrmblkW8khKqLfD4iTMajAi7gu
         Vu8M184blbAEXKhhCxkskGSVQuy/K8wyu5rDYUeNoey8RkfKWTMIEX+mCVILLgMSUVk3
         hMT5eTkF+FhDPAnaPdg/bIAQl72Zr5Ds7AKF/DbYG1yWHJebLHjHyo2p+xlHa6NxLqzN
         380DbAcnhOc35Hw9zVba5ZI1uqGlSIXAIHXW4SQ98KhBeSK4ftblveIIrtSbGUYxT79p
         u/gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=RV6MVgH2DNJxl8EQ0KHNCuUkupBWVrL6lb2FtLgyOeM=;
        fh=/IQ3556OhCBpzuvXgLE22Yzy616bQT8dDlkj0uCHKWQ=;
        b=bHJxTCIH4lN+hnh7CMSGUUAMzLeXu2u2nrvc7Ya2vQ7+Grivcs29x0EsKPWZ7pcY+I
         LtQrTpvh/WJbmNrwvcRGLrcEPNL8C13x1rqPlDheFV0AODUCIcu5tFbkdjP2wrM8+NU3
         CY3KI2mTTcsTomf+bfeHY2XzaaAqd9qyKECcuyn3NBT1wT2iTYyEAZIPFStOrgMhU/xL
         TuS8VF3NQgy3wWhRmhArADaT6ArcbjGXcF0OW9hL12A7CXy5Gu07cMokbw7qxWuHt2gO
         SkTUc1UwM2nzPv6zxmXa+jJCsdJHlbeYUtFIIkxA0d1/JnuHGM1TU+Wj4L2fyleVPC0u
         ayAA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=EBTBa7P6;
       spf=none (google.com: batv+2e5c2b0d924108c2b4cb+7809+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+2e5c2b0d924108c2b4cb+7809+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id d9443c01a7336-21a916eca38si6617365ad.35.2025.01.08.21.58.21
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 21:58:21 -0800 (PST)
Received-SPF: none (google.com: batv+2e5c2b0d924108c2b4cb+7809+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-ddeb-cdec-70b9-e2f0.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:ddeb:cdec:70b9:e2f0] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98 #2 (Red Hat Linux))
	id 1tVlYc-0000000ArC0-2oRo;
	Thu, 09 Jan 2025 05:58:15 +0000
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
Subject: [usb-storage] fix queue freeze and limit locking order v3
Date: Thu,  9 Jan 2025 06:57:21 +0100
Message-ID: <20250109055810.1402918-1-hch@lst.de>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=EBTBa7P6;
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

Hi all,

this is my version of Damien's "Fix queue freeze and limit locking order".
A lot looks very similar, but it was done independently based on the
previous discussion.

Changes since v2:
 - check for polling support under q_usage_counter
 - improve a commit log

Changes since v1:
 - more comment typo fixing
 - fix loop as well
 - make the poll sysfs attr show method more accurate
 
Changes since RFC:
 - fix a bizzare virtio_blk bisection snafu
 - set BLK_FEAT_POLL a little less eagerly for blk-mq
 - drop the loop patch just adding a comment
 - improve various commit logs and coments

Diffstat:
 block/blk-core.c               |   17 ++++-
 block/blk-integrity.c          |    4 -
 block/blk-mq.c                 |   17 -----
 block/blk-settings.c           |   27 +++++++-
 block/blk-sysfs.c              |  134 ++++++++++++++++++++---------------------
 block/blk-zoned.c              |    7 --
 block/blk.h                    |    1 
 drivers/block/loop.c           |   52 ++++++++++-----
 drivers/block/nbd.c            |   17 -----
 drivers/block/virtio_blk.c     |    4 -
 drivers/nvme/host/core.c       |    9 +-
 drivers/scsi/sd.c              |   17 +----
 drivers/scsi/sr.c              |    5 -
 drivers/usb/storage/scsiglue.c |    5 -
 include/linux/blkdev.h         |    5 -
 15 files changed, 164 insertions(+), 157 deletions(-)

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250109055810.1402918-1-hch%40lst.de.
