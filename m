Return-Path: <usb-storage+bncBCD353VB3ABBB7GE7S6QMGQERX7242Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc48.google.com (mail-oo1-xc48.google.com [IPv6:2607:f8b0:4864:20::c48])
	by mail.lfdr.de (Postfix) with ESMTPS id 61DC0A46224
	for <lists+usb-storage@lfdr.de>; Wed, 26 Feb 2025 15:17:34 +0100 (CET)
Received: by mail-oo1-xc48.google.com with SMTP id 006d021491bc7-5fd07d6b6d4sf2119332eaf.1
        for <lists+usb-storage@lfdr.de>; Wed, 26 Feb 2025 06:17:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1740579453; cv=pass;
        d=google.com; s=arc-20240605;
        b=W0uIFIIh1zl1fYNlaH/oGuRIJT68+gFIiOrpLJMlHo3Ea0zbL2H9N7zjshVUZ9AKMm
         e1/BaZCSYpAhmVaqRER4WtXo5/rjErEpyqJEm8W5dTAnSckOd+3xKPt5BHTRKqI8r2uD
         csGIXuAJgocdlrxOxGiKo6MPkCdXm28a7hb6QbGZ+TevJ3NJyfbG/spgmWT41h8WHvEV
         i0PU7+SNNcn/qqqNvSfpMj3dOqYk2qDoYSrznGzwynen7TyUGyyB+BK3oi+xX6IeVXEY
         Chqtx/oOdm4Z0YbzffCN4L7JcGx5CKHxz+U6UPQ/OAaMhuW2TtNaAowPVxvZEd1AtyE1
         V0Lg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:in-reply-to
         :references:message-id:content-transfer-encoding:mime-version
         :subject:date:from:dkim-signature;
        bh=5fcNlQ9T24uge5oVN+HIVv2zdX2lahNBBakZX7gPYRU=;
        fh=asZJ75wloaDRmmfiDVF89NvYE5uUSSxbvWXpbYROCsQ=;
        b=MwkOdRRFaPly3U47nvLLsQHwTYgMvgl5BnQ05pPasG1XqDmlujTEgUcWupeJ1F2CFA
         bxK9tQOJDrfTc/owIHvuCXyUiCres2oiSP5vsEMsarDAqr3MHKtohE1s6Y68M6oTMsRl
         qyDpv6lkgJGFYxnhBi4dnEVQE4DQ8PPV5Lt8XUa6KMheXF6nJ+IqWjYrcPh6gF1E3q3/
         +4na1NNXTt7wS/4H42ryvEmaMN00Era6IctUtGNG+jmGQYz3USwVbRhzukk65tHj1a5Z
         uBhX/EbNOX5UZaN81nk3BROCkCSKdNf0JHVfbwsTKaaduQqb+tpdejIkE/osNdpsVEI+
         G3jg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ZFqTgdqE;
       spf=pass (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=devnull+j.ne.posteo.net@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1740579453; x=1741184253; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:reply-to:cc:to:in-reply-to:references:message-id
         :content-transfer-encoding:mime-version:subject:date:from:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5fcNlQ9T24uge5oVN+HIVv2zdX2lahNBBakZX7gPYRU=;
        b=BsiwZzuq5Y1L94Bzr6Vly2Pt2jZpLU6SkB4cMQ0SDlY3HA0o5N2IQ2P9gZHHrpIzt5
         4jj0Hay90GnqNrO4+OoxlLVOX/SwiaR9KbPIXeNjkEGQpl50rAhjuTY1fUXRTzV+gF5R
         RNCvXNZ4bPUnRZUhs9xBoIhxrfVoK3hhSSUgo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740579453; x=1741184253;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:reply-to:cc:to
         :in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-beenthere:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5fcNlQ9T24uge5oVN+HIVv2zdX2lahNBBakZX7gPYRU=;
        b=q6hJNwEvEArjQbpzvL7O7YoWxYr91N9hgwIatok29Y0kSAbUxoW3orrIj+Z0eS28wH
         R8ZRqYtALrBlfxcJE6JNVQ0pusjzKcpXCaMl06YAZeE+qQOoYm49wuHc71EXx9br9qPA
         UkxriTetoXZV0ze5xWYqwmon27efOA7fLe3Ilvj5Ldt7DgSkU2xH695ZqpCoUpceqpIz
         5sKKhSUtCfDcAAuAYduvNFy/3uYRRVy9QXSYrm4qGl21/p71HOsNifwVdGGRN6lj81Ja
         c5LL6WJsVokpMQYmB6evbxgSASLNopH6nSQOc5mldUS7NHBZinhA9XYMpxXth+qb+iVs
         lodQ==
X-Forwarded-Encrypted: i=2; AJvYcCVRDF7dbw5p65tCAG81Oh/ezBamsD4AVd0FFH39HD/CkfEq2dkTomV4pzqavdM3hQX4UiEKsw==@lfdr.de
X-Gm-Message-State: AOJu0YyDteeOTnSqMdsJyEJWyahRVDrsNCYR6aZr2FTe0D1K4UGmIhui
	q837XborhcCX3lHfDMtGKqOaSPufHu6Vr7kQkqn2J1u2h0Gx2wANQaWA0sMT6GM=
X-Google-Smtp-Source: AGHT+IGh/r1nFCRCbIx+09J34x1PJ3rSgk3YNBqOjgwe1UM+JH1/BbWnbVFAt9BOTLh/xt6HNBwm3A==
X-Received: by 2002:a05:6820:1907:b0:5fc:f3b8:78c1 with SMTP id 006d021491bc7-5fe93758fefmr4007606eaf.1.1740579453033;
        Wed, 26 Feb 2025 06:17:33 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=Adn5yVGTso/nTYwbmBmzFMoqhkO5Zrhi5KB4Gfa2xaPNHtotig==
Received: by 2002:a4a:d12b:0:b0:5fc:f5a7:d72a with SMTP id 006d021491bc7-5fe93d2ce1fls672807eaf.1.-pod-prod-06-us;
 Wed, 26 Feb 2025 06:17:32 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXyZwvmyYY+irLvMh3S1O/h2as2aGMUUI4C/jIIcvB2GHTeFi/3xTOk4dOsm/HAgTwwIrUWfNCjho7nkg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6830:370b:b0:727:42cb:db30 with SMTP id 46e09a7af769-7289d19a0f3mr4992161a34.26.1740579452351;
        Wed, 26 Feb 2025 06:17:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1740579452; cv=none;
        d=google.com; s=arc-20240605;
        b=PkGTug6ZHvVPKCqgYZ4Zzd3NQvxZb2nXUoL4kxi9kKG72jGm2AY+mmOGseMVScus8U
         5mu37bDbOU5ReHyBEv1vRndXO5WagmudhkKaXGx9lRLuqGPhPkhZPwbAtirNhjJreo5M
         084njAJdSCPHtR0SxFEVjbsW54hBY1zq+pArfSbsVovITNBvTL0qxf6iETvt4+ABUsUo
         osTbWYwEmYq/lTeQqCzv73sSc60s4yWaH8J/0z8EoJwPfd5H5NqXCZhsZ1Z0V1ewkwN/
         0a+kWqmlkUoUUT248qeuZWY3HGLHzZcyMIGsxtAbdO08oTjnd+hwaLBL207QoAJck91x
         dOYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=reply-to:cc:to:in-reply-to:references:message-id
         :content-transfer-encoding:mime-version:subject:date:from
         :dkim-signature;
        bh=B+80W0vmJ6Qup/2HFRoQsH4DAfDheFNTRY+SrBEYIBs=;
        fh=t85edx+sQ1Skfp7ZeTpNIH3lUx4BfFwBq5zypEnFHfI=;
        b=NN5O0ceJvMYI4Pa8zDFFMcPxKr7kh0KbMKs7HZztGMG6aqHQsEAowgOvJSq6zMf/gS
         7VRHkrkKPc+31zYybgZeYjqdAtVPr9J/w+AMr+XO2/Togm9Q9+v8KnSJ02HReZYyo4x8
         Y0LGexnHoHJvo42/jNmYDEfEATOYyEbPM3vLn9YjZXgBJ96t84TB292UFdtkSiVbN9kg
         vJ75TXz/GDdljzP1HqLSAo77STS7daiTVc2/eOidP4RJKP5KpOKOKmmr17TGZFdQXInU
         Qah4oNs0rRSXCaM44hOUYMT03pnrQVkypZTu2YufbOQSroLM+Szyg9bJ/2qwadTV46bv
         s/Wg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ZFqTgdqE;
       spf=pass (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=devnull+j.ne.posteo.net@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by mx.google.com with ESMTPS id 46e09a7af769-7289df4e13csi3077601a34.207.2025.02.26.06.17.32
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Feb 2025 06:17:32 -0800 (PST)
Received-SPF: pass (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 487465C702A;
	Wed, 26 Feb 2025 14:16:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C323BC4CEEA;
	Wed, 26 Feb 2025 14:17:31 +0000 (UTC)
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBF54C19777;
	Wed, 26 Feb 2025 14:17:31 +0000 (UTC)
From: =?UTF-8?Q?=27Jonathan_Neusch=C3=A4fer_via_B4_Relay=27_via_USB_Mass_Storag?=
	=?UTF-8?Q?e_on_Linux?= <usb-storage@lists.one-eyed-alien.net>
Date: Wed, 26 Feb 2025 15:17:27 +0100
Subject: [usb-storage] [PATCH v2 5/9] usb: storage: initializers: Use const
 for constant array
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Message-Id: <20250226-misc-const-v2-5-ab655a4a29cc@posteo.net>
References: <20250226-misc-const-v2-0-ab655a4a29cc@posteo.net>
In-Reply-To: <20250226-misc-const-v2-0-ab655a4a29cc@posteo.net>
To: Alan Stern <stern@rowland.harvard.edu>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Jonathan_Neusch=C3=A4fer?= <j.ne@posteo.net>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1740579450; l=891;
 i=j.ne@posteo.net; s=20240329; h=from:subject:message-id;
 bh=E3sv7MUTjUoAFshGx3e7fa3LASnJqeGyCGNhGtip8E4=;
 b=e9djsAqkZ4XnlACb+EI453tnroUtGkD58yGmdSWYpfkInGcsTwB551/xvIIPIytkjdEKrY7V2
 3JcC++IDHIsAQA0IpzE4CRdD36/ISBdF8NxT402z/qLs60wHbX+Ydws
X-Developer-Key: i=j.ne@posteo.net; a=ed25519;
 pk=NIe0bK42wNaX/C4bi6ezm7NJK0IQE+8MKBm7igFMIS4=
X-Endpoint-Received: by B4 Relay for j.ne@posteo.net/20240329 with
 auth_id=156
X-Original-From: =?utf-8?q?Jonathan_Neusch=C3=A4fer?= <j.ne@posteo.net>
Reply-To: j.ne@posteo.net
X-Original-Sender: devnull@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=ZFqTgdqE;       spf=pass
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

init_string is only read, not modified.

Signed-off-by: Jonathan Neusch=C3=A4fer <j.ne@posteo.net>
---

V2:
- new patch
---
 drivers/usb/storage/initializers.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/storage/initializers.c b/drivers/usb/storage/initi=
alizers.c
index f8f9ce8dc71029aff5ceaf4d62f596a30bbceca2..b243bd5521a66deb3ca3603b52c=
cf603e191a4de 100644
--- a/drivers/usb/storage/initializers.c
+++ b/drivers/usb/storage/initializers.c
@@ -54,7 +54,7 @@ int usb_stor_ucr61s2b_init(struct us_data *us)
 	struct bulk_cs_wrap *bcs =3D (struct bulk_cs_wrap*) us->iobuf;
 	int res;
 	unsigned int partial;
-	static char init_string[] =3D "\xec\x0a\x06\x00$PCCHIPS";
+	static const char init_string[] =3D "\xec\x0a\x06\x00$PCCHIPS";
=20
 	usb_stor_dbg(us, "Sending UCR-61S2B initialization packet...\n");
=20

--=20
2.48.0.rc1.219.gb6b6757d772


--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-al=
ien.net/d/msgid/usb-storage/20250226-misc-const-v2-5-ab655a4a29cc%40posteo.=
net.
