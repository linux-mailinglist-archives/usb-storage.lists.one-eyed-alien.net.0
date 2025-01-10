Return-Path: <usb-storage+bncBDUNBGN3R4KRB5XIQK6AMGQEY5MQFCI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1045.google.com (mail-pj1-x1045.google.com [IPv6:2607:f8b0:4864:20::1045])
	by mail.lfdr.de (Postfix) with ESMTPS id E3694A086C0
	for <lists+usb-storage@lfdr.de>; Fri, 10 Jan 2025 06:47:36 +0100 (CET)
Received: by mail-pj1-x1045.google.com with SMTP id 98e67ed59e1d1-2f5538a2356sf3076180a91.2
        for <lists+usb-storage@lfdr.de>; Thu, 09 Jan 2025 21:47:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736488055; cv=pass;
        d=google.com; s=arc-20240605;
        b=Iwg41VTjo9GAZ0ukozqXpYbcDzLBRNrC1Sa1HQNyr19Bu0FjdaSiz3wwy/Lmj0Nk0t
         wmcT7QXGYSJrS4LkGKoprn0ad7jtfTPKLGZ8dr5rNJJrv5riPC5WR0Ql3OjpKs5YMCDH
         9lWwAq6TIUpG5B3IfJhotxsjgMTPWdS4dixAHjzXSnPoo/68+q/wgoMQARkx7MyBhIyc
         sQQ3qL45JqSzdviTh/3BkkKCd1RAbM9dp/XoCchde+qksdqVjAO4YVvftmCfCAG7QqGf
         6O2TwC46/DA8oohgHcaxwHy3NedCElf6xmgqpCZeJLcM11+aAwLLFgtJTBqqknYCuqBO
         d5VA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=B8Dc2IUQfKx6FGo+zvmTQM+9zioeMz6lpTPPJWlqkRg=;
        fh=HQgc50/TbN9R+P9oIJvQM5ohJUzbV2OrDpEwftHkyS0=;
        b=BjqHjA79CcB+HmEtrGem9burC8Th+nEfe2GgGDv8f1cnCrrImW7H4/kC0hLxiNWtLE
         gXkfLmMH5pOyagyzdyra5BULkz0MZL3fzc04tYAUYmxlsflyiWWWZgX8578EXUhIiAif
         lWDOoEqcNTOzDGzRTj3jwjHFW4lFzc33iD/PGx2FswLCrAE8CmKjRY9B/D2yk+JTODoG
         QDuEcLNKrd7UFrConc6cSgpuAHAYVWHK58FIV86x5jvFtmHJ8LcxNtBTO196QYo/l8XI
         0sgpiilh93QOpHljOE5vRswRh3tMPRZNf2kHeY3+thQMTAl11riKWSlzKsi5siF1k6xp
         KJoQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b="a1mw6y/v";
       spf=none (google.com: batv+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736488055; x=1737092855; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=B8Dc2IUQfKx6FGo+zvmTQM+9zioeMz6lpTPPJWlqkRg=;
        b=NoN35+bFK083w1+MSYINzYEBgVO48KJ8zFikGMIVaosFRmJMLjRZVP4ALeUP3jISca
         QChz+gT4PFN9T3psEYRjIqXTtm4rzt5K9bT57SU3vk1mX/i70xcSbLf4WoBoJZ2yvRj5
         A6ZveoRUP//c6ATgNGbsaeVL6AfamQJ2vD7D4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736488055; x=1737092855;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=B8Dc2IUQfKx6FGo+zvmTQM+9zioeMz6lpTPPJWlqkRg=;
        b=Kk+Jn+N5PpW9GbZkgCjY3rn8rHL6VQJ+QguUNVi7qG8Zn08DWeaM08jZj5HyV6gwQO
         8jkV5KEVnBIAYoA5iBKMMlWOV/rSYe3iBs7MAOhptQRCO22dPuNai0VD+DMWQYDxtRk5
         81jR54FNM2+r8k0ow5c3Kww+15aKLKbVs1W3Bj9HtaTPpLStbIln8OgDEQJxkdctx1DC
         IDK275uXiIbxBczMKChs9eNlK0kKXwt48zugfDMIqb6Ay62qM2j6IejAsSnM/Yd4sQBq
         tPrFLCrNyNBfKgkmWFAE10pNxaYqzkpVPZRBE7jawuAYnAYO0P+ojUBur/b9lkrIcw/l
         nPpw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXeHtp28GwtDoMnrZLoevkIzOv+WBDU/OvGSa2NEzxyxGVPVKLMaGJBmxaweVbXC9hiYa5Aig==@lfdr.de
X-Gm-Message-State: AOJu0Yzw5h+y7xEKr6uj7uZ0abR3FMjawjLAOVZsrx0iV1jlEk/u0WBj
	dIystFYgLx2TFgwqqjn4oaYlm9gkKfIg5opM2rA8950T/msvRoybds4ChlYgomw=
X-Google-Smtp-Source: AGHT+IGg383vBrnDBOpjS5ceSrd9ZFYLFRFhVG2YuqRQ4ubbckD9AUcCQ6/dq6lD0ooDRvZqtp1qFQ==
X-Received: by 2002:a17:90b:5446:b0:2ee:44ec:e524 with SMTP id 98e67ed59e1d1-2f548f7d212mr13814689a91.35.1736488055158;
        Thu, 09 Jan 2025 21:47:35 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:9a8a:b0:2ef:7dd6:88b3 with SMTP id
 98e67ed59e1d1-2f553f59ed9ls1446669a91.2.-pod-prod-07-us; Thu, 09 Jan 2025
 21:47:33 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVFTiL7wdNxDHsOJRrmihzWBZo6FC2HxoE8skvP6pfZ66ENIPwuz7N/tnp/WHxoshGRZvLGRomMfWiEUw==@lists.one-eyed-alien.net
X-Received: by 2002:a17:90a:d003:b0:2ee:cdea:ad91 with SMTP id 98e67ed59e1d1-2f548eba7b7mr14921956a91.15.1736488053008;
        Thu, 09 Jan 2025 21:47:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736488052; cv=none;
        d=google.com; s=arc-20240605;
        b=BP7S3L/eoeZbFZb8tr4r8BZ2UyoLhdHpa0RbqGtdxj9cQr/+8FagymTu7BO6z3tfSH
         Z1OwBP+ETT+NUrF5zO7YHrrG9kE4Htm9LKNRTDZsTf3xAy/45lfxUtNPS8oXrMMuoZiD
         eoaRNEtDYZopM/m6Ma7awmxiZOCiEwgGu2nXuFRNiwDzmaC68sdnee16qIon8ThS9zzy
         erP7vI9VlECIwFoqtMkOGUAcrhH/4SanaGHxFit1LuhW0s7dEe/ytngGYCHnWXs1cQVH
         /XkHvj6oFuuNurzHZbUuIQrGoiRGFv+MrmDZ1D7E4sFMm5A59uMs9by9CvmHJ6Fcniqk
         UNQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=aCdPW6rZSRQIRUEsosZPtHUs6EG+ZdqdLnK/yxunuoo=;
        fh=/IQ3556OhCBpzuvXgLE22Yzy616bQT8dDlkj0uCHKWQ=;
        b=FGjrDIprWVbfc4r9lJwsZfWZK6llLPCvo0+SWubzjvbMuMCelGA4dh99hADEuiVsFR
         FELNmQ9yAGMlxtlQOQYuRWtEfYPgDCXLV52XZMNBaHVSkJBYH1wEsksJSWFltFlF2nGY
         hue9juyL2dVAuiTdT6kzE63MDtBHD58L+5DcBA1dITTtLboW9/o83iLp/J1Ffvxjgg9h
         fve5SkR7IgVDnd5jtNVyQRqeThNY0gN1C9dgu+vGeyz5ATYY77g7tkkdAFUC6PFxeaex
         24+DVAapkjU1luZkbPVITrGKbQULqyXt2YDr4kc0elAK3wXQYtcRfV6xbLeHd2iBRmP8
         DIPg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b="a1mw6y/v";
       spf=none (google.com: batv+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id 98e67ed59e1d1-2f54a27ddc0si1840141a91.30.2025.01.09.21.47.32
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jan 2025 21:47:32 -0800 (PST)
Received-SPF: none (google.com: batv+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-76c3-a3dc-14f6-94e8.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:76c3:a3dc:14f6:94e8] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98 #2 (Red Hat Linux))
	id 1tW7rl-0000000E4rf-0XV5;
	Fri, 10 Jan 2025 05:47:29 +0000
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
Subject: [usb-storage] fix queue freeze and limit locking order v4
Date: Fri, 10 Jan 2025 06:47:08 +0100
Message-ID: <20250110054726.1499538-1-hch@lst.de>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b="a1mw6y/v";
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

Hi all,

this is my version of Damien's "Fix queue freeze and limit locking order".
A lot looks very similar, but it was done independently based on the
previous discussion.

Changes since v3:
 - more comment fixups

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
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250110054726.1499538-1-hch%40lst.de.
