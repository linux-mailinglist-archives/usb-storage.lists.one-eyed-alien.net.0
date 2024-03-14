Return-Path: <usb-storage+bncBAABBQMGZWXQMGQEFZW75BY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oi1-x246.google.com (mail-oi1-x246.google.com [IPv6:2607:f8b0:4864:20::246])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D7D187C2D2
	for <lists+usb-storage@lfdr.de>; Thu, 14 Mar 2024 19:34:43 +0100 (CET)
Received: by mail-oi1-x246.google.com with SMTP id 5614622812f47-3c24e8288a2sf983117b6e.0
        for <lists+usb-storage@lfdr.de>; Thu, 14 Mar 2024 11:34:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1710441282; cv=pass;
        d=google.com; s=arc-20160816;
        b=KqOivpwr/MHPFNlNPOVUgAW6NOytJ4CUqUomVgAtWh3jK3aHfw8X/EZTGtw4GbDaVG
         ZIf0nTtbURoaNhpgBBus/bJk3lY2tW8R+l9VEvAG+Jk1XS8FVU8R71aFrxpZwpEFcilr
         r7La4Lp8YOgTB9o0afd5TPkS65a6Ek2sFYaQpkflHh3OgFu+bXStWL3cMfU3qh1cwxhm
         JxQnq/ZQnx/6+xWug0MQ7CbE2jAtTEP+OZmJySHAKsNqETIX7LoC3nYPC92OThSVbRiB
         77ufusEagmwHpAcAE4tGhQCDJ/UUX0nH/MmdxuYEnB40M/a6+X31doFJ/Fn06H5WrwrI
         4zlQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=daW25H7GwgUmt9Pm/dUbaci1MuAuprFS5NcC/DsbO14=;
        fh=nB5AYvUcPFxP+nzbUR8TNOG1+ByPnhokJ3JeAd6XHQk=;
        b=enYAWuplSJdDYd24Rr93cn0noNRAp6rKQ4KZ3ZP/WvJKa1eRQzIMea/RBtT1G4rIZZ
         z+ahFZewVcKY/nvBDBzaAA2HQ3wAZAxRKLXVUHL6/JWY7WkyNUiJ+zqMK1wX3iq5McBE
         ehNrn3SvoWTODrBD8IxIgkdf/u0T7lsL5E7o5TiBlYX+lzp/lNP+LiAVv9Iv56YgL2Kj
         syRrp0cxeo6WLTn7v3t41B6gVxbMAJCjAVX7fkiRbI2WdDQpru0T6F3TuBcIb/IGQ7QZ
         g2x36KrpgksdxmzcFFZrzlz9cb0n42KmK9wPsv0U8Hq44UFfZDnJq++VRJ3xH7zElW9g
         zhQg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of r.smirnov@omp.ru designates 90.154.21.10 as permitted sender) smtp.mailfrom=r.smirnov@omp.ru
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1710441282; x=1711046082; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=daW25H7GwgUmt9Pm/dUbaci1MuAuprFS5NcC/DsbO14=;
        b=asAf8AS9STSjKlxlVyI2crSvwc3MnHbPAO2m75IjD1MIZscSWZWOHsUcwH9fQH5TWf
         JGe41Ks5T99RrFY5A4pkis+WjsauYYaZkmYwa7vBOGi+ZWeuSjiavzcLoIddkWKq4Twe
         9JZx4suF+X1R/ti6U8vwbODGBMVbxOQjz2qmI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710441282; x=1711046082;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=daW25H7GwgUmt9Pm/dUbaci1MuAuprFS5NcC/DsbO14=;
        b=GQP61+08EU6U22JsjyLJdQGo/u8Jf0RDsI0YPsiDHuGO0zDoNjNNYkBxT2J7A6YIZQ
         He3Ifo+sJEhAo2hsgjpx4Czel2Vn1eK6n9kPngHavHD5VAIu2N+Gv+RAR/c7IURTtoXG
         AXI3re5qpv9HRjSCcwrJQ9kMED8xII7HstizIup70aE0NIChv+IjPXWPL1R+NKw+dDdj
         GwEPlmuZt+W/O7nh4C1BabW5ztUkPwVkZYmKo9r/b0hvqikOiNrRI2u9V36T0p9ZNDR4
         Y3Z1YdnMi/zqLlHaAImeOydcZEKP6PEj2n01cm3HebbQmsUDwp1G3LwrH6/ctqCmcOKL
         Jrpg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWoRBBc2/ceOSkMaWeI7mzTJHUVcNYJdUx9rD9R5vUqgONhg+4u6LnU73ICq0WmxMl8jtMVXaj3NR5bM8lmDIU2qjS2OKEcFwi1
X-Gm-Message-State: AOJu0YxOz72KoIaBrZSVjIYwuFDpn4yeEnuwvBrBKPuzIm8HpeN0PLYH
	D77lHLJNYny6Ap/9clbFI1yfhXpeab5gkyFN84RyXYn/f5hJVfBr0mMilINoemg=
X-Google-Smtp-Source: AGHT+IH2QLggwJ0V5uNWoCZMCqNF9Ztx6OOo5Y868B+TcfIq8GsVJD3VBEIvG5e5An8pI8a4Z7SASw==
X-Received: by 2002:a05:6808:3205:b0:3c3:71a0:c0d4 with SMTP id cb5-20020a056808320500b003c371a0c0d4mr1183952oib.54.1710441282213;
        Thu, 14 Mar 2024 11:34:42 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:78d:0:b0:430:9f66:575e with SMTP id l13-20020ac8078d000000b004309f66575els860737qth.1.-pod-prod-05-us;
 Thu, 14 Mar 2024 11:34:41 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXSAxya9a9iPjQmEIgMqGbBnjsVIJY40hVuRoaL9LVbU1rVvR7UCAoZQQdXPxnPVgTwqhkaEE38KVRT3OHAFvh9nP+Hvkv/IzfsIKDyfpEAuXptdRw=
X-Received: by 2002:ac8:7fc4:0:b0:430:ac8a:4e30 with SMTP id b4-20020ac87fc4000000b00430ac8a4e30mr28864qtk.1.1710441281562;
        Thu, 14 Mar 2024 11:34:41 -0700 (PDT)
Received: by 2002:a05:620a:3916:b0:789:d5fa:c1db with SMTP id af79cd13be357-789d5fac484ms85a;
        Thu, 14 Mar 2024 02:32:05 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXC8GU0wd7oL/SMcVmWnyvED5dWIBzRgsouXjdE1bwCEbZcXh/0j/La6d3y+chMSqy/H1CM85WnSv1adcrw7C27YhiHIAUqEz4kbwl1V+xZfd0xKIc=
X-Received: by 2002:a19:644c:0:b0:512:fa95:8f2a with SMTP id b12-20020a19644c000000b00512fa958f2amr1701393lfj.30.1710408723658;
        Thu, 14 Mar 2024 02:32:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1710408723; cv=none;
        d=google.com; s=arc-20160816;
        b=IJpawRKXp/xenktE049h5mjdJjxnq4qS5GrglvxFNr+tT9RSW9hU19X8oVC2/oget1
         jOZGYE9Xgq0JM/0HSRzz5yMYz98zKvpGEeJeQGKiT1FelMnzFTdj1p9XDtHCTNna6ZgQ
         TjGFWN+cq59A6XMgZ5P6Oz66L6b0LpMS6DmeRx817RvW03/9x7cH99RXwPXxStasZZbq
         WqRyKfaoKpoobPI7PYZhpQHj/ttcC6EYLLCgpw9LspeExGXIuH41uyWAFXmnwbi6AaGH
         NH+F5a6wT3yO6JXpT0lU5RmUozN/8DdZheJDhOzcNOLG50yGtYM9HAu3Kj0zScqok785
         Lwyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=W9AXqUH5oGe8wCqCWak/P6888tbwfmzrig1PwR6TQGo=;
        fh=guiric4jBp+clflJ4Y059phiJ58iVZcHmW1B2u7j7LA=;
        b=E7Srfrjrh08RblsAsMEn2wjJ4f+3mpoUkUrGMUVfuYMRRtAAGlLLZSfDpqq1iUFMza
         SXBR67ckQ4CwYtvk6LKUeOIpC+AGhFG5LSi2P8B/S7A9C9lq8UDWezI5VdR+Zx8h3J60
         fz0b0gQrZMEyMP1AgRZcDsqlx7/bhSutvj6cH1cVMSaLO2sab0g0Vu8wK3Gr4EZVfJUW
         sMLu9B87VB20iFZV7NM1hJIQbS3TiuUHmoPLMfRAYxeWyAk1EuuXY5LRhBH90l//LHNw
         XxNBGjE64PULcXeDqHqhL+TdlUP0Tt11ijg6ClXdmcGRnjjcCqfoCYI0xlLkO7klkDJv
         Wlbw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of r.smirnov@omp.ru designates 90.154.21.10 as permitted sender) smtp.mailfrom=r.smirnov@omp.ru
Received: from mx01.omp.ru (mx01.omp.ru. [90.154.21.10])
        by mx.google.com with ESMTPS id t18-20020a192d52000000b005132bef9248si314136lft.426.2024.03.14.02.32.03
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Mar 2024 02:32:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of r.smirnov@omp.ru designates 90.154.21.10 as permitted sender) client-ip=90.154.21.10;
Received: from localhost.localdomain (78.37.41.175) by msexch01.omp.ru
 (10.188.4.12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.2.1258.12; Thu, 14 Mar
 2024 12:31:57 +0300
From: Roman Smirnov <r.smirnov@omp.ru>
To: Alan Stern <stern@rowland.harvard.edu>, Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>
CC: Roman Smirnov <r.smirnov@omp.ru>, <linux-usb@vger.kernel.org>,
	<usb-storage@lists.one-eyed-alien.net>, <linux-kernel@vger.kernel.org>,
	Sergey Shtylyov <s.shtylyov@omp.ru>, Karina Yankevich <k.yankevich@omp.ru>,
	<lvc-project@linuxtesting.org>, <stable@vger.kernel.org>
Subject: [usb-storage] [PATCH] usb: storage: isd200: fix error checks in  isd200_{read,write}_config()
Date: Thu, 14 Mar 2024 12:31:36 +0300
Message-ID: <20240314093136.16386-1-r.smirnov@omp.ru>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [78.37.41.175]
X-ClientProxiedBy: msexch01.omp.ru (10.188.4.12) To msexch01.omp.ru
 (10.188.4.12)
X-KSE-ServerInfo: msexch01.omp.ru, 9
X-KSE-AntiSpam-Interceptor-Info: scan successful
X-KSE-AntiSpam-Version: 6.1.0, Database issued on: 03/14/2024 09:10:01
X-KSE-AntiSpam-Status: KAS_STATUS_NOT_DETECTED
X-KSE-AntiSpam-Method: none
X-KSE-AntiSpam-Rate: 59
X-KSE-AntiSpam-Info: Lua profiles 184157 [Mar 14 2024]
X-KSE-AntiSpam-Info: Version: 6.1.0.4
X-KSE-AntiSpam-Info: Envelope from: r.smirnov@omp.ru
X-KSE-AntiSpam-Info: LuaCore: 10 0.3.10
 53c821b925e16276b831986eabc71d60ab82ee60
X-KSE-AntiSpam-Info: {rep_avail}
X-KSE-AntiSpam-Info: {Tracking_from_domain_doesnt_match_to}
X-KSE-AntiSpam-Info: {relay has no DNS name}
X-KSE-AntiSpam-Info: {SMTP from is not routable}
X-KSE-AntiSpam-Info: 127.0.0.199:7.1.2;78.37.41.175:7.1.2;omp.ru:7.1.1;d41d8cd98f00b204e9800998ecf8427e.com:7.1.1
X-KSE-AntiSpam-Info: ApMailHostAddress: 78.37.41.175
X-KSE-AntiSpam-Info: {DNS response errors}
X-KSE-AntiSpam-Info: Rate: 59
X-KSE-AntiSpam-Info: Status: not_detected
X-KSE-AntiSpam-Info: Method: none
X-KSE-AntiSpam-Info: Auth:dmarc=temperror header.from=omp.ru;spf=temperror
 smtp.mailfrom=omp.ru;dkim=none
X-KSE-Antiphishing-Info: Clean
X-KSE-Antiphishing-ScanningType: Heuristic
X-KSE-Antiphishing-Method: None
X-KSE-Antiphishing-Bases: 03/14/2024 09:14:00
X-KSE-Antivirus-Interceptor-Info: scan successful
X-KSE-Antivirus-Info: Clean, bases: 3/14/2024 6:00:00 AM
X-KSE-Attachment-Filter-Triggered-Rules: Clean
X-KSE-Attachment-Filter-Triggered-Filters: Clean
X-KSE-BulkMessagesFiltering-Scan-Result: InTheLimit
X-Original-Sender: r.smirnov@omp.ru
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of r.smirnov@omp.ru designates 90.154.21.10 as permitted sender) smtp.mailfrom=r.smirnov@omp.ru
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

The expression result >= 0 will be true even if usb_stor_ctrl_transfer()
returns an error code. It is necessary to compare result with
USB_STOR_XFER_GOOD.

Found by Linux Verification Center (linuxtesting.org) with Svace.

Signed-off-by: Roman Smirnov <r.smirnov@omp.ru>
Cc: stable@vger.kernel.org
Reviewed-by: Sergey Shtylyov <s.shtylyov@omp.ru>
---
 drivers/usb/storage/isd200.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/storage/isd200.c b/drivers/usb/storage/isd200.c
index 300aeef160e7..2a1531793820 100644
--- a/drivers/usb/storage/isd200.c
+++ b/drivers/usb/storage/isd200.c
@@ -774,7 +774,7 @@ static int isd200_write_config( struct us_data *us )
 		(void *) &info->ConfigData, 
 		sizeof(info->ConfigData));
 
-	if (result >= 0) {
+	if (result == USB_STOR_XFER_GOOD) {
 		usb_stor_dbg(us, "   ISD200 Config Data was written successfully\n");
 	} else {
 		usb_stor_dbg(us, "   Request to write ISD200 Config Data failed!\n");
@@ -816,7 +816,7 @@ static int isd200_read_config( struct us_data *us )
 		sizeof(info->ConfigData));
 
 
-	if (result >= 0) {
+	if (result == USB_STOR_XFER_GOOD) {
 		usb_stor_dbg(us, "   Retrieved the following ISD200 Config Data:\n");
 #ifdef CONFIG_USB_STORAGE_DEBUG
 		isd200_log_config(us, info);
-- 
2.34.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240314093136.16386-1-r.smirnov%40omp.ru.
