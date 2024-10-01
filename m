Return-Path: <usb-storage+bncBAABBM7U523QMGQEJUR4KHI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc45.google.com (mail-oo1-xc45.google.com [IPv6:2607:f8b0:4864:20::c45])
	by mail.lfdr.de (Postfix) with ESMTPS id 7088098B7C5
	for <lists+usb-storage@lfdr.de>; Tue,  1 Oct 2024 11:00:37 +0200 (CEST)
Received: by mail-oo1-xc45.google.com with SMTP id 006d021491bc7-5e1c72ea68asf4252283eaf.0
        for <lists+usb-storage@lfdr.de>; Tue, 01 Oct 2024 02:00:37 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1727773236; cv=pass;
        d=google.com; s=arc-20240605;
        b=icS4DpQ+eKAFkO9yodqY69oZNq8wMgLrEblbuc5mOspR96b/QDEzB+tV9dlxOlv1RE
         k9U/XuvZ8eFtxkySKz4F63SwJIemPNQ3olK/tyH0uGOpMIuEsi4+F2J6YGn34hgfmjek
         TumFvvZYFu+BPJfciR42DAPlhxqPMJjhJ6Mn6CjVRSU0E3QcPbGlh+upruHfZQyyndEx
         XxJxR1VNLZhN2KZA9nNhHB8niaIptsn6njg+OVgpTr17hRROltk0MWTpcIZtwZGdYwOG
         vBDX5x31vK3dlUVI4IQ15rgfDndo8QbMxBNuCmRdSFVGntiXqKfg+x8MnDaZ0tu3A9D5
         QG1g==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=JCYqvM1Ie6R+1++FqY7zEUvst7hPttyoT5DHUpdlrGw=;
        fh=LRvzCBQGZJmufZo46IzswS1cA9K6Hz+1IvGG7Jx5uy0=;
        b=GED58vig0r5atgGsXzyXM/W3SErjxZbcQjj+4QvkWOLvnGGcsGDxMWjzYnnaGD7hC6
         UKiZgQuXdJPc81AVrvCfjpf0VfLn2nt7mM4Cuyo+rdfwr5oM9Mw3meYMyKWBYWCm2BcU
         13q0v2jZxtcEnGrkKcTLJMywe8211laq+PCtoPIyzX8dT764115RpYhre4AEHx4ABkWE
         M0M1Nl2ZL7hUPIhNPjfp15dz3kxnmGDdj6OzRlV6OZTUOnyMmQdFXUTc8x+wcqPHVWaF
         q27WUu7ERmiazz2FyDonSDj60JZ/n9ZJQZXSb/RBDxgq+PzUWuqBd0IfpVkUF5yxBfC+
         Bd3w==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@icenowy.me header.s=zmail2 header.b=S1EnUpPX;
       arc=pass (i=1 spf=pass spfdomain=icenowy.me dkim=pass dkdomain=icenowy.me dmarc=pass fromdomain=icenowy.me>);
       spf=pass (google.com: domain of uwu@icenowy.me designates 136.143.188.15 as permitted sender) smtp.mailfrom=uwu@icenowy.me;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=icenowy.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1727773236; x=1728378036; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=JCYqvM1Ie6R+1++FqY7zEUvst7hPttyoT5DHUpdlrGw=;
        b=CHGGdu0dfonFYH0EtI7PxvPorqNsuUPTpIVos1vX/suP91hxmq418fL1nQekSmQilA
         r0D3CKWcqgxKYE/WNmp221rsBXs7uRWC7tC5vRl0nH8PpSsLp6/3wKws4v2uYvgNv+qe
         KRlWRwd10IydSh0zXxSa/B8vZmxNJE8mBa+fw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727773236; x=1728378036;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JCYqvM1Ie6R+1++FqY7zEUvst7hPttyoT5DHUpdlrGw=;
        b=liVC3pGNBBYd3+yYd7dvPrIEAh81XqRGQ7nFyz5C6eKt6Wm2tECx8zRC7DNvxQu9Jd
         kDfg+JJN0YZZ7vXL4+v9C8r+oAgxEh8oYhI8Op08ewJ5JgE8O4Yqxmt9qZScfgSBSQzP
         4YPEA0r3x5ubi/cSbk0tKFJP22uqmfVn+oKNPnWkZUQiUC/znEpSY3gtKjdV3hqNd1u2
         zXA9QDcmn5R4x60YdG1nNTIcfkKS9k8RiAjSUgyjnVo5ogzosl9QmTACVXrwnFMIQqR/
         B/YptFm6VF4MyjEgmOf68QXQw7lo5L22PspmGWSDAQbsR+oo+sN6EMvhqTgZgcS3KZYG
         auRQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=3; AJvYcCWje5/BxQp+Ts9lyeGmDwDUt48yQWXCc9OdXt30htMQ9N5lB44Ce8I+O3t5SKH6rtRHLCdHUQ==@lfdr.de
X-Gm-Message-State: AOJu0YwXjmyEX4f4JSj68wSyhPOXO8rp/1WO9wkTG2dhNbKB19lyoaIH
	55V3R4iqFP+il/tHqfnSKXdAQwvh99uim2Z7Q2btaj1GyIB5vJ5V1KHJq/MSl4s=
X-Google-Smtp-Source: AGHT+IFDetPfU9fPpDhdBlC3ZKPefHfnnqFEUCpvMbI3gi6/eaK58ZQos8BItby+beD55DcAuXDUOQ==
X-Received: by 2002:a05:6820:1b88:b0:5e1:cd24:c19c with SMTP id 006d021491bc7-5e772445146mr9860128eaf.0.1727773235708;
        Tue, 01 Oct 2024 02:00:35 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6820:80e:b0:5e7:74dc:7e6d with SMTP id
 006d021491bc7-5e774dc806bls1727465eaf.1.-pod-prod-01-us; Tue, 01 Oct 2024
 02:00:35 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCWS5hOonVPVtjtDJ7q/GDV9ZZmw4GXmvkCQ4jjRJr/+kGD46maCx+QQ/DaYoFI8ctpw3aWduUUYUzhuVQ==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6808:2dc4:b0:3e2:6d80:9cc5 with SMTP id 5614622812f47-3e39395c219mr11334259b6e.8.1727773235132;
        Tue, 01 Oct 2024 02:00:35 -0700 (PDT)
Received: by 2002:a05:6808:90f:b0:3e0:34ec:bb48 with SMTP id 5614622812f47-3e3942d5468msb6e;
        Tue, 1 Oct 2024 01:34:27 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCUPr1Mv/jXn4sGYPrORYtumj9UZxpjEOVQty3qEIItfpYYc6vQApfbyOHqCIXsUAKINfd20VHeXkWk9IA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6a00:21d1:b0:705:a13b:e740 with SMTP id d2e1a72fcca58-71b26057f75mr20715688b3a.19.1727771667020;
        Tue, 01 Oct 2024 01:34:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1727771667; cv=pass;
        d=google.com; s=arc-20240605;
        b=dn3yd70MBX6jyYBmUmyM77U9I99wT+UyjDycAzu0s3C7M8SJogesA4okExCwSk5x/9
         6U2pXHddp1AMvtvptBWHDIv4rdBj2AOvDBKPsBU+MwPMwYdzUpfdumYfla+ZZtYq0ojK
         BFwPTUV0fhNaUJ91iRC3t/F4un6mLB4mBE3iCfdh4DlC/TzANg7i/wJZSvXljcyV+jlD
         R2SBVMczX1Dx8vUHviKYSunULL3mBOz7tu4ep3a14fWrgTbzH4qQ37ihBC+rhnPiuwjA
         4EBF3ydzEhyRhC3Qv/Hsq/Uaxc4UDj6H4caBtfHQ/xkIE1gherI+sXaVxe/fm2U4cwnh
         TlSQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=q9UHoLdIy5rG5Z5pAqci9yWxVboWvNcQRzZ7GwJCt0M=;
        fh=uxlPSNhAvAG6BcmvHbiXYCUXgwYBZzXCT/lAmfp3aDw=;
        b=beLTT/Zgx8g8b2f2BmeDylytPheOnzjAQFvps7iWpLw1mqahFAUKEkr3v2s6wKYt3Q
         Y7Fq4W0IdbNMeYpapxvHKCXPnWA31wT2cTUM6SoKICFvA+YsVUTzQpEheCmvfYtka6Jn
         Tr1aU8SwI7tBonMvi27cQOrwut2HUxnPGltzWCicTPrtCOMSY4AVhW3/wxBF00uqE5Vu
         9PFVQ363Dpol1EpTaUEwXMwf/JOUajksm3vJ42LcKj9UKVvA0+HtWNCQRyrBGBSKQdUJ
         4LlaKiaarrBicRd5vaUIllZsZDOrZUTgrUEZ8EjbefHOb9LxupUD8wGd4RK+m6OLCJf1
         hWxQ==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@icenowy.me header.s=zmail2 header.b=S1EnUpPX;
       arc=pass (i=1 spf=pass spfdomain=icenowy.me dkim=pass dkdomain=icenowy.me dmarc=pass fromdomain=icenowy.me>);
       spf=pass (google.com: domain of uwu@icenowy.me designates 136.143.188.15 as permitted sender) smtp.mailfrom=uwu@icenowy.me;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=icenowy.me
Received: from sender4-op-o15.zoho.com (sender4-op-o15.zoho.com. [136.143.188.15])
        by mx.google.com with ESMTPS id 41be03b00d2f7-7e6db6c88e6si10423310a12.604.2024.10.01.01.34.26
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Oct 2024 01:34:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of uwu@icenowy.me designates 136.143.188.15 as permitted sender) client-ip=136.143.188.15;
ARC-Seal: i=1; a=rsa-sha256; t=1727771662; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=mDxg+ykHGEj+fqRqQL3N83E4T/J+r+/gK7HEl15BcEbCGxyai2GaKI5GJJ2o4sxNNdnJP7Lxa5xN0zK4gw2UAA3lCLlLWAQX3JMWi9qf37nwYHb8d7Zgw8qc3rUmx1BgDjJMmLdwnviTwv6FWU5Z6fjzVd0fZGZVc6i1DkgUKxc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1727771662; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=q9UHoLdIy5rG5Z5pAqci9yWxVboWvNcQRzZ7GwJCt0M=; 
	b=e8BULbvv1i6ElRi0QM82LSZsMX5E/3rFmhwOkPRGv2z8gSSH7R4uSSzKJj2JGUXYKq6GbN3qXPHXv/Ke93DYsWiIk06W3B0Qcgk9n2FnWaIsUM5UX5zCSaS5/imf0oHAZpUdgUJnU8J4vmLF1LGhAFr2meDUPLwu3UUWA1QDyYQ=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=icenowy.me;
	spf=pass  smtp.mailfrom=uwu@icenowy.me;
	dmarc=pass header.from=<uwu@icenowy.me>
Received: by mx.zohomail.com with SMTPS id 17277716607841008.133023732441;
	Tue, 1 Oct 2024 01:34:20 -0700 (PDT)
From: Icenowy Zheng <uwu@icenowy.me>
To: Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org,
	Icenowy Zheng <uwu@icenowy.me>
Subject: [usb-storage] [PATCH] usb: storage: ignore bogus device raised by
 JieLi BR21 USB sound chip
Date: Tue,  1 Oct 2024 16:34:07 +0800
Message-ID: <20241001083407.8336-1-uwu@icenowy.me>
X-Mailer: git-send-email 2.46.2
MIME-Version: 1.0
X-ZohoMailClient: External
X-Original-Sender: uwu@icenowy.me
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@icenowy.me header.s=zmail2 header.b=S1EnUpPX;       arc=pass (i=1
 spf=pass spfdomain=icenowy.me dkim=pass dkdomain=icenowy.me dmarc=pass
 fromdomain=icenowy.me>);       spf=pass (google.com: domain of uwu@icenowy.me
 designates 136.143.188.15 as permitted sender) smtp.mailfrom=uwu@icenowy.me;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=icenowy.me
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

JieLi tends to use SCSI via USB Mass Storage to implement their own
proprietary commands instead of implementing another USB interface.
Enumerating it as a generic mass storage device will lead to a Hardware
Error sense key get reported.

Ignore this bogus device to prevent appearing a unusable sdX device
file.

Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
---
 drivers/usb/storage/unusual_devs.h | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/usb/storage/unusual_devs.h b/drivers/usb/storage/unusual_devs.h
index fd68204374f2c..e5ad23d86833d 100644
--- a/drivers/usb/storage/unusual_devs.h
+++ b/drivers/usb/storage/unusual_devs.h
@@ -2423,6 +2423,17 @@ UNUSUAL_DEV(  0xc251, 0x4003, 0x0100, 0x0100,
 		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
 		US_FL_NOT_LOCKABLE),
 
+/*
+ * Reported by Icenowy Zheng <uwu@icenowy.me>
+ * This is an interface for vendor-specific cryptic commands instead
+ * of real USB storage device.
+ */
+UNUSUAL_DEV(  0xe5b7, 0x0811, 0x0100, 0x0100,
+		"ZhuHai JieLi Technology",
+		"JieLi BR21",
+		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
+		US_FL_IGNORE_DEVICE),
+
 /* Reported by Andrew Simmons <andrew.simmons@gmail.com> */
 UNUSUAL_DEV(  0xed06, 0x4500, 0x0001, 0x0001,
 		"DataStor",
-- 
2.46.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20241001083407.8336-1-uwu%40icenowy.me.
