Return-Path: <usb-storage+bncBAABBC5UTD4AKGQESADY3SA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x848.google.com (mail-qt1-x848.google.com [IPv6:2607:f8b0:4864:20::848])
	by mail.lfdr.de (Postfix) with ESMTPS id 03FC8219036
	for <lists+usb-storage@lfdr.de>; Wed,  8 Jul 2020 21:10:05 +0200 (CEST)
Received: by mail-qt1-x848.google.com with SMTP id m25sf29295598qtk.1
        for <lists+usb-storage@lfdr.de>; Wed, 08 Jul 2020 12:10:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594235404; cv=pass;
        d=google.com; s=arc-20160816;
        b=c2PyeEhtVZGCUJRJgnixt03Ti4N6TZOM01bxrei3Itp2rH99Ph8PRJ6RTWaP1i9eA7
         toQtC+nMCVE3K23PUh15C6ZZUoY4dD27DzXPlfrjDf4JZOY1LcaO361DFE2+e6Ty2Jdh
         lf1RgdRDmBJmx67G+aOavNs3TewhXlJESgyKKerqaGycnLGkcMvZ249cBlvhk3BAvv0Z
         YKAQ9EbgaYiMOECPWWp1EunNmIwGgXgxKIwQwBqmuyB4XvPig0f2r18NS0z4wzVh+Tl3
         XBaL5GR9t7wV3WRubtu4tDFp4BlhsxsDoqqrS2GtecUj6WxUhK39z1okqNr/P6ehYaa6
         umwg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=7fkeYS8M4TRmPk6MRPfO9t8g+IdSvkICqumNpFKAk0o=;
        b=ewIb+4yG3RafYrn7xpPnFAJg88MPRqS8z+vZ5U4DPSe0ae3uxDUIOs5PBzO92mfrP3
         L5tRKZg4i/w9MNFtXOAAB+G6jye+0Z6UrIdIWXLr17CeDt36n0JHdp1HnyDAgWB/UJ1F
         VNQlS+xuroKbk//MwbYitego+wkuCrM69GsTtLOa3bSVpBjTrT/abroXHrwPtH8xouwy
         0/odo9ZtedH+Y6mL4xwntTnXjl5e1PBrVQyyyjVezcfDjRJ+6vT6s+nuD/xW3tqHMkGx
         FVoy7ju4q+3pRZ/NbJoPfPxfGt/wYbRJFV/TZovvpFw3vWnDLT7nxX9JDsQlHHxCnmOI
         41/Q==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: best guess record for domain of grandmaster@al2klimov.de designates 78.46.175.9 as permitted sender) smtp.mailfrom=grandmaster@al2klimov.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7fkeYS8M4TRmPk6MRPfO9t8g+IdSvkICqumNpFKAk0o=;
        b=aRDjFh6syWYT/N/g4alT/vY54KCJ/wK8Nh/nMOKcXjMd1yH7wQQkjKsLC8w76l0jVZ
         Xo7igXD/SJR8eb+5baHWL6abW3Y8J/CxxoDY7xerR55BboYuYgx3dElJ5SKJNoq2os1K
         5MkbPjYPnEn+7ViCejGSKD5DCXcDwJYAJQhyM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7fkeYS8M4TRmPk6MRPfO9t8g+IdSvkICqumNpFKAk0o=;
        b=HWazuq9fiEERZ5ZcNm6ajIr+5lWm97WEqoh9i9VIGZJKPzcC9FlppcnsBf992B+HIn
         1DzyW6DVsNSQ9byuiCJ6iWBt092rzmuV2PPbUhaX4WDrGuGtv2ceD4UsSb3ljuV3+wJ7
         JJTyKWDy8MSNwc3hknDRL7WYZNwP69TULtl89HaRoaQGj5Hsx5pk3binyAWqT/HAPMmE
         vZRhD5E3FKSP8i7cYFDAKOiKisgYNjax7l9UERqpHCfMGT1RgbgJVx76foyLZKh6TdLE
         ygRzV+qDtDh/N6ctd3H72IwpvG2BUvUBUSu+R8MI/wLtRTroM6VzwaWSeo+DgLW/JCJF
         wabA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM531eNJwTkb2uO65GzWMIY3uVIbaypzsXZSq+ZFX8/7zGI2s4RJQE
	ul8WQI4xu0AAdHMp0IClkovX+w==
X-Google-Smtp-Source: ABdhPJwHYHxDGWgofy6ZM7dyHvayINPMNwzmpEobooTAYKwirj/XyesvAiBvzK3qDj2aopFhLUyDlQ==
X-Received: by 2002:a37:2c46:: with SMTP id s67mr58009518qkh.151.1594235403954;
        Wed, 08 Jul 2020 12:10:03 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:620a:120e:: with SMTP id u14ls1534028qkj.10.gmail; Wed,
 08 Jul 2020 12:10:03 -0700 (PDT)
X-Received: by 2002:a37:6190:: with SMTP id v138mr57716449qkb.121.1594235403633;
        Wed, 08 Jul 2020 12:10:03 -0700 (PDT)
Received: by 2002:a37:a558:0:b029:e6:9584:d5fd with SMTP id o85-20020a37a5580000b02900e69584d5fdmsqke;
        Wed, 8 Jul 2020 11:49:12 -0700 (PDT)
X-Received: by 2002:a5d:6990:: with SMTP id g16mr50807456wru.131.1594234151797;
        Wed, 08 Jul 2020 11:49:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594234151; cv=none;
        d=google.com; s=arc-20160816;
        b=fUxuBXPoAhqWQNIwW+ZSLfyVhVDD94f9hE3tnU95JdXXmu4OBVV9DmT6U//bRyCPuR
         TAw8mbVEk7igVqcZandl/BWe3m2r3JdB0MbTM4Z2dLrtlLOH76e65vc39YnRnBHbZ31+
         m8PSGpI+KfYe4qzkvJzKEHaxQ5Lt1VWQUPGsxyLyo1HKLDm6kDnLmJT0vUMPGKqAyqu6
         aVY2qaH4uSn1F0cVkH6ok4/liYjpa928Y9XDjWDPqQlVJqYIdwyQqGjJTEcIkDMVjHl/
         Krym9YTBPhdAyyuzS1hN5QCRM5XqadpsQJfDPNFCpFFCpt79haJvl4Kpf8Z1ATPMgSVF
         CMdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=r/SMVM5DRhqpIpZxsk0WsnS+8o79PAqW5rjkZbf0iFA=;
        b=X8INHyreskBSrJJ4zK3VSykv6JbUDLUQOFW6hJEBWu23H+NcgP8BmcCSwSumMktQ3Q
         0Ci8nJriPvdjXaFj3MhMYvW2p/hlwM0tPDSBR085CiYicBhkL8bpjr14pEHiGx6obTE/
         Prmb65cl7HqJ0VYb6bamh/gNCgUhyUxC9qnhe6yxEHuIagwnR1dmFF3OehNoRkOHOAyl
         EYJAmoPQPvKTrjTeN0zv5uQuC6bYagD0BIyYCoI+iMh3pPzaYVpWwWQJhVQffovqNv4l
         SieBcur7z8TOKH7IMV3lcuzqoCbypiJw6JMPuMjaOAjO/9Iac4jV/KlAn/BubZICyppi
         Px5w==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: best guess record for domain of grandmaster@al2klimov.de designates 78.46.175.9 as permitted sender) smtp.mailfrom=grandmaster@al2klimov.de
Received: from smtp.al2klimov.de (smtp.al2klimov.de. [78.46.175.9])
        by mx.google.com with ESMTPS id f22si527184wmj.144.2020.07.08.11.49.11
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jul 2020 11:49:11 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of grandmaster@al2klimov.de designates 78.46.175.9 as permitted sender) client-ip=78.46.175.9;
Received: from authenticated-user (PRIMARY_HOSTNAME [PUBLIC_IP])
	by smtp.al2klimov.de (Postfix) with ESMTPA id 06A1EBC0D4;
	Wed,  8 Jul 2020 18:49:09 +0000 (UTC)
From: "Alexander A. Klimov" <grandmaster@al2klimov.de>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org
Cc: "Alexander A. Klimov" <grandmaster@al2klimov.de>
Subject: [usb-storage] [PATCH] USB: storage: replace HTTP links with HTTPS ones
Date: Wed,  8 Jul 2020 20:49:03 +0200
Message-Id: <20200708184903.17350-1-grandmaster@al2klimov.de>
In-Reply-To: <20200708103928.GC585606@kroah.com>
References: <20200708103928.GC585606@kroah.com>
MIME-Version: 1.0
X-Spamd-Bar: +++++
X-Spam-Level: *****
X-Original-Sender: grandmaster@al2klimov.de
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 best guess record for domain of grandmaster@al2klimov.de designates
 78.46.175.9 as permitted sender) smtp.mailfrom=grandmaster@al2klimov.de
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20200708184903.17350-1-grandmaster%40al2klimov.de.
