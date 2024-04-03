Return-Path: <usb-storage+bncBDTZTRGMXIFBBXM7W2YAMGQEWBTLTWA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x46.google.com (mail-oa1-x46.google.com [IPv6:2001:4860:4864:20::46])
	by mail.lfdr.de (Postfix) with ESMTPS id 614DB89764F
	for <lists+usb-storage@lfdr.de>; Wed,  3 Apr 2024 19:20:30 +0200 (CEST)
Received: by mail-oa1-x46.google.com with SMTP id 586e51a60fabf-22e84d38a0fsf53089fac.3
        for <lists+usb-storage@lfdr.de>; Wed, 03 Apr 2024 10:20:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712164829; cv=pass;
        d=google.com; s=arc-20160816;
        b=hUOCrTIk0Ep8tBGKI+YutIXKrS+NqJBiqje0MaPcLCJtGDltSqjmEBOpBlIHN8QUSw
         i3fitbhKH0Gu0zitRJhyxAfkan5vxEbPEJXxHhkOpyhee6LNo+O0ytADf7YX4nZLt9XV
         jPqppVuzDiyXi6UdmoaV3gQ1pa1hYtcfRgF/2M4RZ9O1bS3BR2QWr/XaS7DGKsJ8zVqj
         TfbAqyQGTFBm+xDsAiUd9Sj8ZyX2ujF17bK2Tq594QRpJJ4m/TQiN8NVIWehsywy3JGa
         aSQVMQqYWc40Ow9HKmLYKV3Qty3rA/B/SDwzBGSoQh+cFENecIarS9FpqInO6BUaxQiu
         QTXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=GVkEZY3zED2QQUAvuyyk1sFaZLMDzjjzBb4syFQDKyk=;
        fh=AwTiK4DR4ET7gxE4jnbV18nREP/niNUodfHr6xZtNv8=;
        b=fyZRb9fIGMSqxc+D7gpHy8mZm9r9rhFRwvpDxgg/9FFmOYwojHHoIDNTcCzMv0dw4o
         MguS7Hew56Hq4ULfTzVhtFtCsoImsTdE9FokXREYtSNeUXIef50mlaEn6JH3dh8BouLq
         rU6gq+1/6MioG3kTIVXcNlJGmQ6zZfKhk0EIo2/M3nVvkhEi5evmGw3KbeYay3mNwWq3
         38r+UMrD5YIOADceggXEV8s5FsJ2q1YboJFOGKc758Gyyw6YdjecSCNCfDtNFG5DLQGe
         Io/uTuH7dQeIVbzZXVMWc4ZK0D/mdPETtMg1QfHulLILVjSeTT1C9y+ZXZpHyEe36jnG
         Xm1A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=QSKos1le;
       spf=pass (google.com: domain of sashal@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712164829; x=1712769629; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GVkEZY3zED2QQUAvuyyk1sFaZLMDzjjzBb4syFQDKyk=;
        b=kvJZZSSLJGoldsmkz2u0sxKQHKYkMM84HqY7tujvx8UekRJKWikdvqMaUbz6TXxK30
         297o8535paAaarqRCODzkZl4UfhtH3ZJ+9F6QdreQQOWnyaj7kkIsSXSRuCL6ScuOE/A
         1S/p+YhVxwp6XARcgHPnJdr758hY+5kTUusA8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712164829; x=1712769629;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GVkEZY3zED2QQUAvuyyk1sFaZLMDzjjzBb4syFQDKyk=;
        b=IjCT71aNhkT+0aKMWENXmEHF24fYaWQwIVDBQoONW0mx3sRhRlSwh7h3TaFRAh8W5f
         6CY6formJ5aioilvpfQTOj+gByo2ABNnEy9NFz5vLi6QvPlyVcbIsPOpfNU8RXW41Q8p
         e0mnCpyUEvFHnK5N2HFuftL8CkKsmudNS7yvZ8ti82wnyrja+J+Tpfg7pLPeAI/h0E+m
         745s/lKrj8AW0luOavMMF2aPHWHWV3Sa3Nyq31T3cbS6Pj6xW7KYvH0Y5JeEI+jdpKeR
         IgTdjZM222teGVS4cWlz+I2516jknc4JGk3k7usdJcoS5l6cZf9+r4GAic+vUe70z4xY
         tYuw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVwnprBY9LY6MTxiQ47lK+Vx4J/c5oIIhKwyrCbvv0NJwgIt/qAb9c3r7/UbSOyL2rVhMb86obZQHpPrBYQ12C0bRhL61TK148X
X-Gm-Message-State: AOJu0YxGVJffbDcl0eUlkpXkDkWIteLVh091jXjLPZzZKvyzPtt+PTTI
	KPNL2kbZgY4233utPJo1YKZEenWkNeR/b2GHVNXpMk2rnOGGcE/s6KXTDAkXnA4=
X-Google-Smtp-Source: AGHT+IEkQBwo/eHmmwsMhMJTELAFdLCft7cC3Q9wL+A/1XqtgerAezigmnkJjCyjRQflOj5iOG58VQ==
X-Received: by 2002:a05:6870:fb8f:b0:22e:849e:6d21 with SMTP id kv15-20020a056870fb8f00b0022e849e6d21mr4734417oab.18.1712164829253;
        Wed, 03 Apr 2024 10:20:29 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6871:3a26:b0:22e:8821:a65d with SMTP id
 pu38-20020a0568713a2600b0022e8821a65dls126881oac.0.-pod-prod-05-us; Wed, 03
 Apr 2024 10:20:28 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVBSzK5/2HyWn5H1TNuPD0lRGY1tt98UIHCMfJAcl0vX3IvQnhP6RUR5qn2/D4cwj1YC2NHRTKO7f5Lw8oq514Tv+kTGosMgzN2g7X3sxYct2KLISo=
X-Received: by 2002:a05:6808:cb:b0:3c4:e387:d753 with SMTP id t11-20020a05680800cb00b003c4e387d753mr117186oic.20.1712164828378;
        Wed, 03 Apr 2024 10:20:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712164828; cv=none;
        d=google.com; s=arc-20160816;
        b=nKo3+iByTklpEpMOPw8tokYX4LZlURsaD2yjlB7GoXe3G/p8IzMQd7hTBpkLr0rFCq
         MBO+jy58QO8BVG0wukzc16ku86F1EhHSqg0aoB64flfz3EZiRp6Ox9F/Yl42r98S4Za8
         8rfMnLU2mSsqlnUDJVmhAJLi5M1k/lhzD+xPVh5p1LvEU03L+FZQYlo/tXSGOO+llzNy
         XvGwbpMmZdhPJYvJ9o7MenDGZdl8wwnwiJ3oDeEDVFeDzXwEqf1in+XoOgbPmK5yLotH
         5VSBPFbKxpDzLyKDPJ4wGQuQZxyZ85SxM4kHlGd+Mqab+X19Wod2UN6BF1r9Ln6O3OoX
         rW4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ucTZVQae7iO07FIshbFDNotAba4abwWllNKNXu766nY=;
        fh=2U29iyHh8HISuuHe9+kPEjk0PdkMSMmM2qFAhANsdko=;
        b=XryWpWYPNvlqgdfukFaXBQyTkq0C4ov81R6X6iFBTsrlySAD0dwyXz5qxRDtbpSqmP
         doma4vuDyglFvK9Dg4881vSMRVPja2xrcRIdYuoSQ7jiDl+mp/akO0aWhJnXGOO7g2A3
         wa4SEUrEHfXdkZZCvNIS+LE+f96NNXXaHSPK5xUk2curd6nS0i5MHvHlg4ZvdGQx9ppP
         2M0rMOpfq6EW48FKEas9PvaFXIgntUKjqErKb26FY84zIv1ESkjudYXlgI0KyRZnt9wQ
         Dzc5IpwNHw0yasEqxrr9wfTS8OFWb2s4/noB+NPw0hurSLzFMl6Ek5j+f2fycRBe5Bcr
         +dEA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=QSKos1le;
       spf=pass (google.com: domain of sashal@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [139.178.84.217])
        by mx.google.com with ESMTPS id v14-20020a54448e000000b003c4dd0ef985si2938641oiv.90.2024.04.03.10.20.28
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Apr 2024 10:20:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 139.178.84.217 as permitted sender) client-ip=139.178.84.217;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 29382612AE;
	Wed,  3 Apr 2024 17:20:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4825C43399;
	Wed,  3 Apr 2024 17:20:26 +0000 (UTC)
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
Subject: [usb-storage] [PATCH AUTOSEL 5.4 2/6] usb: storage: sddr55: fix
 sloppy typing in sddr55_{read|write}_data()
Date: Wed,  3 Apr 2024 13:20:18 -0400
Message-ID: <20240403172026.353926-2-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240403172026.353926-1-sashal@kernel.org>
References: <20240403172026.353926-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 5.4.273
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=QSKos1le;       spf=pass
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
index c8a988d2cfdd3..18eb681da1d5a 100644
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240403172026.353926-2-sashal%40kernel.org.
