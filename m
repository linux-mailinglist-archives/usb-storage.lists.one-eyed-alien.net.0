Return-Path: <usb-storage+bncBDTZTRGMXIFBBEE7W2YAMGQE7LUDB5A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc46.google.com (mail-oo1-xc46.google.com [IPv6:2607:f8b0:4864:20::c46])
	by mail.lfdr.de (Postfix) with ESMTPS id 867AD89763C
	for <lists+usb-storage@lfdr.de>; Wed,  3 Apr 2024 19:19:14 +0200 (CEST)
Received: by mail-oo1-xc46.google.com with SMTP id 006d021491bc7-5a5547dbbc3sf89891eaf.2
        for <lists+usb-storage@lfdr.de>; Wed, 03 Apr 2024 10:19:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712164753; cv=pass;
        d=google.com; s=arc-20160816;
        b=lslVTdYEVN4WPLut4adddsk/fsdlAjjn2EFSq8+oclfw3LmTQIoEocaV5cD1rFP/BE
         55MIga1U3AIiXOMRZb2BnJXap+/kr/tajfZ9rTeHeGyEDLTVKU9AgvNNqIvCZajsNWgi
         ZaJUj02/7qiziTQ/1X6606gUa45aabJPM3R3GWlm4+/bfuVln43j0f9gZytXd0jbbEb9
         Q0aG6ZgDY0GEN70x+0mlv8tw2sgP/oYzLM+kwxbDHdIMqxR98tUK/GKQi4cplAfSyCLj
         BV+COd4AODB/kjo0xdHWO3I7Cz8Q5h6DxJJLD4HxenAIK3e77bHlgDY8E1q5R5ocNTVA
         ofrQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=txH7PJOIgU5Wf2hKlsSr1i1hKPBOdxp0OPo9O5WUp6E=;
        fh=Pe13SlFlrUvTjK8qMzAmJRl7rF8QJSeXCR1Su/OaaX0=;
        b=XvlCdoVEXtIGvbzsGaEp9eCqsA5Z056RddLntyAjM0g6Ej/sIWIwBios/09T48FtnW
         zUOKr7PeamNe5XgVEcR6b4RZZV9HrDOcJn+cUrHv0xKYR/vrb8f8ko1LOcb8sCaWLxTI
         pz4+g2sUPWy99EVCqHqw9TuNd+SM9Br32/ssbQxqsTDC1yFTNs9nADlz59/hllJ+OnpM
         dAun0L7DZ5tqT8wIj5l5rfPcQe3biQX+spa7u3xtBfbS+cX9aE3kI3WWHnM5SKdKdCgh
         dNfRDpYhsYK7tPnOsf/ZbvSVJgauCxUYe7lzRRGeup0nFzl2CcA6mu+rnfLkgdrJ19YF
         xR2A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=X4J3pXvH;
       spf=pass (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712164753; x=1712769553; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=txH7PJOIgU5Wf2hKlsSr1i1hKPBOdxp0OPo9O5WUp6E=;
        b=Y+ZNOyV0IKq37jKQevn/45jKUkOOQMwY++SSmsohCOmucrd2pKFomQeYnQBc1JbI3t
         O+y51M3LEX0I5TY9ksx6vGWRaiWeDeXHr8mP/fuE9wFH4VYZxNkHw6NbujbFeQOE52Tf
         NobVsCOydmZxtVFo+JzKZrTTrdbKfoW9e+Sgk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712164753; x=1712769553;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=txH7PJOIgU5Wf2hKlsSr1i1hKPBOdxp0OPo9O5WUp6E=;
        b=qWE9sDsUj/IxzuK5+zFJv67avSl/jEHJZjLjK+Lro/pQPR+qOp5faYNQiQ5oPNmSfO
         +QL+nCi49daRGuC/9MmkneyhNg8sok3bblWTfNOGfvjYNthy+A3+4hw7MlD4wjmBtij/
         hgMUI3AhPjLSxCRtG+d6rptYZD72dsRYrJV4Tzdj5FsGK83Bo5TAohvvtdvQ+XPORqgr
         +M2MMemQQ65swMGwIldy04263Du7ONrQpKRXuhZQW4c9flCSPrreUHsPC2g+/pXZTuye
         ccjKGIQYZyjaT0o/Pc+pFIxydF0kN7FfSPbA4Pc7zFyq2AxMEhGN6bGy6UN9Oh4grGrj
         gzNQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXPjn6vE9dT2h4exelp2+HFvLZ+jpnQFF6Nx7qhg5fj0pWIz65tCb5rhw3mymhv1ohq/k2UZ//wmUcldxewsw9nZO5iMRpVq55f
X-Gm-Message-State: AOJu0YxMKv3ZBHlTgTwA1SeVZ27mvwimYfAks86OkN0hFOVcKvF1jAw/
	oz2xjgquIjvWAAUzhHngZ23wvK1i5cX5tsQJqCyZeWrSkSamw0P+Sh/DT+oFoew=
X-Google-Smtp-Source: AGHT+IGenNr0Lvk0J+Er3BXEu1qRma9AwQonSRHlHG8g0QjH+g+GadN5xHSfTzPzX57+3J505ucTaA==
X-Received: by 2002:a05:6820:260c:b0:5a5:2553:5036 with SMTP id cy12-20020a056820260c00b005a525535036mr15135181oob.9.1712164753094;
        Wed, 03 Apr 2024 10:19:13 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6820:2218:b0:5a7:991a:72d2 with SMTP id
 cj24-20020a056820221800b005a7991a72d2ls128673oob.2.-pod-prod-06-us; Wed, 03
 Apr 2024 10:19:12 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCV5VjBH/e7liFIyAjrem61U7Zljfr5a3l4gWeQhqTMIG9NogoHmQA0DAotStImzuFkYOyjkthsSHLIuX+vGTQEc4HrslWMGnegiH2ZfxaurGJOiXW4=
X-Received: by 2002:a4a:dc98:0:b0:5a4:ae86:118f with SMTP id g24-20020a4adc98000000b005a4ae86118fmr12112241oou.8.1712164752178;
        Wed, 03 Apr 2024 10:19:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712164752; cv=none;
        d=google.com; s=arc-20160816;
        b=l1or+LZL30sgnsZIzXW2YKRKbDUo7S/ao7r8f4h8ZGzwnfUrjjV3O4Jqu0l9G/Yh+d
         ojbg8pZtZLC869oCJE9+SQ6X7qeBxlMvaxAT8K2KETy7/07z6Hbf+WDSnIV7QWNyVJN1
         Sg5yi5KdwhEFZVUzHyDDGeJBFGsXf5HOgK1sy8zlIgFljgrKG7h2p505Uq0Zc8bBYBS8
         1zVOc/epCTXZJNFfzJAEMLu/WrnEzsHnd1VIV13CCsTeBid/K+UZr0e8K75tigupRsuW
         /eos2bF7Egx9HAEbI/cVSaevqdnCmmU3WShE10PJDZJAfe6yNiW7YPd0ugxqpBW22C/T
         KujA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=/+7/se9tC39y5iAijS62Z19tpAvcCLG/ConipRnEYCo=;
        fh=2U29iyHh8HISuuHe9+kPEjk0PdkMSMmM2qFAhANsdko=;
        b=bWK4JnNOpUS6WnihmLQrRGz9qXFVC8zH280jCcnMEsuVg5POamKVkPWlORj4q4Yh5Q
         zEl4ScgMgHBZ6SR8sf2hHWFtM2U2nbmAYRXwjAEVmFSo8mfSIIhuiAK8/n2IFCd3yi3q
         El+lvKaHkZv7GVJ7VvI+Jg7H0mRGm+QeINxCS48k7bxyNBuS3Hodegp5aOJJxyg4Ql1y
         CbRMo2aseXtHlz4tMTYjBlbdP4BG8t+uWKuVeRa3dKzc9bk56kPnhfUPm6aFHby9QmF8
         6up14Q6PIfusS1mjK/WffTUu3JJQHRoqrkN2LLI8Qd4dvlHlkPayWIo9oRGj/LWDVPOY
         Plzg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=X4J3pXvH;
       spf=pass (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by mx.google.com with ESMTPS id q68-20020a4a4b47000000b005a4a2dbd84asi3829186ooa.34.2024.04.03.10.19.12
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Apr 2024 10:19:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id DAB4E6149F;
	Wed,  3 Apr 2024 17:19:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A94EFC433F1;
	Wed,  3 Apr 2024 17:19:10 +0000 (UTC)
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
Subject: [usb-storage] [PATCH AUTOSEL 6.1 02/15] usb: storage: sddr55: fix
 sloppy typing in sddr55_{read|write}_data()
Date: Wed,  3 Apr 2024 13:18:46 -0400
Message-ID: <20240403171909.345570-2-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240403171909.345570-1-sashal@kernel.org>
References: <20240403171909.345570-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.1.84
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=X4J3pXvH;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240403171909.345570-2-sashal%40kernel.org.
