Return-Path: <usb-storage+bncBD26DNHQRAJRB6WAXSMAMGQEWVSO6NA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1045.google.com (mail-pj1-x1045.google.com [IPv6:2607:f8b0:4864:20::1045])
	by mail.lfdr.de (Postfix) with ESMTPS id 14D0F5A7958
	for <lists+usb-storage@lfdr.de>; Wed, 31 Aug 2022 10:49:00 +0200 (CEST)
Received: by mail-pj1-x1045.google.com with SMTP id s3-20020a17090a5d0300b001fb3ac54a03sf5798250pji.2
        for <lists+usb-storage@lfdr.de>; Wed, 31 Aug 2022 01:49:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1661935738; cv=pass;
        d=google.com; s=arc-20160816;
        b=V9dS5iOh4bkWUlBsi+ViHb+PXBosDrZQ20UqfM014EOLoJ/3ZgCVEAliHJA9mWYn3P
         BG78Vm772FbPbTHXLrM/jCn5d1hHlZ+4IxBQZmAaYOWpmfyStH4Ev3o8QVDxOxCOhICz
         fRRJZdNQGGG2qP+XtTqBM+cauXEvPAIwJLwm72xed4xChwXuQPJhHMMEzErwQ6SEFYvB
         N2gHSf9OEDoLrYbzhVPD0GCvb+oTaZJl7lRlBjLVOT8njwMfhqK0zqwNTtRw2zzMe+a/
         pMxCFTCfjDHGYvig9jnCJKvLzgN21GIiAH4Xn0od3aywrvnJVFBTsC657+pG2tlstdO+
         OMCQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=Vgn1BIdXM5GivzgZNTdJhWHmhDfjTlFpxwn1P7uZp/M=;
        b=rYMXiAimTq+v+PRTpb98eg3kHlMtObR1OlKmV7GaSGGNHG0ArxeSEZqi2UTFrbLXCp
         IuaBnYiB+wSBfxTMDkSwO9YX4qXg2WRZxzq0sntrFmcPibnG6pJUDJLTJ078YgUTcrQw
         mWNLl3iv9CkZrlq8H6BLAaGgXoQdLJoidDk38UVtC5tsWlR5s6eh/owMf5SN4AV+vUNs
         2tEg6hI/8bjgbRE9Fhaf8x3jBTge45IBhmhCNeBSgA3hF04Ge1rplny3BTrnY7h886F+
         5tH+Fqe0qjNZDtEVwXIg7eeFbwUvLpfiaZr8WWC7g2NRU4Ug5Q0+tNyTutnNl9IZ8haz
         8gGg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@126.com header.s=s110527 header.b=OswrZWEG;
       spf=pass (google.com: domain of zhongling0719@126.com designates 123.126.96.5 as permitted sender) smtp.mailfrom=zhongling0719@126.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=126.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:message-id:date:subject:cc:to:from:mime-version
         :sender:from:to:cc;
        bh=Vgn1BIdXM5GivzgZNTdJhWHmhDfjTlFpxwn1P7uZp/M=;
        b=jnqAh10TfeinBPKrdCqylBKBuCYaZ+Yid/CV7m2UWjy9WC4A/nQ6YQjE5rumyVNAFJ
         wmsrs0Wqjv3t/ykd7t8oKeUmZ7uzGPMemjw5ED1hxKYnaX8nwEb+Uh7rrKh7JP4Nrnj6
         yezv+GqvRf+p3Dq9BVqmLHyS10kEBy5Y3yZ7c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:message-id:date
         :subject:cc:to:from:mime-version:x-gm-message-state:sender:from:to
         :cc;
        bh=Vgn1BIdXM5GivzgZNTdJhWHmhDfjTlFpxwn1P7uZp/M=;
        b=IuIUOhN2FFIwIsEbeLm3dgsFhdTqCUeaop9W1wobCIudKr+0074YY6mgORZAWD8P3d
         BEn1UgCAVA8PooAjFObptL42e9TqJyxNeyO3SdHVdEWGEz1j75ON6NelQsUo0XiFRzVR
         yaPKHvwZZT5Da+G+rUTPzH0zaUsOh+zFWGiaez+n21K/p+Fzg3FMq7uXWmpYw1DoM0gp
         xJnJJ+WDhpWNQW89HQbhxmBRYc7e8T3J73QNxSnhQxFIfcOqgMv2p9cZ1DvvtTNjuNBh
         p1+iPfdGPERcNDjMOKMaVaGbLx6eF1TGR15ucwWmlO72NsNS3gx1RxJM2TmTIF+RsgQv
         HmsA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo3JMTS4268cm9j7ztaKV09lCI8Xakis6toWJbJwNATSsc3kB73w
	BIcQoXs6UTWdYJXK/1qZPknoGA==
X-Google-Smtp-Source: AA6agR7beIvHFMHOdkvaShC4HTQehxkWuDKeLF03xFs3s8sQZPSACDiPsn7aiFVHJ33T0ok6Bu7Vcg==
X-Received: by 2002:a05:6a00:15d4:b0:53a:450a:f9bf with SMTP id o20-20020a056a0015d400b0053a450af9bfmr6641594pfu.75.1661935738696;
        Wed, 31 Aug 2022 01:48:58 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:903:120d:b0:16e:ebfe:70e9 with SMTP id
 l13-20020a170903120d00b0016eebfe70e9ls9204666plh.2.-pod-prod-gmail; Wed, 31
 Aug 2022 01:48:58 -0700 (PDT)
X-Received: by 2002:a17:902:6808:b0:174:617b:1147 with SMTP id h8-20020a170902680800b00174617b1147mr20747887plk.102.1661935737878;
        Wed, 31 Aug 2022 01:48:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1661935737; cv=none;
        d=google.com; s=arc-20160816;
        b=JvTPSFaclrbVZtK1MV8QjpM68sLmjVy4CpiTyaA99AksKXmQCTp5L/Em85MKVO+/4I
         4TKqqTKIns2Ft9uX73+uUCDpoC0unxjsjzVGx2QnapjF9EzvkroQB3VREvq/wmREKzBy
         49nHhPk00BJOM0RpfIpuq7rcuOJ5OQm/iRibtszB3OBT/w7HJ2g/IZk+CXyUh4hUONuk
         vGs7vZ1j6NorKNOVt3EnuYshJ5vCaJI7S6o8mOCufJ49pwOJzSdgdQkU0FDrt4qfD47R
         QjczhJlkno+awzHPA3uN/dlA8ssl1uDLrgplkNgXRN03c9jmYQGKlf20JHrUr1MO+IoY
         x+7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=KyHjyflu6G6jUTskLa9gYJ5xMoTWpbbJdvJwWlhUlFw=;
        b=aTAZTLdZ8IXPWGUJFfcyk3hel/TyXzlGDte4oS6xEkyopWwWSq8KVpyjpiRTKh5HJL
         8qLxGBUkIJUDHq/9A4Ga4asUUohW87KzeLxIZglcyKfzJF/1xsEYzHa6zbtRrBr0VTDj
         uhbxVb9pAiylTTqGxKlJkiWn7/4X5+pP5EL3+s974hzr7RLZFCuXSaxWh2lsepbHeMv9
         GO6f2fKDXtNWMEuBtRaLpXt5OJ5w462tUGzRAhJQuQK/FVmBuhwR5l94gHdrl7LpJ3G4
         kPv1KVSgX0zPMp2kPIalooRUyNhvVr/T/kv6Z/py38UQAeM8oMO6yIDEFOunxExZufgr
         XYNA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@126.com header.s=s110527 header.b=OswrZWEG;
       spf=pass (google.com: domain of zhongling0719@126.com designates 123.126.96.5 as permitted sender) smtp.mailfrom=zhongling0719@126.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=126.com
Received: from mail-m965.mail.126.com (mail-m965.mail.126.com. [123.126.96.5])
        by mx.google.com with ESMTP id k23-20020a6568d7000000b0042af21c5dd0si4657757pgt.7.2022.08.31.01.48.56
        for <usb-storage@lists.one-eyed-alien.net>;
        Wed, 31 Aug 2022 01:48:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of zhongling0719@126.com designates 123.126.96.5 as permitted sender) client-ip=123.126.96.5;
Received: from localhost.localdomain.localdomain (unknown [112.64.161.44])
	by smtp10 (Coremail) with SMTP id NuRpCgDXbu8MIA9jn3MEAg--.25954S2;
	Wed, 31 Aug 2022 16:47:09 +0800 (CST)
From: zenghongling <zhongling0719@126.com>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org
Cc: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	zhongling0719@126.com
Subject: [usb-storage] [PATCH v3] uas: add no-uas quirk for Thinkplus and
 Hiksemi usb-storage
Date: Wed, 31 Aug 2022 16:47:37 +0800
Message-Id: <1661935657-24710-1-git-send-email-zhongling0719@126.com>
X-Mailer: git-send-email 2.1.0
X-CM-TRANSID: NuRpCgDXbu8MIA9jn3MEAg--.25954S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7Zr48JrW7WF17urWfAw17trb_yoW8uF1xpF
	98WryfC397GF1SvrnIyr4UCryrtayvkF1kGay7Kw15Zw1rta1jgrnrZr4UWry7Cr13Ww40
	vFWqvrWxKFy5G3DanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x0ziZqXtUUUUU=
X-Originating-IP: [112.64.161.44]
X-CM-SenderInfo: x2kr0wpolqwiqxrzqiyswou0bp/1tbiLQ5u0FpD-YVNAAAAsx
X-Original-Sender: zhongling0719@126.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@126.com header.s=s110527 header.b=OswrZWEG;       spf=pass
 (google.com: domain of zhongling0719@126.com designates 123.126.96.5 as
 permitted sender) smtp.mailfrom=zhongling0719@126.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=126.com
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

The UAS mode of Thinkplus and Hiksemi is reported to fail to work on
several platforms with the following error message:

[   39.702439] xhci_hcd 0000:0c:00.3: ERROR Transfer event for disabled
               endpoint or incorrect stream ring
[   39.702442] xhci_hcd 0000:0c:00.3: @000000026c61f810 00000000 00000000
               1b000000 05038000

And when running iozone will disconnect from the USB controller, then after
re-connecting the device will be offlined and not working at all.

Signed-off-by: zenghongling <zhongling0719@126.com>
---
 drivers/usb/storage/unusual_uas.h | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
index cdff7dc..ddcdf1a 100644
--- a/drivers/usb/storage/unusual_uas.h
+++ b/drivers/usb/storage/unusual_uas.h
@@ -62,6 +62,12 @@ UNUSUAL_DEV(0x059f, 0x1061, 0x0000, 0x9999,
 		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
 		US_FL_IGNORE_UAS),
 
+UNUSUAL_DEV(0x090c, 0x2000, 0x0000, 0x9999,
+		"Hiksemi",
+		"External HDD",
+		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
+		US_FL_IGNORE_UAS),
+
 /*
  * Apricorn USB3 dongle sometimes returns "USBSUSBSUSBS" in response to SCSI
  * commands in UAS mode.  Observed with the 1.28 firmware; are there others?
@@ -142,6 +148,12 @@ UNUSUAL_DEV(0x0bc2, 0xab2a, 0x0000, 0x9999,
 		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
 		US_FL_NO_ATA_1X),
 
+UNUSUAL_DEV(0x0bda, 0x9210, 0x0000, 0x9999,
+		"Hiksemi",
+		"External HDD",
+		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
+		US_FL_IGNORE_UAS),
+
 /* Reported-by: Benjamin Tissoires <benjamin.tissoires@redhat.com> */
 UNUSUAL_DEV(0x13fd, 0x3940, 0x0000, 0x9999,
 		"Initio Corporation",
@@ -184,6 +196,12 @@ UNUSUAL_DEV(0x154b, 0xf00d, 0x0000, 0x9999,
 		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
 		US_FL_NO_ATA_1X),
 
+UNUSUAL_DEV(0x17ef, 0x3899, 0x0000, 0x9999,
+		"Thinkplus",
+		"External HDD",
+		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
+		US_FL_IGNORE_UAS),
+
 /* Reported-by: Hans de Goede <hdegoede@redhat.com> */
 UNUSUAL_DEV(0x2109, 0x0711, 0x0000, 0x9999,
 		"VIA",
-- 
2.1.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/1661935657-24710-1-git-send-email-zhongling0719%40126.com.
