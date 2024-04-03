Return-Path: <usb-storage+bncBDTZTRGMXIFBBW46W2YAMGQENOWZNFQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x46.google.com (mail-oa1-x46.google.com [IPv6:2001:4860:4864:20::46])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F2E3897632
	for <lists+usb-storage@lfdr.de>; Wed,  3 Apr 2024 19:18:21 +0200 (CEST)
Received: by mail-oa1-x46.google.com with SMTP id 586e51a60fabf-22a292aa252sf29960fac.1
        for <lists+usb-storage@lfdr.de>; Wed, 03 Apr 2024 10:18:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712164700; cv=pass;
        d=google.com; s=arc-20160816;
        b=JMq7b0WaMghpCcBHPoFZKuCmuLoRZY+gvdsgmvbeUxPcBGgUG6M4q0Jzg99DbmjLvF
         MWEv2qpqm2u4ZaNY+zsJ2q3mPZsD/TSfHj1JqnAWmnO7jzJQZABGfB5eQ+ABxeZonSsk
         XbHTs/Kta1pIyI+ra1YsjZWHp/i+91AJKvMrBWAfKvmRhiiYMz0VGMP2OqBtsQZIzSFf
         DCb2U2xGuY2SyFfCj8dfMSGTXj9RWWi8n9wxsbP6RKSUP3k5c25LaGJ6n7i8kVnX4ifp
         jnAbxLIRhk1fWRMLpvLkA+5OjQmKDpASXh7cLzWLRBHUNNLIkT8aRP7yp3cpxKRYq6yl
         gctg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=RS70VZPDCNAlcjcDpJ5oBmjHjc2oNFy4T1TFVgnl1q4=;
        fh=cNzJWDMygQIm9UTivhbVLvxfOYLd8i15HjqMGzAub/o=;
        b=WWut0vz4CkQN9oaLkRGyfeHd3dHWt71MPsQ7A5JXAjqzPcgPLzorEVz9/BGFuB4dP3
         sMQ12K4YxVOiz8j0IQKM5eibICbq+Y+6XAIGuM3CRkH/fR9NjHZKdxkSjg004BLuDjbx
         gqp0oC13Lz9jPyeMYT6xqS522CKdrBy+3fDgRFkt1VqVVCUqPKJReQu3NJ/fu84tCWY9
         MlghJP+qRC/i+R+QwDuO4Iv0BiNJpjXIV6gh6yJItMy+OzAbj06wiJMoenm1UpnL90Lw
         belVa62Yzz1orKgNFKWzped1JUeZ8Tx1NwJ2EMfHBCxk+E4C6yYAA2co97i1UdkT8QDv
         fenQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Ubtzwpn1;
       spf=pass (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712164700; x=1712769500; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RS70VZPDCNAlcjcDpJ5oBmjHjc2oNFy4T1TFVgnl1q4=;
        b=II2q6ZZFATUX6WN7FPRSbieQr/QZ8cFPtqcnbAF1L5xy4SSF0/FEmiPySfQ/RdyhzB
         lQqAvWPkwpraTd7LX31qR6mgvjAYLi+PYZMWevws8Pcp5V3hGodWI2iEIE2irXv73NtH
         XX9DdhCm6n4iuR8v+dLyjWdp/cb1jJLz3Hv4M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712164700; x=1712769500;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RS70VZPDCNAlcjcDpJ5oBmjHjc2oNFy4T1TFVgnl1q4=;
        b=EE9VXT9MKrPWvFYw2oVcfto+h3833PRtDCcMATY1jqefaFdW2baWc8K/R0OJNVQ0bQ
         revDBh1O2Pe/wHqeysLrP4UFm71SIUrvoIoEqntqprb8xzG3DlFjMa8QQJhB2T1cbVjV
         rOdakGcrBrcu1222EovOfn0j2dO1inw7WPt3UYPSKOWZ2YWQ85Yfz9vwY2WUu1q00m1q
         pDFTDJsZlEKrjsY2VOF5F82YT69v25NTPrtEXcROlQSXQzH6+YUDAmI3E0poEjQBauux
         dINJb52iZ94FQfJEE2LhLFo4SsDizPspKHh/Y8wJfwuTZeozq3w6gEDDLgrE898yJSnK
         Jmjg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUzYsA/1CezyyJ/GXFko7N3lkif0j+iOyY9gEJI6WOEV77vt8VLTcGCppaPBLAAHMR9DPEY50L0zFUuiuCCVUzZiopwc4o8pqzU
X-Gm-Message-State: AOJu0Yyhn+BUxJGRqII2ZSc4ozoWg1F4cSg+RqW5GnHy4fBPeYj8+fTu
	VNn/pjX2XmP/9egO1sYrGCaKfNlCbhoLiTvrR+YvhqW9vv2CoXx5MDvfwsp4uaY=
X-Google-Smtp-Source: AGHT+IFd1897GETI0OVbfl+bX6HzrcLFJArkoLiyakBgaKHBAhd3BKCr4uUo5IqVy+H4bMPYDfoYyQ==
X-Received: by 2002:a05:6870:b4a3:b0:229:eb69:9bfb with SMTP id y35-20020a056870b4a300b00229eb699bfbmr1161917oap.9.1712164699450;
        Wed, 03 Apr 2024 10:18:19 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:6c19:b0:22e:74cd:4006 with SMTP id
 na25-20020a0568706c1900b0022e74cd4006ls39621oab.2.-pod-prod-00-us; Wed, 03
 Apr 2024 10:18:18 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXy65CRKGD0CeZyiDbd68hqN3W+yI7EpkTeDcvysA5SHRzuwMbOi9qMuJd0q7BLuhbqYnwzgORl7DlbJMYx1aq+kMQiwlBsyHyG062JZ/dGs95hnKo=
X-Received: by 2002:a05:6871:b06:b0:22e:8f66:51b9 with SMTP id fq6-20020a0568710b0600b0022e8f6651b9mr110268oab.22.1712164698032;
        Wed, 03 Apr 2024 10:18:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712164698; cv=none;
        d=google.com; s=arc-20160816;
        b=dEor/zLWMIyQ3A706UnaLKwKUHjcpyRr06k14IQ5MtrVvHvuP6cp+bgw2iHno5G+IF
         R54gLmTnm+EqNZgu1X7maw69+OdgI9BGxT+gfM2EhNznHOhCsyVX22qkYRzOKZHiEOtV
         2E/uShcFu1VggmF2XZbS1DCbp+Qat+FmhDbjKHHL0yvjdIdIV8EBRjGTtY0gEXYoG7rP
         plbKvmkYyWxXkO2WICiq6EgWiuolusveIFuZy+BsdAV79EFIXRbCK/lb7R2xS2sVJh2k
         WHXHb3MUSAFIv8dlH0SgSUHIZNnM1hPWou8O+jiXg3ZTGLFIdMc2hPgCFqMnuCfO5MH8
         OaNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=/+7/se9tC39y5iAijS62Z19tpAvcCLG/ConipRnEYCo=;
        fh=2U29iyHh8HISuuHe9+kPEjk0PdkMSMmM2qFAhANsdko=;
        b=bkAfc0SkXo83TeCWuV+JO8m0MGJdbUM3D62vJoWl4plQMK4vcbHQDd3PjTeUnesVyI
         mYBRPoqeMPKY+nQnSOZCTbcQyFuGtxVgE9LiiUB85iglMS3cZzM+tUvxdG52oefUMGj7
         BWx0YDcWQCEgsWyTASfL/vZEuP2eyqy6oFbDoBtWT/HeHUh/wcQzTAvusL/nQmdMETCi
         4DnFSSmefD13mGOuIq8Md3RjNhLpkc7Unwx9SP9cmAlmnmP0sBjyKsXHUC9QQfZOOSSD
         kN6XHaPPIxm3dNa1/3JgZAiCtEtHb2Vq0QM60oHGB7mXqK1cBvGRnEHzm53RVEKVj2U2
         Z/iA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Ubtzwpn1;
       spf=pass (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by mx.google.com with ESMTPS id h13-20020a056870170d00b0022e8cd8774bsi759783oae.60.2024.04.03.10.18.17
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Apr 2024 10:18:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id A71AD61463;
	Wed,  3 Apr 2024 17:18:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78F9BC433A6;
	Wed,  3 Apr 2024 17:18:16 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Karina Yankevich <k.yankevich@omp.ru>,
	Sergey Shtylyov <s.shtylyov@omp.ru>,
	Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] [PATCH AUTOSEL 6.6 02/20] usb: storage: sddr55: fix
 sloppy typing in sddr55_{read|write}_data()
Date: Wed,  3 Apr 2024 13:17:43 -0400
Message-ID: <20240403171815.342668-2-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240403171815.342668-1-sashal@kernel.org>
References: <20240403171815.342668-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.6.24
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Ubtzwpn1;       spf=pass
 (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Karina Yankevich <k.yankevich@omp.ru>

[ Upstream commit d6429a3555fb29f380c5841a12f5ac3f7444af03 ]

In sddr55_{read|write}_data(), the address variables are needlessly typed
as *unsigned long* -- which is 32-bit type on the 32-bit arches and 64-bit
type on the 64-bit arches; those variables' value should fit into just 3
command bytes and consists of 10-bit block # (or at least the max block #
seems to be 1023) and 4-/5-bit page # within a block, so 32-bit *unsigned*
*int* type should be more than enough...

Found by Linux Verification Center (linuxtesting.org) with the Svace static
analysis tool.

[Sergey: rewrote the patch subject/description]

Signed-off-by: Karina Yankevich <k.yankevich@omp.ru>
Signed-off-by: Sergey Shtylyov <s.shtylyov@omp.ru>
Reviewed-by: Alan Stern <stern@rowland.harvard.edu>
Link: https://lore.kernel.org/r/4c9485f2-0bfc-591b-bfe7-2059289b554e@omp.ru
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/usb/storage/sddr55.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/storage/sddr55.c b/drivers/usb/storage/sddr55.c
index 15dc25801cdcc..0aa079405d23c 100644
--- a/drivers/usb/storage/sddr55.c
+++ b/drivers/usb/storage/sddr55.c
@@ -196,7 +196,7 @@ static int sddr55_read_data(struct us_data *us,
 	unsigned char *buffer;
 
 	unsigned int pba;
-	unsigned long address;
+	unsigned int address;
 
 	unsigned short pages;
 	unsigned int len, offset;
@@ -316,7 +316,7 @@ static int sddr55_write_data(struct us_data *us,
 
 	unsigned int pba;
 	unsigned int new_pba;
-	unsigned long address;
+	unsigned int address;
 
 	unsigned short pages;
 	int i;
-- 
2.43.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240403171815.342668-2-sashal%40kernel.org.
