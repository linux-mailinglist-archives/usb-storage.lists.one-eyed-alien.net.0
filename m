Return-Path: <usb-storage+bncBCD353VB3ABBBKFEQ67AMGQEG42Q52Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf46.google.com (mail-qv1-xf46.google.com [IPv6:2607:f8b0:4864:20::f46])
	by mail.lfdr.de (Postfix) with ESMTPS id 178FAA49CD9
	for <lists+usb-storage@lfdr.de>; Fri, 28 Feb 2025 16:11:38 +0100 (CET)
Received: by mail-qv1-xf46.google.com with SMTP id 6a1803df08f44-6e867ab3537sf39492536d6.0
        for <lists+usb-storage@lfdr.de>; Fri, 28 Feb 2025 07:11:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1740755497; cv=pass;
        d=google.com; s=arc-20240605;
        b=Us4SrR9mDwZj6p7tQImYW+9Xfv18fAazedJvTlGmZ3m1srky0RqZzBhf1jHQv7E9oQ
         sLgght+ikP6U5K2tUS3+Z669ioUTb/8ukWJyAXAWiTaXgsBtCRZHmX2hdXfrD3rewd5N
         w+WvQA6Vab1ttrcmI7hZXD3s5MFy3gTZb7RsEba3oWpDxcb5ha6XWGfBSIGjLUMfr37Q
         6B8M4WUIY8xtkqPPnQPiJvmwY9mra7WyCxPRSYSpfo9K4qUlzC6g9MF5ih9MBKvoXcM4
         MKIPXV96mlixkJIWQ3eZkIlF/3IW9a2elU6xJIDoJDzHlJhdOlbOHabliJUDwarPpf5/
         t9/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:in-reply-to
         :references:message-id:content-transfer-encoding:mime-version
         :subject:date:from:dkim-signature;
        bh=B7Yrac/GOnB4tyqAn7Of7nHFRU2cU9qL5reG0v3s6eU=;
        fh=AmhlCGL+EUCMs2Eoi311NZcuBT4iIejrhQKsQU5zmz0=;
        b=fFjkr/w0dgKi5pxBobyCC+9akSkxIAhP97gmiTB/mJ9yi8cKPK80FZKECcgfmdu/ZB
         6JXfIuA44ic6zJUicuOcFBIB7/WELc0SpQTCLGdA7C6UqHHEXj/zlWhbDemRTreZj+tp
         fc3iGYz4M7WXLqusMHBxAlqmEoOoIuLKu2C5mbGGa5vrU94QEPAtbEo6KeVIwcxOZdEe
         jxXflJDma8sxYalFqZT1Ik+XE3kUniGD7Se7LOXHzKgSJzlmaeQFXfFOxBKKZFdlG3OE
         Jod0P8KeU5JKNd6ku0CkqKwsFhGmRv7/aoMNJh1zIkR/JMA/WQZZVbCt+fQql4/F6m1I
         R02Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=AtM7GyPw;
       spf=pass (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=devnull+j.ne.posteo.net@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1740755497; x=1741360297; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:reply-to:cc:to:in-reply-to:references:message-id
         :content-transfer-encoding:mime-version:subject:date:from:from:to:cc
         :subject:date:message-id:reply-to;
        bh=B7Yrac/GOnB4tyqAn7Of7nHFRU2cU9qL5reG0v3s6eU=;
        b=YHUR3Zew2UTKtOeF+3qM3btsiXnb4+dXr+zYzaVYEpnx7pf9BptR8QI99b0nGC0mDG
         9OwKIev0k5ltVTsycQgtOBB2PpaE6BvhGi7+YhjCL7Y12aRR9aw6kWFY6v3p+OJ0E4GH
         adShbl2fPhLHVaet1x4EjTapy5J6qwizVnrqg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740755497; x=1741360297;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:reply-to:cc:to
         :in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-beenthere:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=B7Yrac/GOnB4tyqAn7Of7nHFRU2cU9qL5reG0v3s6eU=;
        b=I1/NSLpKKZJMy+NYBO/3mWZy/pGJ1zJxb0Z7hCh1yUjPAQ+/BLxKWRimF3aX+zZDTn
         LQafm7bVTAxXtOSYsYUUT+NC5gFiFK2Gsm9zlCSDFbyfwyHYWEmPwFNKCxI8+g0G5dPo
         vgkASi0lpUtgW/NiAUmV8VyXwv0dmWI/13oVEMe+4tu56eZ1ZYxXa6DGKd4+yy/0iMhx
         8nT2iTT1oKRYd0bK8gLvup+csuU6WgP27ac0PDPDx7cN+drcr7NUpPNdQ6oNK0FewDEi
         axaZk9HFlHQdHmxRQCZrnBdPA8X8YIxgkLX71UVMPjFANjcG/ZDCIeSU/abNBoatyJoS
         OdpA==
X-Forwarded-Encrypted: i=2; AJvYcCV90RrdRK4WnAsF1a4WmSieiQyA2ocEYjGc3LRGmgB59iRV1p2zBpEkym1j4+HHOm0FgwU9mw==@lfdr.de
X-Gm-Message-State: AOJu0YycOM1rOLW+nBTJ3mKYmU7+qqaYzPn48qlYDXPVVGejoCzAdd5x
	MBj/4AHgpFVS+gFher/u+HIiEVAxe/EYbOTIJ+O7fp5I0llJv+3gmJoXp8Rq4Rk=
X-Google-Smtp-Source: AGHT+IGJuG5ZvCRykAln39yxT1R2YHpMT4UDIj3W47XuxbzGzzqY2iM//cF9i/OWBO8gJJfOBz7v4Q==
X-Received: by 2002:ad4:5f08:0:b0:6e6:6699:7e58 with SMTP id 6a1803df08f44-6e8a0c88f49mr48326156d6.1.1740755496807;
        Fri, 28 Feb 2025 07:11:36 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=Adn5yVEhIrreolH6DMtyMalU/i64WCfvSbaajvyRxZV+/A2WUA==
Received: by 2002:ad4:4507:0:b0:6d8:b1cf:a07d with SMTP id 6a1803df08f44-6e8956811c5ls17656886d6.2.-pod-prod-02-us;
 Fri, 28 Feb 2025 07:11:36 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCULyrwxpS83rHuMaBj0Qy9Ll5fAiHpsYNHFavhqcxvzjLafm7c2oLnFtLmDvvYGMk4FZ89rbh4Vh57XaA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6214:ac3:b0:6e8:9866:73a8 with SMTP id 6a1803df08f44-6e8a0d11099mr56199546d6.20.1740755495928;
        Fri, 28 Feb 2025 07:11:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1740755495; cv=none;
        d=google.com; s=arc-20240605;
        b=YeUFohXmMsqh42RR0j9QnnI8xtOt8rKY6hipRk23g3UAW4tYwFVpnptvmUcMYa7wfw
         v4+EJARHrOyVksL4X1q7hGNwr1fNqCeqAFf1zmPdZNqFup6pB0adyYvTqJdujsAg56b9
         M0ak3tMmm3DdvWZofWDsu7TpWizb2Xj3GF06xYXeIdPzlCUDij6/KSCNYsreeG/T0XwD
         I8lNt3Ydqa7E2QHHrM7Tjnj7+JavKn1hxTb4jxJqb1BknxlmtDvcwdvD1EIYtEYSP8rb
         jDk6873v9WMEvqgetNm2WqgYeVcrJhOEeVUVe/VkQ04t2hrPUh4JebWPWOoKlAlvkqJf
         Qb/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=reply-to:cc:to:in-reply-to:references:message-id
         :content-transfer-encoding:mime-version:subject:date:from
         :dkim-signature;
        bh=yzRuDTxY0DY8Neq5zCEogj2azPLM4mVFw8UNtTW0qGI=;
        fh=t85edx+sQ1Skfp7ZeTpNIH3lUx4BfFwBq5zypEnFHfI=;
        b=FDCB/kMZUjNdP9mfI6VNkM575YNgvWLiMdRhPX47O1ErAfR0x+sBj944jSfwtt447y
         RZsgV+ovELQObYOEzvlIYw1WC9OFROo6XUfmyF5+0NKTvy3LaKyAf0+OKbmq88eHxOpP
         /auMpY3P+iypkm9rzmAmqt9H8anmW8iaxkMPtuldbSQHwsWPKgxE+Pu7YItiLCern5fS
         SgJFg6u/6E4EIdcY++8W0T463OTgdDW45pzGwpPyDKFPUiEVl6EjKyFTT3q6CeiP86A6
         J7DZrhgBTMURem/r/MNHJlUICSghHblUJZCbI129L6PcZIqN7+Z1TX3Fto00e5m0OG1N
         FLXg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=AtM7GyPw;
       spf=pass (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=devnull+j.ne.posteo.net@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [139.178.84.217])
        by mx.google.com with ESMTPS id 71dfb90a1353d-5234c00e3ccsi891573e0c.119.2025.02.28.07.11.35
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Feb 2025 07:11:35 -0800 (PST)
Received-SPF: pass (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates 139.178.84.217 as permitted sender) client-ip=139.178.84.217;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 992D55C66C8;
	Fri, 28 Feb 2025 15:09:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 16931C4CEEB;
	Fri, 28 Feb 2025 15:11:35 +0000 (UTC)
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0FC97C282C1;
	Fri, 28 Feb 2025 15:11:35 +0000 (UTC)
From: =?UTF-8?Q?=27Jonathan_Neusch=C3=A4fer_via_B4_Relay=27_via_USB_Mass_Storag?=
	=?UTF-8?Q?e_on_Linux?= <usb-storage@lists.one-eyed-alien.net>
Date: Fri, 28 Feb 2025 16:11:22 +0100
Subject: [usb-storage] [PATCH v3 7/9] usb: storage: sddr09: Use const for
 constant arrays
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Message-Id: <20250228-misc-const-v3-7-09b417ded9c4@posteo.net>
References: <20250228-misc-const-v3-0-09b417ded9c4@posteo.net>
In-Reply-To: <20250228-misc-const-v3-0-09b417ded9c4@posteo.net>
To: Alan Stern <stern@rowland.harvard.edu>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Jonathan_Neusch=C3=A4fer?= <j.ne@posteo.net>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1740755487; l=2527;
 i=j.ne@posteo.net; s=20240329; h=from:subject:message-id;
 bh=l+RAY2RPsx/JPY4RJUMnd+IPm3/INCAlkSXItxmAg4Q=;
 b=6WBB8ETU477ruMo1xN/6W31d5OrSbxNiYQANwHrc/DsmaKLwdBrF+DRVOFoMu9N0t3v79sAzw
 fcvHCUvcTgzCwytQJQ6Jy3SAAwJsxM9BFHnDSv5ViAJOp4K8plvf6Z9
X-Developer-Key: i=j.ne@posteo.net; a=ed25519;
 pk=NIe0bK42wNaX/C4bi6ezm7NJK0IQE+8MKBm7igFMIS4=
X-Endpoint-Received: by B4 Relay for j.ne@posteo.net/20240329 with
 auth_id=156
X-Original-From: =?utf-8?q?Jonathan_Neusch=C3=A4fer?= <j.ne@posteo.net>
Reply-To: j.ne@posteo.net
X-Original-Sender: devnull@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=AtM7GyPw;       spf=pass
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

Declaring data as const makes it easier to see what's going on, and can
prevent unintended writes through placement in a read-only section.

Signed-off-by: Jonathan Neusch=C3=A4fer <j.ne@posteo.net>
---

V3:
- elaborate why const is a good idea

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
ien.net/d/msgid/usb-storage/20250228-misc-const-v3-7-09b417ded9c4%40posteo.=
net.
