Return-Path: <usb-storage+bncBDTZTRGMXIFBBDM6W2YAMGQETIPRH4Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x446.google.com (mail-pf1-x446.google.com [IPv6:2607:f8b0:4864:20::446])
	by mail.lfdr.de (Postfix) with ESMTPS id 00E30897620
	for <lists+usb-storage@lfdr.de>; Wed,  3 Apr 2024 19:17:04 +0200 (CEST)
Received: by mail-pf1-x446.google.com with SMTP id d2e1a72fcca58-6e6bab4b84dsf28745b3a.0
        for <lists+usb-storage@lfdr.de>; Wed, 03 Apr 2024 10:17:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712164622; cv=pass;
        d=google.com; s=arc-20160816;
        b=xySEIg4Y+eU/sGaMqOd2CCeUYtkisLfvU9JEY4TCQUPK3Ms4qwG1EPSa6lwRra7wmX
         2y7Lh0aAx7jxexeqyk31hyEsJ8NE2SKXnExJNJzbeVl0tL1T0aI/2D83Wqk3jkNcO17s
         6hl+IdfCSODoedxlG+ny9IFvQZCkSd4efF6oEqagZzyDJlKWM3DQPA9XyYM1KbmJWm1J
         QC878NuSePE+qxM2Pvr0029hX6wNVDHP9tFb9dCcU47coveu0vmtJq8AoWWypXu/NNZP
         KodNIqqC7nW9a/x0Nn0HuRnWmiciSZZuB+6WjpFloDfw0AmiVcfjMcPYlZD1NIZYcIvE
         t8GA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=FLU0Qn/N2mTJYrAH0IXMhe/omUgrIuSiHR5+qCEFKcA=;
        fh=DXAlEOG/eNJiTKToricROLVupSjS63V6KMCTajwSEK8=;
        b=DorKr9Mvr3ft3tGK1ojMVEWZn8d+Hs0Z6hosnddovWdEHBhOpJtY4ZrmxZM04mnXlf
         0+DoZ/xHUhsw/Z9QBbcyaiWx8bhNa6I4xunhDdZigr+T7UbU4qjLVZAtt69ob2JuogrN
         ZAwsPM685nYa4BU7yTa2ZgA5RJiad4zYfn4r8HYXrZs5Rcz+KTOr4Ha991o6DCcN7eqt
         BSyfSz2984ZdpxWwqUAm//09DJmIwjXKKz9usmVjzzkB6bBetrsxmS3GtH+U5ewOVgXV
         ZopzCtZEHp5EAtQkkFulm4TlkEzeDynRoAoKHfuY+dkCQOE6f9I9ju+xeDi5F1Ps9WR8
         MwKg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Y6P8eJXE;
       spf=pass (google.com: domain of sashal@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712164622; x=1712769422; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FLU0Qn/N2mTJYrAH0IXMhe/omUgrIuSiHR5+qCEFKcA=;
        b=OvQ06lwDqhTW/SLK/IRZc+QJ+tx2zoGqBzp4jlgm5CLPx3pA+e2ZrV+ZWxmofKzkIS
         RdDtCJdgoukhtDtZTWbKd0k0zscbH+Goq9PZmQvQK6bGWQZLPlUqiUGjToA+YELWL/+I
         31GkEyLKfeKPF8qxMTkhqJdwc5JiiDjdj99a8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712164622; x=1712769422;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FLU0Qn/N2mTJYrAH0IXMhe/omUgrIuSiHR5+qCEFKcA=;
        b=ix5gXI7BLWdXkH4k3JAxYL2gUEwGcXTFdxao7lPI8IWhJrebRQmA+jTO4mQmUlQK+Z
         aldXV1bmQ7O8MpteUG500aTFcQiSalPxPmZV2vSlLPQR9/Mxg3/A1hbTPw+abBu+bgL5
         lhd+oeWzii11JTAA1/Kl4msBpa+21CTNApclGRzUhyL8Lb1MwHYgcYguPJwpXucVCJk8
         kVa8E5xjrAipv5M0qEDcAjVt/UgaMtZgmluDE+lWUevBcMO5ke50W/Hp1uKhWOeuBOr5
         eiPmLQ8tkz8+Fvr+08VCOe/RGInkIZPZH6CbfnjCufD+2i438iVU004qxT2YAZgB2STt
         O2kg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXyTqFA8upnRBlyZFw3LIKDXpun8hU02VSaHzPincG3Jv7PKtGBtlrTA+d9qGY/WbIwMlVDCXrEzG9+bQ18fx62q2NmGZpNnoFN
X-Gm-Message-State: AOJu0YzhG5/VS/y8xYul4mObjpjv5Lvc72BPZyc+tjGL7bIYmKo1C/eo
	VfCQYF65NKz6QOvqkEiPeMf+psLMHfh6zKT6gP43rPzabpP8GNjbjQokvPxBg5A=
X-Google-Smtp-Source: AGHT+IFPSTpkbyp/S0puT3ap2v2KI1OAdT752+gH2YR/EyBXOmWNUx4zClwHZWO2mDe9MRl5w7pV2w==
X-Received: by 2002:a05:6a21:328f:b0:1a3:55d2:1489 with SMTP id yt15-20020a056a21328f00b001a355d21489mr405242pzb.7.1712164621998;
        Wed, 03 Apr 2024 10:17:01 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6a00:a08:b0:6ec:d942:1606 with SMTP id
 p8-20020a056a000a0800b006ecd9421606ls76419pfh.2.-pod-prod-07-us; Wed, 03 Apr
 2024 10:17:00 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWfv/SyLlisQOix42r8G3Z1Jg5c4GFlRLYWqTYCZhw5ueUtW7BLZCkP4F0tqxJrN6cbhvXediNxvq9NJY2U0tfJFARWhZcREUosr+B+NFjWYRI73eU=
X-Received: by 2002:a05:6a00:140e:b0:6eb:6:6bcf with SMTP id l14-20020a056a00140e00b006eb00066bcfmr169470pfu.23.1712164620533;
        Wed, 03 Apr 2024 10:17:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712164620; cv=none;
        d=google.com; s=arc-20160816;
        b=0pVhFsx2i6IocCKmSKr02NDENuA5k2QoMRucXT4QeqxbrOHpxA/xfxQZuWLhBWUxUL
         keJsb/Dxs6lnhE/bvfhdkKZSnXkBe8SD1cZcM5+rfmDn/YkZY0HWLCknlCg0FaM0XyiF
         BrGyx+INy6yvtNmG7ab6p+1PgPU+xqEiDfRAnIZmCFVgPJs0UmDwx+soGX9EU1ajcKYX
         Fsw+MgeiJzq/3oIMpFUTtJs+1HyKWDpl5ekHwPEn2B7Mtm6ckYJhHF+ge6yXxIxRgxcf
         h4d6jJB+XHrh080PXAF1xA5B7os8perAiRZILYYHVR0cKQEMI6M7TSVjpa73RSW1G7ND
         fRSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=/+7/se9tC39y5iAijS62Z19tpAvcCLG/ConipRnEYCo=;
        fh=2U29iyHh8HISuuHe9+kPEjk0PdkMSMmM2qFAhANsdko=;
        b=sUZGyk+F1hNl357AtAoXJUohGceDtr31J2dyLrqTfhog1QArut+VQzlrII6pFl6az8
         C9lQGANvRZWocAUfg06HtyisDZfyyOqyxxbO7FzgspVkY1yu4dcwgHX3oYkE5dEmyw2A
         XIXvsTrPC1fTyhByKIIMetbQtqwFiAnrGaZe5DK/0tHuaGtUmehclOYbq5cOn4K1mD/g
         /7zosn/A/wMuRjuYb78FHfiAiPlAJqxOzLni75GVSW0bRZe0RCeZQEqDO6+77YwpAWjQ
         zwMV/MyK/ANb1eoW7cQGx4S/OYCik7OdDz7SBa/Kjh6z8fGoF9auim4dJM0iS+M4JCx7
         mI8g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Y6P8eJXE;
       spf=pass (google.com: domain of sashal@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [145.40.73.55])
        by mx.google.com with ESMTPS id j17-20020a62e911000000b006e70670e744si13369013pfh.259.2024.04.03.10.17.00
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Apr 2024 10:17:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 145.40.73.55 as permitted sender) client-ip=145.40.73.55;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 01E6ECE2BDA;
	Wed,  3 Apr 2024 17:16:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2BC7BC43390;
	Wed,  3 Apr 2024 17:16:57 +0000 (UTC)
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
Subject: [usb-storage] [PATCH AUTOSEL 6.8 02/28] usb: storage: sddr55: fix
 sloppy typing in sddr55_{read|write}_data()
Date: Wed,  3 Apr 2024 13:16:04 -0400
Message-ID: <20240403171656.335224-2-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240403171656.335224-1-sashal@kernel.org>
References: <20240403171656.335224-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.8.3
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Y6P8eJXE;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240403171656.335224-2-sashal%40kernel.org.
