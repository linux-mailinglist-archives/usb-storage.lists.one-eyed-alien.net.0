Return-Path: <usb-storage+bncBDTZTRGMXIFBBNM7W2YAMGQEE6UF46A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oi1-x248.google.com (mail-oi1-x248.google.com [IPv6:2607:f8b0:4864:20::248])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BE22897647
	for <lists+usb-storage@lfdr.de>; Wed,  3 Apr 2024 19:19:50 +0200 (CEST)
Received: by mail-oi1-x248.google.com with SMTP id 5614622812f47-3c4e9231a20sf716899b6e.0
        for <lists+usb-storage@lfdr.de>; Wed, 03 Apr 2024 10:19:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712164789; cv=pass;
        d=google.com; s=arc-20160816;
        b=QYPf5Po+w+xUnryLdRKYEsKISG1G1nczwqM1WCYBxhLf/dILFJfFNCCltQpdWG2osC
         /S0Ycy9WA8ehlXrJjjo7X1LDl+QOJotxa0AM39P9g+pkaDz36gf2sNiaXUw4OrvbkR8r
         +ibdFElvnQQKnqrto87ad+QazJcwwm9EEK+HtbN5At2WtNheB9CV0G5XD1cg5xoexZbT
         HkOtyJx1AVmSYGqAULx0UgUp2a89hHO25XGKM/iov8LUzfS+Z96UEY1OLco+X45qt5im
         jUbVH0Jkc1uXt8Jj+iFUMr2gbMFyi75vJYRfI9EH1Yym9eM0hlqYcHUA4MhXk4/9L77R
         ufYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=/BCcDPfqIln6yEnjNEBRsB21171xsAOViOQSdEaPtGM=;
        fh=2Jt0vg+7zrjdARQKTMhaStU1Hpond8GZO8XrhsnTX0A=;
        b=GzAhk3XJwcHmm8dkVRozCSc8LAMvHL3aT8i12PhFVFKlSxhhIDj1PINz8g9DpWqVct
         oC7b7qKHX+74oZp7Op9epPpJWF6mPL7DcPEtJVZe4W4Zg3vEE6onYMb1dEEmRRoz2z4t
         1X2ZwQQC1geF7zQ383jNi9i7lhpXlKj8pVOKvBXjAfS3HZh5HoogTR52MXuL/Hd4YBoj
         VIxO1cJBFwuQBC/zfYMMtErUpXMxIOPqowM0RGqb6CWv5YXkWbRWHAOLc1CgtVYvl3RP
         rdi1wCLP7kCOTP6OrtVDn8vjlgDWoMb09PdbWDuOetQd9oYYSoUYdFH4mNZbQiIV+4IM
         Fd5w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="fDAd3IQ/";
       spf=pass (google.com: domain of sashal@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712164789; x=1712769589; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/BCcDPfqIln6yEnjNEBRsB21171xsAOViOQSdEaPtGM=;
        b=PK1ts8kYT5vlzGtn/VqRe3xd16htR2C/OiF/HRXJMu8U/lOrbrPbHSCkemjLi0RWbK
         yG6DEcK2/qCWqu7G+r74ebvG27l1fZtHyaunyEWfT4D5X+aUJmlkZA2RcDXVhK65sXvn
         bo5qdrYIkGscOTogdrk6S5jk7UAQl56tVRvy8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712164789; x=1712769589;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/BCcDPfqIln6yEnjNEBRsB21171xsAOViOQSdEaPtGM=;
        b=hHkt5YLtcu/zVobIOIMzKPxGg7qEGb5oZhdmF90nJDSmwmfmeNcWl7twTrN4m79Kkt
         8dsgT5YEZI892l+ND6HfNB4jPI73kdrDIHBohdBgYA6r/vBi2EPpfL4qKxsyuoXPbp9B
         ZBL8R489MZHZFlMCBAWAnJvxjfvpL6/3DyVdn7DVapP9MdDvxNJgKWhVDdO+/l5B5qA5
         fJVj9gq3Q2PC/5vfM7YInaGTeDfJgy3H9KkJWYAGUnpHuKsSECHp6KcDebCONfPFjTSN
         rfiXuF1Rg0HAYpZTU2ZQOkrl+nI1mY2rcHQfP/IvAkNNzS2y2B35i3U6nRLAfZ+rLxcF
         2l7Q==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCU7Q0RRmqCrrg+q4A6AyRcKPqdNzMDu3n10mVhUZcpltHNzVmmmgEa3UwDULnqMPIksMVTLazhphr7coGG9UNwpbdeYn2UISmd2
X-Gm-Message-State: AOJu0Yx0ar+l1q12rOYE82A8Gi6tTTTi8+vTKVllf9aebviDG3cawApr
	Yefz6dyADc/MUV1wI30Fk8jQIXhXHSamHqI84EBzk782nRuSugwrJg7AY882uss=
X-Google-Smtp-Source: AGHT+IFSY1pdvTKt/lNgiOMLRhYMhFy9nYfcRGqzvnwqTKoQB/n+CFSCEl1OpkDmrMogCrn6WOA1bw==
X-Received: by 2002:a05:6808:115:b0:3c3:bb5c:7860 with SMTP id b21-20020a056808011500b003c3bb5c7860mr1131138oie.29.1712164789174;
        Wed, 03 Apr 2024 10:19:49 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:4405:0:b0:5a4:be52:5f48 with SMTP id o5-20020a4a4405000000b005a4be525f48ls45043ooa.0.-pod-prod-00-us;
 Wed, 03 Apr 2024 10:19:48 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUk12jeoLxq2vLY/ubQitt9iRtzwHawfGaRdqWheYCvgx4NODZXT+MVXh86eRlrmiYFj1g5hAZWXQ7b/TDmZlWjSLRXd8ZI0z9u3fi4z/Ff9MGBuXU=
X-Received: by 2002:a05:6820:3cf:b0:5a6:27c:7607 with SMTP id s15-20020a05682003cf00b005a6027c7607mr1257568ooj.1.1712164788169;
        Wed, 03 Apr 2024 10:19:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712164788; cv=none;
        d=google.com; s=arc-20160816;
        b=qV8ztNLvZJYu3kmqwR3T/WSU/+LnWZxLjopZu127QXOQVqaT7W/xkWZIFD8HbU8xtK
         Z5Ux929w72lYv0Fa12oZLnfyIr39ZDXDFv8/AJ63ew6gOqS2iraQXd89nqACJejoovEX
         GT+0W9Nw4mcG8zA313WNUsBSFigWZ0SUfb1tqE6gVqHTYEFpLyyF38HvkQkxIAHRsxme
         KNJ7eUlXrK7JxMCTh1iri+2TVzIxRYwlktFaUi813+aw+0Jt2M6Lb8J9nahBeYHk6vpM
         JOUgbNkl0Hf6wBbP6SSzmgnirNxr5PmAc2v/piTtmZ9aXy85j8SLlqRTV9mXnzjoElQ6
         jJaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=/+7/se9tC39y5iAijS62Z19tpAvcCLG/ConipRnEYCo=;
        fh=2U29iyHh8HISuuHe9+kPEjk0PdkMSMmM2qFAhANsdko=;
        b=wsDcluG2epNzKpPiEhj+fnIDyOSunSuUH9oj28Kr3HcalV8d84YcHvhUDuSORO5qG/
         3srhjlfe/VTai58iev44Zz7B095Sl1ZN6otiAu2XXT5boIjgfJ5Q8VWZBL4BCD9e0U95
         jYyf5HJFMv8RSDFSY6vMqj/B/B2IbRXgFUmFDNCe2vqL4iwKzhrOirVhLptZGxA5AIgI
         QHU27K5k8twO5GYLSpuEMjpFueX1CpUVs/jVfpzY3XYUUoGaiGUqz2EWW97H2IturfVO
         4xOq0CisxaA3OEfu2m6tmDuFntXp6clIOrp7+IaEem5qEndfYYH67QsMKhwHB5vpLPMx
         kkrw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="fDAd3IQ/";
       spf=pass (google.com: domain of sashal@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [139.178.84.217])
        by mx.google.com with ESMTPS id l6-20020a4ab0c6000000b005a9c98c30c8si327224oon.1.2024.04.03.10.19.48
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Apr 2024 10:19:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 139.178.84.217 as permitted sender) client-ip=139.178.84.217;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id BF15C61472;
	Wed,  3 Apr 2024 17:19:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8F5BAC43143;
	Wed,  3 Apr 2024 17:19:46 +0000 (UTC)
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
Subject: [usb-storage] [PATCH AUTOSEL 5.15 2/8] usb: storage: sddr55: fix
 sloppy typing in sddr55_{read|write}_data()
Date: Wed,  3 Apr 2024 13:19:35 -0400
Message-ID: <20240403171945.350716-2-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240403171945.350716-1-sashal@kernel.org>
References: <20240403171945.350716-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 5.15.153
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="fDAd3IQ/";       spf=pass
 (google.com: domain of sashal@kernel.org designates 139.178.84.217 as
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240403171945.350716-2-sashal%40kernel.org.
