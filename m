Return-Path: <usb-storage+bncBAABBC5UTD4AKGQESADY3SA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x748.google.com (mail-qk1-x748.google.com [IPv6:2607:f8b0:4864:20::748])
	by mail.lfdr.de (Postfix) with ESMTPS id E35D8219035
	for <lists+usb-storage@lfdr.de>; Wed,  8 Jul 2020 21:10:04 +0200 (CEST)
Received: by mail-qk1-x748.google.com with SMTP id 204sf31665049qki.20
        for <lists+usb-storage@lfdr.de>; Wed, 08 Jul 2020 12:10:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594235404; cv=pass;
        d=google.com; s=arc-20160816;
        b=QDbLW54Kj0IjCnYUflNu5MoikxYuzh7ZGetOQqWaYrfOZDrPc19eouZyLPIGH5gp6Q
         hiXscG31BXCU1qdrlH1WuhS/iL1ag4GaZYSpn5cz+c/IjnXWHlHnq8KrNx/Pb5kFIMLN
         S9EdBeCwXHFYkrhVW4dqmdaFL244n8VkNyIiZzO9uFAoPHnVrmq8aEafAgFi47LMq/vl
         LGZ4B6PdCCzlqWELNCMNFw0HII5w86SR/hQo85c3FjM0iUADlj5Si2cx0PRriMWAS+MT
         urLqWYDizeJlNRqnQpVPViPCr6wlycHRd2Xc7gM2XhD9pWAk9GA4j1bDai8bHrCq/BVE
         dnFw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=iXq3dKALmu+H9SzsZ5KR5SKt7PnZ5DuNhanBgL96yHg=;
        b=rPN1h7i/ODsKamhrsIoG76lcu2y90RZUOkjPd9W81VD5P1RBWSMZjc/D3vpOLaDALJ
         kYCRd9IeX0DuCsO6lRPzA57S6RG6fNnxfKbA9jxBu5I3G9WAelVpg2O+m0/3HksNaCP7
         wn+WehXMRdNuaM6kKocmQCMgilLJ917i7tF/i44yioYGp4seXSR+oRjmL+yTXhRvqVPU
         23hgp09IH//ov2h/yb+cjq7QxLSrkUfwGDpeht98L+UfLZgZ1nUon/rOxabYryH+g/K4
         Mx10Cz+8+nYl6E2nT7bfq0tlwCHcRbPXyHNUogp2oz3p2vDWawy+PozL6dtZ731c4IvV
         PaRw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: best guess record for domain of grandmaster@al2klimov.de designates 2a01:4f8:c0c:1465::1 as permitted sender) smtp.mailfrom=grandmaster@al2klimov.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iXq3dKALmu+H9SzsZ5KR5SKt7PnZ5DuNhanBgL96yHg=;
        b=eHniuqGhF/2T45HpZpVhs55ZUU/Yglf2w2eC5VGtEkJOK9/iEPV/3DfPd6O4bxG79s
         tVn0sLhi2fEuZxQ+Ct8qx68tJNI3iJlsDoo4gP/0DrmTdbtX88mlSxkkemzI39HVjlQN
         Gz74tiXFEsN92flaWsZxX8yN1fOV+H6N/RhXk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iXq3dKALmu+H9SzsZ5KR5SKt7PnZ5DuNhanBgL96yHg=;
        b=AxQ2yG/3yI5ZqNAix01JjP1ZwTUEJ8OTXAhqCNRZ+ztBuCWlIaYW5gULHHwSIJXI/T
         DofGJFrEk2GM3PoHfIJC4Zl1YaBYyz8xEqX2NBv8lZ2Th8FtBeJ1YjscvCpXCK1//fPn
         Tc9qlDGMzIbmbEk2v9c9Y9GNg3RTmHvz3+RlidapgNagLGMR5TsLT4LwpUGWvKm+c3Vg
         B9Xfemsrt91hOjTFrvHFIIhHCiE9h35tMOuV0x5UYaLU8Fk/+A3xz6fgDppYMG6iv9lr
         Qkw7rPUC6zv8mVwWi0+FcTnbFPDw9Nox2+9ZwFHqOaHCUFgIrLVukR33N3tYufx9MtUI
         N2rQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM531A1tNLo1bKCMv80xdMT991thFZGviIAh/GmVRnv+NRm7ha5kix
	CMacPilJ48jG7jL14H+z5knCwQ==
X-Google-Smtp-Source: ABdhPJxJmtjNcHSA10rQ0Sye/grRHPdilC/zV0qK7ImV+dgPqpeQwmaMPGHlTIoVb7LihlsntZNZKQ==
X-Received: by 2002:a05:620a:4ca:: with SMTP id 10mr60249127qks.250.1594235403905;
        Wed, 08 Jul 2020 12:10:03 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a0c:df8a:: with SMTP id w10ls739950qvl.4.gmail; Wed, 08 Jul
 2020 12:10:03 -0700 (PDT)
X-Received: by 2002:ad4:54e9:: with SMTP id k9mr55170242qvx.193.1594235403641;
        Wed, 08 Jul 2020 12:10:03 -0700 (PDT)
Received: by 2002:a37:4d4d:0:b029:e6:9584:d5fd with SMTP id a74-20020a374d4d0000b02900e69584d5fdmsqkb;
        Wed, 8 Jul 2020 02:55:09 -0700 (PDT)
X-Received: by 2002:a5d:4a4f:: with SMTP id v15mr55038009wrs.87.1594202108549;
        Wed, 08 Jul 2020 02:55:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594202108; cv=none;
        d=google.com; s=arc-20160816;
        b=VyAvQtIDThHTNg00tItOEQ3MyQy6ayGxCGntWqBu/3RZcn6oPUy2veTcuqFFT+Z76d
         mGnjidc0P0IodwUt2wvL/80IBipNYhTqA5BNoM4KKEy7u9hYO6Kbi202k5f6LWbgVzWC
         8HKvd1oCkMbGljH7HeW7WE4Sf5582ZnxIamaabBrDp5NOD+a+aFL08pw/WL5rmXZdkFw
         /KOYBPgaO+DVLvlCqjsGoNf7qF03W4AyhJyH794OYxkYpd8c2nqsruOf5LI29vJgf7Y5
         Gax3QNBXIPY8D0C1Dhxa+fvIP6lc4uHeJxSti/h+mEdYpr2NikIVPcU3/Pox8Zekr94e
         UZ3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=Wt9ov6DCwK1J5D2W2qxJHCRyroGMiUYG9/Elz4dVcHA=;
        b=IZbZ5duB49hIkZnY6jYYj3U3BUX74kKhqbgF7tbjF4bkb9GbXIJwT0q4rz2MdIlEZa
         OKDFrGnIgDWwSA8zsw0Gt/lcrs0h9zvPEYu6DsfWrWIrO3dN4OzmeX0GIMxpJRhhzedA
         jT7m0MT7tDDl9XN/4Xb+rm56xoKvISENqSMP+GW9IkvMe/BUa1OqXtDLY/SG3CPqgSsZ
         HkCzl048pDaKOdeA9xQRMLY4LRYUKE6MZ2PfSxbei8OSL9TYjGaSM4y+AAq/rfbw9e99
         KFxLaRcsY/WwL9Fmaw9hoEHYNjA4J6SWhO4pLHkWqvi9+ThTGCtaozNMl51ikRiTRj2m
         UGsA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: best guess record for domain of grandmaster@al2klimov.de designates 2a01:4f8:c0c:1465::1 as permitted sender) smtp.mailfrom=grandmaster@al2klimov.de
Received: from smtp.al2klimov.de (smtp.al2klimov.de. [2a01:4f8:c0c:1465::1])
        by mx.google.com with ESMTPS id a201si4776176wmd.145.2020.07.08.02.55.08
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jul 2020 02:55:08 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of grandmaster@al2klimov.de designates 2a01:4f8:c0c:1465::1 as permitted sender) client-ip=2a01:4f8:c0c:1465::1;
Received: from authenticated-user (PRIMARY_HOSTNAME [PUBLIC_IP])
	by smtp.al2klimov.de (Postfix) with ESMTPA id B7D6DBC0C2;
	Wed,  8 Jul 2020 09:55:06 +0000 (UTC)
From: "Alexander A. Klimov" <grandmaster@al2klimov.de>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org
Cc: "Alexander A. Klimov" <grandmaster@al2klimov.de>
Subject: [usb-storage] [PATCH] Replace HTTP links with HTTPS ones: USB MASS
 STORAGE DRIVER
Date: Wed,  8 Jul 2020 11:55:00 +0200
Message-Id: <20200708095500.13694-1-grandmaster@al2klimov.de>
MIME-Version: 1.0
X-Spamd-Bar: +++++
X-Spam-Level: *****
X-Original-Sender: grandmaster@al2klimov.de
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 best guess record for domain of grandmaster@al2klimov.de designates
 2a01:4f8:c0c:1465::1 as permitted sender) smtp.mailfrom=grandmaster@al2klimov.de
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

Rationale:
Reduces attack surface on kernel devs opening the links for MITM
as HTTPS traffic is much harder to manipulate.

Deterministic algorithm:
For each file:
  If not .svg:
    For each line:
      If doesn't contain `\bxmlns\b`:
        For each link, `\bhttp://[^# \t\r\n]*(?:\w|/)`:
	  If neither `\bgnu\.org/license`, nor `\bmozilla\.org/MPL\b`:
            If both the HTTP and HTTPS versions
            return 200 OK and serve the same content:
              Replace HTTP with HTTPS.

Signed-off-by: Alexander A. Klimov <grandmaster@al2klimov.de>
---
 Continuing my work started at 93431e0607e5.
 See also: git log --oneline '--author=Alexander A. Klimov <grandmaster@al2klimov.de>' v5.7..master
 (Actually letting a shell for loop submit all this stuff for me.)

 If there are any URLs to be removed completely or at least not HTTPSified:
 Just clearly say so and I'll *undo my change*.
 See also: https://lkml.org/lkml/2020/6/27/64

 If there are any valid, but yet not changed URLs:
 See: https://lkml.org/lkml/2020/6/26/837

 If you apply the patch, please let me know.


 drivers/usb/storage/Kconfig        | 2 +-
 drivers/usb/storage/freecom.c      | 2 +-
 drivers/usb/storage/unusual_devs.h | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/storage/Kconfig b/drivers/usb/storage/Kconfig
index 5335a7ff5d14..d17b60a644ef 100644
--- a/drivers/usb/storage/Kconfig
+++ b/drivers/usb/storage/Kconfig
@@ -57,7 +57,7 @@ config USB_STORAGE_FREECOM
 	tristate "Freecom USB/ATAPI Bridge support"
 	help
 	  Support for the Freecom USB to IDE/ATAPI adaptor.
-	  Freecom has a web page at <http://www.freecom.de/>.
+	  Freecom has a web page at <https://www.freecom.de/>.
 
 	  If this driver is compiled as a module, it will be named ums-freecom.
 
diff --git a/drivers/usb/storage/freecom.c b/drivers/usb/storage/freecom.c
index 34e7eaff1174..3d5f7d0ff0f1 100644
--- a/drivers/usb/storage/freecom.c
+++ b/drivers/usb/storage/freecom.c
@@ -11,7 +11,7 @@
  *
  * This driver was developed with information provided in FREECOM's USB
  * Programmers Reference Guide.  For further information contact Freecom
- * (http://www.freecom.de/)
+ * (https://www.freecom.de/)
  */
 
 #include <linux/module.h>
diff --git a/drivers/usb/storage/unusual_devs.h b/drivers/usb/storage/unusual_devs.h
index b6a9a7451620..220ae2c356ee 100644
--- a/drivers/usb/storage/unusual_devs.h
+++ b/drivers/usb/storage/unusual_devs.h
@@ -44,7 +44,7 @@
  * mode.  Existing userspace solutions are superior.
  *
  * New mode switching devices should instead be added to the database
- * maintained at http://www.draisberghof.de/usb_modeswitch/
+ * maintained at https://www.draisberghof.de/usb_modeswitch/
  */
 
 #if !defined(CONFIG_USB_STORAGE_SDDR09) && \
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20200708095500.13694-1-grandmaster%40al2klimov.de.
