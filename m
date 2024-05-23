Return-Path: <usb-storage+bncBC5J7HGFV4DBBPXTXSZAMGQE7CFX3QY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x647.google.com (mail-pl1-x647.google.com [IPv6:2607:f8b0:4864:20::647])
	by mail.lfdr.de (Postfix) with ESMTPS id 259CE8CD265
	for <lists+usb-storage@lfdr.de>; Thu, 23 May 2024 14:42:40 +0200 (CEST)
Received: by mail-pl1-x647.google.com with SMTP id d9443c01a7336-1f338ef348bsf328985ad.1
        for <lists+usb-storage@lfdr.de>; Thu, 23 May 2024 05:42:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1716468159; cv=pass;
        d=google.com; s=arc-20160816;
        b=iImgp8ifwqSbHmkT7UI7LZgNUww3mpt9o8OglwdxadKG6a7FjvqqfbFvR2oL6TOvge
         2May7ayDwG7E/kGJ8XxZEZCbT/MUZbv+tH0tm2nV6oj/hhiiPV7ZCRFjHesx/Xm9Y9Ei
         9I5vQIreK6Nw7w3K3Cdy1U8lt3Epji9GKoYz0m7WUKte3L5iZ4HBv1NUXtaeXb7/s33H
         61KjyPeS5A+++j09+kzQTcYPHl57CxeAHEZNxRdQ9h6MeWGrx0n6FSf2JIxecxGc5TMa
         +Oh4uIG+kg38Y49m9ubu4ToAJixhgdeLQyemu16zfVjtST+TGMIlP7Bzvd0TgFDlKvXN
         l/rg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=RSaNtCUF/toPRt9xW+3OUQ3LkuexkEikWGPxq8CNQTE=;
        fh=0vQbNw02Yni/u3k6bSG03gkP49KOOrcVzrh+R9D7le4=;
        b=BHXAFQf12S7ru49g1GgDgEWj0ABb1CGb8JGbNQElc/q89K/g4afTLj2aaKPjg1Td1n
         E8I/MX4lodvkEoWz9pbpFUqNVmCYb4XC5YFRgoXhugZEgX3Tmx8KuLT4XF7Q2YQUA3rj
         kDlDLjY7s5nmrcyj4F0wff2d96zFlGhvtjNJ4iiLOYemnlizrcn80/wfMxoJirOb8PFl
         prEZJwiHMeF4+nuO7FT7A8TEWW9xuwRinJTQv1jjgK53WxvgEJS7KvXoJ0JvxoDzQ/dl
         bIwv7PISIRnzfGgzY6Sx3Mu176W/lC/m72uQAksAidMgq+oRLXbLzO25Nt2LPOTXQfg1
         o4Ew==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=FaUtj8FF;
       spf=pass (google.com: domain of shichaorai@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=shichaorai@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1716468159; x=1717072959; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=RSaNtCUF/toPRt9xW+3OUQ3LkuexkEikWGPxq8CNQTE=;
        b=YRi9fm9mYOyVT5XX1JWW0fzDRgPALjbFR12ICIFxucQAfmL4nMYZdskrmGOq4uUcI9
         K8ZFFNWeXl9biL8pRmbGWlKwNWYf1BjTI+L6auQP4BqYhMqZD82r6xGLJoFGC+jLpJgm
         ffKCSjpUe5YRX8Md2bBEZkZTROLZ2qVB6H8HI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716468159; x=1717072959;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=RSaNtCUF/toPRt9xW+3OUQ3LkuexkEikWGPxq8CNQTE=;
        b=HkKCGhwlXsEZ6AHb7lB8yIOk7zw6dvkbKBP/HI2aHAi2f5VHcCfAooM73y/2LnUzJS
         Zzv3J0UXa9wHhM8O2eZoHuzwwqKMqFenA0L503/Bia5kpdk2YoktFe/L+Kdr0LrYqydq
         MVQsmB6NSc8PM9rXjhqBnfUiIr+wZj9KxP0nNVVDLIlw6QE65s9+q4C3Ya0x6kQMCKb/
         6KFT3xMNENHPG+6hyt3IfWfajf0jXSg7MlS3ylf/x4u0czUneFpqYzZqjNgcxwcMlWmm
         rHogthMzKmwBqMK/Rnj32NorWOf8JLAPd9ipK+NRnPneyYM0oG09mquJzu/6nRftO1dt
         4K6g==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUr8mkA7ZRQzBS7C0cEctkf0R7UkjGsx05COhb5ayQjCyuzsIvYAoFuPqT4sYAYC5dmw2yuYFOWzXMzK9WrKSr8y5Up/cKxD0kD
X-Gm-Message-State: AOJu0YzSLSXtW8Qb3xAeQXIrezkeQEJdNDyxdfG+6LLbH7ztDupzHzxn
	jVBDiTJtidNRUMnfcFgEy9VbGy6NzLAkm5GlB9+u3mOTo1hvOtdBVITpJGgjP7E=
X-Google-Smtp-Source: AGHT+IGwVozaMTjPhzGYMUaRH/QzALGo8yAL9DHv7SDlIw9qNUgmL0TL03IL7x8GAbpYt5EsE6IpJw==
X-Received: by 2002:a17:902:fc83:b0:1eb:5222:7b8e with SMTP id d9443c01a7336-1f339f0cfadmr25816085ad.17.1716468158602;
        Thu, 23 May 2024 05:42:38 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:e946:b0:1f3:bcb:c5ad with SMTP id
 d9443c01a7336-1f31c795e52ls15302325ad.1.-pod-prod-00-us; Thu, 23 May 2024
 05:42:37 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUs3+8+m9H3GtXK0boyW6L4uEOdLYBq3TbtnGbifezctL4jS9O1CV50Hgex98p/PBTNpST+XzwxKgQ6oFG6+NwliHWa11RLYnkLxkFRy+MmSJEflm4=
X-Received: by 2002:a17:902:c942:b0:1f3:830:783e with SMTP id d9443c01a7336-1f339f0d128mr30347575ad.20.1716468157464;
        Thu, 23 May 2024 05:42:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1716468157; cv=none;
        d=google.com; s=arc-20160816;
        b=BQHifLgbBFyEvffzPoWZEbdSU7PRADZr4/ursT4YYtT9xLcRmFMtnoJcD2WL9Tdq1r
         YmSg5f3aOYiTfMxpOJ617SmVNG9gXOwP8xmx6Er2f8i9L3YZ3GYrP8qfX3ZWlUgCGosY
         VTDNMkpkwCSAtPig8X/tcPWoPK1f/YpEJE9ORfjYqPPUKkFDD7EE7QORPT8i6dH8+0VN
         sJSoFClEtEL5KzImMHEj9QnNs21YhPLTh9YNoLhWtoXR3sFfnxqlH2ESaghStrnbh9wq
         Eb0/goDkS1sRR6hC/Gw5DImRsyOt32ORXzbesotvC5L99AkVgLIdCEU20m4Cuj2RAGrX
         rVfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=JbQU7x0E7jnDIOH/Jd+2ktPiOpulnhjgxogsGpGe1YM=;
        fh=jNqHE7q+ReIsrHlFb57lsu1wi2DIuUvKyGRRXHMAbrQ=;
        b=nqqEnrX1dglcZBYKAlDmxuAoOZUj/QTyax/mnfWf/juT+k1aMXCSaZBtD470dXCxz1
         Iasa7eCtXdln/xcQFsirL64xPQNard2pHADuIyOaTMi2/tlbK/XzWqMuJ92Bt35mQaN9
         5d4BMWUhTQZ6vUY3hhoL7SXSiOrdCPaoy1snMtBpHUf5AB7tJHOGIDgdx5LFk4FNOkij
         cDV3U5ZjXQ33aPLcrpfuvulPAa/ig/y2IENtZnZK8+pygwMybk3HvC2GcboImmbsx0B5
         tXxa1foWVCkokVSiiCz52MDez0ToH5mS9mNuFqQveEpySGKipBMqpC67Wtb2GISFRz9s
         A2Tg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=FaUtj8FF;
       spf=pass (google.com: domain of shichaorai@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=shichaorai@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id d9443c01a7336-1f338f1acebsor8570535ad.6.2024.05.23.05.42.37
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Thu, 23 May 2024 05:42:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of shichaorai@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCWtRi5Yl3UEs344nfpjBkyTN9wY0ttyPs2bbva8vUt2pmJNvHi5Xl5c6c3Ha1fRkk1//+cXdsV8pIsNaHm3S2S94e6LUdd+g9iMzKYkV9RpHP41LQI=
X-Received: by 2002:a17:902:f550:b0:1f2:f9c1:770b with SMTP id d9443c01a7336-1f339f0bc9amr34931695ad.15.1716468156978;
        Thu, 23 May 2024 05:42:36 -0700 (PDT)
Received: from velvet.. ([111.42.148.111])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1ef0b1b1d13sm255739035ad.0.2024.05.23.05.42.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 May 2024 05:42:36 -0700 (PDT)
From: Shichao Lai <shichaorai@gmail.com>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org,
	oneukum@suse.com
Cc: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org,
	Shichao Lai <shichaorai@gmail.com>,
	xingwei lee <xrivendell7@gmail.com>,
	yue sun <samsun1006219@gmail.com>
Subject: [usb-storage] [PATCH v3] usb-storage: Check whether divisors are non-zero
Date: Thu, 23 May 2024 20:42:23 +0800
Message-Id: <20240523124223.1035964-1-shichaorai@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Original-Sender: shichaorai@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=FaUtj8FF;       spf=pass
 (google.com: domain of shichaorai@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=shichaorai@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Since uzonesize may be zero, so checks for non-zero
are necessary in two places of alauda.c.

Reported-by: xingwei lee <xrivendell7@gmail.com>
Reported-by: yue sun <samsun1006219@gmail.com>
Signed-off-by: Shichao Lai <shichaorai@gmail.com>
---
Changes since v1:
- Add one more check in alauda_write_lba().
- Move check ahead of loop in alauda_read_data().
- Change the order of variable list in alauda_write_lba().

 drivers/usb/storage/alauda.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/storage/alauda.c b/drivers/usb/storage/alauda.c
index 115f05a6201a..ebef1a8a7ca4 100644
--- a/drivers/usb/storage/alauda.c
+++ b/drivers/usb/storage/alauda.c
@@ -816,8 +816,10 @@ static int alauda_write_lba(struct us_data *us, u16 lba,
 	unsigned int zonesize = MEDIA_INFO(us).zonesize;
 	unsigned int pagesize = MEDIA_INFO(us).pagesize;
 	unsigned int blocksize = MEDIA_INFO(us).blocksize;
-	unsigned int lba_offset = lba % uzonesize;
 	unsigned int new_pba_offset;
+	if (!uzonesize)
+		return USB_STOR_TRANSPORT_ERROR;
+	unsigned int lba_offset = lba % uzonesize;
 	unsigned int zone = lba / uzonesize;
 
 	alauda_ensure_map_for_zone(us, zone);
@@ -923,6 +925,8 @@ static int alauda_read_data(struct us_data *us, unsigned long address,
 	unsigned int uzonesize = MEDIA_INFO(us).uzonesize;
 	struct scatterlist *sg;
 	int result;
+	if (!uzonesize)
+		return USB_STOR_TRANSPORT_ERROR;
 
 	/*
 	 * Since we only read in one block at a time, we have to create
-- 
2.34.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240523124223.1035964-1-shichaorai%40gmail.com.
