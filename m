Return-Path: <usb-storage+bncBDTNDO5RRYJRBIUHQCUQMGQEKZO2OJI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x548.google.com (mail-ed1-x548.google.com [IPv6:2a00:1450:4864:20::548])
	by mail.lfdr.de (Postfix) with ESMTPS id 20F377BB82D
	for <lists+usb-storage@lfdr.de>; Fri,  6 Oct 2023 14:54:59 +0200 (CEST)
Received: by mail-ed1-x548.google.com with SMTP id 4fb4d7f45d1cf-53a7cb6ee43sf1759711a12.0
        for <lists+usb-storage@lfdr.de>; Fri, 06 Oct 2023 05:54:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1696596899; cv=pass;
        d=google.com; s=arc-20160816;
        b=BeImn2JxxPneZ2vY0jL2X4r4wlhlxoYvKLHuyulM+cx5hY3mW4augS4BtCwXdovDsk
         f9iYeyCoMFxRLSYrIoyux2QlhMKaXsK20B2ukot1bxdns/yNOY9dvXTfpzABRL4RruAg
         5qHvEdGtQ0/7V2X+rK5QBwVqKD8FQX44a3DQUD0/vrPKIEhje9kpqIGMPbVvEZBSIbXZ
         o++kA0ncKzAGWaGTgtOVvIhuaawIq1dN4MKzgwTSLXdbup42m8XwnKKit+QDgOuE9RSf
         6VAeEPl0bS3vvKst4djYvZLAoDdsUbk+Hc7IkGDmDkibz2s7RDn6v7AwnMiE/4XT/UPv
         x3Gw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=lvx46NPebA5ASR1U/rO38g0+O+5dotgggsSPd4YKETg=;
        fh=a0TltY5qNwl0Oa9ebjgPj0wI1noiSzhlLA8n7ahwZlA=;
        b=fFd8AeBsWLcsWOWqUpKP4rY76s9kLybUzbnV4VOq0g/jPS3OE7yEoBjyJ6YDXmbXeC
         /t4IDUAzD7GnRFZe0CU9Qx2INOX6CmBjYPTJekdzyIO1zAP9tnh6luZmaxSFl8Jet+Sx
         RtLyy++aLPd62lC0AmJy80uSFuhUQScUlg3XHgrI4IKUXL7ETNQKFO3xxeDFuwCdTL+9
         hS0KEgyERw4JPqwB0W2etCl8YLj7v9wiNgQkC/MuYVgVxdZUUUi/pzxkyTXut18ZMk58
         YV+/WKCRe5I34XhULN9BffZwDOpcD2IxGUHcCovFrZnpgc07Vm04hxAt9I+dqwNzHV6e
         v8ig==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b="P3/Hzph0";
       spf=pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gmazyland@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1696596899; x=1697201699; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lvx46NPebA5ASR1U/rO38g0+O+5dotgggsSPd4YKETg=;
        b=IKCNcDItos8azNkoPCMrSgezn8WxmlGYxuDtC+MWmjdfH/GE5xfLOaXoGzAwUEdH0P
         YuA6QW34ibGXTUtkmb6+nbaF1/oYTM4dAkfsyoKgTl2XxgHJj3sIXlTLjmi4pVr3LrAO
         yHTZ4Vc0Face4Q8fEdZpm7TfglB1kNmEouD3I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696596899; x=1697201699;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lvx46NPebA5ASR1U/rO38g0+O+5dotgggsSPd4YKETg=;
        b=X1nLSCsIcRGtKIiY51DPtHq6r0DqrbnCm9/HgknXgKxBJVR/RiF4AT4T7bA/2BVTGM
         kZ1rQWWiT2KWc8kie1zD+jDbnz4TUMFU5erR5H/5rYldh3OGOuMw+2o5Y6X0i6vnIqE8
         FlhGKKPWUdCeUmHTZfiGRxSf5eYwMmuvcf73EGmV86E2TKCHNVh0gQL9mmOMp7futWXO
         iylJKZjQ+fo8vpWrWd6xqqBr4heFgHWgAqbMkeMw4Oa/waJo5vp576cPCyVIfEQmptKL
         a8rU+7HHjo0DbGttrXIZa1nkYNv3L90+5GRRPwQEOXYSgK6++CK/l08GqcsZxJuaHJ2o
         V7Yg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0YyNV65vgWtlp0KtpkPYLiivbURaTr3hEHvlooM058f/v7Rv29KP
	C2tAf/WebxDiM5DHPVFAkiBJ9Q==
X-Google-Smtp-Source: AGHT+IGyZRZrSz4mo2dXRIH8XUHYxC04K4IuljI/J6rEKMPh6PwWjE9KVAYTwHodKVILMWQGHkfRfw==
X-Received: by 2002:a05:6402:5190:b0:534:6b86:eda2 with SMTP id q16-20020a056402519000b005346b86eda2mr3197293edd.21.1696596898837;
        Fri, 06 Oct 2023 05:54:58 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aa7:d683:0:b0:525:57cc:5db4 with SMTP id d3-20020aa7d683000000b0052557cc5db4ls490640edr.0.-pod-prod-00-eu;
 Fri, 06 Oct 2023 05:54:57 -0700 (PDT)
X-Received: by 2002:a17:907:8b8c:b0:9a9:f0e6:904e with SMTP id tb12-20020a1709078b8c00b009a9f0e6904emr4933452ejc.16.1696596897632;
        Fri, 06 Oct 2023 05:54:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1696596897; cv=none;
        d=google.com; s=arc-20160816;
        b=v3lxstGAPON6bHjILyV9WioXF+gR35xVtcvMPPJJsac8bHOLn1KpSvy6Wb93KLCfHe
         w1tEuEMpcjhEiTEgNkUK5JjEK9uGCeRPTfyKgQUWkbs3OdFofYNGEszNB2ZCvampWgfH
         9Fndk970+vpH7jAM9FU3Jg2jBt9ijqgeLxAkxNyDr7cVA+BWmgIOB63FSxKu0SC2fapn
         vmjUbkxFMN4dQ+IKW/PuTHqXEmuIho8v75wKe22epj/RY5Dmqn7LKyhkf7cbdAB7mH/S
         R7j7PsaVA5ZDKwUGKXL21EphFVifTQyxUvuWtsq4yXG8wMRz+dhABWg27XVGdz6U/+9D
         /N8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=WkJhAB2yyx4/iH5CKVtjye33dMpHhtPi+8GMajEKlxw=;
        fh=a0TltY5qNwl0Oa9ebjgPj0wI1noiSzhlLA8n7ahwZlA=;
        b=OteZE6FslzSF0gTgb1CN5t9P8Bc79Ys2sKyAhAM88sZvD9c0JJ/n6bZsyGXWZmzQfA
         rpjIq6cHX+RrxrWRYmKPnc/9l2n0arkQxDaoLnw+3/W2m2eOJlaH9Cgm8KF49KJ+maQd
         K7nyEBX5eQLu9dR8G5THGCI3hK80m3IdNBj29B+GKzyT+VKrvDJcjH5E0n+pzvZs2B+R
         sBl+Iw4dcGSdbP07+oSmcB7W6cCUGDZ+YyiVpkVj0FWR9dhCfKiyvYjrfFWy57ZFM8tH
         6qDMocMkIO368w3QDDDUZl6/+o2qoNWBq/Ic8JxxDHg6+EHcblCYVELgXgXKYQoXWL1F
         l9UQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b="P3/Hzph0";
       spf=pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gmazyland@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id w14-20020a170907270e00b009ae5aa7c627sor1923901ejk.10.2023.10.06.05.54.57
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Fri, 06 Oct 2023 05:54:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a17:906:6a28:b0:9ad:cbc0:9f47 with SMTP id qw40-20020a1709066a2800b009adcbc09f47mr3914024ejc.12.1696596897128;
        Fri, 06 Oct 2023 05:54:57 -0700 (PDT)
Received: from sauvignon.fi.muni.cz (laomedon.fi.muni.cz. [147.251.42.107])
        by smtp.gmail.com with ESMTPSA id p26-20020a1709060dda00b0099bc08862b6sm2894660eji.171.2023.10.06.05.54.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Oct 2023 05:54:56 -0700 (PDT)
From: Milan Broz <gmazyland@gmail.com>
To: linux-usb@vger.kernel.org
Cc: usb-storage@lists.one-eyed-alien.net,
	linux-scsi@vger.kernel.org,
	linux-block@vger.kernel.org,
	stern@rowland.harvard.edu,
	oneukum@suse.com,
	jonathan.derrick@linux.dev,
	Milan Broz <gmazyland@gmail.com>
Subject: [usb-storage] [RFC PATCH 3/6] usb-storage: use fflags index only in
 usb-storage driver
Date: Fri,  6 Oct 2023 14:54:42 +0200
Message-ID: <20231006125445.122380-4-gmazyland@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231006125445.122380-1-gmazyland@gmail.com>
References: <20231006125445.122380-1-gmazyland@gmail.com>
MIME-Version: 1.0
X-Original-Sender: gmazyland@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b="P3/Hzph0";       spf=pass
 (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=gmazyland@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

This patch adds a parameter to use driver_info translation function
(which will be defined in the following patch).

Only USB storage driver will use it, as other drivers do not need
more than 32-bit quirk flags.

Signed-off-by: Milan Broz <gmazyland@gmail.com>
---
 drivers/usb/storage/alauda.c        |  2 +-
 drivers/usb/storage/cypress_atacb.c |  2 +-
 drivers/usb/storage/datafab.c       |  2 +-
 drivers/usb/storage/ene_ub6250.c    |  2 +-
 drivers/usb/storage/freecom.c       |  2 +-
 drivers/usb/storage/isd200.c        |  2 +-
 drivers/usb/storage/jumpshot.c      |  2 +-
 drivers/usb/storage/karma.c         |  2 +-
 drivers/usb/storage/onetouch.c      |  2 +-
 drivers/usb/storage/realtek_cr.c    |  2 +-
 drivers/usb/storage/sddr09.c        |  2 +-
 drivers/usb/storage/sddr55.c        |  2 +-
 drivers/usb/storage/shuttle_usbat.c |  2 +-
 drivers/usb/storage/usb.c           | 10 ++++++----
 drivers/usb/storage/usb.h           |  3 ++-
 15 files changed, 21 insertions(+), 18 deletions(-)

diff --git a/drivers/usb/storage/alauda.c b/drivers/usb/storage/alauda.c
index 115f05a6201a..74e293981ab1 100644
--- a/drivers/usb/storage/alauda.c
+++ b/drivers/usb/storage/alauda.c
@@ -1241,7 +1241,7 @@ static int alauda_probe(struct usb_interface *intf,
 
 	result = usb_stor_probe1(&us, intf, id,
 			(id - alauda_usb_ids) + alauda_unusual_dev_list,
-			&alauda_host_template);
+			&alauda_host_template, 0);
 	if (result)
 		return result;
 
diff --git a/drivers/usb/storage/cypress_atacb.c b/drivers/usb/storage/cypress_atacb.c
index 98b3ec352a13..2fc939f709b0 100644
--- a/drivers/usb/storage/cypress_atacb.c
+++ b/drivers/usb/storage/cypress_atacb.c
@@ -246,7 +246,7 @@ static int cypress_probe(struct usb_interface *intf,
 
 	result = usb_stor_probe1(&us, intf, id,
 			(id - cypress_usb_ids) + cypress_unusual_dev_list,
-			&cypress_host_template);
+			&cypress_host_template, 0);
 	if (result)
 		return result;
 
diff --git a/drivers/usb/storage/datafab.c b/drivers/usb/storage/datafab.c
index bcc4a2fad863..fad9eca3cad9 100644
--- a/drivers/usb/storage/datafab.c
+++ b/drivers/usb/storage/datafab.c
@@ -727,7 +727,7 @@ static int datafab_probe(struct usb_interface *intf,
 
 	result = usb_stor_probe1(&us, intf, id,
 			(id - datafab_usb_ids) + datafab_unusual_dev_list,
-			&datafab_host_template);
+			&datafab_host_template, 0);
 	if (result)
 		return result;
 
diff --git a/drivers/usb/storage/ene_ub6250.c b/drivers/usb/storage/ene_ub6250.c
index 97c66c0d91f4..6985d3419b3c 100644
--- a/drivers/usb/storage/ene_ub6250.c
+++ b/drivers/usb/storage/ene_ub6250.c
@@ -2331,7 +2331,7 @@ static int ene_ub6250_probe(struct usb_interface *intf,
 
 	result = usb_stor_probe1(&us, intf, id,
 		   (id - ene_ub6250_usb_ids) + ene_ub6250_unusual_dev_list,
-		   &ene_ub6250_host_template);
+		   &ene_ub6250_host_template, 0);
 	if (result)
 		return result;
 
diff --git a/drivers/usb/storage/freecom.c b/drivers/usb/storage/freecom.c
index 2b098b55c4cb..6d971bd711d8 100644
--- a/drivers/usb/storage/freecom.c
+++ b/drivers/usb/storage/freecom.c
@@ -548,7 +548,7 @@ static int freecom_probe(struct usb_interface *intf,
 
 	result = usb_stor_probe1(&us, intf, id,
 			(id - freecom_usb_ids) + freecom_unusual_dev_list,
-			&freecom_host_template);
+			&freecom_host_template, 0);
 	if (result)
 		return result;
 
diff --git a/drivers/usb/storage/isd200.c b/drivers/usb/storage/isd200.c
index 4e0eef1440b7..ecdc494756a2 100644
--- a/drivers/usb/storage/isd200.c
+++ b/drivers/usb/storage/isd200.c
@@ -1545,7 +1545,7 @@ static int isd200_probe(struct usb_interface *intf,
 
 	result = usb_stor_probe1(&us, intf, id,
 			(id - isd200_usb_ids) + isd200_unusual_dev_list,
-			&isd200_host_template);
+			&isd200_host_template, 0);
 	if (result)
 		return result;
 
diff --git a/drivers/usb/storage/jumpshot.c b/drivers/usb/storage/jumpshot.c
index 229bf0c1afc9..1ade1e45c81d 100644
--- a/drivers/usb/storage/jumpshot.c
+++ b/drivers/usb/storage/jumpshot.c
@@ -653,7 +653,7 @@ static int jumpshot_probe(struct usb_interface *intf,
 
 	result = usb_stor_probe1(&us, intf, id,
 			(id - jumpshot_usb_ids) + jumpshot_unusual_dev_list,
-			&jumpshot_host_template);
+			&jumpshot_host_template, 0);
 	if (result)
 		return result;
 
diff --git a/drivers/usb/storage/karma.c b/drivers/usb/storage/karma.c
index 38ddfedef629..60868be0e38c 100644
--- a/drivers/usb/storage/karma.c
+++ b/drivers/usb/storage/karma.c
@@ -205,7 +205,7 @@ static int karma_probe(struct usb_interface *intf,
 
 	result = usb_stor_probe1(&us, intf, id,
 			(id - karma_usb_ids) + karma_unusual_dev_list,
-			&karma_host_template);
+			&karma_host_template, 0);
 	if (result)
 		return result;
 
diff --git a/drivers/usb/storage/onetouch.c b/drivers/usb/storage/onetouch.c
index 01f3c2779ccf..fe34f20cce03 100644
--- a/drivers/usb/storage/onetouch.c
+++ b/drivers/usb/storage/onetouch.c
@@ -280,7 +280,7 @@ static int onetouch_probe(struct usb_interface *intf,
 
 	result = usb_stor_probe1(&us, intf, id,
 			(id - onetouch_usb_ids) + onetouch_unusual_dev_list,
-			&onetouch_host_template);
+			&onetouch_host_template, 0);
 	if (result)
 		return result;
 
diff --git a/drivers/usb/storage/realtek_cr.c b/drivers/usb/storage/realtek_cr.c
index 0c423916d7bf..892b26714b5f 100644
--- a/drivers/usb/storage/realtek_cr.c
+++ b/drivers/usb/storage/realtek_cr.c
@@ -1041,7 +1041,7 @@ static int realtek_cr_probe(struct usb_interface *intf,
 	result = usb_stor_probe1(&us, intf, id,
 				 (id - realtek_cr_ids) +
 				 realtek_cr_unusual_dev_list,
-				 &realtek_cr_host_template);
+				 &realtek_cr_host_template, 0);
 	if (result)
 		return result;
 
diff --git a/drivers/usb/storage/sddr09.c b/drivers/usb/storage/sddr09.c
index 51bcd4a43690..107eeb7fda04 100644
--- a/drivers/usb/storage/sddr09.c
+++ b/drivers/usb/storage/sddr09.c
@@ -1753,7 +1753,7 @@ static int sddr09_probe(struct usb_interface *intf,
 
 	result = usb_stor_probe1(&us, intf, id,
 			(id - sddr09_usb_ids) + sddr09_unusual_dev_list,
-			&sddr09_host_template);
+			&sddr09_host_template, 0);
 	if (result)
 		return result;
 
diff --git a/drivers/usb/storage/sddr55.c b/drivers/usb/storage/sddr55.c
index 15dc25801cdc..c64b72de453f 100644
--- a/drivers/usb/storage/sddr55.c
+++ b/drivers/usb/storage/sddr55.c
@@ -985,7 +985,7 @@ static int sddr55_probe(struct usb_interface *intf,
 
 	result = usb_stor_probe1(&us, intf, id,
 			(id - sddr55_usb_ids) + sddr55_unusual_dev_list,
-			&sddr55_host_template);
+			&sddr55_host_template, 0);
 	if (result)
 		return result;
 
diff --git a/drivers/usb/storage/shuttle_usbat.c b/drivers/usb/storage/shuttle_usbat.c
index f0d0ca37163d..3ac82f49401c 100644
--- a/drivers/usb/storage/shuttle_usbat.c
+++ b/drivers/usb/storage/shuttle_usbat.c
@@ -1838,7 +1838,7 @@ static int usbat_probe(struct usb_interface *intf,
 
 	result = usb_stor_probe1(&us, intf, id,
 			(id - usbat_usb_ids) + usbat_unusual_dev_list,
-			&usbat_host_template);
+			&usbat_host_template, 0);
 	if (result)
 		return result;
 
diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index d1ad6a2509ab..72b48b94aa5f 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -574,7 +574,7 @@ EXPORT_SYMBOL_GPL(usb_stor_adjust_quirks);
 
 /* Get the unusual_devs entries and the string descriptors */
 static int get_device_info(struct us_data *us, const struct usb_device_id *id,
-		const struct us_unusual_dev *unusual_dev)
+		const struct us_unusual_dev *unusual_dev, int fflags_use_index)
 {
 	struct usb_device *dev = us->pusb_dev;
 	struct usb_interface_descriptor *idesc =
@@ -590,6 +590,7 @@ static int get_device_info(struct us_data *us, const struct usb_device_id *id,
 			idesc->bInterfaceProtocol :
 			unusual_dev->useTransport;
 	us->fflags = id->driver_info;
+
 	usb_stor_adjust_quirks(us->pusb_dev, &us->fflags);
 
 	if (us->fflags & US_FL_IGNORE_DEVICE) {
@@ -925,7 +926,8 @@ int usb_stor_probe1(struct us_data **pus,
 		struct usb_interface *intf,
 		const struct usb_device_id *id,
 		const struct us_unusual_dev *unusual_dev,
-		const struct scsi_host_template *sht)
+		const struct scsi_host_template *sht,
+		int fflags_use_index)
 {
 	struct Scsi_Host *host;
 	struct us_data *us;
@@ -962,7 +964,7 @@ int usb_stor_probe1(struct us_data **pus,
 		goto BadDevice;
 
 	/* Get the unusual_devs entries and the descriptors */
-	result = get_device_info(us, id, unusual_dev);
+	result = get_device_info(us, id, unusual_dev, fflags_use_index);
 	if (result)
 		goto BadDevice;
 
@@ -1120,7 +1122,7 @@ static int storage_probe(struct usb_interface *intf,
 	}
 
 	result = usb_stor_probe1(&us, intf, id, unusual_dev,
-				 &usb_stor_host_template);
+				 &usb_stor_host_template, 1);
 	if (result)
 		return result;
 
diff --git a/drivers/usb/storage/usb.h b/drivers/usb/storage/usb.h
index 97c6196d639b..975c47efcce7 100644
--- a/drivers/usb/storage/usb.h
+++ b/drivers/usb/storage/usb.h
@@ -187,7 +187,8 @@ extern int usb_stor_probe1(struct us_data **pus,
 		struct usb_interface *intf,
 		const struct usb_device_id *id,
 		const struct us_unusual_dev *unusual_dev,
-		const struct scsi_host_template *sht);
+		const struct scsi_host_template *sht,
+		int fflags_use_index);
 extern int usb_stor_probe2(struct us_data *us);
 extern void usb_stor_disconnect(struct usb_interface *intf);
 
-- 
2.42.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20231006125445.122380-4-gmazyland%40gmail.com.
