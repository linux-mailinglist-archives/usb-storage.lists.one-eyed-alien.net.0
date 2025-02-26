Return-Path: <usb-storage+bncBCD353VB3ABBB7OE7S6QMGQEVAG42YI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x145.google.com (mail-il1-x145.google.com [IPv6:2607:f8b0:4864:20::145])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B6D3A46227
	for <lists+usb-storage@lfdr.de>; Wed, 26 Feb 2025 15:17:34 +0100 (CET)
Received: by mail-il1-x145.google.com with SMTP id e9e14a558f8ab-3d2a40e470fsf53675425ab.3
        for <lists+usb-storage@lfdr.de>; Wed, 26 Feb 2025 06:17:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1740579453; cv=pass;
        d=google.com; s=arc-20240605;
        b=MbycZQFYgjGRovJOPsG+RUhMsMsv5egAzouUTBS1dAFmvzirwMwbWfWeMTj8psiuLH
         JFs4euecnuu7P6M/yLlgqu9WTRItJp805MvaMjcWbzm+r3vvN3937hgIsTiFrQ7L6BRj
         QhcdBEKmMUCCjHenvwLxtFq4/rLmoVYfPHMCD5nPWlQ8YqsFxsMZfHNMRjJRgrbRWdlw
         I9CTxqN95DqXfpN5teX5f+RXzaUR1TKy3whn3K6UZ4c2Das6L7yhpCs3KpPGTVE+/8aS
         PA8wVJ+1m+qnIWfhp96BTXLE8PhP3rN4Ab3qfgtiCiWGqFjYcnKZi4y9FlCQqvjXz60K
         8mFA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:in-reply-to
         :references:message-id:content-transfer-encoding:mime-version
         :subject:date:from:dkim-signature;
        bh=kyyY5qHWYz1W2ebiXec454jXE5lM+ZNab6WP1lXvtkc=;
        fh=3rbw1ccsBrc+Ew7Lcy3IzVPkzfcwxKxbs35s94H9nEM=;
        b=BM/jpfarlAr/tuw8j/7We5aZa+RXEMeCHeqizxvVPGdFig6niaKuESo8bzacI9DVcY
         UcqK45vZ2voXXYlj8H7Gnei1xs6VzzIv633OnhT7oQhjcQTe1ObMlmPWAfrkPmTQ5PxM
         QNRkaDFlRKiuNkkUuMnRo5LttfJYv2GbfenX6+AoKs+er4u/uUJpNFB0ChsHO6oIpgNG
         hOIvyKt4ay7yyk9bx8mev/mWy8gz09aTVIsRSyf0Md4Fm4VpCRZIdd6sQWvIVQXv6toK
         RlJjjR6VdBGhyya7nRf2JPBXGXTZ+WWZqzMZ3Sbf7I+39w1L3u2Dfo4c+bVhKHryxf6/
         GXcA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=LBR+PAyE;
       spf=pass (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=devnull+j.ne.posteo.net@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1740579453; x=1741184253; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:reply-to:cc:to:in-reply-to:references:message-id
         :content-transfer-encoding:mime-version:subject:date:from:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kyyY5qHWYz1W2ebiXec454jXE5lM+ZNab6WP1lXvtkc=;
        b=HVwdCoNcC+iPE/hbc5Yel7HNz7kCkT7CG6QLTI9KsoJOCRVHhwmb4oJpSJaapv452b
         nA1STK1VoxDPQpB07fUK2LPNOIsDJOoSuiIro49zh+ePuqv7p2kVHSHssgaBk1EsLsDr
         OD9eRF69FmjelwjaDW2hWg3vA6NBck+yQyPwg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740579453; x=1741184253;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:reply-to:cc:to
         :in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-beenthere:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=kyyY5qHWYz1W2ebiXec454jXE5lM+ZNab6WP1lXvtkc=;
        b=S3Ib5/nXDMg7ZG8wm6jkiZLwleW4fcWv/NSmSQNuBSARV9kdhULBv+elroQe49Ckmp
         temmWzl75DZsoSbYLdGzNQhvGbsAFpHzgji4RfbyLz15pYQXGfpjN0VRwB/XGQWsf4ZJ
         hkCEImJLORHOveR7m08GPhJTp03TvLhA8oqxCrPkw6bM0AMIlYPqzBl9+8NH4Y4Qsjo5
         LLyokWSYTkhIQziSM8cIAakV22ajkG6gyFsi4uZ3eQQUVICmzYDt9/SOmjXSeL57QSOF
         2DuRTVc9VuPAgq6K6iTpZ2nIa0ntfk1c8Lv5kkNfGXzBt8PF/EpgHWEW5FdZreFHyqqp
         kYkg==
X-Forwarded-Encrypted: i=2; AJvYcCWzVagV+NgTlaQRyv7pypXPmCYKgnzquJlyh+IdrOAOwaWK+UbAZEuoPOvd7H4c9ghvSLTtng==@lfdr.de
X-Gm-Message-State: AOJu0YyTe9scArz4R7Jgqxf4ucFuTCyAMRgV1iFIf3COK3T1VJ1eRBDY
	g2ZmhiLC1W+7hRS/Ho4EhVODCdJOKwd9mk/tZVSWFETYt+r+WbXZta8pZKJivgU=
X-Google-Smtp-Source: AGHT+IFdmFS2LzRwKi6B5S9jqhp+YnFw3QojQdxL7dTNFBDYut3r+6OVwO7TNLyN5xB9FvUCR3fR2w==
X-Received: by 2002:a05:6e02:1fc7:b0:3d1:883c:6e86 with SMTP id e9e14a558f8ab-3d3d1f45871mr38468575ab.8.1740579453382;
        Wed, 26 Feb 2025 06:17:33 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=Adn5yVF3S6lXlGI/PE6Vss6RIxd4ja7dH68oulJ/qVbULhFFOw==
Received: by 2002:a92:da0d:0:b0:3d2:abdb:b6ea with SMTP id e9e14a558f8ab-3d3d25bbc05ls4669085ab.0.-pod-prod-07-us;
 Wed, 26 Feb 2025 06:17:32 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXOBIM8LU9BwvoIwIsEAMwzcBtmlvh7AIrSgOMC0tsQLsmDl/RjkfRlN9k0lidY83JM6eBPobL8mpCB1Q==@lists.one-eyed-alien.net
X-Received: by 2002:a92:c267:0:b0:3d1:9cee:3d24 with SMTP id e9e14a558f8ab-3d3d1f4f0c9mr35866965ab.11.1740579452636;
        Wed, 26 Feb 2025 06:17:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1740579452; cv=none;
        d=google.com; s=arc-20240605;
        b=PT1wwXTHG4noM4k9UbAMiEO5K6GuvZ7mBSl9bAYIk+LHrkV0RfHsDrcSjV3lGJNn1U
         fluXBSrO3No/Ug5T6RgW8rXJb9fRqYNbIt7744mYgIWLv7cxV72ZoaKikQpnnL1qKfxy
         2uM35aA5qiGu9ZNzWkGPs7ayOUWxCMDx0sjIctbSMPU3JSVKRXWdAIo6syTjqBrf5QM3
         cv8/Ubf5jgs5GniX/z93O/Mbww1677SBiqiEnykIzUMPs4RzU5HlR5WZTgDT7GZuLToD
         m4PRaN5nb9gujCKfGSouZAriDSBDfxaovub6mHseToJ5qgcMu55Y6d/Kj1opdMIxnivM
         /0AQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=reply-to:cc:to:in-reply-to:references:message-id
         :content-transfer-encoding:mime-version:subject:date:from
         :dkim-signature;
        bh=dl/r10bmbH0hTjnjPeUXMzlsQe9WdK4YBL0QQIMLdek=;
        fh=t85edx+sQ1Skfp7ZeTpNIH3lUx4BfFwBq5zypEnFHfI=;
        b=HajVFCVU5/4O+CJxumH2t2WbhFI0nhv1PRpMw+nf2CbABWduSbJd0Sl209uLqUKaM9
         5rvLtI5Uw3pyiIHqv4AhodCfA/ReJbzJaTQrF9d92SpIVUMuSUHLDQhSdGs/w1vbtlqL
         SnKUb1/sZfuQhJDFP8toIINtz0dqmDO3GNuwWMkLGf2YXZsAkCeMM2WnvCsRImJR2fxl
         3TwtqwHVgFn5+3bQ1oX4vZGls57pmJ6MGmyoBVAkndHZ6wcC0EeH0Kniq5x5sfuZpQSE
         I56AcjQdfLOogxHISTxbm66I1HrUC2akdrlZyMKhLuLyIfByjpFZrg3XUVUby1Asa5uP
         VtzQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=LBR+PAyE;
       spf=pass (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=devnull+j.ne.posteo.net@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
Received: from tor.source.kernel.org (tor.source.kernel.org. [172.105.4.254])
        by mx.google.com with ESMTPS id 8926c6da1cb9f-4f047455b7asi2697318173.8.2025.02.26.06.17.32
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Feb 2025 06:17:32 -0800 (PST)
Received-SPF: pass (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates 172.105.4.254 as permitted sender) client-ip=172.105.4.254;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 7E70E6123C;
	Wed, 26 Feb 2025 14:17:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F37D8C4CEEE;
	Wed, 26 Feb 2025 14:17:31 +0000 (UTC)
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EA84AC19778;
	Wed, 26 Feb 2025 14:17:31 +0000 (UTC)
From: =?UTF-8?Q?=27Jonathan_Neusch=C3=A4fer_via_B4_Relay=27_via_USB_Mass_Storag?=
	=?UTF-8?Q?e_on_Linux?= <usb-storage@lists.one-eyed-alien.net>
Date: Wed, 26 Feb 2025 15:17:30 +0100
Subject: [usb-storage] [PATCH v2 8/9] usb: storage: sddr55: Use const for
 constant arrays
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Message-Id: <20250226-misc-const-v2-8-ab655a4a29cc@posteo.net>
References: <20250226-misc-const-v2-0-ab655a4a29cc@posteo.net>
In-Reply-To: <20250226-misc-const-v2-0-ab655a4a29cc@posteo.net>
To: Alan Stern <stern@rowland.harvard.edu>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Jonathan_Neusch=C3=A4fer?= <j.ne@posteo.net>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1740579450; l=1112;
 i=j.ne@posteo.net; s=20240329; h=from:subject:message-id;
 bh=C7r28z1CFDV+sjQ7yiPOSMNteEWeKSpRUku1z3cAVDw=;
 b=YuvuOBJy+MirOAneLt7BuRHA3K01RUAXy/oJzPdR4gMU/FUr1G0Dut5fQeBkMLP3Mqei9WLw5
 /KKgx2FY460BuIB3Lj4iv23TkpxIWhNYdfxfbm3NITH3RwC8Wx4X46r
X-Developer-Key: i=j.ne@posteo.net; a=ed25519;
 pk=NIe0bK42wNaX/C4bi6ezm7NJK0IQE+8MKBm7igFMIS4=
X-Endpoint-Received: by B4 Relay for j.ne@posteo.net/20240329 with
 auth_id=156
X-Original-From: =?utf-8?q?Jonathan_Neusch=C3=A4fer?= <j.ne@posteo.net>
Reply-To: j.ne@posteo.net
X-Original-Sender: devnull@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=LBR+PAyE;       spf=pass
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

These arrays are only read, not modified.

Signed-off-by: Jonathan Neusch=C3=A4fer <j.ne@posteo.net>
---

V2:
- new patch
---
 drivers/usb/storage/sddr55.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/storage/sddr55.c b/drivers/usb/storage/sddr55.c
index d5cdff30f6f31f98d3d58ffcdd2426d7cd385cbb..b323f0a3626031905b946ce64dd=
f04539a6e3232 100644
--- a/drivers/usb/storage/sddr55.c
+++ b/drivers/usb/storage/sddr55.c
@@ -775,11 +775,11 @@ static void sddr55_card_info_destructor(void *extra) =
{
 static int sddr55_transport(struct scsi_cmnd *srb, struct us_data *us)
 {
 	int result;
-	static unsigned char inquiry_response[8] =3D {
+	static const unsigned char inquiry_response[8] =3D {
 		0x00, 0x80, 0x00, 0x02, 0x1F, 0x00, 0x00, 0x00
 	};
  	// write-protected for now, no block descriptor support
-	static unsigned char mode_page_01[20] =3D {
+	static const unsigned char mode_page_01[20] =3D {
 		0x0, 0x12, 0x00, 0x80, 0x0, 0x0, 0x0, 0x0,
 		0x01, 0x0A,
 		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

--=20
2.48.0.rc1.219.gb6b6757d772


--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-al=
ien.net/d/msgid/usb-storage/20250226-misc-const-v2-8-ab655a4a29cc%40posteo.=
net.
