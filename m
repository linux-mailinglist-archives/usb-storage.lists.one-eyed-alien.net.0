Return-Path: <usb-storage+bncBDMYPB44VAFRBINHZPVAKGQE5OFI4CI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x845.google.com (mail-qt1-x845.google.com [IPv6:2607:f8b0:4864:20::845])
	by mail.lfdr.de (Postfix) with ESMTPS id C28228BCC3
	for <lists+usb-storage@lfdr.de>; Tue, 13 Aug 2019 17:13:38 +0200 (CEST)
Received: by mail-qt1-x845.google.com with SMTP id j10sf17901151qtl.23
        for <lists+usb-storage@lfdr.de>; Tue, 13 Aug 2019 08:13:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565709217; cv=pass;
        d=google.com; s=arc-20160816;
        b=clLn9/G/97pEtJGlN/6MxBcxER/WKsaYY8xQYde+WzYoJtuMYdYcQvzZPpR4rWnAEu
         itsy0PmmadayobfmXNyI0IGviaQ9h6YUQO2ARQrlMsgC7GLpBBJMYbJOjDLqRAzrLa3a
         mi8CnnwqznsxfUMs9Gkt8iILGZDvVwHDc5lbKdMEUG38tRCh/Ql6UqjjgtCG9f3wSAWM
         4ZfOnKpbbYEtzBTJhtmXrjU4ZZ7pypI0EUbaPnvFBrzoOIhawlp410Vgmp5+0ZjyveH8
         IWninoSsHVCA7QZ+QOxQDTL0cVLTO2NcRw6P+aFTzf7KhrsG56Aro17loCgZRwlNY0BO
         dtrw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=6VzFi96mKDajPgI2VMX700iweLJfPoDfEI9mwG2LkaM=;
        b=TqsGx4m3zhIVE/B+YUVszdAeF2wZDrXjfFKOgbdnLQ58EIhr0dbhQsNkMuy2Nyx09p
         ypV++VJ58uz79Ok0Xubkrs0qeEU07XC/oOFKMQBejcgWSf4NpVzs6Rxxyrf0zb97NErx
         Z6d+fQXj7P7AA+xG5KvWZ4qrMfho2oofnoN4y7B4QGX2qJBAYPLmGk5vaHkq5nt8NQga
         P2pEz3CrGKq9s1BO2SeqY8ptg18yA6SgDxEj8QR3AF3P7dubP9QVc27lgqAd90XMEEXw
         XyROKgF0yxf9HnphtIF8hkmQF9y6P63NDGv8Qui4ucrgMnNUZZUZSCxGnst/xgO2al6C
         2pPw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="u2/pqssh";
       spf=pass (google.com: domain of 38kpsxqgkaierfjssnhmlttlqj.htr@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=38KpSXQgKAIErfjssnhmlttlqj.htr@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=6VzFi96mKDajPgI2VMX700iweLJfPoDfEI9mwG2LkaM=;
        b=PgmtJpaW7wxOnCXxDRo4NLZbfqJcK1rvY4Haism/ya4WUgwOnjCogd6esU/qI3bzLf
         GG+gsQcI7sN3ylhKqvJHxfpzFXqQjoOwO4o19x4VPJr+/7O8SzlZHT3mv6fV6HjhXN58
         7ZwLQLyjPzFS9w79HDPejL5/C3X69RjY38MuI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6VzFi96mKDajPgI2VMX700iweLJfPoDfEI9mwG2LkaM=;
        b=RKOKwgXe2X1V0Yw1aX20Mq6Q93I2HaSb4ItiBZFPLvVVupWZRXRsSLF1+TG3wfb8rY
         JMKwsjmSQ9iNVIBGJhdAr5SZMyPsOtZP+crFzVXRKVOv9FiowaqeCyKBCGqkL46AkBdi
         gvUsISCMk160ru2CTusvb0GXpGkB37z/0iNqTXZ39tuBqVJ8ku7murHWzZEt7lzx8hy2
         HioOhj5M6pKP7PhhdVMcPedQfHDlvw4sIP5mG04hugD7ihs50V1fCyzu0eTaLYue04ZX
         yCNWrxj76FmyNyyhfFbyknD3m4p6zC3K2RfHUKPyHh4+B1rjPOxN7DbGZyVVOnTEXZbJ
         /YUw==
X-Gm-Message-State: APjAAAXnYbhxcRoplIqrww9SzH4F3gQyUqefwJtJhV4FRgE+F4f70ysC
	o7vmYY0WlNWoa9Z1AzSwGrhMJg==
X-Google-Smtp-Source: APXvYqzZrmEM8vPwm2n81kAkswWhoKgau6+TUgY64i/9TZ229BWEE2TmUU/VbigGErcU9MrHviNy0Q==
X-Received: by 2002:a37:63d1:: with SMTP id x200mr31741792qkb.131.1565709217679;
        Tue, 13 Aug 2019 08:13:37 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ae9:d801:: with SMTP id u1ls7181983qkf.13.gmail; Tue, 13 Aug
 2019 08:13:37 -0700 (PDT)
X-Received: by 2002:a37:9bce:: with SMTP id d197mr22667402qke.230.1565709217456;
        Tue, 13 Aug 2019 08:13:37 -0700 (PDT)
Received: by 2002:ae9:c317:0:0:0:0:0 with SMTP id n23msqkg;
        Tue, 13 Aug 2019 05:20:01 -0700 (PDT)
X-Received: by 2002:ab0:7515:: with SMTP id m21mr11296617uap.114.1565698801222;
        Tue, 13 Aug 2019 05:20:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565698801; cv=none;
        d=google.com; s=arc-20160816;
        b=h2vv7UCdFtRcBVrz2ymyZIdiMxFYWq0j9NxAdL7syL4z3lOawC9dfeFLY2cS2LTEOJ
         UIp/zqKjD21OA7Caf+9IG6gyDfvrIcayjbLllx6odES2XN7lrFII41wt1xO0jQhyo4Qn
         MWo2x49hOxkPLfg04Gt47FDAlZA5V8hcXcyMffahnyf87aGEnzqpR6v71QrHAhUzO2Si
         tiALmLP/br8egh7ivLdXrWyIxDIiwBrAuVO/d7RrbAEiiucMqB7ZUSVbvuCH9ra2arKl
         WUR8lcncF7cLdTy2nqIQhgpOTkNzOzWuBYuNACc5ycvSgkyZ/pyq/e275oVdYoabjUPF
         kcLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:from:subject:references
         :mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=BVCscCghGr3RW4i2SIfebP2PoMpA3Kh9pJgULCxqlPQ=;
        b=gV53K0Z0ZKShB8+y+hNw14Y/licRWz12ibR8NiZJYmjUcLcHWciIyExcYQlEE146ox
         4beE1veHkABvk2h7Az7Uj0NhIMoyeM2PBy7Bw4TCjplYyisMMYp786cvTLENmUvbh1Lp
         VSU+gLa1pP6+gr+OQ8aK2YnRni4XqhfBAFt86OzWIzlqdHplyjtTuGupRZGB60N3JzRB
         k7d6JfsGDXctBnbpgJ7DdQgytTDYpLike1uNEpw5CW7AetRzO6OpdJgQCEB/MwHScrZG
         8cnkdZe1ososlPSLpzhCYgUI/cFJ7eLwgKRK1swJ/v7TMUb4hg7cb3e1/hhqQBD/+JXx
         nNeA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="u2/pqssh";
       spf=pass (google.com: domain of 38kpsxqgkaierfjssnhmlttlqj.htr@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=38KpSXQgKAIErfjssnhmlttlqj.htr@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f73.google.com (mail-sor-f73.google.com. [209.85.220.73])
        by mx.google.com with SMTPS id k125sor2002381vkh.39.2019.08.13.05.20.01
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 13 Aug 2019 05:20:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of 38kpsxqgkaierfjssnhmlttlqj.htr@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) client-ip=209.85.220.73;
X-Received: by 2002:a1f:5405:: with SMTP id i5mr4863634vkb.75.1565698800581;
 Tue, 13 Aug 2019 05:20:00 -0700 (PDT)
Date: Tue, 13 Aug 2019 13:17:07 +0100
In-Reply-To: <20190813121733.52480-1-maennich@google.com>
Message-Id: <20190813121733.52480-11-maennich@google.com>
Mime-Version: 1.0
References: <20180716122125.175792-1-maco@android.com> <20190813121733.52480-1-maennich@google.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [usb-storage] [PATCH v2 10/10] RFC: usb-storage: export symbols in
 USB_STORAGE namespace
From: "'Matthias Maennich' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: linux-kernel@vger.kernel.org, maco@android.com
Cc: kernel-team@android.com, maennich@google.com, arnd@arndb.de, 
	geert@linux-m68k.org, gregkh@linuxfoundation.org, hpa@zytor.com, 
	jeyu@kernel.org, joel@joelfernandes.org, kstewart@linuxfoundation.org, 
	linux-arch@vger.kernel.org, linux-kbuild@vger.kernel.org, 
	linux-m68k@lists.linux-m68k.org, linux-modules@vger.kernel.org, 
	linux-scsi@vger.kernel.org, linux-usb@vger.kernel.org, 
	lucas.de.marchi@gmail.com, maco@google.com, michal.lkml@markovi.net, 
	mingo@redhat.com, oneukum@suse.com, pombredanne@nexb.com, sam@ravnborg.org, 
	sboyd@codeaurora.org, sspatil@google.com, stern@rowland.harvard.edu, 
	tglx@linutronix.de, usb-storage@lists.one-eyed-alien.net, x86@kernel.org, 
	yamada.masahiro@socionext.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: maennich@google.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="u2/pqssh";       spf=pass
 (google.com: domain of 38kpsxqgkaierfjssnhmlttlqj.htr@flex--maennich.bounces.google.com
 designates 209.85.220.73 as permitted sender) smtp.mailfrom=38KpSXQgKAIErfjssnhmlttlqj.htr@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Matthias Maennich <maennich@google.com>
Reply-To: Matthias Maennich <maennich@google.com>
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

Modules using these symbols are required to explicitly import the
namespace. This patch was generated with the following steps and serves
as a reference to use the symbol namespace feature:

 1) Define DDEFAULT_SYMBOL_NAMESPACE in the corresponding Makefile
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
one-eyed-alien.net/d/msgid/usb-storage/20190813121733.52480-11-maennich%40g=
oogle.com.
