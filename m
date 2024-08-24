Return-Path: <usb-storage+bncBCJLBW6OUMMRB3GIU63AMGQE4UYB5UI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb46.google.com (mail-yb1-xb46.google.com [IPv6:2607:f8b0:4864:20::b46])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A4ED95DE24
	for <lists+usb-storage@lfdr.de>; Sat, 24 Aug 2024 15:47:27 +0200 (CEST)
Received: by mail-yb1-xb46.google.com with SMTP id 3f1490d57ef6-e117634c516sf4935759276.0
        for <lists+usb-storage@lfdr.de>; Sat, 24 Aug 2024 06:47:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1724507246; cv=pass;
        d=google.com; s=arc-20240605;
        b=TbNiPfIqnWNaM9nm9p8g/C98dZi5GLSCrmT46F+bZgG5WJ+NUB1OrdaoXRVVzrh1vK
         yL7oi980RbHDuKqNYGqAaOGoV9j2w3rowzGmH06bUxEFIsx4bUcbruwGvtwbIBnJxr3Z
         Yqv968HbG0D/awbHc27FebTdgdDKN0F07RZ59ECtkhxtNXp7JXbY+7CTuBO5P0R2K5lq
         4FTmGAp8zlsMbO/xd6xqfxleEOrtn8bG9b20K4iw9dZhb09Yg9TIC7AHRUWgV2EhSopc
         DohIp6qEu4lw7OOb7ZqzhM/pbTOZVt7fasN1uXHZ82FYHcJnxSvIVtgAMXDYdqgsTGwz
         yRCQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=lbInJxGjO9/E/vi5Gccqg7lUq9fYWFD9G4yeP3kym10=;
        fh=3mFAfb5HspCMiF6dwC+8pg0BEQ8QSBOmQktbH13F1Yc=;
        b=GgnsU94KdB+dFzNBFr3dlDnbne8GoASadwB4NDN99HRbkZHcxcefBH+NB2ETddxriX
         qCZN6nWpkrvUM5Fd6JRD4Lv1ckOueTbBqM20ZfYWCsRLnokX2Rwj/PLkTSJDd7iydzgb
         JCFBdrkruQJN/kHe+E33v+eKMpFIHwLgtN831AkFGLgLHFmfIed9wNj9IoxirugtxvOu
         4CDkIdDAUbxoq6GOvt83f86AieVhi8baK3XQGrFYERI5iq8L2vlnCXD5N93kJRplKn95
         lL4nAFY/QOzGCXnTJx3T0+KkM2/WLPStFeUMR25+V5dpkODaf+1LJXDx923yy/VNHS18
         pMUg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@wanadoo.fr header.s=t20230301 header.b=AQac5zvA;
       spf=pass (google.com: domain of christophe.jaillet@wanadoo.fr designates 80.12.242.80 as permitted sender) smtp.mailfrom=christophe.jaillet@wanadoo.fr;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=wanadoo.fr
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1724507246; x=1725112046; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lbInJxGjO9/E/vi5Gccqg7lUq9fYWFD9G4yeP3kym10=;
        b=JmCZStVTeQyzh8t+2nxZlAG5q/vuEvEw3+wX7w0Ww8KSUvF2kJh8HU3Zuj6ZXfeAZR
         gwPPcE0oWQKFnEaDWaFE0+udhAFbnGQPLA25PIdLhdLIdWhqpktnROLqoFarUPjvEa1K
         wgaelSnkw5FUx5NTQ0ILWStgmDJIJvUOhyYdw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724507246; x=1725112046;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lbInJxGjO9/E/vi5Gccqg7lUq9fYWFD9G4yeP3kym10=;
        b=JuJqb9AFKkggPU5pnaZPgEPbeln0pgAX5LCaJrZu1vF3W5wvHLW5qAou9HV81Pt/Ic
         NaYNalZZsEnIEhrWikmkNUXwyJ5/D75nMVCZQ+Yb0IyIprt5yJbGjKLLUgwdYXmDVUcn
         H8KQsLMGORLpGWXCBel5SkdMpQhDCaYHmm5Dsnl0nGAHP0q1HXdRbp2GmRXk3sGyh1os
         7+Fj6mg+0DySqHJyslhrppcpCGv1QyCPknx8PPvOVi9OjP29r9fpmqheD+/ZaVDcDh+/
         tSE7HTMNXmCzd7ypFIRngL94MWfWDJNJmB7JOoddPfzh/48JlWhYMBIbG28D0g8Sc3Zy
         Fjxw==
X-Forwarded-Encrypted: i=2; AJvYcCVdc4/6TQoP+H41tpYB+XJ54EvDw9HSHdv1Wmp5Bo6UeYti/l9+uG77Ui1g6dAlgZoLBLo1hQ==@lfdr.de
X-Gm-Message-State: AOJu0Yz7tBwsf51YUUa9wAEo9ugAPw6RMN2h1SgcSfDVWlMYf61HmKej
	ORkBe29g+AVSj00vH39dF9tXrw6pHq0ISqzpkGpvpQwNsrjlX5FKYbQTvBV8K6I=
X-Google-Smtp-Source: AGHT+IGiWYX49nYCgzG5hsdOl/nxoP65Jx+CoZRLayc2DbmuJfBZQPZGrLAw61trHQ5EvnyPZdpN0A==
X-Received: by 2002:a05:6902:268a:b0:e0b:b2d6:f528 with SMTP id 3f1490d57ef6-e17a868617emr5087123276.38.1724507246020;
        Sat, 24 Aug 2024 06:47:26 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6902:18d1:b0:e02:c175:85f8 with SMTP id
 3f1490d57ef6-e178bd2ea92ls1296342276.1.-pod-prod-04-us; Sat, 24 Aug 2024
 06:47:24 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCU0S+oS8zMrlhsZwF1hUvcgYCL6xCxge1wPwom/j5+9b/3eiB/HBQmJKU7DUx5wb+OWAvQQQtGvBNQC/Q==@lists.one-eyed-alien.net
X-Received: by 2002:a05:690c:4244:b0:6ab:e840:7f4d with SMTP id 00721157ae682-6c6299ff431mr43529897b3.46.1724507244016;
        Sat, 24 Aug 2024 06:47:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1724507244; cv=none;
        d=google.com; s=arc-20160816;
        b=pVRhzRHeTo4d/kBO4cGG2jQPlAIXUcAJ8CWoE8mW8+OJj6mQVLIv7ocnF0mNsXxwP+
         N7nsqGURM4Kobo/g58+ygXTvdZcqgAbHyjQOz31v6k0Shu47dcRnJrzonba/MU1c9BTH
         c5DqcfzL7SJwjBuVLlDEYAcFJHpWuc3KVYeLqTpZ0r2wKbFwjBoaQkqm4Xr5mNtgPwF7
         TwBf7AvlCman1YNbzwg0HmE643GANbRC7cd0WvrQf3VvAprss2Mm92U1vAeGCqdY7qWf
         3J74pESWy3BHal/mEtdcyKkS0uMaHEkoSqRvweMdej95Ht+V8iXjpS166jgujs7XfTta
         XO4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=VrJTdN+d9FOn7wLbxMX7FhFh6wourAJWHL5OBIY5qyw=;
        fh=+8KszCyil37HuaApPQjQ+4OrdbHeYKvGaowYSTI0/D0=;
        b=KjpUBcgO1FkFowbcPc7IbfrlVMavNs8UludiNK8V31Nzxy8itXPBLATbNNsdJB4Bk+
         l3X8GDI3SB9MGZXJh/nV6kZqFfwLLjzIIy9zrvjSy7hRdTKEqWU1S+1iUE1dppLAuHVN
         aOKnyjgnoo1Y73uuh6pnGy4IzQe98EltrtAphWCuGBUMicGkUKoHido1F8Lw0XggbcAW
         /dloQsdOuSBpxQ3A+90KdFTzCoV8ZCqsFwVHFjSvN9zcqCEWLo7AH5R+/8Ied5yXjA4r
         6maP/v8f37z7j0mnkWQnuLfJsEbPxSWma/EH+rcNEKHFQrAsDJvk/BKZcLX5yP0+1bvZ
         QXJQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@wanadoo.fr header.s=t20230301 header.b=AQac5zvA;
       spf=pass (google.com: domain of christophe.jaillet@wanadoo.fr designates 80.12.242.80 as permitted sender) smtp.mailfrom=christophe.jaillet@wanadoo.fr;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=wanadoo.fr
Received: from msa.smtpout.orange.fr (smtp-80.smtpout.orange.fr. [80.12.242.80])
        by mx.google.com with ESMTPS id af79cd13be357-7a67f40002csi670821385a.391.2024.08.24.06.47.23
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Aug 2024 06:47:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of christophe.jaillet@wanadoo.fr designates 80.12.242.80 as permitted sender) client-ip=80.12.242.80;
Received: from fedora.home ([90.11.132.44])
	by smtp.orange.fr with ESMTPA
	id hr6vsE2q1aZQfhr6vsx39B; Sat, 24 Aug 2024 15:47:23 +0200
X-ME-Helo: fedora.home
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Sat, 24 Aug 2024 15:47:23 +0200
X-ME-IP: 90.11.132.44
From: "'Christophe JAILLET' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Oliver Neukum <oneukum@suse.com>
Cc: linux-kernel@vger.kernel.org,
	kernel-janitors@vger.kernel.org,
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-scsi@vger.kernel.org
Subject: [usb-storage] [PATCH] usb-storage: Constify struct usb_device_id and us_unusual_dev
Date: Sat, 24 Aug 2024 15:47:07 +0200
Message-ID: <b1b75a2a64b1f6cfad2a611f71393f281178fd3f.1724507157.git.christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
X-Original-Sender: christophe.jaillet@wanadoo.fr
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@wanadoo.fr header.s=t20230301 header.b=AQac5zvA;       spf=pass
 (google.com: domain of christophe.jaillet@wanadoo.fr designates 80.12.242.80
 as permitted sender) smtp.mailfrom=christophe.jaillet@wanadoo.fr;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=wanadoo.fr
X-Original-From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Reply-To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
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

'struct usb_device_id' and 'struct us_unusual_dev' are not modified in
these drivers.

Constifying these structures moves some data to a read-only section, so
increase overall security, especially when the structure holds some
function pointers (which is the case for struct us_unusual_dev).

On a x86_64, with allmodconfig, as an example:
Before:
======
   text	   data	    bss	    dec	    hex	filename
  25249	   4261	    896	  30406	   76c6	drivers/usb/storage/alauda.o
   3969	    672	    360	   5001	   1389	drivers/usb/storage/cypress_atacb.o

After:
=====
   text	   data	    bss	    dec	    hex	filename
  25461	   4041	    896	  30398	   76be	drivers/usb/storage/alauda.o
   4225	    400	    360	   4985	   1379	drivers/usb/storage/cypress_atacb.o

Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
Compile tested-only.

I hope that a single patch for all drivers in drivers/usb/storage/ is fine.
---
 drivers/usb/storage/alauda.c        | 4 ++--
 drivers/usb/storage/cypress_atacb.c | 4 ++--
 drivers/usb/storage/datafab.c       | 4 ++--
 drivers/usb/storage/ene_ub6250.c    | 4 ++--
 drivers/usb/storage/freecom.c       | 4 ++--
 drivers/usb/storage/isd200.c        | 4 ++--
 drivers/usb/storage/jumpshot.c      | 4 ++--
 drivers/usb/storage/karma.c         | 4 ++--
 drivers/usb/storage/onetouch.c      | 4 ++--
 drivers/usb/storage/sddr09.c        | 4 ++--
 drivers/usb/storage/sddr55.c        | 4 ++--
 drivers/usb/storage/shuttle_usbat.c | 4 ++--
 drivers/usb/storage/uas.c           | 2 +-
 13 files changed, 25 insertions(+), 25 deletions(-)

diff --git a/drivers/usb/storage/alauda.c b/drivers/usb/storage/alauda.c
index 40d34cc28344..a9d3c58ce7d9 100644
--- a/drivers/usb/storage/alauda.c
+++ b/drivers/usb/storage/alauda.c
@@ -132,7 +132,7 @@ static int init_alauda(struct us_data *us);
 { USB_DEVICE_VER(id_vendor, id_product, bcdDeviceMin, bcdDeviceMax), \
   .driver_info = (flags) }
 
-static struct usb_device_id alauda_usb_ids[] = {
+static const struct usb_device_id alauda_usb_ids[] = {
 #	include "unusual_alauda.h"
 	{ }		/* Terminating entry */
 };
@@ -154,7 +154,7 @@ MODULE_DEVICE_TABLE(usb, alauda_usb_ids);
 	.initFunction = init_function,	\
 }
 
-static struct us_unusual_dev alauda_unusual_dev_list[] = {
+static const struct us_unusual_dev alauda_unusual_dev_list[] = {
 #	include "unusual_alauda.h"
 	{ }		/* Terminating entry */
 };
diff --git a/drivers/usb/storage/cypress_atacb.c b/drivers/usb/storage/cypress_atacb.c
index 98b3ec352a13..30dfd0082474 100644
--- a/drivers/usb/storage/cypress_atacb.c
+++ b/drivers/usb/storage/cypress_atacb.c
@@ -33,7 +33,7 @@ MODULE_IMPORT_NS(USB_STORAGE);
 { USB_DEVICE_VER(id_vendor, id_product, bcdDeviceMin, bcdDeviceMax), \
   .driver_info = (flags) }
 
-static struct usb_device_id cypress_usb_ids[] = {
+static const struct usb_device_id cypress_usb_ids[] = {
 #	include "unusual_cypress.h"
 	{ }		/* Terminating entry */
 };
@@ -55,7 +55,7 @@ MODULE_DEVICE_TABLE(usb, cypress_usb_ids);
 	.initFunction = init_function,	\
 }
 
-static struct us_unusual_dev cypress_unusual_dev_list[] = {
+static const struct us_unusual_dev cypress_unusual_dev_list[] = {
 #	include "unusual_cypress.h"
 	{ }		/* Terminating entry */
 };
diff --git a/drivers/usb/storage/datafab.c b/drivers/usb/storage/datafab.c
index bcc4a2fad863..3ea5601d16b8 100644
--- a/drivers/usb/storage/datafab.c
+++ b/drivers/usb/storage/datafab.c
@@ -80,7 +80,7 @@ static int datafab_determine_lun(struct us_data *us,
 { USB_DEVICE_VER(id_vendor, id_product, bcdDeviceMin, bcdDeviceMax), \
   .driver_info = (flags) }
 
-static struct usb_device_id datafab_usb_ids[] = {
+static const struct usb_device_id datafab_usb_ids[] = {
 #	include "unusual_datafab.h"
 	{ }		/* Terminating entry */
 };
@@ -102,7 +102,7 @@ MODULE_DEVICE_TABLE(usb, datafab_usb_ids);
 	.initFunction = init_function,	\
 }
 
-static struct us_unusual_dev datafab_unusual_dev_list[] = {
+static const struct us_unusual_dev datafab_unusual_dev_list[] = {
 #	include "unusual_datafab.h"
 	{ }		/* Terminating entry */
 };
diff --git a/drivers/usb/storage/ene_ub6250.c b/drivers/usb/storage/ene_ub6250.c
index 97c66c0d91f4..73dd276ce59c 100644
--- a/drivers/usb/storage/ene_ub6250.c
+++ b/drivers/usb/storage/ene_ub6250.c
@@ -43,7 +43,7 @@ MODULE_FIRMWARE(MS_RW_FIRMWARE);
 { USB_DEVICE_VER(id_vendor, id_product, bcdDeviceMin, bcdDeviceMax), \
 	.driver_info = (flags)}
 
-static struct usb_device_id ene_ub6250_usb_ids[] = {
+static const struct usb_device_id ene_ub6250_usb_ids[] = {
 #	include "unusual_ene_ub6250.h"
 	{ }		/* Terminating entry */
 };
@@ -65,7 +65,7 @@ MODULE_DEVICE_TABLE(usb, ene_ub6250_usb_ids);
 	.initFunction = init_function,	\
 }
 
-static struct us_unusual_dev ene_ub6250_unusual_dev_list[] = {
+static const struct us_unusual_dev ene_ub6250_unusual_dev_list[] = {
 #	include "unusual_ene_ub6250.h"
 	{ }		/* Terminating entry */
 };
diff --git a/drivers/usb/storage/freecom.c b/drivers/usb/storage/freecom.c
index c3ce51c2dabd..cab27ba7a32a 100644
--- a/drivers/usb/storage/freecom.c
+++ b/drivers/usb/storage/freecom.c
@@ -119,7 +119,7 @@ static int init_freecom(struct us_data *us);
 { USB_DEVICE_VER(id_vendor, id_product, bcdDeviceMin, bcdDeviceMax), \
   .driver_info = (flags) }
 
-static struct usb_device_id freecom_usb_ids[] = {
+static const struct usb_device_id freecom_usb_ids[] = {
 #	include "unusual_freecom.h"
 	{ }		/* Terminating entry */
 };
@@ -141,7 +141,7 @@ MODULE_DEVICE_TABLE(usb, freecom_usb_ids);
 	.initFunction = init_function,	\
 }
 
-static struct us_unusual_dev freecom_unusual_dev_list[] = {
+static const struct us_unusual_dev freecom_unusual_dev_list[] = {
 #	include "unusual_freecom.h"
 	{ }		/* Terminating entry */
 };
diff --git a/drivers/usb/storage/isd200.c b/drivers/usb/storage/isd200.c
index 300aeef160e7..f2254eb3c0d7 100644
--- a/drivers/usb/storage/isd200.c
+++ b/drivers/usb/storage/isd200.c
@@ -67,7 +67,7 @@ static int isd200_Initialization(struct us_data *us);
 { USB_DEVICE_VER(id_vendor, id_product, bcdDeviceMin, bcdDeviceMax), \
   .driver_info = (flags) }
 
-static struct usb_device_id isd200_usb_ids[] = {
+static const struct usb_device_id isd200_usb_ids[] = {
 #	include "unusual_isd200.h"
 	{ }		/* Terminating entry */
 };
@@ -89,7 +89,7 @@ MODULE_DEVICE_TABLE(usb, isd200_usb_ids);
 	.initFunction = init_function,	\
 }
 
-static struct us_unusual_dev isd200_unusual_dev_list[] = {
+static const struct us_unusual_dev isd200_unusual_dev_list[] = {
 #	include "unusual_isd200.h"
 	{ }		/* Terminating entry */
 };
diff --git a/drivers/usb/storage/jumpshot.c b/drivers/usb/storage/jumpshot.c
index 229bf0c1afc9..0e71a8f33c2b 100644
--- a/drivers/usb/storage/jumpshot.c
+++ b/drivers/usb/storage/jumpshot.c
@@ -62,7 +62,7 @@ MODULE_IMPORT_NS(USB_STORAGE);
 { USB_DEVICE_VER(id_vendor, id_product, bcdDeviceMin, bcdDeviceMax), \
   .driver_info = (flags) }
 
-static struct usb_device_id jumpshot_usb_ids[] = {
+static const struct usb_device_id jumpshot_usb_ids[] = {
 #	include "unusual_jumpshot.h"
 	{ }		/* Terminating entry */
 };
@@ -84,7 +84,7 @@ MODULE_DEVICE_TABLE(usb, jumpshot_usb_ids);
 	.initFunction = init_function,	\
 }
 
-static struct us_unusual_dev jumpshot_unusual_dev_list[] = {
+static const struct us_unusual_dev jumpshot_unusual_dev_list[] = {
 #	include "unusual_jumpshot.h"
 	{ }		/* Terminating entry */
 };
diff --git a/drivers/usb/storage/karma.c b/drivers/usb/storage/karma.c
index 38ddfedef629..d6a5e54f2ca8 100644
--- a/drivers/usb/storage/karma.c
+++ b/drivers/usb/storage/karma.c
@@ -51,7 +51,7 @@ static int rio_karma_init(struct us_data *us);
 { USB_DEVICE_VER(id_vendor, id_product, bcdDeviceMin, bcdDeviceMax), \
   .driver_info = (flags) }
 
-static struct usb_device_id karma_usb_ids[] = {
+static const struct usb_device_id karma_usb_ids[] = {
 #	include "unusual_karma.h"
 	{ }		/* Terminating entry */
 };
@@ -73,7 +73,7 @@ MODULE_DEVICE_TABLE(usb, karma_usb_ids);
 	.initFunction = init_function,	\
 }
 
-static struct us_unusual_dev karma_unusual_dev_list[] = {
+static const struct us_unusual_dev karma_unusual_dev_list[] = {
 #	include "unusual_karma.h"
 	{ }		/* Terminating entry */
 };
diff --git a/drivers/usb/storage/onetouch.c b/drivers/usb/storage/onetouch.c
index 01f3c2779ccf..f97cf6cadb8e 100644
--- a/drivers/usb/storage/onetouch.c
+++ b/drivers/usb/storage/onetouch.c
@@ -55,7 +55,7 @@ struct usb_onetouch {
 { USB_DEVICE_VER(id_vendor, id_product, bcdDeviceMin, bcdDeviceMax), \
   .driver_info = (flags) }
 
-static struct usb_device_id onetouch_usb_ids[] = {
+static const struct usb_device_id onetouch_usb_ids[] = {
 #	include "unusual_onetouch.h"
 	{ }		/* Terminating entry */
 };
@@ -77,7 +77,7 @@ MODULE_DEVICE_TABLE(usb, onetouch_usb_ids);
 	.initFunction = init_function,	\
 }
 
-static struct us_unusual_dev onetouch_unusual_dev_list[] = {
+static const struct us_unusual_dev onetouch_unusual_dev_list[] = {
 #	include "unusual_onetouch.h"
 	{ }		/* Terminating entry */
 };
diff --git a/drivers/usb/storage/sddr09.c b/drivers/usb/storage/sddr09.c
index 51bcd4a43690..03d1b9c69ea1 100644
--- a/drivers/usb/storage/sddr09.c
+++ b/drivers/usb/storage/sddr09.c
@@ -63,7 +63,7 @@ static int usb_stor_sddr09_init(struct us_data *us);
 { USB_DEVICE_VER(id_vendor, id_product, bcdDeviceMin, bcdDeviceMax), \
   .driver_info = (flags) }
 
-static struct usb_device_id sddr09_usb_ids[] = {
+static const struct usb_device_id sddr09_usb_ids[] = {
 #	include "unusual_sddr09.h"
 	{ }		/* Terminating entry */
 };
@@ -85,7 +85,7 @@ MODULE_DEVICE_TABLE(usb, sddr09_usb_ids);
 	.initFunction = init_function,	\
 }
 
-static struct us_unusual_dev sddr09_unusual_dev_list[] = {
+static const struct us_unusual_dev sddr09_unusual_dev_list[] = {
 #	include "unusual_sddr09.h"
 	{ }		/* Terminating entry */
 };
diff --git a/drivers/usb/storage/sddr55.c b/drivers/usb/storage/sddr55.c
index 0aa079405d23..b8227478a7ad 100644
--- a/drivers/usb/storage/sddr55.c
+++ b/drivers/usb/storage/sddr55.c
@@ -40,7 +40,7 @@ MODULE_IMPORT_NS(USB_STORAGE);
 { USB_DEVICE_VER(id_vendor, id_product, bcdDeviceMin, bcdDeviceMax), \
   .driver_info = (flags) }
 
-static struct usb_device_id sddr55_usb_ids[] = {
+static const struct usb_device_id sddr55_usb_ids[] = {
 #	include "unusual_sddr55.h"
 	{ }		/* Terminating entry */
 };
@@ -62,7 +62,7 @@ MODULE_DEVICE_TABLE(usb, sddr55_usb_ids);
 	.initFunction = init_function,	\
 }
 
-static struct us_unusual_dev sddr55_unusual_dev_list[] = {
+static const struct us_unusual_dev sddr55_unusual_dev_list[] = {
 #	include "unusual_sddr55.h"
 	{ }		/* Terminating entry */
 };
diff --git a/drivers/usb/storage/shuttle_usbat.c b/drivers/usb/storage/shuttle_usbat.c
index f0d0ca37163d..e7c224b7c464 100644
--- a/drivers/usb/storage/shuttle_usbat.c
+++ b/drivers/usb/storage/shuttle_usbat.c
@@ -162,7 +162,7 @@ static int init_usbat_flash(struct us_data *us);
 { USB_DEVICE_VER(id_vendor, id_product, bcdDeviceMin, bcdDeviceMax), \
   .driver_info = (flags) }
 
-static struct usb_device_id usbat_usb_ids[] = {
+static const struct usb_device_id usbat_usb_ids[] = {
 #	include "unusual_usbat.h"
 	{ }		/* Terminating entry */
 };
@@ -184,7 +184,7 @@ MODULE_DEVICE_TABLE(usb, usbat_usb_ids);
 	.initFunction = init_function,	\
 }
 
-static struct us_unusual_dev usbat_unusual_dev_list[] = {
+static const struct us_unusual_dev usbat_unusual_dev_list[] = {
 #	include "unusual_usbat.h"
 	{ }		/* Terminating entry */
 };
diff --git a/drivers/usb/storage/uas.c b/drivers/usb/storage/uas.c
index c223b4dc1b19..03043d567fa1 100644
--- a/drivers/usb/storage/uas.c
+++ b/drivers/usb/storage/uas.c
@@ -927,7 +927,7 @@ static const struct scsi_host_template uas_host_template = {
 { USB_DEVICE_VER(id_vendor, id_product, bcdDeviceMin, bcdDeviceMax), \
 	.driver_info = (flags) }
 
-static struct usb_device_id uas_usb_ids[] = {
+static const struct usb_device_id uas_usb_ids[] = {
 #	include "unusual_uas.h"
 	{ USB_INTERFACE_INFO(USB_CLASS_MASS_STORAGE, USB_SC_SCSI, USB_PR_BULK) },
 	{ USB_INTERFACE_INFO(USB_CLASS_MASS_STORAGE, USB_SC_SCSI, USB_PR_UAS) },
-- 
2.46.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/b1b75a2a64b1f6cfad2a611f71393f281178fd3f.1724507157.git.christophe.jaillet%40wanadoo.fr.
