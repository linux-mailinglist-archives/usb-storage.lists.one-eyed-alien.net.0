Return-Path: <usb-storage+bncBCD353VB3ABBBKFEQ67AMGQEG42Q52Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x146.google.com (mail-il1-x146.google.com [IPv6:2607:f8b0:4864:20::146])
	by mail.lfdr.de (Postfix) with ESMTPS id ECBC6A49CD6
	for <lists+usb-storage@lfdr.de>; Fri, 28 Feb 2025 16:11:37 +0100 (CET)
Received: by mail-il1-x146.google.com with SMTP id e9e14a558f8ab-3d2b6d933acsf21290935ab.3
        for <lists+usb-storage@lfdr.de>; Fri, 28 Feb 2025 07:11:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1740755496; cv=pass;
        d=google.com; s=arc-20240605;
        b=FR9S7mXGirSR5fSbYfzpaFdHiA1X0xfIEihIaZQ0mjlxwjbu1Ly45T0PZyCD1kZJQp
         YBC/4dDegcjhETrO86fMvMis6C/v4iIkJmcfVzZhdComic2HQSvVY1yiAOVcyjYdBgNM
         MCnWXAmrJUAa8uyrVZSQjAmInGS5LXMat3oYUwmgmgQArdeFZbUwgCpUAw6cnXY88jR3
         L26ZIBPKo5golvx4oAqiC+kKxrfiws20XXBf/Q0V0s23PhCyQKG42uNtwiA6xgYq2rXS
         3fjeavwK6+jTUpof925TlP5mLTjQLNQWWkwyvuCud3TvSR1Jiz15usD+zp/GKOpfSeSh
         HRBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:in-reply-to
         :references:message-id:content-transfer-encoding:mime-version
         :subject:date:from:dkim-signature;
        bh=w8YbCIbXJh5H26SOxFTb3zvvqQvQjUz2K8IRFpvARFg=;
        fh=0O15zRSHubDqe5muCyZzHnAq7IUBn7uvVlZ/vkh9IDQ=;
        b=dy40NhQrtw4z3GnGPlWh2MohS83Dc6LlRqXi3DRix4Cm2SaRXes50HK9Jy11IMLiQz
         ih4Q3YfLMr89Sb+13fuCEnZ9uTWwB/PXQCUVrOWbeAHI7dSRGTV5s8dTzxnPgLeLe6Pm
         zNtKnVSY4nmqNljP8hkfMivqk1mx1/riZ36V2kPGlHX3cdIHOpW4pxdvOYpygf+HFPkk
         n1UfpWEdNcUsiI51BGFA1L3fP2JQ6iYZa6ovW5VNwDE9NitQGneuLR7/BxFyQJv0a1fV
         +HNpfbX5+b2NAUx4PbGCkCWlSIMrcwbGjCSR9GOILck9aiWHN2b5Pwy/TMpVqMVIUYrh
         QckQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="JB/cChVI";
       spf=pass (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=devnull+j.ne.posteo.net@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1740755496; x=1741360296; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:reply-to:cc:to:in-reply-to:references:message-id
         :content-transfer-encoding:mime-version:subject:date:from:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w8YbCIbXJh5H26SOxFTb3zvvqQvQjUz2K8IRFpvARFg=;
        b=ezG5S98A4ontI9jg96IvjqBDIUH1y531zDO2Deo9wsUTx9dJYTmLvVSoxhs2/dgHeG
         VaUIueQwSm+GXvMTOcOezdwaEwWiEuWj81qrGF3QS1h+jI9zWHtVOrcIIMT+e4/ekdQE
         eJ8s3a/zVla8TB1/GmBTsmCIY2yM68/cTmzkE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740755496; x=1741360296;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:reply-to:cc:to
         :in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-beenthere:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=w8YbCIbXJh5H26SOxFTb3zvvqQvQjUz2K8IRFpvARFg=;
        b=GxnPHnqD0EAGQPDi3sleWUx5cmtmfA90xBleW9Zm7eXZjVxiV+dy+V0bEim5Ffa6DS
         AauzZS0gTX6Bw/0qs33cv0ozswOw32RSaWXiRQUHavxQmezkGM//fsAyoSj9UqNVT1U2
         uCYGfTpVYjaVVlZyCs5HmmD5o0n0VnwJkVje+4s3J6MOilO5ImqP+gtlJx/c/YJhgjz2
         IxAOixMTllMMWXumSw0sARSN047/2zdE16GYNzabc4uHorzto+WNxGlKi40Yb1fZOALt
         UFln2JTecAsd46EFzgIstGgSreTIroyWVbUeYJJ09+kjZ3HrrcC93Ts2eSK4aMNnS61W
         dpDA==
X-Forwarded-Encrypted: i=2; AJvYcCUOYAmlt7C9/DvjLKpIlrpLdE6Xp2NYP/j3QFQ+G+TD+Eo/5wLDGgp/z6Sf/SB5w6CVDLOTfg==@lfdr.de
X-Gm-Message-State: AOJu0YzVkTXVf1avVdzwjtyvN+u9nINcrIxVICD6o+qw/2OUZnVupbYK
	bSgCsZfS6j5NjX+WlQqng+9YelF0pqpiSRCY2MD64tA05hUcK2GZN5gwNi3G3w0=
X-Google-Smtp-Source: AGHT+IFDtCLkSYbnRAMcBWZSWeIO0IIatryeT1TZ0oIEZt4KPrd2kHqHLrS7W+nL6zJOFL+MSFCOXQ==
X-Received: by 2002:a05:6e02:1ca4:b0:3d2:aaff:d8dd with SMTP id e9e14a558f8ab-3d3e6e74fdamr38824415ab.9.1740755496519;
        Fri, 28 Feb 2025 07:11:36 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=Adn5yVGF5mHwDLgDagYpEQ8Fxzd2FfoIT9oD4VY2Oq58Owe09g==
Received: by 2002:a92:d351:0:b0:3d2:ae38:42e5 with SMTP id e9e14a558f8ab-3d3dd27be6als7544935ab.2.-pod-prod-03-us;
 Fri, 28 Feb 2025 07:11:36 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVelnyIvCOPr25zNmohnn6YnY9b8gjQQ79PVhp36dfGyuzay5GIbbjOzxW9ijDt8UIgvXEo9roW8hmpzQ==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6602:15d1:b0:858:717b:798a with SMTP id ca18e2360f4ac-85881f20d39mr343965039f.8.1740755495810;
        Fri, 28 Feb 2025 07:11:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1740755495; cv=none;
        d=google.com; s=arc-20240605;
        b=D5+ULJo0OaI0LcBQnosEC0PV6QbIQ+oFhA7yC2vao8dhyQD4DkVo6tsZjRfpGSg+hO
         KvIfUomgoDkoxztGAka7S25sqD993bXvL9LsXnkPcI4AftCreBZb1I2YSWxAD+lFtQ7c
         4HEnTihz4/+IN9IUUc2BKpNQYEIBmXjYscuObhzNsakrBFraJn9tO5I+nlsZQJtLP/0c
         ZSqRBOlzay14nIRpHIu7woqsoh9T44Qhhnn/ezbc6oaOy0hlcKzMDkNIjR/uxcQGdfG1
         PGq5w74q/iI/LjmnXIYt/p9yl2BV46ALpL8eAAteAEUY5Tu26a8AoctximKvXxQFs85F
         pvYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=reply-to:cc:to:in-reply-to:references:message-id
         :content-transfer-encoding:mime-version:subject:date:from
         :dkim-signature;
        bh=wrR7Glm6gKwO/0iYgWzSZ+/3zxWBtt0x428RY3sqXNk=;
        fh=t85edx+sQ1Skfp7ZeTpNIH3lUx4BfFwBq5zypEnFHfI=;
        b=WRaYcPTfO5nR+zkkuMQemYrEc4utOJ+4qwUV/1P3rIYxt6Jde+dr5lI8D9WPN88uxQ
         UL2t6il329pJZ9QTY8hcRpA9BgK7rHiVhfQ7+OKKnTiE7NrDfd9mQX1C12Mw8MCHkb3E
         Doah32bv/Fjp1jQHiHb8MEiVtff1XctstnwcmkHWtzo9x+n2tEMhb0DGXFiZ5Y18Y8IL
         JQJk3SA6u+WABWhAz1/tjzDBhuxwf3mg8p8LWh41yvMq+1aeAngdlbMRl4VRm0lo713f
         HwcdvmAtlgrjSt7cq6Ja+coQVnIXB6Ywq8J5QcL/YxzMOy96JdatnokiKDvKP6ssROrx
         g0AQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="JB/cChVI";
       spf=pass (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=devnull+j.ne.posteo.net@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by mx.google.com with ESMTPS id ca18e2360f4ac-858750f926csi291642039f.7.2025.02.28.07.11.35
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Feb 2025 07:11:35 -0800 (PST)
Received-SPF: pass (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 90CE35C66C2;
	Fri, 28 Feb 2025 15:09:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0A284C4CEEC;
	Fri, 28 Feb 2025 15:11:35 +0000 (UTC)
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0170BC282C6;
	Fri, 28 Feb 2025 15:11:35 +0000 (UTC)
From: =?UTF-8?Q?=27Jonathan_Neusch=C3=A4fer_via_B4_Relay=27_via_USB_Mass_Storag?=
	=?UTF-8?Q?e_on_Linux?= <usb-storage@lists.one-eyed-alien.net>
Date: Fri, 28 Feb 2025 16:11:21 +0100
Subject: [usb-storage] [PATCH v3 6/9] usb: storage: realtek_cr: Use const for
 constant arrays
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Message-Id: <20250228-misc-const-v3-6-09b417ded9c4@posteo.net>
References: <20250228-misc-const-v3-0-09b417ded9c4@posteo.net>
In-Reply-To: <20250228-misc-const-v3-0-09b417ded9c4@posteo.net>
To: Alan Stern <stern@rowland.harvard.edu>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Jonathan_Neusch=C3=A4fer?= <j.ne@posteo.net>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1740755487; l=1603;
 i=j.ne@posteo.net; s=20240329; h=from:subject:message-id;
 bh=Z4dFHNFlKFnAbpKqq4pi0I1NGjP1CC9FXDl74xxbcAw=;
 b=wADBdezbHfISTEs1/feZNXSrsSUOdAx6ibWlswwtMJBeMO7Ko8xzT4WRGA5sjyxOMngCV++1h
 1l44956ZjtWAzVLAIfckYMCtkbrtmspXifp6FZ9tyLx28DSIQE4s8ur
X-Developer-Key: i=j.ne@posteo.net; a=ed25519;
 pk=NIe0bK42wNaX/C4bi6ezm7NJK0IQE+8MKBm7igFMIS4=
X-Endpoint-Received: by B4 Relay for j.ne@posteo.net/20240329 with
 auth_id=156
X-Original-From: =?utf-8?q?Jonathan_Neusch=C3=A4fer?= <j.ne@posteo.net>
Reply-To: j.ne@posteo.net
X-Original-Sender: devnull@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="JB/cChVI";       spf=pass
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

These arrays are only read, never modified.

Declaring data as const makes it easier to see what's going on, and can
prevent unintended writes through placement in a read-only section.

Signed-off-by: Jonathan Neusch=C3=A4fer <j.ne@posteo.net>
---

V3:
- elaborate why const is a good idea

V2:
- new patch
---
 drivers/usb/storage/realtek_cr.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/storage/realtek_cr.c b/drivers/usb/storage/realtek=
_cr.c
index 2a82ed7b68eaa75993e786afeda0d5d3a3c3bfce..4e516b44513672ebe7889247a70=
043e0dd013bc8 100644
--- a/drivers/usb/storage/realtek_cr.c
+++ b/drivers/usb/storage/realtek_cr.c
@@ -191,7 +191,7 @@ MODULE_DEVICE_TABLE(usb, realtek_cr_ids);
 	.initFunction =3D init_function,	\
 }
=20
-static struct us_unusual_dev realtek_cr_unusual_dev_list[] =3D {
+static const struct us_unusual_dev realtek_cr_unusual_dev_list[] =3D {
 #	include "unusual_realtek.h"
 	{}			/* Terminating entry */
 };
@@ -797,10 +797,10 @@ static void rts51x_invoke_transport(struct scsi_cmnd =
*srb, struct us_data *us)
 {
 	struct rts51x_chip *chip =3D (struct rts51x_chip *)(us->extra);
 	static int card_first_show =3D 1;
-	static u8 media_not_present[] =3D { 0x70, 0, 0x02, 0, 0, 0, 0,
+	static const u8 media_not_present[] =3D { 0x70, 0, 0x02, 0, 0, 0, 0,
 		10, 0, 0, 0, 0, 0x3A, 0, 0, 0, 0, 0
 	};
-	static u8 invalid_cmd_field[] =3D { 0x70, 0, 0x05, 0, 0, 0, 0,
+	static const u8 invalid_cmd_field[] =3D { 0x70, 0, 0x05, 0, 0, 0, 0,
 		10, 0, 0, 0, 0, 0x24, 0, 0, 0, 0, 0
 	};
 	int ret;

--=20
2.48.0.rc1.219.gb6b6757d772


--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-al=
ien.net/d/msgid/usb-storage/20250228-misc-const-v3-6-09b417ded9c4%40posteo.=
net.
