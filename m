Return-Path: <usb-storage+bncBDL2JPGIZYFRBX4M6L2AKGQEABOE77Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ot1-x346.google.com (mail-ot1-x346.google.com [IPv6:2607:f8b0:4864:20::346])
	by mail.lfdr.de (Postfix) with ESMTPS id 90FE21AFC81
	for <lists+usb-storage@lfdr.de>; Sun, 19 Apr 2020 19:12:01 +0200 (CEST)
Received: by mail-ot1-x346.google.com with SMTP id v8sf3436800otj.5
        for <lists+usb-storage@lfdr.de>; Sun, 19 Apr 2020 10:12:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587316320; cv=pass;
        d=google.com; s=arc-20160816;
        b=tm5NLcsxcufo1QRgvKbPFzzDvI2rqMVwhscktNHo1PQnsIK+4A1U4dXd6sv/ow0C/l
         9neQfqo/ql6c8+4i7h+4IGEzncFYiIKw4oWD3I+xoQSKwJGZPd8vUlVmsql22mHnKbJo
         Wv2gd7GECLCyk+C+fs/rcG2/6I/5iu8Q/RXgTEvR/+pXzJWvW+eiVx0Exc6srFVU3sgp
         RERSrY7sDqaXpKTZdYp/BxAZBw8SxRxU3DOS6LUuJwXITaWB/tmr4BmSpc9t+5sLpv/K
         lzZ8mX1STfKbqRRtcMwSd4udDkl/sZavhxG854YRQ0STejcsrMrtY2YbD02TnUaTOiN0
         LBPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=bXHUabcIQA6ypdEgvy0fh7qEBSLZJrEIg0pU4afFHjE=;
        b=KxJPK9REfcp4l7Zp/HE8CvIg3ipHT6wK8Ceexgg0MqPBb+1LgMV3PM3DEARmFDxmVh
         cqmOc5BoeTMPtH3DDsfl18YzzjtPPw63aRD//OPSatDxRgXh66pKxRB2Lejo90nrjZIL
         KVXMt4z7t8ijW+6RX+sP0CrZ6AlOtr4VRd54ad1h1YGBfE8Axr7mNVrVFnbne6b6eEtz
         L6Qz7lMANt/I+/6HThhh9kKrA60iehMaNWSp1mxWKZh/IC0ILVtcVjxSyjd43r9ccjpD
         Ubi48T5i7N18BElIjovNI+grlt4qSs9TQtyVWxfK/TgrZBlUaqAXkEjDKUPCkFxPO2kS
         8afw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uGpvQuce;
       spf=pass (google.com: domain of nishadkamdar@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=nishadkamdar@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bXHUabcIQA6ypdEgvy0fh7qEBSLZJrEIg0pU4afFHjE=;
        b=WS/WAf+YY/PskhGTEDzBHeGPHF0S2a9p3yNgyDLctZaet578uOEAxDNRGsLixFM3ik
         HjslvQ103w3/zTI3KvK3BdDl2m9wvIhd1sbnI7PCtiEeyfyl0TEFBp5iBd1dbStBITnd
         AV6riMX5DBvgahKBJYmdaXyG/uh3UMwDFDXB4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bXHUabcIQA6ypdEgvy0fh7qEBSLZJrEIg0pU4afFHjE=;
        b=QFjFSfIeu4tc2cM2rAed2lgUE1lW/PTvMZ39EEhBwBScjHVN24+Dkq26wa3CkQsnpT
         At8b9QYhiJdRylO5PCtLkcUiLuG5a5GGn9djB2NbyLD3yZK/mSMQPROJTCjiiE3kXX7a
         jHCzgaK60qAu3SAYE4u84dbm6n2QLy0aj+EACDXZdc+ngOkJbJWBpbtolJizgWoAaKal
         zboWp9jztVEHivE0SDAtrmXrmMVhhRpmCLTfZEly4rPTiMs+4CwdUYfZvdyclxNfGsiA
         Tl5vYNc3n+ZktOyb0WwaG0As4dp/gevyrt+qAB5AGezVMQT1YpfpdK6uoE5AVTt6Zg8y
         frqQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AGi0PuZYkPtTU0AUNoIaFt86z+B2oHc2WrNI5gEWsxjB8dSifk/POxEc
	7ed1cnUavC75hdKtz+oSoqo0cQ==
X-Google-Smtp-Source: APiQypJxYU7r864gaBiJ+je9Ack+RL/2tt79tZDPQGO2wbKHC+GG/oYSQVxTCY/byo5KOQ6gRLMHpQ==
X-Received: by 2002:a9d:5545:: with SMTP id h5mr6826904oti.323.1587316320194;
        Sun, 19 Apr 2020 10:12:00 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aca:b98a:: with SMTP id j132ls1806583oif.3.gmail; Sun, 19
 Apr 2020 10:11:59 -0700 (PDT)
X-Received: by 2002:aca:fdd3:: with SMTP id b202mr8545897oii.63.1587316319856;
        Sun, 19 Apr 2020 10:11:59 -0700 (PDT)
Received: by 2002:a05:6808:1c1:0:0:0:0 with SMTP id x1msoic;
        Sun, 19 Apr 2020 06:17:04 -0700 (PDT)
X-Received: by 2002:a63:f615:: with SMTP id m21mr11782141pgh.107.1587302224409;
        Sun, 19 Apr 2020 06:17:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587302224; cv=none;
        d=google.com; s=arc-20160816;
        b=BLp16vBWSKQXRLgoTy2dgkqNVuRovUXFGX5bG8XXe2R9vyJmDVwuYU+5cuuOsX6HUE
         nJ2NXetWr381prG9N0dhhx3/gvfIuS2CX+bNIwz6+8I/Bwl0y7Ogpyv5mDBzuzqq9WJG
         VscPcJdGntdMnVcViPmgW59kM3xnL8TlqdAPxguK1eBkcCB4muGgac+WAvlzRwzEu0fj
         3KCVcRE2R+kR6k3MBYupQu5dEs8+kuRCIQG79zjBXruOmCtKNtuz72gUQ+r3x0g+ioko
         R+xTdpCOQYoOwL9rCH9C9gFHQrSEQbPilC99lBDk9jnjyXksGQLOXOn53VgC3M03X/hJ
         Hu2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=pojq7IS2ZkV3Xkekvu/Qb2XJwPNKxLd59gsvyr7juZY=;
        b=Rn35C1ruGLGwukZt48PVys7UNsCwgoLVls+rZxrtv6EUMhRsTC99K83gYrVc/BK5m0
         zbu6QsLT0sEv+dJtm/bPvoB1qmhYkB+A6v53xsP8e38cR9qNqIk+Z5ibJxANKecRxnnv
         Dj5T4YAYSIdrK1g/XhF8xhCP2MOUlAVuwGiBxlXICNNzxfEap90j0jJyQAkJuSUkHrnt
         LTkj60MZWJvs71/60kqe44M+M5ndOW4lYgOPTHcL3vPlgRSmaXcXzQIDZJCsPr2ynxEU
         O7sYBBugWK1fvy/mMk5mWcjkU01XeWREKzew+PLlSsK8cy1pJErK7mxFkgGoJ0q75FYG
         WOjw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uGpvQuce;
       spf=pass (google.com: domain of nishadkamdar@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=nishadkamdar@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id 98sor38997935plc.53.2020.04.19.06.17.04
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Sun, 19 Apr 2020 06:17:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishadkamdar@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a17:902:b111:: with SMTP id q17mr11895329plr.160.1587302224002;
        Sun, 19 Apr 2020 06:17:04 -0700 (PDT)
Received: from nishad ([106.51.232.103])
        by smtp.gmail.com with ESMTPSA id mq6sm11535048pjb.38.2020.04.19.06.17.00
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 19 Apr 2020 06:17:03 -0700 (PDT)
Date: Sun, 19 Apr 2020 18:46:57 +0530
From: Nishad Kamdar <nishadkamdar@gmail.com>
To: Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Joe Perches <joe@perches.com>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] [PATCH] USB: Storage: Use the correct style for SPDX
 License Identifier
Message-ID: <20200419131653.GA6611@nishad>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: nishadkamdar@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=uGpvQuce;       spf=pass
 (google.com: domain of nishadkamdar@gmail.com designates 209.85.220.65 as
 permitted sender) smtp.mailfrom=nishadkamdar@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

This patch corrects the SPDX License Identifier style in
header files related to USB Storage driver configuration.
For C header files Documentation/process/license-rules.rst
mandates C-like comments (opposed to C source files where
C++ style should be used).

Changes made by using a script provided by Joe Perches here:
https://lkml.org/lkml/2019/2/7/46.

Suggested-by: Joe Perches <joe@perches.com>
Signed-off-by: Nishad Kamdar <nishadkamdar@gmail.com>
---
 drivers/usb/storage/debug.h              | 2 +-
 drivers/usb/storage/initializers.h       | 2 +-
 drivers/usb/storage/protocol.h           | 2 +-
 drivers/usb/storage/scsiglue.h           | 2 +-
 drivers/usb/storage/transport.h          | 2 +-
 drivers/usb/storage/unusual_alauda.h     | 2 +-
 drivers/usb/storage/unusual_cypress.h    | 2 +-
 drivers/usb/storage/unusual_datafab.h    | 2 +-
 drivers/usb/storage/unusual_devs.h       | 2 +-
 drivers/usb/storage/unusual_ene_ub6250.h | 2 +-
 drivers/usb/storage/unusual_freecom.h    | 2 +-
 drivers/usb/storage/unusual_isd200.h     | 2 +-
 drivers/usb/storage/unusual_jumpshot.h   | 2 +-
 drivers/usb/storage/unusual_karma.h      | 2 +-
 drivers/usb/storage/unusual_onetouch.h   | 2 +-
 drivers/usb/storage/unusual_realtek.h    | 2 +-
 drivers/usb/storage/unusual_sddr09.h     | 2 +-
 drivers/usb/storage/unusual_sddr55.h     | 2 +-
 drivers/usb/storage/unusual_uas.h        | 2 +-
 drivers/usb/storage/unusual_usbat.h      | 2 +-
 drivers/usb/storage/usb.h                | 2 +-
 21 files changed, 21 insertions(+), 21 deletions(-)

diff --git a/drivers/usb/storage/debug.h b/drivers/usb/storage/debug.h
index 16ce06039a4d..a6505ceb6693 100644
--- a/drivers/usb/storage/debug.h
+++ b/drivers/usb/storage/debug.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Driver for USB Mass Storage compliant devices
  * Debugging Functions Header File
diff --git a/drivers/usb/storage/initializers.h b/drivers/usb/storage/initializers.h
index 2dbf9c7d9749..dcd7b7e5eda8 100644
--- a/drivers/usb/storage/initializers.h
+++ b/drivers/usb/storage/initializers.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Header file for Special Initializers for certain USB Mass Storage devices
  *
diff --git a/drivers/usb/storage/protocol.h b/drivers/usb/storage/protocol.h
index 072f1ffda2af..1d102463a66c 100644
--- a/drivers/usb/storage/protocol.h
+++ b/drivers/usb/storage/protocol.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Driver for USB Mass Storage compliant devices
  * Protocol Functions Header File
diff --git a/drivers/usb/storage/scsiglue.h b/drivers/usb/storage/scsiglue.h
index 2bc5ea045bf7..2a79c3ed4d86 100644
--- a/drivers/usb/storage/scsiglue.h
+++ b/drivers/usb/storage/scsiglue.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Driver for USB Mass Storage compliant devices
  * SCSI Connecting Glue Header File
diff --git a/drivers/usb/storage/transport.h b/drivers/usb/storage/transport.h
index fb3bb4ee4ccf..74ffd0d7e7b6 100644
--- a/drivers/usb/storage/transport.h
+++ b/drivers/usb/storage/transport.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Driver for USB Mass Storage compliant devices
  * Transport Functions Header File
diff --git a/drivers/usb/storage/unusual_alauda.h b/drivers/usb/storage/unusual_alauda.h
index 0ec8c99a4976..13f61ec88cde 100644
--- a/drivers/usb/storage/unusual_alauda.h
+++ b/drivers/usb/storage/unusual_alauda.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Unusual Devices File for the Alauda-based card readers
  */
diff --git a/drivers/usb/storage/unusual_cypress.h b/drivers/usb/storage/unusual_cypress.h
index fb99e526cd48..0547daf116a2 100644
--- a/drivers/usb/storage/unusual_cypress.h
+++ b/drivers/usb/storage/unusual_cypress.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Unusual Devices File for devices based on the Cypress USB/ATA bridge
  *	with support for ATACB
diff --git a/drivers/usb/storage/unusual_datafab.h b/drivers/usb/storage/unusual_datafab.h
index fdab5e7d68ca..5335b5d2bd79 100644
--- a/drivers/usb/storage/unusual_datafab.h
+++ b/drivers/usb/storage/unusual_datafab.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Unusual Devices File for the Datafab USB Compact Flash reader
  */
diff --git a/drivers/usb/storage/unusual_devs.h b/drivers/usb/storage/unusual_devs.h
index 1880f3e13f57..325da547827a 100644
--- a/drivers/usb/storage/unusual_devs.h
+++ b/drivers/usb/storage/unusual_devs.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Driver for USB Mass Storage compliant devices
  * Unusual Devices File
diff --git a/drivers/usb/storage/unusual_ene_ub6250.h b/drivers/usb/storage/unusual_ene_ub6250.h
index 9134b91fbd73..a3b32abc2b2f 100644
--- a/drivers/usb/storage/unusual_ene_ub6250.h
+++ b/drivers/usb/storage/unusual_ene_ub6250.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 #if defined(CONFIG_USB_STORAGE_ENE_UB6250) || \
 		defined(CONFIG_USB_STORAGE_ENE_UB6250_MODULE)
 
diff --git a/drivers/usb/storage/unusual_freecom.h b/drivers/usb/storage/unusual_freecom.h
index 949231c7a36b..9ca686364a93 100644
--- a/drivers/usb/storage/unusual_freecom.h
+++ b/drivers/usb/storage/unusual_freecom.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Unusual Devices File for the Freecom USB/IDE adaptor
  */
diff --git a/drivers/usb/storage/unusual_isd200.h b/drivers/usb/storage/unusual_isd200.h
index d03a02cc904e..f248190bd666 100644
--- a/drivers/usb/storage/unusual_isd200.h
+++ b/drivers/usb/storage/unusual_isd200.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Unusual Devices File for In-System Design, Inc. ISD200 ASIC
  */
diff --git a/drivers/usb/storage/unusual_jumpshot.h b/drivers/usb/storage/unusual_jumpshot.h
index c323338881ef..44878f849c1c 100644
--- a/drivers/usb/storage/unusual_jumpshot.h
+++ b/drivers/usb/storage/unusual_jumpshot.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Unusual Devices File for the Lexar "Jumpshot" Compact Flash reader
  */
diff --git a/drivers/usb/storage/unusual_karma.h b/drivers/usb/storage/unusual_karma.h
index 8f1eebd71d2c..9fbed4cbc895 100644
--- a/drivers/usb/storage/unusual_karma.h
+++ b/drivers/usb/storage/unusual_karma.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Unusual Devices File for the Rio Karma
  */
diff --git a/drivers/usb/storage/unusual_onetouch.h b/drivers/usb/storage/unusual_onetouch.h
index c76d4e990f7b..cdfee8f6cf37 100644
--- a/drivers/usb/storage/unusual_onetouch.h
+++ b/drivers/usb/storage/unusual_onetouch.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Unusual Devices File for the Maxtor OneTouch USB hard drive's button
  */
diff --git a/drivers/usb/storage/unusual_realtek.h b/drivers/usb/storage/unusual_realtek.h
index 7e14c2d7cf73..945dcb19d31d 100644
--- a/drivers/usb/storage/unusual_realtek.h
+++ b/drivers/usb/storage/unusual_realtek.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Driver for Realtek RTS51xx USB card reader
  *
diff --git a/drivers/usb/storage/unusual_sddr09.h b/drivers/usb/storage/unusual_sddr09.h
index 650cf2862754..bfb650974129 100644
--- a/drivers/usb/storage/unusual_sddr09.h
+++ b/drivers/usb/storage/unusual_sddr09.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Unusual Devices File for SanDisk SDDR-09 SmartMedia reader
  */
diff --git a/drivers/usb/storage/unusual_sddr55.h b/drivers/usb/storage/unusual_sddr55.h
index e89df2cea7bd..6d6f76eb0630 100644
--- a/drivers/usb/storage/unusual_sddr55.h
+++ b/drivers/usb/storage/unusual_sddr55.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Unusual Devices File for SanDisk SDDR-55 SmartMedia reader
  */
diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
index 1b23741036ee..cfdec74e0f4a 100644
--- a/drivers/usb/storage/unusual_uas.h
+++ b/drivers/usb/storage/unusual_uas.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Driver for USB Attached SCSI devices - Unusual Devices File
  *
diff --git a/drivers/usb/storage/unusual_usbat.h b/drivers/usb/storage/unusual_usbat.h
index 05abf6870b8f..f9d3e5efc39d 100644
--- a/drivers/usb/storage/unusual_usbat.h
+++ b/drivers/usb/storage/unusual_usbat.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Unusual Devices File for SCM Microsystems (a.k.a. Shuttle) USB-ATAPI cable
  */
diff --git a/drivers/usb/storage/usb.h b/drivers/usb/storage/usb.h
index 5850d624cac7..0451fac1adce 100644
--- a/drivers/usb/storage/usb.h
+++ b/drivers/usb/storage/usb.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Driver for USB Mass Storage compliant devices
  * Main Header File
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20200419131653.GA6611%40nishad.
