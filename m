Return-Path: <usb-storage+bncBCD353VB3ABBBKFEQ67AMGQEG42Q52Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x148.google.com (mail-il1-x148.google.com [IPv6:2607:f8b0:4864:20::148])
	by mail.lfdr.de (Postfix) with ESMTPS id 2312CA49CDA
	for <lists+usb-storage@lfdr.de>; Fri, 28 Feb 2025 16:11:38 +0100 (CET)
Received: by mail-il1-x148.google.com with SMTP id e9e14a558f8ab-3d18fbafa4dsf22494215ab.1
        for <lists+usb-storage@lfdr.de>; Fri, 28 Feb 2025 07:11:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1740755497; cv=pass;
        d=google.com; s=arc-20240605;
        b=h1tkoaUBg0Qk7u5UpcxujhiJPwjnPlG1kqn/cfrUfAlCbJYwjiZVJcEL31qBWkSerT
         NXQpeFur8+FKg5KLL2x+HrNMpWidAx1vwivNysJTq+gWw2KgLAqpGT8vr9gtDCpKkj6Y
         f1l9fCCn2A7qQ/eyH7U8SERGSQ3wCPSkx8CKwEwsyVQwcNiMmuHPKFUEjFnC2xXHbz/I
         T3oZc7XHxdu8hhTJHSqIJ9kOWu7Hfu69dzTo510NyeYIv/P0v2vok09ldz6Fr6gybDvc
         Rc5fVFKIQP8e0aWeDxAO006kbDkXrpK+5LCvnQ6E/VVQFvMXiE4wu3bOpSqgljqLjP5T
         90BA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:in-reply-to
         :references:message-id:content-transfer-encoding:mime-version
         :subject:date:from:dkim-signature;
        bh=mHW4JTsoBz6OHT0a/6WoN00RpBq9OZVacNEkM8ghnZo=;
        fh=sgiZdJ1w8/evGHtaLkecDCR5Z26g6/VhvtIPxMRferY=;
        b=TWlZvX8Ot8h7NOnFRrn1yh/ZhN6c2aMHjpLdQjrxNcP2J2IwjwyfFIvJgigNsLQEOF
         zbZWcJeON5Ya77DofI+Z4f/JH/L5uq/WosY4NxyYNU/wFVfUcE1xUpo4b6z/hCiunDx8
         tVOMy1p2A2XLNn7l8HUPKsogRIk4dv7Gw3Ak7LhafoRn/MlWqH39NQtA4nDJ9+xp6xpt
         i766omsMO27DEiUzJyOpJiTLGcSaR5k0bVPYi067iB8UyTEcN/aQhJLKTSmoHZ0A/RD3
         2e+c+XTsJ2dxJPbuivxrYwjKb/jSoxoZZaLnJ1EzVg/AdNqdbcX0f2DoUHUU8UJHo9BK
         7QDg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Y11VSiuo;
       spf=pass (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=devnull+j.ne.posteo.net@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1740755497; x=1741360297; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:reply-to:cc:to:in-reply-to:references:message-id
         :content-transfer-encoding:mime-version:subject:date:from:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mHW4JTsoBz6OHT0a/6WoN00RpBq9OZVacNEkM8ghnZo=;
        b=aX0bl8bybisJysWObBYmmuEwCkk35/nZYRTwK+JxZKG0x3jw/bOUhwf1ZqPEbs/zZC
         eieQjUKLsfds3021hJd9AzUb8m801PTYvBM30T/ly7Ta6Xb8Job9ELSKiQZCnm0+wyVu
         /FjEpRtjJMH8L+/sMocABhu0BuO8gG21sXzQM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740755497; x=1741360297;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:reply-to:cc:to
         :in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-beenthere:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mHW4JTsoBz6OHT0a/6WoN00RpBq9OZVacNEkM8ghnZo=;
        b=SF3xxXd5KeP4ayspx5eJ/e00xUp+8A4JGvcwFoWKyjsxrKKphbkMugFiTiwxBPJ4iw
         G8GKKUkbVtJ2NadyulSYVqNzjAlR6TJ7zt8fiRl8HdVd+NghqHwUE7ybW63vKL2gs1+W
         tMT2i0hoP2nvBCkmvANJWIY6nRSxJTH2cooUVyXTZHHvwvt+UOJe2KQI86Np7ZIwYdu1
         0VGQYtoxgZUTmVhOr2zA3FkZifkxQbvJTUE3rV4y6XgXHm2g4byXRRHvKZXNgInTUmOk
         /QyDU9t3Rm5WsMGNhzEO5c0HQfJjKMEdJiRPg1VTcBn/RMuG/XonJhuWjeIU+2f0x4s8
         akOA==
X-Forwarded-Encrypted: i=2; AJvYcCXLhW305z0QVFUnSQLleX8FmeRP+cFWHNiJH4BMFcPK+cC76bG/BiYZrjsBPppOefIecsEnHA==@lfdr.de
X-Gm-Message-State: AOJu0Ywonvm+CpV8/qTFSzSCAyCPm3xL4rGgf6oWHs3KT25Sje/gx/aK
	RObvAxun8JVssknf/UG6hBKmNmmB3xVo8EZp5POLNuPALte3IMmtyuLE1JgpMNM=
X-Google-Smtp-Source: AGHT+IEg0L9vj28Nn/6/lNNz7T6SjdggrLZMci0yl6SqQz67QqgAaJ3FVivOxf5sfeN0ZCArMUrXPw==
X-Received: by 2002:a05:6e02:1a6b:b0:3cf:c7d3:e4b with SMTP id e9e14a558f8ab-3d3e6f64ce6mr42745075ab.21.1740755496727;
        Fri, 28 Feb 2025 07:11:36 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=Adn5yVGIa5z21eO6QUFbDdEW8yOOMXJf+buUHy7Rbn/iCdSXJg==
Received: by 2002:a05:6e02:2689:b0:3d0:45cd:cd1a with SMTP id
 e9e14a558f8ab-3d3dd047975ls13402805ab.2.-pod-prod-06-us; Fri, 28 Feb 2025
 07:11:35 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVGRAzp7xH5oqYd0cptMsX//76ts77Qb/DxWpMMlxkD+1p53qxZG0nSGM79tVfHavaBCU6ia0vaaipOjw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6602:3d2:b0:855:c476:8b97 with SMTP id ca18e2360f4ac-85881f33220mr362321039f.8.1740755495472;
        Fri, 28 Feb 2025 07:11:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1740755495; cv=none;
        d=google.com; s=arc-20240605;
        b=MPxR8PsPxmd9iMCij7ynwZ7WOWd/Y8pDeLEuvN6rBnlKCSYUEFyALJlKmFzFyaSPxf
         GbPAEua+wu0XGG/BD5Sn5BImTeSrjvcPgWF9cL550VQJ8V+QigghSU9JJqhZfbNGDNZx
         m1PHqAkGerlCYYecQkw9bX0oyvXoi7+QfYN5TQVsWm63IpypF8v727aL+pTK2gxNDqqE
         q3i2zBsiyaoXEy0yGJIZ2hJwmmekXusxM9yta6dFGMmGm3K34E26nMy0yVHlA7xt/Jp5
         erfg3koiTdkuL/lObMBKumEK1+P3FhAdld1D6RcMxBFPrdk+4iWXH5MpLBZcoLdQ9wEB
         JP9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=reply-to:cc:to:in-reply-to:references:message-id
         :content-transfer-encoding:mime-version:subject:date:from
         :dkim-signature;
        bh=EoiHLgCYKDRezDBOwrb1VP2Eiw+oFlvsiTQ+VL0XIfY=;
        fh=t85edx+sQ1Skfp7ZeTpNIH3lUx4BfFwBq5zypEnFHfI=;
        b=G+QZziQkHi3ECyxMaZVi2L3kjdVO7O5LMU7qfmjHCfGaEYVvWcY1fV2F79xwxCyiWT
         jPKCdekM0jf2VWBCiCAbcnYtHB9jsTQuxuSy6Jxj6EkLgY8VT+U0W+Ndntvzwy16IDjB
         SSVLy2yv/Rfs+T1PE7m1bTsbUGtaCusFhO7v7xjT9BaRu5rZodnKPDQezegqjb3VM7m7
         w8y97PAkIgBYrUQtcW9QoXYjJDIPfO668x6nzAchx3kF9VVXRcjnINUEDL4oK3PqO/Dn
         gvoTQtHNronOlcpZXNU1b3VizgmbPoM0pwp0b2+0hy5Nr+HHnVXvVtFbj6QNHKCJU3Og
         rXkA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Y11VSiuo;
       spf=pass (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=devnull+j.ne.posteo.net@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by mx.google.com with ESMTPS id ca18e2360f4ac-858750f91cdsi297454039f.23.2025.02.28.07.11.35
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Feb 2025 07:11:35 -0800 (PST)
Received-SPF: pass (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 4D8065C64C2;
	Fri, 28 Feb 2025 15:09:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D002BC4CEE2;
	Fri, 28 Feb 2025 15:11:34 +0000 (UTC)
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2ED7C282D0;
	Fri, 28 Feb 2025 15:11:34 +0000 (UTC)
From: =?UTF-8?Q?=27Jonathan_Neusch=C3=A4fer_via_B4_Relay=27_via_USB_Mass_Storag?=
	=?UTF-8?Q?e_on_Linux?= <usb-storage@lists.one-eyed-alien.net>
Date: Fri, 28 Feb 2025 16:11:17 +0100
Subject: [usb-storage] [PATCH v3 2/9] usb: storage: transport: Use const for
 constant array
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Message-Id: <20250228-misc-const-v3-2-09b417ded9c4@posteo.net>
References: <20250228-misc-const-v3-0-09b417ded9c4@posteo.net>
In-Reply-To: <20250228-misc-const-v3-0-09b417ded9c4@posteo.net>
To: Alan Stern <stern@rowland.harvard.edu>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Jonathan_Neusch=C3=A4fer?= <j.ne@posteo.net>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1740755487; l=1083;
 i=j.ne@posteo.net; s=20240329; h=from:subject:message-id;
 bh=5QhhUgzLhqlm9TuqxkqZvu43pDK5vNdB37hr9QmYLe0=;
 b=Do+TFHXIzpuTMoqzCo0Tlwt1aL6JJT8DwkXkg/H3OvZYEdkDmwi2cv0YFHb/HTKnG0germ+oH
 3FcQCQ4aPi4AYzYLjafm50iYjfGO2uOQK+QciXxn5RZ3CgOFtFWEsdV
X-Developer-Key: i=j.ne@posteo.net; a=ed25519;
 pk=NIe0bK42wNaX/C4bi6ezm7NJK0IQE+8MKBm7igFMIS4=
X-Endpoint-Received: by B4 Relay for j.ne@posteo.net/20240329 with
 auth_id=156
X-Original-From: =?utf-8?q?Jonathan_Neusch=C3=A4fer?= <j.ne@posteo.net>
Reply-To: j.ne@posteo.net
X-Original-Sender: devnull@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Y11VSiuo;       spf=pass
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

This array is only read, not modified.

Declaring data as const makes it easier to see what's going on, and can
prevent unintended writes through placement in a read-only section.

Signed-off-by: Jonathan Neusch=C3=A4fer <j.ne@posteo.net>
---

V3:
- elaborate why const is a good idea

V2:
- new patch
---
 drivers/usb/storage/transport.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/storage/transport.c b/drivers/usb/storage/transpor=
t.c
index e6bc8ecaecbb202714be69c6db6b0a4824de4855..1aa1bd26c81f2f9fbd508fdfed4=
465e6482bdef0 100644
--- a/drivers/usb/storage/transport.c
+++ b/drivers/usb/storage/transport.c
@@ -528,7 +528,7 @@ static void last_sector_hacks(struct us_data *us, struc=
t scsi_cmnd *srb)
 	u32 sector;
=20
 	/* To Report "Medium Error: Record Not Found */
-	static unsigned char record_not_found[18] =3D {
+	static const unsigned char record_not_found[18] =3D {
 		[0]	=3D 0x70,			/* current error */
 		[2]	=3D MEDIUM_ERROR,		/* =3D 0x03 */
 		[7]	=3D 0x0a,			/* additional length */

--=20
2.48.0.rc1.219.gb6b6757d772


--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-al=
ien.net/d/msgid/usb-storage/20250228-misc-const-v3-2-09b417ded9c4%40posteo.=
net.
