Return-Path: <usb-storage+bncBCD353VB3ABBB7GE7S6QMGQERX7242Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc45.google.com (mail-oo1-xc45.google.com [IPv6:2607:f8b0:4864:20::c45])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DBA0A4621F
	for <lists+usb-storage@lfdr.de>; Wed, 26 Feb 2025 15:17:34 +0100 (CET)
Received: by mail-oo1-xc45.google.com with SMTP id 006d021491bc7-5fcdf31ec8dsf795871eaf.0
        for <lists+usb-storage@lfdr.de>; Wed, 26 Feb 2025 06:17:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1740579453; cv=pass;
        d=google.com; s=arc-20240605;
        b=fFjimLziM7hM5DgK9HojMarEbVrGCuOdwbsoNUWJbc8xMXg4WgxztSQEbxtVEAFysE
         2397lVIdOQ7sHtpb9VJQ6ob0E1r8ATLTVPXc/Ml0sj9Y0ieGsH+wT38inDJK4lLIT9Jb
         FSWs8sqq/jw3wiSMRe2YAeniCadEznHs1NVlirQAFEozddL4Nws/XNuNU5eCBqrB5Yd6
         RyHoi46aegp1V++DU/hv9CgBmjzx/S4m4ynQqEmp4YZRN4t0FDTyHCZ1OG1M1A2CTpBd
         NCKS89nfwtMZXeVMaOoBWGwZkBw8ic7WNJToaAqIBIesHLvKxMYmTz0pkKhT7P2rkEMR
         CNnw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to
         :content-transfer-encoding:mime-version:message-id:date:subject:from
         :dkim-signature;
        bh=MOp1sBAdHO1uVQiXgKl9gjNS8ALmqyHU8V+waYmjZPk=;
        fh=HvUoYwD6BXJuJxlwK/+7hDGfN+MI5wFQvjb0jDf/EMQ=;
        b=KDMQ3yr0UO+2dbN18YY9WCmjqmHj+D5lie3gbkvZ/oalm3/MmiX/OK/VybsX2r8P6k
         LfGTFOhR7KkYBlwFvVT8kGx7nxeVH5blc00hJp1XBL2ZKc9zDWX9F9974LZUBx+ajyyD
         bCP49QRuOjZQDfd5RrzAjGFiFGkrkxsmnGhjpw20Dg9ZDOxJYo5WIL6J8GhxKJDKbhfD
         P5wI/0Fc6yrGmYyEmc2ifBWE2U9w7zYTvZBvBDeyfDhwKiNZDBtrufStlEch+9ZU/aez
         KqapMQZvXCGcskm5tYt+n5ViFgC2N08HQBsmdhvRVCVSlPHCf6yQlhfkZj37ayf0LhZe
         2wTA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=dtU0fFzl;
       spf=pass (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=devnull+j.ne.posteo.net@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1740579453; x=1741184253; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:reply-to:cc:to:content-transfer-encoding
         :mime-version:message-id:date:subject:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MOp1sBAdHO1uVQiXgKl9gjNS8ALmqyHU8V+waYmjZPk=;
        b=FTaUpnZHh+q3h4GpmljpJ1fo3OpU36TuadO/f7cMmiagVXtsLtTpbde36QiUzGcI2c
         iwMGE+jr7qfLxdNibZmAkIXM2lRlpFbkkCUljqwyKwSrscdLXNFY34oPurZn9DUUfu5s
         7K9pA26xu3wLcLUHKQvzJNwA0+yqYvMhE1Uro=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740579453; x=1741184253;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:reply-to:cc:to
         :content-transfer-encoding:mime-version:message-id:date:subject:from
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MOp1sBAdHO1uVQiXgKl9gjNS8ALmqyHU8V+waYmjZPk=;
        b=Q23ftMWt174YNxZE7Gn/lGE2sghzXwb30/GYTF6mg4OxAf5loFbABHZrePY65/eb4y
         ouwOFOqM2FWOJURRw6uHppDPTLN8POL1JwDnWsV0nOLkXYQgFCNMic4valiHZsnqQJ5l
         Ow5IvIypoJQAlTe0HAxEpOcG5pKKOUCmoazS8tz/4Ip8yaWX1PNvMwLrGr18OGI0ue+F
         pE+w8EX8+c1FTzb+frbOsB9cPqhqIAAs0KQUxGZ5YzZcKLAUGpXY92bEB/PlOI7AMZqn
         nc1jn5ggg/umF2Sun3hKadgh54xvJMtQf5+FfyTFVc8dHOyzGxzPciYzdsiqr/kivrgl
         rFKA==
X-Forwarded-Encrypted: i=2; AJvYcCWNeZkJSoWrHO58Z+I0cl7ukve7RrJOBaOClNaQuOz1XAmLZTSouNfb2boRZ0OV6zdm+S5uZw==@lfdr.de
X-Gm-Message-State: AOJu0YyDfBF6KvN0YnaBh+O6cTFDi8LP11TzIgzSm6eRZCApip1tHKvh
	XAAaQem0NF0SyhKwYrfxv+CdKlUx/rZ/eR/Z5sy1gwrNmEeOJFqyebTn7RzXDiQ=
X-Google-Smtp-Source: AGHT+IFyQAuS2gZoHajBGAcAWn8flrj8Zp1klOo9DJwaKEtg7Kcldlp/ROGC9tPv5uJ+1955poAu+g==
X-Received: by 2002:a05:6871:5228:b0:2b8:5b8d:4281 with SMTP id 586e51a60fabf-2bd2fcd36edmr17441676fac.12.1740579453004;
        Wed, 26 Feb 2025 06:17:33 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=Adn5yVHmAXHpLkUlhreuCG1IyxsNTV3vZxptJFBKvgf9SESqqA==
Received: by 2002:a05:6870:210:b0:2b8:9182:e0ff with SMTP id
 586e51a60fabf-2bd2f8f19d6ls615895fac.1.-pod-prod-00-us; Wed, 26 Feb 2025
 06:17:32 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVo93PYQ23wsgKxJA2KtoUBowotmWMSDIExQIYD4Fa6/52XAQwiaqnhmwtI1Rqkx21Y777Ryf2EVrN/ZA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6808:13d6:b0:3f4:566:6847 with SMTP id 5614622812f47-3f424cc92eamr15111924b6e.16.1740579452056;
        Wed, 26 Feb 2025 06:17:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1740579452; cv=none;
        d=google.com; s=arc-20240605;
        b=VRiYEa1uGTelyv+CPmc96iAv3tYfpylR0UOuMQU77ySdSyxNqgiQYlLY/yGOzc1ZHe
         T6JjF3f/JNW3Fbda8eYHuoj12A8vqi0pbBcKuZq+yy8h5pjewoG9aGP/yCdbII+ZIpIr
         ruPVYfW+yXsGZl6+XFvqbJ0ib72xJ0yg1o8I18LIKF7xaIBFBvWcb5L7hoY//stBLKdu
         Ufp6SAf3E95hSYugTzs74iSA0K2Uy8/RIZk6rXd1tyjicWwsNItBi0pVvaxg3Ue3y9Wn
         9Qxun3PY+VuTHxPpdRSYnjks2zmOqqwO50q4uMZBelXStg6uJ3Hvv3bHbAaacfDYPJFH
         mgGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=reply-to:cc:to:content-transfer-encoding:mime-version:message-id
         :date:subject:from:dkim-signature;
        bh=uUAeJYvH9NWFm/1pdv4xuJnlpxr8sOLpvEw1gf+LcXo=;
        fh=t85edx+sQ1Skfp7ZeTpNIH3lUx4BfFwBq5zypEnFHfI=;
        b=dirFbGZ2yuQa5v+mRLjNgOdu1NLKcPGMXAg/wSgHm095x0cBUG+jX6ILYJD5ri+cS0
         GGK7WQM/YMuwRtliyiEHlbgictuJxA6NVu6+FEd/hF7cuN8QiLccrOJVqyR+BzSaSwdR
         6kWhZnK4ZurCidqBHRfweGFWJKs1sqnqoDm7mHZc/xrUx71heC2yWMNHg3nf7AJIp339
         Zil8dFg0Dx8Mo1iTeQYTSV7Fjj4CqFcjPw+vL1h+NQghe59BfANbB+O6AizmxkjV6eO9
         WJ8+k+K+56BQKLLSxDgvLqa0kzMcRBsYgJDk6m/BQj0ZxSHumULuVtXjQvt4Ry/eINZ0
         iE0g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=dtU0fFzl;
       spf=pass (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=devnull+j.ne.posteo.net@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [139.178.84.217])
        by mx.google.com with ESMTPS id 5614622812f47-3f541c455f5si2553289b6e.214.2025.02.26.06.17.32
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Feb 2025 06:17:32 -0800 (PST)
Received-SPF: pass (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates 139.178.84.217 as permitted sender) client-ip=139.178.84.217;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id EC8735C5CBC;
	Wed, 26 Feb 2025 14:16:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FE9CC4CEE4;
	Wed, 26 Feb 2025 14:17:31 +0000 (UTC)
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 662EAC021B8;
	Wed, 26 Feb 2025 14:17:31 +0000 (UTC)
From: =?UTF-8?Q?=27Jonathan_Neusch=C3=A4fer_via_B4_Relay=27_via_USB_Mass_Storag?=
	=?UTF-8?Q?e_on_Linux?= <usb-storage@lists.one-eyed-alien.net>
Subject: [usb-storage] [PATCH v2 0/9] usb: storage: Mark various arrays as const
Date: Wed, 26 Feb 2025 15:17:22 +0100
Message-Id: <20250226-misc-const-v2-0-ab655a4a29cc@posteo.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-B4-Tracking: v=1; b=H4sIAHIiv2cC/03MwQ6CMAzG8VchPTuzlSHKyfcwHGR00oMbWReiI
 by7g5Pp6d/k+60glJgEumqFRAsLx1ACTxW46RlepHgsDajRaquNerM45WKQrKgdrPOox8bfoAz
 mRJ4/B/boS08sOabvYS9m/+5MoxGbf2Yxqhwa7+vherF1e5+jZIrnQBn6bdt+jdaCTqUAAAA=
X-Change-ID: 20240401-misc-const-e7b4cf20d5f9
To: Alan Stern <stern@rowland.harvard.edu>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Jonathan_Neusch=C3=A4fer?= <j.ne@posteo.net>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1740579450; l=1711;
 i=j.ne@posteo.net; s=20240329; h=from:subject:message-id;
 bh=fwV5Igl0YjoYekgCo39bGuXYUSU/ztIwTAkRyvKRrqw=;
 b=cAY4Rp6m9M3AvBzybF691EpSlg/bOe3SSQGlpgxsasvXQbedMVBuVulj6Zf+ouOBi6nKXQE0k
 QdsBdhUC+08AxBp3ev6/NJGILI74xu5IsDqO2kQcONXgyBdj8x00U9A
X-Developer-Key: i=j.ne@posteo.net; a=ed25519;
 pk=NIe0bK42wNaX/C4bi6ezm7NJK0IQE+8MKBm7igFMIS4=
X-Endpoint-Received: by B4 Relay for j.ne@posteo.net/20240329 with
 auth_id=156
X-Original-From: =?utf-8?q?Jonathan_Neusch=C3=A4fer?= <j.ne@posteo.net>
Reply-To: j.ne@posteo.net
X-Original-Sender: devnull@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=dtU0fFzl;       spf=pass
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

While reading code, I noticed that some arrays in USB mass storage
drivers are declared static but not const, even though they are not
modified. This patchset marks them const.

All patches were compile-tested.

Signed-off-by: Jonathan Neusch=C3=A4fer <j.ne@posteo.net>
---
Changes in v2:
- Add new patches 2-9
- Use consistent authorship information
- Link to v1: https://lore.kernel.org/r/20250225-misc-const-v1-1-121ff3b864=
37@posteo.net

---
Jonathan Neusch=C3=A4fer (9):
      usb: storage: jumpshot: Use const for constant arrays
      usb: storage: transport: Use const for constant array
      usb: storage: alauda: Use const for card ID array
      usb: storage: datafab: Use const for constant arrays
      usb: storage: initializers: Use const for constant array
      usb: storage: realtek_cr: Use const for constant arrays
      usb: storage: sddr09: Use const for constant arrays
      usb: storage: sddr55: Use const for constant arrays
      usb: storage: shuttle_usbat: Use const for constant array

 drivers/usb/storage/alauda.c        |  8 ++++----
 drivers/usb/storage/datafab.c       | 14 +++++++-------
 drivers/usb/storage/initializers.c  |  2 +-
 drivers/usb/storage/jumpshot.c      | 10 +++++-----
 drivers/usb/storage/realtek_cr.c    |  6 +++---
 drivers/usb/storage/sddr09.c        | 14 +++++++-------
 drivers/usb/storage/sddr55.c        |  4 ++--
 drivers/usb/storage/shuttle_usbat.c |  2 +-
 drivers/usb/storage/transport.c     |  2 +-
 9 files changed, 31 insertions(+), 31 deletions(-)
---
base-commit: 2014c95afecee3e76ca4a56956a936e23283f05b
change-id: 20240401-misc-const-e7b4cf20d5f9

Best regards,
--=20
Jonathan Neusch=C3=A4fer <j.ne@posteo.net>


--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-al=
ien.net/d/msgid/usb-storage/20250226-misc-const-v2-0-ab655a4a29cc%40posteo.=
net.
