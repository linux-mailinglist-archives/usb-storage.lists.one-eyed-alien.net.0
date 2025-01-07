Return-Path: <usb-storage+bncBDUNBGN3R4KRBVMU6O5QMGQEKBLT2AI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1045.google.com (mail-pj1-x1045.google.com [IPv6:2607:f8b0:4864:20::1045])
	by mail.lfdr.de (Postfix) with ESMTPS id 61FCEA037EF
	for <lists+usb-storage@lfdr.de>; Tue,  7 Jan 2025 07:31:51 +0100 (CET)
Received: by mail-pj1-x1045.google.com with SMTP id 98e67ed59e1d1-2ef35de8901sf21427910a91.3
        for <lists+usb-storage@lfdr.de>; Mon, 06 Jan 2025 22:31:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736231510; cv=pass;
        d=google.com; s=arc-20240605;
        b=Mn6dlBUtdaaWbtXPw00ITM+Lnggahrp4y+oP6Dop7pmeykEExyzdxPJ5xOEoRQbczm
         4P1aNnNKwctAsq5gkInJREAFUx0X4MBmGVqL8qexNkJz1gIqjAhyZySlPizIWBoe3NdQ
         eRO2zzE5Ik4vBBW1ZZPhXDCTbZsxZabuEh/xN10yxlCc0R6opzGwmy/bXjGm/32cH/tG
         miRWmYhzae1hAtDPkMdM4T85RrFnCYclByLLbTq3XuUMAH8r46SyW1SBjkcK8R0XjkUs
         JZFapRvT9RWSefYIACNASstvyCz5ut32RLgSo7OqQxukiqxJZLuTskPubJKk1+dV2Odm
         O9Ig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=n9XFiuhsEgk4ps/ok4zepIqriTom1a9MbgjdmQvHxEA=;
        fh=CWehMR/uFPo34sCMIgcVN4PYMHko7v3jKVyHO/R+1QM=;
        b=BuXHEFkHE7ubGi4je5zjLQV4UChySX8ZqZZKvnf7ZyzAx9cIgFFGBlDysZOFlmSjdD
         vYfTv4esco2K3z+BRdQSAoJ5OYM2i8/8lfPG3qsjnRoZwUdS6AUW9hePqe9cC1TwQT7h
         14jLh0U69SuiBm0GztGUbiHpwryVW0R8lfEEI18gQFew+7x+HwBSHJmluW4djzOU+/Y7
         rWFh9up4O0DNNj1Tb52FBI7Gpi1uYvwln171Uu0a409hTK/aUXa2hI9V35OxMoBPJgZD
         7nYEysCOw2dxqECCwsq+LFqnqs+CSGFh8bbihnZHwK4GsbFRctxXZNj2kfiOmwYjeT36
         p2Ng==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=mKbwr5cU;
       spf=none (google.com: batv+ca79fa4415f544dfc9f5+7807+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+ca79fa4415f544dfc9f5+7807+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736231510; x=1736836310; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=n9XFiuhsEgk4ps/ok4zepIqriTom1a9MbgjdmQvHxEA=;
        b=K4Kz3n5/en2kY2hou65X5th8tfD0S6NamnzzciCxuBwG+xr7qLFJBIEY5ULhc7Ofib
         kkktbswQYXJfWWDaCZ6/BtFH8A8jnXszuN3c+DfYyDvr3c/k14pYJ8QhfqUzwYUNYnLM
         /qaRneX8WIb2bmr6RNPKx6lMRLl8CDoh21VWU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736231510; x=1736836310;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n9XFiuhsEgk4ps/ok4zepIqriTom1a9MbgjdmQvHxEA=;
        b=FN435XzUtoicKcWR/21Uo22ZFt5yC6nXnSrIFsLUf9aB59R4HA2m6KIntsQQo8fcFd
         FUk7HQ74Cnp8IW0PF/FjyFu6fCbuiG4yAR9sNOMldWdZiHt2FOtf1KCac5rl/6yhFcht
         UqQJvVBvzo+eFU0Zabve0qEIJsh7o6C3lmdHVAftRacwV9bYrCkLKQ1Y9EzV58gZYSjw
         GcDHAdhyA1GKkBqN3g7lX70xwGTFNOFXUifzioDbxepL0ZpSocC5iJOyzcObr7p9xQ/1
         1aVIpnV1ldo4P1jR+9zn/Nus9KejU4C33uYjE3PsjwktpNjU8YmKY9Rt6tHxZK/JmcJ+
         vkuQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVVLwMUFrswdUyjH5ewsiLBsAyxgB9uohfVb327EDOrSHhZPMBeqhBzBo5mt4S/skSzzes2Nw==@lfdr.de
X-Gm-Message-State: AOJu0Ywb41nS4TJXCTPxttkB1KX3GTxIUNd0oz93b5FszgFTy4SomzZD
	znr/54KyYUwjfj6q2JYr3ygSHYtT64n8Y/VUhecfewqmaZxi0kF0nWb9LRQSQsI=
X-Google-Smtp-Source: AGHT+IFtOS9RqwUtaY9cj3bxXkzOX1dfB8rpulgd9zUohEBHWMtVgBRp5U3wfijeISeC/gJPkrNOHg==
X-Received: by 2002:a17:90b:2e41:b0:2ee:af31:a7b3 with SMTP id 98e67ed59e1d1-2f452dfcd53mr93036985a91.7.1736231509951;
        Mon, 06 Jan 2025 22:31:49 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90b:3d43:b0:2ef:9dbc:38ff with SMTP id
 98e67ed59e1d1-2f442ce5bd9ls8999247a91.0.-pod-prod-07-us; Mon, 06 Jan 2025
 22:31:49 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVR9Uz5Y87/5P3b99ZwBxuqbKnLDKNUVzfoqWZ04kKMst7dfq/Hxm8BL0yeHw7AfAb/67u2CDKgGdNb1Q==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6a20:d045:b0:1e4:8fda:78ea with SMTP id adf61e73a8af0-1e5e08661eemr107289223637.46.1736231508696;
        Mon, 06 Jan 2025 22:31:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736231508; cv=none;
        d=google.com; s=arc-20240605;
        b=U2n5zEFmPD+fVoQyJ2/vGuGEg8TqiQQ7k15v6BIsdHlRw72SoBD0NZb3wbN26VVT5r
         5puQyzHrsFYRt8HkzQTdFOrthZT04WqNY9QiZdmRyAi0gcGSt6DpUzAEZUy3TbJUWl3w
         NiNeC1pREv0tPmd4VwIb/fGd/PUH5AII+9TiiWtEcCsd48hh95nWgVZTFcUKc5SH1Kxn
         TV3Ef5TerfrvKsPHSh0ZCNwSt0ES7G1iCHwnMOv21l3xOwRu59o2ALw6onTyeuXQuS8W
         opv+cpcGAY59ArM97sHUeL7dML4L9AzOpOf9bFz9RplHTbxf95eIDXo6mbqI0KJxdGgB
         VYFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=6hI+ugNTaOvOszOzcEqkSFZCj8TAzJYYPeYzQzSN93E=;
        fh=/IQ3556OhCBpzuvXgLE22Yzy616bQT8dDlkj0uCHKWQ=;
        b=OP/rG4p3aqiG0nPgvyi0iZDPNQsQKEuH+qazaxy300+6itU9psHeBe4CC0Zxy4sm/6
         NwijcfJNnRUqoW+1XTL8wjbPx1B/mG3Uq7/xCi6URiNEJpzfG9dmyysvhlzpxiowmboy
         Tr2xl2ihtMBrcpXsBrK2/22eqiyCE+fsrB6hH0wwtiE7emnmzFG2FeeMiBfaKB1Fti2F
         SWEPE1jjX9SaYWY9xlvMoKH9SRR9IrLHDver79ou3Ym/b99aWsBAcYtbPEcHvMXcgA+w
         CSb1wr4yegyHdxIVBuyTmEdyxctZuSOZgy/P39MuLDLmmE62yvZMivQVb3oRAaIJv8Cw
         L9qw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=mKbwr5cU;
       spf=none (google.com: batv+ca79fa4415f544dfc9f5+7807+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+ca79fa4415f544dfc9f5+7807+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id 41be03b00d2f7-842f964b64esi42660183a12.698.2025.01.06.22.31.48
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jan 2025 22:31:48 -0800 (PST)
Received-SPF: none (google.com: batv+ca79fa4415f544dfc9f5+7807+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-d467-d75d-35bf-0eb6.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:d467:d75d:35bf:eb6] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98 #2 (Red Hat Linux))
	id 1tV37v-00000003e1g-09Rm;
	Tue, 07 Jan 2025 06:31:43 +0000
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
Subject: [usb-storage] [PATCH 7/8] nbd: fix queue freeze vs limits lock order
Date: Tue,  7 Jan 2025 07:30:39 +0100
Message-ID: <20250107063120.1011593-8-hch@lst.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250107063120.1011593-1-hch@lst.de>
References: <20250107063120.1011593-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=mKbwr5cU;
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

Match the locking order used by the core block code by only freezing
the queue after taking the limits lock using the
queue_limits_commit_update_frozen helper.

This also allows removes the need for the separate __nbd_set_size helper,
so remove it.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/block/nbd.c | 17 ++---------------
 1 file changed, 2 insertions(+), 15 deletions(-)

diff --git a/drivers/block/nbd.c b/drivers/block/nbd.c
index 259bd57fc529..efa05c3c06bf 100644
--- a/drivers/block/nbd.c
+++ b/drivers/block/nbd.c
@@ -327,8 +327,7 @@ static void nbd_mark_nsock_dead(struct nbd_device *nbd, struct nbd_sock *nsock,
 	nsock->sent = 0;
 }
 
-static int __nbd_set_size(struct nbd_device *nbd, loff_t bytesize,
-		loff_t blksize)
+static int nbd_set_size(struct nbd_device *nbd, loff_t bytesize, loff_t blksize)
 {
 	struct queue_limits lim;
 	int error;
@@ -368,7 +367,7 @@ static int __nbd_set_size(struct nbd_device *nbd, loff_t bytesize,
 
 	lim.logical_block_size = blksize;
 	lim.physical_block_size = blksize;
-	error = queue_limits_commit_update(nbd->disk->queue, &lim);
+	error = queue_limits_commit_update_frozen(nbd->disk->queue, &lim);
 	if (error)
 		return error;
 
@@ -379,18 +378,6 @@ static int __nbd_set_size(struct nbd_device *nbd, loff_t bytesize,
 	return 0;
 }
 
-static int nbd_set_size(struct nbd_device *nbd, loff_t bytesize,
-		loff_t blksize)
-{
-	int error;
-
-	blk_mq_freeze_queue(nbd->disk->queue);
-	error = __nbd_set_size(nbd, bytesize, blksize);
-	blk_mq_unfreeze_queue(nbd->disk->queue);
-
-	return error;
-}
-
 static void nbd_complete_rq(struct request *req)
 {
 	struct nbd_cmd *cmd = blk_mq_rq_to_pdu(req);
-- 
2.45.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250107063120.1011593-8-hch%40lst.de.
