Return-Path: <usb-storage+bncBDAOJ6534YNBBCFEZ24QMGQEGCFWAXY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oi1-x246.google.com (mail-oi1-x246.google.com [IPv6:2607:f8b0:4864:20::246])
	by mail.lfdr.de (Postfix) with ESMTPS id 7772C9C5F1B
	for <lists+usb-storage@lfdr.de>; Tue, 12 Nov 2024 18:36:10 +0100 (CET)
Received: by mail-oi1-x246.google.com with SMTP id 5614622812f47-3e600565aa1sf4556336b6e.0
        for <lists+usb-storage@lfdr.de>; Tue, 12 Nov 2024 09:36:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1731432969; cv=pass;
        d=google.com; s=arc-20240605;
        b=a/eQoQ9uulNJIPB7NbmI5ALBEl6ggFXSk9hxrELLDgFVAi5LzOELYT8tsDbaRFavDh
         cPPZyJCnH8TKMGYHpIRPIvhKzlqrlWImgoAfnZjFE5QS2zLckp+AAeBjaK7n7H85ihUp
         AcZG3FimU00Z13BDLmQ9GJCLpLBRp+XwWJyQH2HjD2RMy1ZT0nCec5c5bSicCGfgn/Wi
         ZjPVgma2A1xgkwYNuG9XnnElfU+Pf8CTZojs64Iz0iWrhPrX7lQr5v5LqoFmIKFJty6n
         PIUKxBUAfs7wsZyk/Dg6HrIaIG6iXdio4ywVk/AKKJShyRZKWczLOO/BPRgBoiufDgqZ
         Sz5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ir6t5wrW/vNMCcTq95UxTUhQg1XrNoOVMWYG4BnVK5M=;
        fh=hbVgSWvVT9t8FadHRq+diClpVBpcdDs8B1wx87ACjKg=;
        b=ERGfqGBqbt9bornG43FgKa5aGDq9Hafy6MgiDtrc/FymgUIQt/PciP2JPsbC95Hbpn
         ixtUNOXnLD3Nb4kAo9A+Zo6coZGiQjZlJSrEKHTukgPyF9707GgGi8n9myqa4H97ThIo
         JxCq7a2+Lo+KoYXx5zWRrsmILSif0gRfJ/EZQUcWc8ZaizRE9B17PD98lCB/v7CPIhcg
         dQvd3CQ8GaN+D7ZbE52QMGjeNs6CXf1W53PqclHtRicJ/flwn+yRBsvtZq3wtzzqmCl2
         kWHeVKtKvaPTEOGYa7uuYi/Val8BjJr4rRLe/X2lUcB6wFOYTR0ZEJ302Ibb/aB22EH8
         s8xg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=NtkGmKY1;
       spf=pass (google.com: domain of snovitoll@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=snovitoll@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1731432969; x=1732037769; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ir6t5wrW/vNMCcTq95UxTUhQg1XrNoOVMWYG4BnVK5M=;
        b=BCyxX0hbA58tP6QqdAixYgEAkZIPkZUvexlgIfQgEN3Ji2H6Mh7esmAV5h1zh9IZsr
         Sw3VADe1IIXgsTyR+//TPfpXm6a6Lg3orZjoLC3iIv7SVJBUs4xCYUku84eD7nd+gmVC
         CFgFcuo0FkjpOIAUJ15A3xj8sEiBca8IqWf0I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731432969; x=1732037769;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:x-beenthere:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ir6t5wrW/vNMCcTq95UxTUhQg1XrNoOVMWYG4BnVK5M=;
        b=ZtHgrej7jEy8drKlmbMQcK0I0dvI5id6H6Icuh34fzvjwG8gOjFePMei5tE2f2phGt
         BMhYYWa67SAdqI693SVhUIRZSPvN6yAOzz+fW0a1sSdjJM2nls+1xvBgM4hIPAiqFR/1
         isRaLejsakvv6/YUOCoXDUhvRqe8gZGHMjYpD5pie+bTogpUh6WrzEWVmi8T43mm1ES+
         +pIgHQ+uyVdlRmM2aG9RM/F7BJLFuP/32mDI/YOho8eQFSziAVIzV8hNehd37J5JnCpO
         Vz/ND+deTjmDeObsu471fH9h+Am3FimlPYZkcPCMyUXY/Z91/S9NrRBTeraO/qadNE/T
         DQuQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUsEYSlzy0kxIV+xnLT5PYYR5utMcELGAt+ymRIDGWOUMNoMPPBSmzvhIWtSK5uhCtgdeSQ6Q==@lfdr.de
X-Gm-Message-State: AOJu0YxLT6H+v6cLZ2bQXZHsOdLh2iPwg5+aQ3OOgm8F0BtDVhO4fg2b
	0izaoj73pYVzyatqjs86hdNtxYivewl3YuOZiv6sK369Y0trI+aRBzitbBsgUEU=
X-Google-Smtp-Source: AGHT+IFn14oEDvSlDPXyEMDrBSKmlI3nZgYXNYRtXNEIxfxpqyQwEps9VRfc4clHjkTdDv3dOBZHHw==
X-Received: by 2002:a05:6808:38ca:b0:3e6:2169:5a63 with SMTP id 5614622812f47-3e7946c8099mr16308296b6e.31.1731432968926;
        Tue, 12 Nov 2024 09:36:08 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ad4:5f47:0:b0:6c5:15ae:4b18 with SMTP id 6a1803df08f44-6d3933dd3c7ls53225576d6.0.-pod-prod-02-us;
 Tue, 12 Nov 2024 09:36:08 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUcS3jCE0h6wjwIAw46+JuyfJd5ZouvcOH3YpPHO+WIBSlopSv5O89UWOC38SGDO1u6FG+U7LPt1pbjTA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:620a:4442:b0:7b1:4fa8:af90 with SMTP id af79cd13be357-7b331dd30fbmr2407324585a.30.1731432968252;
        Tue, 12 Nov 2024 09:36:08 -0800 (PST)
Received: by 2002:a05:620a:30c:b0:7b1:4744:32d3 with SMTP id af79cd13be357-7b34c3c33ebms85a;
        Tue, 12 Nov 2024 07:58:33 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWRvGx4zWVfTCGUPi222KE4TxeA1VU50Ey1XBCS61m6IcWI+titCos3RNg2ogtkO0mnKY6iRgzs/0rtZA==@lists.one-eyed-alien.net
X-Received: by 2002:a5d:5f45:0:b0:37d:2ceb:ef92 with SMTP id ffacd0b85a97d-381f186bccamr15593559f8f.27.1731427111676;
        Tue, 12 Nov 2024 07:58:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1731427111; cv=none;
        d=google.com; s=arc-20240605;
        b=S2YnRNsK8icFbhYZMXnFXrsA365z3oZRDdq3ja4iEG/118u+WJbse/ijacMorVjAQF
         Mxvgx98XNo7yrVdmwPxlWAHozF8mnFWndk4mFKRFRgw6O/lnqANKT1bLywaMtXMke6Nf
         sj8z6CMLb9DjqX7fjIskHA3zoMQhqvL03MSgAeAIN6PXPOAYmpaNdFLAmZMvVxuMtU9O
         L0gjSBu8exF5Hl+0Vp81APXPOuCyegkQGHwR7b6mb6yiospbvoKX1689wGbhdGYBplPC
         1Y2CH1onxGTKqnpRaV8Mo3Ufpl65HKS92GECl1ZLna3V8SD2S30X2GmifGRCBDhlcWDk
         aHLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=DGw6mWqyKGhSGEz0pcciGxD/rSjc8N2yFhLNVJVJUYM=;
        fh=wlkeVcHIE3Jdf/ILrYRV7c8MLQt6WVHZJGox4v8hsz0=;
        b=ZUusYoDbCvccaG4pmsl4ZfOgoBE2FegW7fjKUqvrGLrsseWMRCj7OcHc52CzyppbkC
         oVOkSNCYxAggnHZqVftwxkEqEc406iTecEt48HAlPAeJG0q0WnhiW80V1U/RN/OtgtpJ
         V8apPIfNMEofYPLQGN7obCfT7qaA/idJKUlQhKCcqClSWYlCHCnH4KYX+RNDZ+uYdHF4
         CduQXDRH+X8N617vGU9wLvGZi/eVxJ8rTee4yEW+j6avxxpkmBYSqUx9MIq7VPjW+sn8
         bAPagkwpuyzqKilKh9Axz2VDQObGlyl/MZ5mXpurIrXAGhU3szmi19CUSEhUi4Yr65YF
         jR2A==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=NtkGmKY1;
       spf=pass (google.com: domain of snovitoll@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=snovitoll@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id ffacd0b85a97d-381eda16357sor3964846f8f.10.2024.11.12.07.58.31
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 12 Nov 2024 07:58:31 -0800 (PST)
Received-SPF: pass (google.com: domain of snovitoll@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCUiE2+nQOyrobxy+dI9tRtkqf+9s+BG5nRyi0ipdZWyjnpCP7ZxfbIEqRe3rvCetYtpJCFZunFPt440gg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6000:2a2:b0:37d:5257:41bd with SMTP id ffacd0b85a97d-381f1862d93mr14320340f8f.3.1731427111188;
        Tue, 12 Nov 2024 07:58:31 -0800 (PST)
Received: from work.. (2.133.25.254.dynamic.telecom.kz. [2.133.25.254])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-381edc1104asm15991136f8f.88.2024.11.12.07.58.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Nov 2024 07:58:30 -0800 (PST)
From: Sabyrzhan Tasbolatov <snovitoll@gmail.com>
To: gregkh@linuxfoundation.org,
	andreyknvl@gmail.com,
	b-liu@ti.com,
	johan@kernel.org,
	oneukum@suse.com,
	stern@rowland.harvard.edu
Cc: linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	snovitoll@gmail.com,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] [PATCH v2 2/8] drivers/usb/core: refactor max with max_t
Date: Tue, 12 Nov 2024 20:58:11 +0500
Message-Id: <20241112155817.3512577-3-snovitoll@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241112155817.3512577-1-snovitoll@gmail.com>
References: <2024111251-spill-hatchback-72da@gregkh>
 <20241112155817.3512577-1-snovitoll@gmail.com>
MIME-Version: 1.0
X-Original-Sender: snovitoll@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=NtkGmKY1;       spf=pass
 (google.com: domain of snovitoll@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=snovitoll@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com;       dara=pass header.i=@lists.one-eyed-alien.net
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

Ensure type safety by using max_t() instead of max().

Signed-off-by: Sabyrzhan Tasbolatov <snovitoll@gmail.com>
---
 drivers/usb/core/config.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/core/config.c b/drivers/usb/core/config.c
index 880d52c0949d..25a00f974934 100644
--- a/drivers/usb/core/config.c
+++ b/drivers/usb/core/config.c
@@ -924,7 +924,7 @@ int usb_get_configuration(struct usb_device *dev)
 			result = -EINVAL;
 			goto err;
 		}
-		length = max((int) le16_to_cpu(desc->wTotalLength),
+		length = max_t(int, le16_to_cpu(desc->wTotalLength),
 		    USB_DT_CONFIG_SIZE);
 
 		/* Now that we know the length, get the whole thing */
-- 
2.34.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20241112155817.3512577-3-snovitoll%40gmail.com.
