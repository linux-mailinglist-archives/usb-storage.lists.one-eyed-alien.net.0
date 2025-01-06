Return-Path: <usb-storage+bncBDUNBGN3R4KRBUOW525QMGQEERYSRHQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x645.google.com (mail-pl1-x645.google.com [IPv6:2607:f8b0:4864:20::645])
	by mail.lfdr.de (Postfix) with ESMTPS id 1802AA0228D
	for <lists+usb-storage@lfdr.de>; Mon,  6 Jan 2025 11:07:15 +0100 (CET)
Received: by mail-pl1-x645.google.com with SMTP id d9443c01a7336-2161d5b3eb5sf174040455ad.3
        for <lists+usb-storage@lfdr.de>; Mon, 06 Jan 2025 02:07:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736158033; cv=pass;
        d=google.com; s=arc-20240605;
        b=a/WMU96Bqo9lGx7KpxbkUzfOhd3I7d4X8s1xM9CHs8BzoZBn8QlPg8WYB7I01cB0BO
         82wRaSqIf+bOuQgw9AOPBBTf0LQ+LO7KxBlsDDN6i8NtZE+4jYnWaOCVzofKc/2fb1du
         zy1AbH4WV02IxJPQVS9gYyI4AL1/cGb4Mnj1Lu8ZnCsBDKpvq2lzy8oX6vuZJeBDDGWn
         JgShE/hjplEFbBv/O0Yb9LVae4P8UR7zq3iQL/T6liisUfizFL+9RLpWjcXpwrQC0AJV
         JvXJIn52HzrLU1jJ1rpEiSZ8RAXnbynk5P0e9laG4vq+y/tESXVDKjCG4ZKHfuzfmG9e
         AxwA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=CqmsJ8PBTn/aKf6veYInbs5+UsZuAQeeI8W9fRuuSk0=;
        fh=3Ah6NKLdfG7+DTxNmK6p2FD26XACEibgJQDxh9XJRyk=;
        b=lPUVaiyZL20gB34zlt/zpCQ5TWkW6M/KxaCcoLLsuFo+vrm5a/JTO/HzQPr0w/ijEK
         iEspBzzhxtjAJhq8D17aj39B/nc4zOhpm88hCBCKFdu/sp6qh6s2bZ1xJGrnNNhFMHGE
         xvKgamt3NsO4duNk+/lomj7ovEAnjoOuUYqaI7Rpi5veijEdcrJ/Fbx6tU3hugk9bHUD
         Osb5HEOfZWjQCdU3hRi4vKpcYlnUraXKHu9Ky9uZZ/FHXBY1NWL4xV07mqAlzlC/vdl1
         M5xehSvUtbQ2duo+1J6ezcTfJyPi8L3EDwM3XB5QSoyW1IpWK+UdFTvvu6BXw21/VWlf
         B4sA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=krQfWTc6;
       spf=none (google.com: batv+41f3ef30789274237cd7+7806+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+41f3ef30789274237cd7+7806+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736158033; x=1736762833; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CqmsJ8PBTn/aKf6veYInbs5+UsZuAQeeI8W9fRuuSk0=;
        b=MuYc04Q3T5Hvp9GFFQ4QvKD2uPu7dHtjCQMJh7elTLxoIX9Z8nL44bZW5ZR1LBNgOf
         kFJkZ540V3khf3HGx7k57eVIYbwNmDaTqKEOKz0Tg3+HXC/GmZ6KQn8cegej2eUc6sMK
         2rptjL4y2kmcwp1ukDKlmMPNm5AFDX79r9XDM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736158033; x=1736762833;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CqmsJ8PBTn/aKf6veYInbs5+UsZuAQeeI8W9fRuuSk0=;
        b=a+4qb7conn7H91XnpIby1bUPcMMlUfelvG7yubjREzK89k5B6j5FzQu0Kg5NllI1TC
         Rm8IwOJe5a6oT+Ot8T43ezgrHMwsd1FqVE6fRYP9sKIUND3CVHlnqE9xFYl1vfpqnayX
         N+lYi3BH4LKLgL02bDyDVMX+H1VR+S7BB7T97wbB/FiVE8ROf7k2P7y7nu+vcFp4bGmS
         N7oO3WgklRiUCWN8CKZoFRJt3BnCZ82U5K28JgDg3HhwO0b48evQZnvp0hgOlaOzglxn
         yJjloXAHpmftjwfvVjLXJo0HLn25IJGUaI4StLNb1R4E/EtDd6OUGYZu8NrmI5GDcaSq
         IVqQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUara3LDlfBZr8VdboWogluKfuoncy8WoRJSXe3s4UroGjCTTNRgVBbLmQE1ySkHn1mYbatHQ==@lfdr.de
X-Gm-Message-State: AOJu0Yz6Et4le3f99MVr341WUhFXAcjbiknPUxxEF/U9UvVQdjhFBkRH
	Yq48LC4RXV2jY/pSxjmtdNdRkAm9B6kef/JM5uPip9uRF25e61sRpWBPeMr9pBM=
X-Google-Smtp-Source: AGHT+IG3ZiKoxiRLXuhK/qLnq7jw1J6+dPO0X9Fe7rG8TirJb1cvr3E/3D3g4kH/ffVam2e8AiUB0A==
X-Received: by 2002:a17:902:d4c4:b0:216:7cbf:951f with SMTP id d9443c01a7336-219e6ea195cmr794618145ad.21.1736158033472;
        Mon, 06 Jan 2025 02:07:13 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:dacd:b0:216:2e5b:45be with SMTP id
 d9443c01a7336-219d9fbe6e3ls66812765ad.2.-pod-prod-04-us; Mon, 06 Jan 2025
 02:07:12 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCX8F5VzyD+HbVp3GOa6q1HMizimPcIx+cm4et3jMP/V5ur4fAtw2hkPVZBKOUc3/gSH795QLZKHLE9voQ==@lists.one-eyed-alien.net
X-Received: by 2002:a17:902:eccc:b0:216:53fa:634f with SMTP id d9443c01a7336-219e6f27f90mr741036105ad.48.1736158032084;
        Mon, 06 Jan 2025 02:07:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736158032; cv=none;
        d=google.com; s=arc-20240605;
        b=fyzcuTkTSy91r1WSYlgKACX28DmkhHT4YjBjo61MOs3vN9t2fx0y7LjVlp/hFxRW5m
         ZxNh5Y0ATEknTYv57CimH9kdOZnNl5OwGlnpETFT4juBdyrOs2WOk9CoDa3SB+5u2k8P
         s0agAogReBAEmaekwkn2v3H3vqwkwNTO0orI9P8uRlv4nD8j83TGC4WEvuyHtJbhqoq+
         NjybXkAS5BntdwF8hKH0Xqmsl3B8SIusO2D5RvqWR+Aequ7ofWihGLt+JS7/BY+8vk5K
         k5nWw2qg6asYBeAQjmqe9jcGvDT2x5K2hHijNYPk6qot6pJcl9yqHCa4992yDB1NCEKq
         +sHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=JKSXgKPbc7+7uy5GODIswmTSRS81Ky42NLQWqgmNN6c=;
        fh=lWd3gkC8mMNZNBBVD9g3TB40i3tO1HoQaqb3EWMImUw=;
        b=V/zgIZIpAaPWITWE7EFP+et1I1xKFtuHTFZ0wR+o2JCv4q/Bf8wLyGSqfS4cG2rEB2
         5CbvWEtyP2gc7vdaRmi7wjsOdaFhvc2j6VxyrsWqDUqeYZR0LjHKR5ccuF+E+JWehQCO
         vv3Togkte07Flukw6FLdCSftMaZ1jxwh4Ze+aelQb4PV7p6SwOe2/EaBfdMG6GpKknw3
         J8Zwg/PsxtDPDhrE3mTjcevxyDyghF/w+QMXo0DJBT0Q1RheQCgamdwrwpYp86lf2U4+
         UznmkMm2O3qlaOLviWPq78MAbSf5KoXdAeukkGwCfkgJERj/840tYeio4o4wV+ky+w1S
         a47A==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=krQfWTc6;
       spf=none (google.com: batv+41f3ef30789274237cd7+7806+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+41f3ef30789274237cd7+7806+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id d9443c01a7336-219dc976ac4si332644025ad.2.2025.01.06.02.07.12
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jan 2025 02:07:12 -0800 (PST)
Received-SPF: none (google.com: batv+41f3ef30789274237cd7+7806+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-db6b-99e8-3feb-3b4e.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:db6b:99e8:3feb:3b4e] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98 #2 (Red Hat Linux))
	id 1tUk0o-00000000na9-2Rl6;
	Mon, 06 Jan 2025 10:07:07 +0000
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
Subject: [usb-storage] [PATCH 07/10] usb-storage: use queue_limits_commit_update_frozen
 in max_sectors_store
Date: Mon,  6 Jan 2025 11:06:20 +0100
Message-ID: <20250106100645.850445-8-hch@lst.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250106100645.850445-1-hch@lst.de>
References: <20250106100645.850445-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=krQfWTc6;
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

Use queue_limits_commit_update_frozen so that limits lock is taken
with the queue frozen.

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
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250106100645.850445-8-hch%40lst.de.
