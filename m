Return-Path: <usb-storage+bncBDTZTRGMXIFBBSM7W2YAMGQEFPARKKI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc45.google.com (mail-oo1-xc45.google.com [IPv6:2607:f8b0:4864:20::c45])
	by mail.lfdr.de (Postfix) with ESMTPS id 469FD89764A
	for <lists+usb-storage@lfdr.de>; Wed,  3 Apr 2024 19:20:11 +0200 (CEST)
Received: by mail-oo1-xc45.google.com with SMTP id 006d021491bc7-5a58de10f69sf120818eaf.1
        for <lists+usb-storage@lfdr.de>; Wed, 03 Apr 2024 10:20:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712164810; cv=pass;
        d=google.com; s=arc-20160816;
        b=MqeH4/c8ZkVxbhj4x9MvQsh3ASGe2ILRvU+X7USR8FpSbQ7KB3MWg5bnQTJmA6N6xw
         Yf8rxXpzVEF8kAvAvAtba77Sx3VILvXb3A++i+S9GHl0wFC6f44WTU66ofc5NnHbccl1
         mzM0mQgLYmyKbsR+PcvDSum4dHL87YcVtb5njMJuEISPL1N3gFTxla6AIIlg6hJemJl2
         3CHiql1lYbj6i163mdzuMU6F1sUXzx0mtpIhZ0h92gF8+NUsY9VH3Rlg7DhnYMhppnni
         8pI1f5Xi3iYyvJRMh6w3fEx4dhGHmOv9/w8QLa9MXviK98/xuLP03AUVPj4d+jn+RLWI
         vL8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=eAWmHWUCaeKLpLcXCvEM6nozLoaItQl3qaPDru2e3Hg=;
        fh=48gpbIdCYBvy8Lpz+Sf2idcopmG+cnizW8i5iJUgb28=;
        b=idQDEual2peA05YYSR/EqybFV9X74k0Q1YLi1fg1cbu8WelahRmntwTdPHHyelNvJ+
         tuskAe9OKDEaGW2JNtHqXCVd7whO0ub/+KduXEod7NzBNiAp8PnvKHXBj4r//K4hbhQY
         +bVvq4Om6K75XmDsfuMcMy3Rz4W2ogFGrjrCc5QN+JPEr8Vxh8f2HZ+nl3V2V0BCzw9z
         Ho+qm/lD3ZJbycAGnllYko9lu9Ly11dHl7luhsLuVnnDrvb+ATRP0xLvbAiqZV2EH6Ze
         0RHTFZtrkM7D9U49yPEBYzKkRybXCRpt1xVNHyBK3YMcswHYrpxQNUnJAWedqphYn6e1
         wkQQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Meqnw+s4;
       spf=pass (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712164810; x=1712769610; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eAWmHWUCaeKLpLcXCvEM6nozLoaItQl3qaPDru2e3Hg=;
        b=iB/CE+0y2cbNNfSlDDAvDGE60RjxSzmJiQyropf9Jjs2/1r1owEBFvNnfoz1oFt56q
         ZePRp7ialL93G/w6QOQYOCj6YC0eqax9sd8Xd9Y1bFjpGupWdQNYJaRPAsBcRTJL9Av7
         /ey9Bv/L8jKstE74T1We8MRhikjvsPD7RbP8Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712164810; x=1712769610;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eAWmHWUCaeKLpLcXCvEM6nozLoaItQl3qaPDru2e3Hg=;
        b=jcTJhtnUYpm+n3JmE8621SnvelJVc3vESngDWkkvhR+a83UMNrw5/9r9eYGMPly4vV
         tLySMuZJVW5ULa/fEDD/zCepXkCLwXOrrJ3h4PP0Oi7po+pnHvkRlusUC+SXk1UQberP
         lv0F3esWk7Q2C41FgsIR2uMpAzX+poSfdG/HegIxkt3DOiSL/Ls7IfcA3ofcE6w77cIW
         +Ayp9Hh4ywri8zPiz0k5e9hC4h19bNPHYytbVzZtn46mKAWtiOI4pam41ZV+CohrpCuC
         aRVBaZ8vEANas1YtIyO20iooz9SnGXYUy40Tlh/R0D/dahKp3eA4fnLp7hXoRYu8NtoP
         +0qA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUMHKA2Ay5wrLUi6XBgdwqCQPE+095YTtXYn3ZF6lex/bTOCcdnhrR22QN9Y2ht8Px+jwfEJxOSSJHPTgRp0Blm28lJw2jAdc+b
X-Gm-Message-State: AOJu0YyMdkxDf9U3sAbsMw892Aa3vACeD5Rh46HprE1cKvJ7lN0QVQR2
	C55Wpc9bbHaSBC7SGm/uXEfnwBpIyMO1mn5juZ+XOL0yNkOfezOe/N77fwIBd4U=
X-Google-Smtp-Source: AGHT+IGv5lufPwnDiVuQTGrc2X0H8kVZZp+IROw9TA2oidO7ZGIxKLkq4a5d1dLYvT9SYs23PfCW4g==
X-Received: by 2002:a05:6870:c109:b0:222:826f:163e with SMTP id f9-20020a056870c10900b00222826f163emr18213478oad.5.1712164809846;
        Wed, 03 Apr 2024 10:20:09 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6871:528a:b0:22e:a387:fdda with SMTP id
 hu10-20020a056871528a00b0022ea387fddals110545oac.1.-pod-prod-04-us; Wed, 03
 Apr 2024 10:20:09 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVsBQYNQoux++LRj9VrBxh5rJac6XUj1fjYWqStweC7HKvMBC0cmedgIIM90q9B1dBMSIv1VThu9UoPz3TL7ed9QkL+4b+nZjtdfR6QwW8GuZDbsq4=
X-Received: by 2002:a05:6808:6048:b0:3c5:d512:22b5 with SMTP id dd8-20020a056808604800b003c5d51222b5mr101997oib.14.1712164808971;
        Wed, 03 Apr 2024 10:20:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712164808; cv=none;
        d=google.com; s=arc-20160816;
        b=WiR7l5s20jlAYC+4A15PX5n3MdPklvDKf6f8+/Q+8NCsYds7YwCbueCbLfnhQoBxQe
         mPFjTkucUI45Sv/u8hmiE9YJAzXh1ig/houDvdX1+ilf4f6rG6Ff6BQh3kqXEAfbMvVv
         ogcR74xeJaLkKXIfvUoy4tN1tY/qwJPR3khEIkZBYvweUdHrYV4t7s7+yh7WncJrELC3
         hKETQuaa7tn2wvCNxYjHNXPqMjVlrHfsbOcif8RhMFVjbyKIRVRfpRp9QmZap/hSK3bW
         vEKjQBYhewcko4BcC/Ov0pNMHGm35RFODgal0KHgDkL8x90M7cBld0g/7rLAdjtu8Byj
         RpTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=/+7/se9tC39y5iAijS62Z19tpAvcCLG/ConipRnEYCo=;
        fh=2U29iyHh8HISuuHe9+kPEjk0PdkMSMmM2qFAhANsdko=;
        b=gpLUhaPq45aiAelTeyO6IIBIbITsyk1s2b3F6xiZkf3FUEu1KzXC76NpVHFE+4f44t
         OJbK8jNRG6KD3eVdq1FhjlmSp08cceHNpoRY85lb6PPLCGB0KnJXpu6DlsXSm6W3oMft
         rcRk+Nfid7j9fSFYwl+olDTCZCBtfJE/bBDAo9CXaRtuVczyYoqTv9/qH7TUzQEFrr8/
         t8bKAo0HhvNfGuvAiDG+AV9PT4JdJS5O0CkXnmTfC5GanLUe9rImjfXvBSZ8RN8Gm1lT
         805AZRxdAzXuLnh0Ng09vkbZ/lyuHNjcUCjkwVSk5YrEFjuFm8/fZi0ZW7AeC4bW0rR9
         q3cA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Meqnw+s4;
       spf=pass (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by mx.google.com with ESMTPS id 8-20020aca2108000000b003c3d48289f7si4307676oiz.247.2024.04.03.10.20.08
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Apr 2024 10:20:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id B53B561387;
	Wed,  3 Apr 2024 17:20:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 86976C433A6;
	Wed,  3 Apr 2024 17:20:07 +0000 (UTC)
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
Subject: [usb-storage] [PATCH AUTOSEL 5.10 2/8] usb: storage: sddr55: fix
 sloppy typing in sddr55_{read|write}_data()
Date: Wed,  3 Apr 2024 13:19:56 -0400
Message-ID: <20240403172006.353022-2-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240403172006.353022-1-sashal@kernel.org>
References: <20240403172006.353022-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 5.10.214
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Meqnw+s4;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240403172006.353022-2-sashal%40kernel.org.
