Return-Path: <usb-storage+bncBDMYPB44VAFRBFXC6TVAKGQECGYJR2A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-vk1-xa47.google.com (mail-vk1-xa47.google.com [IPv6:2607:f8b0:4864:20::a47])
	by mail.lfdr.de (Postfix) with ESMTPS id E8A0697868
	for <lists+usb-storage@lfdr.de>; Wed, 21 Aug 2019 13:55:03 +0200 (CEST)
Received: by mail-vk1-xa47.google.com with SMTP id a5sf808318vki.11
        for <lists+usb-storage@lfdr.de>; Wed, 21 Aug 2019 04:55:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566388503; cv=pass;
        d=google.com; s=arc-20160816;
        b=runRYKMuPgnTbYpEfrnyDdlJ7QIZPVUr3LtKJQPoIj/msjPr0XekAGkI7sfId9aygH
         d+/hrgru4qCQvQAXZkZ1ks3Jm54axl35N2CerH8OW2ovnmHzDZDiR7+tpqBU07+c/mel
         mkbGdOIEtjtwr92O70X2LjEptT9+Ueu944MHWChDMfPFZpQjSi5EshTEelYlVNg8D+2R
         HUd2KvMzG14ojfwKWMaJgQe+mAYpHrCODW3GJ0+YVmeLkjHPPvL3KuZQPW5bO1gzwQ1J
         knMY0wBAPqxqLFI7/SNTjdtF23h1DWIw3/HgHjg1KpsogGZYc468vcNPVj3MqvoyLNa1
         LIow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=cLVtYI4Ijw+cYybhGtllbV8HXOdvK6IgL1b3eSu+sQA=;
        b=DrgUZFB5CX29rH5Yp8Oqib+uTYyNXUddcaJ1Vdb5gQpIbCmaRR/5LyBoKKiCHDQh9M
         lB2gFS0E8De0XihRAVq+BDlF15TxPZnwCNKgbNQ8SuSr8AJ2tUPv7QV4laGbg1aykC2B
         Rkw6Yw25rvsnXbY2YwkWhy/lYdv2NfKjAmNgJYdp5gJgzJfP9DCVOA9gqbhHkuP6DH01
         BliWTkPVxKfv5UNjxDt1xZlV+ymIzMIRw6uc4883Z8TttnbFyzfN2eSxRn7JAkGw+nSB
         216oPkuqCPVmYJDocnMSDyDUJ4xsh6K6KMH1LtaGLDEvaKuxI/Q0qZKz/vwHHwkSHLOX
         bSVQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BB+B1cyn;
       spf=pass (google.com: domain of 3ftfdxqgkanwk8cllgafemmejc.amk@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=3FTFdXQgKANwK8CLLGAFEMMEJC.AMK@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=cLVtYI4Ijw+cYybhGtllbV8HXOdvK6IgL1b3eSu+sQA=;
        b=W6YjR3GJkxiWVdRGXnmDHdn29FHb95weCyf9P63Y4ZQ4xg+xaXmsim6c+8t4GomLsz
         aOF1A76cskFp6d2NzJ9uZlaPbBMn6gq5TW/0Cee7kiWufFl6OQ6cCn2BFdbEeEHI4tKR
         80327tnTdbqwwVrFhwfJf57d8IEVSWqHldfeE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cLVtYI4Ijw+cYybhGtllbV8HXOdvK6IgL1b3eSu+sQA=;
        b=SKYZOZVc+BTMjX9V4wNEzGmYpEkoMCc8h1DkrI3Yw4fU0s8ny/E4jhH/SQ6D2I7zi7
         uCMECf418JUCGXfvhXTSx5XSSgCrxk1fIsbKBQ77qSWx6SMFvHCZYALgfh4luM4XkLlD
         d/5SOeoogzx6EcCNVDV6pi8Oi7JtPu2WLTE1vLSlZJ1Dnm2zFvbNolZYSeCbFi3G4TxB
         vHn7w33lN+TMjPUpTsIW6kMDJhGPGasjYLR5/288NbYE7nku6A19CCuPwhwm0RTEFJ90
         9GqeBmWhjr4Z3+l5ZbN2HojabIOLjN3sDgSlI4jrTzndUI7DrQ35b12Se3iDhPURViOU
         6ZvQ==
X-Gm-Message-State: APjAAAUgPKVGsTfExEOrZ9kaC4S2MqgC7SsvaQ0sc2P9wmlV09zZEzt1
	GFllxgp2VcjtVHhLf4BkOmn0UQ==
X-Google-Smtp-Source: APXvYqzgkKzdNbiwVB15xyh/FggTl7p9o0HTgnhinLM8qh0wu5SBBtScFb3khbpKzV3UJxfdQHXxNw==
X-Received: by 2002:a67:f358:: with SMTP id p24mr1535787vsm.171.1566388502899;
        Wed, 21 Aug 2019 04:55:02 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ab0:76da:: with SMTP id w26ls107051uaq.16.gmail; Wed, 21 Aug
 2019 04:55:02 -0700 (PDT)
X-Received: by 2002:ab0:28c:: with SMTP id 12mr1961113uah.118.1566388502418;
        Wed, 21 Aug 2019 04:55:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566388502; cv=none;
        d=google.com; s=arc-20160816;
        b=dEkp4vPavQwSJSaVtrw60D3l5alwPqsQLHiw4wk05xF3CC/D5r9j4l4feptiATrJuP
         cTIU+5UaNdJ7/crxTqqe0560TjyGcXQiA+1ei0WY1qI57ZUQXeGNdcR//012gPi/Wrmx
         0gKbUAzhp9NPVkQIl2Mou4S8s6mssjYOln870WDNUC4knFa7N0CeIirTKE51YLGZRYvK
         cmzj+kDMWHXJNhwiK/ZUHURRK3SFKaq4u5fPMKe00WjTQxBZx4yU19k61XHZ1Q2XKC6U
         ba+4293xPJuqNCIGVRBgjVtV01W4OPglSVz6qMWscO0bG1VrPdEj4pSKzLxFr2RguyUU
         TaCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:from:subject:references
         :mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=ALxGfvRXdmbGtlmXxys2ao74GC6bY40UmqO1RMzwV3c=;
        b=hTkZi5zIJ7X2L2aWM8M1zEKDBZzN+hTTFeICsEfpr5EUjT2rT3ZYZhghHinRBiA1B9
         vUo3UuWfQDG1XQ+PalLgna2zdOArkNtlyZfqlqlOfUDIG787+Pk6/EWNephd83BR4ZYT
         a9aCWgz5nFswNkMnxpEwqDYteBxRY2xMU6EOsggSxW7NGx+BCty/9E2QXV1vXmaOOmiI
         6nSv/W0MfnnZ+B3TsmCjJW/fLeyMaS/JWd5UXglWcXITQnW8Si9mcznmszJO2JfUsYgM
         P6tUeOSytfHLMGZtUkDeDyV+EIDUReX+NxpztsgS+zC53LWFvLmUubW+2SUHvpjQS7qQ
         Q04A==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BB+B1cyn;
       spf=pass (google.com: domain of 3ftfdxqgkanwk8cllgafemmejc.amk@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=3FTFdXQgKANwK8CLLGAFEMMEJC.AMK@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f73.google.com (mail-sor-f73.google.com. [209.85.220.73])
        by mx.google.com with SMTPS id m15sor10824465vsa.72.2019.08.21.04.55.02
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 21 Aug 2019 04:55:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ftfdxqgkanwk8cllgafemmejc.amk@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) client-ip=209.85.220.73;
X-Received: by 2002:a67:e906:: with SMTP id c6mr20280699vso.82.1566388501903;
 Wed, 21 Aug 2019 04:55:01 -0700 (PDT)
Date: Wed, 21 Aug 2019 12:49:25 +0100
In-Reply-To: <20190821114955.12788-1-maennich@google.com>
Message-Id: <20190821114955.12788-11-maennich@google.com>
Mime-Version: 1.0
References: <20190813121733.52480-1-maennich@google.com> <20190821114955.12788-1-maennich@google.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [usb-storage] [PATCH v3 10/11] RFC: usb-storage: export symbols in
 USB_STORAGE namespace
From: "'Matthias Maennich' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: linux-kernel@vger.kernel.org
Cc: kernel-team@android.com, maennich@google.com, arnd@arndb.de, 
	geert@linux-m68k.org, gregkh@linuxfoundation.org, hpa@zytor.com, 
	jeyu@kernel.org, joel@joelfernandes.org, kstewart@linuxfoundation.org, 
	linux-arch@vger.kernel.org, linux-kbuild@vger.kernel.org, 
	linux-m68k@lists.linux-m68k.org, linux-modules@vger.kernel.org, 
	linux-scsi@vger.kernel.org, linux-usb@vger.kernel.org, 
	lucas.de.marchi@gmail.com, maco@android.com, maco@google.com, 
	michal.lkml@markovi.net, mingo@redhat.com, oneukum@suse.com, 
	pombredanne@nexb.com, sam@ravnborg.org, sspatil@google.com, 
	stern@rowland.harvard.edu, tglx@linutronix.de, 
	usb-storage@lists.one-eyed-alien.net, x86@kernel.org, 
	yamada.masahiro@socionext.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: maennich@google.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=BB+B1cyn;       spf=pass
 (google.com: domain of 3ftfdxqgkanwk8cllgafemmejc.amk@flex--maennich.bounces.google.com
 designates 209.85.220.73 as permitted sender) smtp.mailfrom=3FTFdXQgKANwK8CLLGAFEMMEJC.AMK@flex--maennich.bounces.google.com;
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
index cc794e25a0b6..edbe419053d6 100644
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
2.23.0.rc1.153.gdeed80330f-goog

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/20190821114955.12788-11-maennich%40g=
oogle.com.
