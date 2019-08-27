Return-Path: <usb-storage+bncBCUMB4EN24LRBQOTSXVQKGQEGUHVPMI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wr1-x446.google.com (mail-wr1-x446.google.com [IPv6:2a00:1450:4864:20::446])
	by mail.lfdr.de (Postfix) with ESMTPS id BE9C99F1B3
	for <lists+usb-storage@lfdr.de>; Tue, 27 Aug 2019 19:34:58 +0200 (CEST)
Received: by mail-wr1-x446.google.com with SMTP id f9sf11777898wrq.14
        for <lists+usb-storage@lfdr.de>; Tue, 27 Aug 2019 10:34:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566927298; cv=pass;
        d=google.com; s=arc-20160816;
        b=BHJccbhKmGHZHmkfjgzjZNZLFCrVuDQBGFTlzreQEjn5P5+IL4XyOQWlh2uQVabQii
         ImDXMOCjO2XkX/YcWEz/67nMee40iigIM2RRcXFyqYa0PiOHx3yYSOnKpumM/BKXRjaP
         Y8wPZrPmGWnPJcpVit/WHyRpUKwGq9hc3cesXebPCsJL0dtOr77jd9tzc8d2eRdkC6Pj
         EInD9Xp62tpAEPzmCnNr0nU+pr6XSYfEQfvNTpOsvcL07njxEMxC/xsm8LYpOJBLi8eS
         zQLdUMR4V8d2wqoQFc/poAiJPrdNnkhV2/Pv+M1jvCKnvIpbYhUlMIXTkb9qcv9y+h+M
         KM2A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=V5NFdxK4JiDDxGt6HFjI6Zq36IjspvEp9yqI1CJAUzg=;
        b=fb7D2WFNXhWwV3sNHR0ETrjPD3knHzE6V0k8N1qVr9h93mrWXeN2/Ajm8y9lgXcpbr
         LHekOJeQ1c4mJ4m/zMsS7c+lriqumAoFCZ6VdAGnZP3/yXc9l78xMuk80egTWcco9EuW
         JfhJi+ydOaeDzLuctCRSaldmo0VHQsHo5iQkC2KHdemPg316WWZH7ouf86IuAuHkUb25
         0VNbMhUCXN2Nysnela6jPC0Hb0Fgx+mFqEzvDK1HQtAPwUvyVD80CU21e92AkO1iY6Bp
         2dRatKV72ffSq1FFzbsrSTw2+9t76kvMg0INdRvxjzsyBOy5b3G8pNAWrFhhBrkqfEZm
         NIVQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: best guess record for domain of kai.heng.feng@canonical.com designates 91.189.89.112 as permitted sender) smtp.mailfrom=kai.heng.feng@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V5NFdxK4JiDDxGt6HFjI6Zq36IjspvEp9yqI1CJAUzg=;
        b=TE9/UBaup1gzz+zqibnRodPZ/sAl0bQ2814QmHroQLm1//qwjyFJK7aYDM2LRkB7ZD
         +cSYideoOPR5H/8AFKEDxYp9hrcXLEIlrzo0FL7irvGGnxBhmpZDrzcjmZrnkEBihb22
         u1E0LMQ3VWcbSKpThTbPM0SY4lynV+Ae0kIVs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=V5NFdxK4JiDDxGt6HFjI6Zq36IjspvEp9yqI1CJAUzg=;
        b=CoWtfHxM2xI6yXbo3ZW0tNdWaWHN1kEDOLJ24msyc+LcKEMtJC2LLOTU+gkDlKP21N
         3Gp8Kfk5VokjTOjmL8QmTOtZkKb8DTWpbax19fQ3Rb3uLFHOUYL00tQDsV6BY9V77fum
         d4od2KWo8y1qxP/R/FE9BYED4s+Ud97rjZVF7Hge+vgaCKDLCSjq7ODBLnsKgYPkR7B1
         tsyNHYytJKBVaDUSrL3gml3FfCE7vIDBK4PbfqBOOUUmrez1QbT2UObOFgvO8kZl8xwQ
         VCoID7or1VUI+7gvVb5JqiA7g2UXIDP6iBdqDLbJ1DrEZRYqU3P+vs0Ahu6JvT8uEm5u
         mHjg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAXPdID8vrjAic3M6ESNKLiY18oUYP2vB1w495iJ4IWpHiEmWtI0
	gYckrk2nofpHOQxRDBPkj/I8HA==
X-Google-Smtp-Source: APXvYqxQIvNRoWrYJW6URZPpTGveYDOb1lvdl9YtqpLaJf8FdxT3TJHPwdr0TdeWR+gHf1urBmAU3g==
X-Received: by 2002:a7b:c8cb:: with SMTP id f11mr61823wml.138.1566927298390;
        Tue, 27 Aug 2019 10:34:58 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a1c:4404:: with SMTP id r4ls7883wma.5.gmail; Tue, 27 Aug
 2019 10:34:57 -0700 (PDT)
X-Received: by 2002:a05:600c:254c:: with SMTP id e12mr51638wma.168.1566927297555;
        Tue, 27 Aug 2019 10:34:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566927297; cv=none;
        d=google.com; s=arc-20160816;
        b=zfanZIz0yQKbErwwzf72a5+QdYWnUAC0Yu3UZ58wob0rnh5b01pN8bx9GATIP/JDDE
         zN+aL1kja4NGFaDO8nOECBaKsQzGj8pfHkU6o+JxP2cWfjnVuq3PrFDSPaGPpFApC1CI
         ion9sq+D/jbmZLMmO0yUekKcE4E0RLwEwGuOgUgKQt8tR1Kwa33rjHG6JoqygX0lBUO4
         7LIDIZ6eO+jdl9qY8PFufnTG3E6FyNqs8ELkhehKl5T7w99WXujY3RyY/TXOiRKQ3vTP
         M79NqSbH00zLl3Go+TyOzbfNU0SIHVzR64EDRGHOGY3XNwwSh6cGUNiJw1NCQ8IBORCZ
         VwrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=UBf4lbzwV7rb9wBV5VJmBuy8ndsNawD6TS3MxN1caQQ=;
        b=wTqfUw+nbdTN5MKDszkc4UqveS8ThHd0tmBJBYlNPkpAD/zueHo/BjOdTjN75UrmPK
         Umzjo1A7JaU6ur7ojp3YkVfxU0TaXIlZgnGY1qC+AI1OSKCsue4eTMqONcuGcq0TdHGY
         TiVUdTGWuwo+cK+bDusFyou03uB2kYmb41VwJMUj+ys7iQ2qu06N1RA+1sq6T58ic9QV
         8BugEmVxoJBBbscVDbwD5yhWHBFqiFbV+2FhIRFCgP/RReMf+H0XPonBwbgXzBe9Y0Ur
         0O7ScdG3qeqE3pEMMt+/ERmdiq/DO0N254/s0DGCDFgDiz56dXd/hXiT0u1sUfuCmbiE
         mmYA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: best guess record for domain of kai.heng.feng@canonical.com designates 91.189.89.112 as permitted sender) smtp.mailfrom=kai.heng.feng@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
Received: from youngberry.canonical.com (youngberry.canonical.com. [91.189.89.112])
        by mx.google.com with ESMTPS id x19si41663wmk.11.2019.08.27.10.34.57
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 27 Aug 2019 10:34:57 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of kai.heng.feng@canonical.com designates 91.189.89.112 as permitted sender) client-ip=91.189.89.112;
Received: from 61-220-137-37.hinet-ip.hinet.net ([61.220.137.37] helo=localhost)
	by youngberry.canonical.com with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
	(Exim 4.76)
	(envelope-from <kai.heng.feng@canonical.com>)
	id 1i2fMr-0004Ed-NJ; Tue, 27 Aug 2019 17:34:54 +0000
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
To: stern@rowland.harvard.edu
Cc: gregkh@linuxfoundation.org,
	bauer.chen@realtek.com,
	ricky_wu@realtek.com,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org,
	Kai-Heng Feng <kai.heng.feng@canonical.com>
Subject: [usb-storage] [PATCH v3 1/2] USB: storage: ums-realtek: Update module
 parameter description for auto_delink_en
Date: Wed, 28 Aug 2019 01:34:49 +0800
Message-Id: <20190827173450.13572-1-kai.heng.feng@canonical.com>
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190827173450.13572-1-kai.heng.feng%40canonical.com.
