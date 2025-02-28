Return-Path: <usb-storage+bncBCD353VB3ABBBKFEQ67AMGQEG42Q52Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf45.google.com (mail-qv1-xf45.google.com [IPv6:2607:f8b0:4864:20::f45])
	by mail.lfdr.de (Postfix) with ESMTPS id E739DA49CD5
	for <lists+usb-storage@lfdr.de>; Fri, 28 Feb 2025 16:11:37 +0100 (CET)
Received: by mail-qv1-xf45.google.com with SMTP id 6a1803df08f44-6e867ab3537sf39492426d6.0
        for <lists+usb-storage@lfdr.de>; Fri, 28 Feb 2025 07:11:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1740755496; cv=pass;
        d=google.com; s=arc-20240605;
        b=D36KMS4wbW45ZkouuNd8GGD8ldcpxBxAvrQZ1MMtB0CsoJbELE/no+ri2pxsGNSxMv
         VEqAMP3BGTkOE8l1MHSnreZ6fc3PXMoDz16VPK2eENeJvjWoSm1ZVttsBQUAv3niXjTN
         7WH/ongkP36sWxwGoC3Orlq7cN/0Cr7T4p4LWdX2Ke6XzcX+wL1UU8LuRkmxwj7wS5B9
         2ZaPlCs7+4Sk9lOaRkuSdKG517m0Jxf7sqEuDPV6TTdBcOWxdCVdN6UMoxSjmjDaWH9I
         0w7LjPDmud91633tEUxSh2mD7vK1XVuT7nHSb3r/MDleBG9tYlt0fEZF1tyToMgLWb/r
         BwjA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:in-reply-to
         :references:message-id:content-transfer-encoding:mime-version
         :subject:date:from:dkim-signature;
        bh=3+mZRC/V6WxNJU3o425KijX/Mf8KY0kHlmrarlsxG8U=;
        fh=lLzKembD1EOV4DURdTHtLB/A+19puOewQWcbR8aIfC4=;
        b=IRvgJ8HDJlmBqDfKEZSUDkjG051Ss/Eey1YKNiPLZl2qj9aziON64Q2G3NoF/lZz6L
         LexsFsDHglhi86lbV+JLqGf6cSjteLJ5zHCrJ7BwVLP8vIcP4UxtGfKZqRXNF9dUX3uj
         frKxP5VGNtEC1ElCuONjoHEofs20ANke2R3dqLLUGLWg1N67+bTWI6XYVZ9tcfXkdoHz
         sRvSTah4DVQdqjj+xegHySlQyl7f7erdGsl8y4XIkUN0C04pq8j27pR19JcnGFX4aCk3
         Cy6cJJizDWw46HZCCpmzj/6/Ux3C4kz+HUqWHNPQfauTUoBM5FGz4ob3EQh1bUwYNqg3
         VnJQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Y2RZDy6U;
       spf=pass (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=devnull+j.ne.posteo.net@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1740755496; x=1741360296; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:reply-to:cc:to:in-reply-to:references:message-id
         :content-transfer-encoding:mime-version:subject:date:from:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3+mZRC/V6WxNJU3o425KijX/Mf8KY0kHlmrarlsxG8U=;
        b=cN9rsS6KC8pfWE/gd67E7EtemR7vu7/ai71Q4YZBL0EHAjQFg7ZDopLc0DD9zbMpNI
         uMxpSYz8/iCSRkGuGFdiu9KqBndao+J6psuwH0rev7NFFfqTuOCZEggpPLLpqnn+tMLk
         pYwP1Vx4878Qt0xLWQQIEjv/vtvdwYIOEEhN0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740755496; x=1741360296;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:reply-to:cc:to
         :in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-beenthere:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3+mZRC/V6WxNJU3o425KijX/Mf8KY0kHlmrarlsxG8U=;
        b=oKVwhd6X1+d+pNBq/QHPpOLq/Vf5ObfsEmw0sm24BFyTD/vbqStMPtIQ5Ramj5dJFs
         ijfCpoyxJy9/CDrL/+PG6gD+q5PwRA1Bwp1RmHDvC9+WsRRPYtRovN/FX9xQn2JbfClI
         +WUUFzTM4fA4/CfxX0dqSXDUtgtx9b5Pp277FC4E9rTr6gcfDjJe6Cvg4zD3Abe9v9Qw
         2oiRCoFKBpXRYmZipbtVl4NZUqyxM26YPmTRgob5IzqHmFsVJB25SJN7BizMNWpAsrel
         4A3rhNcP3qUaFYvddvb+uOzeU+EhaDb+D9die92Ly+vQwWIs9Ow9UR+Mg7797WXt2kOA
         AqAA==
X-Forwarded-Encrypted: i=2; AJvYcCX0Scxpbb4BlKEGAy7mus2T1hmqgsN3yRGoy0jWn5IecbwoJRoPKPYf9JQh5bsEJdEDsSH2gQ==@lfdr.de
X-Gm-Message-State: AOJu0YwCeMbY/jwN94SORdWvXXOYwpKdGu6FnVywGdqrMF97Tufvkr4r
	pdIhNT3LMFsF9ZVoL95nfZpr/EHmQYnNfGOV1ldp3qHmgi5VAdzClZDuQhVlC3c=
X-Google-Smtp-Source: AGHT+IFKYm/ElaJIFb8zLGLlZ9OUbXlZPRSNS/SKI30EEewyVqs8NGBdWadBA7VgJqiEiZh0DsBghg==
X-Received: by 2002:ad4:5ba3:0:b0:6d8:f0ba:ea92 with SMTP id 6a1803df08f44-6e8a0d27348mr52371586d6.21.1740755496512;
        Fri, 28 Feb 2025 07:11:36 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=Adn5yVGWgEj/OMu0vofG1B2eS5pzkn3Lv0p6aTnZiD4prBxxtA==
Received: by 2002:ad4:4507:0:b0:6d8:b1cf:a07d with SMTP id 6a1803df08f44-6e8956811c5ls17656736d6.2.-pod-prod-02-us;
 Fri, 28 Feb 2025 07:11:35 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXpRbnXLJKMMsWs4KtfvOBrO8/KS8puSwC5+hctvFuuD/izIlMl2HyY+e974ZgfDvOckzsEdy8JkrvaXw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6122:3c51:b0:520:5a87:66ff with SMTP id 71dfb90a1353d-5235a927992mr2113612e0c.0.1740755495544;
        Fri, 28 Feb 2025 07:11:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1740755495; cv=none;
        d=google.com; s=arc-20240605;
        b=gSmCP7h58AFT6WBUxp1/iqfqJZReFVDxyGObU0abmRL1SK/9lIt4Q1Y/039vXcchBQ
         O7fMbgwH7CQnNRK51OcHmi80PFrPR3wT8YhpHot0n0Y5I0w5h9TpqzHrVxB4PeXeKOVz
         pIg9hL+kyxmPBtki73lrxH5B0BQEOvsd06a57nznDoPL3iAqpM6GlFZbAAj+skai03gS
         ID1SnfFTzoTiFKbAJpvOKvec2rBWC3lN84fufREL+vk1FKFnjm3lhfmmiHbIBDiSphNv
         y27IvOY1/9SsVWO4X+ZTZ5cQMcjbCitP79Aqd/8wsDcqe9cvQJKa9Ailm1SLmoPBKz7n
         jqEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=reply-to:cc:to:in-reply-to:references:message-id
         :content-transfer-encoding:mime-version:subject:date:from
         :dkim-signature;
        bh=6G6RIDS9nb7UkXtvgYFDOT5WaFpPdG2Zx8ZBQ//1vPo=;
        fh=t85edx+sQ1Skfp7ZeTpNIH3lUx4BfFwBq5zypEnFHfI=;
        b=lstwSzStuXEhVXU+O5+KMHf0okIxqJ7VMdF8H8fMBkRajVdk1m8DZoLu4Ie8i2uY1a
         OTZiyH4gMvQ12cLiKoGaeQwDH8Y7icEUWarj/pfB3mVo1pgln2jLnZL2TKW0WPbnUEYZ
         lRptZkU6WM0cngAxVEgo2umoiHSKUNXRZRNcca4d5OC57fegvzbLSeLe6hhDosBUjTq/
         sSJIAJ0Iym9JVoYtt+rHy8DLQ5+bEVu1s6UvBrNAz4gMYfv2RRcRpyn3rBtpGI0fZGBi
         Nod88BLvCKL5hj/lhxC6d3iWj/rAyGqqkdOCTFbHPJ8YyV7SZZWuq0UWr7JECIbdZoU8
         lNbg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Y2RZDy6U;
       spf=pass (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=devnull+j.ne.posteo.net@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [139.178.84.217])
        by mx.google.com with ESMTPS id 71dfb90a1353d-5234bf00a01si924719e0c.60.2025.02.28.07.11.35
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Feb 2025 07:11:35 -0800 (PST)
Received-SPF: pass (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates 139.178.84.217 as permitted sender) client-ip=139.178.84.217;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 446015C4BBC;
	Fri, 28 Feb 2025 15:09:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C815AC4CEE5;
	Fri, 28 Feb 2025 15:11:34 +0000 (UTC)
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5CEBC19776;
	Fri, 28 Feb 2025 15:11:34 +0000 (UTC)
From: =?UTF-8?Q?=27Jonathan_Neusch=C3=A4fer_via_B4_Relay=27_via_USB_Mass_Storag?=
	=?UTF-8?Q?e_on_Linux?= <usb-storage@lists.one-eyed-alien.net>
Date: Fri, 28 Feb 2025 16:11:16 +0100
Subject: [usb-storage] [PATCH v3 1/9] usb: storage: jumpshot: Use const for
 constant arrays
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Message-Id: <20250228-misc-const-v3-1-09b417ded9c4@posteo.net>
References: <20250228-misc-const-v3-0-09b417ded9c4@posteo.net>
In-Reply-To: <20250228-misc-const-v3-0-09b417ded9c4@posteo.net>
To: Alan Stern <stern@rowland.harvard.edu>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Jonathan_Neusch=C3=A4fer?= <j.ne@posteo.net>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1740755487; l=1808;
 i=j.ne@posteo.net; s=20240329; h=from:subject:message-id;
 bh=vYhXHGRk3wSzAZtFyzQxidAFQUuE+w6UkTPB8JZk5oU=;
 b=tMxBK4bYZASZaHDupcd8lpaS1+U5sINyheFD6lc5vO3grKfy9/oMQjtSzmdgSYmafSPXuenju
 6gdeGzbTKhGD73i7o1ZK2yb+YCfijV7PSMujmH801PWpIZ4l3yA+iZu
X-Developer-Key: i=j.ne@posteo.net; a=ed25519;
 pk=NIe0bK42wNaX/C4bi6ezm7NJK0IQE+8MKBm7igFMIS4=
X-Endpoint-Received: by B4 Relay for j.ne@posteo.net/20240329 with
 auth_id=156
X-Original-From: =?utf-8?q?Jonathan_Neusch=C3=A4fer?= <j.ne@posteo.net>
Reply-To: j.ne@posteo.net
X-Original-Sender: devnull@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Y2RZDy6U;       spf=pass
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

These arrays are not modified. Make them const.

Declaring data as const makes it easier to see what's going on, and can
prevent unintended writes through placement in a read-only section.

Signed-off-by: Jonathan Neusch=C3=A4fer <j.ne@posteo.net>
---

V3:
- elaborate why const is a good idea

V2:
- use consistent authorship information
---
 drivers/usb/storage/jumpshot.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/usb/storage/jumpshot.c b/drivers/usb/storage/jumpshot.=
c
index 39ca84d6859122903de4e64b13e697e8b7d4ab31..089c6f8ac85fbb683cca8b03a2f=
f06c0ca776167 100644
--- a/drivers/usb/storage/jumpshot.c
+++ b/drivers/usb/storage/jumpshot.c
@@ -367,16 +367,16 @@ static int jumpshot_handle_mode_sense(struct us_data =
*us,
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
@@ -477,7 +477,7 @@ static int jumpshot_transport(struct scsi_cmnd *srb, st=
ruct us_data *us)
 	int rc;
 	unsigned long block, blocks;
 	unsigned char *ptr =3D us->iobuf;
-	static unsigned char inquiry_response[8] =3D {
+	static const unsigned char inquiry_response[8] =3D {
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
ien.net/d/msgid/usb-storage/20250228-misc-const-v3-1-09b417ded9c4%40posteo.=
net.
