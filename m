Return-Path: <usb-storage+bncBCD353VB3ABBB7GE7S6QMGQERX7242Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x147.google.com (mail-il1-x147.google.com [IPv6:2607:f8b0:4864:20::147])
	by mail.lfdr.de (Postfix) with ESMTPS id 7819FA46225
	for <lists+usb-storage@lfdr.de>; Wed, 26 Feb 2025 15:17:34 +0100 (CET)
Received: by mail-il1-x147.google.com with SMTP id e9e14a558f8ab-3d2b1e1e89fsf53143115ab.0
        for <lists+usb-storage@lfdr.de>; Wed, 26 Feb 2025 06:17:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1740579453; cv=pass;
        d=google.com; s=arc-20240605;
        b=eA+3rYUp/HeIH4pFHbc3G0mp06NjbR2gC8+uiPLkHYJyusIWhkRv/4pWexVZvmx9Xm
         0tboUXk1NNcQm+DmPKmkiyzFSaz0v1DnGrMt0xbJdO+YjHR2xS822V5wEBfvU5c4XRmv
         YpxpOw5Ne6VE63eEUJ4tPmbrFwhw1H8O9FvsP0h8YjPrhXHYWipoyX7my6m2mCUBSFhK
         2GMT2ow4h9aiBe4OQENh2uKoabouBHHCnNZrBaM8AGqF+nUQQE6vcLrtNWdPNSnNFfUl
         91GDkK0xLkEWxVJzFBZ1JnNCyw2TEEff/Csa1qhRU9p38QhkM2mJ9jnSReF1ecnf0bVQ
         z3DQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:in-reply-to
         :references:message-id:content-transfer-encoding:mime-version
         :subject:date:from:dkim-signature;
        bh=VROo6MXSkWO31VzIiyDpafQqFwG1e4i9mJiIH4wK5dQ=;
        fh=x8RsYozn5ESATqhY0MiX5t26y5nhkFc+MeHbCLrLZ74=;
        b=MqLTL/gkn15tikJuujcidhBc0OrWJwtC285EP07RSOiIspY8y8Z0PPWR20eYuXQkJ1
         t/xH5vvYjJU7ohVL7jUvhCZAacAmhoTyURaRCmpySem7wpyiaYjCfqP3BgIEQJwpfciq
         5rRPFqrXtGBgWq/5WjRjYYX04FRV8TQh8iRCw7zodSyuPQsUL4pQ/wK2py/SMMkdUMhz
         SnkWbEtCClJB1HjAs7mhlC9wUXC57jV7oz5J8HZGV6/iRZVy7nB3XYKxqlFIogcQgvTh
         z7B3sJFxfntwgg3DigByjqPjQuTNuihMn7XyrFyORq59xn5+ukDBiRv0HD3HtiTdsZ3W
         fJcA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=FpfNRFbC;
       spf=pass (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=devnull+j.ne.posteo.net@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1740579453; x=1741184253; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:reply-to:cc:to:in-reply-to:references:message-id
         :content-transfer-encoding:mime-version:subject:date:from:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VROo6MXSkWO31VzIiyDpafQqFwG1e4i9mJiIH4wK5dQ=;
        b=MrQqGUSP3CxWN5IL0UnkQhH5Wu5k+cDMW6Od6LLcSTdS1QyNaIRnV8uNMZu+xv84E0
         8mnpIx/mEwonz+OuQkXjaq5vC90A3/FkCsaBltb7ojIWkIgW6fLrYL/wh9pz+RM8O5WS
         3VC7mujEmR+7jF9DaW/RcG2rmicrSLCFQPMqo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740579453; x=1741184253;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:reply-to:cc:to
         :in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-beenthere:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=VROo6MXSkWO31VzIiyDpafQqFwG1e4i9mJiIH4wK5dQ=;
        b=CgPVlwW1uAvK1CBz/UpkS/LQVZMGS27A4EAUW9U9owjVYmwloUA7+UlEwQqxPOUyIk
         v7MxsGC8hYl6blF07K+4T0IUyxshG4eiYGHUc+2EAmZjhUC6VJnU8qJNLX1XTFakPp5N
         JaF0akyzhRzVnTvhf+YccyJSJmv0xktGyADzEIZp+ziZq6Ysw66tL3GfkcueAI2ZUSyU
         G+d2VsqQUO2+4vhLmJJsyo4PyiI9f5ayfFaupHGyF+UJL7ib0JPC6qvAG67U19A12cxj
         bLxni0xfgbzIKGVVzFbnCkU/2rMuExo9glU+C+iYRsmE5MAss0AZeeCsveh+FvVdzifr
         x8QA==
X-Forwarded-Encrypted: i=2; AJvYcCWD1ca0f3T3AvmHpIYIKVWPkn6PRt2gMAhUmiJ0x9/HNUNTM378Pe1hI2FPpOQU2P9k1hbSSw==@lfdr.de
X-Gm-Message-State: AOJu0YxhdsWIO2jAtX56rqia5gFrrrdu6jwlhESQr6tAEbexvlIYS+64
	l6AEma/napji8yodd3UsBeGeuJExSndvmbkddfVbUlXHMh/5lhS3gzdk76w5QhE=
X-Google-Smtp-Source: AGHT+IHj3wcbjhjQjXarIQhKazAZDGAbLaLT6Q7J0iHM6N1wa5Kkm4qnuuxF1RVSCtXUZ7XHEiqM0Q==
X-Received: by 2002:a05:6e02:1d95:b0:3d2:af07:c8f with SMTP id e9e14a558f8ab-3d2cb4502bamr193958765ab.7.1740579453121;
        Wed, 26 Feb 2025 06:17:33 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=Adn5yVEG4kle0Qa98bzFIID2TQxVM1E3LjjHQG83K2JT4nTvMQ==
Received: by 2002:a92:cf0e:0:b0:3d2:ae38:42e5 with SMTP id e9e14a558f8ab-3d2cad12d59ls17554255ab.2.-pod-prod-03-us;
 Wed, 26 Feb 2025 06:17:32 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVEQQIXEX2y3nh1y1bbSQgkFbhbhgXbNbGpw4iRiqQ03VhxS8cIPE2M0BaNmHcgXoDcod2GCouA04JdNA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6e02:4c18:b0:3d3:d23b:220c with SMTP id e9e14a558f8ab-3d3d23b2467mr28074365ab.1.1740579452342;
        Wed, 26 Feb 2025 06:17:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1740579452; cv=none;
        d=google.com; s=arc-20240605;
        b=CNHDqNSUmG2f5hT6YZ2NGaACTVYAwugXWu7KYmAfMJaKjbBie4X2L0mctazv2/YW+k
         6MOnHQNmSTy+y7yHqlCF4vwfqAOpy00WxKCy2IeJPSYL/Yfgx9TTpa27s1sc2hEnb6Nm
         nRbPUxsdEqzGXgIvA2OHkp5zEbTXFS51GuHYmD9EYI1IESQNb3+Aa4rE9qMs/4V69oJ1
         w139WxWzI+0lSqDwggiMzdjgniZ1S62zuaypiWuE8fBXyeuk20mLcAynm91+2raOJBHq
         bundARnbGuQlHiIfYcS4n1M9w1GlhkocusGQ7CcDyU+ExWi6DrOrRQnhB0rAvL4Bz054
         nM0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=reply-to:cc:to:in-reply-to:references:message-id
         :content-transfer-encoding:mime-version:subject:date:from
         :dkim-signature;
        bh=HK6FVMsPBs0I9yYWtxTCN1JLxkVjjx8+36ZcvOJH7/4=;
        fh=t85edx+sQ1Skfp7ZeTpNIH3lUx4BfFwBq5zypEnFHfI=;
        b=UCXAiV55gp4e9EoDJnKoFvfL0iAY1BIjTmxAEDw6HmVqCfmcYocIm8+hhaToifJ4Tk
         8oBBOv/co+bJ+lVODJdY4l+aCQGLaAh07oMoIB7AI7r60urf3lU97RRd1cF8cdVeQ18F
         opDreAhXFietVWaG3UHSZX98cAXj6g62+0ZMS3OFqQ9v83CnN0lCx8mliR93UoP1rLkh
         1did+t0z4jD6fo5J3//tJPrM3l4lB8MOx32obEBCD7AIsTLDYmcjWGvDe6HXNf9lfhYV
         0O0LzH40nJVqc4rMsOuX4eBaiKNvDkEzizuFusIEFtz0GZTWecoE2osdcZ0yY20BOOOC
         5uqA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=FpfNRFbC;
       spf=pass (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=devnull+j.ne.posteo.net@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
Received: from tor.source.kernel.org (tor.source.kernel.org. [172.105.4.254])
        by mx.google.com with ESMTPS id 8926c6da1cb9f-4f04752e90dsi2761025173.148.2025.02.26.06.17.32
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Feb 2025 06:17:32 -0800 (PST)
Received-SPF: pass (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates 172.105.4.254 as permitted sender) client-ip=172.105.4.254;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 1FC3B61226;
	Wed, 26 Feb 2025 14:17:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F178C4CED6;
	Wed, 26 Feb 2025 14:17:31 +0000 (UTC)
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C441C021BF;
	Wed, 26 Feb 2025 14:17:31 +0000 (UTC)
From: =?UTF-8?Q?=27Jonathan_Neusch=C3=A4fer_via_B4_Relay=27_via_USB_Mass_Storag?=
	=?UTF-8?Q?e_on_Linux?= <usb-storage@lists.one-eyed-alien.net>
Date: Wed, 26 Feb 2025 15:17:23 +0100
Subject: [usb-storage] [PATCH v2 1/9] usb: storage: jumpshot: Use const for
 constant arrays
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Message-Id: <20250226-misc-const-v2-1-ab655a4a29cc@posteo.net>
References: <20250226-misc-const-v2-0-ab655a4a29cc@posteo.net>
In-Reply-To: <20250226-misc-const-v2-0-ab655a4a29cc@posteo.net>
To: Alan Stern <stern@rowland.harvard.edu>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Jonathan_Neusch=C3=A4fer?= <j.ne@posteo.net>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1740579450; l=1619;
 i=j.ne@posteo.net; s=20240329; h=from:subject:message-id;
 bh=H3dMAb8P96lFwD5LpmR5haaczG54h7nPpY9qeuhmOyQ=;
 b=vF9loLYXkwunZHPQSBSjPkNHR4KE926KDCA6C9QnncH+mdwU9dnMF4CesPjZz4sBl+Ne+JVtm
 2+tvSOmCGdhDGPfwhy6AZgOlbRXV1l3HYOfnimKf9m1M5Ii7mxetjEj
X-Developer-Key: i=j.ne@posteo.net; a=ed25519;
 pk=NIe0bK42wNaX/C4bi6ezm7NJK0IQE+8MKBm7igFMIS4=
X-Endpoint-Received: by B4 Relay for j.ne@posteo.net/20240329 with
 auth_id=156
X-Original-From: =?utf-8?q?Jonathan_Neusch=C3=A4fer?= <j.ne@posteo.net>
Reply-To: j.ne@posteo.net
X-Original-Sender: devnull@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=FpfNRFbC;       spf=pass
 (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates
 172.105.4.254 as permitted sender) smtp.mailfrom=devnull+j.ne.posteo.net@kernel.org;
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

Signed-off-by: Jonathan Neusch=C3=A4fer <j.ne@posteo.net>
---

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
ien.net/d/msgid/usb-storage/20250226-misc-const-v2-1-ab655a4a29cc%40posteo.=
net.
