Return-Path: <usb-storage+bncBDUNBGN3R4KRBWMU6O5QMGQEZWAWFPQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x648.google.com (mail-pl1-x648.google.com [IPv6:2607:f8b0:4864:20::648])
	by mail.lfdr.de (Postfix) with ESMTPS id 56A21A037F0
	for <lists+usb-storage@lfdr.de>; Tue,  7 Jan 2025 07:31:55 +0100 (CET)
Received: by mail-pl1-x648.google.com with SMTP id d9443c01a7336-21655569152sf202507705ad.2
        for <lists+usb-storage@lfdr.de>; Mon, 06 Jan 2025 22:31:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736231514; cv=pass;
        d=google.com; s=arc-20240605;
        b=EFTswaEysSAHmAu0jGz5KvaodinxBx2CVWE96NaGCCcm8QOByJMBrXUWKjbFEet3/I
         ZQ3mu0SCBXOrpQKLN0YQN/ktQ0B6VxGApuGY32QKs519/mgmK/Rr3eerivln1OxR6pfn
         pWCVUwSxfiqBBWB1dcROzRQQjQkQRXzZQzkPQWbQ+Ggr6cbuBAw4Y7VPYWdvKO1yI+Gn
         TC/JwPc6g/QaAhsxZEGROvyBImhV95nHnNkwKE+A58nPsDv+O2MTDtsKMN0R9PK4xDip
         uuIPtfF1aycI5+/ZW0M4FvnwRdVTWhVmPl/hKBno4wAgmcaRS9nBoM0+bqccOInmcNco
         yJdw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=xcAfxhw9R8q//DY3x2cwaGzNAu3F+TFA4DKLKAwxGFE=;
        fh=11H9lEqeGYpgKKzAb4Cd4keGqamu55JBn5dPXO/Sa+E=;
        b=TmGX52sIOe+W1jmJ5Xdd22+uzzHyxAFXiC1mVcjs8J4opmzXyT0oeiJeYCtcg9v56u
         3QL8OARhARGZdN5051jFFnyed/z/Rx9YBHfbvYNYGrpVuaimSGvqvup3tbmy/vOFoKge
         xvAyViOjUReAv6EVqheALm6dknnbDCr2aEyiaeyH67lPJa9uQAZQHV0oGtnY6bGDslXX
         DH54+CMZIZluWoff1jF/Z3Pd3S6Xkz2j4x4sr3QPMiQFUUrQT3cxl0kd6Q5OY73dy9tB
         KjKNed4gP/w2ebaPn69FxSx+zrM381kj/5ZGZmvs9dKVmb37E2R3e5XCXALpR3iipUp3
         pbWw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=OXU130PL;
       spf=none (google.com: batv+ca79fa4415f544dfc9f5+7807+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+ca79fa4415f544dfc9f5+7807+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736231514; x=1736836314; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xcAfxhw9R8q//DY3x2cwaGzNAu3F+TFA4DKLKAwxGFE=;
        b=Zk9LXYT7JtiBWJWBYV5Dc+MPwzZFhY0i3Ro3Am36aEXcruXMVOLceItBoG43xAfwH9
         EIL+ba7+jdu2b4Q9aNwXcFfromDxWImQgwvDpy74sEG8uSzc4nOVDTHrOL2bdtPaKzYM
         AlowUv5p8CS8O1hYnG88memgWaRnAmc8Yh55Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736231514; x=1736836314;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xcAfxhw9R8q//DY3x2cwaGzNAu3F+TFA4DKLKAwxGFE=;
        b=pbSByXg+CSL87NWbC3zvhUFqGF5yjUtSKqc72/PI71deOdcJZA6VpGn+j2gkgEt4V4
         nvpPh91nC6ujSmyWbnl1YgZqG8x7XqHiRkCLlKJbml2uJXkmUSwEezbzsokjV/ehsGxf
         wXsBhvMwdD/fq4AHRToDyE4xL/9yWPwf8P9M81/Rk8oGhSzEhgoaHHSyMENBWsjGz3XD
         PAPLSQ0//UmIdCFvC7Mc5gQQHviVftFM5VZe1wrKNikJAzvBgS6PEBgVk5eNkKIvuAge
         SzF5M8yNG9pUF2XF4ZKNdMWxsNpfHOirokZTGibiJfkXa//bTl19ntFqDe0IlOhfidLY
         h5Tw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWm3SnzBbAGkbjIWQypCdRPhgUrv5vXLtnyRX7hYR8OMI4aJJvqStfL5JGXkwKKE3AmBSsqJA==@lfdr.de
X-Gm-Message-State: AOJu0Yz+g+NnmyQvqqAhhU9jLwxma9yh+fNzZwoA0UbtOyLPNzqF5CYA
	xKIV3Hlkqxf70icxJQkBBYoCWszPQuviasUAg3VRcRVuWwHoAncLGLdFB61Gz54=
X-Google-Smtp-Source: AGHT+IE1FKAfnu/p+Vfz9lJEabT+RB0DgY6ngf8VCoyhSm130YnKzo1/TsDFKyFCWVr7WD48izS2Jg==
X-Received: by 2002:a17:902:d502:b0:216:31c2:3db8 with SMTP id d9443c01a7336-219e70c01admr884442475ad.37.1736231513842;
        Mon, 06 Jan 2025 22:31:53 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:cf91:b0:2ef:8da3:a6a3 with SMTP id
 98e67ed59e1d1-2f4430bdee3ls10405764a91.1.-pod-prod-02-us; Mon, 06 Jan 2025
 22:31:52 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVogO7B3tVjkS8mLgVzYrZzDcwNq0pF2Zt+03OJXBD65QM0UIoHjPAe5nu9qw6temk5FMpBXk9ZL5GBzA==@lists.one-eyed-alien.net
X-Received: by 2002:a17:90b:3d50:b0:2ee:b4bf:2d06 with SMTP id 98e67ed59e1d1-2f452e458ccmr89833895a91.19.1736231512524;
        Mon, 06 Jan 2025 22:31:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736231512; cv=none;
        d=google.com; s=arc-20240605;
        b=EXLPQ8Z9MA6Z/lRJq2UrPHhH0eEVq1kXzEWx3pHesJVsGqd/l+rsavo5QM5XCkURTG
         Mi04tVRmpqW4JNBRzu5PK5syKBRZNt32Tu251vu5q4og4wP9i1I0LF8gbPd6ivOO/mjx
         ykMxIm073Ng00595lyPyWBb2TjNAo3LxBAS3X0zrWCBMihhWOQ65eiAlf0wxeXky9S8H
         s+0rk5mvSKDxnQwIJjDnC/OobDO3nGtrbn2TRFkZ0LOt5NYSZ+Qo+I5fh/LOFY4TpKwR
         cmM3bXe72K5Bs+VJ7oII7jUhqAYMBhcD4Pf2ELVJHSK52wclSQBpT2cLaPHSzGTF+NA+
         M6rQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=SAyM51ZMh2WQCIzVgXjOQiiOuyowXnbXZDM9r17qCgg=;
        fh=/IQ3556OhCBpzuvXgLE22Yzy616bQT8dDlkj0uCHKWQ=;
        b=NGx5I9kYSwiSqzEUMlTbAhAxRV1E2+cyU/SMDjfNFg5wqrXpNLYcwaTbYW3VxKgUE0
         DWEmNA3+MQFR4OEka6lpqDfKScgtSaivF7nK6g0cKVRcqXTqdzBJckdrmHo88EyIr/V8
         ZZMtyXNNWqm+oHvfwKxqVwJmNMqRTgZsJtRB0wpDJ3duxo2g3PTAFNkTz+U/OzVtYVK6
         IIZSDvje51/b6DfwUQCxCoZyW/QPsMFEVa1HFqf53z3wROwSq4G5yVSIOkCj+Nrn51Fe
         rvqcZALWvMP94T4qfDMQDWQAyEZPQztRKhRoQrl2E1LMNHqghNl7mVIZ36KlpP2T9TXt
         kVag==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=OXU130PL;
       spf=none (google.com: batv+ca79fa4415f544dfc9f5+7807+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+ca79fa4415f544dfc9f5+7807+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id 98e67ed59e1d1-2f53bbcfc54si1579776a91.83.2025.01.06.22.31.52
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jan 2025 22:31:52 -0800 (PST)
Received-SPF: none (google.com: batv+ca79fa4415f544dfc9f5+7807+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-d467-d75d-35bf-0eb6.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:d467:d75d:35bf:eb6] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98 #2 (Red Hat Linux))
	id 1tV37y-00000003e4Z-3ejf;
	Tue, 07 Jan 2025 06:31:47 +0000
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
Subject: [usb-storage] [PATCH 8/8] usb-storage:fix queue freeze vs limits lock order
Date: Tue,  7 Jan 2025 07:30:40 +0100
Message-ID: <20250107063120.1011593-9-hch@lst.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250107063120.1011593-1-hch@lst.de>
References: <20250107063120.1011593-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=OXU130PL;
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

Signed-off-by: Christoph Hellwig <hch@lst.de>
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
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250107063120.1011593-9-hch%40lst.de.
