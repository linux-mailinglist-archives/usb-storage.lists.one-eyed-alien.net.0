Return-Path: <usb-storage+bncBAABBI4MVHYQKGQE46QHF3A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ot1-x345.google.com (mail-ot1-x345.google.com [IPv6:2607:f8b0:4864:20::345])
	by mail.lfdr.de (Postfix) with ESMTPS id A4E38147654
	for <lists+usb-storage@lfdr.de>; Fri, 24 Jan 2020 02:19:32 +0100 (CET)
Received: by mail-ot1-x345.google.com with SMTP id y24sf104856oto.5
        for <lists+usb-storage@lfdr.de>; Thu, 23 Jan 2020 17:19:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579828771; cv=pass;
        d=google.com; s=arc-20160816;
        b=fK+xhfmDoluOk6jVHCvEHca/mm92J8qlRi08Pj1i7e9PK2HgncpiGy3x1huzmRdNR2
         SeU9UjPzBrcIs7g9E1m2SLUP2OzvcuZ0L4PYmy5jvgeZXAFwc7BYVu9RTXMIowJr0wzP
         7P14QjP9u/M0pIEcW+XUfcqfJKNjrUgiZvZXqBCFYxuGh3vhWUzSRs9U/pavjAzbuytR
         ATmvNYhbQpctHNqQVTiQrRcNbl6imFiAbc6nQTyk32TuW/kR181BMVt2XLJ5j/DqEy+2
         5T3ij3YoFkWrPNZrUrIs6IVSJyHrcUe7lMPC4JP6Ne3Jm1LRc7but6ZSpxkXtvusLBQR
         CG+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=m2TRx1XZEGCLMgM9FdoDNegKJpyavKvFp+CmsRte6pE=;
        b=mSkwiLOb8WJo7o76PRzRXwoJOxqPKawA8znxx4uedlxZxBxMGGn6DV7PcFj4mKOCHH
         +V9jqbpGc2Nbkk68JnXECuLOGYikdEVfGpnYbXUqiumuoMqrpqrw8n6Kfgre3UShgtBG
         8IQ44HFid5vHd0Zy3Jbu0td9N1KncucU6mlWlWz04ohmk24rR8ikWoDiO3eHT/ngUkjS
         sJrMK0OvJCp+YW42joZFDTzqBOHl54w0qDLrl6M+mvjp+QA19KNK9iDpRy2eTZofxoGO
         NC0jb0VuZPAckEou2VGExauVOw6IwN4qSsOBw/WjMxVBql7uS2oh/mMQEGUU0LZ/j6TL
         RNOQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=KMF6rzF0;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m2TRx1XZEGCLMgM9FdoDNegKJpyavKvFp+CmsRte6pE=;
        b=ERAHGxtoBImbu1QwRXh1QT7XhVAkC27JeJWloRWB2U7jwzKSOe6yfsqFd+ZTJFwC+l
         mNABnF8eDzp4geYvrl0ilf1H2IgVDjWmUO9nsPsHeowvEJJCT0oTZ/5pHTNGD+mPmpTe
         vydsmYGl0C4hXMyrfjkVEXlxDwkEUEszNfMvg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=m2TRx1XZEGCLMgM9FdoDNegKJpyavKvFp+CmsRte6pE=;
        b=GJCTvRvYCtQJVOlSGeZdgobqvCbsKAAzxPEMktTzdgOmnQWJXhcknrucQPxXpOOYST
         FZHkGkY+FFG1M5O011TP0d7cdNr+gq6AwLHDDqGeq82hhi2ErD8d0zNcx5COFqZj1ZPj
         n5NViTz+yR3iQAl8DUKeBd91l4QRTozapVwigJ0+3fEKItLsImuTwBqCXnN7W+EVRGZv
         At3yHsKQMK7MKnGmnTFDZPqbRB9UzW/BjcN9usoZZiGGnfbTTXjm9kgbWPoODy05XFNN
         qBvYRJtkgquS2RSbF27Ft2EenhWVYX/1xm3wakbxCJvgdai2kPI2X+18rMQK6vQvIqKX
         24WA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAWbQLQK8qNY11EYsiBjfs6wVyzaEQ6UxYVnOou+bUPpWDdRAh8X
	peMMIVCb4N8xgoJtGZKkiZknLA==
X-Google-Smtp-Source: APXvYqwKxbILB7vWbgVqbqLcUXKePyqUmr9B1zCsxYWW7TogfPYajP+gy2VeOD5vR0dUQsdHFqOstw==
X-Received: by 2002:aca:388:: with SMTP id 130mr484481oid.89.1579828771553;
        Thu, 23 Jan 2020 17:19:31 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6830:4a4:: with SMTP id l4ls88287otd.11.gmail; Thu, 23
 Jan 2020 17:19:31 -0800 (PST)
X-Received: by 2002:a05:6830:2099:: with SMTP id y25mr888940otq.87.1579828771022;
        Thu, 23 Jan 2020 17:19:31 -0800 (PST)
Received: by 2002:a05:6808:2c1:0:0:0:0 with SMTP id a1msoid;
        Thu, 23 Jan 2020 17:18:12 -0800 (PST)
X-Received: by 2002:a62:ee11:: with SMTP id e17mr1027127pfi.48.1579828692012;
        Thu, 23 Jan 2020 17:18:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579828692; cv=none;
        d=google.com; s=arc-20160816;
        b=dvhqn8NAGcENk1asMtkzslL+goTaeXXlBAhBDv6IsqILEo5Dtp/PQW1t5EBxl7PByo
         9ISL1ztfXiaL0wWVqWYEqHY4aorhUmTr1UobdFxMPyJjfgubRKWRK5jLtN6haevmXlmy
         KBHo8lTTq19HNhlNgpC/bnokzN6YRyQGTTEC6rp6XD55FgglOK7JOhRoSvtgLa8lJprq
         ZaGCiXnzBNK4ZDCo8NKtK/4djwc3XEh43f0mAVPJ2ilJrx+l1BI1Ysyr//Hidm3eZrgA
         BoTihqF3w3WBk/eE6JaxuvbqS+KyJ5k6+LC++u0EMBY3+qi9ZaWCXX1rLxzIlpUpCMbx
         Nkcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=E1C42q6bNNmNdO2k1P+FOJWkQNeiaRQTLfgoIVHCalk=;
        b=uP41hwF3SNSLq/poo351B0QB1oijsjkroVqJKI1U2qAqtYpkbSPvfnJOwVEkPoZ9eC
         85u9nH2D29CHabt9Bv+a7bvlyRkqp1w88470JrzlAFHTDtwWrWrI510ZFcLIPvQSxDy6
         mXgxczWSvVBGz1KsfrQQ6hernnB+m+rrBxhG1B+Ft/L8IKwYdggU5mGCDtwEfiPvCwTY
         /FdxA4KeiFCGntGMF4QN1y86cL5SiEdfzXLt/T3Xwu0eoC72hiddTaayYDeBzJ8ZOCbk
         KO6D0eSdz5FTGTsVHkz8GURZ+2urPcPb9jce/6Zue1sth8nB6rw+9KzLVBHhWOCBfi7u
         vh2w==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=KMF6rzF0;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id d196si2965594pga.540.2020.01.23.17.18.11
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Jan 2020 17:18:12 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id CFBC821D7E;
	Fri, 24 Jan 2020 01:18:10 +0000 (UTC)
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
Subject: [usb-storage] [PATCH AUTOSEL 4.9 2/2] usb-storage: Disable UAS on
 JMicron SATA enclosure
Date: Thu, 23 Jan 2020 20:18:08 -0500
Message-Id: <20200124011808.18801-2-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200124011808.18801-1-sashal@kernel.org>
References: <20200124011808.18801-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=KMF6rzF0;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20200124011808.18801-2-sashal%40kernel.org.
