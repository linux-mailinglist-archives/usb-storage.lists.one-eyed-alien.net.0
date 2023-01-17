Return-Path: <usb-storage+bncBDFKTTUNQMNRB3XXTCPAMGQE2VXTBAA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x648.google.com (mail-pl1-x648.google.com [IPv6:2607:f8b0:4864:20::648])
	by mail.lfdr.de (Postfix) with ESMTPS id 07D8D66D5ED
	for <lists+usb-storage@lfdr.de>; Tue, 17 Jan 2023 07:10:57 +0100 (CET)
Received: by mail-pl1-x648.google.com with SMTP id i16-20020a17090332d000b00194a7b146b2sf777606plr.20
        for <lists+usb-storage@lfdr.de>; Mon, 16 Jan 2023 22:10:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1673935855; cv=pass;
        d=google.com; s=arc-20160816;
        b=oTGNRxwXZ0nY9h6TEnAKX2oHgWwbLwsSwsq01iK0hOuuGW3j+wEyyxJuT7AnST88gc
         cmsPJ7KX6qJkD+BPdFWA0uWbu7OyODhw5yWzkHZLXRjm549g3q62O6tbbXcLdCMST9Aq
         zZOZG3YTsLZ/kYn24GIeUhRX2QMR4XMW3Li6VUEPWOE+1AYMqDuzLAgZGB3i5NY+2Q+d
         O41xsRJQtrofW1Bm1pouW9NimNAB5o9oO+51b55mkVLEM+i0s+XoCVPDkIHXhdpvARiH
         cQkLw/l3PDnXsPABwJBgxngbtqqI8LqshejmMMcqyrdJYi6rZ6Oi0Z/hYjtDwMVrhx50
         ssdA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=pILP9FHF6j0ghtbFQ7iH9CO6JZgYNMSnaZurDztU39U=;
        b=SKtj+k0lPDZP6g4fYUuOL0fBuZTX448RN4IVANidbZM0Mzhh0zWQa2q6dYLvn/Qh2L
         hVGVBrwU5mzrTrW8do4IKvg3wBT81kB43MHmP/ikqP+TQUvpUnCuI3wuCHK9738y6X3U
         i907mBAqTFBiWoEjBpn+qfaN9S+rOZBeqEqT9UlfPZrOjyS7la318MTjwKEMTZ35rqt5
         wDMoV9GbfdO4iY1MYMYrdJdv85XMdUPR9OKBjYBen4d/1SKb9BwuJ+ID39UeT8K3s+66
         obvp7Iok64yxy4myYxzpuKdS4et12wn6Ni8ho9YR/DlpGPUL02iIH7voIXR8Imxrflzi
         GM8g==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="T47i/krf";
       spf=pass (google.com: domain of qkrwngud825@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=qkrwngud825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=pILP9FHF6j0ghtbFQ7iH9CO6JZgYNMSnaZurDztU39U=;
        b=h0QkXCC8/RtEhbkUWUKjVG0ITUC45t/2NGD61jDTs/1D0ww6etlh08q11CwLRwpiWi
         WUathyUdMHSP5TWjnR7ySZmUH+0gP6nqbXWD9gvVKS/FSKZ2Ig9rToLrRgsk4ZrSz0Lr
         ZzPV25gIRk7mojg5BhYUF0rzzxIoZvbx49I0Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=pILP9FHF6j0ghtbFQ7iH9CO6JZgYNMSnaZurDztU39U=;
        b=pSqPEDLTQ6he4FtJZfZ3F7Q3cdwxh80pRBE4DUlFsIRJWkcsCn7LaLLS47/pvUH1l/
         HIJCsjGXYeMUi/Q8xtHP9K+JLGM888ygR4c/QRkaFudZJS3igC6gWU+qt1+JWVdfjdwJ
         nt/6MNh4qLbTK5DmSf3HqmAM7HFwjXb7cG18Ylpc57lJW4OckAF9ZzKTCXwnZs/jLJY5
         Zi9eSvSKfcKeuTX4jOi0Col0Y/+kwQKI8HGrJqUXIdkMKaErBb9Ak1b+/ezpSjxQ01wy
         pjdOg5TMAY51HhlHZ7gFBOmm3LaPC9/Y0bpS6kBwAh7LBfOiRgbGk9kES6OhCmNSjDl6
         1ztw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AFqh2krX5vABRuzh/qUudxlSvGgNJD+uU6Xcz/kwtMwoEol+10lhVIEo
	suic310rVm6JjTrEm3IMWjNaTg==
X-Google-Smtp-Source: AMrXdXvVv080xZPcCPptlU2i3YBw3Mw6lNlH4QWm5gEzE8tI059cPudRbfymNOxPshuQHhMUTGYGqg==
X-Received: by 2002:a05:6a00:44cb:b0:583:3d00:cb97 with SMTP id cv11-20020a056a0044cb00b005833d00cb97mr179303pfb.24.1673935855159;
        Mon, 16 Jan 2023 22:10:55 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:2f23:b0:214:246b:918a with SMTP id
 s32-20020a17090a2f2300b00214246b918als19022827pjd.2.-pod-canary-gmail; Mon,
 16 Jan 2023 22:10:54 -0800 (PST)
X-Received: by 2002:a17:902:c2d4:b0:193:d12:f892 with SMTP id c20-20020a170902c2d400b001930d12f892mr25939747pla.0.1673935854074;
        Mon, 16 Jan 2023 22:10:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1673935854; cv=none;
        d=google.com; s=arc-20160816;
        b=DXDV6610I/hCbg2oNrpD1T+bXv7PREIiSDj1jo8OKFJPWisIQBiLCF+5sjD+Bee9q2
         gQ/cjO37qNGmg2g93kYNmmquky5rmbHYqWHfcR1YcSyPkgaxHnjKiQk3mSzuy7X4SkP8
         MPOm9YhsBVqZSC5fL+74D3EOUslOR1ujor4pBSNpfXhC746glUVvTgDvArEMFQ6PWkeZ
         nwHP6If4lPlaO9sKJOJoc3Q3I2KWkTHx7Q77nm01CqmbvyfqmFfai/WTpARO8hSoGDp9
         V/1R48NA5Z2LxpvFLLYdvbx31kZUX8PowmBuQV4ONhNJRBrNz12VdsEgn1kDYTPAg+CF
         hcOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=4POQ/7RyVtitf5QxGrFAfHpoXo0SBtVp/9V8qpMpoDg=;
        b=wk2qEzFj3evdBqLZaOHhDeHBVQYLpc+4bNPx3hS6rSPp2Wd4zMqPzW0NE2tWW6xlEF
         JZQ4oWGqfZIKiWbI/1Ka+RF9gB4ZhOtVYvwYlN0JySlrD0txnG2aTNkJO73I8v3LCoBt
         Ix2llYpse1bT7EUR/12bSVdWJboyOUjGu516Cx3cR4J/tmY5eMnwPGXgbRv0KtHOviqR
         GYOJERGarVOafgDpcVUtRRGzPG+NMPL1y2Wr7TEUsDXClES9D8QFcatDT/1od8XuRm2j
         O097PoxFtPyognAMCU3ONd3xIsBpcu7cMTRbpiJmuI68jp0AE1dkMsHGNdXeVDz0ZaFw
         KoRA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="T47i/krf";
       spf=pass (google.com: domain of qkrwngud825@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=qkrwngud825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id h5-20020a170902f54500b001947ff466f7sor3189007plf.160.2023.01.16.22.10.54
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 16 Jan 2023 22:10:54 -0800 (PST)
Received-SPF: pass (google.com: domain of qkrwngud825@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a17:902:cf8e:b0:192:6464:f433 with SMTP id l14-20020a170902cf8e00b001926464f433mr26291443ply.1.1673935853637;
        Mon, 16 Jan 2023 22:10:53 -0800 (PST)
Received: from localhost.localdomain ([218.150.75.42])
        by smtp.gmail.com with ESMTPSA id u20-20020a170902e21400b0019311ec72e8sm4617287plb.253.2023.01.16.22.10.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Jan 2023 22:10:52 -0800 (PST)
From: Juhyung Park <qkrwngud825@gmail.com>
To: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	gregkh@linuxfoundation.org
Cc: stern@rowland.harvard.edu,
	zenghongling@kylinos.cn,
	zhongling0719@126.com,
	Juhyung Park <qkrwngud825@gmail.com>
Subject: [usb-storage] [PATCH] usb-storage: apply IGNORE_UAS only for HIKSEMI
 MD202 on RTL9210
Date: Tue, 17 Jan 2023 15:10:46 +0900
Message-Id: <20230117061046.114145-1-qkrwngud825@gmail.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
X-Original-Sender: qkrwngud825@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b="T47i/krf";       spf=pass
 (google.com: domain of qkrwngud825@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=qkrwngud825@gmail.com;       dmarc=pass
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

The commit e00b488e813f ("usb-storage: Add Hiksemi USB3-FW to IGNORE_UAS")
blacklists UAS for all of RTL9210 enclosures.

The RTL9210 controller was advertised with UAS since its release back in
2019 and was shipped with a lot of enclosure products with different
firmware combinations.

Blacklist UAS only for HIKSEMI MD202.

Fixes: e00b488e813f ("usb-storage: Add Hiksemi USB3-FW to IGNORE_UAS")
Cc: Alan Stern <stern@rowland.harvard.edu>
Cc: Hongling Zeng <zenghongling@kylinos.cn>
Signed-off-by: Juhyung Park <qkrwngud825@gmail.com>
---
 drivers/usb/storage/uas-detect.h  | 13 +++++++++++++
 drivers/usb/storage/unusual_uas.h |  7 -------
 2 files changed, 13 insertions(+), 7 deletions(-)

diff --git a/drivers/usb/storage/uas-detect.h b/drivers/usb/storage/uas-detect.h
index 3f720faa6f97..d73282c0ec50 100644
--- a/drivers/usb/storage/uas-detect.h
+++ b/drivers/usb/storage/uas-detect.h
@@ -116,6 +116,19 @@ static int uas_use_uas_driver(struct usb_interface *intf,
 	if (le16_to_cpu(udev->descriptor.idVendor) == 0x0bc2)
 		flags |= US_FL_NO_ATA_1X;
 
+	/*
+	 * RTL9210-based enclosure from HIKSEMI, MD202 reportedly have issues
+	 * with UAS.  This isn't distinguishable with just idVendor and
+	 * idProduct, use manufacturer and product too.
+	 *
+	 * Reported-by: Hongling Zeng <zenghongling@kylinos.cn>
+	 */
+	if (le16_to_cpu(udev->descriptor.idVendor) == 0x0bda &&
+			le16_to_cpu(udev->descriptor.idProduct) == 0x9210 &&
+			(udev->manufacturer && !strcmp(udev->manufacturer, "HIKSEMI")) &&
+			(udev->product && !strcmp(udev->product, "MD202")))
+		flags |= US_FL_IGNORE_UAS;
+
 	usb_stor_adjust_quirks(udev, &flags);
 
 	if (flags & US_FL_IGNORE_UAS) {
diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
index 251778d14e2d..c7b763d6d102 100644
--- a/drivers/usb/storage/unusual_uas.h
+++ b/drivers/usb/storage/unusual_uas.h
@@ -83,13 +83,6 @@ UNUSUAL_DEV(0x0bc2, 0x331a, 0x0000, 0x9999,
 		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
 		US_FL_NO_REPORT_LUNS),
 
-/* Reported-by: Hongling Zeng <zenghongling@kylinos.cn> */
-UNUSUAL_DEV(0x0bda, 0x9210, 0x0000, 0x9999,
-		"Hiksemi",
-		"External HDD",
-		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
-		US_FL_IGNORE_UAS),
-
 /* Reported-by: Benjamin Tissoires <benjamin.tissoires@redhat.com> */
 UNUSUAL_DEV(0x13fd, 0x3940, 0x0000, 0x9999,
 		"Initio Corporation",
-- 
2.39.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20230117061046.114145-1-qkrwngud825%40gmail.com.
