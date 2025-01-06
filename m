Return-Path: <usb-storage+bncBDUNBGN3R4KRBPOW525QMGQEQF4JQNI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x648.google.com (mail-pl1-x648.google.com [IPv6:2607:f8b0:4864:20::648])
	by mail.lfdr.de (Postfix) with ESMTPS id 4061AA0227B
	for <lists+usb-storage@lfdr.de>; Mon,  6 Jan 2025 11:06:56 +0100 (CET)
Received: by mail-pl1-x648.google.com with SMTP id d9443c01a7336-21655569152sf186719865ad.2
        for <lists+usb-storage@lfdr.de>; Mon, 06 Jan 2025 02:06:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736158014; cv=pass;
        d=google.com; s=arc-20240605;
        b=M0DW/YY/Y+n9JSs3t5pSbPa8XTHScTGH8oyXe3CRnKUe6Rc47CS0mDJ8My17sTVix9
         SYUNOA5iBsQcIv+0Y7VVzZurAZPDMmPFT2xqyPKOukOwxGVvti+p0Z+YjhI7iyviJyrr
         nXJeN35Qs8ClfZl15aaH+Mpy9YV3gLDV7C6V85r+sh5pQJOTaI+mJik+TDxOWycXlSyj
         dySUFULuTRj9TXCQZR+bIWvzHDUyfuwDlZ6FztZwa+R6MyTg0OGGkgXBpJjQQ2ahH85q
         i3zCgr4dYVv0J3i+QSy1dxP7JBK1dzUwjLjSVrWHwSou9SW3swo0Wr7pugatPTdAe7FW
         US+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=FbuGy8LfWN68rQVxY00ndi3xuejmvb499M73idKd8EY=;
        fh=5zS03fMfkPzGOR/rAm2DxPkhmzSQSOc1Jw7H2q3XRwc=;
        b=B6z9RhzZ+rWU7AFnfF2RnE5H8Jx5Tf0L57JUhji7XoxxGt74aLFZZsc7g9SANczXFb
         OW6X/CUW1dyj/AEZADCp6/GWH1VmXBDEY/00DNrJ2bTqc5g3MIka1Ue/s0J/gzAtSxQL
         6DnAF1kPA2zin1OEEHDlmtn4dT/TASquixQ5Gl1nEDG0tYFtkrsCgjjs/dMFUDRAvFmV
         a4PC0kE+sl/M9MV0kZXE8X6N8D7rKedfaR/VXZrRowcMVxwssnjPkBN4KHRM5sys8eIB
         E/dbJAvs/HwpdgxeODGPRQTZxPyXBddqXZWzvxVcQGthfOlU9xS5Z/TYGenGkPlVMGj+
         jy3A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=0ldKwdTX;
       spf=none (google.com: batv+41f3ef30789274237cd7+7806+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+41f3ef30789274237cd7+7806+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736158014; x=1736762814; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=FbuGy8LfWN68rQVxY00ndi3xuejmvb499M73idKd8EY=;
        b=e2SoFDhSez8aojkUDx7MLjCaZoGQqLPeKIkMqK7hnjO3opGB2B15PC9duBA3cZnORS
         0OwIsPNTT1MxazNJ9Fcv/qXSGxZtO1bxldKhYJyhwkhuyqXloqGSPvyyb1qQKY6iEFNP
         if97FFCbhrqLjXJAno3mYWly7ZiKvrKR6scEk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736158014; x=1736762814;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=FbuGy8LfWN68rQVxY00ndi3xuejmvb499M73idKd8EY=;
        b=fN2jFVANp2l4txOUXUI7ACzf7hARA8y8mGyZqTCZHoxCI9zbqcWLoxq2kHYd8P0l6F
         YYGQI60pS8oCH/O8bg/WU1O8RJHyRvD4lc54rORosWRjcOTvzQZD4ne/2WfCvmdSHHvQ
         hdsfHpLIwCIfMgYOLjb8Nj28FQxTG71z+gRJdoiJScjnjbr3Ijz2+oUDGyUfqSMDZhLO
         GG9JThKDLq+rVrQtnqyd5LuOPvUipGwMdibLOf/gjwjJyL2OGe6gaWJMWPKCShOEEDbV
         YRPDVoCCLyGlht6cIoxEcYkuzDeoCSrAlku3mcbHyb/O61vVTTrbIU2u9ImP72PzJx2I
         a3Ow==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCW6GB4XB13lPt1XBzlJZMEKiRrg3HO8eiPxG9i9bE2QEK6+gZ6/xZ+oKEYLDbP6dbyaMTxnDg==@lfdr.de
X-Gm-Message-State: AOJu0YyN8D1eyo3wPjm1tnB/zXu4w/H144ZzPqnFNkNf/Y2rs9PLx4cM
	HgVBfq6/4Iq0NcTH8FZlDu9f60nZ+vDnV2SVaA2i42zebuMqpyJtS7G3y2QkUmA=
X-Google-Smtp-Source: AGHT+IEP4Zw/JfvcA/HjKzQHiWlquvIsEaVp/B31caixx+q021xhyEpE4UhwGimwAect89LbYxIWOw==
X-Received: by 2002:a17:902:e551:b0:216:7ee9:2212 with SMTP id d9443c01a7336-219e6e9fd66mr794079025ad.23.1736158014413;
        Mon, 06 Jan 2025 02:06:54 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:903:320e:b0:215:7e7:5e20 with SMTP id
 d9443c01a7336-219d9f11bfels101958405ad.0.-pod-prod-02-us; Mon, 06 Jan 2025
 02:06:52 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVQr0WQhzzS3lvLcGVCZ27dy8A38jmX7HS1VpE8uo7s4zTa3+7vqoxyGl6rVQWsYsmevzs2KCq9aFU/lw==@lists.one-eyed-alien.net
X-Received: by 2002:a17:903:11d2:b0:216:2f91:92c7 with SMTP id d9443c01a7336-219e6e89278mr909012295ad.12.1736158012525;
        Mon, 06 Jan 2025 02:06:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736158012; cv=none;
        d=google.com; s=arc-20240605;
        b=Zog+GJ/oyHIB562C9Z4vYd077iJQx7TZqN2shv4EpjiCiBl7cECkvgBil2GTlvq7ys
         9IoCTqWorttJnngX5SWURTYw7M2K8dImbrAp53FhIH36rfGUeZcYxqkhpHZl9hN7zp6o
         TXk+i7jt0zWx9++5Cp9EHijCW4hSD/SSQSIMGiDZxkV6OmlqDTv/rf9Edrh7Bxo3qSi4
         5Bs0WbNwsbKDPpwFCCmArBZ5DgR+SPY3IghAiIMQhtL4jSy5/elJ5Dl3kp37Kx8hcrwC
         AY6r9/1bWMLTzpra2zkhYx8jBlu1rp+Rp6hIr3zAgIciwMTPH6Zg2MHLmQZxuc6ffMR3
         x6uA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=qZv24j8F2g6J/b5MqylaQJhK6N+YiXOrkM+eWYXeu38=;
        fh=lWd3gkC8mMNZNBBVD9g3TB40i3tO1HoQaqb3EWMImUw=;
        b=eiaGIlSOFLx45WnzIe91Y8Mlpx1TOBX0f5NwADGSRYXo/5Vm6/rlE5vnLayilNmKSG
         x+kUicGSHTns65lYwGPW8q0WHhFwtlBsXLY/g5xJwCSHV5AVPMkjcanYhKNLfHmN2bFy
         rtq7olTXlNf6d/BCKnzmXsOfecNpDeZOaDbrfekaZQB7T0WrsZNYb9CuaQxY9HnLUVEB
         E85UFwveJ4IpG+xXM+2qzpNtCh4ViDpUmOnxNfvuN1d/g5HyWOohaJpRVUPQaYgvFLUr
         HPtH7jhac7ACqf6ePM5x79Q9/sZryluQR03XQ3jl70ze4PCmC5foefUxOllQjFdL8PKB
         eOPQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=0ldKwdTX;
       spf=none (google.com: batv+41f3ef30789274237cd7+7806+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+41f3ef30789274237cd7+7806+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id d9443c01a7336-219dca2b83fsi402752455ad.511.2025.01.06.02.06.52
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jan 2025 02:06:52 -0800 (PST)
Received-SPF: none (google.com: batv+41f3ef30789274237cd7+7806+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-db6b-99e8-3feb-3b4e.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:db6b:99e8:3feb:3b4e] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98 #2 (Red Hat Linux))
	id 1tUk0W-00000000nNn-0ZWj;
	Mon, 06 Jan 2025 10:06:48 +0000
From: Christoph Hellwig <hch@lst.de>
To: Jens Axboe <axboe@kernel.dk>
Cc: Damien Le Moal <dlemoal@kernel.org>,
	Ming Lei <ming.lei@redhat.com>,
	Nilay Shroff <nilay@linux.ibm.com>,
	linux-block@vger.kernel.org,
	linux-nvme@lists.infradead.org,
	nbd@other.debian.org,
	virtualization@lists.linux.dev,
	linux-scsi@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] RFC: fix queue freeze and limit locking order (alt take)
Date: Mon,  6 Jan 2025 11:06:13 +0100
Message-ID: <20250106100645.850445-1-hch@lst.de>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=0ldKwdTX;
       spf=none (google.com: batv+41f3ef30789274237cd7+7806+infradead.org+hch@bombadil.srs.infradead.org
 does not designate permitted sender hosts) smtp.mailfrom=BATV+41f3ef30789274237cd7+7806+infradead.org+hch@bombadil.srs.infradead.org
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

The changelogs are very sparse as the moment as I started it before the
holidays and just finished it enough to send it out as a RFC today.

Diffstat:
 block/blk-core.c               |   14 +++-
 block/blk-integrity.c          |    4 -
 block/blk-mq.c                 |   19 ------
 block/blk-mq.h                 |    6 +
 block/blk-settings.c           |   27 ++++++++
 block/blk-sysfs.c              |  128 +++++++++++++++++++----------------------
 block/blk-zoned.c              |    7 --
 drivers/block/loop.c           |    7 ++
 drivers/block/nbd.c            |   17 -----
 drivers/block/virtio_blk.c     |    4 -
 drivers/nvme/host/core.c       |    9 +-
 drivers/scsi/sd.c              |   17 +----
 drivers/scsi/sr.c              |    5 -
 drivers/usb/storage/scsiglue.c |    5 -
 include/linux/blkdev.h         |    5 -
 15 files changed, 133 insertions(+), 141 deletions(-)

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250106100645.850445-1-hch%40lst.de.
