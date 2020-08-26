Return-Path: <usb-storage+bncBD6LRVPZ6YGRBPHFTH5AKGQEBAXMECI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb46.google.com (mail-yb1-xb46.google.com [IPv6:2607:f8b0:4864:20::b46])
	by mail.lfdr.de (Postfix) with ESMTPS id CE797253159
	for <lists+usb-storage@lfdr.de>; Wed, 26 Aug 2020 16:33:33 +0200 (CEST)
Received: by mail-yb1-xb46.google.com with SMTP id a5sf3027789ybh.3
        for <lists+usb-storage@lfdr.de>; Wed, 26 Aug 2020 07:33:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598452412; cv=pass;
        d=google.com; s=arc-20160816;
        b=MZ20MGvIZtoIKfV5A7pXbNrCxF+uCIS655bgnj97urJjOR5cbakJb9uRxpY56I4kUc
         RTt4v9jE51x2in3vyWlYXSNrrkhPQsE558BIGRphpK3eegJuHMPRTJ0hbveVZwxeUjlk
         x9lX+o/GghCK09lHJ+RiUz/y3PIfNZboRs3whFqjKLcek2U9YY+CDNcQodKXD5KPbE3H
         pXQMg/OmynkNxBKYWn/y0HrwGnCHJQKKx7Yz5FJyHmhRpird4YI8kxlmmZTPpvChDxjG
         8sxDPwRZHXpfcVCzzRoWzJBYjRWVNW7/lnW2ACcgWXHi0lBQEZytMWnemi1CGo2lgF2i
         BZBQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=fMLmUGDfjaX/n6HvLLqdz29r8q0H6au0cf9zV3m7iIU=;
        b=jZaXiSvkiJkJuT8OBkIv3rlTc8hka9g0tyTxhwrC8DvIpIQTVKINqI7DEo5/CUB8L5
         4t/Oib6yOWFKkoHYXxjz+4xeI0NCFIZ+nNLdguiPX6wcKIn11SNy4ENidd3Lx3B7GPdf
         XRwuEXoQAL0KQnXQ3dItMNZefT+CPLgMp+HGy776DaABJCWToWlKuLiP+IHzyw/YilKr
         GY9pWVuaiILnuQDkJU28QFlrzkcH00qjIaL4bBtEyeFcSyIUHY4hRwWrD3mJ40Maea5g
         X0TsOIXhZbgknmYNpXjKdtUW7eC/b/np8H8AvixdImle+rHlCj52WpvFsWPb/Z81Ea77
         Stnw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+5f4942ce@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+5f4942ce@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fMLmUGDfjaX/n6HvLLqdz29r8q0H6au0cf9zV3m7iIU=;
        b=LWD4wsyz/4NJ3xAp8VfwhaBEHKwCFOrY6UT/L+spY+cMkoOiuQr7/9hZIzeqklJUIk
         F+Q0cL+r0Jw+LC5ll9WctDLRXK3ILfJ7YxYCX5byQSt/hTPKkt9/x5/q1EaQIoG1uWaS
         oVkYkXAMSQiWDQyQ85Vx1EwriQpcIduUL+5dQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fMLmUGDfjaX/n6HvLLqdz29r8q0H6au0cf9zV3m7iIU=;
        b=QdsOZd1omANnPXIN2x//q1ri4Gfl0vqRLP7LhDvzkzaYPG9SzZcra+RNBjXQfezF0p
         3Xs15ALiPnkrBHUD9v67BkoFsd0hmTIPDM8ATxC04dU3/iSuqT4naKm2iel+jlKvyPTv
         C59w+DkA+qjbXON3iFZkwMkaxMtRfIbp2f6K2VwhVmQoWrQ9gpjfWswghAB14BAZ4tw9
         RHDd6u/K9UKkHMJtd3iunYyHsg0PaQAhl2xMxngSH2KeFaJOqY0VhCT7M6K5kHgtWBtS
         wpb0yvocOjkhMMaU9JRnpROBZKSFrpn+VpKOEvGs+B1jGFOrlDpCqHbe5ss8Ia9Ydixu
         QC7g==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM533vw07DrRuY+WiGMwdfoG7jWs6Kc7vqbdLuo+Ao5ytl7vJmktk7
	tN9FFUBnw0nJl2MjEAd+kFR9UQ==
X-Google-Smtp-Source: ABdhPJwe9FtUY/ax89ey5le+f6/SS3RNGeBZFBZVpZ4eE5GtNj1GQWHjb0mqaDJi9sPAYhCdzGM7oQ==
X-Received: by 2002:a25:6f85:: with SMTP id k127mr20950862ybc.12.1598452412551;
        Wed, 26 Aug 2020 07:33:32 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a25:40c:: with SMTP id 12ls986227ybe.7.gmail; Wed, 26 Aug
 2020 07:33:32 -0700 (PDT)
X-Received: by 2002:a25:74c6:: with SMTP id p189mr1605060ybc.199.1598452411883;
        Wed, 26 Aug 2020 07:33:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598452411; cv=none;
        d=google.com; s=arc-20160816;
        b=qbzuWp62ERrOmWXU9bb41xS5pkDa7tN/R1fpO/opNEUUgZ0zvk/5lzu6ni5Hgf1KMz
         7RbAMTioTc6q7++i2/9gnFxDPofxAbZuCcfGpUmEDlCKz1kQ3AvZGBEGsu2A5LaMmApE
         dXV+qgkEWZHXwdP4CAQ/bXujSN1F3TaExcB0KM0UUvzTdIFop/6FZAfP2LfR2wh9JTWy
         TGb0Mm9kynVB5ALmWRlN3XtDoQPssWzMAEVVSV2JhnU78euoWkKnEw0owB6R6w/cNPIJ
         yqIo4g1FaMjVGvxXiggn63vZkxK3Dc6ylKE/poAI+653NudGFdcqd2dUBu0TZXX4XjUP
         OvxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=5sCRNqDOwspdsmPbBCsTWG9Akexg4lG3m45JYM5If+0=;
        b=vJbLz3nizaVLuG9VQt8BFEcRRM0V3eiO06rctOUsnEodS4770T6hiEFRUiwbdHKjDz
         sxpIW93xdECKPb37OQ8l5xBeEoOkdAv3ngxAMtGcqSkgrEmpJMJbo+6xsh3YgQIr5nTt
         k7ATd6hCwO/5mIeFVv1pjcjTXMbzaefcBKkph/b1WS8Ckgj/eWk23nNwNd83YwwruAaN
         OZV7LrIVf83xHp5jgTqOmAY54wfGK2QMCtVHLrGPNxR3gk0UjG/dxtl/hIpBKp/tD8mK
         88jVRA09WNyd8IPT/8DeQMQ3IPzcgkg1ExG79tPCYx+phTLGJngp4ZWRJXMLGnT10gla
         xAzA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+5f4942ce@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+5f4942ce@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id 200si2356105ybe.193.2020.08.26.07.33.31
        for <usb-storage@lists.one-eyed-alien.net>;
        Wed, 26 Aug 2020 07:33:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+5f4942ce@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 401822 invoked by uid 1000); 26 Aug 2020 10:32:29 -0400
Date: Wed, 26 Aug 2020 10:32:29 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Greg KH <greg@kroah.com>
Cc: Till =?iso-8859-1?Q?D=F6rges?= <doerges@pre-sense.de>,
  USB mailing list <linux-usb@vger.kernel.org>,
  USB Storage list <usb-storage@lists.one-eyed-alien.net>
Subject: [usb-storage] [PATCH] usb: storage: Add unusual_uas entry for Sony
 PSZ drives
Message-ID: <20200826143229.GB400430@rowland.harvard.edu>
References: <20200523203349.GA12853@rowland.harvard.edu>
 <5bd5e8be-f8a9-9456-cced-c2bc75455556@pre-sense.de>
 <20200617163734.GC11314@rowland.harvard.edu>
 <763037ac-d8fa-8697-7f75-c0bf958b4308@pre-sense.de>
 <ce4d0606-b398-d23b-1a5f-25611eb4338f@pre-sense.de>
 <364ac09a-a877-c04e-5f2f-d5a559406590@pre-sense.de>
 <20200619150527.GA49731@rowland.harvard.edu>
 <c6fe1288-08a1-4d0a-37f5-c1ca44d46c25@pre-sense.de>
 <20200825184504.GC375466@rowland.harvard.edu>
 <0c7a4975-596e-9c5a-062f-df77e8ebe969@pre-sense.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <0c7a4975-596e-9c5a-062f-df77e8ebe969@pre-sense.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+5f4942ce@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+5f4942ce@netrider.rowland.org
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

The PSZ-HA* family of USB disk drives from Sony can't handle the
REPORT OPCODES command when using the UAS protocol.  This patch adds
an appropriate quirks entry.

Reported-and-tested-by: Till D=C3=B6rges <doerges@pre-sense.de>
Signed-off-by: Alan Stern <stern@rowland.harvard.edu>
CC: <stable@vger.kernel.org>

---


[as1942]


 drivers/usb/storage/unusual_uas.h |    7 +++++++
 1 file changed, 7 insertions(+)

Index: usb-devel/drivers/usb/storage/unusual_uas.h
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
--- usb-devel.orig/drivers/usb/storage/unusual_uas.h
+++ usb-devel/drivers/usb/storage/unusual_uas.h
@@ -28,6 +28,13 @@
  * and don't forget to CC: the USB development list <linux-usb@vger.kernel=
.org>
  */
=20
+/* Reported-by: Till D=C3=B6rges <doerges@pre-sense.de> */
+UNUSUAL_DEV(0x054c, 0x087d, 0x0000, 0x9999,
+		"Sony",
+		"PSZ-HA*",
+		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
+		US_FL_NO_REPORT_OPCODES),
+
 /* Reported-by: Julian Gro=C3=9F <julian.g@posteo.de> */
 UNUSUAL_DEV(0x059f, 0x105f, 0x0000, 0x9999,
 		"LaCie",

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/20200826143229.GB400430%40rowland.ha=
rvard.edu.
