Return-Path: <usb-storage+bncBCC2JRVCV4NRBTOO6LCAMGQEABA5QRA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wm1-x348.google.com (mail-wm1-x348.google.com [IPv6:2a00:1450:4864:20::348])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A82EB24C8C
	for <lists+usb-storage@lfdr.de>; Wed, 13 Aug 2025 16:55:11 +0200 (CEST)
Received: by mail-wm1-x348.google.com with SMTP id 5b1f17b1804b1-45526e19f43sf22586665e9.3
        for <lists+usb-storage@lfdr.de>; Wed, 13 Aug 2025 07:55:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1755096910; cv=pass;
        d=google.com; s=arc-20240605;
        b=SUgLugJcTeV14eDPZY8Z7Vg7qzNLaFGg6ujImFr3+mlqkMf6+7eWPwCdvurMkmJ+wE
         /EtF3qfJcAIASjWfWFz1bBO/X4wdHqIH53DT5Ul669L4zlEMLm6+gLx8fOid2Z94iOu5
         BXI96KsBRqOI/Kkf8iixHk6Tl3UmpV17G5sC+VK2NRYe4YYpAqSv0XBEhRwfVFRBaeeC
         Uy0Z1NMD/vapQJr96ZWfsA7xHW/FzCCjZJ8OvVNI2elmJsKcEqUhptTxHRpbvNTeJRcs
         MT2uQNjArgyMLDTbfulYxPgWUjKlTwrLNzxI9ssjCJEEkLQZGB7eagavYfmXsvjIQf4s
         mqRw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=Xy+XkxUEV2OSKLyksUgvTJcTv2+2o2Pn+MeoMJJQE9I=;
        fh=x4gOMh7E6J6q49P6K1ah1HJuJX+ANRvlgX4sFj+T7IE=;
        b=EdsEB9KJ7aigmajPEQHm/DNyyhQAf8YwdEGhvsAe/ND7067EfvYO96gQrTo0rei89k
         gftx4zg03h4NFFwNyShduBFSy1bcs6q9ZwMApeTD88sa8wV27NGqbKbqlP15IAOdk3vh
         B1C/3bw60DHjgb+LPrqa4BaIjql5DjZa9Sye7TKhon72GYqpIuZuxCGveMrPozw0hgpj
         sGX6v6YO7mdvzwcZm6FQdWeMXifmZclMtLKgzC29/+udeZ75KX8qIE6vtnulbeT80sZO
         iDCz70zJj0F+4uEAJkaPHe/7S49xPqFMxX+chm0kmIktc4qaVUQf7hV7/rZC4IfZmeIt
         2h3g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linux.dev header.s=key1 header.b=jIwIRiuH;
       spf=pass (google.com: domain of thorsten.blum@linux.dev designates 91.218.175.178 as permitted sender) smtp.mailfrom=thorsten.blum@linux.dev;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.dev
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1755096910; x=1755701710; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=Xy+XkxUEV2OSKLyksUgvTJcTv2+2o2Pn+MeoMJJQE9I=;
        b=h0f/oxnALeEnfD8aLYYj/Ad3H5CgOyyljjlGBAdkdanywYYB6eC82Hh7immvaoqsXw
         YbMAqNTLDR9Dtq3XZqJO8q+iTIUEwpCG9EDCP9RtcPrswXR/bcaCk/B3IW/Z0UGA21zV
         gqsOhNW0cXi0geHmSe2zYGCdKDy+rO8QdI51A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755096910; x=1755701710;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=Xy+XkxUEV2OSKLyksUgvTJcTv2+2o2Pn+MeoMJJQE9I=;
        b=AigPYGLTT4orNezVK1EamInxSOcsdTOXvK+9gHhmqwAsS1j2GQCUhVEM78Vx+Miqfe
         f/vOxBn3+Km8F6z9VNin8lCGuxt/nY6bYNUVCWH4UDx4Glv+8lnfJWWW4vyJeKyfL6Ig
         ADsA45BOj3HPexnhjPYq+B90DNVy+Y58Lgz1rpcMReI2PsCtRYfeTYyUahJhbFw7Tc5b
         +9HtnlaKKp9cPlZY9e+DoUegTj9vZ4OeVsSXOAS2zlKAke9LUOx2/kOY9qd2MHz895u6
         Cq5TpTm0dDuMSGuHgrRsJr6jlkyPMkxRzxLEfIMRIZ10HaYz/wnMcwJQbHFYrfSqyFwW
         Tuyg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCU6mJ1xh39Ftq73c+4NGlvaR+ATJWgJNEBGMByvpOztg54Zebi8Xgr0RB78CpL/JTskEYD+3w==@lfdr.de
X-Gm-Message-State: AOJu0Yy1AApSmRaMWGk1x7VfM7F4r8t+YDfeFUaTXsAjSJUB9Ree9GOL
	TpR6bjD7AjnIsCAgpOTxLuip/IjDqlbMNmIyTif+XKfsAK5cePnU5kIdk7lTq+k6E9s=
X-Google-Smtp-Source: AGHT+IE8Uivv6GHIBMYqaRCMO8unLzrjaDGv+yn0XZelSUnTnEs0hcwsXAi3qpwi4qtd6LHa42gcIg==
X-Received: by 2002:a05:600c:45c7:b0:450:d37d:7c with SMTP id 5b1f17b1804b1-45a165db0d1mr25685325e9.21.1755096910361;
        Wed, 13 Aug 2025 07:55:10 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AZMbMZfj41Cm7LvM9nWj5LydmiYZVILAjbBb6hkktgjO8WX3YQ==
Received: by 2002:a05:600c:4f49:b0:459:ebdf:b560 with SMTP id
 5b1f17b1804b1-459edcf9ff2ls40610695e9.1.-pod-prod-04-eu; Wed, 13 Aug 2025
 07:55:08 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCX6Hm7/SPPjMkKHnqJqXjlnI2ognJ6jPJ+3t376lyCv3ROF5khZK5IoqmUNW9GuhBrSe1kn2l7zZuVkOw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6000:25c6:b0:3b8:ffd1:136e with SMTP id ffacd0b85a97d-3b917c84a0bmr2621280f8f.0.1755096907797;
        Wed, 13 Aug 2025 07:55:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1755096907; cv=none;
        d=google.com; s=arc-20240605;
        b=RMO8SJFF9PNN7nWG+959rFbIKqj0g08Twvp5jHB3pzeEaiLWzWHnL7gu/8xSRNXCvs
         vWCG4JuuGeOSHpMQsked7k9eUVQ6OdkK7fPfcxtTLbbwGc2KgCtyKUfFxy5qdT6jKyh+
         rP8cD0l6tgCWBI+E8V/LyAUx0Xywt9ZSaT5epDrFHPpEi11sz2Gq3ggTU/rAerc/NZIs
         qqoqaQpeox/q6yMjj9gJ4p4k6NKvrQNQPwCD1sjEbG6vQxSztIbIrNnWVPapnwuzEEeS
         sWCzgRON+Y0lz1awcCWurHawH3k2ORZkjan1iWElP6w89/BMvf22e2ZXyftLPPJqQuiC
         2OSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=LvftcL58ct6X0ftT2fa9FbYktve1QOI78gCmcjiX2eg=;
        fh=rIaca+Zny17mb2BnPMqCfCTP8JxFrir6zBVNB/Inuk0=;
        b=ZK79FI1pMt9S1mKOytwk+CYyF9IjLvb2/h8PtUBcVkQ7cdi/JGl+VO9IkW/gYeHpSS
         6dzmeBWgsRAdm++zlQFR+zc9MH7D+PwQuPY6CJV2wjKbDfDX/mWww7+JGXVTc1BcYbiN
         PLintk9F6uOa7LY+gSsZjJz3vj7rFC7yz1PTGWxcQduPZX1p8Sp5I/EPIUdKij6xvVzl
         eC8yhBEIo18PYGT4oUH8gaHKW2SD/tdnjtavDg6USBl15+O5lHpjXnsRalhSfUQAUB59
         Op2C4ejnB7Qo0AnJdeh/+J19HvFi/i19IUHuIQuWwMHTxVObIAOH4o/e/ia6OMBSAD5t
         v7bg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linux.dev header.s=key1 header.b=jIwIRiuH;
       spf=pass (google.com: domain of thorsten.blum@linux.dev designates 91.218.175.178 as permitted sender) smtp.mailfrom=thorsten.blum@linux.dev;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.dev
Received: from out-178.mta0.migadu.com (out-178.mta0.migadu.com. [91.218.175.178])
        by mx.google.com with ESMTPS id ffacd0b85a97d-3b79c5ba28csi19424846f8f.516.2025.08.13.07.55.07
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Aug 2025 07:55:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of thorsten.blum@linux.dev designates 91.218.175.178 as permitted sender) client-ip=91.218.175.178;
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Thorsten Blum <thorsten.blum@linux.dev>
To: Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	wwang <wei_wang@realsil.com.cn>
Cc: Thorsten Blum <thorsten.blum@linux.dev>,
	stable@vger.kernel.org,
	Greg Kroah-Hartman <gregkh@suse.de>,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] [PATCH] usb: storage: realtek_cr: Use correct byte
 order for bcs->Residue
Date: Wed, 13 Aug 2025 16:52:49 +0200
Message-ID: <20250813145247.184717-3-thorsten.blum@linux.dev>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-Original-Sender: thorsten.blum@linux.dev
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linux.dev header.s=key1 header.b=jIwIRiuH;       spf=pass
 (google.com: domain of thorsten.blum@linux.dev designates 91.218.175.178 as
 permitted sender) smtp.mailfrom=thorsten.blum@linux.dev;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linux.dev
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

Since 'bcs->Residue' has the data type '__le32', convert it to the
correct byte order of the CPU using this driver when assigning it to
the local variable 'residue'.

Cc: stable@vger.kernel.org
Fixes: 50a6cb932d5c ("USB: usb_storage: add ums-realtek driver")
Suggested-by: Alan Stern <stern@rowland.harvard.edu>
Acked-by: Alan Stern <stern@rowland.harvard.edu>
Signed-off-by: Thorsten Blum <thorsten.blum@linux.dev>
---
Resending this as a separate patch for backporting as requested by Greg.
Link to previous patch: https://lore.kernel.org/lkml/20250813101249.158270-6-thorsten.blum@linux.dev/
---
 drivers/usb/storage/realtek_cr.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/storage/realtek_cr.c b/drivers/usb/storage/realtek_cr.c
index 8a4d7c0f2662..758258a569a6 100644
--- a/drivers/usb/storage/realtek_cr.c
+++ b/drivers/usb/storage/realtek_cr.c
@@ -253,7 +253,7 @@ static int rts51x_bulk_transport(struct us_data *us, u8 lun,
 		return USB_STOR_TRANSPORT_ERROR;
 	}
 
-	residue = bcs->Residue;
+	residue = le32_to_cpu(bcs->Residue);
 	if (bcs->Tag != us->tag)
 		return USB_STOR_TRANSPORT_ERROR;
 
-- 
2.50.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250813145247.184717-3-thorsten.blum%40linux.dev.
