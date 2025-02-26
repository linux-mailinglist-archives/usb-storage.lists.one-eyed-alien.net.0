Return-Path: <usb-storage+bncBCD353VB3ABBB7OE7S6QMGQEVAG42YI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x45.google.com (mail-oa1-x45.google.com [IPv6:2001:4860:4864:20::45])
	by mail.lfdr.de (Postfix) with ESMTPS id 91926A46226
	for <lists+usb-storage@lfdr.de>; Wed, 26 Feb 2025 15:17:34 +0100 (CET)
Received: by mail-oa1-x45.google.com with SMTP id 586e51a60fabf-2bc78038557sf408744fac.0
        for <lists+usb-storage@lfdr.de>; Wed, 26 Feb 2025 06:17:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1740579453; cv=pass;
        d=google.com; s=arc-20240605;
        b=APyZTiLRoe36g2NmJVTcucosjJAhlvsXijL2u9TjoJOx3TLOAbe9KWuWdQbkryaSai
         Yo6Vv638wSwD/UyqJYHjWnYDTXfXpVg11mxzPsuUKgb+sIFda0ZeSpQMGEuTgE2PDgwn
         c/zzaAPkcZhzFXXOw5KH5+xpIVOFiqfoT0AOcH52SHOoiw7ekTEAFpB5qyeblpGCbKQS
         2pPnobljmBUCmv5WVHpNXnkrLMxR5KCzwis70SgPCPL+IkwRQW1jn3erRfzpNoCWoOU2
         sP2Ogl6dlkr7xbxDwqcFo4wkLY6MaOrXAn4I7SMGf+gvKc2XYU+oo8zM6wZN3JVaEPWz
         Rg4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:in-reply-to
         :references:message-id:content-transfer-encoding:mime-version
         :subject:date:from:dkim-signature;
        bh=Lve+7O08xmxfEmtyZzFkw9WZWebBfmIZMXDH+CBmf5A=;
        fh=qfo3qCjRqkMIOR341RUbv3128u/60MrjpTvCCTIv7PY=;
        b=f5O3eDy/NxeHpqbNLgDGHmU8uESAIHL7vkPhr8g7NantJ90chJbpxUWrN9Cfy4zmdF
         02wu8n65FJKWKiwGFO801YZUpIOIGjkEroXpzMjyf0BrHe7My+hcNQHEIqqkLzCaRk3V
         Nd3Ql7WtzJGhkuYJu/QG0DRZqhowsZtekTFpZjNBmeO0oTeGZn+PFSzBZ9UaQ8LgSfKZ
         x58RSjU4pzcFpv9Ppfo/+DLn2V50AuRx2TXfs2miXXhat8JwvCNhwRFKXCRFGGuikp7h
         igCuQXcXDSYq6MAw3qE2u1tbAb5QR+YUZxdAye8rfESBlOSg2NH+Hr7H3f1NP3AOd+eI
         kMwg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=n6x+Y3e8;
       spf=pass (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=devnull+j.ne.posteo.net@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1740579453; x=1741184253; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:reply-to:cc:to:in-reply-to:references:message-id
         :content-transfer-encoding:mime-version:subject:date:from:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Lve+7O08xmxfEmtyZzFkw9WZWebBfmIZMXDH+CBmf5A=;
        b=dDp4T1QEIDOMKYPn4EukD43gj41kDto/urNGsDbvd6rpOYLHFdzWXMvrxLpyJ/iQyI
         yyKLFwmex1n0KlXZs/3MtIV3XK4e1ZgQkxw8WQAzYn2817U5ULPdtW3UrLnpXD5btwhe
         Ow+4R4A9MbXGG2lFM8iK/73A8LlcW8YfuNs5s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740579453; x=1741184253;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:reply-to:cc:to
         :in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-beenthere:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Lve+7O08xmxfEmtyZzFkw9WZWebBfmIZMXDH+CBmf5A=;
        b=ZGwF7kMIchCvrLv4O/oezRKWyU+irOIbS7QJenI122Vqed9jAztwFodA3S+KA9k8kH
         OmFf8vdVBMV78rFAqw0my4xhMkD1ryNn+N38PhXTNXKldCeBDsfHedmxkBy7cqamOfT4
         8MA6FWKtIZsU7Fi8KslvFVTPRT/5Cw/EBCtoouch4MXDFaQKRtWUluL+l/5KrZoE4rwv
         PE1NOAgfjRz4XUNinp0SZ4h53apqwpU2TomKAjbj50fw/wzJo6kCIJxkTQ95i4emoPvg
         1mJWO6aqsqylDMRMId0JHOpNoofVkNhfGP3ta6VQno4njqT88eGR3dI3wo7MW7U5mD7G
         y1MA==
X-Forwarded-Encrypted: i=2; AJvYcCXk5+zmx5ZJqkeqepqM1HqvKa/Myjqrakpmqs8hiLsvCfGBboEjX/YKTSmkXrViZSHWUVuymw==@lfdr.de
X-Gm-Message-State: AOJu0YwMYpIx0e2sm7f5QHoUZ43wVLsS0xNJOxauFG+t1oFqFZ9kX/qF
	mFTPvdSIbJl1rEMpJPkhmJdVroiUt4tgL1ADqHjImGSJRfJeYKt0edItJlk/CVs=
X-Google-Smtp-Source: AGHT+IFMrc+vwx//LrlnonMAhP/d8E6qdzq0mQk2/IqOsKs+drB0RYfdxm0wPOXFSnstdmHS4hJ6XQ==
X-Received: by 2002:a05:6870:b152:b0:29e:37d7:3f56 with SMTP id 586e51a60fabf-2bd50ff15c5mr5659512fac.12.1740579453225;
        Wed, 26 Feb 2025 06:17:33 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=Adn5yVHkncHxnwS5MQQA3briDIZhZPqnHyt5TZuhBkuI/XAMcg==
Received: by 2002:a05:6870:a90e:b0:2b8:f3e5:a817 with SMTP id
 586e51a60fabf-2bd50bf1d9bls2139340fac.2.-pod-prod-02-us; Wed, 26 Feb 2025
 06:17:32 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUXffO/aW0swkLIyo4zjpquk7LMZ9pJNvCIbXi9IHVRspJbcd5/7BNAJabtD2NdRvFs1tVlzq/Yipoc7w==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6870:5e48:b0:2bc:79c8:f781 with SMTP id 586e51a60fabf-2bd51504ab5mr13744619fac.3.1740579452463;
        Wed, 26 Feb 2025 06:17:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1740579452; cv=none;
        d=google.com; s=arc-20240605;
        b=hJtpw1wsUPERN7ErM4RXgaHyqzIZN5jyghwcPVBHlrZCFIMMfS5UIIkwZ+V9rpy8kj
         Kb7iS+Z+nEDQRry4CNtQr0EJf7sPY4kcFSmAIq5AKuCidRNMQs815wQiBSPeIF4Svk6h
         4i1dqRCAFXmMLhEw2i0Abl9P/HNU/dLsD+g+IDONTI7tYDfirgkvH3PivwCuuA6UBcb3
         JwOJs3Sv9rqUUi9LVLQoTUvnG8pUuiht3cEVASUFzh4H012uDxNOBKzuBz7RZ+J0KByT
         gH/SIxZ47c+YeQAED4eOnBpwxzaU70ibErjV05DwHS8ejmQiUZjKIoTdeG3zUAr49SUD
         zTOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=reply-to:cc:to:in-reply-to:references:message-id
         :content-transfer-encoding:mime-version:subject:date:from
         :dkim-signature;
        bh=rPepjAOnGoWPgSTst3wD5heneobgN1vILU7ycu3BVZA=;
        fh=t85edx+sQ1Skfp7ZeTpNIH3lUx4BfFwBq5zypEnFHfI=;
        b=Cs6Q0RZ5SSXx3QEiTE0801AHV1dMYhKPaizNeCJ61dSHgHsjE4/g0nilsfSycaKyvI
         VnrDqU93J5ibBtk3CtnKVaFmy3IcmNLP9n1lBa/oZ9zk4CRjlJokta2iOXV6tRZFOI0d
         vAZw4ERCSQYk4Zca+g0O059LTDET1lTN3j0dwuCcukK7Tn8AX0BuRZ85RfhKaJggILwL
         +fc+90BORkoQ/O7Mm+ju9+sAwVHb3yU0T07hZbCEdSxH9J8/jaFs51nO0tKEb9UBYB8Q
         ew7dyW3vw9ME+rpjx6F9xTDl+CuK40b1XgNHoQuvKiAWptGsm5VxMyNneprhtce7NtlT
         6ImA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=n6x+Y3e8;
       spf=pass (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=devnull+j.ne.posteo.net@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [139.178.84.217])
        by mx.google.com with ESMTPS id 586e51a60fabf-2c11165b5acsi3179148fac.189.2025.02.26.06.17.32
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Feb 2025 06:17:32 -0800 (PST)
Received-SPF: pass (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates 139.178.84.217 as permitted sender) client-ip=139.178.84.217;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 659DC5C705C;
	Wed, 26 Feb 2025 14:16:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E350DC4CEEC;
	Wed, 26 Feb 2025 14:17:31 +0000 (UTC)
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC020C021B8;
	Wed, 26 Feb 2025 14:17:31 +0000 (UTC)
From: =?UTF-8?Q?=27Jonathan_Neusch=C3=A4fer_via_B4_Relay=27_via_USB_Mass_Storag?=
	=?UTF-8?Q?e_on_Linux?= <usb-storage@lists.one-eyed-alien.net>
Date: Wed, 26 Feb 2025 15:17:29 +0100
Subject: [usb-storage] [PATCH v2 7/9] usb: storage: sddr09: Use const for
 constant arrays
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Message-Id: <20250226-misc-const-v2-7-ab655a4a29cc@posteo.net>
References: <20250226-misc-const-v2-0-ab655a4a29cc@posteo.net>
In-Reply-To: <20250226-misc-const-v2-0-ab655a4a29cc@posteo.net>
To: Alan Stern <stern@rowland.harvard.edu>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Jonathan_Neusch=C3=A4fer?= <j.ne@posteo.net>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1740579450; l=2338;
 i=j.ne@posteo.net; s=20240329; h=from:subject:message-id;
 bh=oiy7JMUiNsF7jAMsycKXLX9emEI7I94zOx6UYYuFPIw=;
 b=gx+Ezsp8uEFwYxCFguYAQ7PobyhDzls3okFaCAh+nL8rrv6XFFty+YUMMmwHnb7BhBZh5e4vk
 7dyi9axEobvADVttTncX8A31Uw6xBxvf/GxHsGOxZD9V2rqr3bBRRWn
X-Developer-Key: i=j.ne@posteo.net; a=ed25519;
 pk=NIe0bK42wNaX/C4bi6ezm7NJK0IQE+8MKBm7igFMIS4=
X-Endpoint-Received: by B4 Relay for j.ne@posteo.net/20240329 with
 auth_id=156
X-Original-From: =?utf-8?q?Jonathan_Neusch=C3=A4fer?= <j.ne@posteo.net>
Reply-To: j.ne@posteo.net
X-Original-Sender: devnull@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=n6x+Y3e8;       spf=pass
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

The nand_flash_ids, inquiry_response, and mode_page_01 arrays are only
read, not modified.

Signed-off-by: Jonathan Neusch=C3=A4fer <j.ne@posteo.net>
---

V2:
- new patch
---
 drivers/usb/storage/sddr09.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/usb/storage/sddr09.c b/drivers/usb/storage/sddr09.c
index d21ce3466e25842757b3e278d522c55b7c1f19de..e66b920e99e25c90b581ff1f3ea=
e16ed0cfd903c 100644
--- a/drivers/usb/storage/sddr09.c
+++ b/drivers/usb/storage/sddr09.c
@@ -144,7 +144,7 @@ static inline char *nand_flash_manufacturer(int manuf_i=
d) {
  * 256 MB NAND flash has a 5-byte ID with 2nd byte 0xaa, 0xba, 0xca or 0xd=
a.
  */
=20
-static struct nand_flash_dev nand_flash_ids[] =3D {
+static const struct nand_flash_dev nand_flash_ids[] =3D {
 	/* NAND flash */
 	{ 0x6e, 20, 8, 4, 8, 2},	/* 1 MB */
 	{ 0xe8, 20, 8, 4, 8, 2},	/* 1 MB */
@@ -169,7 +169,7 @@ static struct nand_flash_dev nand_flash_ids[] =3D {
 	{ 0,}
 };
=20
-static struct nand_flash_dev *
+static const struct nand_flash_dev *
 nand_find_id(unsigned char id) {
 	int i;
=20
@@ -1133,9 +1133,9 @@ sddr09_reset(struct us_data *us) {
 }
 #endif
=20
-static struct nand_flash_dev *
+static const struct nand_flash_dev *
 sddr09_get_cardinfo(struct us_data *us, unsigned char flags) {
-	struct nand_flash_dev *cardinfo;
+	const struct nand_flash_dev *cardinfo;
 	unsigned char deviceID[4];
 	char blurbtxt[256];
 	int result;
@@ -1545,12 +1545,12 @@ static int sddr09_transport(struct scsi_cmnd *srb, =
struct us_data *us)
=20
 	struct sddr09_card_info *info;
=20
-	static unsigned char inquiry_response[8] =3D {
+	static const unsigned char inquiry_response[8] =3D {
 		0x00, 0x80, 0x00, 0x02, 0x1F, 0x00, 0x00, 0x00
 	};
=20
 	/* note: no block descriptor support */
-	static unsigned char mode_page_01[19] =3D {
+	static const unsigned char mode_page_01[19] =3D {
 		0x00, 0x0F, 0x00, 0x0, 0x0, 0x0, 0x00,
 		0x01, 0x0A,
 		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
@@ -1584,7 +1584,7 @@ static int sddr09_transport(struct scsi_cmnd *srb, st=
ruct us_data *us)
 	}
=20
 	if (srb->cmnd[0] =3D=3D READ_CAPACITY) {
-		struct nand_flash_dev *cardinfo;
+		const struct nand_flash_dev *cardinfo;
=20
 		sddr09_get_wp(us, info);	/* read WP bit */
=20

--=20
2.48.0.rc1.219.gb6b6757d772


--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-al=
ien.net/d/msgid/usb-storage/20250226-misc-const-v2-7-ab655a4a29cc%40posteo.=
net.
