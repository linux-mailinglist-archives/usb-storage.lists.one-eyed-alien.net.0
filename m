Return-Path: <usb-storage+bncBAABBI4MVHYQKGQE46QHF3A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ot1-x348.google.com (mail-ot1-x348.google.com [IPv6:2607:f8b0:4864:20::348])
	by mail.lfdr.de (Postfix) with ESMTPS id 95710147652
	for <lists+usb-storage@lfdr.de>; Fri, 24 Jan 2020 02:19:32 +0100 (CET)
Received: by mail-ot1-x348.google.com with SMTP id t10sf101372otc.9
        for <lists+usb-storage@lfdr.de>; Thu, 23 Jan 2020 17:19:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579828771; cv=pass;
        d=google.com; s=arc-20160816;
        b=cvts3aPiKaRQrPWWJdRWlt8MzawIH1DiDJw4xxiqf6QqeEBDLvZrgCJcdUrP1Do/vK
         u5haZKOX1H8H7keTV2A9KAxeUjNevRmt9/BR1zIpzgEikDk87NMdo0IlymT7TMewoJKj
         /lgXamax/W5PQrfjzVESOxn3Ihr5CiApixr3a2B4Kc8ufIfMS5pC+aQeRK6T1LxG2FR2
         hOThw5wX/N6W3DShAdZ3/r4GxNOeBcxU+3tGw+Q4mGPMa2qYXxDufA8DdgHklgnz/N1b
         YtMc8ojjuLSt+AKmLvGbBs8yfOnjcEWdLtx1aJUkIx2+PMhv0q+Jt3aVN1CKIUOgUxRO
         xD4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=6tueGCDulpoMq1UxAvh3X5CDj6pF66yIJNAdlMiybXE=;
        b=QYofG3KdC0tmVDx8VRQeqt5gjoPdG/Yl6YaGr6nNTBrzaD7rofq5qpbx0+WL3LeXw1
         2XKXARRvXAwhk+YCfGz1R3U+IeCTsceLxLv+yxCdyDGz7zkdOLnOvp3vHgVFrQnYpZZy
         Y1wPSWOLkZUpLkX5Dkerj7W25Ze5YAQrnqkGnUjpekNxqTW/weDscpPer3dzYoJ3sII2
         osiIloT/YQmmSBBapCAB9S6NIidAOQEQKDsgLUX5sBUiSPkoV4HuSxcDZFBMjqDFOExK
         hAbKYuOHIEIq2AvKLpfCdNQQFSA3I5Bz+FZ5JCzD8lQeQmrCLJ4y+npgww6RX0tfI2lI
         NaTg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=xIL1BCOX;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6tueGCDulpoMq1UxAvh3X5CDj6pF66yIJNAdlMiybXE=;
        b=JpZwQaQSfjAWUGw+7mnvh1kTZYCFL78OLOIkQFUk+dpaKTcm8N5YfPXgUnF1FgwQtP
         J6z/jBU2XiFa8V1RV+3orpYpFDKP5bQTfV/3thG2hr4/LlXzwHb/a4aY4JsC2HilC9H6
         EEOGsHXBCXc5S3mSZmcI0gPMW6AFRj1zkm/as=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6tueGCDulpoMq1UxAvh3X5CDj6pF66yIJNAdlMiybXE=;
        b=JaPYo88gcUZ4He/muQhWMDGDsTEovW074CPax5tZBAIKz7voUU1nHz5JsZ+T0Qd/qD
         ZM1xIpLSOSC6u5rFrgoFxDK/L0vc6LfN8KLiR4adC8ZST7iyaXWwMnJFAUryWgHbj+uf
         vz2kt6gTaO8NuBmbdI+9FqzBsVZIFcqtJ+JhlrflgicB7jOnN1EFid8zge+N7JWvCyNn
         iOo0QiO20wpD6DCp2qSQeRiy4QCW4jQD1OzAjk8hrmHoY4q30LQHd6t6VOZBxNjT+fn4
         pFvghIJKva/EHe4sKCiANwxHsAYUNloIBqPq5iBKTY4c1zAMUuPapPnqgXr/n1wbA3Vw
         zzrg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAXpkuDu65VaeY3781ei8iefWKov/XT6YZRODohEEchzmy9DPUxC
	5naqvXWM60+sm8kB1VIHVsOGDw==
X-Google-Smtp-Source: APXvYqxmtPcngViSPPyPLDImCfna3J5NzyCgzwXtJICJ/nc+LhGbEWmczsv3wb90NjR0u6sUsAkNsQ==
X-Received: by 2002:a05:6830:1248:: with SMTP id s8mr935708otp.202.1579828771345;
        Thu, 23 Jan 2020 17:19:31 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a9d:3e15:: with SMTP id a21ls90019otd.8.gmail; Thu, 23 Jan
 2020 17:19:31 -0800 (PST)
X-Received: by 2002:a9d:6c52:: with SMTP id g18mr944486otq.356.1579828771028;
        Thu, 23 Jan 2020 17:19:31 -0800 (PST)
Received: by 2002:a54:4782:0:0:0:0:0 with SMTP id o2msoic;
        Thu, 23 Jan 2020 17:18:07 -0800 (PST)
X-Received: by 2002:a63:78b:: with SMTP id 133mr1227279pgh.379.1579828687063;
        Thu, 23 Jan 2020 17:18:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579828687; cv=none;
        d=google.com; s=arc-20160816;
        b=DkNL9DZPIP+dM84by8Pl055X4MYFQ4euqc5Dfyh0E9tk3D/4dEJnYjOwM2y3S9JkaJ
         Wg+o7fDPi9SyRhQa2f/RCeGIaeYUmMJSt/qzDQ3JhAEEf4ODciP7ZLuqsMUF67UVxzpj
         GcdVlaf7f76cch74T33LNZXT2CcFQJjY9bJgFYVNMaIGc7fqVW5xMt7drbZ1HrJSc3R7
         dTaQNurO18qMU/Olz/wLMdLCBqnh+FaJiSxC098cnrBhpNsoo5LzUIbK6o+hZoPONZsi
         wGRn1WwYkBWSAjb9gs+2BEX47hWxuEZ3TrRmCMvInnJ2HEVFrpalviQZ2255lo94RlAd
         32FA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=E1C42q6bNNmNdO2k1P+FOJWkQNeiaRQTLfgoIVHCalk=;
        b=oi9XyBUKScRqy6gBHrJa8niLlGjI1es/cGSas68bSzcIAwZZdSv5dyE2wgFxx6uC3t
         7LOmWmVkZ4HcKw7ei66guHZ1Ath/1FqqSPx0hEHNa5c3pveNfv34nwiMeXlX4QFl99Ae
         ywlJFSCZyHs6P0d+97r7UGMzmtcRBZOVR8FXRc7b4e5xsBYnUIhIjCZBV9fUl6o/qxAT
         b0iE9F+/QTKfu4V/c1o0ILkkcVUXkXeO3jl437wGBtRdEzsd082gmCbPMhUOWOjXr0gr
         6nWXQKpgrmv48PigbidzDgzhuHmooq7HCsFF+AWdhquKIdUeJWZNAfvjkPVjsq2hn+L4
         YAxg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=xIL1BCOX;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id k4si2899444pfp.269.2020.01.23.17.18.07
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Jan 2020 17:18:07 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id DE3A321D7E;
	Fri, 24 Jan 2020 01:18:05 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Laura Abbott <labbott@fedoraproject.org>,
	Steven Ellis <sellis@redhat.com>,
	Pacho Ramos <pachoramos@gmail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] [PATCH AUTOSEL 4.14 4/5] usb-storage: Disable UAS on
 JMicron SATA enclosure
Date: Thu, 23 Jan 2020 20:18:00 -0500
Message-Id: <20200124011801.18712-4-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200124011801.18712-1-sashal@kernel.org>
References: <20200124011801.18712-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=xIL1BCOX;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Laura Abbott <labbott@fedoraproject.org>

[ Upstream commit bc3bdb12bbb3492067c8719011576370e959a2e6 ]

Steve Ellis reported incorrect block sizes and alignement
offsets with a SATA enclosure. Adding a quirk to disable
UAS fixes the problems.

Reported-by: Steven Ellis <sellis@redhat.com>
Cc: Pacho Ramos <pachoramos@gmail.com>
Signed-off-by: Laura Abbott <labbott@fedoraproject.org>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/usb/storage/unusual_uas.h | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
index f15aa47c54a9d..0eb8c67ee1382 100644
--- a/drivers/usb/storage/unusual_uas.h
+++ b/drivers/usb/storage/unusual_uas.h
@@ -163,12 +163,15 @@ UNUSUAL_DEV(0x2537, 0x1068, 0x0000, 0x9999,
 		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
 		US_FL_IGNORE_UAS),
 
-/* Reported-by: Takeo Nakayama <javhera@gmx.com> */
+/*
+ * Initially Reported-by: Takeo Nakayama <javhera@gmx.com>
+ * UAS Ignore Reported by Steven Ellis <sellis@redhat.com>
+ */
 UNUSUAL_DEV(0x357d, 0x7788, 0x0000, 0x9999,
 		"JMicron",
 		"JMS566",
 		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
-		US_FL_NO_REPORT_OPCODES),
+		US_FL_NO_REPORT_OPCODES | US_FL_IGNORE_UAS),
 
 /* Reported-by: Hans de Goede <hdegoede@redhat.com> */
 UNUSUAL_DEV(0x4971, 0x1012, 0x0000, 0x9999,
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20200124011801.18712-4-sashal%40kernel.org.
