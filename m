Return-Path: <usb-storage+bncBDAOJ6534YNBBCFEZ24QMGQEGCFWAXY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf46.google.com (mail-qv1-xf46.google.com [IPv6:2607:f8b0:4864:20::f46])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F9D99C5F18
	for <lists+usb-storage@lfdr.de>; Tue, 12 Nov 2024 18:36:10 +0100 (CET)
Received: by mail-qv1-xf46.google.com with SMTP id 6a1803df08f44-6cbf039dccfsf94614756d6.0
        for <lists+usb-storage@lfdr.de>; Tue, 12 Nov 2024 09:36:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1731432969; cv=pass;
        d=google.com; s=arc-20240605;
        b=hCNvgJB3XXdoWajTCcV3Nx7v9+14tJ6HQu0UipKFVV0F/yjBLQcxegLG5eWCewLur9
         +Y+Qxf7TWx4/RUdED2nVAdL6wE3bfunggOlwwweFN5VycLsYGzMh+WWcIMsM4TpJG2BG
         Wn1/wSHyt31/WjFZwa2apPi7JKoZ90oKkiOr/USzqKrA7tSaxOaEgWWAFxXkiRkqvDVE
         mwFA0I3g0JBMrP1+6iLo7/Hb1nQuSaUN9njKkD37Jy/xtfi5LxFXTBI/OW+2vXNIwC40
         ufh/TIgnu66PZn6fB8GVVrx6Eex7mOTyV9UdtZIRs7jEiQW230+/8LdX4vNVMkC3vJyp
         s/BQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ecxn/LvSvE1rgmX6P1Avi8G3TQ2mHO6pgDeDXQHJswM=;
        fh=DUbXS98Brm86pcwYkeaqsysW42eHezFy5HdPDbh0YEs=;
        b=jGHI3gLZUcAP78hhLdeAeX3K+zYxHsfAHt/IaG/2NLLLdju8x1ysx+xVFQfFGAJNLF
         +y8jF8izXvpTFxZ8MgYL1b4uBw8ZMk4ryZc1qQSbvAxhmZIVcPURKr36i6Oh2mvNcIv/
         +7nmDPiAeeKFpctOJjDNV2+fKSeCyRQcDKIWHok+0aWJtu1r+XAs9+OJKKsdqfFWAdt1
         5PytzznMW8oGRLoNz/bSjpjm9gPwGDzzopR44I/Zg3yEVKArspgwhNqZBH5iyTD3A93u
         pkKovkKVeqwvznn+m6kNybB35FcSifUezAbBYgzKed3xrjbVGbPfMqwYoKSb5TvbUMyQ
         lfHw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=blVAgSzU;
       spf=pass (google.com: domain of snovitoll@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=snovitoll@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1731432969; x=1732037769; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ecxn/LvSvE1rgmX6P1Avi8G3TQ2mHO6pgDeDXQHJswM=;
        b=PBNco13o9ZCOEKmiyMVp6CRt7rKUbYhGNTA0N5IAM5eqiuo4ASvfTyFd7aZyYFFcdg
         PFNrCwX0dzsegEqHmAZZ3CF4z7J5gQySX/ZBxcB43bGlxNEr2uyDaIE7bpN4W3sDyCkm
         9WOGGb6edtNTU/wBqScjXop0QahYpB93r5YKw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731432969; x=1732037769;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:x-beenthere:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ecxn/LvSvE1rgmX6P1Avi8G3TQ2mHO6pgDeDXQHJswM=;
        b=XT/b0IanIMCrQcG7JW24DaHIsOnXlDlOVc6LFlneKJHLYMZeZWRKfrLPIW2oSBkms1
         ysXFjK2fvq7XTBt9Q4JN6ILHJAip2rM7WI9MIZ8hZd3YhlAD+36AcOG6wvIav+Xtkp1g
         el/+yZcvQxLHLfZgGuEKm0DHjzuIEiYP6TLdY1cBTJdXG74UGn8zOmu4yGCBCyoHdVW0
         9suYHJ1wIrPC4+t4hNFdn8TTdpJjl3t0tJ8JguGq6XH1sEkZd1tdcUjitat68m5Bg5jY
         WJAHhLCMCj6ySNppbAZFnqn4Dg9QBFkfjjn1Plk8tqAd93gMmiFhHIVAZO4ltBAZZVXs
         RjIg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUR72f4GQR6qOprjUTwdQU9/xj9xXwBNJC8nFs/tKlniZjU6KFUlhG9GWov5aF2n8bLIe5N3A==@lfdr.de
X-Gm-Message-State: AOJu0YysUg9qr1n0LhsyoduVeKpT182chrbpJK8VtvjZycBf4gT5hFCq
	bYMSSiBXEemNKHSPLw/kIVwOx4fThgafLXeBhjaWYIp1GO8MqkvL4Sk5SNLeTEg=
X-Google-Smtp-Source: AGHT+IGYVS9MdueuQ9ntaC1On4kXHKLKVLw8b3w2OdIMN/azYoKmBJd1G6UCTtSseqYOzubpG5zUqg==
X-Received: by 2002:a05:6214:3286:b0:6cb:c54c:b782 with SMTP id 6a1803df08f44-6d39e1d04a2mr248694636d6.32.1731432968810;
        Tue, 12 Nov 2024 09:36:08 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6214:2601:b0:6b5:da50:ac19 with SMTP id
 6a1803df08f44-6d3935555f5ls88926396d6.2.-pod-prod-07-us; Tue, 12 Nov 2024
 09:36:08 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUgx7/5Y6OeFObb55zGfZ/DqKLO69VR0VSjpjq32STka679jlPOAvQaiZBkPYl25tOI+wgDp8rUDvnKCg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:620a:1a23:b0:7b1:1079:ea8c with SMTP id af79cd13be357-7b331ec60d9mr2338151085a.35.1731432968250;
        Tue, 12 Nov 2024 09:36:08 -0800 (PST)
Received: by 2002:a05:620a:134c:b0:7b1:452e:2a50 with SMTP id af79cd13be357-7b34c45cf9ams85a;
        Tue, 12 Nov 2024 07:58:26 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXzhdi3I7b0b0R3cDci8dpZ/RTPH/SZ6N92eFIdJeVeUKcpCf/5EX6Z+f37kfqnF33E0GBKBLdH9obhfg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:600c:1c15:b0:42c:a580:71cf with SMTP id 5b1f17b1804b1-432b751e27cmr143234885e9.30.1731427105037;
        Tue, 12 Nov 2024 07:58:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1731427105; cv=none;
        d=google.com; s=arc-20240605;
        b=bgz5YylPnc3quzMbIF7Jrh7DdymyH63zjIU7MSHQaOya5E06irWvNMzM8dzwLUka53
         6b73lELTQF9sltWyAVFxmxuKIRWt6lEdyLI0MFEYjt1MNuryFOA/E+T0De/5JIP1pikE
         Jp5fIvL0ALsbfdwgG0SJpdfgZyXFj81x/bu+mA6tTTYWkwWcJHoZz7qPwL57EyjF4ZDf
         W3XDrxwBhkiDeTM3QMPmhm1olpA7kkMpFVuz3EjrK9KzzCCX1bTMGj/n80BuIYw0FUvM
         hMuX5wgFuf5jsabAaGtZxj5a26LPc2oNWqy5HgaYCdSJRt/w1Ba/nZw1RWWX5CJ7gCwr
         GXVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=q/qVENU9+N/71Xr2X4szHCr6pk0/5uELMhfDCvBqSqQ=;
        fh=6LruZMr13AJkO1NEZuc/LoMIhtZKGVp2HS8hXSNYE/Y=;
        b=Eb1WIqe/fyuPkelVakCXM7f3isipe6uhXXd5Ou5deiNgUawdu6biJCjdcLgV2BMkZM
         763hzvPzWAAyNeasivPVDdMRcZ9i15Z5v6aqza33BFvibsMf/MhEondNHi9OphE0Dy7H
         l/APXd4W7J9spcgBTugStkmiM2SY/ePeMfF2npFPIxnmoAueME/TUTpXZaKJXpo/Vdhn
         AYEKxciheMQMulSb/QgxBgNx6d1mmEi1gkb7mZV0vLDsIgOtlHiaMKSs5a/PBfx+Xa4L
         NgULBIvDOlLAiS1Tvd9tFpyxF/Zdhx4SyLaJEJ9G3LwhKaF2hIakdeTZbHKYTdIAU5T4
         bv5Q==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=blVAgSzU;
       spf=pass (google.com: domain of snovitoll@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=snovitoll@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id 5b1f17b1804b1-432b0b75c3esor45234235e9.8.2024.11.12.07.58.25
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 12 Nov 2024 07:58:25 -0800 (PST)
Received-SPF: pass (google.com: domain of snovitoll@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCUc18Qx9tLdJI1FPewpN9TlRcoRbgpd09gPwvj0dLQCJ26gyNmMoHLI2cnnCM0gUAODeov0c1kRE/qkZg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:600c:6987:b0:426:8884:2c58 with SMTP id 5b1f17b1804b1-432bcafd113mr118177695e9.4.1731427104394;
        Tue, 12 Nov 2024 07:58:24 -0800 (PST)
Received: from work.. (2.133.25.254.dynamic.telecom.kz. [2.133.25.254])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-381edc1104asm15991136f8f.88.2024.11.12.07.58.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Nov 2024 07:58:23 -0800 (PST)
From: Sabyrzhan Tasbolatov <snovitoll@gmail.com>
To: gregkh@linuxfoundation.org,
	andreyknvl@gmail.com,
	b-liu@ti.com,
	johan@kernel.org,
	oneukum@suse.com,
	stern@rowland.harvard.edu
Cc: linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	snovitoll@gmail.com,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] [PATCH v2 0/8] drivers/usb: refactor min/max with min_t/max_t
Date: Tue, 12 Nov 2024 20:58:09 +0500
Message-Id: <20241112155817.3512577-1-snovitoll@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <2024111251-spill-hatchback-72da@gregkh>
References: <2024111251-spill-hatchback-72da@gregkh>
MIME-Version: 1.0
X-Original-Sender: snovitoll@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=blVAgSzU;       spf=pass
 (google.com: domain of snovitoll@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=snovitoll@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com;       dara=pass header.i=@lists.one-eyed-alien.net
Content-Type: text/plain; charset="UTF-8"
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

This patch series improves type safety in the drivers/usb/*
by using `min_t()` and `max_t()` instead of min(), max()
with the casting inside. It should address potential type promotion issues.

Scanned the current drivers/usb code with `max\(.*\(` and `min\(.*\(`
regexp queries to find casting inside of min() and max() which
may lead to subtle bugs or even security vulnerabilities,
especially if negative values are involved.

Let's refactor to min_t() and max_t() specifying the data type
to ensure it's applicable for the both compareable arguments.

Changes v1 -> v2:
  - split a single patch into a patch series
	  per each drivers/usb/* subdirectory (Greg).

Sabyrzhan Tasbolatov (8):
  drivers/usb/gadget: refactor min with min_t
  drivers/usb/core: refactor max with max_t
  drivers/usb/host: refactor min/max with min_t/max_t
  drivers/usb/misc: refactor min with min_t
  drivers/usb/mon: refactor min with min_t
  drivers/usb/musb: refactor min/max with min_t/max_t
  drivers/usb/serial: refactor min with min_t
  drivers/usb/storage: refactor min with min_t

 drivers/usb/core/config.c                    |  2 +-
 drivers/usb/gadget/composite.c               | 12 ++++++------
 drivers/usb/gadget/configfs.c                |  2 +-
 drivers/usb/gadget/function/f_fs.c           |  6 +++---
 drivers/usb/gadget/function/f_mass_storage.c |  8 ++++----
 drivers/usb/gadget/function/uvc_video.c      |  4 ++--
 drivers/usb/gadget/legacy/raw_gadget.c       |  4 ++--
 drivers/usb/gadget/udc/omap_udc.c            |  4 ++--
 drivers/usb/gadget/usbstring.c               |  2 +-
 drivers/usb/host/ehci-hcd.c                  |  2 +-
 drivers/usb/host/oxu210hp-hcd.c              |  4 ++--
 drivers/usb/host/r8a66597-hcd.c              |  2 +-
 drivers/usb/misc/usbtest.c                   |  3 ++-
 drivers/usb/mon/mon_bin.c                    |  2 +-
 drivers/usb/musb/musb_core.c                 |  2 +-
 drivers/usb/musb/musb_gadget_ep0.c           |  2 +-
 drivers/usb/musb/musb_host.c                 |  5 ++---
 drivers/usb/serial/io_edgeport.c             |  2 +-
 drivers/usb/serial/sierra.c                  |  2 +-
 drivers/usb/storage/sddr09.c                 |  4 ++--
 drivers/usb/storage/sddr55.c                 |  8 ++++----
 21 files changed, 41 insertions(+), 41 deletions(-)

-- 
2.34.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20241112155817.3512577-1-snovitoll%40gmail.com.
