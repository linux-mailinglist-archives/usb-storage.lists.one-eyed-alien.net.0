Return-Path: <usb-storage+bncBDUNBGN3R4KRBJMJ7G5QMGQEDPM3PHY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1045.google.com (mail-pj1-x1045.google.com [IPv6:2607:f8b0:4864:20::1045])
	by mail.lfdr.de (Postfix) with ESMTPS id 99FCAA056B7
	for <lists+usb-storage@lfdr.de>; Wed,  8 Jan 2025 10:25:59 +0100 (CET)
Received: by mail-pj1-x1045.google.com with SMTP id 98e67ed59e1d1-2ef9204f898sf23833832a91.2
        for <lists+usb-storage@lfdr.de>; Wed, 08 Jan 2025 01:25:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736328358; cv=pass;
        d=google.com; s=arc-20240605;
        b=aI1TFnNB9818Jva14ABa37x48ovab+C3NLFIcevuZRPvjXAlNP6JQMghO0pAJ9841o
         zv7xu+ExwtHZj6LcirXd9J0Pg0mbJLOl1qlPpz2yyyJ0gEedD/PPPDaMRVKQ4qs4C43u
         ipsyQ5Pd1wRvZaIqKwulE+Oods+c0JL17DgM8eWNHovafdLiEBjJ+tNTcpdZ4V6MFwJc
         icZLsRUf0slxPhMCDdSZDLEzTI8O0Br7XyW4eG3fOYMWwLnOlPKqjvDCkcvZuI/JsaAS
         X77hZ3xiXCS2n2vG9sHKynfqDeOpw8JWDdgICsZ5DKHcJKn3x2A+svN1obpuJhl2uiBs
         1PJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=MyrCQc4gOco/6Q/qmzTuC30PCOMOGbinTnqczC8k8JA=;
        fh=5UMNWufmaIpap5Ozo/pdEvDhDdhpcyve/f5kpy9kP58=;
        b=diveJvr7dk/aH3fc8WdZBQ5tOijuMOAukuhkOzT6c49HpRWZXr9b17iWP166RLfxwy
         pyI0JLMjzLjhSAOHEmHqKenJ1DaR3pXEPy9w0aEJddrOxf6sp+xH95593amUllzDhXp5
         HtRZryJe1h9JwOBXxuRbi+JdNfTCsiGQnT3FtLbLD9IvlqgesCT7ccObx9f+H5e2iHnN
         CVIVK2MksEB+fYvwPgmHY/I26vm3AsRhLVnGdlRL2Lw6HTng2QK5Kt5p50NG5rSkk9Oz
         7AxxZ7NlVMOxgGlngJ6VW3PNevPMdzYwx3wbGdCzDB4WnEn7roh1zpPNFpA5frZAvWDZ
         LPEA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=Kf2YDd2p;
       spf=none (google.com: batv+9e166f3f48dee24ac321+7808+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9e166f3f48dee24ac321+7808+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736328358; x=1736933158; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MyrCQc4gOco/6Q/qmzTuC30PCOMOGbinTnqczC8k8JA=;
        b=IPB6nMd3y9JlxrEgnoK9sC/RTZ9qkRyF5c0vNfBEk9n3A5ecunNCE2fmCy7/W80Yy+
         kmoFx+pkO3VLAEb8Ro+eW0zz9rlrrOe+AOgKf5XOzMu6M54oRUTabNWFPLUF5jP3LsC+
         bEAX6xq6t6/2VFQCyzSU5MwUPrskpibEXE5pU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736328358; x=1736933158;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MyrCQc4gOco/6Q/qmzTuC30PCOMOGbinTnqczC8k8JA=;
        b=OAmfYRyd3doCixu6Ww1njmXNmFkgYTdVkk5BMCFSHnV4xR2+hCwpH/QkctmF5wsB8Y
         LBSfgXAwsHMT9slM4TpTXcLS/kR6Y/zNLKtEv8bSluKoZN5JSMPZE00eOnA7Y+l4Bsrv
         Y3Vdj329KaWUKX3lpS4dPyrBzYcQpz2QGi/MXqbLnF+OnrcOhHlJJwOso1w/UGbNCeOk
         /Do46zNXbSO6OVmoqOaoLrleO+auJriWxBBdYGSJ6HYai8zJA77ruwQZoRlEElrlQhQW
         FS3U6kq0LBvITFIP8Eg2TevUf5gbEkIF/RuydgmcN37X2DetUe4INJ1bikWgThOJp+CL
         udWA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUwak3aoO0zTPOOpTrqDPcFmyMTfgBxAsT4HjUkt5hh1yOTnwsxctp9rUHKBu18XM7mKtAGRA==@lfdr.de
X-Gm-Message-State: AOJu0YzjZHe0wbSYXfTDiAScvPKyrH+MvTqRyam6FhdXfWqDVxi9FM5r
	fnciszWwtp99A0Q/B3LYeAHleHN4QGH7+2Li0ayx4ySJhCxGwDgEaa2xnNKWOLE=
X-Google-Smtp-Source: AGHT+IHxNBWmXLFv7jdrGaypOY7BobnInv3vGY2y2XOFiytFqG1dxMndPowKDdWIpT3LEjLIBCnpmA==
X-Received: by 2002:a17:90b:51cb:b0:2ef:3192:d280 with SMTP id 98e67ed59e1d1-2f548f162acmr3264462a91.5.1736328358191;
        Wed, 08 Jan 2025 01:25:58 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:903:320e:b0:215:7e7:5e20 with SMTP id
 d9443c01a7336-219d9f11bfels122439525ad.0.-pod-prod-02-us; Wed, 08 Jan 2025
 01:25:57 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUZvfubb5TgVAutbNUBmYKdySa5xewdeq8At5qqHwti2mSfifE5sLKqUmariix11s3LWUGxQkFFaaBl9A==@lists.one-eyed-alien.net
X-Received: by 2002:a17:902:ccc2:b0:216:4165:c05e with SMTP id d9443c01a7336-21a83f67982mr39388485ad.24.1736328356958;
        Wed, 08 Jan 2025 01:25:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736328356; cv=none;
        d=google.com; s=arc-20240605;
        b=fvw6PDwmw0Vp/SC1GhUnfUw8m4NEVySmdHypwlwdZG8cZXpX5mz/TJixSzOsj8gYTt
         NjGB/NrnwREHdvPiTg7gY+4vUUQfDPu3jrRbAVz+oDiFjG+RC5vhsCu61BAlz3dyRm3O
         F+iP69jyTBgWTDxBHPZHY1HU+y66L60g1bEJAmkXLjOzXMa7buUnUlth0OjmIrqENIsN
         ir/cplGBViMBZTQ0K/UEXiVX8Gw3c6FJjKp6UVZDZw8ooX+Pegp8t1JkwdoP4zjI3ti4
         IKzAw00+xhiUJv4CA0O+p2/58S7orHFaEuMIJiNKnst6JDZ3SpU6wu7CQvISLfA5UqZW
         dIQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Lug37ajQYtt59Z/r/F/B4vY/gKTqUzDHZjrP0BSUXyA=;
        fh=/IQ3556OhCBpzuvXgLE22Yzy616bQT8dDlkj0uCHKWQ=;
        b=X3TIXfxfW9BukjD2t3ak258FVMotPg3Chmm5dZUhaihmXwZeLrzi8MrhdXLG48oN24
         aTyH5N8J92a4ryjntG1gaP8b59f1Qwy7a2BcOX2FsQ6zQgMsKnyi8TYNdApvfs96TjPZ
         WFJQQaso9vjS4uqqESvgvJPw4ibKEM7OooTcXY+MLCGhnw1hTZsL3hL4wOK8g/BL0PmL
         8Y1beak/bZP/9kxMMEcSRE2FRmf6Ctn933idsa1KQFbAkWEVoc7GGHLka+8CFk2L039q
         CywoXWnOMrI8gfWe2SukU/vmOpyELCSptBK4ue6W23+CX4XpWMX1uIzaypohua7IVQ1K
         36OA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=Kf2YDd2p;
       spf=none (google.com: batv+9e166f3f48dee24ac321+7808+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9e166f3f48dee24ac321+7808+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id 98e67ed59e1d1-2f54a2d9e04si1308731a91.100.2025.01.08.01.25.56
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 01:25:56 -0800 (PST)
Received-SPF: none (google.com: batv+9e166f3f48dee24ac321+7808+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-e44b-b36a-6403-8f06.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:e44b:b36a:6403:8f06] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98 #2 (Red Hat Linux))
	id 1tVSK0-00000007lle-10Jo;
	Wed, 08 Jan 2025 09:25:54 +0000
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
Subject: [usb-storage] [PATCH 08/10] usb-storage: fix queue freeze vs limits
 lock order
Date: Wed,  8 Jan 2025 10:25:05 +0100
Message-ID: <20250108092520.1325324-9-hch@lst.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250108092520.1325324-1-hch@lst.de>
References: <20250108092520.1325324-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=Kf2YDd2p;
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

Match the locking order used by the core block code by only freezing
the queue after taking the limits lock using the
queue_limits_commit_update_frozen helper.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
Reviewed-by: Nilay Shroff <nilay@linux.ibm.com>
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
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250108092520.1325324-9-hch%40lst.de.
