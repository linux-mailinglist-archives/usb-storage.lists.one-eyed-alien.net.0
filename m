Return-Path: <usb-storage+bncBAABB5OA6L4QKGQEATEXMVA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf48.google.com (mail-qv1-xf48.google.com [IPv6:2607:f8b0:4864:20::f48])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F87024939D
	for <lists+usb-storage@lfdr.de>; Wed, 19 Aug 2020 05:45:59 +0200 (CEST)
Received: by mail-qv1-xf48.google.com with SMTP id c4sf14795415qvq.15
        for <lists+usb-storage@lfdr.de>; Tue, 18 Aug 2020 20:45:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597808758; cv=pass;
        d=google.com; s=arc-20160816;
        b=aMPS6Z1aYNByxxsBfhQKuRvPSre299ysP4azHweRkFR3QyMg2R5eB7sXB8MSjNCAtq
         FtNlkC8lQkamzKKKdUfTD96gxdb2gHGHp6uWG4G6ZgEtr3F02n89pRy9hVXa0QJsG6kY
         WIxOjf9M+Y+Ls2Ih58HJ9RbFgjOiYQQuA+FwHSaZ8xR75wmShDh0K4EGYDtERCEe8c7C
         5HZJ30ZLBC3yPZV9miKY7ZZpaFoDvv6nw66iFB0QYDz8JJmgPOoi12NCD2Jvlq9srWPT
         Rfq1yNZXx13b5h8lso7BJIW/BhV3h7S9er4iJDsQ98La7z8mSLoRfnh28s2RcXOuLyqG
         ThNQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:from:message-id:date
         :mime-version:sender:dkim-signature;
        bh=kNVelSIRGfI9lwCOOcj/iMR/HNOMu+FrCbacYZLOm1M=;
        b=nOlRYaxohReDPz+i6b7M+KRnMf8T10Gw2B9P4hVgoHtA0TScc5hqo6iQk6hRo8cxIp
         h0ZgiOEyKSYf9GY9zdwRM2JnlsJhYpVtw+suEnuPL+21IhGq4lywns/t1wih2ea9qeuR
         xd81w12wfagJT+9zC7wNKXRyVaHWRQWA1xaBOmDS4/LQ+iDgSkf5fOhglajupQrmV+Dd
         gSXM6DwVxCYoPfQJcP55eYkmYrbJrXAhxyuh8uVD/4LZiGsHfZjxi3ZumdzHmJgmakmp
         VnIte9l++o1sjn4eAAcK7WxORNn1r6zSL8yOZKvoaBDn2BD044t+GcLNcfo4SGdt+uSE
         WKFQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@synopsys.com header.s=mail header.b=cW5l80mW;
       spf=pass (google.com: domain of thinh.nguyen@synopsys.com designates 149.117.73.133 as permitted sender) smtp.mailfrom=Thinh.Nguyen@synopsys.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=synopsys.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:date:message-id:from:subject:to:cc
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kNVelSIRGfI9lwCOOcj/iMR/HNOMu+FrCbacYZLOm1M=;
        b=h+EL7wd0LC7U5ss5RYwArkmFby3wg1LI9SAZdyCx51v9Aoq2RAIx8VHtsjjYzdQNG8
         C0O/Obrnqln+eaNvCFvKaUmLcPirHxonJzZrZZKYBcRRGJ9Si36z3FiHOt4f7F31OBg1
         W+3n5dJ5jZjFvo02veQU5RUl7SaeAfGA6UcUg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:message-id:from:subject
         :to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kNVelSIRGfI9lwCOOcj/iMR/HNOMu+FrCbacYZLOm1M=;
        b=KB1hHQyiRJZTx7hX7gHJoCnEgfPm5AHqzZ4FwWqXeL0mIj1U1Lvn1WIW0mOey0JpNu
         mIkrmZW2QkxoxBhnaG63cAjkLBKzdGjcbUya/LYQwGZY+IacfZcu7LwIDtCQ5WBFz0TO
         1u/waSWSaMjMqhrBqkZ66l3HHlhvcApggIdanY0g8EFCNQjXe4dwSoZtHbFzPYaH08j3
         Zfc20kkpJbScKaovtIYA5RRuGTFqg2FkRgtAnz7fLECudRK+3RGHUCR6/VDX2Fxnu+3w
         IXF7GOvyl5JB1ryOYKttagkxycdYlkRobroaeydOnkV6UUWpVDX3cMotsLugb6OS68Ea
         qYDw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM533ABTqksPtBBxWkQv3zlQCiWjbejImtmDcbTCNij9uyyBl/8Adm
	dpmRFO1/KKdji4pkjZ6l8F/V1w==
X-Google-Smtp-Source: ABdhPJzhz3VMhnEft8TxtX2pclWTKJMPub9hOcCbPeIs97yEWw5PI4mCLCqoOXPh3/9yxyHAZc6OLw==
X-Received: by 2002:a0c:f507:: with SMTP id j7mr22364367qvm.82.1597808757981;
        Tue, 18 Aug 2020 20:45:57 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6214:334:: with SMTP id j20ls5611435qvu.5.gmail; Tue, 18
 Aug 2020 20:45:57 -0700 (PDT)
X-Received: by 2002:a0c:fbd1:: with SMTP id n17mr22353125qvp.4.1597808757592;
        Tue, 18 Aug 2020 20:45:57 -0700 (PDT)
Received: by 2002:a05:620a:4f6:b029:105:636a:708b with SMTP id b22-20020a05620a04f6b0290105636a708bmsqkh;
        Tue, 18 Aug 2020 19:27:52 -0700 (PDT)
X-Received: by 2002:a17:907:2712:: with SMTP id w18mr2096730ejk.473.1597804072418;
        Tue, 18 Aug 2020 19:27:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597804072; cv=none;
        d=google.com; s=arc-20160816;
        b=x/2i/md1OtxluK2Fe9RE4v9rdT9lUnfdesWe+w97hOQDDxmzEne8Nyj+VXXwdyf9fx
         ylZU1Z+L1IGC+vQwxd1u2POG3VNzECKxNWu7eyNwUjECxP4J12WP3KKecFfhbQ5w1LR2
         oTnthsjVxf+jU/Te7ANgRJEk4NG/gVmMi6d0B/gUJzJyYUZ93QqNQWlWW14ATvU1AEfK
         B/Snrb6MXlzwttIxHjEAA0pBHAZPE9gXVG/aWH2KPnmXPPumfUP2fEK4v0n5RlZoF4F/
         RhnUcaU6IlUZHQVtjdtrGbfulY2hfjDwCh4Z/GCQ5/NRoajbtSY26Cfb+lNFwlq8P6cp
         a2vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:from:message-id:date:dkim-signature;
        bh=eV2fX4xvWLeyCLvq86gSHGM3r87tsf8yByQuzodx2NA=;
        b=nEHOToTjfIaNnWxgKOv/+FOVCWNZybX7vseLXeyAN08nlR5wxuIWQVT4LxSLtX/IRJ
         qE6q0kdJMSYa/n54IPW0wT9flIdeEW9YxmJo6XG57+vd6JkLrbtKVqtU/N/dGpTuCyTJ
         hEHJYxG/1v/7d6wR9W+r0TrTnsQwpm4N29oluOZt3N80WMYR6jYsLFLPH0d2gkT8EQEK
         9Zfaexs2iPcw3zxjQB+Omy7evfs2AQp4pogHlUAT7Z5/OWTisS7DWX6R+EAbvNzXGkQE
         FnrizygtM4FBD/dLb+CfdbjrLSE/N2O6uszEvZL7DnAJ8cAW6FnQYlzD+snSEUmLzV9t
         htcQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@synopsys.com header.s=mail header.b=cW5l80mW;
       spf=pass (google.com: domain of thinh.nguyen@synopsys.com designates 149.117.73.133 as permitted sender) smtp.mailfrom=Thinh.Nguyen@synopsys.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=synopsys.com
Received: from smtprelay-out1.synopsys.com (smtprelay-out1.synopsys.com. [149.117.73.133])
        by mx.google.com with ESMTPS id b6si15694856eja.208.2020.08.18.19.27.52
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Aug 2020 19:27:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of thinh.nguyen@synopsys.com designates 149.117.73.133 as permitted sender) client-ip=149.117.73.133;
Received: from mailhost.synopsys.com (sv1-mailhost2.synopsys.com [10.205.2.132])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 0A7CC401AA;
	Wed, 19 Aug 2020 02:27:49 +0000 (UTC)
Received: from te-lab16 (nanobot.internal.synopsys.com [10.10.186.99])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mailhost.synopsys.com (Postfix) with ESMTPSA id A9D26A006B;
	Wed, 19 Aug 2020 02:27:47 +0000 (UTC)
Received: by te-lab16 (sSMTP sendmail emulation); Tue, 18 Aug 2020 19:27:47 -0700
Date: Tue, 18 Aug 2020 19:27:47 -0700
Message-Id: <2b0585228b003eedcc82db84697b31477df152e0.1597803605.git.thinhn@synopsys.com>
X-SNPS-Relay: synopsys.com
From: Thinh Nguyen <Thinh.Nguyen@synopsys.com>
Subject: [usb-storage] [PATCH] usb: uas: Add quirk for PNY Pro Elite
To: Hans de Goede <hdegoede@redhat.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org, Alan Stern <stern@rowland.harvard.edu>, usb-storage@lists.one-eyed-alien.net
Cc: Thinh Nguyen <Thinh.Nguyen@synopsys.com>, stable@vger.kernel.org
X-Original-Sender: thinh.nguyen@synopsys.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@synopsys.com header.s=mail header.b=cW5l80mW;       spf=pass
 (google.com: domain of thinh.nguyen@synopsys.com designates 149.117.73.133 as
 permitted sender) smtp.mailfrom=Thinh.Nguyen@synopsys.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=synopsys.com
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

PNY Pro Elite USB 3.1 Gen 2 device (SSD) doesn't respond to ATA_12
pass-through command (i.e. it just hangs). If it doesn't support this
command, it should respond properly to the host. Let's just add a quirk
to be able to move forward with other operations.

Cc: stable@vger.kernel.org
Signed-off-by: Thinh Nguyen <thinhn@synopsys.com>
---
 drivers/usb/storage/unusual_uas.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
index 162b09d69f62..971f8a4354c8 100644
--- a/drivers/usb/storage/unusual_uas.h
+++ b/drivers/usb/storage/unusual_uas.h
@@ -80,6 +80,13 @@ UNUSUAL_DEV(0x152d, 0x0578, 0x0000, 0x9999,
 		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
 		US_FL_BROKEN_FUA),
 
+/* Reported-by: Thinh Nguyen <thinhn@synopsys.com> */
+UNUSUAL_DEV(0x154b, 0xf00d, 0x0000, 0x9999,
+		"PNY",
+		"Pro Elite SSD",
+		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
+		US_FL_NO_ATA_1X),
+
 /* Reported-by: Hans de Goede <hdegoede@redhat.com> */
 UNUSUAL_DEV(0x2109, 0x0711, 0x0000, 0x9999,
 		"VIA",

base-commit: d5643d2249b279077427b2c2b2ffae9b70c95b0b
-- 
2.28.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2b0585228b003eedcc82db84697b31477df152e0.1597803605.git.thinhn%40synopsys.com.
