Return-Path: <usb-storage+bncBDUNBGN3R4KRBBUJ7G5QMGQEPZ7ENDI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1046.google.com (mail-pj1-x1046.google.com [IPv6:2607:f8b0:4864:20::1046])
	by mail.lfdr.de (Postfix) with ESMTPS id 94544A056A1
	for <lists+usb-storage@lfdr.de>; Wed,  8 Jan 2025 10:25:28 +0100 (CET)
Received: by mail-pj1-x1046.google.com with SMTP id 98e67ed59e1d1-2ef9dbeb848sf23809724a91.0
        for <lists+usb-storage@lfdr.de>; Wed, 08 Jan 2025 01:25:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736328327; cv=pass;
        d=google.com; s=arc-20240605;
        b=eIMtOjE2qUifBirn15bSXfQqrG94YjGCCQQoocpecvjtIw2Fk30k5gc7o0dJAPTfsE
         twUH9YWscZ+POT5bPshr8+wSvqOL+l23VoDPHSX7IsYrzeib1vCIrEip4ev0i68tNTNK
         VSI2+YI0YNbMZLWoualpNDTCjIGFs3M0e4TQ7ssxTnd5+1i28UpRHg0Dg0Qyo4BNWKd5
         pOO9QA5tGrAPUqYz2r0s5X4XQBWc6XD9wi7XDD31vky7kqwiRgpKiWmEvkpwxSHeSSG7
         DUR/K0eVx/5BrOspIBmM+L3VYQN2k96iw0tlL+e/Qj2wmPitbWCTrFMO5akfw3z1phmS
         NEPw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=kMTrnxS7tr2COJvB17FTkK6BMNVQLZ4IIZnakTil04U=;
        fh=L2JF9V8gO6Ceqrwzw/bhwMYFxrNtZdmYdH/++jVPmGQ=;
        b=D3bb5YBxg6NaE4Tkcr0QHGLoKJ2Qyt3Dctl0E5LzQQmJ/SgIzYxLqqSYGSkgQuvjdf
         D3+N6slFfWjmKgCnsoW2q3OIMJuad47mgz0gk4eKd9ci5kB2o/H88AbkM49Kv9v1UC0c
         clEFgM1d5vMAVCqXwtfrrKaSGWmRfpfhbQgEVdqy2+1YCvUhohkojevyu5VGfy1A9Nnn
         nbQTUQ3zqMTuAJ1linXlKYjM1CzULCEDXl/kuxDvs6Ngb76iufleRGo9Lg+KrLDQdbxB
         tojgwXeeCl3SpqG91fJEOAHqInfAWqhNXIcGGJdTddHoDwS3LyHOgGPb+ICccUIYRnGu
         zP2A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=PbEZjoi8;
       spf=none (google.com: batv+9e166f3f48dee24ac321+7808+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9e166f3f48dee24ac321+7808+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736328327; x=1736933127; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=kMTrnxS7tr2COJvB17FTkK6BMNVQLZ4IIZnakTil04U=;
        b=Hs+JAMGGTQJq/uYHw5cixiEktrHSV5uLy8Jvjee4dLFUzRT6wORZji4hmXhFBEWv+d
         b5l0f+X6h3b1XcVYUWwXx8HPTur89O+P0WogyXeumDgxhEwOm1SpoXyQjz8gz/6Iefwt
         sPtSFxUFsoiBwiJP4Y9ftClNxvWGf22euoqB0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736328327; x=1736933127;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=kMTrnxS7tr2COJvB17FTkK6BMNVQLZ4IIZnakTil04U=;
        b=G1E44LtD67KqzONCqRHpUXQ7We3zgst45Q3ni3q4lyFdzLK2N3sdP6H/ldokjdJSgN
         H5rYmtxVYhOqL2v/IozmRCPR702eX5YyBTxvyBGNqq5XP2mKedQbtMR0erC6Pzts3XXM
         T+VQRwv27luTLPrCQx6StyOXJKFzVTxgJe8E6hD4b+bxgwxSOY1Q9etJacW/Nm7AFHO5
         C4q1R017GVwSL1P/ojNhPRtkM6PL06M15q8Cnkmqyxm/lo4rc09p2Im8NKzopGpBm2p8
         XMkuM8XXNfc7LTYmNee/3JOCKyesSzV7hNryOQNvTd5ue0MYfBGKL/qIyydMmz3DSlFK
         kS+g==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWEqbQWiSSyWy/+griZVk064TOAY0rMO8BV5k4b0FSzWgh7z57WN9vAhg9bIebP/9ouKy7cbg==@lfdr.de
X-Gm-Message-State: AOJu0YxwcIL9KwUUJDu5T7dcRxhFPf/TiRDoi7qNLpVFRQZkv6/lIbRi
	7vAbS2WOAbRkLwl+4Wpex+epBl7gTIQ38GFaOpgI7xwtMG/InKaqpKiWLeKi72U=
X-Google-Smtp-Source: AGHT+IEzlV8OZt/N+2azCewkY79IlUtejQJynvwuwa94Tj9DTrmJAB813hAlNKDcYkL2tT0K6UYjlw==
X-Received: by 2002:a05:6a00:21c4:b0:727:64c8:2c44 with SMTP id d2e1a72fcca58-72d21fc651amr2678831b3a.19.1736328326783;
        Wed, 08 Jan 2025 01:25:26 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6a00:1483:b0:725:ef4d:c1b6 with SMTP id
 d2e1a72fcca58-72aa9953700ls2567028b3a.2.-pod-prod-07-us; Wed, 08 Jan 2025
 01:25:25 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWPOfldI1VJPo+/zZzWM3XcSz70Rp/xCoUDI2MRb/NC8p3cEAKxPVgphqFvRad6vYWpEWVBpGnkjidRwA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6a20:9185:b0:1e0:dcc5:164d with SMTP id adf61e73a8af0-1e88d0a2ad4mr4490526637.8.1736328324966;
        Wed, 08 Jan 2025 01:25:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736328324; cv=none;
        d=google.com; s=arc-20240605;
        b=Qoh1mpX2ZDdNzjRoUDUdGkgFNiZkOvHqDjiAzLx37daWzA/W1XzKR44vmy4LOIiVFw
         eaazD09hI/7mV8U2GkA42URZbnwpH62cPyeuAhwWZuwjX5ZGp373EIY8PHe4a3iQuxUv
         91OsfaS4kOZ2DGYLUlL6neTAtiPt1wakGdJP00ev7qy/xUxF7qd+65ASIV9h/HELXYiJ
         HzaLrtAhDzYIItk1jRyZcumxr/YtWec4xHvLp8tuY+Gmu3fiDfcDV11OnUuUcQOzc+RG
         XnL4qYbHW/wsswQkBj+ckNp0mEjsQyYbCSM5dBzI7kJg3Z5Rlz26qfCCvH2yqhxEwgrB
         ghTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=ryN0z1Pp3IvUFA7Af5iKRLT0TkpMzEngq0fQMHX47v8=;
        fh=/IQ3556OhCBpzuvXgLE22Yzy616bQT8dDlkj0uCHKWQ=;
        b=NkiWOgmAkkMu02SbiqrPxjbWJ14Abbv7sLYaCOXjx5H1/WnSM3XzMw0FR+lGzZIUSU
         c5Dj9ZtF6X9hZcadw8J15sbIcwenIJtsid3QnyZuzgttofkVgnSz8Oz4qTju9CKeNtb0
         0SsQAQPhIMevbm+aPuHEoRW6UTYUMYkv6dR6w1BCtJGwYGcrMkD6YWAKY0CVVyoGXJLP
         AWBzKsaiML0TQCCFKSpFqUkCsf980FDfWwXem7/Xop5LCOl91kzjBLAX2dexkt2X4hgH
         +tmzvCJ+fT13LFPqtu9HGOnmvsaeDPUobHV3Tw4KtOj11lT9XdO3cTPem7zKyRrGlvia
         EMyA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=PbEZjoi8;
       spf=none (google.com: batv+9e166f3f48dee24ac321+7808+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9e166f3f48dee24ac321+7808+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id 41be03b00d2f7-842f1c0ccc5si47331175a12.528.2025.01.08.01.25.24
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 01:25:24 -0800 (PST)
Received-SPF: none (google.com: batv+9e166f3f48dee24ac321+7808+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-e44b-b36a-6403-8f06.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:e44b:b36a:6403:8f06] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98 #2 (Red Hat Linux))
	id 1tVSJX-00000007lPb-02aU;
	Wed, 08 Jan 2025 09:25:23 +0000
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
Subject: [usb-storage] fix queue freeze and limit locking order v2
Date: Wed,  8 Jan 2025 10:24:57 +0100
Message-ID: <20250108092520.1325324-1-hch@lst.de>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=PbEZjoi8;
       spf=none (google.com: batv+9e166f3f48dee24ac321+7808+infradead.org+hch@bombadil.srs.infradead.org
 does not designate permitted sender hosts) smtp.mailfrom=BATV+9e166f3f48dee24ac321+7808+infradead.org+hch@bombadil.srs.infradead.org
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
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250108092520.1325324-1-hch%40lst.de.
