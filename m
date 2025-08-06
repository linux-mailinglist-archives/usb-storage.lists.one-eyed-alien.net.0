Return-Path: <usb-storage+bncBAABB3V6ZXCAMGQEDSH6IFY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oi1-x245.google.com (mail-oi1-x245.google.com [IPv6:2607:f8b0:4864:20::245])
	by mail.lfdr.de (Postfix) with ESMTPS id 01DD2B1C72A
	for <lists+usb-storage@lfdr.de>; Wed,  6 Aug 2025 15:58:08 +0200 (CEST)
Received: by mail-oi1-x245.google.com with SMTP id 5614622812f47-433eee47614sf990089b6e.0
        for <lists+usb-storage@lfdr.de>; Wed, 06 Aug 2025 06:58:07 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1754488686; cv=pass;
        d=google.com; s=arc-20240605;
        b=CpngWP0q8mJ4iAu80scdxt1EU3L79rTvZLYsb/IDgE5VBXBNHCHn5OWPksa6y40PYV
         3UvUy7sy9Vas5sCfsudsMbKEMUsxbki+n/CJCTdNyXunHJOJS5zTbs75Viny6FVxuyBk
         IWfEYnlQLniOrzibgYPLzfmKn8zGJE/n68JXCjGS70YaMjW0jk1iOwgUM8T3qtLVLwgt
         De1ZeIGmafAGf3i1LCvciMzPnFnodiFjKfwG10+ks/T9HF5SUrOjlVgueQNIcD5blu74
         3g3SCt91zAPykOM3WgjDzMrFqwtvJ2tingQ8z27Zrv62Qwd/LYzEosmv4XPW9VlIqpt9
         SMQg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :mime-version:message-id:date:subject:cc:to:from:dkim-signature;
        bh=B6+Cd7VXANEwnptttn5FrtJL/I7/fz/O7CKVeWtNZrs=;
        fh=ICvYt2jnjZr3h0+VHePx20G7UNMcVSjI1TC+1GgR5Ro=;
        b=YC93WM83DWUvYUEB3TxnO8APIPWsx5KXIxZLlXNS8obvl/E7x2Gxng46w5dVem1htP
         +UQtaNyEmmMhJZJmc/LfYB8qnp+1DhawXzqPTFa1JRwl6XHurtID2wcrYTNn8ngO4EAM
         ESjC2qQ28/dIq3wvvS+Wih1dz5mTjtB3i1hO6vT+ACfSGBeSOtTkTK/lEkGbXmyViw6/
         tGH/gPfc6j261QnStVVoHJFqQz3qkoAcBkvC4yGuua1v6fJlbfb1OjKROkc3DgXnGDHE
         Z6tsOj7JhPw02JfVqabVbewbt5AO8EFFqRo1CgYyRICyZZJsQzY6lGaNuqf6tnPEWzN8
         pOzQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@murena.io header.s=mail3 header.b=T6SsMmXd;
       arc=pass (i=1);
       spf=pass (google.com: domain of mael.guerin@murena.io designates 2a01:4f9:3a:1386::2 as permitted sender) smtp.mailfrom=mael.guerin@murena.io;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=murena.io
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1754488686; x=1755093486; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=B6+Cd7VXANEwnptttn5FrtJL/I7/fz/O7CKVeWtNZrs=;
        b=KEH6sjhuUtfRGigMuV0DXIgJGrywUDhUuc98s/LgE8TYQQuGdL3r2sc3JE9qMeGE//
         nxKX20dn74m3dZh6skhINw3NXpC7K7oWhpkTpaYR2971XTg8zyhq9SYsKFjbOeDah4dd
         H1YhTAiLfY20jaNo1TPNaC4dgZBThAVpg66nM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754488686; x=1755093486;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=B6+Cd7VXANEwnptttn5FrtJL/I7/fz/O7CKVeWtNZrs=;
        b=nr7n+q6V92B8yby1IaOx+BHSxAWzYVm0CL0cdYW1OTJJbC4XldGRpW3oCATuD2DgV2
         o9zFKjBqVdWzEZZNBE07RDzBsk+PZxi3DiH12fV6zq2z3oZP/CuBHNENZsqTNXyIgQvq
         MK7G6Mr8YL2qnJSUg8CeoL3xYdGK1s+P7CObeHkTtbPvfGLH46jeEjp9Go8ngQ6AZmOn
         0KQmpWhm95N0njU7JNaWB/q0HuYwDVZaDQUQwZolw4yXIiKCAmJKcoocDRf4JRowOo/H
         fQDl7ZnKVkb94shzmu4K8CxWmrLwOO8m6nGOipRFoda3Z33TTXrOtbUcQOInD+ZvDaWi
         aQ+w==
X-Forwarded-Encrypted: i=3; AJvYcCXnp7D2lpIVLEJGpZxRNRa6zkdi/A0O+hkvmidAWLSpS+kVGePKsaMTuByG4tI6QVE+uTigkg==@lfdr.de
X-Gm-Message-State: AOJu0YwcHraKnbFGHmYekzzgrMVDTCPiS8+ExohngqvQQTFL+fyx2lvZ
	gNfrhU3JKTGaJ8SuFYq9MpfpOiiPkhu3sEbwJGn5jEb3F+vqmfJQKGaTKfXv/rmrTho=
X-Google-Smtp-Source: AGHT+IHI/fCSsln2lbxNwSgxSxWi7B3GhMZQV2yC/msAGo+edbyCgpDKdmRhcRBBcJ837zcamOW2ZA==
X-Received: by 2002:a05:6808:66c3:b0:435:8506:22f6 with SMTP id 5614622812f47-4358506b1e5mr242383b6e.17.1754488686453;
        Wed, 06 Aug 2025 06:58:06 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AZMbMZedPuCbfGKIpGf66WQNP2yEu7Ys3FxbkJaVhvOF+mWWAg==
Received: by 2002:a05:6870:a912:b0:30b:b85a:bd67 with SMTP id
 586e51a60fabf-30bdf940e97ls389711fac.2.-pod-prod-00-us-canary; Wed, 06 Aug
 2025 06:58:06 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCUnnd8ss4tJoxrfhQAb7OhBJ4UHGZuM69ptmwfZB4mbsdfHDhVk3ww2URG1jOu26ZxT1lq6MD4EnrwV6g==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6808:228a:b0:40b:6531:a43d with SMTP id 5614622812f47-4357ac24ae1mr1735694b6e.2.1754488685950;
        Wed, 06 Aug 2025 06:58:05 -0700 (PDT)
Received: by 2002:a05:6504:5023:b0:2b1:9626:e73d with SMTP id a1c4a302cd1d6-2bf23561f7fmsc7a;
        Wed, 6 Aug 2025 06:47:37 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCU9DQsjJPJWVuZeWTPG4Hyzx3fNXjxsHHzKSjEfXZw5Qr6qAx5rv3lsWr0eNjoqTvlzEa7HaOXkumXJvw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6512:238d:b0:55b:7c51:cc66 with SMTP id 2adb3069b0e04-55caf37a4c9mr1005131e87.32.1754488055776;
        Wed, 06 Aug 2025 06:47:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1754488055; cv=pass;
        d=google.com; s=arc-20240605;
        b=Hrl8BPQSE/WFSjAofIzAqqI10jjycsSKZKBcacq4DVDyBbxlRmnYT0D/1pNIqHxA6K
         /pflunWfdgY3jA5AWmWnhgPk/Gdmx4zYJn+gvoU6LbnqDdpZJi4xx189vIqKRKahGZGR
         TbcZ5S4STpRR2HHoDt/RGve9pOao34uRBEBHYma+FaeyWBzpK+q7MwUKT7OVWkmKtqNm
         ZQkWS66wijPrWpK/jM+9CXBoF+dxgf0RfXYX7IgOzC8RdUpq7rCva9l71PlR5z9AeW3t
         ndm56btmutmnDcLeb1dOGUf+WNLH/LOYQ9PmruH0g7swAWRfy5DFTIJZH+1BgUsdDhog
         QqAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=LjMPDFzW+HuQwFgORsmEAxQAuPPZl/+Yy2R+QuqGAlY=;
        fh=trZDlAkUlX5rfkLqdb/8HBKXqg3YpTpf+K2bUWySUaU=;
        b=lTjHJI/3iGZxY1U00mvUw2uc2312UNJSIoiUHQKYtK/M0FjFxsk/jBkvgD6mIzaTfG
         zf+gYTZdNQtrXYt3yc1NAWfX2uB1Jgort49Qpn336zAka+ajwo9O2y+53i2bgzu3OO5N
         7eAHSauJXE4QjLUs+WLdMnduSdlxQbWN7jbfYzCP9a1uZnklWMWAb+YLzLMTRYwTTBHs
         3S7OT3HgBYGd7ID2TEvfrWCvtDJjgnohSc58ZTs5wt/aqD6ocGeXmi/ZB5sqBuP+UWCq
         LGuqF7XO7MCBtuD0hvI/uI7aVmJFBPCkv2LbLFfNRlUUiX2fGesOfSBXUrQkDN0PbGhF
         iFZg==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@murena.io header.s=mail3 header.b=T6SsMmXd;
       arc=pass (i=1);
       spf=pass (google.com: domain of mael.guerin@murena.io designates 2a01:4f9:3a:1386::2 as permitted sender) smtp.mailfrom=mael.guerin@murena.io;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=murena.io
Received: from mail3.ecloud.global (email3.ecloud.global. [2a01:4f9:3a:1386::2])
        by mx.google.com with ESMTPS id 2adb3069b0e04-55b8bc19816si3825419e87.187.2025.08.06.06.47.35
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Aug 2025 06:47:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of mael.guerin@murena.io designates 2a01:4f9:3a:1386::2 as permitted sender) client-ip=2a01:4f9:3a:1386::2;
Received: from authenticated-user (mail3.ecloud.global [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail3.ecloud.global (Postfix) with ESMTPSA id E57A588A57C;
	Wed,  6 Aug 2025 13:47:34 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=murena.io;
	s=mail3; t=1754488055;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=LjMPDFzW+HuQwFgORsmEAxQAuPPZl/+Yy2R+QuqGAlY=;
	b=t/H+kgKg95paMjTRTDGYZc+6Qoa4ca/rTRIowxFoLuw8bBz90lu1TJvHsT83uL1lPtCiDx
	Z9B8FcEZ7o6hg7eYkzAmfn6/0RTii5br8+9Y1c6mejQ1rLlv3hF9MHxNOHkBdTFNMzS7vY
	3nmq5XfC6obS2tBloPjNx/DAh89w2mY=
ARC-Authentication-Results: i=1;
	mail3.ecloud.global;
	auth=pass smtp.mailfrom=mael.guerin@murena.io
ARC-Seal: i=1; s=mail3; d=murena.io; t=1754488055; a=rsa-sha256; cv=none;
	b=51xr3Nos65+N+OYQ63o8wcNynCR0dqDSJKcuO30kyaqMW4MmdduovU18RKNp/IxcqlbQt5
	p/KUAImwczQkFofjBT9JalzwBXM5rbAH6NdMprWGoRT3BCmBC9knc23XOv1x35LL/4Md7G
	EomOL2FZCOTFNYNuvdDsmPvlCGgDy0I=
From: "'Mael GUERIN' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org
Cc: Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Mael GUERIN <mael.guerin@murena.io>
Subject: [usb-storage] [PATCH 1/1] usb-storage: Add unusual-devs entry for
 Novatek NTK96550-based camera
Date: Wed,  6 Aug 2025 15:47:21 +0200
Message-ID: <20250806134722.32140-2-mael.guerin@murena.io>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: mael.guerin@murena.io
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@murena.io header.s=mail3 header.b=T6SsMmXd;       arc=pass (i=1);
       spf=pass (google.com: domain of mael.guerin@murena.io designates
 2a01:4f9:3a:1386::2 as permitted sender) smtp.mailfrom=mael.guerin@murena.io;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=murena.io
X-Original-From: Mael GUERIN <mael.guerin@murena.io>
Reply-To: Mael GUERIN <mael.guerin@murena.io>
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
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

Signed-off-by: Mael GUERIN <mael.guerin@murena.io>
---
 drivers/usb/storage/unusual_devs.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/usb/storage/unusual_devs.h b/drivers/usb/storage/unusu=
al_devs.h
index 54f0b1c83..7bb5a1d75 100644
--- a/drivers/usb/storage/unusual_devs.h
+++ b/drivers/usb/storage/unusual_devs.h
@@ -262,6 +262,13 @@ UNUSUAL_DEV(  0x0421, 0x06c2, 0x0000, 0x0406,
 		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
 		US_FL_MAX_SECTORS_64 ),
=20
+/* Added by Ma=C3=ABl GUERIN <mael.guerin@murena.io> */
+UNUSUAL_DEV(  0x0603, 0x8611, 0x0000, 0xffff,
+		"Novatek",
+		"NTK96550-based camera",
+		USB_SC_SCSI, USB_PR_BULK, NULL,
+		US_FL_BULK_IGNORE_TAG ),
+
 #ifdef NO_SDDR09
 UNUSUAL_DEV(  0x0436, 0x0005, 0x0100, 0x0100,
 		"Microtech",
--=20
2.50.1

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-al=
ien.net/d/msgid/usb-storage/20250806134722.32140-2-mael.guerin%40murena.io.
