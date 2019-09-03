Return-Path: <usb-storage+bncBDMYPB44VAFRBTEDXLVQKGQECXC3EDA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb48.google.com (mail-yb1-xb48.google.com [IPv6:2607:f8b0:4864:20::b48])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AE31A6C4A
	for <lists+usb-storage@lfdr.de>; Tue,  3 Sep 2019 17:07:57 +0200 (CEST)
Received: by mail-yb1-xb48.google.com with SMTP id p2sf14238282ybk.12
        for <lists+usb-storage@lfdr.de>; Tue, 03 Sep 2019 08:07:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567523276; cv=pass;
        d=google.com; s=arc-20160816;
        b=ENkW9ZEIvUxm2oiAi2cIK+uJ+kMwrqzou+yhIFhu0mm7II/wBn4q9bTRQudPFjew5d
         dZmMD4gc0rBzMfOokKy+rk3XGKWZQZ2WcYSMAt/Kp5f7MMBPb/HwquZuvmks6SG4WfXo
         OpWIvbNBsCaO1mzWPqxys554shJ0g7KeX1Qx9zXbknT/LerOXG5FumNOpLdSgS1zYfRA
         22nc57uC9HmjO6CqHMsyCao3eqadRXU9BvMxMnEppZmdAfeLBYLxDoTK3Eq2YG2wWNqD
         rA1j4YSwTwpTWqVDO5HLH4NTuXdtcF6J8mSsa1zQPNQDFeTIMWHtzB27RYnT6YoihKGa
         g8XA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=yls++ePHc0wucHIUwqS16lPimTkmbIXlZ+ZytEjid88=;
        b=sy9IeQMk0eOf6Ll4ELG/eu/rJopi4GPDMbaUpqOcZqnGaPBmd9fZDksPnPaziRQ6IJ
         bb3aTwpHwYcIaEIq0z9jYWarFQ8/o+vIba4I0e+SA9XKEsjuGPxicQ0yOqZ3OP4n77Hr
         nL7v1wUIUNt389IN3i27JcA+k5Fe3g2wbQncDF/NoaSM6bnF5ZwKOVA09g2Heq+1R3gg
         srZJi8YtyG0SpY9SQ+OMRNAffoZeOTUOtfoUtIiCa4JwV8B3B4W2GFkFbEQUzpMo8OuX
         oO1hqdB9RYy4leruDqrLqPFDG3yWL33Th121uuv1YCh8vWPod9mTFZvl6amLyzZk5zBB
         ev5g==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=H2wObk8o;
       spf=pass (google.com: domain of 3y4fuxqgkahokycllgafemmejc.amk@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=3y4FuXQgKAHokYcllgafemmejc.amk@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=yls++ePHc0wucHIUwqS16lPimTkmbIXlZ+ZytEjid88=;
        b=Rz3B3woChKdJWvUGil8KKhdbQIrzSQEQS4lT+7dSeX2j3cRyl45OytsgvV4Mho+MNO
         Au/lRwL6Qe2N9fXl9xORYKXSFdq+4+58HZ8K/SPotl3OCfyBy987lAzK/4OBdU1lsARb
         ajkeT1VZCLtiK8gNzCC8MbCZG/a4Oa/7Ldl6Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yls++ePHc0wucHIUwqS16lPimTkmbIXlZ+ZytEjid88=;
        b=DfYr0NhVl2hAV4dWW09yK4+rW9Ce0fdnnf/cXRKIk4/+zaCvAiqveHGB6PEXOW1kaq
         AOFzvZewng0BjD5JBhysBi/B5czoF5IcRTaBW0Sr4G0z+dw0GJM9c+e/DGwNKGYf69ql
         0KOtaOCI9Q4r+M9otYqqDzd5pyX+08KQQtT5Ujrxg/s/nHgo94w5Pm6G3MPvNpVt571g
         e0yMMdaNs/or/V3P0mmbrOETsarnhHQ01WxO0VP2fZ2u+IfC3iZ+AXy1YINYq5TimlVh
         wrPO3XalMdCDE7h72ykJFkymuNTYgWdN6n8PDBM0W720B1oYgUO9Q6QP+GiB5zB6lwh6
         DeBQ==
X-Gm-Message-State: APjAAAVHiwGH0bgFkboHWTHHao6KDfgmQRqH8NHeR9cayZLDPnKU8LRh
	pIdgGSZw0NLgY7rT9eWIzdvVUg==
X-Google-Smtp-Source: APXvYqwx9OVhXruLFoxPyxbqKnYFKY/BgaR3rDjhOgQU3aW39cnELactzOFccvOjroqJ6cbNfS3N6g==
X-Received: by 2002:a81:120e:: with SMTP id 14mr24351600yws.407.1567523276534;
        Tue, 03 Sep 2019 08:07:56 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a81:9a03:: with SMTP id r3ls458159ywg.10.gmail; Tue, 03 Sep
 2019 08:07:56 -0700 (PDT)
X-Received: by 2002:a0d:fe83:: with SMTP id o125mr26138104ywf.401.1567523276256;
        Tue, 03 Sep 2019 08:07:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567523276; cv=none;
        d=google.com; s=arc-20160816;
        b=Pph/AomWC7juUZ5Kfz83/3QYrwSmM0Ty6Svykktz3krhujbsFTVXKm13qpPX6/HlJI
         x/A5lyL/EBYo4c18O4CmqLnUl4k+OaoRYshjoxCn1VimXbg7cmNVQM8qOeJWbQlQGRvN
         8iVm6djRgYKxRN2Zt4xAIpbHBAzJxTtNxyXtt1MO9FUpdBWRSPXME5NOzfADSmgh3JfV
         G9PHD9kjEeQz4KltIzGGZf5QO3yiEDoxeSCaY/43jX9ZkO3dnZhp2libsYk7smGU+FCT
         Ez/Xd5FXIA3aI7bL/Kk7wsKa9Fge/N0+yAY/sNbaFX1EC6GrslZKbvxQ5dt9MSuJmHTM
         MFdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:from:subject:references
         :mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=u5uO9nHL9grY4Qf1Kv34RIYuP69k6hUWKvOump+fF1c=;
        b=sB7QEkBwmzXSk1Y1hIoWHPsQfjkfyRJz0P75FF73dBnqmiSKBEcghwUQVN9C/5JKOj
         zo09OTBoZazy42oZdBA/uuhnlX9DSWs2nFz98XomrVxucl/r7uYdIHmNHa+XQRjPCn/M
         u6VkzQSysUs1Xc9oWeEXbBzNeHFj3Ki0S7bkmMDEZpVzYWm8tC4UB1V84QHTgwYYtuh5
         /SiwM0+/91CbLV7WmiTeWdFTqY5HCskH/K1kXgKNS66g33CN4C7hHbrwocF3X2rl24SG
         u6Gz7soUoqRcHBQzVpzYFg9BBIReqc40+YvQli7dnuyhS0QwJoJzqKCiCLeI+Nv/YlDD
         iy1A==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=H2wObk8o;
       spf=pass (google.com: domain of 3y4fuxqgkahokycllgafemmejc.amk@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=3y4FuXQgKAHokYcllgafemmejc.amk@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f73.google.com (mail-sor-f73.google.com. [209.85.220.73])
        by mx.google.com with SMTPS id l83sor5808984ywe.97.2019.09.03.08.07.56
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 03 Sep 2019 08:07:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3y4fuxqgkahokycllgafemmejc.amk@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) client-ip=209.85.220.73;
X-Received: by 2002:a81:310e:: with SMTP id x14mr15409228ywx.430.1567523275811;
 Tue, 03 Sep 2019 08:07:55 -0700 (PDT)
Date: Tue,  3 Sep 2019 16:06:37 +0100
In-Reply-To: <20190903150638.242049-1-maennich@google.com>
Message-Id: <20190903150638.242049-12-maennich@google.com>
Mime-Version: 1.0
References: <20180716122125.175792-1-maco@android.com> <20190903150638.242049-1-maennich@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [usb-storage] [PATCH v4 11/12] RFC: usb-storage: export symbols in
 USB_STORAGE namespace
From: "'Matthias Maennich' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: linux-kernel@vger.kernel.org
Cc: kernel-team@android.com, maennich@google.com, arnd@arndb.de, 
	gregkh@linuxfoundation.org, jeyu@kernel.org, joel@joelfernandes.org, 
	lucas.de.marchi@gmail.com, maco@android.com, sspatil@google.com, 
	will@kernel.org, yamada.masahiro@socionext.com, linux-kbuild@vger.kernel.org, 
	linux-modules@vger.kernel.org, linux-usb@vger.kernel.org, 
	usb-storage@lists.one-eyed-alien.net, linux-watchdog@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: maennich@google.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=H2wObk8o;       spf=pass
 (google.com: domain of 3y4fuxqgkahokycllgafemmejc.amk@flex--maennich.bounces.google.com
 designates 209.85.220.73 as permitted sender) smtp.mailfrom=3y4FuXQgKAHokYcllgafemmejc.amk@flex--maennich.bounces.google.com;
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
one-eyed-alien.net/d/msgid/usb-storage/20190903150638.242049-12-maennich%40=
google.com.
