Return-Path: <usb-storage+bncBCD353VB3ABBB7GE7S6QMGQERX7242Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x45.google.com (mail-oa1-x45.google.com [IPv6:2001:4860:4864:20::45])
	by mail.lfdr.de (Postfix) with ESMTPS id 525B1A46223
	for <lists+usb-storage@lfdr.de>; Wed, 26 Feb 2025 15:17:34 +0100 (CET)
Received: by mail-oa1-x45.google.com with SMTP id 586e51a60fabf-2bc8670f78asf1461234fac.3
        for <lists+usb-storage@lfdr.de>; Wed, 26 Feb 2025 06:17:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1740579453; cv=pass;
        d=google.com; s=arc-20240605;
        b=S1D6xiEjjMwNWZ/BYrU7wvBeOvSziESvd85LCCqpo8SQGbnZ4iWcUzXT6zvWYUtlK2
         gbwAp+vhiwi+XnHfEf/u+RTTGjv0KKUJhpzeJZQDorZyVHyaQj84oyDHmRJaXUXvPAdT
         zWt7PMT25Th0ZOdYx91qRs3EFKp8dx3zXw8HtGtkD118E2w9op/YPmCfAbvjB2DVmPRs
         XC4FblUOvlKlUKgnChMju45zCJgFa8ZvqLdlBn34TjvyqERGI6LnXlq+yDmtGRxvwKNC
         694DkFRcDtjFoztWG+cTkUBAFcAwOY99+O512vdxrI4O6z8Agx20tAl5DNjusB8NBor9
         GplQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:in-reply-to
         :references:message-id:content-transfer-encoding:mime-version
         :subject:date:from:dkim-signature;
        bh=kn5kqVfZIvyRGYtrgx/zL2rdjRBdJi+eCs4cx+IV//4=;
        fh=R+G/TJdYvarMJRODBI5FZdQc0/VaVbUpaTwan7fnp0Q=;
        b=h5Ja68Dl1eyvSDCtVu7uliF0qfB0BVTZXJ2sXyfeAy/TkCQF46wc8iu4MJYMHW7rxp
         LhjMAOMEPXgKl1oJSnsJPvpzu9j/wzj+p2eSb9LfZAEkuCgzgwARTsu92fCsfa39tR7O
         pQL3Lch7JE/uY7fXiGqMVbDytexAZ7U1eGmAFBT7d1JJXEDgLMz8aMlwh2ziNE6QgOEF
         P5bq8smtR9IPp5PFVW13Vv6WLXcDgvqE7ly1cTlmVLXHS08B3VchQMW4PgEUqeYT4ivA
         VtmtjAeALAiGX65s1G5usv26FQEfWaB1Q7sHVQdYZgEemmqP/Ur6OOmQtu2SQsnNPKEI
         pATQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=kMQ2D97N;
       spf=pass (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=devnull+j.ne.posteo.net@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1740579453; x=1741184253; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:reply-to:cc:to:in-reply-to:references:message-id
         :content-transfer-encoding:mime-version:subject:date:from:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kn5kqVfZIvyRGYtrgx/zL2rdjRBdJi+eCs4cx+IV//4=;
        b=lBN5nBFANQ2KUoHzY3o9i90dCTQ68JB5DWqzjRKZFsA4TH3GgSaZ6vlepz+ud75XEl
         ZVjUp91Oc7Yxfp0jMOxF0MrrzuAa/1wYTL2MnLvzKRKTgGvoiY8hj9fDedJ43FgFKHoE
         o+HVa3v8d9mJSjBBTujxDiHQd6NPYf/UA2/uA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740579453; x=1741184253;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:reply-to:cc:to
         :in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-beenthere:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=kn5kqVfZIvyRGYtrgx/zL2rdjRBdJi+eCs4cx+IV//4=;
        b=dar2Ek9VsTLZcW/9t6I6Hmw1tOIFoMdciOv5bDKry97KJJw1NcvtZ9XcJuNwWohkfC
         2MQ0PobnoOTfGeE1XjA6ynn+gMWNtHFpKohdoQX3cFciQWtk6SfcQF2I3MtZ/gctVugf
         nK+LhAmumume70uJbI2ywZwCO1cEaiEdHerEwx5XiVlTf73AOJjk0d3CqBEFbLR8NEfe
         m6JgV1J3YShUcJDxSJi107zjD97n/sSOmVbDZPuEcT54QrGCHWUCGkIq6yq/J9x8GP61
         pZcnZnZsbvf1eGbX+32/zBjv0MoYogciUUmKpvcfehyshwXmTZlz0aPf3NI7YhCESR0t
         A9xQ==
X-Forwarded-Encrypted: i=2; AJvYcCW2Z/YaBKTMtmVVrhZgxqwgGWpT/nMpnXY2EZwyF/PDcMQlbxAK2k9OYDstSxvdUeOjYCGAow==@lfdr.de
X-Gm-Message-State: AOJu0YwfGZC6AgJb7/dfGz8XgSr9YY1irhg1ltS4DxgHwrXe9kUgYhaG
	bkV/HOGJYiEGu5wdNyWt/IijX/A5pcTeGlDszfY7nuGLHxTsTvA9d/pbRpKBHnY=
X-Google-Smtp-Source: AGHT+IHoU44odEAQlJzr4ZyiAHhzXzicvKnA1YphRiAE2DcHktr/rGxEkfzKwpgO8qRaZTrkp9k8Vw==
X-Received: by 2002:a05:6871:d284:b0:29e:49b4:92b2 with SMTP id 586e51a60fabf-2bd515a3f52mr12949466fac.12.1740579453083;
        Wed, 26 Feb 2025 06:17:33 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=Adn5yVG/Ux1uOtnYdY7nV9oVhioUiEzHPOJJ1z/LySCmfJ+iDA==
Received: by 2002:a05:6870:a90e:b0:2b8:f3e5:a817 with SMTP id
 586e51a60fabf-2bd50bf1d9bls2139339fac.2.-pod-prod-02-us; Wed, 26 Feb 2025
 06:17:32 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVgU71IQk8t76qCdDCNKQ6rFkDExh8auRDClMTEEJ0WLpuYXfZ0b9wyVUdEcE/ETcFE+JLxve+rK7AMlQ==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6808:1598:b0:3f4:17af:63c3 with SMTP id 5614622812f47-3f425c01413mr15129384b6e.32.1740579452414;
        Wed, 26 Feb 2025 06:17:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1740579452; cv=none;
        d=google.com; s=arc-20240605;
        b=NY5d+CC/zfNNnYEkz/tsNNR1GbqKgBYjFpz49Y1CT50BFcszR868qc310I9XtpuC50
         1X5K+kPpOvUCEm98B/uXH3Hg6AI93Mj56OvE1NZZmcYBv6qIH/RLNH1LjekiU/CbSKEZ
         mJBL7XDn7y6zYA3I5vssEpnIrgUmrjJ+DH3WNFo9QdXxgP4FW1LDZLClFAzePZR+t0Pu
         etpI8DN/F2fATT+h28ATFmgRuWpRXt19cOQIBkHqMan4TFfanKe1gMVxJcW7jDGcKa+F
         NAqH6TjcLNgjAMtkX0TVmM5l7vYY48jV6O0T2D23NpbPe3vi7n2MSgKyA5gKcdiBVieS
         HNzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=reply-to:cc:to:in-reply-to:references:message-id
         :content-transfer-encoding:mime-version:subject:date:from
         :dkim-signature;
        bh=fgNu95/kQyHL/Z6ZJmRJd0h1JBkPlY7PVtBBZmvrM7U=;
        fh=t85edx+sQ1Skfp7ZeTpNIH3lUx4BfFwBq5zypEnFHfI=;
        b=XD6gzUoZcadpC3h6+oS30PckCAH4gF+LMTMIhzJJsdqUzaLiHidODIgh35cO8qPEWH
         4ebcD0ZoWz1I3FmA8tNKqBvZy0wek4yB30f3Zy9A5kcQ/UfK7wUfTstEeg2KNgs2REoa
         TdY9IxFTwraWG5wYkKxGQC45Mw4mkHuOaGDjaYc/7fO5Zc6Mskt5hx8rN779T5B+cw+I
         Q9WTv4PjzAQ14XY6r31EUu10lv8J7oZo+aMsxZFKHYo4ajotYzI3hjP95TQ7oTiblTZp
         QtNn35uOPGnhP9fKWgH6UWVfta6fM+72cRz6gjiBtg2MytzwjQKxcKq1H0/YT3SXeCwu
         pWcA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=kMQ2D97N;
       spf=pass (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=devnull+j.ne.posteo.net@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by mx.google.com with ESMTPS id 5614622812f47-3f541c285f4si3404131b6e.171.2025.02.26.06.17.32
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Feb 2025 06:17:32 -0800 (PST)
Received-SPF: pass (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 4FF945C7050;
	Wed, 26 Feb 2025 14:16:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7679C4CEED;
	Wed, 26 Feb 2025 14:17:31 +0000 (UTC)
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC979C18E7C;
	Wed, 26 Feb 2025 14:17:31 +0000 (UTC)
From: =?UTF-8?Q?=27Jonathan_Neusch=C3=A4fer_via_B4_Relay=27_via_USB_Mass_Storag?=
	=?UTF-8?Q?e_on_Linux?= <usb-storage@lists.one-eyed-alien.net>
Date: Wed, 26 Feb 2025 15:17:28 +0100
Subject: [usb-storage] [PATCH v2 6/9] usb: storage: realtek_cr: Use const for
 constant arrays
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Message-Id: <20250226-misc-const-v2-6-ab655a4a29cc@posteo.net>
References: <20250226-misc-const-v2-0-ab655a4a29cc@posteo.net>
In-Reply-To: <20250226-misc-const-v2-0-ab655a4a29cc@posteo.net>
To: Alan Stern <stern@rowland.harvard.edu>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Jonathan_Neusch=C3=A4fer?= <j.ne@posteo.net>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1740579450; l=1414;
 i=j.ne@posteo.net; s=20240329; h=from:subject:message-id;
 bh=0nUrIAObJf+vvhJgWgBJJPr5uidrcg9fnFV47ZCiRf8=;
 b=yNC8wwiEJpTwvZ2ZJcdEasNQZyUBepYeM9CxLx3+7xPGzfB6agD2VCgDgaLyYzOPS/QjqWoKw
 keq/0ubOI4IAhaZzRPcNLUiTrJ1SF2xK8nJOoshhOdDNMNqO9LITQLs
X-Developer-Key: i=j.ne@posteo.net; a=ed25519;
 pk=NIe0bK42wNaX/C4bi6ezm7NJK0IQE+8MKBm7igFMIS4=
X-Endpoint-Received: by B4 Relay for j.ne@posteo.net/20240329 with
 auth_id=156
X-Original-From: =?utf-8?q?Jonathan_Neusch=C3=A4fer?= <j.ne@posteo.net>
Reply-To: j.ne@posteo.net
X-Original-Sender: devnull@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=kMQ2D97N;       spf=pass
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

These arrays are only read, never modified.

Signed-off-by: Jonathan Neusch=C3=A4fer <j.ne@posteo.net>
---

V2:
- new patch
---
 drivers/usb/storage/realtek_cr.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/storage/realtek_cr.c b/drivers/usb/storage/realtek=
_cr.c
index 2a82ed7b68eaa75993e786afeda0d5d3a3c3bfce..4e516b44513672ebe7889247a70=
043e0dd013bc8 100644
--- a/drivers/usb/storage/realtek_cr.c
+++ b/drivers/usb/storage/realtek_cr.c
@@ -191,7 +191,7 @@ MODULE_DEVICE_TABLE(usb, realtek_cr_ids);
 	.initFunction =3D init_function,	\
 }
=20
-static struct us_unusual_dev realtek_cr_unusual_dev_list[] =3D {
+static const struct us_unusual_dev realtek_cr_unusual_dev_list[] =3D {
 #	include "unusual_realtek.h"
 	{}			/* Terminating entry */
 };
@@ -797,10 +797,10 @@ static void rts51x_invoke_transport(struct scsi_cmnd =
*srb, struct us_data *us)
 {
 	struct rts51x_chip *chip =3D (struct rts51x_chip *)(us->extra);
 	static int card_first_show =3D 1;
-	static u8 media_not_present[] =3D { 0x70, 0, 0x02, 0, 0, 0, 0,
+	static const u8 media_not_present[] =3D { 0x70, 0, 0x02, 0, 0, 0, 0,
 		10, 0, 0, 0, 0, 0x3A, 0, 0, 0, 0, 0
 	};
-	static u8 invalid_cmd_field[] =3D { 0x70, 0, 0x05, 0, 0, 0, 0,
+	static const u8 invalid_cmd_field[] =3D { 0x70, 0, 0x05, 0, 0, 0, 0,
 		10, 0, 0, 0, 0, 0x24, 0, 0, 0, 0, 0
 	};
 	int ret;

--=20
2.48.0.rc1.219.gb6b6757d772


--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-al=
ien.net/d/msgid/usb-storage/20250226-misc-const-v2-6-ab655a4a29cc%40posteo.=
net.
