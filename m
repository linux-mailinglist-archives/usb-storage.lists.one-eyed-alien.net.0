Return-Path: <usb-storage+bncBAABBI4MVHYQKGQE46QHF3A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oi1-x247.google.com (mail-oi1-x247.google.com [IPv6:2607:f8b0:4864:20::247])
	by mail.lfdr.de (Postfix) with ESMTPS id ABFD7147655
	for <lists+usb-storage@lfdr.de>; Fri, 24 Jan 2020 02:19:32 +0100 (CET)
Received: by mail-oi1-x247.google.com with SMTP id n196sf84535oig.6
        for <lists+usb-storage@lfdr.de>; Thu, 23 Jan 2020 17:19:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579828771; cv=pass;
        d=google.com; s=arc-20160816;
        b=qxw9F8uraKix8fJyc4KZY2USBNPyTmWVLfRYRMW+jg2AkVxFhKhxx+C05DRHQo17j3
         BSaey2LcsuZzDTGO3d/JAIst8mUPIBVu0UflOx/63TOzoHIWSlHe4b2Jc7gG63dbZU3Y
         Raih3cx/xkcnWqQasjb9lczJqRXQNRUT+6PHrYdfIZhxghWqTOmmKEfJd1DSyAZ/Gznu
         J27umj3FAmKyMaCHHDUkWnCs7765Qm2LzWOJRRcP7qnC4vGabS29oXzDugqgoZn06PuO
         W+YUd2HdHaSORV8GU0D2/36599Wa7Nnp6y/bn3Hhamskk97H+amKDe6MoO7DAiRXhN5D
         cytw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=gW2nZmVEqcTAmZeYfQs5nB0R/Gs8O65w4pl5OHS5zCk=;
        b=SjZ4IT2qQ/nD1kc91fY6fvEYepsqIuOoldKrMgfCBsI1n5h3OIFngM+i7BiRLcyZb1
         9zXkKv0QBsDlst9cymvEKPrH9gqOJfcHKuhFWJ9XWj86D2fxSObIDK9iH3flEMxZRHIA
         3HoummPGJ6jRcqN41xsH0RnpzXmg9+zubfKzP2lCKHF4LOlPozF/PLIZNXNUSvfhYQMz
         0CNkCjEm6/5Pzb6WaZsYF5qLFQVIU/5tX2LJcUKs1j4bUXqtnMhVXPO7iM0eoaFKVdlG
         bfnMRFelJl9ObywojSgsqB4Q9Dc4Y2XmNmjRFVbSrhy6Q7IDRyJuKO1E0I98Ljd8AhO5
         RGbg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=2lEpOucF;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gW2nZmVEqcTAmZeYfQs5nB0R/Gs8O65w4pl5OHS5zCk=;
        b=JTgYJMXI/xH6xSSxkJKKB860wUgdjagWkbDhOmc2M/iyashsP3vYvgHTv4L/k13h7M
         g3V3Z3kqwWILbsBbxZEJf+BgtY9NpcIOtcwHQaRP1fZNKyyYR4M+iFxR7rxkgbWjEuQs
         5hayofrAt+WsLL0QHSd1VZNz+oGhJr10EIl9Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gW2nZmVEqcTAmZeYfQs5nB0R/Gs8O65w4pl5OHS5zCk=;
        b=EV6t6jQPPZkjP90ynAiC5MdfUpNLL+WJIbK0pBM4qczS+nflFytEQbBCLNrAswztJY
         vM6CMGNC406YdzDb1MoD8jZ8eKSErx2Fa+VMmVoJ9XMbVJ9GK8hBh2R+bwe1bWHSr0/U
         +7G7/punwGKEonILsceX+mJFkGWOEEd8Gr7Hvk8ufeHcGFTYHtaJPdc8ZxzQVt1tz1Yo
         ngBvjpp8WUEXz0okgytoxB3T4Nam/ORtNf8MXH1giE/H49vqAp1X13ZSOEZG5QWG3qfm
         kG9A/nNvvZla4uwNDiCwS/DG6+/Q4j+zcPg6TzEYFGCSYYLXsy4Z1LpK1mCu29U2byu5
         jzzA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAU/AlCT9fEv/ywz0xCY5COe2tYj/OYF2VujspaIBwXA4YtijxKG
	1bq2aDzc8UoCUdbJfA9zTjWYiA==
X-Google-Smtp-Source: APXvYqwa1Fv72pPkpaGikLABYRAYCQsBbh4omaGFH1d7mMI5HQZ1qRJ8GAq37kKMEr533QRzZtkufg==
X-Received: by 2002:a9d:6510:: with SMTP id i16mr907610otl.142.1579828771341;
        Thu, 23 Jan 2020 17:19:31 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a9d:3e15:: with SMTP id a21ls90022otd.8.gmail; Thu, 23 Jan
 2020 17:19:31 -0800 (PST)
X-Received: by 2002:a9d:588d:: with SMTP id x13mr915156otg.6.1579828771028;
        Thu, 23 Jan 2020 17:19:31 -0800 (PST)
Received: by 2002:a54:4782:0:0:0:0:0 with SMTP id o2msoic;
        Thu, 23 Jan 2020 17:17:56 -0800 (PST)
X-Received: by 2002:a17:902:a608:: with SMTP id u8mr961179plq.76.1579828676505;
        Thu, 23 Jan 2020 17:17:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579828676; cv=none;
        d=google.com; s=arc-20160816;
        b=FLFwI+5Mn3Fp+Va1Ay/9tWT5U0w4HVTB3H76vQsZoD8OuPYb+bGeGjRxsOEuY/Eaqj
         U+u4LWmyraMKmLOO7Dr01crbl3sCOjg1aDSfOOBAKZdD0zQGQr1GSDTqC+CafAYtBnEA
         yPEgDMeb26ONgSnlcRz1Ow3GwG2pl4lKwR6nr1cDXMR1DpiC5xjgLvSLsm58LZ9Gm7tT
         CtA/kUiFnaVFzzOH/xuP/bFuCdC5F7MkSvI+MOXKCVGRS5Ia2AkAILzeG/0NWYic8oxU
         4pUY7vjvECzXuiOhkXJwIN5nrTdokrGKLn8BZp5zViQvuzzv3fYpi1EsT2s14OXWyDl/
         ejLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=L3khULlHuqfumWzllx9ex1aBnGvNMx2upI+GiXSj7Is=;
        b=0bOGgLvCDynEDARheyBRZUGidjPeWPOtfulX7/LfroPzsVHdgL3CBSYok0kLlnB49/
         gH70Ov+CdXGGBtY5GsqAn2/hBcV7FjFZr45fmrC72kO25uOZyv4UO5zKl4Uq9AlK9KGc
         OALRtJ7VO1lPra/KRQCzFfTi8PZK0hcN1JLB1mv5dbWBpsLQm6kdk0CctXsozDxLqHGv
         ORqqDIcezMhK3b11ZeCvmgDl75eBMT02wOaSz7QHb0lQoZv5GaKjpZk2388MZCNsu5w8
         AO7PoEy1hXoCBV4Jv1UsQ9zAPmOd7rD+09/e70JVQS3rgGanu+wzobaF2HzUMQBw5fst
         N4Ag==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=2lEpOucF;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id w11si2952685plz.320.2020.01.23.17.17.56
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Jan 2020 17:17:56 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 563E721D7E;
	Fri, 24 Jan 2020 01:17:55 +0000 (UTC)
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
Subject: [usb-storage] [PATCH AUTOSEL 4.19 07/11] usb-storage: Disable UAS on
 JMicron SATA enclosure
Date: Thu, 23 Jan 2020 20:17:43 -0500
Message-Id: <20200124011747.18575-7-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200124011747.18575-1-sashal@kernel.org>
References: <20200124011747.18575-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=2lEpOucF;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20200124011747.18575-7-sashal%40kernel.org.
