Return-Path: <usb-storage+bncBAABBI4MVHYQKGQE46QHF3A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ot1-x346.google.com (mail-ot1-x346.google.com [IPv6:2607:f8b0:4864:20::346])
	by mail.lfdr.de (Postfix) with ESMTPS id 952CE147651
	for <lists+usb-storage@lfdr.de>; Fri, 24 Jan 2020 02:19:32 +0100 (CET)
Received: by mail-ot1-x346.google.com with SMTP id m18sf90162otp.20
        for <lists+usb-storage@lfdr.de>; Thu, 23 Jan 2020 17:19:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579828771; cv=pass;
        d=google.com; s=arc-20160816;
        b=UYCelNrqICkPAH9+fijTZmbNzpBnR3ab5Nb5uD2lUR+MFny2ueRPDayMupZg6/V58K
         94TRo5U6DamUftR9qqo/lYTw/2wpADvoPUMcykYAU61cXuQdJPkE+k0ASpFljH2cEtDB
         rr0s3v4rhmRK7tS+j4KVucRQO0QZq7Ca63+W5Q0LcXzxoDpgRCxgb5sxUwvaJaRunGq8
         TNvdWwTR9miigVpgg6bySAlJxbNXw1Jf4iDn3X+BVl6OodGMNu5rfrfbRXSGWmSMIK0q
         Vi3E7slSjW5/C2HhhIbgd22OM0N3kp7IEjgEMVUg2hfreKjJIQaQ5Aloi6/boasmTb3j
         9HvQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=0g2IMUIZjOG+ahI2lZS05SUk8vbfAK+j0Iqc5c66Tb0=;
        b=wy84aiIzzUGcIwR81oa4hdSDLrbWBnH9SO7ruVJf2MPL/AQEsXk1wNNoKbAWikz+IJ
         ffSzdvUT5JnCIO6ZrhDmLJI4zf9FaKcn4RRpWPSEYDqLtoSEA4c7et88XJ9M2OANy1bk
         KGtVVa9qkNakYK+qRdpdNtRfJACohhdhD6QYZ8BzBo5Spcps0OMj5By00zYT/hq3pw9J
         LFmThrR2yrtiSUfvu35Ni+c+219C7XqV0/xgEesnIZzPSwIcVFU0fecf5SW/f/L/WPel
         cv6rqkTUOZnaBnP9ssHzGv0mLskHtJlecQWVgclq20O4x55hGoUAnKz0WWm/HjM+uFYy
         7LXg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=mhf8Vvsm;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0g2IMUIZjOG+ahI2lZS05SUk8vbfAK+j0Iqc5c66Tb0=;
        b=HvGI/bOg7ZILs3KiHf96VjuJsf509I+rEyklW5iWOirIeabioWxSB+hX+D8H7lDWpI
         ZOYd0hoxMxhGvgBOg4NPlXs0WjQPX/s8eyHi6fS/WGBmS2JNDyKcE8zMk10s41/H6CCn
         C6gcvXAte4KXIGihWBgnzI8rEgz2ghglOhVtI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0g2IMUIZjOG+ahI2lZS05SUk8vbfAK+j0Iqc5c66Tb0=;
        b=b8W97evxI4GFKXjqmdXFTIHz0+uGathi8qPbrfjdx52U3wEfawsP+guUZ0kgUZHxoU
         2XKFYAvWec++AUTTywreVGWs1jAIsSz8ZoJ1UgtLDIpbBxaqILI4PaRg/wGc6tSGYED0
         kHMn87cBmUwcA8AzA9ElzFK2npB85ZRyP6BrWWiQl5/HWKpCrYEJcxnzlUXlbOfIksoK
         yTQSSL9LKXj+i9nw8R1l43jPV8k2S7g/H3PtukBatxsmMAi8eJ4mHx4go8gjdzEi+Wlb
         iANRFMo9y1wN+EsVRd5V8UeZgXUBJFxJjPHXZGVR69m6VwZ2sRVCVdo/tiFW37mq7MpD
         jXEQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAXKpupC9TJ4bGDKftEYNlMEz+TZX9wIH0fUklAmuG/GUQFtb5Gy
	mwdGWxGsgTr3xvG4G3KbpgyUhw==
X-Google-Smtp-Source: APXvYqw2x/9JVieBxr7aL2YaoFIhye9NOYoCuVZ8sW9+ypCF8Z9t0IpLC+eHxEX6GFSGXsFPuaOIsQ==
X-Received: by 2002:a9d:7f16:: with SMTP id j22mr928822otq.256.1579828771325;
        Thu, 23 Jan 2020 17:19:31 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a9d:3e15:: with SMTP id a21ls90026otd.8.gmail; Thu, 23 Jan
 2020 17:19:31 -0800 (PST)
X-Received: by 2002:a9d:4d8d:: with SMTP id u13mr879941otk.299.1579828771027;
        Thu, 23 Jan 2020 17:19:31 -0800 (PST)
Received: by 2002:a05:6808:1cd:0:0:0:0 with SMTP id x13msoic;
        Thu, 23 Jan 2020 17:17:38 -0800 (PST)
X-Received: by 2002:a17:90a:ba91:: with SMTP id t17mr562722pjr.74.1579828658174;
        Thu, 23 Jan 2020 17:17:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579828658; cv=none;
        d=google.com; s=arc-20160816;
        b=iHFDSXp47RxwcaQ8uLA8BOJ0L+ROOZKLe0HN/SJZfC3nPqV3SP0CPZC5QX7qqbLjy7
         pqt6zrN7/2teL005Pe85KvhcrYR0P/6oi+AQklAEkvCtc9fgNgTBsx5arx2uKu8gCIfv
         p/kG2PNwrJAiHIs+IiY5DpYpVeFCkL9llSOzKgML71I8P/Tr3Fo6wc8TB8j4keY2dpTX
         0TiwiNs7fcSZllsIKECO8NEE2FdhAs2RHhMZTKvmmRkyejwOrv1j2wQQtyPwWN3EXL8R
         VgM7ahmblfPEebdXpAQYuTv5zs7jCLmICUBmfe7vCMEFTAuc4Zc8G6NLknuasSy6cOtV
         Sqbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=L3khULlHuqfumWzllx9ex1aBnGvNMx2upI+GiXSj7Is=;
        b=L0vRdbkgSAjKPmlV4jStYI5KX6OIlSCLe9eVVmmxscBkZOem0OTldczHaM0c84a9/m
         4Ok2WJAL2FGHra9aXKqpwnFO8zpwmKehsWDFg2SHlkvzMODLes/6TtOTQSHQmy3M1qYG
         EsoEUeZXIdw2mlXUdfNyp4jRDOIZYJOTzxf5PAvB7l3fI4Bw/h85v9ZP4YWhhSEgJAh1
         vVzgkZf5gByl7VUp9D7l+WBubACcsGAn6jKKTrmsVaTK6iz8/87IyycyyIn8Qu09u6AC
         yD1R8W1LbRsVg9BRcle+Oo32oplrKPZIs9qAbt9dbNCGEwFZvqFAqAP1cCg/f+npIGWl
         2/LQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=mhf8Vvsm;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id n17si3092819pjt.90.2020.01.23.17.17.37
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Jan 2020 17:17:37 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B21A4206A2;
	Fri, 24 Jan 2020 01:17:36 +0000 (UTC)
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
Subject: [usb-storage] [PATCH AUTOSEL 5.4 25/33] usb-storage: Disable UAS on
 JMicron SATA enclosure
Date: Thu, 23 Jan 2020 20:17:00 -0500
Message-Id: <20200124011708.18232-25-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200124011708.18232-1-sashal@kernel.org>
References: <20200124011708.18232-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=mhf8Vvsm;       spf=pass
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
index d0bdebd87ce3a..1b23741036ee8 100644
--- a/drivers/usb/storage/unusual_uas.h
+++ b/drivers/usb/storage/unusual_uas.h
@@ -87,12 +87,15 @@ UNUSUAL_DEV(0x2537, 0x1068, 0x0000, 0x9999,
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20200124011708.18232-25-sashal%40kernel.org.
