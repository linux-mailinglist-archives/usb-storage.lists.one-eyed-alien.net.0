Return-Path: <usb-storage+bncBC6YXBM674LBBZEMZ3CAMGQEVV4SEMI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-lj1-x247.google.com (mail-lj1-x247.google.com [IPv6:2a00:1450:4864:20::247])
	by mail.lfdr.de (Postfix) with ESMTPS id C04CDB1C9EA
	for <lists+usb-storage@lfdr.de>; Wed,  6 Aug 2025 18:44:28 +0200 (CEST)
Received: by mail-lj1-x247.google.com with SMTP id 38308e7fff4ca-33234172d73sf129531fa.3
        for <lists+usb-storage@lfdr.de>; Wed, 06 Aug 2025 09:44:28 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1754498662; cv=pass;
        d=google.com; s=arc-20240605;
        b=Zpgyt6BY6wdNSoyhicnlQIBCRdtEv1RAe1xu5hmzIbyKDBSHS2DopJu1y1rXiyDqNt
         05Rnymdsunk4NJSZUhgZBqn8qTXjnnN4HSGnUDFmhgMJoSamGI1kmEMqiQNKMON6IAmh
         q4Utw1rlLNcc+cTmotsNaZV5TkQFnxs1r6Vpy7HX1uHJtZiaw8YA623b4KCKNCbttXQl
         8iTeLG5pCsonKlMIRhAamNj6SfkU79Wgmk/4aU5BYus55HLDgoLo8HIY1UhZg7J2+eH9
         pmPt6A6y+K5r5xSTXjDinqg5jLBtgZ/SiGQiNhq5wJjvwGk6sgRW7lgfYdIgfZfKxGpz
         JvBQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=fB/ZkKSjCNSxWL0fdXjaL3YKIi5mXbBg7ANhKqPpCgg=;
        fh=uyYUdgCL4p4mP0eQgc+2fG1+Sxf5XTSu7udSBXQxZiA=;
        b=jM0vRYhCtmjsaCqnXeQtcNK+zCVa1q2LywzUiy86UCcpiUNoCHtpDtO/vO9x2zhydJ
         Ujk8l/hc0NxBfBKmyUmJf7bclnX9gtX0nl+dIz1R6bx3XpLPzQFpBAUTtL9icFhLmQZZ
         Emte/eXkoJgG9bzrTji473uvnlg/g/mphxUl26K3Kgbv92kXQMRcAeVkbm7wUBNCk+h9
         WcEPNU9fXaqtiJ9ctFnc4sZUX60KLHP2xoFt1J9iSQiP9Xdw/UspbUPUoYhC829FyrYt
         lkMcUVHolskZ5+/5k+f+iSHKJt0ySpbNrmdDDzxDhJQwDUS7XyWge7cpCCe8qg4emQP/
         Hsjw==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@murena.io header.s=mail2 header.b=oQdWIakC;
       arc=pass (i=1);
       spf=pass (google.com: domain of mael.guerin@murena.io designates 2a01:4f9:4b:5387::2 as permitted sender) smtp.mailfrom=mael.guerin@murena.io;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=murena.io
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1754498662; x=1755103462; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fB/ZkKSjCNSxWL0fdXjaL3YKIi5mXbBg7ANhKqPpCgg=;
        b=O5KYebHhruwEBylEQ2VN5RAN0WPOUaJmB8+uwO0uFvX9C3fpZN6cF/xQP07KT3Xc37
         rAlsCv9dDlfsiOJ2+377XkmWWPfbe6/O1Jtk+JoUmOiuLSNosIOw8A67cTeifVDSTAds
         QvBwVAGlpohEB6cynYeGy6DufX2cXZ7BU8aNs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754498662; x=1755103462;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fB/ZkKSjCNSxWL0fdXjaL3YKIi5mXbBg7ANhKqPpCgg=;
        b=cx7zZKCJ126ZJg6Tp09Br6brQVVU3Tn/8CQUD48QiCqexztWjMgfDGvGXa2zNIsdPn
         EOc6jUzNbX8fgrqdln1ERXQ0CJTcwjewNIXc4XiQOVSnIflTnWoDX8DlJ2R/5eBwPkeJ
         +hXN+kRY8Igoc2W3G4NIzAuF1RYCrZIdjbIntiJNKzcT3VKvBegNBUCtkC1LflEflqri
         C9BlFz66D83xDy1l2ciIWYFIK/4Mo6ZibIarVcC8RNdwZtCWQaGFksnNsZzN6QhaEM+r
         8gHGdRwPjvMTZAiPNq2Na8QoZFKcwuurRycMysh0B4+eSbMRfeT5MGJEBt0VgoJGEkCa
         dK9g==
X-Forwarded-Encrypted: i=3; AJvYcCXrgHPWZDgoL64qoLnq7A8qRVrtJzjEncOnysqavyMqQ7zGN2ESgcFtXAW9N8COy9UiDQX6NA==@lfdr.de
X-Gm-Message-State: AOJu0Ywaxlen/ZNZOoh0vIexFiF5BbOf15zifKOI5rkvOPIxJTvaxDZf
	SHuH0kzaI6ixYLxyyOm5MlOvblQsjYxzXb2rR3W9mGjmzkygxBFsLi70OgBonwXMZSk=
X-Google-Smtp-Source: AGHT+IFz0qxXAktgEWhgyhuIxOmBdd7Dmwj6A7FSGoVa6kzTPK5TCdDnBGmDUGrVJOAj2Z3W/JFZDw==
X-Received: by 2002:a2e:a581:0:b0:332:612b:6f49 with SMTP id 38308e7fff4ca-333813d0eb3mr11518591fa.29.1754498661418;
        Wed, 06 Aug 2025 09:44:21 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AZMbMZfb4pRM3kKtkOcJt1LzNe/wkosIJUNyF+tzUcKo4M2bQQ==
Received: by 2002:a2e:602:0:b0:331:e5a8:6292 with SMTP id 38308e7fff4ca-3338c135770ls166941fa.0.-pod-prod-04-eu;
 Wed, 06 Aug 2025 09:44:18 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCVINm+G60HbcY15HRIegEDnm/BROntX/CLoSnH11mSx2fxwJNoF1uEl9mt2YfC1y+/wfJLFMmuQoJasMw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6512:3d15:b0:553:2e37:6945 with SMTP id 2adb3069b0e04-55caf34c80amr1224922e87.32.1754498658564;
        Wed, 06 Aug 2025 09:44:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1754498658; cv=pass;
        d=google.com; s=arc-20240605;
        b=U3pkCMkM4myFfZtxmyDQwrQ+bdVBHAa0OmO3Z/22za4dtgLQhqnGTGf8UPhJmAIsdq
         Oux40ZgsWMQ9eEQDYHwtrJZr27MKw9AwsBpUg60Dz9Zl/x42rlWEnyWizZ6V4ULC5nlg
         WRYLLlJ+T2CUWJXLE62qTdehV7dHZa6pNSgv0d1OJZ4u2b91p1WGtYAemyml6y7NzaLr
         DjK1wGQttPUvt36xrwnsQiRN+yuRKe7WNm4kzhzpCL9n+G/Z7FE95dOKxVk1BDeK7xgU
         b8ihxLeliu8fEK0hIWQphIoq8vtYjzCAmA0kacklWStX14ByXJZCKWXu+AtIab4cQ2La
         3UDA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=7HlsPHu0lunuNuH/+9Lf02QRfkfxBhwZcQROZqbYrBI=;
        fh=trZDlAkUlX5rfkLqdb/8HBKXqg3YpTpf+K2bUWySUaU=;
        b=GgkZoSju01g6FG6ryrOmpQNd91zpLaPZ4rLnniLXVEl4h1LNPijGz9R67/VB9VlfXm
         u/XkupJioxKHqN8hXnrHHv3clao1JhcULykhhqbjNsI6b/p8s0qJnzKBrtPfr6G+uOxQ
         7ze1w3rK8btH0xWin/zHPOW4bGNfLSUqshnNbAu8dnGu/u+lYSyYmevknqbtj3I02+jN
         uOCe2/3KQaJB+PdF7tubnKq3TJ0tFbLZZREkeMjM2evGz/1v67uqM2/UETETAKa8dBy+
         YzSKnOwOJm15Gs1oJL+JY8vCC+hiQeXsk04gbSr5zts40zin85/UTrv6cESLmH2qAzdw
         Qhyw==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@murena.io header.s=mail2 header.b=oQdWIakC;
       arc=pass (i=1);
       spf=pass (google.com: domain of mael.guerin@murena.io designates 2a01:4f9:4b:5387::2 as permitted sender) smtp.mailfrom=mael.guerin@murena.io;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=murena.io
Received: from mail2.ecloud.global (email2.ecloud.global. [2a01:4f9:4b:5387::2])
        by mx.google.com with ESMTPS id 2adb3069b0e04-55b889c8f3bsi4097277e87.600.2025.08.06.09.44.18
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Aug 2025 09:44:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of mael.guerin@murena.io designates 2a01:4f9:4b:5387::2 as permitted sender) client-ip=2a01:4f9:4b:5387::2;
Received: from authenticated-user (mail2.ecloud.global [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail2.ecloud.global (Postfix) with ESMTPSA id 11C49721093;
	Wed,  6 Aug 2025 16:44:17 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=murena.io;
	s=mail2; t=1754498657;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=7HlsPHu0lunuNuH/+9Lf02QRfkfxBhwZcQROZqbYrBI=;
	b=Li78kQ0lVjE/v5fiOaRgM5oUJe6IkWWHv2Fjt5v3huf4RD3PT5kC5S9+jd9UlKaea9Utut
	So+rLQDvEWRqagPp8LwQz2vul5Lp8A1/lno6ZMquPOQLF27Qqe6+FtcMezxrcRcdrVxFG0
	AEIGR5534BdVDkdJOMdFpJ5SuS8Sw+A=
ARC-Authentication-Results: i=1;
	mail2.ecloud.global;
	auth=pass smtp.mailfrom=mael.guerin@murena.io
ARC-Seal: i=1; s=mail2; d=murena.io; t=1754498657; a=rsa-sha256; cv=none;
	b=YQbiqqlaghWJNmPAEeEhSrQIQIzkq+07MjPirDhai3vj16pjNR7TwuykhiNN0mmTsYx841
	65kt+wi+JSrwbIgymnHTuy8oIDan4zc5oMG8HT2LhFOkMjfaZ26atErLUykDD4wL8i0DoV
	gN+fvv5NdneQDlv2mTQ4nV5qTHfSDJQ=
From: "'Mael GUERIN' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org
Cc: Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Mael GUERIN <mael.guerin@murena.io>
Subject: [usb-storage] [PATCH v2 1/1] usb-storage: Add unusual-devs entry for
 Novatek NTK96550-based camera
Date: Wed,  6 Aug 2025 18:44:03 +0200
Message-ID: <20250806164406.43450-1-mael.guerin@murena.io>
In-Reply-To: <20250806134722.32140-2-mael.guerin@murena.io>
References: <20250806134722.32140-2-mael.guerin@murena.io>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: mael.guerin@murena.io
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@murena.io header.s=mail2 header.b=oQdWIakC;       arc=pass (i=1);
       spf=pass (google.com: domain of mael.guerin@murena.io designates
 2a01:4f9:4b:5387::2 as permitted sender) smtp.mailfrom=mael.guerin@murena.io;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=murena.io
X-Original-From: Mael GUERIN <mael.guerin@murena.io>
Reply-To: Mael GUERIN <mael.guerin@murena.io>
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

Add the US_FL_BULK_IGNORE_TAG quirk for Novatek NTK96550-based camera
to fix USB resets after sending SCSI vendor commands due to CBW and
CSW tags difference, leading to undesired slowness while communicating
with the device.

Please find below the copy of /sys/kernel/debug/usb/devices with my
device plugged in (listed as TechSys USB mass storage here, the
underlying chipset being the Novatek NTK96550-based camera):

T:  Bus=3D03 Lev=3D01 Prnt=3D01 Port=3D00 Cnt=3D01 Dev#=3D  3 Spd=3D480  Mx=
Ch=3D 0
D:  Ver=3D 2.00 Cls=3D00(>ifc ) Sub=3D00 Prot=3D00 MxPS=3D64 #Cfgs=3D  1
P:  Vendor=3D0603 ProdID=3D8611 Rev=3D 0.01
S:  Manufacturer=3DTechSys
S:  Product=3DUSB Mass Storage
S:  SerialNumber=3D966110000000100
C:* #Ifs=3D 1 Cfg#=3D 1 Atr=3Dc0 MxPwr=3D100mA
I:* If#=3D 0 Alt=3D 0 #EPs=3D 2 Cls=3D08(stor.) Sub=3D06 Prot=3D50 Driver=
=3Dusb-storage
E:  Ad=3D81(I) Atr=3D02(Bulk) MxPS=3D 512 Ivl=3D0ms
E:  Ad=3D02(O) Atr=3D02(Bulk) MxPS=3D 512 Ivl=3D0ms

Signed-off-by: Mael GUERIN <mael.guerin@murena.io>
---
Thanks for your review and your advice. Here's the updated version of the
patch with a correct description as well as the unusual_devs.h file sorted
correctly.

 drivers/usb/storage/unusual_devs.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/usb/storage/unusual_devs.h b/drivers/usb/storage/unusu=
al_devs.h
index 54f0b1c83..bee9f1e80 100644
--- a/drivers/usb/storage/unusual_devs.h
+++ b/drivers/usb/storage/unusual_devs.h
@@ -934,6 +934,13 @@ UNUSUAL_DEV(  0x05e3, 0x0723, 0x9451, 0x9451,
 		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
 		US_FL_SANE_SENSE ),
=20
+/* Added by Ma=C3=ABl GUERIN <mael.guerin@murena.io> */
+UNUSUAL_DEV(  0x0603, 0x8611, 0x0000, 0xffff,
+		"Novatek",
+		"NTK96550-based camera",
+		USB_SC_SCSI, USB_PR_BULK, NULL,
+		US_FL_BULK_IGNORE_TAG ),
+
 /*
  * Reported by Hanno Boeck <hanno@gmx.de>
  * Taken from the Lycoris Kernel
--=20
2.50.1

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-al=
ien.net/d/msgid/usb-storage/20250806164406.43450-1-mael.guerin%40murena.io.
