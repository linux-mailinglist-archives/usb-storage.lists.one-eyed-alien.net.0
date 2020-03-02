Return-Path: <usb-storage+bncBCJKP7ES3YDRBKG66TZAKGQERQ63P2Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x847.google.com (mail-qt1-x847.google.com [IPv6:2607:f8b0:4864:20::847])
	by mail.lfdr.de (Postfix) with ESMTPS id A76E2175F2F
	for <lists+usb-storage@lfdr.de>; Mon,  2 Mar 2020 17:07:05 +0100 (CET)
Received: by mail-qt1-x847.google.com with SMTP id a29sf130585qtb.18
        for <lists+usb-storage@lfdr.de>; Mon, 02 Mar 2020 08:07:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583165224; cv=pass;
        d=google.com; s=arc-20160816;
        b=fVeIEJDSc1JqQwnM+b50Gk1aG0GryLT7Xukz2t5pX40bNqIhVRJoyrN2cs/E7Gl7qL
         e+gANctfYButl5eKDMYbSry6MeHtYaCH3NIe3UuYHtHblK0ZDuVtPpDVBad3UbAgPIK+
         F5D/v4xkd9vfkXojm9WJ2gLLp6c3daV3djPnGXU5WNx0tuD2RcFAmAcl5N9lPDo7xARz
         isykdD/2+O5FwIGRAw9X7cxHvIjByo+YLfQNz15nF6ZuS9VndI/q2IMH1R9JsaECF8nE
         U7HB5GPQX/Z68qx/ZlvQXJq/WUxckzz6c2t4rs8sKV5R1aGYcQVU/GCMmIxvd6KZFQRC
         QYng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=ZodL9a3Q58oTBeylljaPj/xCiunwviS7YAzrKYBRJ2o=;
        b=nG8wm+uzhloq/UVa0pFszPYj954ECiMMQDAoMZaAmZIJxJvYMyCltjer4Rqq9KOEcG
         PkM56QbT9GsKbAFzQqDUwKXZnjvhSF6GQERzpF4y+r1eMm6oui7HbJ+hDXMU3JoDKLfG
         vW3IogaFSRjCCzQjuI4xjhNujeW0kk6xW4owDBNdxHcTMNYOuliJlw8aHkUV7cGMhU5y
         rncnqzFe79YbgF976Zqi5E73y2jKIPvtTuy+moyK1lUdOnt8IAPU1b34nVnhDWSKM6Ft
         WZDg97MPWqr2R4qobiOQ5TEMlooM4BdzIQtCZQxvKqHwZUzfAAj7LTl3x9P0pL8uVpFl
         OZ2g==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@nvidia.com header.s=n1 header.b=dlZBkYhv;
       spf=pass (google.com: domain of jilin@nvidia.com designates 216.228.121.64 as permitted sender) smtp.mailfrom=jilin@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZodL9a3Q58oTBeylljaPj/xCiunwviS7YAzrKYBRJ2o=;
        b=bo82on5BqDipUoRRPBWQx5Hdm8ZQH47YnxxLChTgZ1xiMrU1CDti9EcwtYl58P8faf
         GTyhTfgJsqN7xrebpFxoksmj8QJn4mJEWovG9qEpJO8C4oK7MqsB4V6dCskj/Owlx646
         cFDpUlSKZ7r90z+a7HsPO+m8V67xZpg5CPw10=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZodL9a3Q58oTBeylljaPj/xCiunwviS7YAzrKYBRJ2o=;
        b=Rbch9ExtyIU3aCaHUBQxLtEhY3EgjC3M4fUu6j5boDieKBLMAFBKU/FH14ZpQe/k7q
         OgU9w5bRgTH9C0n2gg0HEedsr4alWaWjD0tesvRcBrnmMEobbFeoYU9We1uCDWEPKbpF
         7FywjI7jKUwd47j1zIO/RHGVS/IouheDEdhNAxB1P57Bh3tjZqw4tmbmDIF0dGr42hhC
         31DxM/MS0R44liqV0qIerRe6dC0sEgLcRc2TgChDOBQtLOFcJQojb4gQ9XPp0MQ0zXjS
         fUH5L6hGP2w6VROfTePFe5Wn2YAA60VU5fMgXw+DxQzPjFkY7hwxuo4G3emgn1EUFwXQ
         39FQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ANhLgQ2fnz24fblCyIsofsHnUIh8P0FOTduvArdnENAlazbxsGhd5z4Q
	3bMQ+Tip6VyNeVofCDrcD49HUA==
X-Google-Smtp-Source: ADFU+vtxQc9BjxXGophSlBfQ2MnMNNyvuiH1S92CIIi4Az3FEgWky0ZfKiBHjCiFV1R6bCJ1ohKdEw==
X-Received: by 2002:aed:2b25:: with SMTP id p34mr444586qtd.100.1583165224382;
        Mon, 02 Mar 2020 08:07:04 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:3479:: with SMTP id v54ls4617294qtb.3.gmail; Mon, 02 Mar
 2020 08:07:04 -0800 (PST)
X-Received: by 2002:aed:310d:: with SMTP id 13mr383923qtg.343.1583165224218;
        Mon, 02 Mar 2020 08:07:04 -0800 (PST)
Received: by 2002:a37:a107:0:0:0:0:0 with SMTP id k7msqke;
        Mon, 2 Mar 2020 06:21:50 -0800 (PST)
X-Received: by 2002:a81:a1c7:: with SMTP id y190mr15037980ywg.513.1583158909005;
        Mon, 02 Mar 2020 06:21:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583158909; cv=none;
        d=google.com; s=arc-20160816;
        b=0Awo+xNPtMzt9TRdJHu+ds/Pnro+xGNupwf2FK8kuzfwlDZgMOZiKPNlkv1NM8AXvl
         1YnUMG+XiDdHITGUMJDdM4GGRjiIHyxHy1mJspTT45xBpadntY5SBYbu/l3a/hwFkSkr
         In+XvDd5bWD1BC9OoahF6fQPNyp9FJgdE9LqV1a1/G4z1lngghRvFk5RJbYniW5UkBx4
         URvdfONIVRU279EM0bDsmQxwV89ZbdGW6FaiRtlQIZ1H2vOIVUwyFLWfam+VLefjE2Fi
         qe2bVVowB4m5yz8Hc/wbYToI55YOtUcBHj7YKwMOhhl0rWPOkrNuAJMlQFo3YDvbtGR3
         TFlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=dkim-signature:mime-version:message-id:date:subject:cc:to:from;
        bh=Ug+SL8BpPUbsHay9ECIf12zMrZ7uPxOUUQ7ibuliW/E=;
        b=x71bFa37fLKXICi3pNt4bSdbaBOdm+/jwnrqH1ASvwesfMhzNKSmxFb1GHBKc6Ao0W
         hBBf6oREkxcDBAsDWRkOL+5tEU9cH3xptjVBQaENqry1U2HvJHB8lgvLyOePaHkPW20H
         CRN1HsgBh9kk6mliD1LUnoTMIEnO9a8KJMPdq5s9TwKc0EaFan1Edh9fkmNe4Ma976B6
         KlzpXm7iqG36prJ+W/da6oetVOcbmTPjjbD1VZOidJLO/I13YoYsNP/uGz7TTtrav3Zt
         pfDt6oeT/w558jcWLJa3ffPp8vMHXGKnwV+bGjYHMwmkLhVsO0kUQPwhbWl50GQD2cFr
         lEtg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@nvidia.com header.s=n1 header.b=dlZBkYhv;
       spf=pass (google.com: domain of jilin@nvidia.com designates 216.228.121.64 as permitted sender) smtp.mailfrom=jilin@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
Received: from hqnvemgate25.nvidia.com (hqnvemgate25.nvidia.com. [216.228.121.64])
        by mx.google.com with ESMTPS id k16si3396438ywh.455.2020.03.02.06.21.48
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2020 06:21:48 -0800 (PST)
Received-SPF: pass (google.com: domain of jilin@nvidia.com designates 216.228.121.64 as permitted sender) client-ip=216.228.121.64;
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by hqnvemgate25.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
	id <B5e5d16540001>; Mon, 02 Mar 2020 06:21:08 -0800
Received: from hqmail.nvidia.com ([172.20.161.6])
  by hqpgpgate101.nvidia.com (PGP Universal service);
  Mon, 02 Mar 2020 06:21:48 -0800
X-PGP-Universal: processed;
	by hqpgpgate101.nvidia.com on Mon, 02 Mar 2020 06:21:48 -0800
Received: from HQMAIL101.nvidia.com (172.20.187.10) by HQMAIL105.nvidia.com
 (172.20.187.12) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 2 Mar
 2020 14:21:47 +0000
Received: from rnnvemgw01.nvidia.com (10.128.109.123) by HQMAIL101.nvidia.com
 (172.20.187.10) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via Frontend
 Transport; Mon, 2 Mar 2020 14:21:47 +0000
Received: from jilin-desktop.nvidia.com (Not Verified[10.19.120.101]) by rnnvemgw01.nvidia.com with Trustwave SEG (v7,5,8,10121)
	id <B5e5d167a0006>; Mon, 02 Mar 2020 06:21:47 -0800
From: Jim Lin <jilin@nvidia.com>
To: <stern@rowland.harvard.edu>, <linux-usb@vger.kernel.org>
CC: <usb-storage@lists.one-eyed-alien.net>, Jim Lin <jilin@nvidia.com>
Subject: [usb-storage] [PATCH 1/1] usb: storage: Add quirk for Samsung Fit flash
Date: Mon, 2 Mar 2020 22:21:35 +0800
Message-ID: <1583158895-31342-1-git-send-email-jilin@nvidia.com>
X-Mailer: git-send-email 2.1.4
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jilin@nvidia.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@nvidia.com header.s=n1 header.b=dlZBkYhv;       spf=pass
 (google.com: domain of jilin@nvidia.com designates 216.228.121.64 as
 permitted sender) smtp.mailfrom=jilin@nvidia.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=nvidia.com
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

Current driver has 240 (USB2.0) and 2048 (USB3.0) as max_sectors,
e.g., /sys/bus/scsi/devices/0:0:0:0/max_sectors

If data access times out, driver error handling will issue a port
reset.
Sometimes Samsung Fit (090C:1000) flash disk will not respond to
later Set Address or Get Descriptor command.

Adding this quirk to limit max_sectors to 64 sectors to avoid issue
occurring.

Signed-off-by: Jim Lin <jilin@nvidia.com>
---
 drivers/usb/storage/unusual_devs.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/usb/storage/unusual_devs.h b/drivers/usb/storage/unusual_devs.h
index 1cd9b6305b06..1880f3e13f57 100644
--- a/drivers/usb/storage/unusual_devs.h
+++ b/drivers/usb/storage/unusual_devs.h
@@ -1258,6 +1258,12 @@ UNUSUAL_DEV( 0x090a, 0x1200, 0x0000, 0x9999,
 		USB_SC_RBC, USB_PR_BULK, NULL,
 		0 ),
 
+UNUSUAL_DEV(0x090c, 0x1000, 0x1100, 0x1100,
+		"Samsung",
+		"Flash Drive FIT",
+		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
+		US_FL_MAX_SECTORS_64),
+
 /* aeb */
 UNUSUAL_DEV( 0x090c, 0x1132, 0x0000, 0xffff,
 		"Feiya",
-- 
2.1.4


-----------------------------------------------------------------------------------
This email message is for the sole use of the intended recipient(s) and may contain
confidential information.  Any unauthorized review, use, disclosure or distribution
is prohibited.  If you are not the intended recipient, please contact the sender by
reply email and destroy all copies of the original message.
-----------------------------------------------------------------------------------

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/1583158895-31342-1-git-send-email-jilin%40nvidia.com.
