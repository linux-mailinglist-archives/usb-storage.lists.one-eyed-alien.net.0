Return-Path: <usb-storage+bncBCD353VB3ABBBKNEQ67AMGQEVFJ22AI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ot1-x346.google.com (mail-ot1-x346.google.com [IPv6:2607:f8b0:4864:20::346])
	by mail.lfdr.de (Postfix) with ESMTPS id CB3D6A49CDD
	for <lists+usb-storage@lfdr.de>; Fri, 28 Feb 2025 16:11:38 +0100 (CET)
Received: by mail-ot1-x346.google.com with SMTP id 46e09a7af769-7273b4db914sf2081892a34.0
        for <lists+usb-storage@lfdr.de>; Fri, 28 Feb 2025 07:11:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1740755497; cv=pass;
        d=google.com; s=arc-20240605;
        b=TMcbU/0umxkf7M4DOJgAipu7I7hAdAsEiUfsZuWO353QgOIQJNFS0axB5TBUdZgKdw
         gbKKHthmB1cSVqhOx+3714wuxPO5EBhQrSigWkefAMnheFoeMkgtqcyx76xJRCEClQ+K
         2WaNDHupI6ZBYLBIEzPuCo4rrCtYflgZoHV9F2+ZNejtFlsUFyAnQ0OOdn7xrVm08flA
         0eNGWCDvPBymo5oKpKd7Uh0ei/sG9bSN7SV8L/796Bvye5LZAzxFco7G/gFWF+QBf2vt
         OVXhhM0MZmh2HWdERs3JuZVdKS3ylrrnvE81sTXDS2rhUoebGDTsOTR6nBulahxlaPJD
         0YMQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:in-reply-to
         :references:message-id:content-transfer-encoding:mime-version
         :subject:date:from:dkim-signature;
        bh=eDQYdbXZd8iz4k9/568YtBZpB/osLjcswtSIaTHt/3U=;
        fh=Au/rc7cHkB6mLh8QO+m+VyeONckB4lIPCRASG844VDQ=;
        b=DwDx1NaYzm6mqUszex26yKo+nsxd2f5OokItSLp8d0dGmxwuvWp7FqUyeAC3+9tNch
         O+1G0vjTdgjkyVa/lhUDKZRSAk0nkeM2aVxwRNdsMjsR1go9eLfB4sRK8RCInN0RM6SF
         fz0yls47TyeT8UQ8mthO/9v8d4X2FBXH8p6ne/QZru6v+dAewyg0mhFOkTybDkJqU4bt
         V0YxS3nknP6gv0m8UeC4UZv0t2SIo1aRO3P7ejqnWmjSur7Rh+3P2zzHAGWLC4hSnxZV
         eqfhw0il5Di7Wa0FwCv8TrNQL0MHuXQ4lzipV0WknOuJ0P8Lgpnf0dK9RlCq0UFffYaz
         Rlnw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=abgwjrZf;
       spf=pass (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=devnull+j.ne.posteo.net@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1740755497; x=1741360297; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:reply-to:cc:to:in-reply-to:references:message-id
         :content-transfer-encoding:mime-version:subject:date:from:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eDQYdbXZd8iz4k9/568YtBZpB/osLjcswtSIaTHt/3U=;
        b=RTs5G32iqyVHy0mDlWZWAomgEvOC0XVxLc+rLEfDn2CkrY2BBUJYY2A8K6x8s4B3nY
         fvMXVfnsPjflZ/qUPVZoIymzJqwcKhz4tnwnalA6ZrrpgFAEo9s0b1JNZLafMjP1+Fgs
         dRxBGJYT8n3ieKv3t9f8P5TnjsB79oTk+NT3Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740755497; x=1741360297;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:reply-to:cc:to
         :in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-beenthere:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=eDQYdbXZd8iz4k9/568YtBZpB/osLjcswtSIaTHt/3U=;
        b=XXrmXIIhYZS8+eXFCkMIMeabv4nAG+RfXYRYmM7GiTu4JOMBRfXqD2mDE31mvL+yeg
         XrKjrq+OhYPDcrH8Td7sYKGhfdixMUHK9bjKwEmMy4kqDVRzFAcE9TPaTa2xt45+8/wu
         6HrE+FSlpag7dvhnUDuohHXDXZbHf3Dd3iMQHB/U3W0jiz5BiB0mBwmAmA5f30deOaml
         CF8YsFySsL30kSmwpOrXvJ2oz1HmPv7bKSRWnuUqs03LFeoj6Oxol7kBqgtQ8DSspNaN
         MUsGUoSQ5lFmxQFID3cFo/i4906Ltz6hfaY40I+hbafv3jQONZrzqUxc+M+Z1VbS2uZm
         hTMA==
X-Forwarded-Encrypted: i=2; AJvYcCWKzWSpws5syjSZFBT225v1R9STCpBSKVPrDuw7/Umsnjmm9i/dbhr/jyFKHEIl0l0MpDFuxA==@lfdr.de
X-Gm-Message-State: AOJu0YyJoIdfemcnGtHz+ZXbc150K0hCKIuxshXIQ5HrA9GYF6eWWGb+
	o0LkEPGr+cWYLpqUHChtVTZtKqQDMvIQiepV3rAMmhSMSIbNN4oYWj2Ds9XQFwc=
X-Google-Smtp-Source: AGHT+IGeX8dSfqcMeidp0Or5N97G0hEDADC518Ozq/c9R6NrOa71+9KTJRgm3O3rCUGl9FENbNhtWg==
X-Received: by 2002:a05:6870:8999:b0:29e:4346:7fb9 with SMTP id 586e51a60fabf-2c17845eca2mr2150370fac.22.1740755497167;
        Fri, 28 Feb 2025 07:11:37 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=Adn5yVHFHFJUcXUz8WAg9lvTeMhTy2de3BpS+t6pn1Uj4tAC8g==
Received: by 2002:a05:6870:ff4c:b0:29f:bc7e:8f4e with SMTP id
 586e51a60fabf-2c15473febfls1528531fac.1.-pod-prod-05-us; Fri, 28 Feb 2025
 07:11:36 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUri+cZZc/0H3arsUdteQ/kLk9NnI98BLw9UT0TepCBFJ2QoC5/gKsAhl15+2Q4ipA92+pXTi/yLOp8ig==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6870:420c:b0:29e:65ed:5c70 with SMTP id 586e51a60fabf-2c1785f0cc6mr2366566fac.30.1740755496469;
        Fri, 28 Feb 2025 07:11:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1740755496; cv=none;
        d=google.com; s=arc-20240605;
        b=Pm5wWqgsum1Jlj7qpBKQ8BaIcVqEqTSttyWH5RXH3CBaUyyvKXJnmFeXbOV0sooQAu
         9NxizIf/N2KKgpf6jiWduk+S11YrzyvBeJqG1QUPGzycybmPR67ytCMEp/tQtoQPrOzu
         z3olxzEA4n2cHK/8BD2yc+g2NrOsaC7bddP6FlqE1GC8izc9nFwBNR/xfkDtowX42V+n
         Ish0NIT2GttQTXnDTwuFUqALRA4zNVwtPsXP43Wk/YypOIqK4mcmafUkMsnQggFOB0UP
         iulKn+qe+m0RS5tdWRe3OKyYf5NWFSgbF1SoE+s1nJRfYfNauEhbExFc25qQxwvn9uRR
         eCow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=reply-to:cc:to:in-reply-to:references:message-id
         :content-transfer-encoding:mime-version:subject:date:from
         :dkim-signature;
        bh=U+OqJLfKOR3sSqM5SzI5AkugM+HbN4ERz5WOWEK7xt0=;
        fh=t85edx+sQ1Skfp7ZeTpNIH3lUx4BfFwBq5zypEnFHfI=;
        b=kZBBPGZQmr6yjc1KOJAN2B4rcJpRCxC+nRG1DwkgoS7jQixkmI4DnULWRHPyncUas7
         vlEfSdK+PS2oO2FdLgkBcWhU3EMEMl0TcOhww1k9XS/Nf9azcqgB2qbxmD3KmWOMWeE8
         YVDET3hzoeVEiyg4Pq69sv+7d5UwFBHqsMpgubfV2dDcEsLTwKDH3b7hd+m8fYmDWzP0
         QhU4AsK1UB7LhKqAqeFp9ObOmsA3XedckQvZhyUbkyH3ir3/pTaLKvs7cPXjBzVmiEXo
         8GJM9E+nIbW8O+mM+wEGZQ51+NYc+09OB8de9Iy+p9QzNa8NKEYUdTVQZTLZ6KDXVkpU
         MItw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=abgwjrZf;
       spf=pass (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=devnull+j.ne.posteo.net@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by mx.google.com with ESMTPS id 8926c6da1cb9f-4f061e8bf75si3111776173.79.2025.02.28.07.11.36
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Feb 2025 07:11:36 -0800 (PST)
Received-SPF: pass (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 8ABF75C6684;
	Fri, 28 Feb 2025 15:09:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F020EC4CEEA;
	Fri, 28 Feb 2025 15:11:34 +0000 (UTC)
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E8DD1C19776;
	Fri, 28 Feb 2025 15:11:34 +0000 (UTC)
From: =?UTF-8?Q?=27Jonathan_Neusch=C3=A4fer_via_B4_Relay=27_via_USB_Mass_Storag?=
	=?UTF-8?Q?e_on_Linux?= <usb-storage@lists.one-eyed-alien.net>
Date: Fri, 28 Feb 2025 16:11:20 +0100
Subject: [usb-storage] [PATCH v3 5/9] usb: storage: initializers: Use const
 for constant array
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Message-Id: <20250228-misc-const-v3-5-09b417ded9c4@posteo.net>
References: <20250228-misc-const-v3-0-09b417ded9c4@posteo.net>
In-Reply-To: <20250228-misc-const-v3-0-09b417ded9c4@posteo.net>
To: Alan Stern <stern@rowland.harvard.edu>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Jonathan_Neusch=C3=A4fer?= <j.ne@posteo.net>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1740755487; l=1080;
 i=j.ne@posteo.net; s=20240329; h=from:subject:message-id;
 bh=r2Pmb5RZo+2KbXzcIr/5x62LkugYhFe+V92n7WTCzmg=;
 b=nJfZo9IKgEu9bf/bIEQOn/ZGJ2NG9zqb3+2qsk4n8SeRA+UkXrUMnRD2il9igI58pidcTScq5
 Yp+aEXlaGBbAWalpto7G1D0pcfl/Lpit38ADapWYxb/1ZCqgjbCezTW
X-Developer-Key: i=j.ne@posteo.net; a=ed25519;
 pk=NIe0bK42wNaX/C4bi6ezm7NJK0IQE+8MKBm7igFMIS4=
X-Endpoint-Received: by B4 Relay for j.ne@posteo.net/20240329 with
 auth_id=156
X-Original-From: =?utf-8?q?Jonathan_Neusch=C3=A4fer?= <j.ne@posteo.net>
Reply-To: j.ne@posteo.net
X-Original-Sender: devnull@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=abgwjrZf;       spf=pass
 (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates
 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=devnull+j.ne.posteo.net@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
X-Original-From: =?utf-8?q?Jonathan_Neusch=C3=A4fer_via_B4_Relay?= <devnull+j.ne.posteo.net@kernel.org>
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

From: Jonathan Neusch=C3=A4fer <j.ne@posteo.net>

init_string is only read, not modified.

Declaring data as const makes it easier to see what's going on, and can
prevent unintended writes through placement in a read-only section.

Signed-off-by: Jonathan Neusch=C3=A4fer <j.ne@posteo.net>
---

V3:
- elaborate why const is a good idea

V2:
- new patch
---
 drivers/usb/storage/initializers.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/storage/initializers.c b/drivers/usb/storage/initi=
alizers.c
index f8f9ce8dc71029aff5ceaf4d62f596a30bbceca2..b243bd5521a66deb3ca3603b52c=
cf603e191a4de 100644
--- a/drivers/usb/storage/initializers.c
+++ b/drivers/usb/storage/initializers.c
@@ -54,7 +54,7 @@ int usb_stor_ucr61s2b_init(struct us_data *us)
 	struct bulk_cs_wrap *bcs =3D (struct bulk_cs_wrap*) us->iobuf;
 	int res;
 	unsigned int partial;
-	static char init_string[] =3D "\xec\x0a\x06\x00$PCCHIPS";
+	static const char init_string[] =3D "\xec\x0a\x06\x00$PCCHIPS";
=20
 	usb_stor_dbg(us, "Sending UCR-61S2B initialization packet...\n");
=20

--=20
2.48.0.rc1.219.gb6b6757d772


--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-al=
ien.net/d/msgid/usb-storage/20250228-misc-const-v3-5-09b417ded9c4%40posteo.=
net.
