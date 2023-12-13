Return-Path: <usb-storage+bncBAABB2PV46VQMGQENTV4VEY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x448.google.com (mail-pf1-x448.google.com [IPv6:2607:f8b0:4864:20::448])
	by mail.lfdr.de (Postfix) with ESMTPS id 15422811D02
	for <lists+usb-storage@lfdr.de>; Wed, 13 Dec 2023 19:41:47 +0100 (CET)
Received: by mail-pf1-x448.google.com with SMTP id d2e1a72fcca58-6ce77ba2463sf8784495b3a.0
        for <lists+usb-storage@lfdr.de>; Wed, 13 Dec 2023 10:41:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1702492905; cv=pass;
        d=google.com; s=arc-20160816;
        b=SxpTs3aNIHPwgymmYs1Ap+cVGcBjnfg9W2e4YqD+Uv7h8A/hrvM3Eg3bZZFujF/2yx
         B58PtFZMn+BZag2tSqtVouK+ofyPY4sQC90VsqvhY+Jqdn5NdMfxiO+p5n/QfOXW5HJt
         Wnv+/8tBAITQ2QMUGnEYP71O0a7GP4ZW620WEC04Hox/YA/6HZyClqBnt+44rMyiFDUP
         BBczEpNxzaBgMDYJm/8eav5FC3vvrBCsajNZWyxhOG8eQjssMahCAoVaQwa+BxCZKXhj
         CaeiLBNgvXzss4wtVXHOfu4II0mT6vEgdlm5qZjJlZrbggXG0qL8bXRkHx1BBmY1PIwH
         FgVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=YDIXuFuwLZXYadjk1nJJg6w7GRHzE4O3xhjsLLOoMF0=;
        fh=YImyuqHfsVtYy3zmPRyWp9z87egmTsVDidlNb68MDOQ=;
        b=TGIZQKCwCjgDngeML7SXUHyL9jqny1wv3pQclLGsslf3fCd00JeCjJVvGA4//fAqGO
         xeJIdIno419f4PqlH+1r0cBSZ3rMyT7hItuIdubMZ0Yp6SuW9aRei7Y+yz+nmwNFUdpu
         wPtdmoyeo+WZeb7Gphb7svdSEHKdI3GKJt8XVr75iLXVzNou6FYHIuVxKgSvy6Ssaf4H
         Av1vls2X3UVvBsPEjuhN58xoSmEPgjgB40+vdEcKXpComwZFVblKFFL1o+z8o1w70W0f
         Xiw8ur9KTzwRYNvgu77nfsiPuSxwRoZfEo9YN0k4ggzJOkut+tAJpvkeU4hA1SMp8/20
         AMgw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=VZjzpZkN;
       spf=pass (google.com: domain of lee@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=lee@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1702492905; x=1703097705; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=YDIXuFuwLZXYadjk1nJJg6w7GRHzE4O3xhjsLLOoMF0=;
        b=bK0hFf0X+e2Rr9bG1SfqkIPIR7h2FhgOzA0+Bqbd4ppaKDNWzt8TixEGuObKieBVj1
         OHdSwpC/b6TTy6q7i2eqf3byMrSjD9F2t9b3jC1SsbVfuJ9w7MPl14AC24cWdI7D01I0
         7BpaGfBYUfmOLU4468FS64gEOEBlohG/8a1a0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702492905; x=1703097705;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YDIXuFuwLZXYadjk1nJJg6w7GRHzE4O3xhjsLLOoMF0=;
        b=guC/xt35wio48BeMqDYUVPop7Ae2kDposq1X67XVEV3SgVwGCWVbIJKqEwZ6AMRwm7
         xY0eZgPJvyh0YB6l3Y+S1ssTHB0edxgrcvuDcmNu9T7Byq1MXlBTVAqsjje2SMoQMwR7
         7/NdwAycppfxrk75RRgmslgEBvkk90WsMeav6pNnq/Zo7LCBBLUjq+IjSemWYA980jEH
         C/RP/O15LBiOHZkvbOJRsW0mszNnNBDcZaFIaStP5b16tDZfYTqmxN8p1BpF+jdJqDpL
         y4qToaJPxYkNyex0KIusa/3Z4i3vDXwAEGuvON4CYJbWhD5CH7kjtDaLh9co5cjQ/Ujg
         L/1Q==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0Yyk2ZGDmhCfjNPjfUIKAlzDjj1mhWR0bf52hNVf/OrovKLChE/8
	hJBMSch1k7HeFT1bYwaFNdddsw==
X-Google-Smtp-Source: AGHT+IHZbXN/Tsy0U8Xoh7bdi5NzD+4ZNBrOBbcxPdzEq9U/jyM88EoTTmyWsp0ki97lz9FTHX73sA==
X-Received: by 2002:aa7:88c8:0:b0:6d0:d6f7:851b with SMTP id k8-20020aa788c8000000b006d0d6f7851bmr1210993pff.4.1702492905523;
        Wed, 13 Dec 2023 10:41:45 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6a00:1da0:b0:6cb:6fc9:485f with SMTP id
 z32-20020a056a001da000b006cb6fc9485fls4235241pfw.1.-pod-prod-00-us; Wed, 13
 Dec 2023 10:41:44 -0800 (PST)
X-Received: by 2002:a63:ff0c:0:b0:578:a62b:56ec with SMTP id k12-20020a63ff0c000000b00578a62b56ecmr345408pgi.5.1702492904634;
        Wed, 13 Dec 2023 10:41:44 -0800 (PST)
Received: by 2002:a05:620a:1928:b0:778:a9dc:3cb2 with SMTP id af79cd13be357-77f923c4414ms85a;
        Wed, 13 Dec 2023 08:43:03 -0800 (PST)
X-Received: by 2002:a05:651c:241:b0:2cc:1cc4:83c9 with SMTP id x1-20020a05651c024100b002cc1cc483c9mr5266908ljn.29.1702485782197;
        Wed, 13 Dec 2023 08:43:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1702485782; cv=none;
        d=google.com; s=arc-20160816;
        b=D+4dNhhF8K7XnAaqZXuzZI6TSPygg68RzG+LCzHb88ho+w8tPh401OUOxZhiQPAuO3
         Q8ynampnlBhxc4voFyv4qIXNe2pb51f4ofk5bep8pjONZUF9JnaVeA/Y3b7YFJMB7C/P
         ojs+Od7idYyCFOO2B+kGVzXpf3UeiVDw64iMNqGXgVd2At83rZh/L1agCRsdQl+JO0dw
         AhPdrtt6iGWTRr5WeI/TEAi647h9ORVV0sphcql5PSLS/2Ia0xa6hiWfpS45BXI/sb7x
         iWaWV7ftTNy+TXUQ3URUyWpfPGzJhV9nZAkJ8mcExOyvdOgevqwDUyJFJfelxU32yE8T
         +2oA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=Z2cMsa57a2uYSN/JtxzSekQp1nVxjjLx0mupNrF75ZY=;
        fh=YImyuqHfsVtYy3zmPRyWp9z87egmTsVDidlNb68MDOQ=;
        b=nJmyEIT+U1nhdTh3Lq4+yUa56TLmjzIS6mrLHFXngQFH74NYWJlqYW1wPIIh6S4+OZ
         bOLuJZV3wQpUmgj9VhCKRkbpVSuM5CoS65ji6jv69TbOdUO9EycPfB3IC/qwNrlirYOr
         xGAtcHcGanGNl3lkp8u0q4cbA0p1TcZVbR4XW8bUqVQZXs/JSAF0hJjl9IDZpGnirtoh
         NGMkFmPKp7nl5lcvfhCCL3e+wFK0SfkL0UJ2ler928TeFwQwvW8Fm4vB+EdMNBNCgZqN
         Yoy80z+iDD8ECe0TBC7RNvEMxqA38wzqC89uEoEdJinqpPvijm9c99dyBxGG9TvqAGd+
         a42A==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=VZjzpZkN;
       spf=pass (google.com: domain of lee@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=lee@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [2604:1380:40e1:4800::1])
        by mx.google.com with ESMTPS id n9-20020a2e9049000000b002ca04b1ca2bsi3736941ljg.302.2023.12.13.08.43.01
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Dec 2023 08:43:02 -0800 (PST)
Received-SPF: pass (google.com: domain of lee@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) client-ip=2604:1380:40e1:4800::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 2C905CE1F06;
	Wed, 13 Dec 2023 16:42:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1C55BC433C8;
	Wed, 13 Dec 2023 16:42:52 +0000 (UTC)
From: Lee Jones <lee@kernel.org>
To: lee@kernel.org,
	gregkh@linuxfoundation.org
Cc: linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	Alan Stern <stern@rowland.harvard.edu>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Andrzej Pietrasiewicz <andrzejtp2010@gmail.com>,
	Bryan Wu <cooloney@kernel.org>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	Cristian Birsan <cristian.birsan@microchip.com>,
	Daniel Scally <dan.scally@ideasonboard.com>,
	Hema HK <hemahk@ti.com>,
	James Gruber <jimmyjgruber@gmail.com>,
	Jaswinder Singh <jaswinder.singh@linaro.org>,
	Julian Scheel <julian@jusst.de>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	linux-arm-kernel@lists.infradead.org,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Pawel Laszczak <pawell@cadence.com>,
	Ruslan Bilovol <ruslan.bilovol@gmail.com>,
	Tomoki Sekiyama <tomoki.sekiyama@gmail.com>,
	usb-storage@lists.one-eyed-alien.net,
	Yadwinder Singh <yadi.brar01@gmail.com>
Subject: [usb-storage] [PATCH 00/12] usb: Replace {v}snprintf() variants with
 safer alternatives
Date: Wed, 13 Dec 2023 16:42:29 +0000
Message-ID: <20231213164246.1021885-1-lee@kernel.org>
X-Mailer: git-send-email 2.43.0.472.g3155946c3a-goog
MIME-Version: 1.0
X-Original-Sender: lee@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=VZjzpZkN;       spf=pass
 (google.com: domain of lee@kernel.org designates 2604:1380:40e1:4800::1 as
 permitted sender) smtp.mailfrom=lee@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

This series is part of an effort to rid {v}snprintf() where possible.

For a far better description of the problem than I could author, see
Jon's write-up on LWN [1] and/or Alex's on the Kernel Self Protection
Project [1].

[0] https://lwn.net/Articles/69419/
[1] https://github.com/KSPP/linux/issues/105

Lee Jones (12):
  usb: gadget: configfs: Replace snprintf() with the safer scnprintf()
    variant
  usb: gadget: f_uac1: Replace snprintf() with the safer scnprintf()
    variant
  usb: gadget: f_uac2: Replace snprintf() with the safer scnprintf()
    variant
  usb: gadget: uvc: Replace snprintf() with the safer scnprintf()
    variant
  usb: gadget: udc: atmel: Replace snprintf() with the safer scnprintf()
    variant
  usb: cdns2: Replace snprintf() with the safer scnprintf() variant
  usb: host: max3421-hcd: Replace snprintf() with the safer scnprintf()
    variant
  usb: yurex: Replace snprintf() with the safer scnprintf() variant
  usb: mon_stat: Replace snprintf() with the safer scnprintf() variant
  usb: mon_text: Replace snprintf() with the safer scnprintf() variant
  usb: phy: twl6030: Remove snprintf() from sysfs call-backs and replace
    with sysfs_emit()
  usb: storage: Remove snprintf() from sysfs call-backs and replace with
    sysfs_emit()

 drivers/usb/gadget/configfs.c              |  11 +-
 drivers/usb/gadget/function/f_uac1.c       |   6 +-
 drivers/usb/gadget/function/f_uac2.c       |   6 +-
 drivers/usb/gadget/function/uvc_configfs.c |   2 +-
 drivers/usb/gadget/udc/atmel_usba_udc.c    |   3 +-
 drivers/usb/gadget/udc/cdns2/cdns2-debug.h | 138 ++++++++++-----------
 drivers/usb/host/max3421-hcd.c             |  18 +--
 drivers/usb/misc/yurex.c                   |  12 +-
 drivers/usb/mon/mon_stat.c                 |   6 +-
 drivers/usb/mon/mon_text.c                 |  28 +----
 drivers/usb/phy/phy-twl6030-usb.c          |   8 +-
 drivers/usb/storage/sierra_ms.c            |  16 +--
 12 files changed, 120 insertions(+), 134 deletions(-)

Cc: Alan Stern <stern@rowland.harvard.edu>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Andrzej Pietrasiewicz <andrzejtp2010@gmail.com>
Cc: Bryan Wu <cooloney@kernel.org>
Cc: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Cc: Cristian Birsan <cristian.birsan@microchip.com>
Cc: Daniel Scally <dan.scally@ideasonboard.com>
Cc: Hema HK <hemahk@ti.com>
Cc: James Gruber <jimmyjgruber@gmail.com>
Cc: Jaswinder Singh <jaswinder.singh@linaro.org>
Cc: Julian Scheel <julian@jusst.de>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: Nicolas Ferre <nicolas.ferre@microchip.com>
Cc: Pawel Laszczak <pawell@cadence.com>
Cc: Ruslan Bilovol <ruslan.bilovol@gmail.com>
Cc: Tomoki Sekiyama <tomoki.sekiyama@gmail.com>
Cc: usb-storage@lists.one-eyed-alien.net
Cc: Yadwinder Singh <yadi.brar01@gmail.com>
-- 
2.43.0.472.g3155946c3a-goog

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20231213164246.1021885-1-lee%40kernel.org.
