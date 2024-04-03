Return-Path: <usb-storage+bncBDTZTRGMXIFBB3U7W2YAMGQEWRKI4DQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1048.google.com (mail-pj1-x1048.google.com [IPv6:2607:f8b0:4864:20::1048])
	by mail.lfdr.de (Postfix) with ESMTPS id 98B83897654
	for <lists+usb-storage@lfdr.de>; Wed,  3 Apr 2024 19:20:48 +0200 (CEST)
Received: by mail-pj1-x1048.google.com with SMTP id 98e67ed59e1d1-2a28760c5e4sf12719a91.3
        for <lists+usb-storage@lfdr.de>; Wed, 03 Apr 2024 10:20:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712164847; cv=pass;
        d=google.com; s=arc-20160816;
        b=CCGdFtzqGg8SFlcbVG+fkHnVfpoIHhk8Ek9+khqw9/8VPXV+gQi9F31pXsnTq0ZCf7
         ok+Te+kp+3yYvOrzVZ+eD3ekaio111h3A86thnG/UyuiPC++ZMkTa1OlH3YLo69W7Ywg
         wZlZq7YknxNZUKaW8u1qqioEP61Xa30SUskMU1W3aeFFpH2O744QeEQWn9oM1jVfVlJs
         QuD6Vs/2/5yHaJGqqcG8ze5Ajud5fS44oee5rM7qtxAq9bMOOjORFxOeyn8FMXWB1POh
         bsJEdGLNP4vlpWSJzHVhkKyxCD+2qbSEhUNqC1SVOPSAXsqr+3XQFza801gMWdp3nrSN
         Mgeg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=j3tmu2iEx9WX0LMCsUxbKbXzLf/GHmHZ4jhCH/uj488=;
        fh=vkHSLInHkdzS6s6K+GvlMvp6Hm2UZfmF3RPDE60tiqI=;
        b=jArAW0SMQhp+cYdFrOkY8Lht3s86h+bzt2EA4xY5X1pj+eBZ7p9p7OUTzwefcGRcBf
         MutrPotVBLDBsgsLfgbppMwOzhOlgs40Y4dtO1C/Se68zWyKH4wE+1MnoeDb4JIn2fq4
         tZ+ijygilfvzFNCDoV7YZTaOoOMXT1I/UR0M0J6MTNPBBcaIuPFeFilWnf3rKJuUyIei
         XrEr1vruWWQ5REmRhfxV8DnOB+KTlyfAK5u6LtDqbzGPGbVNsXbsggClXk0j/tfKqeo0
         eg9x9gaiI0ab1QgK/1zDJsHVK1gmMA6TTVJwa55bks1gujNQBrD/9cV9u4qov8CUYZ0L
         z0qw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=JXkA7Q8x;
       spf=pass (google.com: domain of sashal@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712164847; x=1712769647; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j3tmu2iEx9WX0LMCsUxbKbXzLf/GHmHZ4jhCH/uj488=;
        b=GfiKLV5G3siCW4OVCy85UPKMhtFYxv+zwrQfPiqbjzr4NcdoZbwFyl0CEWsBw3MuMA
         Esf/PAnSbNpI+cVLFmqWsTdUfstwyXzofuwgwjPl6ZJgCM3+sNfSiNm0Bcy2mE3LFVzh
         4xzSkgyumievWnWurJEnFU0JLOtv6YWVZpaKQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712164847; x=1712769647;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j3tmu2iEx9WX0LMCsUxbKbXzLf/GHmHZ4jhCH/uj488=;
        b=VED88rVKRu8bKzO5WThvbHIQ9t2774CS+vgwuceAAEEr6HVGW0YpMpYPJ1/7Ka5b9G
         DgA68nXxgCHhHYUWTACLZFgs1Y+cd06S6zIlB8m3v/9iXPBKAChtnv+A/DeyhiyfALYP
         O/bF+885CfCpEknUSbB2hfZvolPX6UOlbFmxHTpxg5Pdo4vTRuwn8HiKZSwRdHFa2QRm
         k/RgMJKOb0gZLxYaLkeJ7Jt2f8ORNyeT+86UTnb65rYFpTZFVTSRmVTVqwN/SAuf4QWm
         ndYR7YUl/4gZ7BbNZygDSRtqEDraEtUMzactxG5M7otd6VdTO9uIcnVXwI3aLqWuUcxC
         07yg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUdR0yPwf33KKaQTtsBgt7U1jB6Zkg3wJpEVtvb1glQMqQtZn6+IokXE0ntGqawRGfLXuNqMz01gYNdj0akC5wy3vL695eMrf+U
X-Gm-Message-State: AOJu0YzXPXbSPUk3BlDv2vFLjCz2GCdK2/OWpqhLVSHE0sIjjj/jk+Jk
	Knv8OvahewqNAVXWr5qObTVrw3b/RzxFEmQWBEmbB2LqkBpxc1SGSHy66XbYzOA=
X-Google-Smtp-Source: AGHT+IGd4YcfPj3LM3LMRAZk2o87E9r9tbOgQBX/iBFGJugpCHAPR0ZTJ5SePhxRlTH5PjUfFXcABg==
X-Received: by 2002:a17:90a:de10:b0:2a2:5860:dea8 with SMTP id m16-20020a17090ade1000b002a25860dea8mr158094pjv.7.1712164847106;
        Wed, 03 Apr 2024 10:20:47 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:c20e:b0:2a2:9d0f:c728 with SMTP id
 e14-20020a17090ac20e00b002a29d0fc728ls58425pjt.2.-pod-prod-06-us; Wed, 03 Apr
 2024 10:20:45 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWDDkBDlq/Y/njPPDxI30n9e47ObV2UVQ2EXicE/Zj6ErgqQ2iShjHRUI9p22Zy3nOCwOLgAAS6oaEHc2lE27Hno0HZXAUEhSvRiPIcKJpMBEXQiQQ=
X-Received: by 2002:a05:6a20:948f:b0:1a3:bc78:fd1 with SMTP id hs15-20020a056a20948f00b001a3bc780fd1mr188404pzb.59.1712164845227;
        Wed, 03 Apr 2024 10:20:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712164845; cv=none;
        d=google.com; s=arc-20160816;
        b=VTzPKu1mJU57oIPcmBDnn+EGZVWx/pCc3lhVy++dLG0PW6YKwCg9k3ERoUyaseNZmH
         cOHmlVNRwaBaMdZhQdVSaxuqJSdAPkhgmvK9gpAs+kb49F7AQ8zqJNdmOzWTXD++KYvX
         LIKujdvV+i8cCko9SjDe31FIVaQVAliJJghJGW+1QtFsW7jXGnl04yEFUrYPn0DWUGQt
         QT/Fyih8QH9ranRauYjGw+2lJ0/hjdiIbyI7rFbHJIUKP4xgc5Izxomk8p5tc+dyO7pQ
         90TMxE7Rwh+10wzSmrqqFcjWRSBV5cXG/dgriuGeKb25TinBJM4l10zg3lJ9Jo+fMzv3
         rY7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=62jS4oG2VP13XXsNkcXm3Zy6k0hEaMsntVeBWX8joF0=;
        fh=2U29iyHh8HISuuHe9+kPEjk0PdkMSMmM2qFAhANsdko=;
        b=OJTWlOfX+/iYR44u1zSzZpgG5xfnjsymROUzOUfcfIPAQbh52DQNXT+ic0YOc+Wf2I
         zMwxMZnNRHHJCuDFGWwvWXc4nojHZv6/0yYZzRGAbwBFXgQW0uCl6j2Dxg/HbHB/8Heq
         9Ytt+kAWluP/n5q+V4uOdVNvYC2SZPrhQ2pSWmm1OEuvqaVLyh518vGjUv4bs/Scij6s
         ZGQseun79fapFfG7LMGpJLLLUUQ0L5/Tgj6aatjqAu1RbA4ElFcwiM9e+LIM9cnRdJZF
         zS00YjBeXstzuuPjRJVOKIG9tpAvwN6DbkTJN9GNK3VUZZOJMbzu1h1dNjY9dTAcXaKT
         EvWg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=JXkA7Q8x;
       spf=pass (google.com: domain of sashal@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [145.40.73.55])
        by mx.google.com with ESMTPS id x14-20020a17090a1f8e00b002a04076dc69si15758400pja.87.2024.04.03.10.20.45
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Apr 2024 10:20:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 145.40.73.55 as permitted sender) client-ip=145.40.73.55;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id AF85ECE2BDE;
	Wed,  3 Apr 2024 17:20:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8D21C433F1;
	Wed,  3 Apr 2024 17:20:41 +0000 (UTC)
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
Subject: [usb-storage] [PATCH AUTOSEL 4.19 2/5] usb: storage: sddr55: fix
 sloppy typing in sddr55_{read|write}_data()
Date: Wed,  3 Apr 2024 13:20:35 -0400
Message-ID: <20240403172041.354877-2-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240403172041.354877-1-sashal@kernel.org>
References: <20240403172041.354877-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 4.19.311
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=JXkA7Q8x;       spf=pass
 (google.com: domain of sashal@kernel.org designates 145.40.73.55 as permitted
 sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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
index 35306c0559622..dddaac45a0455 100644
--- a/drivers/usb/storage/sddr55.c
+++ b/drivers/usb/storage/sddr55.c
@@ -195,7 +195,7 @@ static int sddr55_read_data(struct us_data *us,
 	unsigned char *buffer;
 
 	unsigned int pba;
-	unsigned long address;
+	unsigned int address;
 
 	unsigned short pages;
 	unsigned int len, offset;
@@ -315,7 +315,7 @@ static int sddr55_write_data(struct us_data *us,
 
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240403172041.354877-2-sashal%40kernel.org.
