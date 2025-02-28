Return-Path: <usb-storage+bncBCD353VB3ABBBKNEQ67AMGQEVFJ22AI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x148.google.com (mail-il1-x148.google.com [IPv6:2607:f8b0:4864:20::148])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BECEA49CDC
	for <lists+usb-storage@lfdr.de>; Fri, 28 Feb 2025 16:11:38 +0100 (CET)
Received: by mail-il1-x148.google.com with SMTP id e9e14a558f8ab-3ce8dadfb67sf24967605ab.1
        for <lists+usb-storage@lfdr.de>; Fri, 28 Feb 2025 07:11:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1740755497; cv=pass;
        d=google.com; s=arc-20240605;
        b=JAX+z8cWXLUx2uYwE1WpdHthfxwMa/ANCOXJl+8WCEwl0V3v+Rb3WSnKldDDFMrb98
         KZBDtA3buFZeWMyRInnNQGkR707S5BaxAWmOemoIGpFviJFQ5A1tvddHRgIBbb5xc9JL
         uF1W75HpFgKl2ALRZOhU3hokab9J5Dk3WTzwnpZTuE3ap77sEt6jBR4dZ9JtatT139Zf
         ZHMjJV4CUwxyD5PQ3uZaampvKW86siLs0ODy4kM+bdArhb/oOnuwiTMMbgd/CEgOfuLQ
         f6FS8ndgbDf9iCIvVJOBxFQqbAsC7bHxKzC/dYVRdnq/pX9R8/sHpTBrzanOl/WPXMG4
         TR+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:in-reply-to
         :references:message-id:content-transfer-encoding:mime-version
         :subject:date:from:dkim-signature;
        bh=8sJaYZe7xqqsJdXFDsRe6AZ6Sve+qpibMdjtZjl4fqs=;
        fh=3/VmcJbuQj4MRQXu8IBPyknIr1t3r/YTQM9GMeky2Q4=;
        b=f81HSDIwQrDakQrAlKIzPPBCWX34/CnriXR1AHLQhxIQQEQP9bYLbpuQy80BFHduRI
         7r0H3Ol35yRM67as72pIf0P6R4Vv02ql05mcJ6CsJCGtxOKCiF5hsrudRnVxQtdevKoJ
         IgWSmGtTHwBm5TBsNcN1+H+K5MISudjFHZMeWeJ61JrZk+F7I/5NABHSrvAF8GLHu+rg
         PVSUjOzfe8vk0H9vHORGPDec18J8TYwORfBBUZM/kQFpkf+MqnIWUIaSlgLt5QKQOILP
         HC5DGz20Gmizp9B/72h26T+vAlsLEA44flf/qb7U/GcrZla6oBSKJpjOZuzo0cpaBeCg
         /pxg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=cCF8J9u1;
       spf=pass (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=devnull+j.ne.posteo.net@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1740755497; x=1741360297; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:reply-to:cc:to:in-reply-to:references:message-id
         :content-transfer-encoding:mime-version:subject:date:from:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8sJaYZe7xqqsJdXFDsRe6AZ6Sve+qpibMdjtZjl4fqs=;
        b=gAXWf+fah2y/bPQBrWoF1XNMsKDrhBXkLMJ5AsQ1Fu32GlumKvefiKXXIx2w5vgt0I
         piwdmLqIVIV3Ia/N4M/J+xSYOWsgMVes90Q2aA/MlH4nRiz5JPnKu0pU5Euzcrjq4zzI
         8uEJHKB04x7BP/XA6mN1DDDQDaduIIM7hz1mE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740755497; x=1741360297;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:reply-to:cc:to
         :in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-beenthere:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=8sJaYZe7xqqsJdXFDsRe6AZ6Sve+qpibMdjtZjl4fqs=;
        b=xJQOdIpk0V0179mOVN/GDek5tuOvQ/toGzbP1Xq/50iNU+xHWgOgTVEyITiR+/SESI
         /0psAe6exINtCqV2VCOoVowxQHNLebYyQyBMPP+Niyxu6aHFlYJhudrPt8SfKu1R0tyV
         nvPHkB9+xVfO0xBaEf39xjUiXMS9VWS7Ya8qOQ02cqxaR8DULUXdpxEqzjibljkRCqOv
         JjlJp879iNQjaqYfi7EIZNj6YSHYgc9qQHruZ7CkD4Fnn1jizGLVuEK7jWZPJE242xDw
         cyILzpJJxOuAAWSlQfRj/hh24b7a9JkgZckz3Z55k82zVBDdiJGwPwnEMtUjKDwSxtlv
         E6pA==
X-Forwarded-Encrypted: i=2; AJvYcCWLCOmEAYYWdHZruZ/VAhg5RfVSJbAVQC8PxhIRnyb2E7VW9ZlJJX+AFfgAEj38di6UdX7SFw==@lfdr.de
X-Gm-Message-State: AOJu0YyVybIJhDsFq2/4Je86yK6et03vyB3SVqeOVjOew1IHTURZK3xI
	dk0U9HKfaJ5ttfpHJLRx9Uf9+Hg7shupM74+yzVGokzd386opTV9oJWeCNLGd1A=
X-Google-Smtp-Source: AGHT+IFhfVYmc6gSlnWpM+8Rz3sa/WI+ghZFWO17/zuEAtwV9bHdNr2tv0jkJ4Xa/vrhyjRl0aT1gQ==
X-Received: by 2002:a05:6e02:320c:b0:3d1:883c:6e86 with SMTP id e9e14a558f8ab-3d3e6e39bf2mr40421515ab.8.1740755497132;
        Fri, 28 Feb 2025 07:11:37 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=Adn5yVHk3rpkYVRP5OJkHod4zBklWPMQjPdmECiAXTMcllfZuA==
Received: by 2002:a92:ce03:0:b0:3d2:b33e:5b58 with SMTP id e9e14a558f8ab-3d3dd267598ls2451895ab.1.-pod-prod-07-us;
 Fri, 28 Feb 2025 07:11:36 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWCoMowy9W4VNC+ac7/pqET+r2Et4m9D9109tPvk+f/p7oQvLtke3fj7eR85XVi3+QlzQjU7tdOb5WLuA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6e02:16cb:b0:3d3:dcb8:1bf1 with SMTP id e9e14a558f8ab-3d3e6e20e70mr41966925ab.3.1740755496474;
        Fri, 28 Feb 2025 07:11:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1740755496; cv=none;
        d=google.com; s=arc-20240605;
        b=ImNI5xr1C9Im32e6Lc84G98aq8SQijrMrZq8pVu+C/ttJXTPZzn2R3nUOJk7FEeVTo
         hUwSA5Khy0yJGDJ6oDDGDVsB+m5YCM36cFKVKrfuc18Qx27JMAwuyWfRq5UqmL8S6+7J
         MQIRETInVrEIZyG3kF992LetfP+ZEue3KyKepZ5ZybMmE0Kg1gtZmBqeNT+/gT6o0EpT
         LD+QK9STLvTLb7NEqZz+dHBoU2vvpIcOjsaSd0c86oQ6SAOAByMZLz2qzOHIi0eZ5uvu
         Y5pDgsORUXfPFTp84s1SV3bNlnSakpQL/GRneog0YNC82tv9EpDyvBu4kZylMEciBQpu
         Q/iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=reply-to:cc:to:in-reply-to:references:message-id
         :content-transfer-encoding:mime-version:subject:date:from
         :dkim-signature;
        bh=P9IOfJXFRO/5qOip7EhPjqy32pAxU5iuf8nDg0ZeAdI=;
        fh=t85edx+sQ1Skfp7ZeTpNIH3lUx4BfFwBq5zypEnFHfI=;
        b=ZBsMXyJYZd/X4zDPSFlMOIBRgVIMzD5jctSGtD9wuznxyxXMJ+3i7FmTJBgBX9wwuY
         C9C7CsameqnyI4NytbtTsr5s/P0ID025VrxRG0eRAirnzopHXFlEnvKyxjVyJTEnEhmi
         CnTM7vz5gX7OWU0JeTLNAin2vBOYrspR7d6kG7Lb5D34oMzoPP81LSnuZdhBQMKfCFb0
         QmuOh8UdIUBVl8e5GFA5Ccb70pmtnvZuaaUvfuBwChNim6GOp3KEQFv2TFhZNsxM+ibx
         hYMIF96C7qPScHxFjTn7tDIXR5o2fLAWpTDHyO4Skk+N+5QBJ7f1KGbwhvrqW6XzUrbQ
         ebvA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=cCF8J9u1;
       spf=pass (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=devnull+j.ne.posteo.net@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by mx.google.com with ESMTPS id 8926c6da1cb9f-4f061f90ca8si3189396173.89.2025.02.28.07.11.36
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Feb 2025 07:11:36 -0800 (PST)
Received-SPF: pass (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 9C5865C66D0;
	Fri, 28 Feb 2025 15:09:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 26C7AC4CEED;
	Fri, 28 Feb 2025 15:11:35 +0000 (UTC)
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1FB20C282D0;
	Fri, 28 Feb 2025 15:11:35 +0000 (UTC)
From: =?UTF-8?Q?=27Jonathan_Neusch=C3=A4fer_via_B4_Relay=27_via_USB_Mass_Storag?=
	=?UTF-8?Q?e_on_Linux?= <usb-storage@lists.one-eyed-alien.net>
Date: Fri, 28 Feb 2025 16:11:23 +0100
Subject: [usb-storage] [PATCH v3 8/9] usb: storage: sddr55: Use const for
 constant arrays
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Message-Id: <20250228-misc-const-v3-8-09b417ded9c4@posteo.net>
References: <20250228-misc-const-v3-0-09b417ded9c4@posteo.net>
In-Reply-To: <20250228-misc-const-v3-0-09b417ded9c4@posteo.net>
To: Alan Stern <stern@rowland.harvard.edu>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Jonathan_Neusch=C3=A4fer?= <j.ne@posteo.net>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1740755487; l=1301;
 i=j.ne@posteo.net; s=20240329; h=from:subject:message-id;
 bh=dyKVA5pPyRY7TuBL1KemWvR3umAVS5JkAQpDbS4Ydg8=;
 b=BA2AmNdIfge2Df+JYGIJv5vw589dHvWjgpw9g3g4XAmSw0hlylN9Cwos695Ecbek4xyDO25CK
 YPc4LO4ulNyCW2RrB7XQ6aT4rULx/eUV2vZE8BRKGz3BpojbZOU/8sn
X-Developer-Key: i=j.ne@posteo.net; a=ed25519;
 pk=NIe0bK42wNaX/C4bi6ezm7NJK0IQE+8MKBm7igFMIS4=
X-Endpoint-Received: by B4 Relay for j.ne@posteo.net/20240329 with
 auth_id=156
X-Original-From: =?utf-8?q?Jonathan_Neusch=C3=A4fer?= <j.ne@posteo.net>
Reply-To: j.ne@posteo.net
X-Original-Sender: devnull@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=cCF8J9u1;       spf=pass
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

These arrays are only read, not modified.

Declaring data as const makes it easier to see what's going on, and can
prevent unintended writes through placement in a read-only section.

Signed-off-by: Jonathan Neusch=C3=A4fer <j.ne@posteo.net>
---

V3:
- elaborate why const is a good idea

V2:
- new patch
---
 drivers/usb/storage/sddr55.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/storage/sddr55.c b/drivers/usb/storage/sddr55.c
index d5cdff30f6f31f98d3d58ffcdd2426d7cd385cbb..b323f0a3626031905b946ce64dd=
f04539a6e3232 100644
--- a/drivers/usb/storage/sddr55.c
+++ b/drivers/usb/storage/sddr55.c
@@ -775,11 +775,11 @@ static void sddr55_card_info_destructor(void *extra) =
{
 static int sddr55_transport(struct scsi_cmnd *srb, struct us_data *us)
 {
 	int result;
-	static unsigned char inquiry_response[8] =3D {
+	static const unsigned char inquiry_response[8] =3D {
 		0x00, 0x80, 0x00, 0x02, 0x1F, 0x00, 0x00, 0x00
 	};
  	// write-protected for now, no block descriptor support
-	static unsigned char mode_page_01[20] =3D {
+	static const unsigned char mode_page_01[20] =3D {
 		0x0, 0x12, 0x00, 0x80, 0x0, 0x0, 0x0, 0x0,
 		0x01, 0x0A,
 		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

--=20
2.48.0.rc1.219.gb6b6757d772


--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-al=
ien.net/d/msgid/usb-storage/20250228-misc-const-v3-8-09b417ded9c4%40posteo.=
net.
