Return-Path: <usb-storage+bncBDUNBGN3R4KRBU6W525QMGQECGCUC2Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1047.google.com (mail-pj1-x1047.google.com [IPv6:2607:f8b0:4864:20::1047])
	by mail.lfdr.de (Postfix) with ESMTPS id DECCCA0228F
	for <lists+usb-storage@lfdr.de>; Mon,  6 Jan 2025 11:07:16 +0100 (CET)
Received: by mail-pj1-x1047.google.com with SMTP id 98e67ed59e1d1-2f129f7717fsf20456332a91.0
        for <lists+usb-storage@lfdr.de>; Mon, 06 Jan 2025 02:07:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736158035; cv=pass;
        d=google.com; s=arc-20240605;
        b=RpmZsPHLSQ+IwJ6MDcRHqMaauotSufkHNGZsO3DFbbiQmtZ54qjFy8vk2x6HiqtzD1
         nRlDsXfPItAUFufzHCdvHPcDBtPUQI1tbwAOtMavR0FfMIHRL+lcYP5bqEUH/aSYYTN9
         CC235cQCECnlaA5/ttbmJegf5+0HhInjAJS7Pp+1z728rgoLPaCdWtccUvH/Co5WnNhL
         1DE92IzTqo3NfRFr/Y35aoshXxTwVzyxS3jMPlj0GEPH0xnW5obPFRk9bc+YlUyYhpAn
         bsy23fiKS/Pn/Z1TvoeDaQfoxJ0yAgxj3wkzBG4iibL9G/2tRnnopNJPEWzVA0KKCbsu
         tmPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=orH5c925kI2QXio3V0GtlnWCIS94BA2Hl2h6KbQ2R6o=;
        fh=Fg2OStx3+HzKc7Lm4zfAmaZ2buz7g4VDUhBaIjA+77g=;
        b=KHfIZe6bdJSlXheQc/dlm6I8bshsA0/VQmLGu1FgHdCmsD+FRmIWK2Clhr2RfBbROH
         hR62MZnKDU9f7RC8MsbNVMWAUr2eJbZ2JU/ldpdA28BT/B/BUcWtL0UIYXv8JFlzM0rn
         LBh206QakseE4g/CGx8Os1x66vmlZzNKbvO9aHX1L2vmtMSTPz5tiB5NOcqGb+VsvVvK
         g/xxKk9tTGTHlZF7j7yEktNX8Ca5ilKMS+rohYwzHjZCpyP+cZXaBuhfsLsNDNDTtc3T
         /BE+zhBEWvtCOPWaX3S0tIgrtq36Y4OyuEwUzEpks6WXUUORrzsqrhGXQsQB7JaxJgMg
         vr7A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=uorFDHRE;
       spf=none (google.com: batv+41f3ef30789274237cd7+7806+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+41f3ef30789274237cd7+7806+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736158035; x=1736762835; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=orH5c925kI2QXio3V0GtlnWCIS94BA2Hl2h6KbQ2R6o=;
        b=c6dvgCzBaJGigL949AWamdEyE5c+69bijf64XdikROcOXpIdjxMNrswmvNMdbOW5wg
         t4ss+YhsmRT2kTnS1b77yfICNArAZKIwXRetu+4gVUbq12YnCpu06aSKgQuNqnnN82R2
         VKsfOswFKI8zPFj8NcCnPazelFfut5babIz64=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736158035; x=1736762835;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=orH5c925kI2QXio3V0GtlnWCIS94BA2Hl2h6KbQ2R6o=;
        b=jXT9Er35k9J6OV7u8tmynWAy+mU+9PdTUm3MROpkD2UH5z144wX1TWfNeHWZtOYzIs
         k5bCkZ0q6i/SEpl3T57/ebwrVvnRu12+qgKrkD8P4e6g79R+9/uyz0F95+uB70Y2jJ31
         Nx+0F3t0o8ZLsNxBq/0tcLEQ24lNVfcHHpeACftlbfKw0O1g4po04UGI3gxzVXsQ6bf6
         2K+Skc3dObySfaQY9j4DtUmKPpBoCQu+SEnmSgbjpTbrz+T2TYYEH9KfnB/CVRPrlqnb
         CVvzOwZYshuVgh7Q8rgwOxX1ZFT9A1DjDBdaLRs+FtMJADUnzYMlp3jlVMNfqKcsoB2l
         Q7uQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWYo/hoA6b8fZ+0yRir3gubXBURMhTdbtCSoJkIdrdkvJnVk2sBT/AvMgU2vatwnVASN8ypSg==@lfdr.de
X-Gm-Message-State: AOJu0YzkIY1HKcN2SGJ9Ah9pnuGwbtz8w3G9zNo5Vi+UbVg+LwVGLuAA
	j3XezSb4d0oHl4bx/Hj4bi36YHoyGqk1labLtWaAJS2ve+gXFP4v+fGcvTNOKbY=
X-Google-Smtp-Source: AGHT+IGs/tuqW1/KBeSMjz8MWx7qqS+3xDKS2KRuPuQzYG+H3n/PhcLtWlTq8F88WuV/Y5v2+BUhSA==
X-Received: by 2002:a17:90a:e18b:b0:2ee:e18b:c1fa with SMTP id 98e67ed59e1d1-2f452ee6368mr76781670a91.28.1736158035400;
        Mon, 06 Jan 2025 02:07:15 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:1089:b0:2ef:ab41:6688 with SMTP id
 98e67ed59e1d1-2f4430c7be0ls112977a91.2.-pod-prod-09-us; Mon, 06 Jan 2025
 02:07:14 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWzduC1iUlBHNoXMmm6CgoE4hcjWjLORyHynXiOLYABXBFbpUgPqmOkWjwfh2tsCcbKGuyoBZoRdJNbUw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6a21:3985:b0:1e1:9662:a6f2 with SMTP id adf61e73a8af0-1e5e07f973dmr100923413637.35.1736158034149;
        Mon, 06 Jan 2025 02:07:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736158034; cv=none;
        d=google.com; s=arc-20240605;
        b=ll8yLb1rWGtsc7ToXtq/WIt3eyOihevpVGumqx0+UIIFT9U8xGS74roX8rDVn5QlEq
         rCZ4WeIE0+qQsrWTLB1xvBLo/RAeD4bvR27JMyy0wPEn7lYFihecjCvldva4D0pWaxyb
         JvjMlJbN5k9Kc9aX8jqQMklmTfMz/U/r1mf+HhhG4hhh0rH3yU5BRhqVbbl681/j7Akk
         WfT7krEskUgXVzEi+rkYy4NU0dhkhn5o2tQlpwwectNjH4DjAOFKHbxlmO65vJhQjcs2
         KQcbUZNMeAJkPo77Oyy9N1FPUVJqboy7UZz49Wat3qUgRprx4JweteoDdFRZNtkP3nDI
         lo8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=3euJA8Ns15KPhEkUiWNhzNcQI81/iMSrckSXcWqOPgE=;
        fh=lWd3gkC8mMNZNBBVD9g3TB40i3tO1HoQaqb3EWMImUw=;
        b=KyRHw7AgiO2Hm1Ap01YQG/3ed/PowpppVwpCRWGvuVE9BRBNH7b/hdBcG0MpXZsmAH
         OpHFEBF7VbyPI1tFss02T7WsUj4aBOIDYj4ELTt8FhpTr9lHwExQ73slKOl5FajQurbO
         gdUwQmCV0eZMeGMnns1asD7vc9i661NfigLjbqHgckBSQqR0OR3AHg+lKqG/sCTz7HQN
         LEGFylr3lJck62X3j99R+ZQUv2e3mogwCpq3gJvKxSe2nmaM3tApLSCuoAso3lxPjqxX
         WikAbLO+qBcyk9UvoBBb9UpG69BP8NIwjoWDLzmJpKlCEoSs2Wra5wcMaBvCHgVsqWPP
         dejg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=uorFDHRE;
       spf=none (google.com: batv+41f3ef30789274237cd7+7806+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+41f3ef30789274237cd7+7806+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id 41be03b00d2f7-842f0dbd3f7si43047806a12.498.2025.01.06.02.07.14
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jan 2025 02:07:14 -0800 (PST)
Received-SPF: none (google.com: batv+41f3ef30789274237cd7+7806+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-db6b-99e8-3feb-3b4e.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:db6b:99e8:3feb:3b4e] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98 #2 (Red Hat Linux))
	id 1tUk0t-00000000ng8-2TWU;
	Mon, 06 Jan 2025 10:07:12 +0000
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
Subject: [usb-storage] [PATCH 09/10] loop: document why loop_clear_limits
 updates queue limits without freezing
Date: Mon,  6 Jan 2025 11:06:22 +0100
Message-ID: <20250106100645.850445-10-hch@lst.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250106100645.850445-1-hch@lst.de>
References: <20250106100645.850445-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=uorFDHRE;
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

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/block/loop.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/block/loop.c b/drivers/block/loop.c
index 836a53eef4b4..84b007b9c38c 100644
--- a/drivers/block/loop.c
+++ b/drivers/block/loop.c
@@ -311,6 +311,13 @@ static void loop_clear_limits(struct loop_device *lo, int mode)
 		lim.discard_granularity = 0;
 	}
 
+	/*
+	 * XXX: this updates the queue limits without freezing the queue, which
+	 * is against the locking protocol and dangerous.  But we can't just
+	 * freeze the queue as we're inside the ->queue_rq method here.  So this
+	 * should move out into a workqueue unless we get the file operations to
+	 * advertise if they support specific fallocate operations.
+	 */
 	queue_limits_commit_update(lo->lo_queue, &lim);
 }
 
-- 
2.45.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250106100645.850445-10-hch%40lst.de.
