Return-Path: <usb-storage+bncBDMYPB44VAFRB2XLZDVQKGQEML5Z2BI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yw1-xc48.google.com (mail-yw1-xc48.google.com [IPv6:2607:f8b0:4864:20::c48])
	by mail.lfdr.de (Postfix) with ESMTPS id E97A9AB5E3
	for <lists+usb-storage@lfdr.de>; Fri,  6 Sep 2019 12:33:15 +0200 (CEST)
Received: by mail-yw1-xc48.google.com with SMTP id l63sf4166503ywg.21
        for <lists+usb-storage@lfdr.de>; Fri, 06 Sep 2019 03:33:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567765995; cv=pass;
        d=google.com; s=arc-20160816;
        b=0c55uLCyGRiwOBdhbTyWuv+toymaNytWguE8jSVeJZ8+P/alsNSlbkxI/nZ6v0aamx
         dOKaNxiuOq8Z+KeL0QxKF7hfJHAS5teUThbg0wst/8cn/YuEpm6C/VTeqSERSPakulNd
         aqETCS85gGm713WAf/SeU76QDumh0Ha9d8NojrtOgIofQykFUIfrLPSYa1z9pNLeu8RW
         7f8RWExevCR1uKjDb3iR6u4ivbi8eki/gw4+x45uPKC/VsdkCdsNADnc9o//PtfMu+Gt
         2X+Qz+VUK6ft8Xbfn6TTHcjMD61hMVmEF0hNfih3K2KkgS8e2o1bVbtOZtQnwbCF6/C+
         8bVw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=lE/ukwN21phK1JIg1zM64rni7TNK+FY+8JBoOOccePU=;
        b=sgjQL0weCX4FgolTrIOtxek0owyk6hWvVfV4Mi+2Cuk6hFwBjoMVh3akBduhZnc9Jv
         OSKTiMr/Wtim9Vm15L41uBw+DmSbSlKM/o9h2zIyz47TTm2xsktfA664HgmjRu6zxZCA
         /RQDa4AUpjv/DNxEPUHn+hen5FJ5LVnJabrsApBQF3qBeYxaKA6aV2WOv75K0Ll8kgaz
         n8FiPuP6vwdizS2YjuOfksqn3hSvTLsrJrMm8Le3rM/znBrvf0UXJwEHQqIV3M1NXQd8
         MaE0IU3r2Rf28dcjSO5G9Bc/IaaCJiz3msHR38dS7v4xNPowpBT8LJUckPlK+OpdCdtR
         nJ1Q==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=G59EfYtd;
       spf=pass (google.com: domain of 36jvyxqgkabe3rv44ztyx55x2v.t53@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=36jVyXQgKABE3rv44ztyx55x2v.t53@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=lE/ukwN21phK1JIg1zM64rni7TNK+FY+8JBoOOccePU=;
        b=S8Ap72FxgjL4PDFtl5hzwkZBrIAt5xbCOBl/7Ytlp2Xn1BIX4jUYz+uQ6lk0RMbNit
         aV1M2XWGr2RGs/DewVwGpmQdCvP3ajeLWUUCzZM6HgNG9m6VaAWUU7dhFsiXwZW+sPWM
         hO9b0x8tnS8RW8Ko7BrA82jPGTINMVufEEoPc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lE/ukwN21phK1JIg1zM64rni7TNK+FY+8JBoOOccePU=;
        b=nM1Ji7UbqOf1f5i97ugejT8YxcwK8T6iutaS6sJ1ziCz/D3VCW282b2/QzgqkEZg2I
         z+gvFEciqGPjV1E9ECEmSb9NTswvOOOonHibCbyGsc9CqC1Jo7BsCDZ+M1DCXaSepqEK
         htIXFzSALk9zcqO0ZCDJ2DyaZx4YVK3Nzc6FGMQxwV+Tr7ky1hSf8j7S7SvIAGuJ/HVb
         UWNtXdpQL1ZCblSVyFuELCRN+wNh7R21eZylsGI+cJeveA/EI4MjBMOSkxVeevs2KrIB
         n2JH/bBvg9ybw7QAqmc3TdsXQtCQ8kyhA8mjKA6E9PjhPvr8SjkcvsbyxU7hUptZk/Ve
         zIXA==
X-Gm-Message-State: APjAAAXTjS0dPQRjwRw5PT6jFBRgA50Kt02eivZnHPyh5UwTHmSI6Hl2
	BT339lHT9V9niEG7m79Zfpd2gw==
X-Google-Smtp-Source: APXvYqzRvAOVH5MlY5bFYyi4x8S6fQveGy/QwP7El0XmNwnlDFpzE7+jsEBmHztsusGME54VjAaYdg==
X-Received: by 2002:a25:a08b:: with SMTP id y11mr5479593ybh.216.1567765994830;
        Fri, 06 Sep 2019 03:33:14 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a0d:e64a:: with SMTP id p71ls864350ywe.11.gmail; Fri, 06 Sep
 2019 03:33:14 -0700 (PDT)
X-Received: by 2002:a0d:df4e:: with SMTP id i75mr6167996ywe.483.1567765994483;
        Fri, 06 Sep 2019 03:33:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567765994; cv=none;
        d=google.com; s=arc-20160816;
        b=iBReGNSw5v4mf4XjvMdx37aUWhzqKXTCTn4LW1BHrYc2fIp8vO5/9ggjNUH1hffo8e
         yzXC1L3g7a/6Y+15fpeeYO4LTeHIVu2nu9/9OlgNvn7u4ecGZ+1tYCM+Ys0rJU24gsro
         R4ZAssXhNXYQH8kyVMp4poJ6zmWp7cXocv+akn/emRkq2qQ2wx+uGkHPg/NNTP2tzrzl
         /aE9qFSve8Ap0rjyMU9dehaFLVaFW7tEgUs8U4Xc72mHMZ4yWo0EXN6ghBvQe2LYBDqE
         cQY1KQqH2hNHF++RIG0PfXYD1YlOhbL2CY5csXNRNVteVyet80mB0xmEOXrS1z0MDW7v
         q3tQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:from:subject:references
         :mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=u5uO9nHL9grY4Qf1Kv34RIYuP69k6hUWKvOump+fF1c=;
        b=bO3LL05/EwnzzoJAbePqHvD4LFDMIyZD4inaER/GTKZiJ1ks8M+N0gld2Uhs8HQ9Fv
         7pYkn4H+sTa8XYZrTzetdnZ0WtXGnBYa12S+3b43SQ7c6cYwE4T/TK56sw7dNTBM900A
         YclFe7c7Qhc8IOlLF4dJEPONMDT4GYYxVCNXGSwFsxuPsNduKBM6KSEDn/rvKiK1msdG
         DdCNFp5IudCW11fnqjpslRMyGz0ktFZsOWXeXWI4aVvo/B1qpbeVjwPwUQi4iEVNKUtV
         SPB2WTDdSWKA2iEIAclth7Ws4xQI4b5z5epszYCSY6tpf/52xozdPaP4aTZpFy1bVv7k
         LQNQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=G59EfYtd;
       spf=pass (google.com: domain of 36jvyxqgkabe3rv44ztyx55x2v.t53@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=36jVyXQgKABE3rv44ztyx55x2v.t53@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f73.google.com (mail-sor-f73.google.com. [209.85.220.73])
        by mx.google.com with SMTPS id 15sor3120018ybn.86.2019.09.06.03.33.14
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Fri, 06 Sep 2019 03:33:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of 36jvyxqgkabe3rv44ztyx55x2v.t53@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) client-ip=209.85.220.73;
X-Received: by 2002:a25:a2ca:: with SMTP id c10mr6036260ybn.70.1567765994055;
 Fri, 06 Sep 2019 03:33:14 -0700 (PDT)
Date: Fri,  6 Sep 2019 11:32:35 +0100
In-Reply-To: <20190906103235.197072-1-maennich@google.com>
Message-Id: <20190906103235.197072-12-maennich@google.com>
Mime-Version: 1.0
References: <20180716122125.175792-1-maco@android.com> <20190906103235.197072-1-maennich@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [usb-storage] [PATCH v5 11/11] usb-storage: export symbols in
 USB_STORAGE namespace
From: "'Matthias Maennich' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: linux-kernel@vger.kernel.org
Cc: kernel-team@android.com, maennich@google.com, arnd@arndb.de, 
	gregkh@linuxfoundation.org, jeyu@kernel.org, joel@joelfernandes.org, 
	lucas.de.marchi@gmail.com, maco@android.com, sspatil@google.com, 
	will@kernel.org, yamada.masahiro@socionext.com, linux-kbuild@vger.kernel.org, 
	linux-modules@vger.kernel.org, linux-usb@vger.kernel.org, 
	usb-storage@lists.one-eyed-alien.net
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: maennich@google.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=G59EfYtd;       spf=pass
 (google.com: domain of 36jvyxqgkabe3rv44ztyx55x2v.t53@flex--maennich.bounces.google.com
 designates 209.85.220.73 as permitted sender) smtp.mailfrom=36jVyXQgKABE3rv44ztyx55x2v.t53@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Matthias Maennich <maennich@google.com>
Reply-To: Matthias Maennich <maennich@google.com>
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

Modules using these symbols are required to explicitly import the
namespace. This patch was generated with the following steps and serves
as a reference to use the symbol namespace feature:

 1) Define DEFAULT_SYMBOL_NAMESPACE in the corresponding Makefile
 2) make  (see warnings during modpost about missing imports)
 3) make nsdeps

Instead of a DEFAULT_SYMBOL_NAMESPACE definition, the EXPORT_SYMBOL_NS
variants can be used to explicitly specify the namespace. The advantage
of the method used here is that newly added symbols are automatically
exported and existing ones are exported without touching their
respective EXPORT_SYMBOL macro expansion.

Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Matthias Maennich <maennich@google.com>
---
 drivers/usb/storage/Makefile        | 2 ++
 drivers/usb/storage/alauda.c        | 1 +
 drivers/usb/storage/cypress_atacb.c | 1 +
 drivers/usb/storage/datafab.c       | 1 +
 drivers/usb/storage/ene_ub6250.c    | 1 +
 drivers/usb/storage/freecom.c       | 1 +
 drivers/usb/storage/isd200.c        | 1 +
 drivers/usb/storage/jumpshot.c      | 1 +
 drivers/usb/storage/karma.c         | 1 +
 drivers/usb/storage/onetouch.c      | 1 +
 drivers/usb/storage/realtek_cr.c    | 1 +
 drivers/usb/storage/sddr09.c        | 1 +
 drivers/usb/storage/sddr55.c        | 1 +
 drivers/usb/storage/shuttle_usbat.c | 1 +
 drivers/usb/storage/uas.c           | 1 +
 15 files changed, 16 insertions(+)

diff --git a/drivers/usb/storage/Makefile b/drivers/usb/storage/Makefile
index a67ddcbb4e24..46635fa4a340 100644
--- a/drivers/usb/storage/Makefile
+++ b/drivers/usb/storage/Makefile
@@ -8,6 +8,8 @@
=20
 ccflags-y :=3D -I $(srctree)/drivers/scsi
=20
+ccflags-y +=3D -DDEFAULT_SYMBOL_NAMESPACE=3DUSB_STORAGE
+
 obj-$(CONFIG_USB_UAS)		+=3D uas.o
 obj-$(CONFIG_USB_STORAGE)	+=3D usb-storage.o
=20
diff --git a/drivers/usb/storage/alauda.c b/drivers/usb/storage/alauda.c
index 6b8edf6178df..ddab2cd3d2e7 100644
--- a/drivers/usb/storage/alauda.c
+++ b/drivers/usb/storage/alauda.c
@@ -36,6 +36,7 @@
 MODULE_DESCRIPTION("Driver for Alauda-based card readers");
 MODULE_AUTHOR("Daniel Drake <dsd@gentoo.org>");
 MODULE_LICENSE("GPL");
+MODULE_IMPORT_NS(USB_STORAGE);
=20
 /*
  * Status bytes
diff --git a/drivers/usb/storage/cypress_atacb.c b/drivers/usb/storage/cypr=
ess_atacb.c
index 4825902377eb..a6f3267bbef6 100644
--- a/drivers/usb/storage/cypress_atacb.c
+++ b/drivers/usb/storage/cypress_atacb.c
@@ -22,6 +22,7 @@
 MODULE_DESCRIPTION("SAT support for Cypress USB/ATA bridges with ATACB");
 MODULE_AUTHOR("Matthieu Castet <castet.matthieu@free.fr>");
 MODULE_LICENSE("GPL");
+MODULE_IMPORT_NS(USB_STORAGE);
=20
 /*
  * The table of devices
diff --git a/drivers/usb/storage/datafab.c b/drivers/usb/storage/datafab.c
index 09353be199be..588818483f4b 100644
--- a/drivers/usb/storage/datafab.c
+++ b/drivers/usb/storage/datafab.c
@@ -54,6 +54,7 @@
 MODULE_DESCRIPTION("Driver for Datafab USB Compact Flash reader");
 MODULE_AUTHOR("Jimmie Mayfield <mayfield+datafab@sackheads.org>");
 MODULE_LICENSE("GPL");
+MODULE_IMPORT_NS(USB_STORAGE);
=20
 struct datafab_info {
 	unsigned long   sectors;	/* total sector count */
diff --git a/drivers/usb/storage/ene_ub6250.c b/drivers/usb/storage/ene_ub6=
250.c
index c26129d5b943..8b1b73065421 100644
--- a/drivers/usb/storage/ene_ub6250.c
+++ b/drivers/usb/storage/ene_ub6250.c
@@ -26,6 +26,7 @@
=20
 MODULE_DESCRIPTION("Driver for ENE UB6250 reader");
 MODULE_LICENSE("GPL");
+MODULE_IMPORT_NS(USB_STORAGE);
 MODULE_FIRMWARE(SD_INIT1_FIRMWARE);
 MODULE_FIRMWARE(SD_INIT2_FIRMWARE);
 MODULE_FIRMWARE(SD_RW_FIRMWARE);
diff --git a/drivers/usb/storage/freecom.c b/drivers/usb/storage/freecom.c
index 4f542df37a44..34e7eaff1174 100644
--- a/drivers/usb/storage/freecom.c
+++ b/drivers/usb/storage/freecom.c
@@ -29,6 +29,7 @@
 MODULE_DESCRIPTION("Driver for Freecom USB/IDE adaptor");
 MODULE_AUTHOR("David Brown <usb-storage@davidb.org>");
 MODULE_LICENSE("GPL");
+MODULE_IMPORT_NS(USB_STORAGE);
=20
 #ifdef CONFIG_USB_STORAGE_DEBUG
 static void pdump(struct us_data *us, void *ibuffer, int length);
diff --git a/drivers/usb/storage/isd200.c b/drivers/usb/storage/isd200.c
index 2b474d60b4db..c4da3fd6eff9 100644
--- a/drivers/usb/storage/isd200.c
+++ b/drivers/usb/storage/isd200.c
@@ -53,6 +53,7 @@
 MODULE_DESCRIPTION("Driver for In-System Design, Inc. ISD200 ASIC");
 MODULE_AUTHOR("Bj=C3=B6rn Stenberg <bjorn@haxx.se>");
 MODULE_LICENSE("GPL");
+MODULE_IMPORT_NS(USB_STORAGE);
=20
 static int isd200_Initialization(struct us_data *us);
=20
diff --git a/drivers/usb/storage/jumpshot.c b/drivers/usb/storage/jumpshot.=
c
index 917f170c4124..229bf0c1afc9 100644
--- a/drivers/usb/storage/jumpshot.c
+++ b/drivers/usb/storage/jumpshot.c
@@ -51,6 +51,7 @@
 MODULE_DESCRIPTION("Driver for Lexar \"Jumpshot\" Compact Flash reader");
 MODULE_AUTHOR("Jimmie Mayfield <mayfield+usb@sackheads.org>");
 MODULE_LICENSE("GPL");
+MODULE_IMPORT_NS(USB_STORAGE);
=20
 /*
  * The table of devices
diff --git a/drivers/usb/storage/karma.c b/drivers/usb/storage/karma.c
index 395cf8fb5870..05cec81dcd3f 100644
--- a/drivers/usb/storage/karma.c
+++ b/drivers/usb/storage/karma.c
@@ -23,6 +23,7 @@
 MODULE_DESCRIPTION("Driver for Rio Karma");
 MODULE_AUTHOR("Bob Copeland <me@bobcopeland.com>, Keith Bennett <keith@mcs=
.st-and.ac.uk>");
 MODULE_LICENSE("GPL");
+MODULE_IMPORT_NS(USB_STORAGE);
=20
 #define RIO_PREFIX "RIOP\x00"
 #define RIO_PREFIX_LEN 5
diff --git a/drivers/usb/storage/onetouch.c b/drivers/usb/storage/onetouch.=
c
index 39a5009a41a6..a989fe930e21 100644
--- a/drivers/usb/storage/onetouch.c
+++ b/drivers/usb/storage/onetouch.c
@@ -25,6 +25,7 @@
 MODULE_DESCRIPTION("Maxtor USB OneTouch hard drive button driver");
 MODULE_AUTHOR("Nick Sillik <n.sillik@temple.edu>");
 MODULE_LICENSE("GPL");
+MODULE_IMPORT_NS(USB_STORAGE);
=20
 #define ONETOUCH_PKT_LEN        0x02
 #define ONETOUCH_BUTTON         KEY_PROG1
diff --git a/drivers/usb/storage/realtek_cr.c b/drivers/usb/storage/realtek=
_cr.c
index 1d9ce9cbc831..3789698d9d3c 100644
--- a/drivers/usb/storage/realtek_cr.c
+++ b/drivers/usb/storage/realtek_cr.c
@@ -35,6 +35,7 @@
 MODULE_DESCRIPTION("Driver for Realtek USB Card Reader");
 MODULE_AUTHOR("wwang <wei_wang@realsil.com.cn>");
 MODULE_LICENSE("GPL");
+MODULE_IMPORT_NS(USB_STORAGE);
=20
 static int auto_delink_en =3D 1;
 module_param(auto_delink_en, int, S_IRUGO | S_IWUSR);
diff --git a/drivers/usb/storage/sddr09.c b/drivers/usb/storage/sddr09.c
index bc9da736bdfc..51bcd4a43690 100644
--- a/drivers/usb/storage/sddr09.c
+++ b/drivers/usb/storage/sddr09.c
@@ -47,6 +47,7 @@
 MODULE_DESCRIPTION("Driver for SanDisk SDDR-09 SmartMedia reader");
 MODULE_AUTHOR("Andries Brouwer <aeb@cwi.nl>, Robert Baruch <autophile@star=
band.net>");
 MODULE_LICENSE("GPL");
+MODULE_IMPORT_NS(USB_STORAGE);
=20
 static int usb_stor_sddr09_dpcm_init(struct us_data *us);
 static int sddr09_transport(struct scsi_cmnd *srb, struct us_data *us);
diff --git a/drivers/usb/storage/sddr55.c b/drivers/usb/storage/sddr55.c
index b8527c55335b..ba955d65eb0e 100644
--- a/drivers/usb/storage/sddr55.c
+++ b/drivers/usb/storage/sddr55.c
@@ -29,6 +29,7 @@
 MODULE_DESCRIPTION("Driver for SanDisk SDDR-55 SmartMedia reader");
 MODULE_AUTHOR("Simon Munton");
 MODULE_LICENSE("GPL");
+MODULE_IMPORT_NS(USB_STORAGE);
=20
 /*
  * The table of devices
diff --git a/drivers/usb/storage/shuttle_usbat.c b/drivers/usb/storage/shut=
tle_usbat.c
index 854498e1012c..54aa1392c9ca 100644
--- a/drivers/usb/storage/shuttle_usbat.c
+++ b/drivers/usb/storage/shuttle_usbat.c
@@ -48,6 +48,7 @@
 MODULE_DESCRIPTION("Driver for SCM Microsystems (a.k.a. Shuttle) USB-ATAPI=
 cable");
 MODULE_AUTHOR("Daniel Drake <dsd@gentoo.org>, Robert Baruch <autophile@sta=
rband.net>");
 MODULE_LICENSE("GPL");
+MODULE_IMPORT_NS(USB_STORAGE);
=20
 /* Supported device types */
 #define USBAT_DEV_HP8200	0x01
diff --git a/drivers/usb/storage/uas.c b/drivers/usb/storage/uas.c
index 047c5922618f..bf80d6f81f58 100644
--- a/drivers/usb/storage/uas.c
+++ b/drivers/usb/storage/uas.c
@@ -1219,5 +1219,6 @@ static struct usb_driver uas_driver =3D {
 module_usb_driver(uas_driver);
=20
 MODULE_LICENSE("GPL");
+MODULE_IMPORT_NS(USB_STORAGE);
 MODULE_AUTHOR(
 	"Hans de Goede <hdegoede@redhat.com>, Matthew Wilcox and Sarah Sharp");
--=20
2.23.0.187.g17f5b7556c-goog

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/20190906103235.197072-12-maennich%40=
google.com.
