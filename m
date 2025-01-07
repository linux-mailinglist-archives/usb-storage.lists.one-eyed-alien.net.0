Return-Path: <usb-storage+bncBDUNBGN3R4KRBP4U6O5QMGQEHOZ2RPQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1048.google.com (mail-pj1-x1048.google.com [IPv6:2607:f8b0:4864:20::1048])
	by mail.lfdr.de (Postfix) with ESMTPS id 160B3A037E0
	for <lists+usb-storage@lfdr.de>; Tue,  7 Jan 2025 07:31:30 +0100 (CET)
Received: by mail-pj1-x1048.google.com with SMTP id 98e67ed59e1d1-2ee5616e986sf35117130a91.2
        for <lists+usb-storage@lfdr.de>; Mon, 06 Jan 2025 22:31:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736231488; cv=pass;
        d=google.com; s=arc-20240605;
        b=Ii/Oy9uuF5Qu7lqwRGot75kGXSKmqaKHsPtLKRbCwIgDfq3muw4yOFq44DlQeCE0f5
         uArU9u48AqOWV23yT4PsSW1XvOp1bQ/RBHwr4IWHU0kodi51srhivixtHG4U4OXj/BOm
         crwhbrrTAg9sKLxJHs1V7FZnpBO/bvBhe+ggzEUGb6l+sgcPNWEIKFcnTMUUWwN/GLQj
         5gjyldRMrgejOCXJw8+A38vFDsZIHYCVaARzeKBLucsuwtlqbZmHF5yCEVi8jezWHZVK
         MIqXUjnDg1tc8J3BTzBTekVf0gAx6iweEoe4dSII7mThYEpH5xanO88fsP/bI+n5jpLz
         oXcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=wg4Jfhy+6rm8iPNTXI8csuhBPAvbU8Av7kpFriizS4M=;
        fh=enrVvomcdGPmvnxsTqe12g7uy0yc5sDOr5a29U7QBQo=;
        b=KfcyLhvQPEcf/Ahpt8/wRNhPQpQW2IG2jZ7ewZ4ee5R8Tka0fyWZitZ7EawKgbdYEF
         NEjHwbWLO2C2XHLEm3d7lGbThCm9tMax2y+AGcu174EHAnSn9dQgx2mHR23uzdoeHNTB
         GHRObu5DdFtoc4tWSyY9yfNT33qzluXRrl72EkOODTX4fD3McwOnUf+TtgwYMNz4ypmE
         DOrMSb0RozeJGjfrubPBmDrbZU2ScWWks7GFYlGOgRuqQ2jgDhHfk7/SEr/TCmRoOA34
         2pky0EIO7sm5m07laejt2eZDcj+5PBcxPEushlh5XQ6XylNKG4shaRR7lH3zk/NQA1gr
         xYug==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b="l8zEQzw/";
       spf=none (google.com: batv+ca79fa4415f544dfc9f5+7807+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+ca79fa4415f544dfc9f5+7807+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736231488; x=1736836288; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=wg4Jfhy+6rm8iPNTXI8csuhBPAvbU8Av7kpFriizS4M=;
        b=KnjxznyKR7bRlfBiZYSd9Cc1889AuwA8EagApvC4OX+FX1nflJ/tyiBG1Xxy7tp1mW
         YfSmJmx7DqhY7OWhSjg8PoivF3Ix9gvfflvIIUijHdgqC7WIMEUXwIs5EaKzJpCcuXWD
         V1GiF+w9tQK+TyRWb5r8iwVUjGKL+PluUEXI4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736231488; x=1736836288;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=wg4Jfhy+6rm8iPNTXI8csuhBPAvbU8Av7kpFriizS4M=;
        b=c+LeB2qk2FyZjtSSUxN8zn/hLIGA3suAEEoKdboYdEHRphBZ0OXoXNwtjX6Im88sGE
         i5jyGQMUfFhPlaNjwAvXtv39Px6QnV4jt2fCcAVWLHtL5RkouWowmF9KI2S3vaovZTMI
         e0Dc169dlhEfaO1w+FcdTny1p2WwV9iuPW33IIZsLOyHMumF5/NE8N0jK4r3Ptqu6xVm
         jXtj4pjEit7wEWWopOwf2yljnH9mWE5RDi5ZieP9m3ORbCREKwF7POGOaDNJxwRy76ho
         5iz5JK9WRexytoLh+tGL/VuElD3T3WQdbUlt8kENU4ZiwLOLJSrY+DN/UtMSK9OpthYS
         LPCw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXnJajffK4Acit3crA2aWjcd02SKCqfd/aW7HUHAP6v//uZc+YqXj0Wj19oXbKuAQCoM3cHZw==@lfdr.de
X-Gm-Message-State: AOJu0YxjM5x6pfIGDbHIFRC5+yhlFDrZom2mC7N8ar/piWRhq8sWlCBJ
	6q/pg9emIsbvOl7S53Nk6i4fGFjWo35EgEbqcfeiPg8a5sood7OBe2LzkdOquFU=
X-Google-Smtp-Source: AGHT+IGv0X7DfVSkjlr+4T2lEU7OlqlUOOX6WNVQGzr0/XL2oKxdVmn2LtZ7R79toQIsW1e9Iv91VA==
X-Received: by 2002:a17:90b:2e4a:b0:2ea:b564:4b31 with SMTP id 98e67ed59e1d1-2f452e3db0bmr89093111a91.19.1736231488254;
        Mon, 06 Jan 2025 22:31:28 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:6d26:b0:2ee:edae:763 with SMTP id
 98e67ed59e1d1-2f442de68b0ls64710a91.0.-pod-prod-06-us; Mon, 06 Jan 2025
 22:31:26 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVm53HlmbIfBJNyisKP3JD8NC39AntIo4ddZVCeM8AxgOTe+/gBSBYT3xzbjKPnr/JX912X65CjaULk1g==@lists.one-eyed-alien.net
X-Received: by 2002:a17:90b:548e:b0:2ee:8ea0:6b9c with SMTP id 98e67ed59e1d1-2f452e1e0b4mr111140778a91.12.1736231486355;
        Mon, 06 Jan 2025 22:31:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736231486; cv=none;
        d=google.com; s=arc-20240605;
        b=Z3gnRl6b2oK7Sg0j5mw5jmxXjnd+gNWCpEaMFl6NXOJO1ThR+4dJNm7tv8KD8b+m/b
         bA8vs2+qzWqOZNXeQ4NTJ8pZNoVJ5kttJg78H8Yc4bbKwUumr3PbyqC7vNtwqOxS5nMZ
         XfoI8w2cj5Yb3XFxCtQxYdcImwo9Z+P/jsHE6iUeVRTmKL5YVr7M254k4l0ImKRToxD8
         hlq+KwfB/ipw1VTwYBrnse5kOITRetp2WkXWpTqFOBl8p7rybvsj1viLjUqSXVo7pomn
         tpNR1qQ6PX95jE2tM8Yt+SXxjlgkUXR8v6rXcjDFxxTl6wA6Fyyf2gpr0OR67yp7Yhgs
         j3Mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=TreWHTKV2tbBOHQr6HaKSg8mx5igp3LbRHsuMCPKwNw=;
        fh=/IQ3556OhCBpzuvXgLE22Yzy616bQT8dDlkj0uCHKWQ=;
        b=J+z1WlrnDEJhhIuMUJYPuKCPK1c0kGZJWNWSmxlGlcChtbC9bMzezX1hmZs1Fsi04j
         m2aUU873ajSjSR2r4VjBUmzonN5kfBFWL4LfOzCfvSjVtLw32p4IpMJPh8N6rlNhrYlH
         /82Oo3aS0nj9DuXQ64gMAaYm1DXpUrwXfYAii+eOPDQ8DdbkQe3O3x4oSVhlMW0iI2NH
         MUUVJo6tbMlUF7w7lyFfwQhwMX/I7M4s1Eoy7rm9+NtgvL3VDPIZNpWULlQS8aK7k+Lw
         3mmVLrtonJPaYT6nVYpaOEJlkagP6BvGGQtwxH7eVwU7jx3F2BwexKXdMU9n4vO/1cwi
         AuNw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b="l8zEQzw/";
       spf=none (google.com: batv+ca79fa4415f544dfc9f5+7807+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+ca79fa4415f544dfc9f5+7807+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id 98e67ed59e1d1-2f53bdd0017si60309a91.103.2025.01.06.22.31.26
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jan 2025 22:31:26 -0800 (PST)
Received-SPF: none (google.com: batv+ca79fa4415f544dfc9f5+7807+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-d467-d75d-35bf-0eb6.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:d467:d75d:35bf:eb6] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98 #2 (Red Hat Linux))
	id 1tV37b-00000003dok-2sfk;
	Tue, 07 Jan 2025 06:31:24 +0000
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
Subject: [usb-storage] fix queue freeze and limit locking order
Date: Tue,  7 Jan 2025 07:30:32 +0100
Message-ID: <20250107063120.1011593-1-hch@lst.de>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b="l8zEQzw/";
       spf=none (google.com: batv+ca79fa4415f544dfc9f5+7807+infradead.org+hch@bombadil.srs.infradead.org
 does not designate permitted sender hosts) smtp.mailfrom=BATV+ca79fa4415f544dfc9f5+7807+infradead.org+hch@bombadil.srs.infradead.org
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

Changes since RFC:
 - fix a bizzare virtio_blk bisection snafu
 - set BLK_FEAT_POLL a little less eagerly for blk-mq
 - drop the loop patch just adding a comment
 - improve various commit logs and coments

Diffstat:
 block/blk-core.c               |   17 ++++-
 block/blk-integrity.c          |    4 -
 block/blk-mq.c                 |   17 -----
 block/blk-settings.c           |   27 ++++++++
 block/blk-sysfs.c              |  128 +++++++++++++++++++----------------------
 block/blk-zoned.c              |    7 --
 drivers/block/nbd.c            |   17 -----
 drivers/block/virtio_blk.c     |    4 -
 drivers/nvme/host/core.c       |    9 +-
 drivers/scsi/sd.c              |   17 +----
 drivers/scsi/sr.c              |    5 -
 drivers/usb/storage/scsiglue.c |    5 -
 include/linux/blkdev.h         |    5 -
 13 files changed, 123 insertions(+), 139 deletions(-)

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250107063120.1011593-1-hch%40lst.de.
