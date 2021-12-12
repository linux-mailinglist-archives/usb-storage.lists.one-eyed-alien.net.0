Return-Path: <usb-storage+bncBDE4FPUCVULRBRMK3GGQMGQECVWBRBQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc48.google.com (mail-oo1-xc48.google.com [IPv6:2607:f8b0:4864:20::c48])
	by mail.lfdr.de (Postfix) with ESMTPS id A7185471C5B
	for <lists+usb-storage@lfdr.de>; Sun, 12 Dec 2021 19:53:58 +0100 (CET)
Received: by mail-oo1-xc48.google.com with SMTP id i11-20020a4adf0b000000b002c6a9df15a0sf9492123oou.2
        for <lists+usb-storage@lfdr.de>; Sun, 12 Dec 2021 10:53:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1639335237; cv=pass;
        d=google.com; s=arc-20160816;
        b=k3qsKWw5Jg0cpkfh4WgJchx9iNpbhGhqiyhsYeDSIk8oEovPk9vrBZHfx4Jq2FHz/z
         Zb7iF37MjeODIjnH30Ut/0hVXdhsCTAScR7W47GMQKuzeMK8SpPmHEs+DY4L1CJI0HX4
         hISollrow/18oTV8LDFsE+umfr2vtT7+AJRPe3Z+0zGuWe2HlN9kQNt4DJ5p6B/AGgCL
         /022B7oP9xqkWUTzIcOJBtSx5kr0CDk/xVaufbrOT+pxI5Cl7Zu2Wsw4PcLdtV1aEXL9
         CdRbtYir2LYfzJn/8wcozmkcZCkxoFp/8UdfDrxqJS20lgKCOrH9UkyUIGQTKykFq0Ln
         A1eQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=bKp1Qt0a+Tw7yJpRaN0bWOYuhLsphkQOXjxKemymzgg=;
        b=UpPSzpWzbMhWIprrjQPJI6G/bNbDiKWBKlBS0dOjdj6+gT9RPbEomD074bNC8SUh88
         PnDpwolAC8stArlLMKKKXU5tmx6OXGeB+eqmeA9Pr5tpoSuFPuVwR5IlMe/EhVfL/b4i
         k09xTnScgywKZqJ+gdIRW58FozbE6HlQk4J0OoMVlFD4zNglBXs9Z7BFnlsbPHrdZ2WL
         6un+q3gnaa2gyPlfcv5Ud7fhnWkGFG2SZgVpPT4iHRcIwg0l2eNhwOhWY//VmDmsKmTY
         1WEP7Vie2KPsZiIhT4uh8g+HAeg8Fkbw+tpc8avntIrkk194BVQ1UwWHGB41EbGJHF+f
         v00Q==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=FAjhegj3;
       spf=pass (google.com: domain of gnurou@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gnurou@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bKp1Qt0a+Tw7yJpRaN0bWOYuhLsphkQOXjxKemymzgg=;
        b=jJOOH3qp28PZoDKFF+BYY+QT5mI0OHvQ7DCP0nf2IaAToycPYD35sgKcB6S46XWUu6
         viuRfP3bajYiF5SnvmAmFe0RjHHEDgHZ5Ov1J+hMZ8zimMuoKkFfSSZcCGbTe+6xrRrr
         diPMAim1lGV8HegbEh3LtHHMT+MXKy8WRnnFg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bKp1Qt0a+Tw7yJpRaN0bWOYuhLsphkQOXjxKemymzgg=;
        b=FLT0I86nyCPco3ERvEPV13tODfOx1thzgrYZQS8DibhW+6sBSF+l70Q8Wjkg2NWrLP
         Ac0MNSWwYTVHWt7mb9RN5J92eZQj84UA7eVAW0BiaciQRWBzE8KM3xWg+csQV2xi05Bn
         ZI+pIwaCpz+P2dySge734VpuhxdqvvUSGUOqB5X9CecACMIa1YQHWduCJx6mxTt0GsjI
         ut/ALEKmqjOflZjBF8K2RW/eazokfsxhybdml4uyOSqFYfNcY4gZ3tJvyXu8z11va+Bg
         +p+kr4sKqHaTaLvOJGrCx6Rvyqrydxf7BW2wfkn7k/eDb3cdgI/E1SFVK/6qckTi1GIg
         ZAdA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM533P0DqZZckZ9+CZWZjgsv8MxHt0aLt+OzIER2KI3uj2JSlzZV8U
	vUtr3mWvDVv+2pXqB3hkuIfjWQ==
X-Google-Smtp-Source: ABdhPJy6f/pJhEniOSDkjumYvD47Xy/+SMh0nutn5qjhh9hU8AjHB6oWpmkXtR+klnaaL9jAid+pNw==
X-Received: by 2002:a4a:d453:: with SMTP id p19mr16500658oos.85.1639335237263;
        Sun, 12 Dec 2021 10:53:57 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aca:3108:: with SMTP id x8ls4391351oix.11.gmail; Sun, 12 Dec
 2021 10:53:57 -0800 (PST)
X-Received: by 2002:a05:6808:16ac:: with SMTP id bb44mr23871548oib.122.1639335236987;
        Sun, 12 Dec 2021 10:53:56 -0800 (PST)
Received: by 2002:a05:6808:3c6:b0:2a8:655e:69a1 with SMTP id 5614622812f47-2c0984a1e68msb6e;
        Sun, 12 Dec 2021 03:55:33 -0800 (PST)
X-Received: by 2002:a17:90b:1b4d:: with SMTP id nv13mr37796716pjb.234.1639310133099;
        Sun, 12 Dec 2021 03:55:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1639310133; cv=none;
        d=google.com; s=arc-20160816;
        b=vZr4YoChjYoCE3YbGO+eYbRwZUM5x6ZY+qkOEHqsHnxNwDnK4hw5/ZhxD7g6wLs0LK
         ZDEHpWIyrC3eHh0uT76yOfQjhxAWV2RzbI18mLRE5yXOlSY3xTdzwDGhnixb5Rbqk553
         wr1VJLyzwa7k0KWonGbwgdp11aANGGevFx6XAMEDjTNiigtK4bqab4q0zVk8q/IZd1tU
         WUKG23imnxqWkHubseim+guyMlhzc2GHifs+d2YKFaFt0+qJ6eufp20wphBeF9SSHG/u
         hSYPpL8t/3F1P0lZENX0R/HiJPk4QzoBOhyg9Y+grUnv08BRlGRZxouMgii2N68AgyoZ
         pOnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=hX/ICKtr5gW8yVaOGnXk5ZnAIDwSq2paZmGCJ/xzR3o=;
        b=PqigXjMcdRjG2ZqGgvMvcVSrYzduB3mQAL4hCBF9KBRxySlQA/L/DFiVpewXC9UhuS
         vSZ0PZx65JJmjbi8Nap8nqQlS4PsUsZ9VvS0YX6cC7MGwLKGXla+bjoBciL6+s6SODhV
         ug3Yy+lwLkgzU8e0CZ2fG8khhevvjoRdgbbc+0r1vmi0rJ+r6fDL/H2jpc6tWl9FV4zM
         jhzeJT3i6Dnv0EI/t42QfvmxYtTmlmIWu2aCMahzD2vyzpFbHJ1aJQULzzOCZPFs4Sgb
         WiPGwEfHQGsg7WGnQCDo1ypz6xE9OFpIDdQzGhKWGrMCG2EA0P9BzZkODdtXdukhsKx3
         KIYA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=FAjhegj3;
       spf=pass (google.com: domain of gnurou@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gnurou@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id pg11sor1771990pjb.4.2021.12.12.03.55.33
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Sun, 12 Dec 2021 03:55:33 -0800 (PST)
Received-SPF: pass (google.com: domain of gnurou@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a17:90b:1e4f:: with SMTP id pi15mr37052454pjb.181.1639310132658;
        Sun, 12 Dec 2021 03:55:32 -0800 (PST)
Received: from localhost.localdomain ([240d:1a:8f0:6c00:89cb:88d1:b6b2:3345])
        by smtp.gmail.com with ESMTPSA id e14sm9909732pfv.18.2021.12.12.03.55.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Dec 2021 03:55:32 -0800 (PST)
From: Alexandre Courbot <gnurou@gmail.com>
To: Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org,
	Alexandre Courbot <gnurou@gmail.com>
Subject: [usb-storage] [PATCH] usb: storage: do not use UAS with Logitec LGB-4BNHUC
Date: Sun, 12 Dec 2021 20:55:06 +0900
Message-Id: <20211212115506.180629-1-gnurou@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Original-Sender: gnurou@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=FAjhegj3;       spf=pass
 (google.com: domain of gnurou@gmail.com designates 209.85.220.41 as permitted
 sender) smtp.mailfrom=gnurou@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
Content-Type: text/plain; charset="UTF-8"
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
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

This 4-drives USB 3.1 bay gets unhappy when used with UAS:

	sd 10:0:0:0: [sdb] tag#18 uas_eh_abort_handler 0 uas-tag 5 inflight: CMD IN
	sd 10:0:0:0: [sdb] tag#18 CDB: Read(16) 88 00 00 00 00 00 00 9d 42 30 00 00 04 00 00 00

It works perfectly fine as a regular mass-storage device, so prevent UAS
from being used with it.

Signed-off-by: Alexandre Courbot <gnurou@gmail.com>
---
 drivers/usb/storage/unusual_uas.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
index b34b858d82a6..9ef09cabef50 100644
--- a/drivers/usb/storage/unusual_uas.h
+++ b/drivers/usb/storage/unusual_uas.h
@@ -52,6 +52,12 @@ UNUSUAL_DEV(0x059f, 0x1061, 0x0000, 0x9999,
 		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
 		US_FL_NO_REPORT_OPCODES | US_FL_NO_SAME),
 
+UNUSUAL_DEV(0x0789, 0x0296, 0x0000, 0x9999,
+		"Logitec",
+		"LGB-4BNHUC",
+		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
+		US_FL_IGNORE_UAS),
+
 /*
  * Apricorn USB3 dongle sometimes returns "USBSUSBSUSBS" in response to SCSI
  * commands in UAS mode.  Observed with the 1.28 firmware; are there others?
-- 
2.34.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20211212115506.180629-1-gnurou%40gmail.com.
