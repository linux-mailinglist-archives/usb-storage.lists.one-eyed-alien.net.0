Return-Path: <usb-storage+bncBCMN5OORTILBBX543LYQKGQEOZHGVYA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf47.google.com (mail-qv1-xf47.google.com [IPv6:2607:f8b0:4864:20::f47])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EA4514FC89
	for <lists+usb-storage@lfdr.de>; Sun,  2 Feb 2020 11:03:13 +0100 (CET)
Received: by mail-qv1-xf47.google.com with SMTP id u11sf7563381qvo.8
        for <lists+usb-storage@lfdr.de>; Sun, 02 Feb 2020 02:03:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580637792; cv=pass;
        d=google.com; s=arc-20160816;
        b=bneADftyz7Ivb3OMdJBQEN65lu7zVkQSldtx2in4QNDjy4MgYLzXpfuEpIb9yqSo71
         Nm2OTLCXMZkZcexYFV4WjTLSovss6bviySQw7/keGsOkENOjXTBKE3u9Sm4KKT0Lx0eS
         Qcu4tO1AlY4Xjx4+PCXDsCw1OyUR3ZznnyfFadoajqFXwRB8mg74HChH2sUS8zru0msr
         R8L407hNFbHlBlKSWGZTQPV+y9/LvvTUSP9niivqbyL+XiAsZHKThJkcm+3ukwaRRnSB
         BgGT+EH9vGwbIulxwEYLq/OaoVX7tiT8P2hTdDYFtRyiF1u6/PJUpxNQzicHy63GVk/S
         gFXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=QF8yI+YCrlOpbPzS8O1jRve7bxRO3qO4ECBNZ0YBW2I=;
        b=nyLSn0+M6+clnRD1Gy1QPxsW18RiAP/ytYBnlwxJUB/fRvr7ov84zkqVO73AedWWXc
         fsAWox/2pCqCSSOwFZYqQYCp+EBYOGIcC6xhOk0Mjltl/+h49yamyl58wop2+MCH+BeB
         uouiyzBL/K+hVtbywYEaSSddz4/Fri2MZ3toG/Oj91ARkP7OlFgurmb4RmNjkUR3v5mp
         YnQLzFBn2xOsVNGrtP0kJ0Mah0curn1ZJUY3REGDZCNlFO3NBUU1MwNHGCIZJkoq7rmr
         l2ROHtXrlQMwe7vECST6hNfSsXCnbIwh6WhrdU37PiExt5M2Jr2ccOW5fTnyVTIyUbzu
         0pmw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@duncanthrax.net header.s=dkim header.b=rXYpY63d;
       spf=neutral (google.com: 91.207.61.48 is neither permitted nor denied by best guess record for domain of svens@stackframe.org) smtp.mailfrom=svens@stackframe.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QF8yI+YCrlOpbPzS8O1jRve7bxRO3qO4ECBNZ0YBW2I=;
        b=CvLzwelEBF7fOLuE2yjYgsvQK4XfYzJ9/2chQaGxPyW2ZfpoOFy7IrfTuhFPuI3Fe1
         MkHCtX+QDsENRc1X/2gmol5O7dQngggGNlb/XXsOIqydWvVUMM75lP+bmo71h42a+CQi
         0RLduUzNDat+fayirK9xmsQUmubo7lahYsdxo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QF8yI+YCrlOpbPzS8O1jRve7bxRO3qO4ECBNZ0YBW2I=;
        b=KIf/PeHBb5aZ8AEn1UaSNVQasQSszz5Zwnd931qulRxRBGBnv8JaN+rbhIXlTKQ+49
         02tpbWEGKZziDLP6mopDS+14utf6V+Up2nUtQpoGPEr8ar2Mf2GNuIQ+h7nzO7ABjB8C
         F4/rkxRFEobZhLittjG33vWjRoES6+cLiYGl223j0c5kf8xeIjlgRPLboV3yTXz6gfrD
         Nei/XYWi/iEKmUHfR9m3xIP7IPcZYNadkbtBF86zLEZAhO7yWUWEZ9tClParzD9rydVm
         E/tCfjZACm8I90+56cTLqi4OCzqCxfS5JSvKSaizReSwtM8JK86+bk7G/bLod7rZLGel
         /IFA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAUdVzJO9N5Kle2PpCVPHiT28wTi4Ylp4wFXxF/h27Ysr1VpY7BO
	k4VdT7A3Zf3Ya8J7dh8sXQRHZg==
X-Google-Smtp-Source: APXvYqxtn4WJ4Vrr0by4bP+ZpRCgprmuUnMOEZPoB+thCAiY7lUgCyDlMJORSL7neIl9adFIlzYDww==
X-Received: by 2002:ac8:5486:: with SMTP id h6mr19129042qtq.17.1580637791943;
        Sun, 02 Feb 2020 02:03:11 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a0c:cd13:: with SMTP id b19ls2711786qvm.5.gmail; Sun, 02 Feb
 2020 02:03:11 -0800 (PST)
X-Received: by 2002:a05:6214:707:: with SMTP id b7mr18108966qvz.97.1580637791250;
        Sun, 02 Feb 2020 02:03:11 -0800 (PST)
Received: by 2002:a05:620a:22f5:0:0:0:0 with SMTP id p21msqki;
        Sun, 2 Feb 2020 01:38:24 -0800 (PST)
X-Received: by 2002:a1c:5445:: with SMTP id p5mr22714070wmi.75.1580636303949;
        Sun, 02 Feb 2020 01:38:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580636303; cv=none;
        d=google.com; s=arc-20160816;
        b=Is4R/nQLV7wF/c0FE3F0ulAwF22VaN0XYdp9PxJEViBHqndZTP3dZgTpX0WXDmH5o0
         oL0+Un8aXfEDF2IDKcFADx0Z+QGrYxDOg7khCVA0Ru+rW1Rl+SdZ7t8UQsDOb3gr2HAH
         AehjW8mjyQwfnBzxbWMf9AksmQZhomOkRXyGnbKXuloZh4QFN340Z75ixrj/T+oypOvw
         EaSh/BeXnaBFQym3lmqKN+9yrXBEdvGWdPWt19tgtEJRsE9B6p9MYDHvoCPUNStarjeV
         u2awrInLdjNAAQP20fvu34qIFIW1JgrOH1sHf8xXrzHhOaJRL5HICptGrBmXxKK3oZOf
         1Lbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=wZQ4n/J3FvaNN+GM5vIGZaZCVjzkHLz1P2bpKAbuehY=;
        b=gy1UzwDjErPBkHkij0L3niBqa7DxqLTi5w2di/50Pwcmtjk5SZX0Xgu9OTEV6tDj4b
         NTICvXpLkpmIt+cFCA/HrSCFLRDNiQxZoR+vNfNd9WTcot7VITr75MGQWRgVUbR2hc5r
         7KG5hkj/mpImscd4SRLaxHYP/+5+XHu3eh6Rlowa1hu6RBajc4yx5q92+HbLrU87rKy8
         Lo5/yrGxpEtd2z0iQ/9I1FqTMCdY4ylNMauspUXIar+ZeDNt7aAJbcfh7iqEQ/7nmZt0
         tnXUaCbOV9Rpfh6fhcukmauAwM8KTxaN/arEqVz752qX3XVb2e3E+NAOp2R7xtXSW7rk
         XecQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@duncanthrax.net header.s=dkim header.b=rXYpY63d;
       spf=neutral (google.com: 91.207.61.48 is neither permitted nor denied by best guess record for domain of svens@stackframe.org) smtp.mailfrom=svens@stackframe.org
Received: from smtp.duncanthrax.net (propper.duncanthrax.net. [91.207.61.48])
        by mx.google.com with ESMTPS id i16si4442173wre.513.2020.02.02.01.38.23
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 02 Feb 2020 01:38:23 -0800 (PST)
Received-SPF: neutral (google.com: 91.207.61.48 is neither permitted nor denied by best guess record for domain of svens@stackframe.org) client-ip=91.207.61.48;
Received: from [134.3.47.90] (helo=x280.stackframe.org)
	by smtp.duncanthrax.net with esmtpa (Exim 4.90_1)
	(envelope-from <svens@stackframe.org>)
	id 1iyBhm-00009N-7g; Sun, 02 Feb 2020 10:38:14 +0100
From: Sven Schnelle <svens@stackframe.org>
To: Alan Stern <stern@rowland.harvard.edu>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org,
	Sven Schnelle <svens@stackframe.org>
Subject: [usb-storage] Add support for Ratoc U2SCX
Date: Sun,  2 Feb 2020 10:37:47 +0100
Message-Id: <20200202093750.4439-1-svens@stackframe.org>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-Original-Sender: svens@stackframe.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@duncanthrax.net header.s=dkim header.b=rXYpY63d;       spf=neutral
 (google.com: 91.207.61.48 is neither permitted nor denied by best guess
 record for domain of svens@stackframe.org) smtp.mailfrom=svens@stackframe.org
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

Hi,

this patchset add support for Ratoc U2SCX USB/SCSI converters. For additional
information see http://www.ratocsystems.com/english/products/U2SCX.html.

Regards
Sven

Sven Schnelle (2):
  usb/storage: add SCSI ID and LUN to debug output
  usb-storage: Add support for Ratoc U2SCX multiple device mode

 drivers/usb/storage/debug.c        |  3 ++-
 drivers/usb/storage/initializers.c | 27 +++++++++++++++++++++++++++
 drivers/usb/storage/initializers.h |  2 ++
 drivers/usb/storage/unusual_devs.h |  5 +++++
 4 files changed, 36 insertions(+), 1 deletion(-)

-- 
2.24.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20200202093750.4439-1-svens%40stackframe.org.
