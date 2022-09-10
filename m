Return-Path: <usb-storage+bncBDTZTRGMXIFBBKP66OMAMGQESETELIQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x548.google.com (mail-ed1-x548.google.com [IPv6:2a00:1450:4864:20::548])
	by mail.lfdr.de (Postfix) with ESMTPS id 146AF5B4943
	for <lists+usb-storage@lfdr.de>; Sat, 10 Sep 2022 23:18:35 +0200 (CEST)
Received: by mail-ed1-x548.google.com with SMTP id y14-20020a056402440e00b0044301c7ccd9sf3530982eda.19
        for <lists+usb-storage@lfdr.de>; Sat, 10 Sep 2022 14:18:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1662844714; cv=pass;
        d=google.com; s=arc-20160816;
        b=MCdrX+q+ybnIIEsmN9wo3jHAib+XjfIAlzwRGDLD0QiIgFkQ9kJoVT5FL187y1zSFX
         sBI1ZBtmgPd34RlibjcgSaDuwlqS2gXmZ+vGeroj6hbCKjSdxIVevGKmY4Hk5vmhOomK
         yJQnalhNUB65aeA79MEbZdg04r24I/zXYoBh8gwDwxuw46ukwtvTOrFgHDQdge3e0Vfd
         mwa6rInCfgGlsQC+in3vMjOGpL34JIDLlWVN93i47jPo7K8sQ7CVlHM0FrjCRR5Ux1l3
         busG5v19OmuWM6hDDFf5xcEiOF8xWTKNwVDIV6Mg1K8rxymatQAelsB0Q9BuyDQlAOil
         KNWg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=2ZH7r0MfEiIksAH97SL4HYSxL13fYuTVhjBEW4ikZLY=;
        b=zDalSRHlEjQJVsmj39j2LZ2eIxKmyI5cwRVhEbvAhfbvtvSq0FBPCqFR+Fdda8KOl1
         df1pZ5G80F5emSQBvSMEnZOn4P7fJm0AU+lqB9CBrnqJPF3eOn0ZKaZUPst8mN+YXV5A
         vlMsP1QSpnKrfTfg64P9PQa0WrG7UiRsvSF6RO2Ie9xwB68C1pv9vAAVX9ar9E2pVToF
         rcYAmUFVTnWU1guNtRysdaxeSHoLmqx4zR+pJXVyHcPUHrTTT1Rj5s5/iryk5b1Yh6a3
         X1IEKXnX9JD755d9BElBOoLXuLvo5JD6b3HfRjN8nXVT9h92XSQ2yEZDKG1F6+zv0lle
         h1AA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=g4kutTQU;
       spf=pass (google.com: domain of sashal@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date;
        bh=2ZH7r0MfEiIksAH97SL4HYSxL13fYuTVhjBEW4ikZLY=;
        b=doZzlrJqAEnLSqEnE7acsJOkmSApOvn2Cr6dVrSo8QCKMjKrAba5mQXzLYTf6s3zhx
         rjXpJedHBlFetslBOCSwVzygsDElbqPxH9WIB0S2EkMsvVifBotvd3HQty5fJHVWwvel
         ap8KGS6qvL/34LAhijGC6f1hzdJTTu2po8Pl0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:sender:from:to:cc:subject:date;
        bh=2ZH7r0MfEiIksAH97SL4HYSxL13fYuTVhjBEW4ikZLY=;
        b=L4utBN1x+j14Ia5aNotWjRjgfSAWeWHmB6ZKg8RkSURldA4PLhjEBbHVKc7XMGBNOX
         DY/lUhYqRl5qVI/3xrPKxNLD+sS97FD/cOapcUXg4IDMCBjN3WWExfTTFlRjWvjrUwLN
         vwOmqCeo0p7h//fGoux20+s2yMhIFDHU3xlOZFsqjdHG4EMwmiUF1/E0f8DcC6M19SmL
         4i42b7bUUgIsUGQJuvL5GSliIICLZlVbiVyW5HKqcanQef+YvlDufLBYP1iFoyS/ufHM
         pwqiFU3d6GIcSVDNvrg+Ft1Jv12aBhRZWt7Ys67lQRzBze/ZNzbpz6X3VwGpXBug0Lgk
         6d2g==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo3owHmUe0QOPpMIvE/Tnj6UYdcso+g7KLywxIjM55XCamzINhXD
	SO+kk99pjAmF1nfko5IZmThukQ==
X-Google-Smtp-Source: AA6agR6GPvknpDtz3hkhKym8hCrwx3PPVmsL9LHX8ozjlZNWz9dlA0007qeN8+sMI8RrFeGL8Te46g==
X-Received: by 2002:a17:906:6a0b:b0:76f:a2e:10fc with SMTP id qw11-20020a1709066a0b00b0076f0a2e10fcmr14174361ejc.521.1662844714211;
        Sat, 10 Sep 2022 14:18:34 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:906:b849:b0:730:6a7d:1422 with SMTP id
 ga9-20020a170906b84900b007306a7d1422ls2527470ejb.4.-pod-prod-gmail; Sat, 10
 Sep 2022 14:18:32 -0700 (PDT)
X-Received: by 2002:a17:907:3d9f:b0:77a:21d4:7310 with SMTP id he31-20020a1709073d9f00b0077a21d47310mr5617769ejc.279.1662844712740;
        Sat, 10 Sep 2022 14:18:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1662844712; cv=none;
        d=google.com; s=arc-20160816;
        b=f7QMX+jv2tUrZERWdkwPHglcwFK+jXIcKPjcZJKT/9Wt8cD6JEk0732+alInHpX2xV
         3ytw/WW3fsDYGiF43J/y6JbGSR9UtCC6+ca+rvqg9ZyYQYHQdfZhi9gCkNeuf9ZMP4Ws
         CRvxGb09YkXHMHL3dFU3zT8+S86TeivOZ9z1evrWR6TiECZvEcODtqkyR4a/fhtsG7e6
         eWZWwL16sIS7a5KBMuaNvhPlhje/BPFLJHiViOvla4Z9P5CxWf7QIH0YlTEAOyYrpq80
         6dbx4NuJsgL5NacFmpgqiBQYDR1oh/62FCRW8fVX87iKw8+sRooi4dNtqjYW3oYLkDsn
         cVuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=M8fb7ZtRwxkIEwd9GitBm5HMbFU5uBp8nxnEN5ezzY8=;
        b=HInmyWM172iLLQIbV9NkY44UyJHWGkSYayJFIL5/mT4LzLdg/VygbkeHIdqGyY0jtY
         Q62W4ADIZQ030FHAEdXrfnGVpf0QNdfiRj4hBszKCG3aye14PpDodflgCo2Y1xY1ZX5L
         iRNZfLANIQi/qeomX6jceYKdF7NwWxbajfux87Wa82UKvoFV5TrrhGo73ZJogml7aMi7
         f4EGfYNOUeyvTXJwvK4Cvm7pX9B/kB1BIuP27D2wOCHFAHPxTDMKVbz9myP+Iye6I4b6
         s/mR9/ekyv/phZQ3zWbC8psRdYHT4lqqckKhJffdoGZ8SQ68UB6cR/8jx9MAnGPspRgz
         sNdQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=g4kutTQU;
       spf=pass (google.com: domain of sashal@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [145.40.68.75])
        by mx.google.com with ESMTPS id p27-20020a056402501b00b0043c2919cfd3si3490692eda.602.2022.09.10.14.18.32
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Sep 2022 14:18:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 145.40.68.75 as permitted sender) client-ip=145.40.68.75;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 6AD10B80949;
	Sat, 10 Sep 2022 21:18:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 26EF0C43141;
	Sat, 10 Sep 2022 21:18:31 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Hu Xiaoying <huxiaoying@kylinos.cn>,
	Matthias Kaehlcke <mka@chromium.org>,
	Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] [PATCH AUTOSEL 5.15 21/21] usb: storage: Add ASUS
 <0x0b05:0x1932> to IGNORE_UAS
Date: Sat, 10 Sep 2022 17:17:52 -0400
Message-Id: <20220910211752.70291-21-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220910211752.70291-1-sashal@kernel.org>
References: <20220910211752.70291-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=g4kutTQU;       spf=pass
 (google.com: domain of sashal@kernel.org designates 145.40.68.75 as permitted
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

From: Hu Xiaoying <huxiaoying@kylinos.cn>

[ Upstream commit c61feaee68b9735be06f162bc046c7f1959efb0c ]

USB external storage device(0x0b05:1932), use gnome-disk-utility tools
to test usb write  < 30MB/s.
if does not to load module of uas for this device, can increase the
write speed from 20MB/s to >40MB/s.

Suggested-by: Matthias Kaehlcke <mka@chromium.org>
Acked-by: Alan Stern <stern@rowland.harvard.edu>
Signed-off-by: Hu Xiaoying <huxiaoying@kylinos.cn>
Link: https://lore.kernel.org/r/20220901045737.3438046-1-huxiaoying@kylinos.cn
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/usb/storage/unusual_uas.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
index 4051c8cd0cd8a..23ab3b048d9be 100644
--- a/drivers/usb/storage/unusual_uas.h
+++ b/drivers/usb/storage/unusual_uas.h
@@ -62,6 +62,13 @@ UNUSUAL_DEV(0x0984, 0x0301, 0x0128, 0x0128,
 		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
 		US_FL_IGNORE_UAS),
 
+/* Reported-by: Tom Hu <huxiaoying@kylinos.cn> */
+UNUSUAL_DEV(0x0b05, 0x1932, 0x0000, 0x9999,
+		"ASUS",
+		"External HDD",
+		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
+		US_FL_IGNORE_UAS),
+
 /* Reported-by: David Webb <djw@noc.ac.uk> */
 UNUSUAL_DEV(0x0bc2, 0x331a, 0x0000, 0x9999,
 		"Seagate",
-- 
2.35.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20220910211752.70291-21-sashal%40kernel.org.
