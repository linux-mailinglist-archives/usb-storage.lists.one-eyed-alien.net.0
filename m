Return-Path: <usb-storage+bncBCD353VB3ABBB7GE7S6QMGQERX7242Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oi1-x245.google.com (mail-oi1-x245.google.com [IPv6:2607:f8b0:4864:20::245])
	by mail.lfdr.de (Postfix) with ESMTPS id 45BB0A46221
	for <lists+usb-storage@lfdr.de>; Wed, 26 Feb 2025 15:17:34 +0100 (CET)
Received: by mail-oi1-x245.google.com with SMTP id 5614622812f47-3f3fbe10235sf7200434b6e.1
        for <lists+usb-storage@lfdr.de>; Wed, 26 Feb 2025 06:17:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1740579453; cv=pass;
        d=google.com; s=arc-20240605;
        b=llEVH3QLRbaH95iE2/G+BCkMuTSlEzn+OfxmYOs7LYpFyGfkDm3cRrWoX1fL3AC/kP
         9oLhXy74xbzrk9IeFX1Num17MhjPnsXH4ohHzdYO6RjD4BKHUI5N395+YluQo/lGRIqM
         gA/OOS5PfqAgJ6jv8Pz8iuh7BrA+bgcgmkv1amYOLSw4VLz6uB6qVp05leHUDtFIXUqb
         mp6i74CUjov5A30Gmf4TSrsBhOOAwH18A21qArqlKR7AEZPjBTOA8CVXOZy2yuEfPhu4
         eetwvrZAb8o8XL57hAMWGDk8dg2pJX7PGTIb9S48RELAP8eVCftSkehgN5yBlJVUVk7x
         uJzg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:in-reply-to
         :references:message-id:content-transfer-encoding:mime-version
         :subject:date:from:dkim-signature;
        bh=CfM631g4gIhlvWKcKPySyyDUgfa+Jh/M9MNiWibSAsw=;
        fh=bPMOf+lyQbzs2Z+mMXFbGBLZSbUfqljLVnM696IBBD8=;
        b=X/ij+823ev9jNaAWET7tvN87JmFrSpBjfdPi5IcYdz2OB2MwU9p+rgLu6LxdpTeI/G
         oadebM/45dv19Eu5IszYYz4DpKujuMN2E8VJ6ayRlm+ZjNfsmMCPvAld1Pt8VDvbM9PA
         aYy/HoydKlGYQQ77qxmjlTYOAIUjqxNdXSIvUcn1L36EUdr7Keer/If+XY/PoUY5X+Tu
         TnB2/6f4qcUC30nUEM2/0szPURCXhGnYCAKZmC8cSiQP0VdnJ6xPpEQ/RhJfl/gU0afJ
         kUMgH3SRMOkWAl83dQWcQNkb7yvp4gm12q6lz1mH4yeSLPPC+v0Qgj8aKk5zBSW+wMv/
         2MHw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=YyYM6wiO;
       spf=pass (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=devnull+j.ne.posteo.net@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1740579453; x=1741184253; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:reply-to:cc:to:in-reply-to:references:message-id
         :content-transfer-encoding:mime-version:subject:date:from:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CfM631g4gIhlvWKcKPySyyDUgfa+Jh/M9MNiWibSAsw=;
        b=SCkcMgiZxefQ21cUvp/aH3xkV7cPakLoehNgy64Cf3OhnfmchMD4PVMLi3vUGEKxVu
         y/tSu9RCtmc/TE4CbLc1cdpJDRmsCAVCXAIJc8MFbCv/d10kYLSfORosblUtGlNMabD+
         nRKv7E+QZ7oWm+jFJayGzqL9Bp53xBE7nkQ1A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740579453; x=1741184253;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:reply-to:cc:to
         :in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-beenthere:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=CfM631g4gIhlvWKcKPySyyDUgfa+Jh/M9MNiWibSAsw=;
        b=DtRZEPUb4/nfLSBuPn5Uzu6a88aGB8pCwhAv9TVvaObWSQznp0yBBsSu/4nboojHIC
         gc0m9dS9BlNZdAo5jlt4bsEJej6haM/o4OTwn4OWd2XOWPg1g9Wneloe+aN5LREjSOMa
         p1HxHRPYdtoBs4tI9GlJct6bP8Xu1VgimShVUWZGMdWddef3LyZ00zaBkpfppWpJQmeP
         k0Ool6CauFCVOR2EQakPxwj+7S60/3TCTLvQuYaGB85IZZJlpOMw4ksoZ5qxZfZ/Xvey
         U4W0buKu3kYhVj1NP4xFKpMf0P8em61UA42zAVtiPbbXJMF24j5qRaqIcKa7E3cdg2kk
         5qqQ==
X-Forwarded-Encrypted: i=2; AJvYcCXMAce0YkfSe+3Cu7p/AvGoSwNYND7ZbUUJY59aShsc9UzfOgBweMJUu+nj3PlZyBrBX0AMNA==@lfdr.de
X-Gm-Message-State: AOJu0YzIrJf++3vfsZdteH/w1fYMw2i7W6yPtitWtg63B0/DY59/Q5g7
	cJtYFKi9ptNrEFlTZaVf6sgLYFMGekfJtDQLCCD54J2sZqfH+RvOnNlSsK5rokw=
X-Google-Smtp-Source: AGHT+IFYCLItWvjwhKsdkl9DvBv1hz6hL0CNOTZtq28VcHCvbPDFWE+DurpS92Ll5N0JgHmUK+1vTQ==
X-Received: by 2002:a05:6808:2209:b0:3f4:d61:3709 with SMTP id 5614622812f47-3f425961637mr14527760b6e.0.1740579453081;
        Wed, 26 Feb 2025 06:17:33 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=Adn5yVHPuSO+mX38FglkHHhMTaZYQtlj7ruG98SBzkIf5qKT+A==
Received: by 2002:a4a:dcd6:0:b0:5fe:a0a4:ef4e with SMTP id 006d021491bc7-5fea0a4f0ddls260324eaf.2.-pod-prod-03-us;
 Wed, 26 Feb 2025 06:17:32 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCX/tcP23NxY1AQ7Q74UlnhO5bijiCFam6RbVOyflOrSWsKfP0zgGC4NNk8YbaFIiudLJNg99ehg9sGLCQ==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6830:6f0b:b0:727:2252:226f with SMTP id 46e09a7af769-7274c4cf208mr15950102a34.13.1740579452249;
        Wed, 26 Feb 2025 06:17:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1740579452; cv=none;
        d=google.com; s=arc-20240605;
        b=O8Fjbw0PbLjcJPmNXEmdVBtFQeYuLeFB7S5g9Nz7QEY48xxSInzpFTqIGbQcwa4Qxh
         ENbra52CLQSxw7umiQz0uzUHCd8yMAJJmcV9iOrfTsKkYA1+yE2l4hkT+TDf6GfI4Y9L
         /rKbVwGl7X6uv39TIooY+RW8Kpdn4rW7ofbrc5ZwuOc4eSgE7r5UTHeX7p426tJxZ4bB
         cuFXxS5HbBTsEjigdWvENuU45YvSLeYj66ovpywiXUtCgZJ4uZOJa1c4PjUkyQoDQNZI
         dwQLEMXHy03TyWthemV8Mdmz5AhjB0SDSvBDVr1i2d2zlMqCDFbiEn106dqC+QC4Qze8
         hUxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=reply-to:cc:to:in-reply-to:references:message-id
         :content-transfer-encoding:mime-version:subject:date:from
         :dkim-signature;
        bh=orxz2bj7s7B8P/ksyH/96meZz8b4+kb5C8p+154sdwg=;
        fh=t85edx+sQ1Skfp7ZeTpNIH3lUx4BfFwBq5zypEnFHfI=;
        b=OFvER2VZ8e2LXyMLsmMcD3B3UudwINSwy1gpDUht/o+wq7PZlucLcOo39QGidRPEQg
         6ge0AYl+kccVCKpqGkKKT5raBwMJIehkkqpcPKzG5msMQTQgS3xcYWwNF1UoVU8i61DH
         XQ63koTB43ntpSTGtEY0rp6/B+Is2LfRDnht8J3yjEKSkaeXzfeLl3cET/CG2iVMkQWY
         T1EJIL3C4w0nG002jEgpkIHPYI2A9SA30F3V4GhtX4nEnM17DdZQiNXZaywv190hRF1q
         6EDskuVcc7R6/0Q5/C6Jyani+axlVZtol2iO6c7soqfgPzc4GBg5YjtBNnsyMiKKMC3s
         nC9g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=YyYM6wiO;
       spf=pass (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=devnull+j.ne.posteo.net@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by mx.google.com with ESMTPS id 46e09a7af769-7289df4e12fsi2790019a34.233.2025.02.26.06.17.32
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Feb 2025 06:17:32 -0800 (PST)
Received-SPF: pass (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 2F8A75C7008;
	Wed, 26 Feb 2025 14:16:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B64EAC4CEEB;
	Wed, 26 Feb 2025 14:17:31 +0000 (UTC)
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD84DC021B8;
	Wed, 26 Feb 2025 14:17:31 +0000 (UTC)
From: =?UTF-8?Q?=27Jonathan_Neusch=C3=A4fer_via_B4_Relay=27_via_USB_Mass_Storag?=
	=?UTF-8?Q?e_on_Linux?= <usb-storage@lists.one-eyed-alien.net>
Date: Wed, 26 Feb 2025 15:17:26 +0100
Subject: [usb-storage] [PATCH v2 4/9] usb: storage: datafab: Use const for
 constant arrays
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Message-Id: <20250226-misc-const-v2-4-ab655a4a29cc@posteo.net>
References: <20250226-misc-const-v2-0-ab655a4a29cc@posteo.net>
In-Reply-To: <20250226-misc-const-v2-0-ab655a4a29cc@posteo.net>
To: Alan Stern <stern@rowland.harvard.edu>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Jonathan_Neusch=C3=A4fer?= <j.ne@posteo.net>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1740579450; l=2349;
 i=j.ne@posteo.net; s=20240329; h=from:subject:message-id;
 bh=5889APtKFFab054l3Ee3spnWaj/UxBWmua1IlElw8Hk=;
 b=AU338qvvEAePEg9jLLeMUgQzbkLqosqROpA/Ngu4KxLu0N+nAlUKqOim3VKzHIX3mqqaxeZI3
 G8p/zLIP7eqDxP/YhPj6atkVfpOeIsNmgqt3iUYzyhUsbrC2t/R0+9l
X-Developer-Key: i=j.ne@posteo.net; a=ed25519;
 pk=NIe0bK42wNaX/C4bi6ezm7NJK0IQE+8MKBm7igFMIS4=
X-Endpoint-Received: by B4 Relay for j.ne@posteo.net/20240329 with
 auth_id=156
X-Original-From: =?utf-8?q?Jonathan_Neusch=C3=A4fer?= <j.ne@posteo.net>
Reply-To: j.ne@posteo.net
X-Original-Sender: devnull@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=YyYM6wiO;       spf=pass
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

Signed-off-by: Jonathan Neusch=C3=A4fer <j.ne@posteo.net>
---

V2:
- new patch
---
 drivers/usb/storage/datafab.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/usb/storage/datafab.c b/drivers/usb/storage/datafab.c
index bbfa2398b17036f431c0692bbf794bdb01d68cdf..9ba369483c9b36c2f662749c32b=
f81b525ae897f 100644
--- a/drivers/usb/storage/datafab.c
+++ b/drivers/usb/storage/datafab.c
@@ -319,7 +319,7 @@ static int datafab_determine_lun(struct us_data *us,
 	//
 	// There might be a better way of doing this?
=20
-	static unsigned char scommand[8] =3D { 0, 1, 0, 0, 0, 0xa0, 0xec, 1 };
+	static const unsigned char scommand[8] =3D { 0, 1, 0, 0, 0, 0xa0, 0xec, 1=
 };
 	unsigned char *command =3D us->iobuf;
 	unsigned char *buf;
 	int count =3D 0, rc;
@@ -384,7 +384,7 @@ static int datafab_id_device(struct us_data *us,
 	// to the ATA spec, 'Sector Count' isn't used but the Windows driver
 	// sets this bit so we do too...
 	//
-	static unsigned char scommand[8] =3D { 0, 1, 0, 0, 0, 0xa0, 0xec, 1 };
+	static const unsigned char scommand[8] =3D { 0, 1, 0, 0, 0, 0xa0, 0xec, 1=
 };
 	unsigned char *command =3D us->iobuf;
 	unsigned char *reply;
 	int rc;
@@ -437,16 +437,16 @@ static int datafab_handle_mode_sense(struct us_data *=
us,
 				     struct scsi_cmnd * srb,=20
 				     int sense_6)
 {
-	static unsigned char rw_err_page[12] =3D {
+	static const unsigned char rw_err_page[12] =3D {
 		0x1, 0xA, 0x21, 1, 0, 0, 0, 0, 1, 0, 0, 0
 	};
-	static unsigned char cache_page[12] =3D {
+	static const unsigned char cache_page[12] =3D {
 		0x8, 0xA, 0x1, 0, 0, 0, 0, 0, 0, 0, 0, 0
 	};
-	static unsigned char rbac_page[12] =3D {
+	static const unsigned char rbac_page[12] =3D {
 		0x1B, 0xA, 0, 0x81, 0, 0, 0, 0, 0, 0, 0, 0
 	};
-	static unsigned char timer_page[8] =3D {
+	static const unsigned char timer_page[8] =3D {
 		0x1C, 0x6, 0, 0, 0, 0
 	};
 	unsigned char pc, page_code;
@@ -550,7 +550,7 @@ static int datafab_transport(struct scsi_cmnd *srb, str=
uct us_data *us)
 	int rc;
 	unsigned long block, blocks;
 	unsigned char *ptr =3D us->iobuf;
-	static unsigned char inquiry_reply[8] =3D {
+	static const unsigned char inquiry_reply[8] =3D {
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
ien.net/d/msgid/usb-storage/20250226-misc-const-v2-4-ab655a4a29cc%40posteo.=
net.
