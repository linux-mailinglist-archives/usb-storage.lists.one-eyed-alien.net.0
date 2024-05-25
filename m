Return-Path: <usb-storage+bncBC5J7HGFV4DBBZPCY6ZAMGQE464GFFA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1048.google.com (mail-pj1-x1048.google.com [IPv6:2607:f8b0:4864:20::1048])
	by mail.lfdr.de (Postfix) with ESMTPS id D325B8CEF3B
	for <lists+usb-storage@lfdr.de>; Sat, 25 May 2024 16:10:47 +0200 (CEST)
Received: by mail-pj1-x1048.google.com with SMTP id 98e67ed59e1d1-2bf5bba344fsf1815585a91.2
        for <lists+usb-storage@lfdr.de>; Sat, 25 May 2024 07:10:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1716646246; cv=pass;
        d=google.com; s=arc-20160816;
        b=NdJ3mIELexU6R/YXiSJUjqRQtq85YhyCsYQiMLjIDMo686EaI//Qt/eF+wa/5vx1bP
         Tltk8jvOMbLTU3k5znStNHifvqyFf1i8lDj/ZFh6jztD8UUmw2D1dKTK9wfpu4RUKbMl
         fz8MJ/VUTR4j5hhNfv/PxXZsuBOJ/XWU3htKH4db1uYIyPwMgqrrId0D6d7zBUCC05uC
         kTuD63DZ3Pl+f9Xr+WKG4JiA8FBts3j0/JBx0/8W5BqeYJMTQvKrSS3DOOhOqkL1rQx7
         27QlVZkQE8TlFSG4HKcRb5R1BMUuO5i9AZs65neHMC16IuRTcypy6/KFQfT7XR83PoyH
         X8sA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=3p33LhXifBe0VtJfDI0A8xI3cuEmZVMD1R6SkyGxeH0=;
        fh=5vtMjFIVl8EtvKKXkHxK4wPefucAS6d/9pQeQ+LeN+s=;
        b=F67JlV/0a9djpvEuyg6XHpIiXLxWeyEL6kOv6DYkyP7riTVIw23v+wz3HNHbgFY4Zd
         UUa7h4FidGWQSmHK9LB0qwfRmGoeQLVIp7Xv4lW5bCg7m3hHczQ5eHh8vCD4IpigZRm0
         oMd20SvZA4lKYFkTFyVylwd8P1v/30W55xLUq98L4v2YXuVpCremqhNzPiHFAdsWQ1FX
         cUX0DUNq9mvb0qgL39h3yULtcgbPE8TFvUJMoFgi//XOhZV2d7BKtcamd1VAj3g6shTj
         2NVe6Ro7MCVMt6rSa4qj/EVcB74pd3y3ug86ocsEDYfVzGT/H0/o/34LsW991xK+A78b
         TQqQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=m4NLcd7W;
       spf=pass (google.com: domain of shichaorai@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=shichaorai@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1716646246; x=1717251046; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=3p33LhXifBe0VtJfDI0A8xI3cuEmZVMD1R6SkyGxeH0=;
        b=Fs0zhzd9bmM9v+S/BEb+ctHV79Yk1gGnZDPgLNNAaNFle6mrvWiTnYiznbIxhi23i5
         bDPPpRFd5Ev6VzVbI3pUJWCvVv/VTD6kH5QeBuk3OavL2f9yZJ6eIGVI1dQ2ehj05HhQ
         ATp821liy2WdN0A1kBB8h50ktsX0GmWh57LB0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716646246; x=1717251046;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=3p33LhXifBe0VtJfDI0A8xI3cuEmZVMD1R6SkyGxeH0=;
        b=cKkkZLwU48Wi5IBHGurYrV+RTIE4pMHqQlnr54mGbhic3Ddxq9FdYdfBjopwBghTFE
         DoWfJl7SFWpRq4zj0351v3jDgpAayuXAu2Vzgt7n6UiEiqmFC2oMB0HwFqtx3ZlE70Ga
         dggENSlBcuisJhB5TGS7V3dkzaLILcPwlxXZ0WnBBUmu8VmPrKXurElwPUe6SGhhPjRA
         fqZOCG0mrMe+C43gEXzT056T0GE4KGK9cCwqzQoaPjh9K0RaAgi1pJRLjT0yvDyKRlxB
         xA+aiOpvKyYlAGK4FgufEbLvnOtePPz7Ls1nHSaj9B+gXiOWruiB/wjoxlUA0kruFEMn
         Dq1A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVXeKSb9tGw0941qAhdUKP/4W/hlJTq2yVz0rkFXhY3LlKPaVuxRbApq7FnrEshMdtHW7p0mxQsm4/QHJOhOnZkL8Stxh2+2wO5
X-Gm-Message-State: AOJu0YyG/IpAy1iOR61CrwWfqKHg7P5tea6Hxf5QE22K60RRG1cIUXvQ
	ErIzFgcQccyYL7BgSNmXjKuY9s+MT+b88ielEAWEJR3GnLw4RW2GusDSE5de5ig=
X-Google-Smtp-Source: AGHT+IHAz1nvDjZ+M8ZwaWpUoliB/dZIUo3XdAnBpqUSAkck7odYich5ZOCoIP/gjs0QH2hu61c69w==
X-Received: by 2002:a17:90b:917:b0:2bd:b3da:87d0 with SMTP id 98e67ed59e1d1-2bf5f4075dbmr4436049a91.41.1716646245980;
        Sat, 25 May 2024 07:10:45 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:2dce:b0:2a2:9d0f:c728 with SMTP id
 98e67ed59e1d1-2bf597d8a04ls1219859a91.2.-pod-prod-06-us; Sat, 25 May 2024
 07:10:45 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCX80rxmKGvZg9RwG7Omy/sI8tF6j4xhfxZaT1EtcutQN6pjdFQ9Gsww1BRBsilVBsUCEKX9vSD08QlbLQhgrcYNvZfbpSawTdKqr918xtEjZ9X1G1Q=
X-Received: by 2002:a17:90a:c7c8:b0:2bd:d6d1:c54a with SMTP id 98e67ed59e1d1-2bf5f4075cbmr4632988a91.40.1716646244635;
        Sat, 25 May 2024 07:10:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1716646244; cv=none;
        d=google.com; s=arc-20160816;
        b=JPSxMAlgyX7dP3QO6VG5xyWYhWVBNN7CBXFmODBK5sDbYAg4bZmz8L3G+VmRH+NhRz
         2Cc1W88BklZZop9hicRB8njWYGl1rotQpYfhYFlPoVIVYXPSFbBTQ5j1OYQqFCnTPIM8
         EOp7u8OngbSKx/vyYq88Fxpb5aCdFcBTn/ttmA9+hn+AzmVsLZd6XsjgQIiQifIXsjDB
         zXiw9tkXfLcfg8HU/AVjwM9cqSTXVkNYWvql/rX6MRp5zfAbeKWqgNeoy9uc8EjsqF0t
         EvnMu0mMIK/xrQejaoqbYj/I3/HcZFl2RYjZjSSSE+hwUnwLxOXVWA5Cq6t8PZXK/+HB
         pYDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=wldvmv7DWJTk5N8y48gKwHLB5rZ3GSfo3AcMZE5/l5w=;
        fh=aMNMsVTliTYRJumKIYKZG83rtftKtwZkR+6iNzqQU4E=;
        b=MAcrpLZpwoWLhoLzUxMAJndF2Ur6MHVl/IzSWdZfkMdnbrLqzzz7AXcS05g5FtdWlL
         5MKWdd200MAUWkaBxzMMGAzx6plJY6CGpsGsTgd/KBzjj7tVZK1bnf1M2iZYsdJRyib7
         BHsIWKEwFeAWjeY3J5dmJs0Ygrt9ldG5VpjBGBS4sn4b6axMp295NDzet+DePNzPvmxe
         d9NvDD4Ko3ZqXy/vD5gVG9jTI0j5otwnbdSelVybVzXAF3TzDBuFyVvEMY67HVfwGrNR
         PCCKldTsY36JpjoG/tipXpiU3vmi4BUUtWBYBc9yw7jAdcTGdyvawN+9zu9Cc0przpYz
         uTXQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=m4NLcd7W;
       spf=pass (google.com: domain of shichaorai@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=shichaorai@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id 98e67ed59e1d1-2bf5fe79981sor2101013a91.1.2024.05.25.07.10.44
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Sat, 25 May 2024 07:10:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of shichaorai@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCUcQhlEVgPDB/P1Fc4lU3lNeykiFF7ZfoF6NYM0RkJfzh0EgzMldRu3is7F7/LFoFAUsIzaUqgSMeBrSwuTDh0SzZLrUmetFx7Xun8q1Ca+2qGgPaI=
X-Received: by 2002:a17:90b:4393:b0:2bf:7ccb:b8c0 with SMTP id 98e67ed59e1d1-2bf7ccbbec5mr3416578a91.26.1716646244073;
        Sat, 25 May 2024 07:10:44 -0700 (PDT)
Received: from velvet.. ([111.42.148.111])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2bde078426bsm3404256a91.0.2024.05.25.07.10.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 May 2024 07:10:43 -0700 (PDT)
From: Shichao Lai <shichaorai@gmail.com>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org
Cc: oneukum@suse.com,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org,
	Shichao Lai <shichaorai@gmail.com>,
	xingwei lee <xrivendell7@gmail.com>,
	yue sun <samsun1006219@gmail.com>
Subject: [usb-storage] [PATCH v5] usb-storage: Check whether the media is
 initialized successfully
Date: Sat, 25 May 2024 22:10:20 +0800
Message-Id: <20240525141020.2520942-1-shichaorai@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Original-Sender: shichaorai@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=m4NLcd7W;       spf=pass
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

The member "uzonesize" of struct alauda_info will remain 0
if alauda_init_media() fails, potentially causing divide errors
in alauda_read_data() and alauda_write_lba().
- Add a member "media_initialized" to struct alauda_info.
- Change a condition in alauda_check_media() to ensure the
  first initialization.
- Add an error check for the return value of alauda_init_media().

Reported-by: xingwei lee <xrivendell7@gmail.com>
Reported-by: yue sun <samsun1006219@gmail.com>
Signed-off-by: Shichao Lai <shichaorai@gmail.com>
---
Changes since v1:
- Check the initialization of alauda_check_media()
  which is the root cause.

 drivers/usb/storage/alauda.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/storage/alauda.c b/drivers/usb/storage/alauda.c
index 115f05a6201a..40d34cc28344 100644
--- a/drivers/usb/storage/alauda.c
+++ b/drivers/usb/storage/alauda.c
@@ -105,6 +105,8 @@ struct alauda_info {
 	unsigned char sense_key;
 	unsigned long sense_asc;	/* additional sense code */
 	unsigned long sense_ascq;	/* additional sense code qualifier */
+
+	bool media_initialized;
 };
 
 #define short_pack(lsb,msb) ( ((u16)(lsb)) | ( ((u16)(msb))<<8 ) )
@@ -476,11 +478,12 @@ static int alauda_check_media(struct us_data *us)
 	}
 
 	/* Check for media change */
-	if (status[0] & 0x08) {
+	if (status[0] & 0x08 || !info->media_initialized) {
 		usb_stor_dbg(us, "Media change detected\n");
 		alauda_free_maps(&MEDIA_INFO(us));
-		alauda_init_media(us);
-
+		rc = alauda_init_media(us);
+		if (rc == USB_STOR_TRANSPORT_GOOD)
+			info->media_initialized = true;
 		info->sense_key = UNIT_ATTENTION;
 		info->sense_asc = 0x28;
 		info->sense_ascq = 0x00;
-- 
2.34.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240525141020.2520942-1-shichaorai%40gmail.com.
