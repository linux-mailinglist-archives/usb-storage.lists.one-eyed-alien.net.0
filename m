Return-Path: <usb-storage+bncBCD353VB3ABBB7GE7S6QMGQERX7242Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ot1-x348.google.com (mail-ot1-x348.google.com [IPv6:2607:f8b0:4864:20::348])
	by mail.lfdr.de (Postfix) with ESMTPS id 44D47A46220
	for <lists+usb-storage@lfdr.de>; Wed, 26 Feb 2025 15:17:34 +0100 (CET)
Received: by mail-ot1-x348.google.com with SMTP id 46e09a7af769-7273b4db914sf6303493a34.0
        for <lists+usb-storage@lfdr.de>; Wed, 26 Feb 2025 06:17:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1740579453; cv=pass;
        d=google.com; s=arc-20240605;
        b=iX9kIUom8l3SkdI4Hf5Qglw/itKn+5pb/ZZwV+A9Tx35DZe+mwo6ttX6por0Oo3tBq
         vbj4vXZRduar4sPmpqEpG1ISXYBP6mID6l6eooZFeYtW2PJr08ekQTmbcPZ+2wmT+FJT
         38v2v6Tj5OhzrA1f87/QxCU6NQS6cbyjzlRetsswuC3cVHJFlBt35peEMXpfx3BNk/PT
         keTsy+y/m9iYqvLl6DBQ18DLqllDbLlFt3RXgHRlkklvn0Cu8UlDiw2oUWaw6JypUOyi
         VJvsj+2JzbfG7bJnvp1btAeDxjTluI2eEz/Jfu3302qsojxUr/qUCX0KaopFYE0GYQ4Z
         VJwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:in-reply-to
         :references:message-id:content-transfer-encoding:mime-version
         :subject:date:from:dkim-signature;
        bh=bIOQFfjmtB0Xku1QpG+lAEPePp4CPbO3uC1cCoonHgA=;
        fh=obXDlCgYr2ROUZ6ySaJ77nmnR23SeW8RudVou49fD+c=;
        b=REUYn8gGR69AkZ4VqcVy+WDSHeCdrj73W5HzY/7H1biXUo6yT9lpCdUkVR1M2SEaxF
         oojz5dIiRCg31yCjfJY/iW+OvaJNjFUlWF3nURDsBxGGkUis2/mrDI98Xw33dPdPxN1f
         /Es3vZJspAs6qXEQ4WpRPLlNkgWxzeM9niO0kZygcVCszjNteQ6jAyWJLnbkB5BEkAhL
         oKFpMOloh7fR/eYoDxsiVBtoXhlXr90uB0sK6AKrv7HcVqtzMGuTyDeDdBAxg6q39E0X
         2sNbwOaCE6It95c/Ok1Gebg+9APEcPPN2eLENM6l8VIbTN6YsUAmz75k7rLgdwHRveCX
         8glA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=pBBx+spe;
       spf=pass (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=devnull+j.ne.posteo.net@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1740579453; x=1741184253; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:reply-to:cc:to:in-reply-to:references:message-id
         :content-transfer-encoding:mime-version:subject:date:from:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bIOQFfjmtB0Xku1QpG+lAEPePp4CPbO3uC1cCoonHgA=;
        b=eAkc/5vwNtcEWROp7AH8PK+Hao9Ukl2SMiSKxaeUrZ68ePWWk11eJCCAkhEZtI0dw3
         w/gEg6LyK8FlROVEa+w2GmVFExJFXMeNAvUbx4kSqONU6cP/MpZ5oR56j/z0cUNLCzR/
         kJNGeN1/vnTFuzMjl3Brpj3Bt65QRyhaJzqPk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740579453; x=1741184253;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:reply-to:cc:to
         :in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-beenthere:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=bIOQFfjmtB0Xku1QpG+lAEPePp4CPbO3uC1cCoonHgA=;
        b=QRJWjJv/UpMsyJhSDKDl07GNzm89iPDQDU4ZLX83GfzJ45xz3u00bIlvBBlmUYIoee
         Mivz/rf5LsbdPz8jR/wlFtaXoY4EFsp6G0/StIM3BKe9iLhyhUIXw8mlCCWqZNipzdQb
         5k3HXmY2ch1DyYTofGsw/4IwbxXFWkArZq6eTgvAS2TnVDDZdG5NvRPO9PUe1f9/7xY0
         vnBLPR5mPuLagJ4GxHMWo0ndoPyTZcz6bq6d0F2lxYh5J35NbKMLIS5BuiL3nrHU6WIA
         tQhymVbdpN/cYXk/cdqulxCwksjcQuPPqnsQkZsPV3VCn8WRWuqtUvZjlXqGuX+U7AqC
         q0tA==
X-Forwarded-Encrypted: i=2; AJvYcCXnnddkinHB+hgOX3aMT6Z8s9k6sttojjIDcvH0OSJeB1lg/2tOuk8nNr4/GKBooZ3BFK2o+Q==@lfdr.de
X-Gm-Message-State: AOJu0Yw5J9uP0UYUm+YmNCv+OgLUjcTR5CmmmYrF8NT+Bm2EQYHgrYSH
	GLtghmfKXqI0WFQIlrQxeG0nEabo/TshDXAhhUeYEs4bnuf/oJtvhXl5djnhX4o=
X-Google-Smtp-Source: AGHT+IGO/k0z/lH+/W5nLeI4GFlEikdxsfhWV5rFVf//jW2G5nOzCFKP3GEbuuisBvz0oJTz3C+2mA==
X-Received: by 2002:a05:6808:1903:b0:3f4:bc5:d488 with SMTP id 5614622812f47-3f540fd3e66mr4107524b6e.33.1740579453116;
        Wed, 26 Feb 2025 06:17:33 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=Adn5yVFCUeSPLMsBIevImsATq+6CqWbl8QvsA9Ohs/yl4eynPw==
Received: by 2002:a4a:eacb:0:b0:5fc:7c22:82bb with SMTP id 006d021491bc7-5fe93d34e1fls718617eaf.1.-pod-prod-05-us;
 Wed, 26 Feb 2025 06:17:32 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUoy70qmngZPYFrrLj9cYr/FrOyvwFXf0jIVaU4Ffb/O5aq4WK2wc5S1RPGbgO9nvm5syfaJhO5JN+eug==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6830:6214:b0:727:4494:3d5f with SMTP id 46e09a7af769-7289d064dcemr4871257a34.0.1740579452182;
        Wed, 26 Feb 2025 06:17:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1740579452; cv=none;
        d=google.com; s=arc-20240605;
        b=HcsEVWWiuAR2ERo+IC/RwRdwfF0+8C1IfmuLSrp6ylxu0kPdNedfTINEZzhX7TMQun
         om7Fvf+o4eg4x6FyDT7lQY5Z/08vYyDkcl8Iuhm8zf2nvNTSx1KAVAvk5TD3ss/XqjM8
         5WvG9ulwI87vf2esbXLXnwD1YkBGdU1rJecNxQpwcoLGPASNA7SAlPtVaeACC3WymBjn
         Ur5noFf0RlT6K5DzPczUbCEbl4ElgSUdAJa3iasrceP5RKofLC+6MdrCgAnZwR5kcAMR
         uEXw/J4rBcvqYX9Fhva0hdGTLOfNOaJWWjQ4CwjmNGWJGVhr67kvH/mc6J6kq5CpbJUF
         DjIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=reply-to:cc:to:in-reply-to:references:message-id
         :content-transfer-encoding:mime-version:subject:date:from
         :dkim-signature;
        bh=Udh9qqP2E2okjI+aukD1y0CdqZf1vqxi7qHfbNUjcFw=;
        fh=t85edx+sQ1Skfp7ZeTpNIH3lUx4BfFwBq5zypEnFHfI=;
        b=M1HDeJat/Sfw/n80G90DVBOo1O4srr+uOUpbppuMcAjctgvrt+Jnu/ZEHF0DVT5wcf
         Edu2bi2MCpa5SeMHrBQdScTt7Nz92+iJ+c7QsGeyeOBxHxO8hktMwgWQFEgabLXg9T3C
         C0TDyVPVtT4SVrnvYaZtRS9xx1RFEpKEz6ftF18kJ2dbIpesRvXnnbpwsVSRpyP9qyh6
         Hexbcm8bsbnpOJ4Zm0wM+R5xo1yeXRItwwoJrQVZpfliMM8SzMFBLdQakI+fynv93TqX
         NN1Eo2T2nj/drV7dXEAFxFV99jZiS+vShoxyyD16ObqyDIZYVUpe9Y3lsfkzh96cQDtl
         zK8A==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=pBBx+spe;
       spf=pass (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=devnull+j.ne.posteo.net@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by mx.google.com with ESMTPS id 46e09a7af769-7289df4e253si3114150a34.206.2025.02.26.06.17.32
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Feb 2025 06:17:32 -0800 (PST)
Received-SPF: pass (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 21FB45C6E04;
	Wed, 26 Feb 2025 14:16:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3396C4CEE9;
	Wed, 26 Feb 2025 14:17:31 +0000 (UTC)
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 991B4C18E7C;
	Wed, 26 Feb 2025 14:17:31 +0000 (UTC)
From: =?UTF-8?Q?=27Jonathan_Neusch=C3=A4fer_via_B4_Relay=27_via_USB_Mass_Storag?=
	=?UTF-8?Q?e_on_Linux?= <usb-storage@lists.one-eyed-alien.net>
Date: Wed, 26 Feb 2025 15:17:25 +0100
Subject: [usb-storage] [PATCH v2 3/9] usb: storage: alauda: Use const for card
 ID array
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Message-Id: <20250226-misc-const-v2-3-ab655a4a29cc@posteo.net>
References: <20250226-misc-const-v2-0-ab655a4a29cc@posteo.net>
In-Reply-To: <20250226-misc-const-v2-0-ab655a4a29cc@posteo.net>
To: Alan Stern <stern@rowland.harvard.edu>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Jonathan_Neusch=C3=A4fer?= <j.ne@posteo.net>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1740579450; l=1734;
 i=j.ne@posteo.net; s=20240329; h=from:subject:message-id;
 bh=xAXPKBDwOOBoB15BevA7fkgOtiFU68x7gTE2+hUwyPY=;
 b=xV5Vhk4iWlyer4unDR4p2EIq6gdYddi2WvMjqMUq1gHJvZJs8Ts0KzxzgmSAK2Sa+elAhzkpC
 QDam+rQUI3PAH7RqCGQWhe3XJIL9bR+31UJhZp0QuAsdI33PHVm1cHi
X-Developer-Key: i=j.ne@posteo.net; a=ed25519;
 pk=NIe0bK42wNaX/C4bi6ezm7NJK0IQE+8MKBm7igFMIS4=
X-Endpoint-Received: by B4 Relay for j.ne@posteo.net/20240329 with
 auth_id=156
X-Original-From: =?utf-8?q?Jonathan_Neusch=C3=A4fer?= <j.ne@posteo.net>
Reply-To: j.ne@posteo.net
X-Original-Sender: devnull@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=pBBx+spe;       spf=pass
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

Signed-off-by: Jonathan Neusch=C3=A4fer <j.ne@posteo.net>
---

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
ien.net/d/msgid/usb-storage/20250226-misc-const-v2-3-ab655a4a29cc%40posteo.=
net.
