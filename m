Return-Path: <usb-storage+bncBCD353VB3ABBBKFEQ67AMGQEG42Q52Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf46.google.com (mail-qv1-xf46.google.com [IPv6:2607:f8b0:4864:20::f46])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D6A8A49CDB
	for <lists+usb-storage@lfdr.de>; Fri, 28 Feb 2025 16:11:38 +0100 (CET)
Received: by mail-qv1-xf46.google.com with SMTP id 6a1803df08f44-6e6819c3edbsf55585636d6.3
        for <lists+usb-storage@lfdr.de>; Fri, 28 Feb 2025 07:11:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1740755497; cv=pass;
        d=google.com; s=arc-20240605;
        b=UaAnKuWvFmmy/EkXEg5lRfSvrxFpVMb3QxfvB7YS4ZR95eze4I52id5sbOqE/9S1qQ
         gowtzblwM5v2LfHKaKGE9DSlI1tlmAVcd+8XQjAPv1EqZeFuvHfKVtd+6awMdO6qq7he
         NDeDBcGXY79dD0H3SD32N3kOA1qIxv9JA2Ph+m7JvHxQf7wUmsi32uWiG92v/NHDuG0t
         zoXH6iDwOUmPZbYki0Eykpg8wHB4BaMIfzFe4qd0gzwzGJm9gHPK2yi2liBK8CJd1wOb
         a1jzAoGg/h3XKzrUdVNENGD+8HkUmFElp4Qp83So2TA9VqwabpQAFmgMlw7OcOdMg9ZX
         qyGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:in-reply-to
         :references:message-id:content-transfer-encoding:mime-version
         :subject:date:from:dkim-signature;
        bh=Z8uznMxhgGtfozFrmBHclchLLPVvJYhCoIXfdBsdO7I=;
        fh=e/EO3zz9m827fRu0y/h8kGGzPJjn1DUL+hOiqR0uzuY=;
        b=DLnCMcYQPueSqnGkw2uDcD3SuBXp2yaZd0Mj8wCPerYSyXFTfwrjWDaTi5lIBnhACD
         aGoFR02gIJSpIVSIXZU6XEEBEmWfbk+ult7VRshpNcGNtbKjus1PVv3/8bTjgWEFTZ5e
         nVj6rt4yB2v+XCco/bc0xwsNOpOj648nuunfGIUdAXV8R0hYoAWIcQXNaVAWiQv4zZwf
         wTsRwNoK4QPaE/MTDW6T3ly1jELXoFXSCIgMFUKaWgKHuIHY2P1hecBGodT8CEN0sL05
         bnX20aR9byjpXd+73+Xdk7ZVBe57bsSWC1vC3EhnqrX2CO2QtMpeoTxP5Gsz/6PPTY6j
         MO2w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=YTBe2Pmw;
       spf=pass (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=devnull+j.ne.posteo.net@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1740755497; x=1741360297; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:reply-to:cc:to:in-reply-to:references:message-id
         :content-transfer-encoding:mime-version:subject:date:from:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z8uznMxhgGtfozFrmBHclchLLPVvJYhCoIXfdBsdO7I=;
        b=WEs0Av4Uc9NZQFvQDd7ATJkWP1xOFw/UJvlbgDftaupOoD0n8o8LQIFNAMwjeNpfe5
         yrQyfNAgaZgM4BPRfUeHQhvUgDWYTpTHNUfS0+oUdiEa1wlVAO4b6VvlnKdHNon2gzLA
         SGFWZA1ZPJn0fOlmbYb7xmMYkC0C1oS6Dftko=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740755497; x=1741360297;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:reply-to:cc:to
         :in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-beenthere:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Z8uznMxhgGtfozFrmBHclchLLPVvJYhCoIXfdBsdO7I=;
        b=FqEwdHoRnSAyfHb63tyn4H3sulidI215V/O5gk5FX1ZBDJeHRYvy9syN8Elw1ZRFlB
         x5HBZyzLo92beYXgHR+t8pRIreANGjKQTW3SPKFFP0LtJZt3M3HO34KMEy8AhlqFpg1m
         gZ+yjn+W/1T1SicF27FDUNNjIzs+WpD9PMBPCun3N6mXaofCqaMbPTgzvQKxhOKHk70t
         PxzzPdxJviSNY5uOHUvflUvECW+kXQii+45emDosoXpfeGCKalsc/F/GqdoTQ1WuLvRN
         tYSyz1YTfm7JGQSgAqDU4+X5EQEeZeg4pGdkxtTjqbjB6w8C0zdWXRce8rtK/zCQ181E
         GwDQ==
X-Forwarded-Encrypted: i=2; AJvYcCVMPmw+m7U/fyfGgKfTUoQFyFrniGNZZeeFF+AjvUJ4sVxeBW2WdrPPNQ2cSxKZmqmfYlV7XA==@lfdr.de
X-Gm-Message-State: AOJu0Yy80WJUa41z0AKDStzbcy1ZTtluKvXlNM5jZrubwYbkGoqRbs27
	vVOmVyCG2yK+gdSRr82E6pPw/R8F8VCFa8ipzZhxqlG4DIoXAJyuPJKVbzRKcRQ=
X-Google-Smtp-Source: AGHT+IFLxL3lHCBqV/dpZb/AcrFFI2zwiseac0KtdD2HxIjy6jFmhtDts00X9mI4QWZ48tc7h9n4Aw==
X-Received: by 2002:ad4:5ba3:0:b0:6e8:90eb:e591 with SMTP id 6a1803df08f44-6e8a0d02a7dmr53781496d6.24.1740755496852;
        Fri, 28 Feb 2025 07:11:36 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=Adn5yVGLRZAfXAAvUEcoezlCtOkm/VJ+4y/itgiHvghtnNVT2g==
Received: by 2002:a05:6214:1808:b0:6e8:8d41:8cae with SMTP id
 6a1803df08f44-6e8954f831fls24036396d6.0.-pod-prod-04-us; Fri, 28 Feb 2025
 07:11:36 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVZUL1PnYQWz/gMl3rDme7P8AC2/a9uoYgy/wviDpkkrERFeGw1j7um9/TBRGQ/wu79YvGftAv/iXE8Dw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6122:3d4b:b0:520:42d3:91bc with SMTP id 71dfb90a1353d-5235b7e10camr2686898e0c.2.1740755495932;
        Fri, 28 Feb 2025 07:11:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1740755495; cv=none;
        d=google.com; s=arc-20240605;
        b=kfP1R3cs7BX0GUlu6NxmAgdEsPz/BsiEXta6EJEn5o894TWKWiezBU/TQL5UXm4Wvg
         RQ/Fgd/y6/PM9S7cam03BNpoAYXEVUtDzl/bkCjVTiLewRgrpkZVm8gyVqOVVE12Rmtq
         2khTdXjDa4YtVikAciOEnVW3JIXBu6Y7izdnItd9Jx8xUH5Hf1pyC6/rGuDFyRswHb0h
         xYi7dDNY0c3oGPV8u2OgR8JO4aBaWlHnTnhpVb+VMhyqkpQBoRgDu06qnjSZuOI4O5fO
         8BybGBPHDumtO8wfNf1BiBlJ57wwq8EQ/bQRkDbDganv2B4/dDeHCaqPymCQ5iEu9iLv
         kV5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=reply-to:cc:to:in-reply-to:references:message-id
         :content-transfer-encoding:mime-version:subject:date:from
         :dkim-signature;
        bh=lphdRj306phW4AAzcATaYr2x/PYNUsz5g+silwiFJJ0=;
        fh=t85edx+sQ1Skfp7ZeTpNIH3lUx4BfFwBq5zypEnFHfI=;
        b=gTyJFID+wcJPdb6qOxXxrfKpYah58GYKoDazYmhWwJGR3rJ3Do90zLqt3cseq0C4Vf
         +l8kdYY80lFA/nIag5JMySehMGRNk54NlR31G6eDU725LMEAfbROVbOvClH4ohAjZDF8
         Yq0GGFtDSRBMW+pFi7ca47BkKg5ZsqnVBo9qda8d/gu3xdwgQ/h/DRsWgoJNBdDds1sa
         o8nRvwNxgs1PH53W2isR5dJUH1tn0XWLa34RIpB0RRSdHaLD9uFrjdJIkbVWB6aS5OXv
         VoQUketu8BzO80jVdh82gV5FxkEnYJgARIWAJAM6dOP0kLCOGwxUQD4CWP5LEzvszkUO
         D9dg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=YTBe2Pmw;
       spf=pass (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=devnull+j.ne.posteo.net@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [139.178.84.217])
        by mx.google.com with ESMTPS id 71dfb90a1353d-5234bf03609si897107e0c.78.2025.02.28.07.11.35
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Feb 2025 07:11:35 -0800 (PST)
Received-SPF: pass (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates 139.178.84.217 as permitted sender) client-ip=139.178.84.217;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id A3B105C66E0;
	Fri, 28 Feb 2025 15:09:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 33B6DC4CEEF;
	Fri, 28 Feb 2025 15:11:35 +0000 (UTC)
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2C10EC282D1;
	Fri, 28 Feb 2025 15:11:35 +0000 (UTC)
From: =?UTF-8?Q?=27Jonathan_Neusch=C3=A4fer_via_B4_Relay=27_via_USB_Mass_Storag?=
	=?UTF-8?Q?e_on_Linux?= <usb-storage@lists.one-eyed-alien.net>
Date: Fri, 28 Feb 2025 16:11:24 +0100
Subject: [usb-storage] [PATCH v3 9/9] usb: storage: shuttle_usbat: Use const
 for constant array
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Message-Id: <20250228-misc-const-v3-9-09b417ded9c4@posteo.net>
References: <20250228-misc-const-v3-0-09b417ded9c4@posteo.net>
In-Reply-To: <20250228-misc-const-v3-0-09b417ded9c4@posteo.net>
To: Alan Stern <stern@rowland.harvard.edu>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Jonathan_Neusch=C3=A4fer?= <j.ne@posteo.net>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1740755487; l=1113;
 i=j.ne@posteo.net; s=20240329; h=from:subject:message-id;
 bh=c3zFUpIiLQBTnxFuX58IYeC708hZ2OFipFj3XEiE89M=;
 b=17wwAL61o0Jxp0MpLVODKSR5Di1ZGuLePUAxm0dBAjg9XqlvS+dfhTNn3txurpA0eEvTR+bhD
 VBaqrrNEvXeAsyefhBm1t9roTEB21NVsLaiAcO0Rq7eMhdHhDVxA4eR
X-Developer-Key: i=j.ne@posteo.net; a=ed25519;
 pk=NIe0bK42wNaX/C4bi6ezm7NJK0IQE+8MKBm7igFMIS4=
X-Endpoint-Received: by B4 Relay for j.ne@posteo.net/20240329 with
 auth_id=156
X-Original-From: =?utf-8?q?Jonathan_Neusch=C3=A4fer?= <j.ne@posteo.net>
Reply-To: j.ne@posteo.net
X-Original-Sender: devnull@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=YTBe2Pmw;       spf=pass
 (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates
 139.178.84.217 as permitted sender) smtp.mailfrom=devnull+j.ne.posteo.net@kernel.org;
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
 drivers/usb/storage/shuttle_usbat.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/storage/shuttle_usbat.c b/drivers/usb/storage/shut=
tle_usbat.c
index c33cbf177e6fcaa80e0d2639594d1314c59f4950..27faa0ead11d1b0ee9e45ba6a3e=
e5bade8a416e4 100644
--- a/drivers/usb/storage/shuttle_usbat.c
+++ b/drivers/usb/storage/shuttle_usbat.c
@@ -1683,7 +1683,7 @@ static int usbat_flash_transport(struct scsi_cmnd * s=
rb, struct us_data *us)
 	struct usbat_info *info =3D (struct usbat_info *) (us->extra);
 	unsigned long block, blocks;
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
ien.net/d/msgid/usb-storage/20250228-misc-const-v3-9-09b417ded9c4%40posteo.=
net.
