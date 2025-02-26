Return-Path: <usb-storage+bncBCD353VB3ABBB7GE7S6QMGQERX7242Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x48.google.com (mail-oa1-x48.google.com [IPv6:2001:4860:4864:20::48])
	by mail.lfdr.de (Postfix) with ESMTPS id 47218A46222
	for <lists+usb-storage@lfdr.de>; Wed, 26 Feb 2025 15:17:34 +0100 (CET)
Received: by mail-oa1-x48.google.com with SMTP id 586e51a60fabf-2a8e3905c56sf1797593fac.2
        for <lists+usb-storage@lfdr.de>; Wed, 26 Feb 2025 06:17:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1740579453; cv=pass;
        d=google.com; s=arc-20240605;
        b=ZAxlFRjN+wzqHGTrxb5xthQL+OGHEUqdt+xU3l6HLEy/Vm/8nrNWC/bxN2ItdHqfrN
         2/yI+VL0oN5FMv9AktPsdwSAmdBCq7eulOjG9aIJtJhgVabjODy7nQNyb9jg4UPlY+lN
         NSxV5uFPVgKkgkOEBOkPvkfGpEXdZOPycYQSlSdOq/g1tTPHoaqfTf9N9xCA4X4MP3eF
         NOzpCLwuwAtm0ku8wlv0FDFdvONvYzAWxHG8Yl+JfGr8by2+/zlZyosnNF6WrBsVpfg/
         w5AmtOAYOkUYBBWYgvMNiXoye0OFsyBjOgsxReemZ6TZeUiO36nKbxLNNv6bD3cY+fjk
         RuxQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:in-reply-to
         :references:message-id:content-transfer-encoding:mime-version
         :subject:date:from:dkim-signature;
        bh=K6SrKBEDOgZVO+g5Wl9oRpfwuvuKhJBTl1IFGwp4Yfw=;
        fh=pc8MXg8rgFBbi1aND4B/pYuXAltBYOcjN/+QPPjGeW8=;
        b=RiK+a2rvTmv5cumqlp/C/TaaE1HcYjvkXCgX1aeNlwsxLLd3pLYJDtikK2Srn5tGzB
         X6Z1BfZD9d69kmaD9zuBusPAybWRHxUeak/ctliVmIhJ0jmpiMi1DayNSTgVd/eGxj0U
         TxMuy/UlMen/CMImteqSIG/E9YjHoHQ1q0v9JB2319/UYEqHsTEoJtRkM6O1dxv+pPz4
         StUlFhXPhiRUuqG8JnaMQ+VU2I6vcrUmp/aqhVudxBmf26OkaJ2JB3MX91zaBdvqYn0B
         jX2sETN42gMf3cZuWUQuxX+zFLMaSqLrrCSWjAnIcnhAHFBntipOnYX0DVnxDNJHYc/+
         WqIg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=lmIzyOHi;
       spf=pass (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=devnull+j.ne.posteo.net@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1740579453; x=1741184253; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:reply-to:cc:to:in-reply-to:references:message-id
         :content-transfer-encoding:mime-version:subject:date:from:from:to:cc
         :subject:date:message-id:reply-to;
        bh=K6SrKBEDOgZVO+g5Wl9oRpfwuvuKhJBTl1IFGwp4Yfw=;
        b=jqTiCwOdxGrWViOxtTbohlquRI6MoX4/XIlw9QAOmjvpiixejSu5FYueDpdR+I+/jz
         luTokyUzgmvQjLEjxyehGccbk29JBpzxHuMN5Zlk5CGEU1QSI9I2U0v2dYpDaBrkRvDE
         4fQfsUqQwOaQ+FmUrO/1MJyYXtbpoI7BuKskw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740579453; x=1741184253;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:reply-to:cc:to
         :in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-beenthere:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=K6SrKBEDOgZVO+g5Wl9oRpfwuvuKhJBTl1IFGwp4Yfw=;
        b=pDi2ngWul1xIHZ63NV5YHjr1JctqvFqhmoy7pc6zlpw7Yz4BMRX+jYV5PdytZZOSJW
         aJYgVUJ/00mtOTuw1UBdvRJcKafwuQlXrepsZ6fAKVgnvHXykGkTcHV64Czpb/OoGDcl
         VCXQhgk/yDw3ngxdQJyige1NchSDMAgtwya8Lhjz8NKXfZd0DQ0yW1QM524Yo5f+7Ru+
         p3aCGB/eXo6pNl6jLVMpViKLVpbAZvCLcJoxp1K7i3STWqwrXju0P2JrUP8IOATfEI+B
         4Lsdpjmeeve+BqrbQCmPy+5qCnJbT+OfsEgn27xONZxjfw6/uQtKbwc9og8036qpSUzq
         mfKg==
X-Forwarded-Encrypted: i=2; AJvYcCW0cru74IXpw7Ki2rpVD1XpEyuxli7Bnhei5xtiS8g62Mzjex4xf4RqzpFoZoLCgI5/teAclQ==@lfdr.de
X-Gm-Message-State: AOJu0Ywd7wZML7Y9wxqCH2X/8llk0fBdLy3zMz5t59CHC47rbv2N/J+F
	kVo0v231Ud9gfzcFrMG+HtMf7noGRxHNbx6CmLMdP5POUApAetVDyxtnDk7JN1g=
X-Google-Smtp-Source: AGHT+IECvBGcVgSnYcr7yuD8335P3A6uplA18Js2MDbWJ0Ogk43SJOle3aiyWwVn47/TAep4MaqzcA==
X-Received: by 2002:a05:6871:a4c4:b0:2b7:d3f1:dc72 with SMTP id 586e51a60fabf-2bd518102acmr17004641fac.29.1740579453063;
        Wed, 26 Feb 2025 06:17:33 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=Adn5yVFcmhRIp4hp5Tj9zfT1T7tIOPdySTWI6dd/YkT+gq9SjA==
Received: by 2002:a05:6870:a90e:b0:2b8:f3e5:a817 with SMTP id
 586e51a60fabf-2bd50bf1d9bls2139338fac.2.-pod-prod-02-us; Wed, 26 Feb 2025
 06:17:32 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVEjKlaVh0wS4VvSy+wRpQJJXtCZDlqZxpBQPRS93B1NpLTas0siPUgZXDZGHHMK7KXO8gk0eKXsKpxpw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6870:ff8d:b0:29e:67e0:408b with SMTP id 586e51a60fabf-2bd51632630mr13569489fac.22.1740579452130;
        Wed, 26 Feb 2025 06:17:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1740579452; cv=none;
        d=google.com; s=arc-20240605;
        b=kwz16ftrZRSfvl++/KXLFKSGPUWYPAjR19GRGAdgsGfgd/9CFpj6UfRmOrcBW+VjjI
         jmgkSJ93Dz7H9oER0F5PqiDFdD8wdvLseAiO7HBD45ES4lQ0ZHA/DMsfvv+TGJdCkrhz
         FKxdlB9XS4eEgWegIxenwC++7gSMEay1mjM7veOImSKXnkL9OcCqrVZNDUTfeJQiY+gW
         /BhIOCH5aXTTm1RA5HZ6Jo2CvnbstYbWM4WCKK0hRpUWVwG3sBfKiTK+e8AKz2r851My
         dLl9a/mc8oEmTMKEefG+dQWkgSRS8+VLi2DAr3gnU3Lzl6LT7FhfDgfO1Dq/FYYx3m96
         fC+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=reply-to:cc:to:in-reply-to:references:message-id
         :content-transfer-encoding:mime-version:subject:date:from
         :dkim-signature;
        bh=+6RsQDBWcpIOZ4yaJ78J7s6dUW5/ZDxse/riLF6wGOE=;
        fh=t85edx+sQ1Skfp7ZeTpNIH3lUx4BfFwBq5zypEnFHfI=;
        b=Y4vn3WxI3CtkrnirGd83DiR5Atq7HZ7DNJzsBBatGUmhiLzNvt4C9HDYBIFs1D73B7
         8oWQN/Nx/fPHN/amytDtYkYBh/VM0sOmojr2wELaphXCnDC62295Z2XtZBIR7ud8amXg
         NSN1olCw3l63rIysw+iqmnNlFci942QQKNUoQqqb/72YK9QsiaFyiJfPrWn6PhyryD98
         rN4qB5axnzMTGf7syinejxG9nTjo3D/qAlLiBDgNOlpLiQBgpecxQMjsYTWxy4xa9LG6
         qq3+PKfaFALI+0V5ADDNpyNup2l0PrJqbXuHW9lGHDBqNvsX/CHgAdwg79I/l9CPkPDG
         ncOw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=lmIzyOHi;
       spf=pass (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=devnull+j.ne.posteo.net@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by mx.google.com with ESMTPS id 586e51a60fabf-2c11165bdc4si3429613fac.190.2025.02.26.06.17.32
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Feb 2025 06:17:32 -0800 (PST)
Received-SPF: pass (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 155955C6288;
	Wed, 26 Feb 2025 14:16:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A5E7C4CEE8;
	Wed, 26 Feb 2025 14:17:31 +0000 (UTC)
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8B714C19777;
	Wed, 26 Feb 2025 14:17:31 +0000 (UTC)
From: =?UTF-8?Q?=27Jonathan_Neusch=C3=A4fer_via_B4_Relay=27_via_USB_Mass_Storag?=
	=?UTF-8?Q?e_on_Linux?= <usb-storage@lists.one-eyed-alien.net>
Date: Wed, 26 Feb 2025 15:17:24 +0100
Subject: [usb-storage] [PATCH v2 2/9] usb: storage: transport: Use const for
 constant array
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Message-Id: <20250226-misc-const-v2-2-ab655a4a29cc@posteo.net>
References: <20250226-misc-const-v2-0-ab655a4a29cc@posteo.net>
In-Reply-To: <20250226-misc-const-v2-0-ab655a4a29cc@posteo.net>
To: Alan Stern <stern@rowland.harvard.edu>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Jonathan_Neusch=C3=A4fer?= <j.ne@posteo.net>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1740579450; l=893;
 i=j.ne@posteo.net; s=20240329; h=from:subject:message-id;
 bh=nCzpJM3/zudVjCfMlG+Oo6xwILkwbL682EKLwocy/kg=;
 b=lyHT+26EK6qmfohCAo8e05Ihj7lHLa719aBwcSP2MiZPYO0GbADJ6SUOjHAwbrtTUhbp7Hzbd
 XiK5kPyOekHAamnhE5wM2hnDdWgAwBL7fJHb58K46jDRw+2dJ32C44L
X-Developer-Key: i=j.ne@posteo.net; a=ed25519;
 pk=NIe0bK42wNaX/C4bi6ezm7NJK0IQE+8MKBm7igFMIS4=
X-Endpoint-Received: by B4 Relay for j.ne@posteo.net/20240329 with
 auth_id=156
X-Original-From: =?utf-8?q?Jonathan_Neusch=C3=A4fer?= <j.ne@posteo.net>
Reply-To: j.ne@posteo.net
X-Original-Sender: devnull@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=lmIzyOHi;       spf=pass
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

This array is only read, not modified

Signed-off-by: Jonathan Neusch=C3=A4fer <j.ne@posteo.net>
---

V2:
- new patch
---
 drivers/usb/storage/transport.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/storage/transport.c b/drivers/usb/storage/transpor=
t.c
index e6bc8ecaecbb202714be69c6db6b0a4824de4855..1aa1bd26c81f2f9fbd508fdfed4=
465e6482bdef0 100644
--- a/drivers/usb/storage/transport.c
+++ b/drivers/usb/storage/transport.c
@@ -528,7 +528,7 @@ static void last_sector_hacks(struct us_data *us, struc=
t scsi_cmnd *srb)
 	u32 sector;
=20
 	/* To Report "Medium Error: Record Not Found */
-	static unsigned char record_not_found[18] =3D {
+	static const unsigned char record_not_found[18] =3D {
 		[0]	=3D 0x70,			/* current error */
 		[2]	=3D MEDIUM_ERROR,		/* =3D 0x03 */
 		[7]	=3D 0x0a,			/* additional length */

--=20
2.48.0.rc1.219.gb6b6757d772


--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-al=
ien.net/d/msgid/usb-storage/20250226-misc-const-v2-2-ab655a4a29cc%40posteo.=
net.
