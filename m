Return-Path: <usb-storage+bncBCUMB4EN24LRBR7CRXVQKGQELYQR7AY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wr1-x448.google.com (mail-wr1-x448.google.com [IPv6:2a00:1450:4864:20::448])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E1CD9C8C0
	for <lists+usb-storage@lfdr.de>; Mon, 26 Aug 2019 07:42:32 +0200 (CEST)
Received: by mail-wr1-x448.google.com with SMTP id h8sf9142437wrb.11
        for <lists+usb-storage@lfdr.de>; Sun, 25 Aug 2019 22:42:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566798152; cv=pass;
        d=google.com; s=arc-20160816;
        b=qK2rornmO6nadrtkfLK3cZhpdYZ/CCc88d2WDsypXFYanZcHJoJcxuiLmTwCTgt1Hl
         AWMPdRbPA4MGJ0gJxnDz3gDkuFizkww8q0Yb7Zuc7Ukh33jF9Jaerd3aFar7gL83yS5Z
         ZHczJpmlI2MPXEcbnOiCUjRllNdXuJQAIbA2qhXYg6byeID+LN4lba39O9v41LhI9qdX
         Omf+yKU53O4ncBcPN/Lyh0ZzH/XzpVusoGGPGuhEztxs/5enno7N7SdkKunMn+H99IBH
         hY/PkioiXmhVgMYz9Ow9sizHglqWVUFSyOKPNkrwLjuiHxtx8do4yUCTh1AqzrnQBDyj
         AqRA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=Kfjc6jm/RBTTYjxCL9bxn3qDKLzvqF+s1UilX3vdDks=;
        b=hWzbWmABOYHUmioMuX2Jy8sBeoUjMSPguO0A0j8BuFSZ+Kzde/dgAJK9WhPTKm+QEX
         JKmRL3+WW2nenk1f3BS1PatrpgG0fzDO7VTqNyBtylJMyR0FGaqMdl0ct7CdE7aARuhC
         ZADFs+99m9BM1Zic7jfxU7ePImBQefVrFItP7LR8HiB//BsuBpv0hb8xcVoer5Ev1IwL
         mv1/AJQcA+Rr/v/Te79rmspN3tHrvgrWa8lHcmacwjmsZqmmIPSM+NUasITQTOwk/7Wn
         YfmrSL2foTAz5WPEXZoBv14Y1GdfuCcO0f4/Y+uKzvBlu/U7Zz8QRsCZvsOkpk486Uz3
         LGNA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: best guess record for domain of kai.heng.feng@canonical.com designates 91.189.89.112 as permitted sender) smtp.mailfrom=kai.heng.feng@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Kfjc6jm/RBTTYjxCL9bxn3qDKLzvqF+s1UilX3vdDks=;
        b=XTS9QILLJGuVJULXczTjGSYBZ655bHNKwZu9XGdYgFHNDSjekcJXy8OGjnAWG/La5X
         D5jd83hs6mJ3Z50KB2kHzNh71r5ZAl5AQUdXfgrIFiA+PM+X6a+i9HDGqE8mJXMXYAMa
         oBRmLzEV6Ok3gI1c1jO62vlRc1qNXVl0/bSXM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Kfjc6jm/RBTTYjxCL9bxn3qDKLzvqF+s1UilX3vdDks=;
        b=cYYxEXn3kC8zG1g0luR4gv6+41OzWPauTHdQ+t0U5INOq31iMF2UEaZDUHRKGQ77HK
         jcetVnM2JxBwxbMtROWya4umRQ8p0ULLbo9UIAZWE4UpNzOLqaEn8G/MStALfTMSlyrk
         o+PmLcnD5RYGYAN4GEk83e0nSiaxcY6ZYVgSqn0/7tnUisn5Kuh+9+XsTwdBT0zZ6Zc7
         TQqxAyIaf8T3c90TE+bve8cEJTa87BXwqeJpe1LeOsWsDuYbFM9wdu55rbwARkNQbxJ5
         HGnb9WKHxc+cssX6BV2j12wsAlct33/7xTNqpIAsowGxYBYwjNJSdqMtzbMKVs1LG+e6
         bq/w==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAWSyJYKMtLdRloXI7+4LI6wOuzMupyO7FnwV13fvJkaxA3QKbGO
	44RHo55J5D4P+jhHJJiWU1E4Dg==
X-Google-Smtp-Source: APXvYqxzbEjW5Wt4v7NdvG7c/LQjyWivKOlu5VUukS91DsoIpI2BGarVyidInhbNP8ssOX2t1i8Vig==
X-Received: by 2002:a7b:cf3a:: with SMTP id m26mr19833107wmg.111.1566798151976;
        Sun, 25 Aug 2019 22:42:31 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a1c:9d02:: with SMTP id g2ls5809593wme.3.canary-gmail; Sun,
 25 Aug 2019 22:42:31 -0700 (PDT)
X-Received: by 2002:a1c:cfc6:: with SMTP id f189mr18812406wmg.18.1566798151630;
        Sun, 25 Aug 2019 22:42:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566798151; cv=none;
        d=google.com; s=arc-20160816;
        b=UKaVgMZKn7rdwGpdh7ms4VfLbV/El4r5A/LbwW7/ooWz9US2VOD+x/gd4GUOvWJpd5
         7CVGLEwBSLkFE9KsMY/C2M9V9AbUkhOF4w2VuPdmY5c4alyfhlK1lqNlgNykJpDe6NBG
         m5sEBG2ki1jX2wnu5n9cvnefOKJ2kG0+g07fDFNCjiJw59Fov1LwAq4Z1Akab7VVv49g
         ZUOEZKVaHQX8FO94b5xYm7WiXXg2c42iSSWMYrus/+fYAfLklPC98xfLi3cMDZNTY5KV
         K0qNp4MeZJg+R9H4aURWJ32d7IWPk+VFK1+S4qXEwkiLpjAE/8a85eIYGa+WTf6YM5L8
         fQ7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from;
        bh=M/d3ji6N4u72IV5xj1F+U33BF2r5Jm9Utgql30ccKrs=;
        b=x5wqlpOX/+KiTB9BHCL25szBY5yl7uiWepBlDeQvq+KwAL+d+t++liKlyGLg+Kf8hX
         5XRUgy60sFu5i2ix5BWfi9LlLo8jZO5yb48BPTMmZNwZVaHsHIzaWjl3Fha4/2tFTn9M
         lNbnDUNUNWIckbkUd2AzMm90O81rdVuM+M7bfDHBR+9pR4S9dl1jleGUU9hSjNgjTMyL
         YfG+SEmWWbltEMmtZgEuRGBwXthCQdwBUIvghQtV96B6HU+e+02iBEBouXzpN7ryEOAt
         HZ/3yFoCE3kCHcagweepxipV1KvwgI4k/4EEjEL9ltbkth5dECCvdYi3MGa4sxNgTWyk
         67CQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: best guess record for domain of kai.heng.feng@canonical.com designates 91.189.89.112 as permitted sender) smtp.mailfrom=kai.heng.feng@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
Received: from youngberry.canonical.com (youngberry.canonical.com. [91.189.89.112])
        by mx.google.com with ESMTPS id j4si8059326wro.60.2019.08.25.22.42.31
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 25 Aug 2019 22:42:31 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of kai.heng.feng@canonical.com designates 91.189.89.112 as permitted sender) client-ip=91.189.89.112;
Received: from 61-220-137-37.hinet-ip.hinet.net ([61.220.137.37] helo=localhost)
	by youngberry.canonical.com with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
	(Exim 4.76)
	(envelope-from <kai.heng.feng@canonical.com>)
	id 1i27lu-0004UN-0A; Mon, 26 Aug 2019 05:42:30 +0000
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
To: stern@rowland.harvard.edu
Cc: gregkh@linuxfoundation.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org,
	Kai-Heng Feng <kai.heng.feng@canonical.com>
Subject: [usb-storage] [PATCH v2 2/2] USB: storage: ums-realtek: Make
 auto-delink support optionally
Date: Mon, 26 Aug 2019 13:42:16 +0800
Message-Id: <20190826054216.31468-2-kai.heng.feng@canonical.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190826054216.31468-1-kai.heng.feng@canonical.com>
References: <20190826054216.31468-1-kai.heng.feng@canonical.com>
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

Auto-delink requires writing special registers to ums-realtek device.
Unconditionally enable auto-delink may break newer devices.

So only enable auto-delink by default for the original three IDs,
0x0138, 0x0158 and 0x0159.

Realtek is working on a patch to properly support auto-delink for other
IDs.

BugLink: https://bugs.launchpad.net/bugs/1838886
Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
---
v2:
- Use auto_delink_support instead of auto_delink_enable.

drivers/usb/storage/realtek_cr.c | 24 +++++++++++++++++++-----
 1 file changed, 19 insertions(+), 5 deletions(-)

diff --git a/drivers/usb/storage/realtek_cr.c b/drivers/usb/storage/realtek_cr.c
index beaffac805af..b304cca7c4fa 100644
--- a/drivers/usb/storage/realtek_cr.c
+++ b/drivers/usb/storage/realtek_cr.c
@@ -40,6 +40,10 @@ static int auto_delink_en = 1;
 module_param(auto_delink_en, int, S_IRUGO | S_IWUSR);
 MODULE_PARM_DESC(auto_delink_en, "auto delink mode (0=firmware, 1=software [default])");
 
+static int auto_delink_support = -1;
+module_param(auto_delink_support, int, S_IRUGO | S_IWUSR);
+MODULE_PARM_DESC(auto_delink_support, "enable auto delink (-1=auto [default], 0=disable, 1=enable)");
+
 #ifdef CONFIG_REALTEK_AUTOPM
 static int ss_en = 1;
 module_param(ss_en, int, S_IRUGO | S_IWUSR);
@@ -996,12 +1000,22 @@ static int init_realtek_cr(struct us_data *us)
 			goto INIT_FAIL;
 	}
 
-	if (CHECK_FW_VER(chip, 0x5888) || CHECK_FW_VER(chip, 0x5889) ||
-	    CHECK_FW_VER(chip, 0x5901))
-		SET_AUTO_DELINK(chip);
-	if (STATUS_LEN(chip) == 16) {
-		if (SUPPORT_AUTO_DELINK(chip))
+	if (auto_delink_support == -1) {
+		if (CHECK_PID(chip, 0x0138) || CHECK_PID(chip, 0x0158) ||
+		    CHECK_PID(chip, 0x0159))
+			auto_delink_support = 1;
+		else
+			auto_delink_support = 0;
+	}
+
+	if (auto_delink_support) {
+		if (CHECK_FW_VER(chip, 0x5888) || CHECK_FW_VER(chip, 0x5889) ||
+				CHECK_FW_VER(chip, 0x5901))
 			SET_AUTO_DELINK(chip);
+		if (STATUS_LEN(chip) == 16) {
+			if (SUPPORT_AUTO_DELINK(chip))
+				SET_AUTO_DELINK(chip);
+		}
 	}
 #ifdef CONFIG_REALTEK_AUTOPM
 	if (ss_en)
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190826054216.31468-2-kai.heng.feng%40canonical.com.
