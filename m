Return-Path: <usb-storage+bncBCD353VB3ABBBKFEQ67AMGQEG42Q52Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x145.google.com (mail-il1-x145.google.com [IPv6:2607:f8b0:4864:20::145])
	by mail.lfdr.de (Postfix) with ESMTPS id F01DCA49CD7
	for <lists+usb-storage@lfdr.de>; Fri, 28 Feb 2025 16:11:37 +0100 (CET)
Received: by mail-il1-x145.google.com with SMTP id e9e14a558f8ab-3ce8cdf1898sf21326695ab.1
        for <lists+usb-storage@lfdr.de>; Fri, 28 Feb 2025 07:11:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1740755496; cv=pass;
        d=google.com; s=arc-20240605;
        b=IbKLglPnazNdANyLtPNmfUl3IG8ziezu9T51WzDif4MC0C+NvSHPVou3a87N6Ks5Uq
         jOpgnTIqTxUxIWgHP7HCko6xu++4OMuV6Pcg4kCpqqU1HazslTvFWgq74ADFvDxSeOG6
         l2hDBANFeTDTcEOH9/MgijXr5lUCV/q/9qD4NAc3ja1onrwR69vyAhtS3/CJTgDAyGMV
         anqhXuqYvqDGbwedqgKJNiiE1L011YlxBhFxktzSHl8OJwdf1zpDIcVjPV3hEySwoq9J
         0d0KruKLuNaYBMcHCRigryOcEhtaKqAUzgB5ZwmBlgSPS8rCMcxFxEyXlUBaLRQB60m5
         3Bew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:in-reply-to
         :references:message-id:content-transfer-encoding:mime-version
         :subject:date:from:dkim-signature;
        bh=U1lCKNc7qu7IpNiMhlzyu7CaUo4GJks3OuF6oyCnf8w=;
        fh=cHtkgHSvIWZ6cX0lPLqazTXKXtObeV1bNzW1l5AYqNI=;
        b=fuwrivUPcGF9N6WpyiOAroOKW6Nob/5hfJiLwFgyK/VgK4M52fFTug6Aioy5iyoJLE
         cACPKVxB8YY7M4vzEiv2l4qi0OufDyEftmIsNUleHeQuka9t2/FToWT3Yxk8B53o0v1o
         GtG/lxAFK6h6S+WaoEbyOtzlqbhPBxyfhBKsxHHZli2zTQc3+RIxduz68qX7scfJ49Tr
         3kg+AAaSlhoCyhP30eaBE6QLoCxI0qHG2ul0VZ9MLBp9tdtqVKZwQwn1CEXxz1wGEGXJ
         18sWedYnjC0qGOoQjZCLFlqv7KNf1vaab9TKeaPskK2Jy1/Y/Kzg7PQbLbh8/KrZG2lE
         eI4w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=CkkhCryX;
       spf=pass (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=devnull+j.ne.posteo.net@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1740755496; x=1741360296; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:reply-to:cc:to:in-reply-to:references:message-id
         :content-transfer-encoding:mime-version:subject:date:from:from:to:cc
         :subject:date:message-id:reply-to;
        bh=U1lCKNc7qu7IpNiMhlzyu7CaUo4GJks3OuF6oyCnf8w=;
        b=d06Wi4P2AtlW/0+GrmpN7as5UZe3qdzHBmKNR/fI1Qx/ya81jQlscONU7kOcpvmIbw
         D0/38rdgz4ePGBqxGGyRH3WTa2emVDlaIuNMTYgmm2KU6NNhZXyicYYtmdkvKAJEsrTe
         Crh6lm5fTVbYD5Lpowjs2D9Op+NRpR1lXHmF8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740755496; x=1741360296;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:reply-to:cc:to
         :in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-beenthere:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=U1lCKNc7qu7IpNiMhlzyu7CaUo4GJks3OuF6oyCnf8w=;
        b=jOXLYMOog7obgQsa8wyhIobW5Q/6fSwOagGYeydJsc+0eRpZXjYG4l92fZHCFrWT02
         arL8uroHgHZyuyByJ9kcUD2xMx1WazRRg1QmGrmgtBpMp9JsmWbZPZ0lNKJ538X+1KYl
         F7nd6DxeQ180+CFEYy9OeSszoUTbWVblIQbMekraYmuiTK4lSmFt4qdBaG/K+ktazAhR
         R8AR7oi6BJ/BjUkwzwjQyhq7cpOga49qrWuu62oSJqG766nAcvNw9jiIAQ0Lrr/CRhQD
         GLOjdu+8mAX7mAKtjjBQgA2yIWOmgq0jptf1i6jvLSRucWIB7dpezu+q0laVpi8A5ziF
         A3Qw==
X-Forwarded-Encrypted: i=2; AJvYcCVVJEeB2KlyEocuVthnrFOhman+YPjscY540m9TTwXsW4P9eJjPHNjd28uHMEEZxxbdOxVM5w==@lfdr.de
X-Gm-Message-State: AOJu0YyNb2HZARbWwhFoBJFLQqKYudj/xEEIfrTfZ4oC/3DrT0PT3gH0
	udvNUQWxp5gmDOtKklBPSqJat5Y6MwoVmhSwV29rxduo8gvcTZJgYXbnu5C9Fk0=
X-Google-Smtp-Source: AGHT+IHepL4fTqb8AtlG7Dy/2Tz5I4y13Nu3NvKzSSV0+R89O4EnXZxHg88QR26hHs/jW9gtAAdM2A==
X-Received: by 2002:a05:6e02:12ce:b0:3ce:4b12:fa17 with SMTP id e9e14a558f8ab-3d3e6f54255mr34277255ab.19.1740755496616;
        Fri, 28 Feb 2025 07:11:36 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=Adn5yVHueFQqIGBOjeCFAtuMX6QbGo1Da+WDcEOdTNjpYHpJdQ==
Received: by 2002:a92:d105:0:b0:3d0:2135:ccdf with SMTP id e9e14a558f8ab-3d3dd268174ls7651615ab.1.-pod-prod-03-us;
 Fri, 28 Feb 2025 07:11:35 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWk/qe8ot238hXJ75jisB2K+LIfXBIOFKghrGLGsEQ499y4GDZYSlmuKoUEwu6W4S42697sfqzHp/0KVw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6e02:1a27:b0:3d2:6f1e:8a4b with SMTP id e9e14a558f8ab-3d3e6f29043mr33721075ab.16.1740755495501;
        Fri, 28 Feb 2025 07:11:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1740755495; cv=none;
        d=google.com; s=arc-20240605;
        b=iwCdBgXnmEvTLW4khlSemFYPLAjDLUPQ1JwoILJBUGPTXa0jh3u2aLuc0R3kiqKo7G
         lr/w+D4PSvUPnBK9Da7d9UwPSyN+HKbstHt4l279tp6Bp3Jjabv/nhYex7X5vfw+Nbhj
         n3LkzuRIOfilug5pvP6fh8gkisn4NJJ9l46FRi2b613LjUaw5p2FA3ocVoBsxG1BebpE
         /+KcqG8/P9VhKgH6aJ6KPIoOvjQaXt8SpHpLmK3SN2Nz8ey4TvyCywue+NjBq8a1Z3ZA
         /4uQ1ugLkZZTvVM3zBCdfTTVUbrd39hdvZ/zh/p0z/3D3GoKo2T3PboH+mnBcyqdpex9
         3r8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=reply-to:cc:to:in-reply-to:references:message-id
         :content-transfer-encoding:mime-version:subject:date:from
         :dkim-signature;
        bh=iQer+RkcedQIYAVXm0rqUFerM3+93L/u8jzJw7aHb4Y=;
        fh=t85edx+sQ1Skfp7ZeTpNIH3lUx4BfFwBq5zypEnFHfI=;
        b=Xh0iR5ARuCX+gjMXkWL824ABc2xSWf4My2BQol9Gw3blLXe5TXwB4S5OqCgXozV3yu
         Zj60Wvlk7QeAotNb+FflBnWdwOolJvs16ZBa5kRFdzVVSfjwBjks402LJNVbVRTMBbg9
         J/qhXni6E3zl0yHEnFpJFv79P4DQEadCGqTrlAkT4x+Mlbk0A5EnvNZBLkLhsu87UB5e
         neF9hWvnEBSgGdWHWhYkXtvIL9oA1x2uyHt1c9PfrimZPGViBzE6upfHsBYlsrwf5N+v
         LHWXLKRjGxABW/YHS3xbwHQRjFK+HZxcr38cn0Ax1gCMAOVSQ+WBkSpVkyryPEos9LFx
         FUhQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=CkkhCryX;
       spf=pass (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=devnull+j.ne.posteo.net@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by mx.google.com with ESMTPS id e9e14a558f8ab-3d3deee7750si31657635ab.114.2025.02.28.07.11.35
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Feb 2025 07:11:35 -0800 (PST)
Received-SPF: pass (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 59BF25C655B;
	Fri, 28 Feb 2025 15:09:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB57BC4CEE8;
	Fri, 28 Feb 2025 15:11:34 +0000 (UTC)
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFC35C282C1;
	Fri, 28 Feb 2025 15:11:34 +0000 (UTC)
From: =?UTF-8?Q?=27Jonathan_Neusch=C3=A4fer_via_B4_Relay=27_via_USB_Mass_Storag?=
	=?UTF-8?Q?e_on_Linux?= <usb-storage@lists.one-eyed-alien.net>
Date: Fri, 28 Feb 2025 16:11:18 +0100
Subject: [usb-storage] [PATCH v3 3/9] usb: storage: alauda: Use const for card
 ID array
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Message-Id: <20250228-misc-const-v3-3-09b417ded9c4@posteo.net>
References: <20250228-misc-const-v3-0-09b417ded9c4@posteo.net>
In-Reply-To: <20250228-misc-const-v3-0-09b417ded9c4@posteo.net>
To: Alan Stern <stern@rowland.harvard.edu>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Jonathan_Neusch=C3=A4fer?= <j.ne@posteo.net>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1740755487; l=1923;
 i=j.ne@posteo.net; s=20240329; h=from:subject:message-id;
 bh=AZumiHFV94k9HcBLZR6/HqBt2YaBXyvzIkuQ2zvtWu4=;
 b=7qv1Cd/INWh/lZF4QpH0wu5HRq6qdQDZ65XW11dcqRHlPkoDgZDiwVk4a4xitAUAuiBPD5d81
 W4RebuHnTelCFEKEumtfyEZXcIfLfczTk/A2gxSoMLMYfDFUA+m+G+E
X-Developer-Key: i=j.ne@posteo.net; a=ed25519;
 pk=NIe0bK42wNaX/C4bi6ezm7NJK0IQE+8MKBm7igFMIS4=
X-Endpoint-Received: by B4 Relay for j.ne@posteo.net/20240329 with
 auth_id=156
X-Original-From: =?utf-8?q?Jonathan_Neusch=C3=A4fer?= <j.ne@posteo.net>
Reply-To: j.ne@posteo.net
X-Original-Sender: devnull@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=CkkhCryX;       spf=pass
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

The alauda_card_ids array is only read, and not modified.

Declaring data as const makes it easier to see what's going on, and can
prevent unintended writes through placement in a read-only section.

Signed-off-by: Jonathan Neusch=C3=A4fer <j.ne@posteo.net>
---

V3:
- elaborate why const is a good idea

V2:
- new patch
---
 drivers/usb/storage/alauda.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/usb/storage/alauda.c b/drivers/usb/storage/alauda.c
index 6263c4e61678e890e0192c5c9dad9b97dbaf0e66..e01f3a42bde4200da245c17abd5=
299c062868204 100644
--- a/drivers/usb/storage/alauda.c
+++ b/drivers/usb/storage/alauda.c
@@ -174,7 +174,7 @@ struct alauda_card_info {
 	unsigned char zoneshift;	/* 1<<zs blocks per zone */
 };
=20
-static struct alauda_card_info alauda_card_ids[] =3D {
+static const struct alauda_card_info alauda_card_ids[] =3D {
 	/* NAND flash */
 	{ 0x6e, 20, 8, 4, 8},	/* 1 MB */
 	{ 0xe8, 20, 8, 4, 8},	/* 1 MB */
@@ -200,7 +200,7 @@ static struct alauda_card_info alauda_card_ids[] =3D {
 	{ 0,}
 };
=20
-static struct alauda_card_info *alauda_card_find_id(unsigned char id)
+static const struct alauda_card_info *alauda_card_find_id(unsigned char id=
)
 {
 	int i;
=20
@@ -383,7 +383,7 @@ static int alauda_init_media(struct us_data *us)
 {
 	unsigned char *data =3D us->iobuf;
 	int ready =3D 0;
-	struct alauda_card_info *media_info;
+	const struct alauda_card_info *media_info;
 	unsigned int num_zones;
=20
 	while (ready =3D=3D 0) {
@@ -1132,7 +1132,7 @@ static int alauda_transport(struct scsi_cmnd *srb, st=
ruct us_data *us)
 	int rc;
 	struct alauda_info *info =3D (struct alauda_info *) us->extra;
 	unsigned char *ptr =3D us->iobuf;
-	static unsigned char inquiry_response[36] =3D {
+	static const unsigned char inquiry_response[36] =3D {
 		0x00, 0x80, 0x00, 0x01, 0x1F, 0x00, 0x00, 0x00
 	};
=20

--=20
2.48.0.rc1.219.gb6b6757d772


--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-al=
ien.net/d/msgid/usb-storage/20250228-misc-const-v3-3-09b417ded9c4%40posteo.=
net.
