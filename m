Return-Path: <usb-storage+bncBCUMB4EN24LRBRHCRXVQKGQEW5EI5KQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wr1-x445.google.com (mail-wr1-x445.google.com [IPv6:2a00:1450:4864:20::445])
	by mail.lfdr.de (Postfix) with ESMTPS id DBD2B9C8BE
	for <lists+usb-storage@lfdr.de>; Mon, 26 Aug 2019 07:42:28 +0200 (CEST)
Received: by mail-wr1-x445.google.com with SMTP id k14sf9125738wrv.2
        for <lists+usb-storage@lfdr.de>; Sun, 25 Aug 2019 22:42:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566798148; cv=pass;
        d=google.com; s=arc-20160816;
        b=BUErFaufdlOXIdD7StmpOoJ5OvrfRfGmjtUXSLLlSyk2ltQ00nTS9KHGwabkn1diI5
         oqJP3irnwoyAseB+x3VGEXUU2U+4CXJd33lipVMcW9tuBCe71MU+kZtMJ1NvUn7H1LkB
         ZK6iryTO9F1VtdKmU/mYjy17mtHbEn7MEOQagidbihoJvhahG0zR/e7ePeLlN1UYRcHG
         Z5FXRwGaxti0fJ/oEuQPLjQ4aeOqIloCbsOAmH/L3A5VrEOJ+j/k0f+M9m+bA4yXWzWW
         01bDwVMOOSRP3E7bvl7qtNTJD+xLGfhrFvY7u+qjpjn9+vjSOfEBHYg5u2WJcrKQ9m5l
         CntA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=+YkaSF/n82HeZLI5WRLRokmxx36b+THnUWldGCicdo4=;
        b=KsjbSkNd6ddoh2T04P9nay4pvpYltRkWCEGbVAaILFskF0iHVzn5bgeddGPtno1GdA
         AaeqilUg5mUyCbgU5+hObWeqJVE7x96whdH8QFfE/+xCthUEa0PQTzZfGnKhrO4V8oRE
         kUP/f/lllunpJCMgUImZjyj+NVKVk69Nr/3elxAGqu//3Hq2P1a8YYcdF+wXhc3uY86m
         Eah7uLT0qZHP9m3xa1PDaTSSFDW6jef3O3Asm8abzq1GIcl+HSMd28rrvE2j9K+zFM6O
         hmd2+ISaVSOXK2yWooVw52UzzOUqbLQ1SGhJvEvDp1M4GQSNAAGc30ItIC7Avvobsjc0
         IPQQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: best guess record for domain of kai.heng.feng@canonical.com designates 91.189.89.112 as permitted sender) smtp.mailfrom=kai.heng.feng@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+YkaSF/n82HeZLI5WRLRokmxx36b+THnUWldGCicdo4=;
        b=N9RCve8421V2D+DL7HqpoPynu7ick6jxnk5IwcQLxuZgs7EIw8mSogLidSSCnOs6aP
         t3ZGnAC2tXuCERPl2h97VjNcvLUriN0S2bW+j7qyGMWQ3yd1Jwzww2PmINYX+0ALC24L
         ImYwA7gLSx2VT5+/rl0GrzdFCBNSkz+A4M9CI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+YkaSF/n82HeZLI5WRLRokmxx36b+THnUWldGCicdo4=;
        b=JZcAbO+SuO6Hh73d5Yfd0XeE7D6WFAXD4p8MmjUWw0CH6qpPc6Ywdf1wgBiuMGYm6c
         tFYEqrgghsDJQRqbnbQV9wuWS4t6mzcRUEFXZUOepSH1CezrhtnVnihbxLFU9bZYN9Gz
         S22WY/rja5aua8R5np282MWI4m1jb5t/4ixtTPLxebzMmfKgrad10CoAaoDdNHMrk9MM
         V8LyN+tNKi3cFEqeUQfbU21rFr3cKfOQTpdqrQPmeIbqoboJHm0xt15UKMyg0LcPptuE
         Jme1JmiFOG20oxX1+rvWtJgg7zT7JlsPe3S8NEU8czHxc1XxYJtEAqEHZ0nCWT7ONN2k
         1sSw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAXS/pVrB0iBCw3OSiE+/tQVdaX8uDILAxU7EstGKQmdlDVnopw9
	Wh2NLiTXS7ix4pAlbRHN7/DbHw==
X-Google-Smtp-Source: APXvYqx6Nvacet6YGU77jUCSvSmIgOuvNwP6ZvAIgkUv4eFdQ5zMDy2E9oNLi1AynDZdjQLaa3cg+A==
X-Received: by 2002:a1c:a615:: with SMTP id p21mr19202838wme.121.1566798148462;
        Sun, 25 Aug 2019 22:42:28 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a1c:9d02:: with SMTP id g2ls5809568wme.3.canary-gmail; Sun,
 25 Aug 2019 22:42:28 -0700 (PDT)
X-Received: by 2002:a1c:6385:: with SMTP id x127mr19412044wmb.140.1566798147994;
        Sun, 25 Aug 2019 22:42:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566798147; cv=none;
        d=google.com; s=arc-20160816;
        b=zk38ZgldovAFyFV5+3eeyyiAQhLfUc0Emoegb11gm7pREIHc7y6gaPUY+V6oYSY3Ne
         fMbYkccJBNO6C5NAmdfGgIxvRspVtoNV904RAtQaph7W+aZD0aNUAcZCJ4ePaihNEVOT
         JAsLxw2VynndJ21zurP4yvTnSwTM1iYcIZ3+sG+f4l+qtbxPLntYyAVrPZb2OyizcQOS
         XvWdk+2poPvhFvZBJVul30QPzwtGHiKocROtHH7jddYtyrJPDf5YiGPP9/QrRV5T7oNi
         6kKlvcANmV2YT86sSELgMEwjgv3x/jC8jrEf42gQEGVpSk3zF2scahw2QOqqcGaS0NL8
         o+SA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=UBf4lbzwV7rb9wBV5VJmBuy8ndsNawD6TS3MxN1caQQ=;
        b=yTbgx0Oi10Gsioie4sO0Jqofs+2ZxEORU4ljGRFWwrhJJkx+0CfVBKQMOX7Dz3biGY
         ZeFgNSGqLt3Pb6ahK9Vh2zxGiczNSxLbXnLgs+H6JbU8U1hs2y2ICIGIC6z+F/Q0+fqk
         TzJ5nqyRyA5+O0Wz/aQb4gDgjYB5drPJVBbsHMqPwIxdevzEaZtZK22RcZu8vsAwqG+Y
         ZfNF1F6IcGMlvsrdFHWm9Y+rgQyUW/sPwST/ftaiNqV6x4+g86GR++P7xY8/JcHlDdXj
         JQJopQ7V1/x5YXTCrIQKzN/hAbwMA2rHtlvH4/1UY3oHnmraCrQR4wyPRye5FnSSb/sV
         Dibg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: best guess record for domain of kai.heng.feng@canonical.com designates 91.189.89.112 as permitted sender) smtp.mailfrom=kai.heng.feng@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
Received: from youngberry.canonical.com (youngberry.canonical.com. [91.189.89.112])
        by mx.google.com with ESMTPS id f2si7647231wmh.41.2019.08.25.22.42.27
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 25 Aug 2019 22:42:27 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of kai.heng.feng@canonical.com designates 91.189.89.112 as permitted sender) client-ip=91.189.89.112;
Received: from 61-220-137-37.hinet-ip.hinet.net ([61.220.137.37] helo=localhost)
	by youngberry.canonical.com with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
	(Exim 4.76)
	(envelope-from <kai.heng.feng@canonical.com>)
	id 1i27lq-0004UF-4z; Mon, 26 Aug 2019 05:42:26 +0000
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
To: stern@rowland.harvard.edu
Cc: gregkh@linuxfoundation.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org,
	Kai-Heng Feng <kai.heng.feng@canonical.com>
Subject: [usb-storage] [PATCH v2 1/2] USB: storage: ums-realtek: Update module
 parameter description for auto_delink_en
Date: Mon, 26 Aug 2019 13:42:15 +0800
Message-Id: <20190826054216.31468-1-kai.heng.feng@canonical.com>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: kai.heng.feng@canonical.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 best guess record for domain of kai.heng.feng@canonical.com designates
 91.189.89.112 as permitted sender) smtp.mailfrom=kai.heng.feng@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
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

The option named "auto_delink_en" is a bit misleading, as setting it to
false doesn't really disable auto-delink but let auto-delink be firmware
controlled.

Update the description to reflect the real usage of this parameter.

Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
---
v2:
- Only update module parameter description.

 drivers/usb/storage/realtek_cr.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/storage/realtek_cr.c b/drivers/usb/storage/realtek_cr.c
index cc794e25a0b6..beaffac805af 100644
--- a/drivers/usb/storage/realtek_cr.c
+++ b/drivers/usb/storage/realtek_cr.c
@@ -38,7 +38,7 @@ MODULE_LICENSE("GPL");
 
 static int auto_delink_en = 1;
 module_param(auto_delink_en, int, S_IRUGO | S_IWUSR);
-MODULE_PARM_DESC(auto_delink_en, "enable auto delink");
+MODULE_PARM_DESC(auto_delink_en, "auto delink mode (0=firmware, 1=software [default])");
 
 #ifdef CONFIG_REALTEK_AUTOPM
 static int ss_en = 1;
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190826054216.31468-1-kai.heng.feng%40canonical.com.
